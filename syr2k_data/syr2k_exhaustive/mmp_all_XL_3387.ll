; ModuleID = 'syr2k_exhaustive/mmp_all_XL_3387.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_3387.c"
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
  %call874 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1726 = bitcast i8* %call1 to double*
  %polly.access.call1735 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1735, %call2
  %polly.access.call2755 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2755, %call1
  %2 = or i1 %0, %1
  %polly.access.call775 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call775, %call2
  %4 = icmp ule i8* %polly.access.call2755, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call775, %call1
  %8 = icmp ule i8* %polly.access.call1735, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header848, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv7.i, i64 %index1097
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit909
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start513, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1159 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1159, label %for.body3.i46.preheader1242, label %vector.ph1160

vector.ph1160:                                    ; preds = %for.body3.i46.preheader
  %n.vec1162 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %vector.ph1160
  %index1163 = phi i64 [ 0, %vector.ph1160 ], [ %index.next1164, %vector.body1158 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i, i64 %index1163
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1164 = add i64 %index1163, 4
  %46 = icmp eq i64 %index.next1164, %n.vec1162
  br i1 %46, label %middle.block1156, label %vector.body1158, !llvm.loop !18

middle.block1156:                                 ; preds = %vector.body1158
  %cmp.n1166 = icmp eq i64 %indvars.iv21.i, %n.vec1162
  br i1 %cmp.n1166, label %for.inc6.i, label %for.body3.i46.preheader1242

for.body3.i46.preheader1242:                      ; preds = %for.body3.i46.preheader, %middle.block1156
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1162, %middle.block1156 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1242, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1242 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1156, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting514
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start302, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1182 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1182, label %for.body3.i60.preheader1238, label %vector.ph1183

vector.ph1183:                                    ; preds = %for.body3.i60.preheader
  %n.vec1185 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %vector.ph1183
  %index1186 = phi i64 [ 0, %vector.ph1183 ], [ %index.next1187, %vector.body1181 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i52, i64 %index1186
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1190 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1190, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1187 = add i64 %index1186, 4
  %57 = icmp eq i64 %index.next1187, %n.vec1185
  br i1 %57, label %middle.block1179, label %vector.body1181, !llvm.loop !60

middle.block1179:                                 ; preds = %vector.body1181
  %cmp.n1189 = icmp eq i64 %indvars.iv21.i52, %n.vec1185
  br i1 %cmp.n1189, label %for.inc6.i63, label %for.body3.i60.preheader1238

for.body3.i60.preheader1238:                      ; preds = %for.body3.i60.preheader, %middle.block1179
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1185, %middle.block1179 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1238, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1238 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1179, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting303
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1208 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1208, label %for.body3.i99.preheader1234, label %vector.ph1209

vector.ph1209:                                    ; preds = %for.body3.i99.preheader
  %n.vec1211 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1207

vector.body1207:                                  ; preds = %vector.body1207, %vector.ph1209
  %index1212 = phi i64 [ 0, %vector.ph1209 ], [ %index.next1213, %vector.body1207 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i91, i64 %index1212
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1216 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1216, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1213 = add i64 %index1212, 4
  %68 = icmp eq i64 %index.next1213, %n.vec1211
  br i1 %68, label %middle.block1205, label %vector.body1207, !llvm.loop !62

middle.block1205:                                 ; preds = %vector.body1207
  %cmp.n1215 = icmp eq i64 %indvars.iv21.i91, %n.vec1211
  br i1 %cmp.n1215, label %for.inc6.i102, label %for.body3.i99.preheader1234

for.body3.i99.preheader1234:                      ; preds = %for.body3.i99.preheader, %middle.block1205
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1211, %middle.block1205 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1234, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1234 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1205, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !64
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !67

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
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
  %indvar1220 = phi i64 [ %indvar.next1221, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1220, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1222 = icmp ult i64 %88, 4
  br i1 %min.iters.check1222, label %polly.loop_header191.preheader, label %vector.ph1223

vector.ph1223:                                    ; preds = %polly.loop_header
  %n.vec1225 = and i64 %88, -4
  br label %vector.body1219

vector.body1219:                                  ; preds = %vector.body1219, %vector.ph1223
  %index1226 = phi i64 [ 0, %vector.ph1223 ], [ %index.next1227, %vector.body1219 ]
  %90 = shl nuw nsw i64 %index1226, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1230 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1230, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1227 = add i64 %index1226, 4
  %95 = icmp eq i64 %index.next1227, %n.vec1225
  br i1 %95, label %middle.block1217, label %vector.body1219, !llvm.loop !74

middle.block1217:                                 ; preds = %vector.body1219
  %cmp.n1229 = icmp eq i64 %88, %n.vec1225
  br i1 %cmp.n1229, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1217
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1225, %middle.block1217 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1217
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond968.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1221 = add i64 %indvar1220, 1
  br i1 %exitcond968.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond967.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond967.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv957 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next958, %polly.loop_exit207 ]
  %indvars.iv953 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next954, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 50, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = mul nuw nsw i64 %polly.indvar202, 5
  %98 = shl nsw i64 %polly.indvar202, 7
  %99 = or i64 %98, 1
  %100 = mul nsw i64 %polly.indvar202, -256
  %101 = shl nsw i64 %polly.indvar202, 8
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit263
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -6
  %indvars.iv.next954 = add nuw nsw i64 %indvars.iv953, 6
  %indvars.iv.next958 = add nsw i64 %indvars.iv957, -6
  %exitcond966.not = icmp eq i64 %polly.indvar_next203, 5
  br i1 %exitcond966.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit263, %polly.loop_header199
  %indvars.iv959 = phi i64 [ %indvars.iv.next960, %polly.loop_exit263 ], [ %indvars.iv957, %polly.loop_header199 ]
  %indvars.iv955 = phi i64 [ %indvars.iv.next956, %polly.loop_exit263 ], [ %indvars.iv953, %polly.loop_header199 ]
  %indvars.iv947 = phi i64 [ %indvars.iv.next948, %polly.loop_exit263 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit263 ], [ %97, %polly.loop_header199 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv955, i64 0)
  %102 = add i64 %smax, %indvars.iv959
  %103 = mul nuw nsw i64 %polly.indvar208, 25
  %.not = icmp ult i64 %103, %99
  br i1 %.not, label %polly.loop_header242, label %polly.loop_header211.preheader

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %104 = mul nuw nsw i64 %polly.indvar208, 50
  %105 = add nsw i64 %104, %100
  %106 = add nsw i64 %105, -1
  %.inv = icmp sgt i64 %105, 255
  %107 = select i1 %.inv, i64 255, i64 %106
  %polly.loop_guard = icmp sgt i64 %107, -1
  %108 = add nsw i64 %105, 49
  br i1 %polly.loop_guard, label %polly.loop_header211.us, label %polly.loop_header211

polly.loop_header211.us:                          ; preds = %polly.loop_header211.preheader, %polly.loop_exit230.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.loop_exit230.us ], [ 0, %polly.loop_header211.preheader ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar214.us, 1200
  br label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_header211.us, %polly.loop_header217.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_header217.us ], [ 0, %polly.loop_header211.us ]
  %109 = add nuw nsw i64 %polly.indvar220.us, %101
  %polly.access.mul.call1224.us = mul nuw nsw i64 %109, 1000
  %polly.access.add.call1225.us = add nuw nsw i64 %polly.access.mul.call1224.us, %polly.indvar214.us
  %polly.access.call1226.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1225.us
  %polly.access.call1226.load.us = load double, double* %polly.access.call1226.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1226.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next221.us = add nuw i64 %polly.indvar220.us, 1
  %exitcond946.not = icmp eq i64 %polly.indvar220.us, %107
  br i1 %exitcond946.not, label %polly.loop_header228.us, label %polly.loop_header217.us

polly.loop_header228.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header228.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header228.us ], [ %105, %polly.loop_header217.us ]
  %110 = add nsw i64 %polly.indvar232.us, %101
  %polly.access.mul.call1236.us = mul nuw nsw i64 %110, 1000
  %polly.access.add.call1237.us = add nuw nsw i64 %polly.access.mul.call1236.us, %polly.indvar214.us
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240.us = add nsw i64 %polly.indvar232.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1241.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1241.us, align 8
  %polly.indvar_next233.us = add nsw i64 %polly.indvar232.us, 1
  %exitcond949.not = icmp eq i64 %polly.indvar_next233.us, %indvars.iv947
  br i1 %exitcond949.not, label %polly.loop_exit230.us, label %polly.loop_header228.us

polly.loop_exit230.us:                            ; preds = %polly.loop_header228.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond950.not = icmp eq i64 %polly.indvar_next215.us, 1000
  br i1 %exitcond950.not, label %polly.loop_preheader262, label %polly.loop_header211.us

polly.loop_exit263:                               ; preds = %polly.loop_exit269
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next948 = add nuw nsw i64 %indvars.iv947, 50
  %indvars.iv.next956 = add nsw i64 %indvars.iv955, -50
  %indvars.iv.next960 = add nsw i64 %indvars.iv959, 50
  %exitcond965.not = icmp eq i64 %polly.indvar_next209, 24
  br i1 %exitcond965.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit230
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit230 ], [ 0, %polly.loop_header211.preheader ]
  %polly.access.mul.Packed_MemRef_call1239 = mul nuw nsw i64 %polly.indvar214, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_header228
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, 1000
  br i1 %exitcond.not, label %polly.loop_preheader262, label %polly.loop_header211

polly.loop_header228:                             ; preds = %polly.loop_header211, %polly.loop_header228
  %polly.indvar232 = phi i64 [ %polly.indvar_next233, %polly.loop_header228 ], [ %105, %polly.loop_header211 ]
  %111 = add nsw i64 %polly.indvar232, %101
  %polly.access.mul.call1236 = mul nuw nsw i64 %111, 1000
  %polly.access.add.call1237 = add nuw nsw i64 %polly.access.mul.call1236, %polly.indvar214
  %polly.access.call1238 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1237
  %polly.access.call1238.load = load double, double* %polly.access.call1238, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240 = add nsw i64 %polly.indvar232, %polly.access.mul.Packed_MemRef_call1239
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  store double %polly.access.call1238.load, double* %polly.access.Packed_MemRef_call1241, align 8
  %polly.indvar_next233 = add nsw i64 %polly.indvar232, 1
  %polly.loop_cond234.not.not = icmp slt i64 %polly.indvar232, %108
  br i1 %polly.loop_cond234.not.not, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header242:                             ; preds = %polly.loop_header205, %polly.loop_exit250
  %polly.indvar245 = phi i64 [ %polly.indvar_next246, %polly.loop_exit250 ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1258 = mul nuw nsw i64 %polly.indvar245, 1200
  br label %polly.loop_header248

polly.loop_exit250:                               ; preds = %polly.loop_header248
  %polly.indvar_next246 = add nuw nsw i64 %polly.indvar245, 1
  %exitcond952.not = icmp eq i64 %polly.indvar_next246, 1000
  br i1 %exitcond952.not, label %polly.loop_preheader262.loopexit, label %polly.loop_header242

polly.loop_header248:                             ; preds = %polly.loop_header248, %polly.loop_header242
  %polly.indvar251 = phi i64 [ 0, %polly.loop_header242 ], [ %polly.indvar_next252, %polly.loop_header248 ]
  %112 = add nuw nsw i64 %polly.indvar251, %101
  %polly.access.mul.call1255 = mul nuw nsw i64 %112, 1000
  %polly.access.add.call1256 = add nuw nsw i64 %polly.access.mul.call1255, %polly.indvar245
  %polly.access.call1257 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1256
  %polly.access.call1257.load = load double, double* %polly.access.call1257, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1259 = add nuw nsw i64 %polly.indvar251, %polly.access.mul.Packed_MemRef_call1258
  %polly.access.Packed_MemRef_call1260 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259
  store double %polly.access.call1257.load, double* %polly.access.Packed_MemRef_call1260, align 8
  %polly.indvar_next252 = add nuw nsw i64 %polly.indvar251, 1
  %exitcond951.not = icmp eq i64 %polly.indvar_next252, %indvars.iv
  br i1 %exitcond951.not, label %polly.loop_exit250, label %polly.loop_header248

polly.loop_header261:                             ; preds = %polly.loop_exit269, %polly.loop_preheader262
  %polly.indvar264 = phi i64 [ 0, %polly.loop_preheader262 ], [ %polly.indvar_next265, %polly.loop_exit269 ]
  %113 = shl nuw nsw i64 %polly.indvar264, 3
  %scevgep285 = getelementptr i8, i8* %call2, i64 %113
  %polly.access.mul.Packed_MemRef_call1281 = mul nuw nsw i64 %polly.indvar264, 1200
  br label %polly.loop_header267

polly.loop_exit269:                               ; preds = %polly.loop_exit276
  %polly.indvar_next265 = add nuw nsw i64 %polly.indvar264, 1
  %exitcond964.not = icmp eq i64 %polly.indvar_next265, 1000
  br i1 %exitcond964.not, label %polly.loop_exit263, label %polly.loop_header261

polly.loop_preheader262.loopexit:                 ; preds = %polly.loop_exit250
  %.pre1067 = mul nuw nsw i64 %polly.indvar208, 50
  br label %polly.loop_preheader262

polly.loop_preheader262:                          ; preds = %polly.loop_exit230, %polly.loop_exit230.us, %polly.loop_preheader262.loopexit
  %.pre-phi1068 = phi i64 [ %.pre1067, %polly.loop_preheader262.loopexit ], [ %104, %polly.loop_exit230.us ], [ %104, %polly.loop_exit230 ]
  %114 = sub nsw i64 %101, %.pre-phi1068
  %115 = icmp sgt i64 %114, 0
  %116 = select i1 %115, i64 %114, i64 0
  br label %polly.loop_header261

polly.loop_header267:                             ; preds = %polly.loop_exit276, %polly.loop_header261
  %indvars.iv961 = phi i64 [ %indvars.iv.next962, %polly.loop_exit276 ], [ %102, %polly.loop_header261 ]
  %polly.indvar270 = phi i64 [ %polly.indvar_next271, %polly.loop_exit276 ], [ %116, %polly.loop_header261 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv961, i64 255)
  %117 = add nuw i64 %polly.indvar270, %.pre-phi1068
  %118 = add i64 %117, %100
  %polly.loop_guard2771069 = icmp sgt i64 %118, -1
  br i1 %polly.loop_guard2771069, label %polly.loop_header274.preheader, label %polly.loop_exit276

polly.loop_header274.preheader:                   ; preds = %polly.loop_header267
  %119 = mul i64 %117, 8000
  %scevgep286 = getelementptr i8, i8* %scevgep285, i64 %119
  %scevgep286287 = bitcast i8* %scevgep286 to double*
  %_p_scalar_288 = load double, double* %scevgep286287, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1294 = add nsw i64 %polly.access.mul.Packed_MemRef_call1281, %118
  %polly.access.Packed_MemRef_call1295 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call1295, align 8
  %120 = mul i64 %117, 9600
  br label %polly.loop_header274

polly.loop_exit276:                               ; preds = %polly.loop_header274, %polly.loop_header267
  %polly.indvar_next271 = add nuw nsw i64 %polly.indvar270, 1
  %polly.loop_cond272 = icmp ult i64 %polly.indvar270, 49
  %indvars.iv.next962 = add i64 %indvars.iv961, 1
  br i1 %polly.loop_cond272, label %polly.loop_header267, label %polly.loop_exit269

polly.loop_header274:                             ; preds = %polly.loop_header274.preheader, %polly.loop_header274
  %polly.indvar278 = phi i64 [ %polly.indvar_next279, %polly.loop_header274 ], [ 0, %polly.loop_header274.preheader ]
  %121 = add nuw nsw i64 %polly.indvar278, %101
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.indvar278, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call1283, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_288, %_p_scalar_284
  %122 = mul nuw nsw i64 %121, 8000
  %scevgep290 = getelementptr i8, i8* %scevgep285, i64 %122
  %scevgep290291 = bitcast i8* %scevgep290 to double*
  %_p_scalar_292 = load double, double* %scevgep290291, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114 = fmul fast double %_p_scalar_296, %_p_scalar_292
  %123 = shl i64 %121, 3
  %124 = add i64 %123, %120
  %scevgep297 = getelementptr i8, i8* %call, i64 %124
  %scevgep297298 = bitcast i8* %scevgep297 to double*
  %_p_scalar_299 = load double, double* %scevgep297298, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_299
  store double %p_add42.i118, double* %scevgep297298, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next279 = add nuw nsw i64 %polly.indvar278, 1
  %exitcond963.not = icmp eq i64 %polly.indvar278, %smin
  br i1 %exitcond963.not, label %polly.loop_exit276, label %polly.loop_header274

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header388

polly.exiting303:                                 ; preds = %polly.loop_exit412
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start302
  %indvar1194 = phi i64 [ %indvar.next1195, %polly.loop_exit396 ], [ 0, %polly.start302 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start302 ]
  %125 = add i64 %indvar1194, 1
  %126 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %126
  %min.iters.check1196 = icmp ult i64 %125, 4
  br i1 %min.iters.check1196, label %polly.loop_header394.preheader, label %vector.ph1197

vector.ph1197:                                    ; preds = %polly.loop_header388
  %n.vec1199 = and i64 %125, -4
  br label %vector.body1193

vector.body1193:                                  ; preds = %vector.body1193, %vector.ph1197
  %index1200 = phi i64 [ 0, %vector.ph1197 ], [ %index.next1201, %vector.body1193 ]
  %127 = shl nuw nsw i64 %index1200, 3
  %128 = getelementptr i8, i8* %scevgep400, i64 %127
  %129 = bitcast i8* %128 to <4 x double>*
  %wide.load1204 = load <4 x double>, <4 x double>* %129, align 8, !alias.scope !79, !noalias !81
  %130 = fmul fast <4 x double> %wide.load1204, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %131 = bitcast i8* %128 to <4 x double>*
  store <4 x double> %130, <4 x double>* %131, align 8, !alias.scope !79, !noalias !81
  %index.next1201 = add i64 %index1200, 4
  %132 = icmp eq i64 %index.next1201, %n.vec1199
  br i1 %132, label %middle.block1191, label %vector.body1193, !llvm.loop !85

middle.block1191:                                 ; preds = %vector.body1193
  %cmp.n1203 = icmp eq i64 %125, %n.vec1199
  br i1 %cmp.n1203, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1191
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1199, %middle.block1191 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1191
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1195 = add i64 %indvar1194, 1
  br i1 %exitcond996.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %133 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %133
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond995.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond995.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !86

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %indvars.iv984 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %indvars.iv.next985, %polly.loop_exit412 ]
  %indvars.iv979 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %indvars.iv.next980, %polly.loop_exit412 ]
  %indvars.iv971 = phi i64 [ 50, %polly.loop_header404.preheader ], [ %indvars.iv.next972, %polly.loop_exit412 ]
  %polly.indvar407 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %polly.indvar_next408, %polly.loop_exit412 ]
  %134 = mul nuw nsw i64 %polly.indvar407, 5
  %135 = shl nsw i64 %polly.indvar407, 7
  %136 = or i64 %135, 1
  %137 = mul nsw i64 %polly.indvar407, -256
  %138 = shl nsw i64 %polly.indvar407, 8
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_exit474
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %indvars.iv.next972 = add nsw i64 %indvars.iv971, -6
  %indvars.iv.next980 = add nuw nsw i64 %indvars.iv979, 6
  %indvars.iv.next985 = add nsw i64 %indvars.iv984, -6
  %exitcond994.not = icmp eq i64 %polly.indvar_next408, 5
  br i1 %exitcond994.not, label %polly.exiting303, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_exit474, %polly.loop_header404
  %indvars.iv986 = phi i64 [ %indvars.iv.next987, %polly.loop_exit474 ], [ %indvars.iv984, %polly.loop_header404 ]
  %indvars.iv981 = phi i64 [ %indvars.iv.next982, %polly.loop_exit474 ], [ %indvars.iv979, %polly.loop_header404 ]
  %indvars.iv973 = phi i64 [ %indvars.iv.next974, %polly.loop_exit474 ], [ %indvars.iv971, %polly.loop_header404 ]
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit474 ], [ %134, %polly.loop_header404 ]
  %smax983 = call i64 @llvm.smax.i64(i64 %indvars.iv981, i64 0)
  %139 = add i64 %smax983, %indvars.iv986
  %140 = mul nuw nsw i64 %polly.indvar413, 25
  %.not928 = icmp ult i64 %140, %136
  br i1 %.not928, label %polly.loop_header453, label %polly.loop_header420.preheader

polly.loop_header420.preheader:                   ; preds = %polly.loop_header410
  %141 = mul nuw nsw i64 %polly.indvar413, 50
  %142 = add nsw i64 %141, %137
  %143 = add nsw i64 %142, -1
  %.inv929 = icmp sgt i64 %142, 255
  %144 = select i1 %.inv929, i64 255, i64 %143
  %polly.loop_guard430 = icmp sgt i64 %144, -1
  %145 = add nsw i64 %142, 49
  br i1 %polly.loop_guard430, label %polly.loop_header420.us, label %polly.loop_header420

polly.loop_header420.us:                          ; preds = %polly.loop_header420.preheader, %polly.loop_exit441.us
  %polly.indvar423.us = phi i64 [ %polly.indvar_next424.us, %polly.loop_exit441.us ], [ 0, %polly.loop_header420.preheader ]
  %polly.access.mul.Packed_MemRef_call1305.us = mul nuw nsw i64 %polly.indvar423.us, 1200
  br label %polly.loop_header427.us

polly.loop_header427.us:                          ; preds = %polly.loop_header420.us, %polly.loop_header427.us
  %polly.indvar431.us = phi i64 [ %polly.indvar_next432.us, %polly.loop_header427.us ], [ 0, %polly.loop_header420.us ]
  %146 = add nuw nsw i64 %polly.indvar431.us, %138
  %polly.access.mul.call1435.us = mul nuw nsw i64 %146, 1000
  %polly.access.add.call1436.us = add nuw nsw i64 %polly.access.mul.call1435.us, %polly.indvar423.us
  %polly.access.call1437.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1436.us
  %polly.access.call1437.load.us = load double, double* %polly.access.call1437.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.us = add nuw nsw i64 %polly.indvar431.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us
  store double %polly.access.call1437.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.indvar_next432.us = add nuw i64 %polly.indvar431.us, 1
  %exitcond970.not = icmp eq i64 %polly.indvar431.us, %144
  br i1 %exitcond970.not, label %polly.loop_header439.us, label %polly.loop_header427.us

polly.loop_header439.us:                          ; preds = %polly.loop_header427.us, %polly.loop_header439.us
  %polly.indvar443.us = phi i64 [ %polly.indvar_next444.us, %polly.loop_header439.us ], [ %142, %polly.loop_header427.us ]
  %147 = add nsw i64 %polly.indvar443.us, %138
  %polly.access.mul.call1447.us = mul nuw nsw i64 %147, 1000
  %polly.access.add.call1448.us = add nuw nsw i64 %polly.access.mul.call1447.us, %polly.indvar423.us
  %polly.access.call1449.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1448.us
  %polly.access.call1449.load.us = load double, double* %polly.access.call1449.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305451.us = add nsw i64 %polly.indvar443.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305452.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305451.us
  store double %polly.access.call1449.load.us, double* %polly.access.Packed_MemRef_call1305452.us, align 8
  %polly.indvar_next444.us = add nsw i64 %polly.indvar443.us, 1
  %exitcond975.not = icmp eq i64 %polly.indvar_next444.us, %indvars.iv973
  br i1 %exitcond975.not, label %polly.loop_exit441.us, label %polly.loop_header439.us

polly.loop_exit441.us:                            ; preds = %polly.loop_header439.us
  %polly.indvar_next424.us = add nuw nsw i64 %polly.indvar423.us, 1
  %exitcond976.not = icmp eq i64 %polly.indvar_next424.us, 1000
  br i1 %exitcond976.not, label %polly.loop_preheader473, label %polly.loop_header420.us

polly.loop_exit474:                               ; preds = %polly.loop_exit480
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %indvars.iv.next974 = add nuw nsw i64 %indvars.iv973, 50
  %indvars.iv.next982 = add nsw i64 %indvars.iv981, -50
  %indvars.iv.next987 = add nsw i64 %indvars.iv986, 50
  %exitcond993.not = icmp eq i64 %polly.indvar_next414, 24
  br i1 %exitcond993.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header420:                             ; preds = %polly.loop_header420.preheader, %polly.loop_exit441
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit441 ], [ 0, %polly.loop_header420.preheader ]
  %polly.access.mul.Packed_MemRef_call1305450 = mul nuw nsw i64 %polly.indvar423, 1200
  br label %polly.loop_header439

polly.loop_exit441:                               ; preds = %polly.loop_header439
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %exitcond969.not = icmp eq i64 %polly.indvar_next424, 1000
  br i1 %exitcond969.not, label %polly.loop_preheader473, label %polly.loop_header420

polly.loop_header439:                             ; preds = %polly.loop_header420, %polly.loop_header439
  %polly.indvar443 = phi i64 [ %polly.indvar_next444, %polly.loop_header439 ], [ %142, %polly.loop_header420 ]
  %148 = add nsw i64 %polly.indvar443, %138
  %polly.access.mul.call1447 = mul nuw nsw i64 %148, 1000
  %polly.access.add.call1448 = add nuw nsw i64 %polly.access.mul.call1447, %polly.indvar423
  %polly.access.call1449 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1448
  %polly.access.call1449.load = load double, double* %polly.access.call1449, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305451 = add nsw i64 %polly.indvar443, %polly.access.mul.Packed_MemRef_call1305450
  %polly.access.Packed_MemRef_call1305452 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305451
  store double %polly.access.call1449.load, double* %polly.access.Packed_MemRef_call1305452, align 8
  %polly.indvar_next444 = add nsw i64 %polly.indvar443, 1
  %polly.loop_cond445.not.not = icmp slt i64 %polly.indvar443, %145
  br i1 %polly.loop_cond445.not.not, label %polly.loop_header439, label %polly.loop_exit441

polly.loop_header453:                             ; preds = %polly.loop_header410, %polly.loop_exit461
  %polly.indvar456 = phi i64 [ %polly.indvar_next457, %polly.loop_exit461 ], [ 0, %polly.loop_header410 ]
  %polly.access.mul.Packed_MemRef_call1305469 = mul nuw nsw i64 %polly.indvar456, 1200
  br label %polly.loop_header459

polly.loop_exit461:                               ; preds = %polly.loop_header459
  %polly.indvar_next457 = add nuw nsw i64 %polly.indvar456, 1
  %exitcond978.not = icmp eq i64 %polly.indvar_next457, 1000
  br i1 %exitcond978.not, label %polly.loop_preheader473.loopexit, label %polly.loop_header453

polly.loop_header459:                             ; preds = %polly.loop_header459, %polly.loop_header453
  %polly.indvar462 = phi i64 [ 0, %polly.loop_header453 ], [ %polly.indvar_next463, %polly.loop_header459 ]
  %149 = add nuw nsw i64 %polly.indvar462, %138
  %polly.access.mul.call1466 = mul nuw nsw i64 %149, 1000
  %polly.access.add.call1467 = add nuw nsw i64 %polly.access.mul.call1466, %polly.indvar456
  %polly.access.call1468 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1467
  %polly.access.call1468.load = load double, double* %polly.access.call1468, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305470 = add nuw nsw i64 %polly.indvar462, %polly.access.mul.Packed_MemRef_call1305469
  %polly.access.Packed_MemRef_call1305471 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305470
  store double %polly.access.call1468.load, double* %polly.access.Packed_MemRef_call1305471, align 8
  %polly.indvar_next463 = add nuw nsw i64 %polly.indvar462, 1
  %exitcond977.not = icmp eq i64 %polly.indvar_next463, %indvars.iv971
  br i1 %exitcond977.not, label %polly.loop_exit461, label %polly.loop_header459

polly.loop_header472:                             ; preds = %polly.loop_exit480, %polly.loop_preheader473
  %polly.indvar475 = phi i64 [ 0, %polly.loop_preheader473 ], [ %polly.indvar_next476, %polly.loop_exit480 ]
  %150 = shl nuw nsw i64 %polly.indvar475, 3
  %scevgep496 = getelementptr i8, i8* %call2, i64 %150
  %polly.access.mul.Packed_MemRef_call1305492 = mul nuw nsw i64 %polly.indvar475, 1200
  br label %polly.loop_header478

polly.loop_exit480:                               ; preds = %polly.loop_exit487
  %polly.indvar_next476 = add nuw nsw i64 %polly.indvar475, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next476, 1000
  br i1 %exitcond992.not, label %polly.loop_exit474, label %polly.loop_header472

polly.loop_preheader473.loopexit:                 ; preds = %polly.loop_exit461
  %.pre1065 = mul nuw nsw i64 %polly.indvar413, 50
  br label %polly.loop_preheader473

polly.loop_preheader473:                          ; preds = %polly.loop_exit441, %polly.loop_exit441.us, %polly.loop_preheader473.loopexit
  %.pre-phi1066 = phi i64 [ %.pre1065, %polly.loop_preheader473.loopexit ], [ %141, %polly.loop_exit441.us ], [ %141, %polly.loop_exit441 ]
  %151 = sub nsw i64 %138, %.pre-phi1066
  %152 = icmp sgt i64 %151, 0
  %153 = select i1 %152, i64 %151, i64 0
  br label %polly.loop_header472

polly.loop_header478:                             ; preds = %polly.loop_exit487, %polly.loop_header472
  %indvars.iv988 = phi i64 [ %indvars.iv.next989, %polly.loop_exit487 ], [ %139, %polly.loop_header472 ]
  %polly.indvar481 = phi i64 [ %polly.indvar_next482, %polly.loop_exit487 ], [ %153, %polly.loop_header472 ]
  %smin990 = call i64 @llvm.smin.i64(i64 %indvars.iv988, i64 255)
  %154 = add nuw i64 %polly.indvar481, %.pre-phi1066
  %155 = add i64 %154, %137
  %polly.loop_guard4881070 = icmp sgt i64 %155, -1
  br i1 %polly.loop_guard4881070, label %polly.loop_header485.preheader, label %polly.loop_exit487

polly.loop_header485.preheader:                   ; preds = %polly.loop_header478
  %156 = mul i64 %154, 8000
  %scevgep497 = getelementptr i8, i8* %scevgep496, i64 %156
  %scevgep497498 = bitcast i8* %scevgep497 to double*
  %_p_scalar_499 = load double, double* %scevgep497498, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1305505 = add nsw i64 %polly.access.mul.Packed_MemRef_call1305492, %155
  %polly.access.Packed_MemRef_call1305506 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305505
  %_p_scalar_507 = load double, double* %polly.access.Packed_MemRef_call1305506, align 8
  %157 = mul i64 %154, 9600
  br label %polly.loop_header485

polly.loop_exit487:                               ; preds = %polly.loop_header485, %polly.loop_header478
  %polly.indvar_next482 = add nuw nsw i64 %polly.indvar481, 1
  %polly.loop_cond483 = icmp ult i64 %polly.indvar481, 49
  %indvars.iv.next989 = add i64 %indvars.iv988, 1
  br i1 %polly.loop_cond483, label %polly.loop_header478, label %polly.loop_exit480

polly.loop_header485:                             ; preds = %polly.loop_header485.preheader, %polly.loop_header485
  %polly.indvar489 = phi i64 [ %polly.indvar_next490, %polly.loop_header485 ], [ 0, %polly.loop_header485.preheader ]
  %158 = add nuw nsw i64 %polly.indvar489, %138
  %polly.access.add.Packed_MemRef_call1305493 = add nuw nsw i64 %polly.indvar489, %polly.access.mul.Packed_MemRef_call1305492
  %polly.access.Packed_MemRef_call1305494 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305493
  %_p_scalar_495 = load double, double* %polly.access.Packed_MemRef_call1305494, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_499, %_p_scalar_495
  %159 = mul nuw nsw i64 %158, 8000
  %scevgep501 = getelementptr i8, i8* %scevgep496, i64 %159
  %scevgep501502 = bitcast i8* %scevgep501 to double*
  %_p_scalar_503 = load double, double* %scevgep501502, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75 = fmul fast double %_p_scalar_507, %_p_scalar_503
  %160 = shl i64 %158, 3
  %161 = add i64 %160, %157
  %scevgep508 = getelementptr i8, i8* %call, i64 %161
  %scevgep508509 = bitcast i8* %scevgep508 to double*
  %_p_scalar_510 = load double, double* %scevgep508509, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_510
  store double %p_add42.i79, double* %scevgep508509, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next490 = add nuw nsw i64 %polly.indvar489, 1
  %exitcond991.not = icmp eq i64 %polly.indvar489, %smin990
  br i1 %exitcond991.not, label %polly.loop_exit487, label %polly.loop_header485

polly.start513:                                   ; preds = %init_array.exit
  %malloccall515 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header599

polly.exiting514:                                 ; preds = %polly.loop_exit623
  tail call void @free(i8* %malloccall515)
  br label %kernel_syr2k.exit

polly.loop_header599:                             ; preds = %polly.loop_exit607, %polly.start513
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit607 ], [ 0, %polly.start513 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit607 ], [ 1, %polly.start513 ]
  %162 = add i64 %indvar, 1
  %163 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %163
  %min.iters.check1170 = icmp ult i64 %162, 4
  br i1 %min.iters.check1170, label %polly.loop_header605.preheader, label %vector.ph1171

vector.ph1171:                                    ; preds = %polly.loop_header599
  %n.vec1173 = and i64 %162, -4
  br label %vector.body1169

vector.body1169:                                  ; preds = %vector.body1169, %vector.ph1171
  %index1174 = phi i64 [ 0, %vector.ph1171 ], [ %index.next1175, %vector.body1169 ]
  %164 = shl nuw nsw i64 %index1174, 3
  %165 = getelementptr i8, i8* %scevgep611, i64 %164
  %166 = bitcast i8* %165 to <4 x double>*
  %wide.load1178 = load <4 x double>, <4 x double>* %166, align 8, !alias.scope !89, !noalias !91
  %167 = fmul fast <4 x double> %wide.load1178, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %168 = bitcast i8* %165 to <4 x double>*
  store <4 x double> %167, <4 x double>* %168, align 8, !alias.scope !89, !noalias !91
  %index.next1175 = add i64 %index1174, 4
  %169 = icmp eq i64 %index.next1175, %n.vec1173
  br i1 %169, label %middle.block1167, label %vector.body1169, !llvm.loop !95

middle.block1167:                                 ; preds = %vector.body1169
  %cmp.n1177 = icmp eq i64 %162, %n.vec1173
  br i1 %cmp.n1177, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1167
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1173, %middle.block1167 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1167
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1024.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %170 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %170
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1023.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !96

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit623
  %indvars.iv1012 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1013, %polly.loop_exit623 ]
  %indvars.iv1007 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1008, %polly.loop_exit623 ]
  %indvars.iv999 = phi i64 [ 50, %polly.loop_header615.preheader ], [ %indvars.iv.next1000, %polly.loop_exit623 ]
  %polly.indvar618 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %polly.indvar_next619, %polly.loop_exit623 ]
  %171 = mul nuw nsw i64 %polly.indvar618, 5
  %172 = shl nsw i64 %polly.indvar618, 7
  %173 = or i64 %172, 1
  %174 = mul nsw i64 %polly.indvar618, -256
  %175 = shl nsw i64 %polly.indvar618, 8
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_exit685
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %indvars.iv.next1000 = add nsw i64 %indvars.iv999, -6
  %indvars.iv.next1008 = add nuw nsw i64 %indvars.iv1007, 6
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, -6
  %exitcond1022.not = icmp eq i64 %polly.indvar_next619, 5
  br i1 %exitcond1022.not, label %polly.exiting514, label %polly.loop_header615

polly.loop_header621:                             ; preds = %polly.loop_exit685, %polly.loop_header615
  %indvars.iv1014 = phi i64 [ %indvars.iv.next1015, %polly.loop_exit685 ], [ %indvars.iv1012, %polly.loop_header615 ]
  %indvars.iv1009 = phi i64 [ %indvars.iv.next1010, %polly.loop_exit685 ], [ %indvars.iv1007, %polly.loop_header615 ]
  %indvars.iv1001 = phi i64 [ %indvars.iv.next1002, %polly.loop_exit685 ], [ %indvars.iv999, %polly.loop_header615 ]
  %polly.indvar624 = phi i64 [ %polly.indvar_next625, %polly.loop_exit685 ], [ %171, %polly.loop_header615 ]
  %smax1011 = call i64 @llvm.smax.i64(i64 %indvars.iv1009, i64 0)
  %176 = add i64 %smax1011, %indvars.iv1014
  %177 = mul nuw nsw i64 %polly.indvar624, 25
  %.not930 = icmp ult i64 %177, %173
  br i1 %.not930, label %polly.loop_header664, label %polly.loop_header631.preheader

polly.loop_header631.preheader:                   ; preds = %polly.loop_header621
  %178 = mul nuw nsw i64 %polly.indvar624, 50
  %179 = add nsw i64 %178, %174
  %180 = add nsw i64 %179, -1
  %.inv931 = icmp sgt i64 %179, 255
  %181 = select i1 %.inv931, i64 255, i64 %180
  %polly.loop_guard641 = icmp sgt i64 %181, -1
  %182 = add nsw i64 %179, 49
  br i1 %polly.loop_guard641, label %polly.loop_header631.us, label %polly.loop_header631

polly.loop_header631.us:                          ; preds = %polly.loop_header631.preheader, %polly.loop_exit652.us
  %polly.indvar634.us = phi i64 [ %polly.indvar_next635.us, %polly.loop_exit652.us ], [ 0, %polly.loop_header631.preheader ]
  %polly.access.mul.Packed_MemRef_call1516.us = mul nuw nsw i64 %polly.indvar634.us, 1200
  br label %polly.loop_header638.us

polly.loop_header638.us:                          ; preds = %polly.loop_header631.us, %polly.loop_header638.us
  %polly.indvar642.us = phi i64 [ %polly.indvar_next643.us, %polly.loop_header638.us ], [ 0, %polly.loop_header631.us ]
  %183 = add nuw nsw i64 %polly.indvar642.us, %175
  %polly.access.mul.call1646.us = mul nuw nsw i64 %183, 1000
  %polly.access.add.call1647.us = add nuw nsw i64 %polly.access.mul.call1646.us, %polly.indvar634.us
  %polly.access.call1648.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1647.us
  %polly.access.call1648.load.us = load double, double* %polly.access.call1648.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1516.us = add nuw nsw i64 %polly.indvar642.us, %polly.access.mul.Packed_MemRef_call1516.us
  %polly.access.Packed_MemRef_call1516.us = getelementptr double, double* %Packed_MemRef_call1516, i64 %polly.access.add.Packed_MemRef_call1516.us
  store double %polly.access.call1648.load.us, double* %polly.access.Packed_MemRef_call1516.us, align 8
  %polly.indvar_next643.us = add nuw i64 %polly.indvar642.us, 1
  %exitcond998.not = icmp eq i64 %polly.indvar642.us, %181
  br i1 %exitcond998.not, label %polly.loop_header650.us, label %polly.loop_header638.us

polly.loop_header650.us:                          ; preds = %polly.loop_header638.us, %polly.loop_header650.us
  %polly.indvar654.us = phi i64 [ %polly.indvar_next655.us, %polly.loop_header650.us ], [ %179, %polly.loop_header638.us ]
  %184 = add nsw i64 %polly.indvar654.us, %175
  %polly.access.mul.call1658.us = mul nuw nsw i64 %184, 1000
  %polly.access.add.call1659.us = add nuw nsw i64 %polly.access.mul.call1658.us, %polly.indvar634.us
  %polly.access.call1660.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1659.us
  %polly.access.call1660.load.us = load double, double* %polly.access.call1660.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1516662.us = add nsw i64 %polly.indvar654.us, %polly.access.mul.Packed_MemRef_call1516.us
  %polly.access.Packed_MemRef_call1516663.us = getelementptr double, double* %Packed_MemRef_call1516, i64 %polly.access.add.Packed_MemRef_call1516662.us
  store double %polly.access.call1660.load.us, double* %polly.access.Packed_MemRef_call1516663.us, align 8
  %polly.indvar_next655.us = add nsw i64 %polly.indvar654.us, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar_next655.us, %indvars.iv1001
  br i1 %exitcond1003.not, label %polly.loop_exit652.us, label %polly.loop_header650.us

polly.loop_exit652.us:                            ; preds = %polly.loop_header650.us
  %polly.indvar_next635.us = add nuw nsw i64 %polly.indvar634.us, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next635.us, 1000
  br i1 %exitcond1004.not, label %polly.loop_preheader684, label %polly.loop_header631.us

polly.loop_exit685:                               ; preds = %polly.loop_exit691
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %indvars.iv.next1002 = add nuw nsw i64 %indvars.iv1001, 50
  %indvars.iv.next1010 = add nsw i64 %indvars.iv1009, -50
  %indvars.iv.next1015 = add nsw i64 %indvars.iv1014, 50
  %exitcond1021.not = icmp eq i64 %polly.indvar_next625, 24
  br i1 %exitcond1021.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header631:                             ; preds = %polly.loop_header631.preheader, %polly.loop_exit652
  %polly.indvar634 = phi i64 [ %polly.indvar_next635, %polly.loop_exit652 ], [ 0, %polly.loop_header631.preheader ]
  %polly.access.mul.Packed_MemRef_call1516661 = mul nuw nsw i64 %polly.indvar634, 1200
  br label %polly.loop_header650

polly.loop_exit652:                               ; preds = %polly.loop_header650
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %exitcond997.not = icmp eq i64 %polly.indvar_next635, 1000
  br i1 %exitcond997.not, label %polly.loop_preheader684, label %polly.loop_header631

polly.loop_header650:                             ; preds = %polly.loop_header631, %polly.loop_header650
  %polly.indvar654 = phi i64 [ %polly.indvar_next655, %polly.loop_header650 ], [ %179, %polly.loop_header631 ]
  %185 = add nsw i64 %polly.indvar654, %175
  %polly.access.mul.call1658 = mul nuw nsw i64 %185, 1000
  %polly.access.add.call1659 = add nuw nsw i64 %polly.access.mul.call1658, %polly.indvar634
  %polly.access.call1660 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1659
  %polly.access.call1660.load = load double, double* %polly.access.call1660, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1516662 = add nsw i64 %polly.indvar654, %polly.access.mul.Packed_MemRef_call1516661
  %polly.access.Packed_MemRef_call1516663 = getelementptr double, double* %Packed_MemRef_call1516, i64 %polly.access.add.Packed_MemRef_call1516662
  store double %polly.access.call1660.load, double* %polly.access.Packed_MemRef_call1516663, align 8
  %polly.indvar_next655 = add nsw i64 %polly.indvar654, 1
  %polly.loop_cond656.not.not = icmp slt i64 %polly.indvar654, %182
  br i1 %polly.loop_cond656.not.not, label %polly.loop_header650, label %polly.loop_exit652

polly.loop_header664:                             ; preds = %polly.loop_header621, %polly.loop_exit672
  %polly.indvar667 = phi i64 [ %polly.indvar_next668, %polly.loop_exit672 ], [ 0, %polly.loop_header621 ]
  %polly.access.mul.Packed_MemRef_call1516680 = mul nuw nsw i64 %polly.indvar667, 1200
  br label %polly.loop_header670

polly.loop_exit672:                               ; preds = %polly.loop_header670
  %polly.indvar_next668 = add nuw nsw i64 %polly.indvar667, 1
  %exitcond1006.not = icmp eq i64 %polly.indvar_next668, 1000
  br i1 %exitcond1006.not, label %polly.loop_preheader684.loopexit, label %polly.loop_header664

polly.loop_header670:                             ; preds = %polly.loop_header670, %polly.loop_header664
  %polly.indvar673 = phi i64 [ 0, %polly.loop_header664 ], [ %polly.indvar_next674, %polly.loop_header670 ]
  %186 = add nuw nsw i64 %polly.indvar673, %175
  %polly.access.mul.call1677 = mul nuw nsw i64 %186, 1000
  %polly.access.add.call1678 = add nuw nsw i64 %polly.access.mul.call1677, %polly.indvar667
  %polly.access.call1679 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1678
  %polly.access.call1679.load = load double, double* %polly.access.call1679, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1516681 = add nuw nsw i64 %polly.indvar673, %polly.access.mul.Packed_MemRef_call1516680
  %polly.access.Packed_MemRef_call1516682 = getelementptr double, double* %Packed_MemRef_call1516, i64 %polly.access.add.Packed_MemRef_call1516681
  store double %polly.access.call1679.load, double* %polly.access.Packed_MemRef_call1516682, align 8
  %polly.indvar_next674 = add nuw nsw i64 %polly.indvar673, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar_next674, %indvars.iv999
  br i1 %exitcond1005.not, label %polly.loop_exit672, label %polly.loop_header670

polly.loop_header683:                             ; preds = %polly.loop_exit691, %polly.loop_preheader684
  %polly.indvar686 = phi i64 [ 0, %polly.loop_preheader684 ], [ %polly.indvar_next687, %polly.loop_exit691 ]
  %187 = shl nuw nsw i64 %polly.indvar686, 3
  %scevgep707 = getelementptr i8, i8* %call2, i64 %187
  %polly.access.mul.Packed_MemRef_call1516703 = mul nuw nsw i64 %polly.indvar686, 1200
  br label %polly.loop_header689

polly.loop_exit691:                               ; preds = %polly.loop_exit698
  %polly.indvar_next687 = add nuw nsw i64 %polly.indvar686, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next687, 1000
  br i1 %exitcond1020.not, label %polly.loop_exit685, label %polly.loop_header683

polly.loop_preheader684.loopexit:                 ; preds = %polly.loop_exit672
  %.pre = mul nuw nsw i64 %polly.indvar624, 50
  br label %polly.loop_preheader684

polly.loop_preheader684:                          ; preds = %polly.loop_exit652, %polly.loop_exit652.us, %polly.loop_preheader684.loopexit
  %.pre-phi = phi i64 [ %.pre, %polly.loop_preheader684.loopexit ], [ %178, %polly.loop_exit652.us ], [ %178, %polly.loop_exit652 ]
  %188 = sub nsw i64 %175, %.pre-phi
  %189 = icmp sgt i64 %188, 0
  %190 = select i1 %189, i64 %188, i64 0
  br label %polly.loop_header683

polly.loop_header689:                             ; preds = %polly.loop_exit698, %polly.loop_header683
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit698 ], [ %176, %polly.loop_header683 ]
  %polly.indvar692 = phi i64 [ %polly.indvar_next693, %polly.loop_exit698 ], [ %190, %polly.loop_header683 ]
  %smin1018 = call i64 @llvm.smin.i64(i64 %indvars.iv1016, i64 255)
  %191 = add nuw i64 %polly.indvar692, %.pre-phi
  %192 = add i64 %191, %174
  %polly.loop_guard6991071 = icmp sgt i64 %192, -1
  br i1 %polly.loop_guard6991071, label %polly.loop_header696.preheader, label %polly.loop_exit698

polly.loop_header696.preheader:                   ; preds = %polly.loop_header689
  %193 = mul i64 %191, 8000
  %scevgep708 = getelementptr i8, i8* %scevgep707, i64 %193
  %scevgep708709 = bitcast i8* %scevgep708 to double*
  %_p_scalar_710 = load double, double* %scevgep708709, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1516716 = add nsw i64 %polly.access.mul.Packed_MemRef_call1516703, %192
  %polly.access.Packed_MemRef_call1516717 = getelementptr double, double* %Packed_MemRef_call1516, i64 %polly.access.add.Packed_MemRef_call1516716
  %_p_scalar_718 = load double, double* %polly.access.Packed_MemRef_call1516717, align 8
  %194 = mul i64 %191, 9600
  br label %polly.loop_header696

polly.loop_exit698:                               ; preds = %polly.loop_header696, %polly.loop_header689
  %polly.indvar_next693 = add nuw nsw i64 %polly.indvar692, 1
  %polly.loop_cond694 = icmp ult i64 %polly.indvar692, 49
  %indvars.iv.next1017 = add i64 %indvars.iv1016, 1
  br i1 %polly.loop_cond694, label %polly.loop_header689, label %polly.loop_exit691

polly.loop_header696:                             ; preds = %polly.loop_header696.preheader, %polly.loop_header696
  %polly.indvar700 = phi i64 [ %polly.indvar_next701, %polly.loop_header696 ], [ 0, %polly.loop_header696.preheader ]
  %195 = add nuw nsw i64 %polly.indvar700, %175
  %polly.access.add.Packed_MemRef_call1516704 = add nuw nsw i64 %polly.indvar700, %polly.access.mul.Packed_MemRef_call1516703
  %polly.access.Packed_MemRef_call1516705 = getelementptr double, double* %Packed_MemRef_call1516, i64 %polly.access.add.Packed_MemRef_call1516704
  %_p_scalar_706 = load double, double* %polly.access.Packed_MemRef_call1516705, align 8
  %p_mul27.i = fmul fast double %_p_scalar_710, %_p_scalar_706
  %196 = mul nuw nsw i64 %195, 8000
  %scevgep712 = getelementptr i8, i8* %scevgep707, i64 %196
  %scevgep712713 = bitcast i8* %scevgep712 to double*
  %_p_scalar_714 = load double, double* %scevgep712713, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i = fmul fast double %_p_scalar_718, %_p_scalar_714
  %197 = shl i64 %195, 3
  %198 = add i64 %197, %194
  %scevgep719 = getelementptr i8, i8* %call, i64 %198
  %scevgep719720 = bitcast i8* %scevgep719 to double*
  %_p_scalar_721 = load double, double* %scevgep719720, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_721
  store double %p_add42.i, double* %scevgep719720, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next701 = add nuw nsw i64 %polly.indvar700, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar700, %smin1018
  br i1 %exitcond1019.not, label %polly.loop_exit698, label %polly.loop_header696

polly.loop_header848:                             ; preds = %entry, %polly.loop_exit856
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit856 ], [ 0, %entry ]
  %polly.indvar851 = phi i64 [ %polly.indvar_next852, %polly.loop_exit856 ], [ 0, %entry ]
  %smin1051 = call i64 @llvm.smin.i64(i64 %indvars.iv1049, i64 -1168)
  %199 = shl nsw i64 %polly.indvar851, 5
  %200 = add nsw i64 %smin1051, 1199
  br label %polly.loop_header854

polly.loop_exit856:                               ; preds = %polly.loop_exit862
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %indvars.iv.next1050 = add nsw i64 %indvars.iv1049, -32
  %exitcond1054.not = icmp eq i64 %polly.indvar_next852, 38
  br i1 %exitcond1054.not, label %polly.loop_header875, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_exit862, %polly.loop_header848
  %indvars.iv1045 = phi i64 [ %indvars.iv.next1046, %polly.loop_exit862 ], [ 0, %polly.loop_header848 ]
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_exit862 ], [ 0, %polly.loop_header848 ]
  %201 = mul nsw i64 %polly.indvar857, -32
  %smin1108 = call i64 @llvm.smin.i64(i64 %201, i64 -1168)
  %202 = add nsw i64 %smin1108, 1200
  %smin1047 = call i64 @llvm.smin.i64(i64 %indvars.iv1045, i64 -1168)
  %203 = shl nsw i64 %polly.indvar857, 5
  %204 = add nsw i64 %smin1047, 1199
  br label %polly.loop_header860

polly.loop_exit862:                               ; preds = %polly.loop_exit868
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %indvars.iv.next1046 = add nsw i64 %indvars.iv1045, -32
  %exitcond1053.not = icmp eq i64 %polly.indvar_next858, 38
  br i1 %exitcond1053.not, label %polly.loop_exit856, label %polly.loop_header854

polly.loop_header860:                             ; preds = %polly.loop_exit868, %polly.loop_header854
  %polly.indvar863 = phi i64 [ 0, %polly.loop_header854 ], [ %polly.indvar_next864, %polly.loop_exit868 ]
  %205 = add nuw nsw i64 %polly.indvar863, %199
  %206 = trunc i64 %205 to i32
  %207 = mul nuw nsw i64 %205, 9600
  %min.iters.check = icmp eq i64 %202, 0
  br i1 %min.iters.check, label %polly.loop_header866, label %vector.ph1109

vector.ph1109:                                    ; preds = %polly.loop_header860
  %broadcast.splatinsert1116 = insertelement <4 x i64> poison, i64 %203, i32 0
  %broadcast.splat1117 = shufflevector <4 x i64> %broadcast.splatinsert1116, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1118 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat1119 = shufflevector <4 x i32> %broadcast.splatinsert1118, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %vector.ph1109
  %index1110 = phi i64 [ 0, %vector.ph1109 ], [ %index.next1111, %vector.body1107 ]
  %vec.ind1114 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1109 ], [ %vec.ind.next1115, %vector.body1107 ]
  %208 = add nuw nsw <4 x i64> %vec.ind1114, %broadcast.splat1117
  %209 = trunc <4 x i64> %208 to <4 x i32>
  %210 = mul <4 x i32> %broadcast.splat1119, %209
  %211 = add <4 x i32> %210, <i32 3, i32 3, i32 3, i32 3>
  %212 = urem <4 x i32> %211, <i32 1200, i32 1200, i32 1200, i32 1200>
  %213 = sitofp <4 x i32> %212 to <4 x double>
  %214 = fmul fast <4 x double> %213, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %215 = extractelement <4 x i64> %208, i32 0
  %216 = shl i64 %215, 3
  %217 = add nuw nsw i64 %216, %207
  %218 = getelementptr i8, i8* %call, i64 %217
  %219 = bitcast i8* %218 to <4 x double>*
  store <4 x double> %214, <4 x double>* %219, align 8, !alias.scope !99, !noalias !101
  %index.next1111 = add i64 %index1110, 4
  %vec.ind.next1115 = add <4 x i64> %vec.ind1114, <i64 4, i64 4, i64 4, i64 4>
  %220 = icmp eq i64 %index.next1111, %202
  br i1 %220, label %polly.loop_exit868, label %vector.body1107, !llvm.loop !104

polly.loop_exit868:                               ; preds = %vector.body1107, %polly.loop_header866
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar863, %200
  br i1 %exitcond1052.not, label %polly.loop_exit862, label %polly.loop_header860

polly.loop_header866:                             ; preds = %polly.loop_header860, %polly.loop_header866
  %polly.indvar869 = phi i64 [ %polly.indvar_next870, %polly.loop_header866 ], [ 0, %polly.loop_header860 ]
  %221 = add nuw nsw i64 %polly.indvar869, %203
  %222 = trunc i64 %221 to i32
  %223 = mul i32 %222, %206
  %224 = add i32 %223, 3
  %225 = urem i32 %224, 1200
  %p_conv31.i = sitofp i32 %225 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %226 = shl i64 %221, 3
  %227 = add nuw nsw i64 %226, %207
  %scevgep872 = getelementptr i8, i8* %call, i64 %227
  %scevgep872873 = bitcast i8* %scevgep872 to double*
  store double %p_div33.i, double* %scevgep872873, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next870 = add nuw nsw i64 %polly.indvar869, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar869, %204
  br i1 %exitcond1048.not, label %polly.loop_exit868, label %polly.loop_header866, !llvm.loop !105

polly.loop_header875:                             ; preds = %polly.loop_exit856, %polly.loop_exit883
  %indvars.iv1039 = phi i64 [ %indvars.iv.next1040, %polly.loop_exit883 ], [ 0, %polly.loop_exit856 ]
  %polly.indvar878 = phi i64 [ %polly.indvar_next879, %polly.loop_exit883 ], [ 0, %polly.loop_exit856 ]
  %smin1041 = call i64 @llvm.smin.i64(i64 %indvars.iv1039, i64 -1168)
  %228 = shl nsw i64 %polly.indvar878, 5
  %229 = add nsw i64 %smin1041, 1199
  br label %polly.loop_header881

polly.loop_exit883:                               ; preds = %polly.loop_exit889
  %polly.indvar_next879 = add nuw nsw i64 %polly.indvar878, 1
  %indvars.iv.next1040 = add nsw i64 %indvars.iv1039, -32
  %exitcond1044.not = icmp eq i64 %polly.indvar_next879, 38
  br i1 %exitcond1044.not, label %polly.loop_header901, label %polly.loop_header875

polly.loop_header881:                             ; preds = %polly.loop_exit889, %polly.loop_header875
  %indvars.iv1035 = phi i64 [ %indvars.iv.next1036, %polly.loop_exit889 ], [ 0, %polly.loop_header875 ]
  %polly.indvar884 = phi i64 [ %polly.indvar_next885, %polly.loop_exit889 ], [ 0, %polly.loop_header875 ]
  %230 = mul nsw i64 %polly.indvar884, -32
  %smin1123 = call i64 @llvm.smin.i64(i64 %230, i64 -968)
  %231 = add nsw i64 %smin1123, 1000
  %smin1037 = call i64 @llvm.smin.i64(i64 %indvars.iv1035, i64 -968)
  %232 = shl nsw i64 %polly.indvar884, 5
  %233 = add nsw i64 %smin1037, 999
  br label %polly.loop_header887

polly.loop_exit889:                               ; preds = %polly.loop_exit895
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %indvars.iv.next1036 = add nsw i64 %indvars.iv1035, -32
  %exitcond1043.not = icmp eq i64 %polly.indvar_next885, 32
  br i1 %exitcond1043.not, label %polly.loop_exit883, label %polly.loop_header881

polly.loop_header887:                             ; preds = %polly.loop_exit895, %polly.loop_header881
  %polly.indvar890 = phi i64 [ 0, %polly.loop_header881 ], [ %polly.indvar_next891, %polly.loop_exit895 ]
  %234 = add nuw nsw i64 %polly.indvar890, %228
  %235 = trunc i64 %234 to i32
  %236 = mul nuw nsw i64 %234, 8000
  %min.iters.check1124 = icmp eq i64 %231, 0
  br i1 %min.iters.check1124, label %polly.loop_header893, label %vector.ph1125

vector.ph1125:                                    ; preds = %polly.loop_header887
  %broadcast.splatinsert1134 = insertelement <4 x i64> poison, i64 %232, i32 0
  %broadcast.splat1135 = shufflevector <4 x i64> %broadcast.splatinsert1134, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1136 = insertelement <4 x i32> poison, i32 %235, i32 0
  %broadcast.splat1137 = shufflevector <4 x i32> %broadcast.splatinsert1136, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1122

vector.body1122:                                  ; preds = %vector.body1122, %vector.ph1125
  %index1128 = phi i64 [ 0, %vector.ph1125 ], [ %index.next1129, %vector.body1122 ]
  %vec.ind1132 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1125 ], [ %vec.ind.next1133, %vector.body1122 ]
  %237 = add nuw nsw <4 x i64> %vec.ind1132, %broadcast.splat1135
  %238 = trunc <4 x i64> %237 to <4 x i32>
  %239 = mul <4 x i32> %broadcast.splat1137, %238
  %240 = add <4 x i32> %239, <i32 2, i32 2, i32 2, i32 2>
  %241 = urem <4 x i32> %240, <i32 1000, i32 1000, i32 1000, i32 1000>
  %242 = sitofp <4 x i32> %241 to <4 x double>
  %243 = fmul fast <4 x double> %242, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %244 = extractelement <4 x i64> %237, i32 0
  %245 = shl i64 %244, 3
  %246 = add nuw nsw i64 %245, %236
  %247 = getelementptr i8, i8* %call2, i64 %246
  %248 = bitcast i8* %247 to <4 x double>*
  store <4 x double> %243, <4 x double>* %248, align 8, !alias.scope !103, !noalias !106
  %index.next1129 = add i64 %index1128, 4
  %vec.ind.next1133 = add <4 x i64> %vec.ind1132, <i64 4, i64 4, i64 4, i64 4>
  %249 = icmp eq i64 %index.next1129, %231
  br i1 %249, label %polly.loop_exit895, label %vector.body1122, !llvm.loop !107

polly.loop_exit895:                               ; preds = %vector.body1122, %polly.loop_header893
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar890, %229
  br i1 %exitcond1042.not, label %polly.loop_exit889, label %polly.loop_header887

polly.loop_header893:                             ; preds = %polly.loop_header887, %polly.loop_header893
  %polly.indvar896 = phi i64 [ %polly.indvar_next897, %polly.loop_header893 ], [ 0, %polly.loop_header887 ]
  %250 = add nuw nsw i64 %polly.indvar896, %232
  %251 = trunc i64 %250 to i32
  %252 = mul i32 %251, %235
  %253 = add i32 %252, 2
  %254 = urem i32 %253, 1000
  %p_conv10.i = sitofp i32 %254 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %255 = shl i64 %250, 3
  %256 = add nuw nsw i64 %255, %236
  %scevgep899 = getelementptr i8, i8* %call2, i64 %256
  %scevgep899900 = bitcast i8* %scevgep899 to double*
  store double %p_div12.i, double* %scevgep899900, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar896, %233
  br i1 %exitcond1038.not, label %polly.loop_exit895, label %polly.loop_header893, !llvm.loop !108

polly.loop_header901:                             ; preds = %polly.loop_exit883, %polly.loop_exit909
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %polly.loop_exit909 ], [ 0, %polly.loop_exit883 ]
  %polly.indvar904 = phi i64 [ %polly.indvar_next905, %polly.loop_exit909 ], [ 0, %polly.loop_exit883 ]
  %smin1031 = call i64 @llvm.smin.i64(i64 %indvars.iv1029, i64 -1168)
  %257 = shl nsw i64 %polly.indvar904, 5
  %258 = add nsw i64 %smin1031, 1199
  br label %polly.loop_header907

polly.loop_exit909:                               ; preds = %polly.loop_exit915
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %indvars.iv.next1030 = add nsw i64 %indvars.iv1029, -32
  %exitcond1034.not = icmp eq i64 %polly.indvar_next905, 38
  br i1 %exitcond1034.not, label %init_array.exit, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_exit915, %polly.loop_header901
  %indvars.iv1025 = phi i64 [ %indvars.iv.next1026, %polly.loop_exit915 ], [ 0, %polly.loop_header901 ]
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_exit915 ], [ 0, %polly.loop_header901 ]
  %259 = mul nsw i64 %polly.indvar910, -32
  %smin1141 = call i64 @llvm.smin.i64(i64 %259, i64 -968)
  %260 = add nsw i64 %smin1141, 1000
  %smin1027 = call i64 @llvm.smin.i64(i64 %indvars.iv1025, i64 -968)
  %261 = shl nsw i64 %polly.indvar910, 5
  %262 = add nsw i64 %smin1027, 999
  br label %polly.loop_header913

polly.loop_exit915:                               ; preds = %polly.loop_exit921
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %indvars.iv.next1026 = add nsw i64 %indvars.iv1025, -32
  %exitcond1033.not = icmp eq i64 %polly.indvar_next911, 32
  br i1 %exitcond1033.not, label %polly.loop_exit909, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_exit921, %polly.loop_header907
  %polly.indvar916 = phi i64 [ 0, %polly.loop_header907 ], [ %polly.indvar_next917, %polly.loop_exit921 ]
  %263 = add nuw nsw i64 %polly.indvar916, %257
  %264 = trunc i64 %263 to i32
  %265 = mul nuw nsw i64 %263, 8000
  %min.iters.check1142 = icmp eq i64 %260, 0
  br i1 %min.iters.check1142, label %polly.loop_header919, label %vector.ph1143

vector.ph1143:                                    ; preds = %polly.loop_header913
  %broadcast.splatinsert1152 = insertelement <4 x i64> poison, i64 %261, i32 0
  %broadcast.splat1153 = shufflevector <4 x i64> %broadcast.splatinsert1152, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1154 = insertelement <4 x i32> poison, i32 %264, i32 0
  %broadcast.splat1155 = shufflevector <4 x i32> %broadcast.splatinsert1154, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1140

vector.body1140:                                  ; preds = %vector.body1140, %vector.ph1143
  %index1146 = phi i64 [ 0, %vector.ph1143 ], [ %index.next1147, %vector.body1140 ]
  %vec.ind1150 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1143 ], [ %vec.ind.next1151, %vector.body1140 ]
  %266 = add nuw nsw <4 x i64> %vec.ind1150, %broadcast.splat1153
  %267 = trunc <4 x i64> %266 to <4 x i32>
  %268 = mul <4 x i32> %broadcast.splat1155, %267
  %269 = add <4 x i32> %268, <i32 1, i32 1, i32 1, i32 1>
  %270 = urem <4 x i32> %269, <i32 1200, i32 1200, i32 1200, i32 1200>
  %271 = sitofp <4 x i32> %270 to <4 x double>
  %272 = fmul fast <4 x double> %271, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %273 = extractelement <4 x i64> %266, i32 0
  %274 = shl i64 %273, 3
  %275 = add nuw nsw i64 %274, %265
  %276 = getelementptr i8, i8* %call1, i64 %275
  %277 = bitcast i8* %276 to <4 x double>*
  store <4 x double> %272, <4 x double>* %277, align 8, !alias.scope !102, !noalias !109
  %index.next1147 = add i64 %index1146, 4
  %vec.ind.next1151 = add <4 x i64> %vec.ind1150, <i64 4, i64 4, i64 4, i64 4>
  %278 = icmp eq i64 %index.next1147, %260
  br i1 %278, label %polly.loop_exit921, label %vector.body1140, !llvm.loop !110

polly.loop_exit921:                               ; preds = %vector.body1140, %polly.loop_header919
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar916, %258
  br i1 %exitcond1032.not, label %polly.loop_exit915, label %polly.loop_header913

polly.loop_header919:                             ; preds = %polly.loop_header913, %polly.loop_header919
  %polly.indvar922 = phi i64 [ %polly.indvar_next923, %polly.loop_header919 ], [ 0, %polly.loop_header913 ]
  %279 = add nuw nsw i64 %polly.indvar922, %261
  %280 = trunc i64 %279 to i32
  %281 = mul i32 %280, %264
  %282 = add i32 %281, 1
  %283 = urem i32 %282, 1200
  %p_conv.i = sitofp i32 %283 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %284 = shl i64 %279, 3
  %285 = add nuw nsw i64 %284, %265
  %scevgep926 = getelementptr i8, i8* %call1, i64 %285
  %scevgep926927 = bitcast i8* %scevgep926 to double*
  store double %p_div.i, double* %scevgep926927, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar922, %262
  br i1 %exitcond1028.not, label %polly.loop_exit921, label %polly.loop_header919, !llvm.loop !111
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
!25 = !{!"llvm.loop.tile.size", i32 256}
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
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50, !51, !57}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.size", i32 50}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !23, !53, !54, !55, !56}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.tile.followup_tile", !58}
!58 = distinct !{!58, !12, !23, !59}
!59 = !{!"llvm.loop.id", !"i2"}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = distinct !{!63, !12, !13}
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !4, i64 0}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72, !73}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call1"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !72, !73}
!78 = !{!68, !71, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !83, !84}
!88 = !{!79, !82, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call1"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !93, !94}
!98 = !{!89, !92, !94}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !76, !13}
!106 = !{!102, !99}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !76, !13}
!109 = !{!103, !99}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !76, !13}
