; ModuleID = 'syr2k_exhaustive/mmp_all_XL_4692.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_4692.c"
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
  %scevgep1092 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1091 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1090 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1089 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1089, %scevgep1092
  %bound1 = icmp ult i8* %scevgep1091, %scevgep1090
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
  br i1 %exitcond18.not.i, label %vector.ph1096, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1096:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1103 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1104 = shufflevector <4 x i64> %broadcast.splatinsert1103, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %vector.ph1096
  %index1097 = phi i64 [ 0, %vector.ph1096 ], [ %index.next1098, %vector.body1095 ]
  %vec.ind1101 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1096 ], [ %vec.ind.next1102, %vector.body1095 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1101, %broadcast.splat1104
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv7.i, i64 %index1097
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1098 = add i64 %index1097, 4
  %vec.ind.next1102 = add <4 x i64> %vec.ind1101, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1098, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1095, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1095
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1096, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit854
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start476, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i, i64 %index1162
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

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
  %min.iters.check1181 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1181, label %for.body3.i60.preheader1233, label %vector.ph1182

vector.ph1182:                                    ; preds = %for.body3.i60.preheader
  %n.vec1184 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1180

vector.body1180:                                  ; preds = %vector.body1180, %vector.ph1182
  %index1185 = phi i64 [ 0, %vector.ph1182 ], [ %index.next1186, %vector.body1180 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i52, i64 %index1185
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1189 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1189, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1186 = add i64 %index1185, 4
  %57 = icmp eq i64 %index.next1186, %n.vec1184
  br i1 %57, label %middle.block1178, label %vector.body1180, !llvm.loop !55

middle.block1178:                                 ; preds = %vector.body1180
  %cmp.n1188 = icmp eq i64 %indvars.iv21.i52, %n.vec1184
  br i1 %cmp.n1188, label %for.inc6.i63, label %for.body3.i60.preheader1233

for.body3.i60.preheader1233:                      ; preds = %for.body3.i60.preheader, %middle.block1178
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1184, %middle.block1178 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1233, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1233 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

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
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i91, i64 %index1211
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1215 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1215, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1212 = add i64 %index1211, 4
  %68 = icmp eq i64 %index.next1212, %n.vec1210
  br i1 %68, label %middle.block1204, label %vector.body1206, !llvm.loop !57

middle.block1204:                                 ; preds = %vector.body1206
  %cmp.n1214 = icmp eq i64 %indvars.iv21.i91, %n.vec1210
  br i1 %cmp.n1214, label %for.inc6.i102, label %for.body3.i99.preheader1231

for.body3.i99.preheader1231:                      ; preds = %for.body3.i99.preheader, %middle.block1204
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1210, %middle.block1204 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1231, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1231 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call819, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
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
  %wide.load1229 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1229, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1226 = add i64 %index1225, 4
  %95 = icmp eq i64 %index.next1226, %n.vec1224
  br i1 %95, label %middle.block1216, label %vector.body1218, !llvm.loop !69

middle.block1216:                                 ; preds = %vector.body1218
  %cmp.n1228 = icmp eq i64 %88, %n.vec1224
  br i1 %cmp.n1228, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1216
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1224, %middle.block1216 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1216
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond999.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1220 = add i64 %indvar1219, 1
  br i1 %exitcond999.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond998.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond998.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv985 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next986, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = mul nuw nsw i64 %polly.indvar202, 7
  %98 = add nuw nsw i64 %97, 39
  %pexp.p_div_q = lshr i64 %98, 5
  %99 = sub nsw i64 %polly.indvar202, %pexp.p_div_q
  %polly.loop_guard = icmp sgt i64 %99, -2
  %100 = mul nsw i64 %polly.indvar202, -50
  %101 = mul nuw nsw i64 %polly.indvar202, 50
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -50
  %indvars.iv.next986 = add nuw nsw i64 %indvars.iv985, 50
  %exitcond997.not = icmp eq i64 %polly.indvar_next203, 24
  br i1 %exitcond997.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  br i1 %polly.loop_guard, label %polly.loop_header211.preheader, label %polly.loop_exit213

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %102 = mul nuw nsw i64 %polly.indvar208, 100
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit220, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next209, 10
  br i1 %exitcond996.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit220
  %indvars.iv987 = phi i64 [ %indvars.iv985, %polly.loop_header211.preheader ], [ %indvars.iv.next988, %polly.loop_exit220 ]
  %indvars.iv983 = phi i64 [ %indvars.iv, %polly.loop_header211.preheader ], [ %indvars.iv.next984, %polly.loop_exit220 ]
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit220 ]
  %103 = shl nsw i64 %polly.indvar214, 6
  %104 = add nsw i64 %103, %100
  %105 = icmp sgt i64 %104, 0
  %106 = select i1 %105, i64 %104, i64 0
  %polly.loop_guard221 = icmp slt i64 %106, 50
  br i1 %polly.loop_guard221, label %polly.loop_header218.preheader, label %polly.loop_exit220

polly.loop_header218.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv983, i64 0)
  %107 = add i64 %smax, %indvars.iv987
  %108 = sub nsw i64 %101, %103
  %109 = add nuw nsw i64 %103, 64
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_exit252, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216.not = icmp sgt i64 %polly.indvar214, %99
  %indvars.iv.next984 = add nsw i64 %indvars.iv983, 64
  %indvars.iv.next988 = add nsw i64 %indvars.iv987, -64
  br i1 %polly.loop_cond216.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header218:                             ; preds = %polly.loop_header218.preheader, %polly.loop_exit252
  %indvars.iv989 = phi i64 [ %107, %polly.loop_header218.preheader ], [ %indvars.iv.next990, %polly.loop_exit252 ]
  %polly.indvar222 = phi i64 [ %106, %polly.loop_header218.preheader ], [ %polly.indvar_next223, %polly.loop_exit252 ]
  %smin993 = call i64 @llvm.smin.i64(i64 %indvars.iv989, i64 63)
  %110 = add nsw i64 %polly.indvar222, %108
  %polly.loop_guard2351078 = icmp sgt i64 %110, -1
  %111 = add nuw nsw i64 %polly.indvar222, %101
  %.not = icmp ult i64 %111, %109
  %polly.access.mul.call1244 = mul nsw i64 %111, 1000
  %112 = add nuw i64 %polly.access.mul.call1244, %102
  br i1 %polly.loop_guard2351078, label %polly.loop_header225.us, label %polly.loop_header218.split

polly.loop_header225.us:                          ; preds = %polly.loop_header218, %polly.merge.us
  %polly.indvar228.us = phi i64 [ %polly.indvar_next229.us, %polly.merge.us ], [ 0, %polly.loop_header218 ]
  %113 = add nuw nsw i64 %polly.indvar228.us, %102
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar228.us, 1200
  br label %polly.loop_header232.us

polly.loop_header232.us:                          ; preds = %polly.loop_header225.us, %polly.loop_header232.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_header232.us ], [ 0, %polly.loop_header225.us ]
  %114 = add nuw nsw i64 %polly.indvar236.us, %103
  %polly.access.mul.call1240.us = mul nuw nsw i64 %114, 1000
  %polly.access.add.call1241.us = add nuw nsw i64 %113, %polly.access.mul.call1240.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar236.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond991.not = icmp eq i64 %polly.indvar236.us, %smin993
  br i1 %exitcond991.not, label %polly.cond.loopexit.us, label %polly.loop_header232.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1245.us = add nuw nsw i64 %112, %polly.indvar228.us
  %polly.access.call1246.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245.us
  %polly.access.call1246.load.us = load double, double* %polly.access.call1246.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1248.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %110
  %polly.access.Packed_MemRef_call1249.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.us
  store double %polly.access.call1246.load.us, double* %polly.access.Packed_MemRef_call1249.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next229.us, 100
  br i1 %exitcond992.not, label %polly.loop_header250.preheader, label %polly.loop_header225.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header232.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header218.split:                       ; preds = %polly.loop_header218
  br i1 %.not, label %polly.loop_exit252, label %polly.loop_header225

polly.loop_exit252:                               ; preds = %polly.loop_exit259.loopexit.us, %polly.loop_header218.split, %polly.loop_header250.preheader
  %polly.indvar_next223 = add nuw nsw i64 %polly.indvar222, 1
  %polly.loop_cond224 = icmp ult i64 %polly.indvar222, 49
  %indvars.iv.next990 = add i64 %indvars.iv989, 1
  br i1 %polly.loop_cond224, label %polly.loop_header218, label %polly.loop_exit220

polly.loop_header225:                             ; preds = %polly.loop_header218.split, %polly.loop_header225
  %polly.indvar228 = phi i64 [ %polly.indvar_next229, %polly.loop_header225 ], [ 0, %polly.loop_header218.split ]
  %polly.access.add.call1245 = add nuw nsw i64 %112, %polly.indvar228
  %polly.access.call1246 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1245
  %polly.access.call1246.load = load double, double* %polly.access.call1246, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1247 = mul nuw nsw i64 %polly.indvar228, 1200
  %polly.access.add.Packed_MemRef_call1248 = add nsw i64 %polly.access.mul.Packed_MemRef_call1247, %110
  %polly.access.Packed_MemRef_call1249 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248
  store double %polly.access.call1246.load, double* %polly.access.Packed_MemRef_call1249, align 8
  %polly.indvar_next229 = add nuw nsw i64 %polly.indvar228, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next229, 100
  br i1 %exitcond.not, label %polly.loop_header250.preheader, label %polly.loop_header225

polly.loop_header250.preheader:                   ; preds = %polly.loop_header225, %polly.merge.us
  %115 = mul i64 %111, 8000
  %116 = mul i64 %111, 9600
  br i1 %polly.loop_guard2351078, label %polly.loop_header250.us, label %polly.loop_exit252

polly.loop_header250.us:                          ; preds = %polly.loop_header250.preheader, %polly.loop_exit259.loopexit.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_exit259.loopexit.us ], [ 0, %polly.loop_header250.preheader ]
  %117 = add nuw nsw i64 %polly.indvar253.us, %102
  %polly.access.mul.Packed_MemRef_call1264.us = mul nuw nsw i64 %polly.indvar253.us, 1200
  %118 = shl i64 %117, 3
  %119 = add i64 %118, %115
  %scevgep268.us = getelementptr i8, i8* %call2, i64 %119
  %scevgep268269.us = bitcast i8* %scevgep268.us to double*
  %_p_scalar_270.us = load double, double* %scevgep268269.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1275.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1264.us, %110
  %polly.access.Packed_MemRef_call1276.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.us
  %_p_scalar_277.us = load double, double* %polly.access.Packed_MemRef_call1276.us, align 8
  br label %polly.loop_header257.us

polly.loop_header257.us:                          ; preds = %polly.loop_header250.us, %polly.loop_header257.us
  %polly.indvar261.us = phi i64 [ %polly.indvar_next262.us, %polly.loop_header257.us ], [ 0, %polly.loop_header250.us ]
  %120 = add nuw nsw i64 %polly.indvar261.us, %103
  %polly.access.add.Packed_MemRef_call1265.us = add nuw nsw i64 %polly.indvar261.us, %polly.access.mul.Packed_MemRef_call1264.us
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us
  %_p_scalar_267.us = load double, double* %polly.access.Packed_MemRef_call1266.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_270.us, %_p_scalar_267.us
  %121 = mul nuw nsw i64 %120, 8000
  %122 = add nuw nsw i64 %121, %118
  %scevgep271.us = getelementptr i8, i8* %call2, i64 %122
  %scevgep271272.us = bitcast i8* %scevgep271.us to double*
  %_p_scalar_273.us = load double, double* %scevgep271272.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_277.us, %_p_scalar_273.us
  %123 = shl i64 %120, 3
  %124 = add i64 %123, %116
  %scevgep278.us = getelementptr i8, i8* %call, i64 %124
  %scevgep278279.us = bitcast i8* %scevgep278.us to double*
  %_p_scalar_280.us = load double, double* %scevgep278279.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_280.us
  store double %p_add42.i118.us, double* %scevgep278279.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next262.us = add nuw nsw i64 %polly.indvar261.us, 1
  %exitcond994.not = icmp eq i64 %polly.indvar261.us, %smin993
  br i1 %exitcond994.not, label %polly.loop_exit259.loopexit.us, label %polly.loop_header257.us

polly.loop_exit259.loopexit.us:                   ; preds = %polly.loop_header257.us
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond995.not = icmp eq i64 %polly.indvar_next254.us, 100
  br i1 %exitcond995.not, label %polly.loop_exit252, label %polly.loop_header250.us

polly.start283:                                   ; preds = %kernel_syr2k.exit
  %malloccall285 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header369

polly.exiting284:                                 ; preds = %polly.loop_exit393
  tail call void @free(i8* %malloccall285)
  br label %kernel_syr2k.exit90

polly.loop_header369:                             ; preds = %polly.loop_exit377, %polly.start283
  %indvar1193 = phi i64 [ %indvar.next1194, %polly.loop_exit377 ], [ 0, %polly.start283 ]
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_exit377 ], [ 1, %polly.start283 ]
  %125 = add i64 %indvar1193, 1
  %126 = mul nuw nsw i64 %polly.indvar372, 9600
  %scevgep381 = getelementptr i8, i8* %call, i64 %126
  %min.iters.check1195 = icmp ult i64 %125, 4
  br i1 %min.iters.check1195, label %polly.loop_header375.preheader, label %vector.ph1196

vector.ph1196:                                    ; preds = %polly.loop_header369
  %n.vec1198 = and i64 %125, -4
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.body1192, %vector.ph1196
  %index1199 = phi i64 [ 0, %vector.ph1196 ], [ %index.next1200, %vector.body1192 ]
  %127 = shl nuw nsw i64 %index1199, 3
  %128 = getelementptr i8, i8* %scevgep381, i64 %127
  %129 = bitcast i8* %128 to <4 x double>*
  %wide.load1203 = load <4 x double>, <4 x double>* %129, align 8, !alias.scope !74, !noalias !76
  %130 = fmul fast <4 x double> %wide.load1203, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %131 = bitcast i8* %128 to <4 x double>*
  store <4 x double> %130, <4 x double>* %131, align 8, !alias.scope !74, !noalias !76
  %index.next1200 = add i64 %index1199, 4
  %132 = icmp eq i64 %index.next1200, %n.vec1198
  br i1 %132, label %middle.block1190, label %vector.body1192, !llvm.loop !80

middle.block1190:                                 ; preds = %vector.body1192
  %cmp.n1202 = icmp eq i64 %125, %n.vec1198
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
  %133 = shl nuw nsw i64 %polly.indvar378, 3
  %scevgep382 = getelementptr i8, i8* %scevgep381, i64 %133
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_384, 1.200000e+00
  store double %p_mul.i57, double* %scevgep382383, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next379, %polly.indvar372
  br i1 %exitcond1020.not, label %polly.loop_exit377, label %polly.loop_header375, !llvm.loop !81

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_exit393
  %indvars.iv1006 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next1007, %polly.loop_exit393 ]
  %indvars.iv1001 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %indvars.iv.next1002, %polly.loop_exit393 ]
  %polly.indvar388 = phi i64 [ 0, %polly.loop_header385.preheader ], [ %polly.indvar_next389, %polly.loop_exit393 ]
  %134 = mul nuw nsw i64 %polly.indvar388, 7
  %135 = add nuw nsw i64 %134, 39
  %pexp.p_div_q397 = lshr i64 %135, 5
  %136 = sub nsw i64 %polly.indvar388, %pexp.p_div_q397
  %polly.loop_guard402 = icmp sgt i64 %136, -2
  %137 = mul nsw i64 %polly.indvar388, -50
  %138 = mul nuw nsw i64 %polly.indvar388, 50
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit401
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %indvars.iv.next1002 = add nsw i64 %indvars.iv1001, -50
  %indvars.iv.next1007 = add nuw nsw i64 %indvars.iv1006, 50
  %exitcond1019.not = icmp eq i64 %polly.indvar_next389, 24
  br i1 %exitcond1019.not, label %polly.exiting284, label %polly.loop_header385

polly.loop_header391:                             ; preds = %polly.loop_exit401, %polly.loop_header385
  %polly.indvar394 = phi i64 [ 0, %polly.loop_header385 ], [ %polly.indvar_next395, %polly.loop_exit401 ]
  br i1 %polly.loop_guard402, label %polly.loop_header399.preheader, label %polly.loop_exit401

polly.loop_header399.preheader:                   ; preds = %polly.loop_header391
  %139 = mul nuw nsw i64 %polly.indvar394, 100
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit409, %polly.loop_header391
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next395, 10
  br i1 %exitcond1018.not, label %polly.loop_exit393, label %polly.loop_header391

polly.loop_header399:                             ; preds = %polly.loop_header399.preheader, %polly.loop_exit409
  %indvars.iv1008 = phi i64 [ %indvars.iv1006, %polly.loop_header399.preheader ], [ %indvars.iv.next1009, %polly.loop_exit409 ]
  %indvars.iv1003 = phi i64 [ %indvars.iv1001, %polly.loop_header399.preheader ], [ %indvars.iv.next1004, %polly.loop_exit409 ]
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header399.preheader ], [ %polly.indvar_next404, %polly.loop_exit409 ]
  %140 = shl nsw i64 %polly.indvar403, 6
  %141 = add nsw i64 %140, %137
  %142 = icmp sgt i64 %141, 0
  %143 = select i1 %142, i64 %141, i64 0
  %polly.loop_guard410 = icmp slt i64 %143, 50
  br i1 %polly.loop_guard410, label %polly.loop_header407.preheader, label %polly.loop_exit409

polly.loop_header407.preheader:                   ; preds = %polly.loop_header399
  %smax1005 = call i64 @llvm.smax.i64(i64 %indvars.iv1003, i64 0)
  %144 = add i64 %smax1005, %indvars.iv1008
  %145 = sub nsw i64 %138, %140
  %146 = add nuw nsw i64 %140, 64
  br label %polly.loop_header407

polly.loop_exit409:                               ; preds = %polly.loop_exit445, %polly.loop_header399
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %polly.loop_cond405.not = icmp sgt i64 %polly.indvar403, %136
  %indvars.iv.next1004 = add nsw i64 %indvars.iv1003, 64
  %indvars.iv.next1009 = add nsw i64 %indvars.iv1008, -64
  br i1 %polly.loop_cond405.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header407:                             ; preds = %polly.loop_header407.preheader, %polly.loop_exit445
  %indvars.iv1010 = phi i64 [ %144, %polly.loop_header407.preheader ], [ %indvars.iv.next1011, %polly.loop_exit445 ]
  %polly.indvar411 = phi i64 [ %143, %polly.loop_header407.preheader ], [ %polly.indvar_next412, %polly.loop_exit445 ]
  %smin1015 = call i64 @llvm.smin.i64(i64 %indvars.iv1010, i64 63)
  %147 = add nsw i64 %polly.indvar411, %145
  %polly.loop_guard4241079 = icmp sgt i64 %147, -1
  %148 = add nuw nsw i64 %polly.indvar411, %138
  %.not873 = icmp ult i64 %148, %146
  %polly.access.mul.call1437 = mul nsw i64 %148, 1000
  %149 = add nuw i64 %polly.access.mul.call1437, %139
  br i1 %polly.loop_guard4241079, label %polly.loop_header414.us, label %polly.loop_header407.split

polly.loop_header414.us:                          ; preds = %polly.loop_header407, %polly.merge433.us
  %polly.indvar417.us = phi i64 [ %polly.indvar_next418.us, %polly.merge433.us ], [ 0, %polly.loop_header407 ]
  %150 = add nuw nsw i64 %polly.indvar417.us, %139
  %polly.access.mul.Packed_MemRef_call1286.us = mul nuw nsw i64 %polly.indvar417.us, 1200
  br label %polly.loop_header421.us

polly.loop_header421.us:                          ; preds = %polly.loop_header414.us, %polly.loop_header421.us
  %polly.indvar425.us = phi i64 [ %polly.indvar_next426.us, %polly.loop_header421.us ], [ 0, %polly.loop_header414.us ]
  %151 = add nuw nsw i64 %polly.indvar425.us, %140
  %polly.access.mul.call1429.us = mul nuw nsw i64 %151, 1000
  %polly.access.add.call1430.us = add nuw nsw i64 %150, %polly.access.mul.call1429.us
  %polly.access.call1431.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1430.us
  %polly.access.call1431.load.us = load double, double* %polly.access.call1431.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1286.us = add nuw nsw i64 %polly.indvar425.us, %polly.access.mul.Packed_MemRef_call1286.us
  %polly.access.Packed_MemRef_call1286.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us
  store double %polly.access.call1431.load.us, double* %polly.access.Packed_MemRef_call1286.us, align 8
  %polly.indvar_next426.us = add nuw nsw i64 %polly.indvar425.us, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar425.us, %smin1015
  br i1 %exitcond1013.not, label %polly.cond432.loopexit.us, label %polly.loop_header421.us

polly.then434.us:                                 ; preds = %polly.cond432.loopexit.us
  %polly.access.add.call1438.us = add nuw nsw i64 %149, %polly.indvar417.us
  %polly.access.call1439.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438.us
  %polly.access.call1439.load.us = load double, double* %polly.access.call1439.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1286441.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1286.us, %147
  %polly.access.Packed_MemRef_call1286442.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441.us
  store double %polly.access.call1439.load.us, double* %polly.access.Packed_MemRef_call1286442.us, align 8
  br label %polly.merge433.us

polly.merge433.us:                                ; preds = %polly.then434.us, %polly.cond432.loopexit.us
  %polly.indvar_next418.us = add nuw nsw i64 %polly.indvar417.us, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar_next418.us, 100
  br i1 %exitcond1014.not, label %polly.loop_header443.preheader, label %polly.loop_header414.us

polly.cond432.loopexit.us:                        ; preds = %polly.loop_header421.us
  br i1 %.not873, label %polly.merge433.us, label %polly.then434.us

polly.loop_header407.split:                       ; preds = %polly.loop_header407
  br i1 %.not873, label %polly.loop_exit445, label %polly.loop_header414

polly.loop_exit445:                               ; preds = %polly.loop_exit452.loopexit.us, %polly.loop_header407.split, %polly.loop_header443.preheader
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %polly.loop_cond413 = icmp ult i64 %polly.indvar411, 49
  %indvars.iv.next1011 = add i64 %indvars.iv1010, 1
  br i1 %polly.loop_cond413, label %polly.loop_header407, label %polly.loop_exit409

polly.loop_header414:                             ; preds = %polly.loop_header407.split, %polly.loop_header414
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_header414 ], [ 0, %polly.loop_header407.split ]
  %polly.access.add.call1438 = add nuw nsw i64 %149, %polly.indvar417
  %polly.access.call1439 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1438
  %polly.access.call1439.load = load double, double* %polly.access.call1439, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1286440 = mul nuw nsw i64 %polly.indvar417, 1200
  %polly.access.add.Packed_MemRef_call1286441 = add nsw i64 %polly.access.mul.Packed_MemRef_call1286440, %147
  %polly.access.Packed_MemRef_call1286442 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286441
  store double %polly.access.call1439.load, double* %polly.access.Packed_MemRef_call1286442, align 8
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar_next418, 100
  br i1 %exitcond1000.not, label %polly.loop_header443.preheader, label %polly.loop_header414

polly.loop_header443.preheader:                   ; preds = %polly.loop_header414, %polly.merge433.us
  %152 = mul i64 %148, 8000
  %153 = mul i64 %148, 9600
  br i1 %polly.loop_guard4241079, label %polly.loop_header443.us, label %polly.loop_exit445

polly.loop_header443.us:                          ; preds = %polly.loop_header443.preheader, %polly.loop_exit452.loopexit.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_exit452.loopexit.us ], [ 0, %polly.loop_header443.preheader ]
  %154 = add nuw nsw i64 %polly.indvar446.us, %139
  %polly.access.mul.Packed_MemRef_call1286457.us = mul nuw nsw i64 %polly.indvar446.us, 1200
  %155 = shl i64 %154, 3
  %156 = add i64 %155, %152
  %scevgep461.us = getelementptr i8, i8* %call2, i64 %156
  %scevgep461462.us = bitcast i8* %scevgep461.us to double*
  %_p_scalar_463.us = load double, double* %scevgep461462.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1286468.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1286457.us, %147
  %polly.access.Packed_MemRef_call1286469.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286468.us
  %_p_scalar_470.us = load double, double* %polly.access.Packed_MemRef_call1286469.us, align 8
  br label %polly.loop_header450.us

polly.loop_header450.us:                          ; preds = %polly.loop_header443.us, %polly.loop_header450.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.loop_header450.us ], [ 0, %polly.loop_header443.us ]
  %157 = add nuw nsw i64 %polly.indvar454.us, %140
  %polly.access.add.Packed_MemRef_call1286458.us = add nuw nsw i64 %polly.indvar454.us, %polly.access.mul.Packed_MemRef_call1286457.us
  %polly.access.Packed_MemRef_call1286459.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286458.us
  %_p_scalar_460.us = load double, double* %polly.access.Packed_MemRef_call1286459.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_463.us, %_p_scalar_460.us
  %158 = mul nuw nsw i64 %157, 8000
  %159 = add nuw nsw i64 %158, %155
  %scevgep464.us = getelementptr i8, i8* %call2, i64 %159
  %scevgep464465.us = bitcast i8* %scevgep464.us to double*
  %_p_scalar_466.us = load double, double* %scevgep464465.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_470.us, %_p_scalar_466.us
  %160 = shl i64 %157, 3
  %161 = add i64 %160, %153
  %scevgep471.us = getelementptr i8, i8* %call, i64 %161
  %scevgep471472.us = bitcast i8* %scevgep471.us to double*
  %_p_scalar_473.us = load double, double* %scevgep471472.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_473.us
  store double %p_add42.i79.us, double* %scevgep471472.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar454.us, %smin1015
  br i1 %exitcond1016.not, label %polly.loop_exit452.loopexit.us, label %polly.loop_header450.us

polly.loop_exit452.loopexit.us:                   ; preds = %polly.loop_header450.us
  %polly.indvar_next447.us = add nuw nsw i64 %polly.indvar446.us, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next447.us, 100
  br i1 %exitcond1017.not, label %polly.loop_exit445, label %polly.loop_header443.us

polly.start476:                                   ; preds = %init_array.exit
  %malloccall478 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header562

polly.exiting477:                                 ; preds = %polly.loop_exit586
  tail call void @free(i8* %malloccall478)
  br label %kernel_syr2k.exit

polly.loop_header562:                             ; preds = %polly.loop_exit570, %polly.start476
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit570 ], [ 0, %polly.start476 ]
  %polly.indvar565 = phi i64 [ %polly.indvar_next566, %polly.loop_exit570 ], [ 1, %polly.start476 ]
  %162 = add i64 %indvar, 1
  %163 = mul nuw nsw i64 %polly.indvar565, 9600
  %scevgep574 = getelementptr i8, i8* %call, i64 %163
  %min.iters.check1169 = icmp ult i64 %162, 4
  br i1 %min.iters.check1169, label %polly.loop_header568.preheader, label %vector.ph1170

vector.ph1170:                                    ; preds = %polly.loop_header562
  %n.vec1172 = and i64 %162, -4
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %vector.ph1170
  %index1173 = phi i64 [ 0, %vector.ph1170 ], [ %index.next1174, %vector.body1168 ]
  %164 = shl nuw nsw i64 %index1173, 3
  %165 = getelementptr i8, i8* %scevgep574, i64 %164
  %166 = bitcast i8* %165 to <4 x double>*
  %wide.load1177 = load <4 x double>, <4 x double>* %166, align 8, !alias.scope !84, !noalias !86
  %167 = fmul fast <4 x double> %wide.load1177, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %168 = bitcast i8* %165 to <4 x double>*
  store <4 x double> %167, <4 x double>* %168, align 8, !alias.scope !84, !noalias !86
  %index.next1174 = add i64 %index1173, 4
  %169 = icmp eq i64 %index.next1174, %n.vec1172
  br i1 %169, label %middle.block1166, label %vector.body1168, !llvm.loop !90

middle.block1166:                                 ; preds = %vector.body1168
  %cmp.n1176 = icmp eq i64 %162, %n.vec1172
  br i1 %cmp.n1176, label %polly.loop_exit570, label %polly.loop_header568.preheader

polly.loop_header568.preheader:                   ; preds = %polly.loop_header562, %middle.block1166
  %polly.indvar571.ph = phi i64 [ 0, %polly.loop_header562 ], [ %n.vec1172, %middle.block1166 ]
  br label %polly.loop_header568

polly.loop_exit570:                               ; preds = %polly.loop_header568, %middle.block1166
  %polly.indvar_next566 = add nuw nsw i64 %polly.indvar565, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next566, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1043.not, label %polly.loop_header578.preheader, label %polly.loop_header562

polly.loop_header578.preheader:                   ; preds = %polly.loop_exit570
  %Packed_MemRef_call1479 = bitcast i8* %malloccall478 to double*
  br label %polly.loop_header578

polly.loop_header568:                             ; preds = %polly.loop_header568.preheader, %polly.loop_header568
  %polly.indvar571 = phi i64 [ %polly.indvar_next572, %polly.loop_header568 ], [ %polly.indvar571.ph, %polly.loop_header568.preheader ]
  %170 = shl nuw nsw i64 %polly.indvar571, 3
  %scevgep575 = getelementptr i8, i8* %scevgep574, i64 %170
  %scevgep575576 = bitcast i8* %scevgep575 to double*
  %_p_scalar_577 = load double, double* %scevgep575576, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_577, 1.200000e+00
  store double %p_mul.i, double* %scevgep575576, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next572 = add nuw nsw i64 %polly.indvar571, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next572, %polly.indvar565
  br i1 %exitcond1042.not, label %polly.loop_exit570, label %polly.loop_header568, !llvm.loop !91

polly.loop_header578:                             ; preds = %polly.loop_header578.preheader, %polly.loop_exit586
  %indvars.iv1028 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1029, %polly.loop_exit586 ]
  %indvars.iv1023 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %indvars.iv.next1024, %polly.loop_exit586 ]
  %polly.indvar581 = phi i64 [ 0, %polly.loop_header578.preheader ], [ %polly.indvar_next582, %polly.loop_exit586 ]
  %171 = mul nuw nsw i64 %polly.indvar581, 7
  %172 = add nuw nsw i64 %171, 39
  %pexp.p_div_q590 = lshr i64 %172, 5
  %173 = sub nsw i64 %polly.indvar581, %pexp.p_div_q590
  %polly.loop_guard595 = icmp sgt i64 %173, -2
  %174 = mul nsw i64 %polly.indvar581, -50
  %175 = mul nuw nsw i64 %polly.indvar581, 50
  br label %polly.loop_header584

polly.loop_exit586:                               ; preds = %polly.loop_exit594
  %polly.indvar_next582 = add nuw nsw i64 %polly.indvar581, 1
  %indvars.iv.next1024 = add nsw i64 %indvars.iv1023, -50
  %indvars.iv.next1029 = add nuw nsw i64 %indvars.iv1028, 50
  %exitcond1041.not = icmp eq i64 %polly.indvar_next582, 24
  br i1 %exitcond1041.not, label %polly.exiting477, label %polly.loop_header578

polly.loop_header584:                             ; preds = %polly.loop_exit594, %polly.loop_header578
  %polly.indvar587 = phi i64 [ 0, %polly.loop_header578 ], [ %polly.indvar_next588, %polly.loop_exit594 ]
  br i1 %polly.loop_guard595, label %polly.loop_header592.preheader, label %polly.loop_exit594

polly.loop_header592.preheader:                   ; preds = %polly.loop_header584
  %176 = mul nuw nsw i64 %polly.indvar587, 100
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit602, %polly.loop_header584
  %polly.indvar_next588 = add nuw nsw i64 %polly.indvar587, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar_next588, 10
  br i1 %exitcond1040.not, label %polly.loop_exit586, label %polly.loop_header584

polly.loop_header592:                             ; preds = %polly.loop_header592.preheader, %polly.loop_exit602
  %indvars.iv1030 = phi i64 [ %indvars.iv1028, %polly.loop_header592.preheader ], [ %indvars.iv.next1031, %polly.loop_exit602 ]
  %indvars.iv1025 = phi i64 [ %indvars.iv1023, %polly.loop_header592.preheader ], [ %indvars.iv.next1026, %polly.loop_exit602 ]
  %polly.indvar596 = phi i64 [ 0, %polly.loop_header592.preheader ], [ %polly.indvar_next597, %polly.loop_exit602 ]
  %177 = shl nsw i64 %polly.indvar596, 6
  %178 = add nsw i64 %177, %174
  %179 = icmp sgt i64 %178, 0
  %180 = select i1 %179, i64 %178, i64 0
  %polly.loop_guard603 = icmp slt i64 %180, 50
  br i1 %polly.loop_guard603, label %polly.loop_header600.preheader, label %polly.loop_exit602

polly.loop_header600.preheader:                   ; preds = %polly.loop_header592
  %smax1027 = call i64 @llvm.smax.i64(i64 %indvars.iv1025, i64 0)
  %181 = add i64 %smax1027, %indvars.iv1030
  %182 = sub nsw i64 %175, %177
  %183 = add nuw nsw i64 %177, 64
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_exit638, %polly.loop_header592
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %polly.loop_cond598.not = icmp sgt i64 %polly.indvar596, %173
  %indvars.iv.next1026 = add nsw i64 %indvars.iv1025, 64
  %indvars.iv.next1031 = add nsw i64 %indvars.iv1030, -64
  br i1 %polly.loop_cond598.not, label %polly.loop_exit594, label %polly.loop_header592

polly.loop_header600:                             ; preds = %polly.loop_header600.preheader, %polly.loop_exit638
  %indvars.iv1032 = phi i64 [ %181, %polly.loop_header600.preheader ], [ %indvars.iv.next1033, %polly.loop_exit638 ]
  %polly.indvar604 = phi i64 [ %180, %polly.loop_header600.preheader ], [ %polly.indvar_next605, %polly.loop_exit638 ]
  %smin1037 = call i64 @llvm.smin.i64(i64 %indvars.iv1032, i64 63)
  %184 = add nsw i64 %polly.indvar604, %182
  %polly.loop_guard6171080 = icmp sgt i64 %184, -1
  %185 = add nuw nsw i64 %polly.indvar604, %175
  %.not874 = icmp ult i64 %185, %183
  %polly.access.mul.call1630 = mul nsw i64 %185, 1000
  %186 = add nuw i64 %polly.access.mul.call1630, %176
  br i1 %polly.loop_guard6171080, label %polly.loop_header607.us, label %polly.loop_header600.split

polly.loop_header607.us:                          ; preds = %polly.loop_header600, %polly.merge626.us
  %polly.indvar610.us = phi i64 [ %polly.indvar_next611.us, %polly.merge626.us ], [ 0, %polly.loop_header600 ]
  %187 = add nuw nsw i64 %polly.indvar610.us, %176
  %polly.access.mul.Packed_MemRef_call1479.us = mul nuw nsw i64 %polly.indvar610.us, 1200
  br label %polly.loop_header614.us

polly.loop_header614.us:                          ; preds = %polly.loop_header607.us, %polly.loop_header614.us
  %polly.indvar618.us = phi i64 [ %polly.indvar_next619.us, %polly.loop_header614.us ], [ 0, %polly.loop_header607.us ]
  %188 = add nuw nsw i64 %polly.indvar618.us, %177
  %polly.access.mul.call1622.us = mul nuw nsw i64 %188, 1000
  %polly.access.add.call1623.us = add nuw nsw i64 %187, %polly.access.mul.call1622.us
  %polly.access.call1624.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1623.us
  %polly.access.call1624.load.us = load double, double* %polly.access.call1624.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1479.us = add nuw nsw i64 %polly.indvar618.us, %polly.access.mul.Packed_MemRef_call1479.us
  %polly.access.Packed_MemRef_call1479.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479.us
  store double %polly.access.call1624.load.us, double* %polly.access.Packed_MemRef_call1479.us, align 8
  %polly.indvar_next619.us = add nuw nsw i64 %polly.indvar618.us, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar618.us, %smin1037
  br i1 %exitcond1035.not, label %polly.cond625.loopexit.us, label %polly.loop_header614.us

polly.then627.us:                                 ; preds = %polly.cond625.loopexit.us
  %polly.access.add.call1631.us = add nuw nsw i64 %186, %polly.indvar610.us
  %polly.access.call1632.us = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631.us
  %polly.access.call1632.load.us = load double, double* %polly.access.call1632.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1479634.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1479.us, %184
  %polly.access.Packed_MemRef_call1479635.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634.us
  store double %polly.access.call1632.load.us, double* %polly.access.Packed_MemRef_call1479635.us, align 8
  br label %polly.merge626.us

polly.merge626.us:                                ; preds = %polly.then627.us, %polly.cond625.loopexit.us
  %polly.indvar_next611.us = add nuw nsw i64 %polly.indvar610.us, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next611.us, 100
  br i1 %exitcond1036.not, label %polly.loop_header636.preheader, label %polly.loop_header607.us

polly.cond625.loopexit.us:                        ; preds = %polly.loop_header614.us
  br i1 %.not874, label %polly.merge626.us, label %polly.then627.us

polly.loop_header600.split:                       ; preds = %polly.loop_header600
  br i1 %.not874, label %polly.loop_exit638, label %polly.loop_header607

polly.loop_exit638:                               ; preds = %polly.loop_exit645.loopexit.us, %polly.loop_header600.split, %polly.loop_header636.preheader
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %polly.loop_cond606 = icmp ult i64 %polly.indvar604, 49
  %indvars.iv.next1033 = add i64 %indvars.iv1032, 1
  br i1 %polly.loop_cond606, label %polly.loop_header600, label %polly.loop_exit602

polly.loop_header607:                             ; preds = %polly.loop_header600.split, %polly.loop_header607
  %polly.indvar610 = phi i64 [ %polly.indvar_next611, %polly.loop_header607 ], [ 0, %polly.loop_header600.split ]
  %polly.access.add.call1631 = add nuw nsw i64 %186, %polly.indvar610
  %polly.access.call1632 = getelementptr double, double* %polly.access.cast.call1671, i64 %polly.access.add.call1631
  %polly.access.call1632.load = load double, double* %polly.access.call1632, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1479633 = mul nuw nsw i64 %polly.indvar610, 1200
  %polly.access.add.Packed_MemRef_call1479634 = add nsw i64 %polly.access.mul.Packed_MemRef_call1479633, %184
  %polly.access.Packed_MemRef_call1479635 = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479634
  store double %polly.access.call1632.load, double* %polly.access.Packed_MemRef_call1479635, align 8
  %polly.indvar_next611 = add nuw nsw i64 %polly.indvar610, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next611, 100
  br i1 %exitcond1022.not, label %polly.loop_header636.preheader, label %polly.loop_header607

polly.loop_header636.preheader:                   ; preds = %polly.loop_header607, %polly.merge626.us
  %189 = mul i64 %185, 8000
  %190 = mul i64 %185, 9600
  br i1 %polly.loop_guard6171080, label %polly.loop_header636.us, label %polly.loop_exit638

polly.loop_header636.us:                          ; preds = %polly.loop_header636.preheader, %polly.loop_exit645.loopexit.us
  %polly.indvar639.us = phi i64 [ %polly.indvar_next640.us, %polly.loop_exit645.loopexit.us ], [ 0, %polly.loop_header636.preheader ]
  %191 = add nuw nsw i64 %polly.indvar639.us, %176
  %polly.access.mul.Packed_MemRef_call1479650.us = mul nuw nsw i64 %polly.indvar639.us, 1200
  %192 = shl i64 %191, 3
  %193 = add i64 %192, %189
  %scevgep654.us = getelementptr i8, i8* %call2, i64 %193
  %scevgep654655.us = bitcast i8* %scevgep654.us to double*
  %_p_scalar_656.us = load double, double* %scevgep654655.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1479661.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1479650.us, %184
  %polly.access.Packed_MemRef_call1479662.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479661.us
  %_p_scalar_663.us = load double, double* %polly.access.Packed_MemRef_call1479662.us, align 8
  br label %polly.loop_header643.us

polly.loop_header643.us:                          ; preds = %polly.loop_header636.us, %polly.loop_header643.us
  %polly.indvar647.us = phi i64 [ %polly.indvar_next648.us, %polly.loop_header643.us ], [ 0, %polly.loop_header636.us ]
  %194 = add nuw nsw i64 %polly.indvar647.us, %177
  %polly.access.add.Packed_MemRef_call1479651.us = add nuw nsw i64 %polly.indvar647.us, %polly.access.mul.Packed_MemRef_call1479650.us
  %polly.access.Packed_MemRef_call1479652.us = getelementptr double, double* %Packed_MemRef_call1479, i64 %polly.access.add.Packed_MemRef_call1479651.us
  %_p_scalar_653.us = load double, double* %polly.access.Packed_MemRef_call1479652.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_656.us, %_p_scalar_653.us
  %195 = mul nuw nsw i64 %194, 8000
  %196 = add nuw nsw i64 %195, %192
  %scevgep657.us = getelementptr i8, i8* %call2, i64 %196
  %scevgep657658.us = bitcast i8* %scevgep657.us to double*
  %_p_scalar_659.us = load double, double* %scevgep657658.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_663.us, %_p_scalar_659.us
  %197 = shl i64 %194, 3
  %198 = add i64 %197, %190
  %scevgep664.us = getelementptr i8, i8* %call, i64 %198
  %scevgep664665.us = bitcast i8* %scevgep664.us to double*
  %_p_scalar_666.us = load double, double* %scevgep664665.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_666.us
  store double %p_add42.i.us, double* %scevgep664665.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next648.us = add nuw nsw i64 %polly.indvar647.us, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar647.us, %smin1037
  br i1 %exitcond1038.not, label %polly.loop_exit645.loopexit.us, label %polly.loop_header643.us

polly.loop_exit645.loopexit.us:                   ; preds = %polly.loop_header643.us
  %polly.indvar_next640.us = add nuw nsw i64 %polly.indvar639.us, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar_next640.us, 100
  br i1 %exitcond1039.not, label %polly.loop_exit638, label %polly.loop_header636.us

polly.loop_header793:                             ; preds = %entry, %polly.loop_exit801
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %polly.loop_exit801 ], [ 0, %entry ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %entry ]
  %smin1070 = call i64 @llvm.smin.i64(i64 %indvars.iv1068, i64 -1168)
  %199 = shl nsw i64 %polly.indvar796, 5
  %200 = add nsw i64 %smin1070, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next1069 = add nsw i64 %indvars.iv1068, -32
  %exitcond1073.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond1073.not, label %polly.loop_header820, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %201 = mul nsw i64 %polly.indvar802, -32
  %smin = call i64 @llvm.smin.i64(i64 %201, i64 -1168)
  %202 = add nsw i64 %smin, 1200
  %smin1066 = call i64 @llvm.smin.i64(i64 %indvars.iv1064, i64 -1168)
  %203 = shl nsw i64 %polly.indvar802, 5
  %204 = add nsw i64 %smin1066, 1199
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next1065 = add nsw i64 %indvars.iv1064, -32
  %exitcond1072.not = icmp eq i64 %polly.indvar_next803, 38
  br i1 %exitcond1072.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %polly.indvar808 = phi i64 [ 0, %polly.loop_header799 ], [ %polly.indvar_next809, %polly.loop_exit813 ]
  %205 = add nuw nsw i64 %polly.indvar808, %199
  %206 = trunc i64 %205 to i32
  %207 = mul nuw nsw i64 %205, 9600
  %min.iters.check = icmp eq i64 %202, 0
  br i1 %min.iters.check, label %polly.loop_header811, label %vector.ph1108

vector.ph1108:                                    ; preds = %polly.loop_header805
  %broadcast.splatinsert1115 = insertelement <4 x i64> poison, i64 %203, i32 0
  %broadcast.splat1116 = shufflevector <4 x i64> %broadcast.splatinsert1115, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1117 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat1118 = shufflevector <4 x i32> %broadcast.splatinsert1117, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %vector.ph1108
  %index1109 = phi i64 [ 0, %vector.ph1108 ], [ %index.next1110, %vector.body1107 ]
  %vec.ind1113 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1108 ], [ %vec.ind.next1114, %vector.body1107 ]
  %208 = add nuw nsw <4 x i64> %vec.ind1113, %broadcast.splat1116
  %209 = trunc <4 x i64> %208 to <4 x i32>
  %210 = mul <4 x i32> %broadcast.splat1118, %209
  %211 = add <4 x i32> %210, <i32 3, i32 3, i32 3, i32 3>
  %212 = urem <4 x i32> %211, <i32 1200, i32 1200, i32 1200, i32 1200>
  %213 = sitofp <4 x i32> %212 to <4 x double>
  %214 = fmul fast <4 x double> %213, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %215 = extractelement <4 x i64> %208, i32 0
  %216 = shl i64 %215, 3
  %217 = add nuw nsw i64 %216, %207
  %218 = getelementptr i8, i8* %call, i64 %217
  %219 = bitcast i8* %218 to <4 x double>*
  store <4 x double> %214, <4 x double>* %219, align 8, !alias.scope !94, !noalias !96
  %index.next1110 = add i64 %index1109, 4
  %vec.ind.next1114 = add <4 x i64> %vec.ind1113, <i64 4, i64 4, i64 4, i64 4>
  %220 = icmp eq i64 %index.next1110, %202
  br i1 %220, label %polly.loop_exit813, label %vector.body1107, !llvm.loop !99

polly.loop_exit813:                               ; preds = %vector.body1107, %polly.loop_header811
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar808, %200
  br i1 %exitcond1071.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_header805, %polly.loop_header811
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_header811 ], [ 0, %polly.loop_header805 ]
  %221 = add nuw nsw i64 %polly.indvar814, %203
  %222 = trunc i64 %221 to i32
  %223 = mul i32 %222, %206
  %224 = add i32 %223, 3
  %225 = urem i32 %224, 1200
  %p_conv31.i = sitofp i32 %225 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %226 = shl i64 %221, 3
  %227 = add nuw nsw i64 %226, %207
  %scevgep817 = getelementptr i8, i8* %call, i64 %227
  %scevgep817818 = bitcast i8* %scevgep817 to double*
  store double %p_div33.i, double* %scevgep817818, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar814, %204
  br i1 %exitcond1067.not, label %polly.loop_exit813, label %polly.loop_header811, !llvm.loop !100

polly.loop_header820:                             ; preds = %polly.loop_exit801, %polly.loop_exit828
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_exit801 ]
  %smin1060 = call i64 @llvm.smin.i64(i64 %indvars.iv1058, i64 -1168)
  %228 = shl nsw i64 %polly.indvar823, 5
  %229 = add nsw i64 %smin1060, 1199
  br label %polly.loop_header826

polly.loop_exit828:                               ; preds = %polly.loop_exit834
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, -32
  %exitcond1063.not = icmp eq i64 %polly.indvar_next824, 38
  br i1 %exitcond1063.not, label %polly.loop_header846, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_exit834, %polly.loop_header820
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %230 = mul nsw i64 %polly.indvar829, -32
  %smin1122 = call i64 @llvm.smin.i64(i64 %230, i64 -968)
  %231 = add nsw i64 %smin1122, 1000
  %smin1056 = call i64 @llvm.smin.i64(i64 %indvars.iv1054, i64 -968)
  %232 = shl nsw i64 %polly.indvar829, 5
  %233 = add nsw i64 %smin1056, 999
  br label %polly.loop_header832

polly.loop_exit834:                               ; preds = %polly.loop_exit840
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %indvars.iv.next1055 = add nsw i64 %indvars.iv1054, -32
  %exitcond1062.not = icmp eq i64 %polly.indvar_next830, 32
  br i1 %exitcond1062.not, label %polly.loop_exit828, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_exit840, %polly.loop_header826
  %polly.indvar835 = phi i64 [ 0, %polly.loop_header826 ], [ %polly.indvar_next836, %polly.loop_exit840 ]
  %234 = add nuw nsw i64 %polly.indvar835, %228
  %235 = trunc i64 %234 to i32
  %236 = mul nuw nsw i64 %234, 8000
  %min.iters.check1123 = icmp eq i64 %231, 0
  br i1 %min.iters.check1123, label %polly.loop_header838, label %vector.ph1124

vector.ph1124:                                    ; preds = %polly.loop_header832
  %broadcast.splatinsert1133 = insertelement <4 x i64> poison, i64 %232, i32 0
  %broadcast.splat1134 = shufflevector <4 x i64> %broadcast.splatinsert1133, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1135 = insertelement <4 x i32> poison, i32 %235, i32 0
  %broadcast.splat1136 = shufflevector <4 x i32> %broadcast.splatinsert1135, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %vector.ph1124
  %index1127 = phi i64 [ 0, %vector.ph1124 ], [ %index.next1128, %vector.body1121 ]
  %vec.ind1131 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1124 ], [ %vec.ind.next1132, %vector.body1121 ]
  %237 = add nuw nsw <4 x i64> %vec.ind1131, %broadcast.splat1134
  %238 = trunc <4 x i64> %237 to <4 x i32>
  %239 = mul <4 x i32> %broadcast.splat1136, %238
  %240 = add <4 x i32> %239, <i32 2, i32 2, i32 2, i32 2>
  %241 = urem <4 x i32> %240, <i32 1000, i32 1000, i32 1000, i32 1000>
  %242 = sitofp <4 x i32> %241 to <4 x double>
  %243 = fmul fast <4 x double> %242, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %244 = extractelement <4 x i64> %237, i32 0
  %245 = shl i64 %244, 3
  %246 = add nuw nsw i64 %245, %236
  %247 = getelementptr i8, i8* %call2, i64 %246
  %248 = bitcast i8* %247 to <4 x double>*
  store <4 x double> %243, <4 x double>* %248, align 8, !alias.scope !98, !noalias !101
  %index.next1128 = add i64 %index1127, 4
  %vec.ind.next1132 = add <4 x i64> %vec.ind1131, <i64 4, i64 4, i64 4, i64 4>
  %249 = icmp eq i64 %index.next1128, %231
  br i1 %249, label %polly.loop_exit840, label %vector.body1121, !llvm.loop !102

polly.loop_exit840:                               ; preds = %vector.body1121, %polly.loop_header838
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar835, %229
  br i1 %exitcond1061.not, label %polly.loop_exit834, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_header832, %polly.loop_header838
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_header838 ], [ 0, %polly.loop_header832 ]
  %250 = add nuw nsw i64 %polly.indvar841, %232
  %251 = trunc i64 %250 to i32
  %252 = mul i32 %251, %235
  %253 = add i32 %252, 2
  %254 = urem i32 %253, 1000
  %p_conv10.i = sitofp i32 %254 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %255 = shl i64 %250, 3
  %256 = add nuw nsw i64 %255, %236
  %scevgep844 = getelementptr i8, i8* %call2, i64 %256
  %scevgep844845 = bitcast i8* %scevgep844 to double*
  store double %p_div12.i, double* %scevgep844845, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar841, %233
  br i1 %exitcond1057.not, label %polly.loop_exit840, label %polly.loop_header838, !llvm.loop !103

polly.loop_header846:                             ; preds = %polly.loop_exit828, %polly.loop_exit854
  %indvars.iv1048 = phi i64 [ %indvars.iv.next1049, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_exit828 ]
  %smin1050 = call i64 @llvm.smin.i64(i64 %indvars.iv1048, i64 -1168)
  %257 = shl nsw i64 %polly.indvar849, 5
  %258 = add nsw i64 %smin1050, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1049 = add nsw i64 %indvars.iv1048, -32
  %exitcond1053.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1053.not, label %init_array.exit, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_header846 ]
  %259 = mul nsw i64 %polly.indvar855, -32
  %smin1140 = call i64 @llvm.smin.i64(i64 %259, i64 -968)
  %260 = add nsw i64 %smin1140, 1000
  %smin1046 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 -968)
  %261 = shl nsw i64 %polly.indvar855, 5
  %262 = add nsw i64 %smin1046, 999
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1045 = add nsw i64 %indvars.iv1044, -32
  %exitcond1052.not = icmp eq i64 %polly.indvar_next856, 32
  br i1 %exitcond1052.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %polly.indvar861 = phi i64 [ 0, %polly.loop_header852 ], [ %polly.indvar_next862, %polly.loop_exit866 ]
  %263 = add nuw nsw i64 %polly.indvar861, %257
  %264 = trunc i64 %263 to i32
  %265 = mul nuw nsw i64 %263, 8000
  %min.iters.check1141 = icmp eq i64 %260, 0
  br i1 %min.iters.check1141, label %polly.loop_header864, label %vector.ph1142

vector.ph1142:                                    ; preds = %polly.loop_header858
  %broadcast.splatinsert1151 = insertelement <4 x i64> poison, i64 %261, i32 0
  %broadcast.splat1152 = shufflevector <4 x i64> %broadcast.splatinsert1151, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1153 = insertelement <4 x i32> poison, i32 %264, i32 0
  %broadcast.splat1154 = shufflevector <4 x i32> %broadcast.splatinsert1153, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1139

vector.body1139:                                  ; preds = %vector.body1139, %vector.ph1142
  %index1145 = phi i64 [ 0, %vector.ph1142 ], [ %index.next1146, %vector.body1139 ]
  %vec.ind1149 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1142 ], [ %vec.ind.next1150, %vector.body1139 ]
  %266 = add nuw nsw <4 x i64> %vec.ind1149, %broadcast.splat1152
  %267 = trunc <4 x i64> %266 to <4 x i32>
  %268 = mul <4 x i32> %broadcast.splat1154, %267
  %269 = add <4 x i32> %268, <i32 1, i32 1, i32 1, i32 1>
  %270 = urem <4 x i32> %269, <i32 1200, i32 1200, i32 1200, i32 1200>
  %271 = sitofp <4 x i32> %270 to <4 x double>
  %272 = fmul fast <4 x double> %271, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %273 = extractelement <4 x i64> %266, i32 0
  %274 = shl i64 %273, 3
  %275 = add nuw nsw i64 %274, %265
  %276 = getelementptr i8, i8* %call1, i64 %275
  %277 = bitcast i8* %276 to <4 x double>*
  store <4 x double> %272, <4 x double>* %277, align 8, !alias.scope !97, !noalias !104
  %index.next1146 = add i64 %index1145, 4
  %vec.ind.next1150 = add <4 x i64> %vec.ind1149, <i64 4, i64 4, i64 4, i64 4>
  %278 = icmp eq i64 %index.next1146, %260
  br i1 %278, label %polly.loop_exit866, label %vector.body1139, !llvm.loop !105

polly.loop_exit866:                               ; preds = %vector.body1139, %polly.loop_header864
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar861, %258
  br i1 %exitcond1051.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_header858, %polly.loop_header864
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_header864 ], [ 0, %polly.loop_header858 ]
  %279 = add nuw nsw i64 %polly.indvar867, %261
  %280 = trunc i64 %279 to i32
  %281 = mul i32 %280, %264
  %282 = add i32 %281, 1
  %283 = urem i32 %282, 1200
  %p_conv.i = sitofp i32 %283 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %284 = shl i64 %279, 3
  %285 = add nuw nsw i64 %284, %265
  %scevgep871 = getelementptr i8, i8* %call1, i64 %285
  %scevgep871872 = bitcast i8* %scevgep871 to double*
  store double %p_div.i, double* %scevgep871872, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar867, %262
  br i1 %exitcond1047.not, label %polly.loop_exit866, label %polly.loop_header864, !llvm.loop !106
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
!25 = !{!"llvm.loop.tile.size", i32 64}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 100}
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
!48 = !{!"llvm.loop.tile.size", i32 50}
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
