; ModuleID = 'syr2k_exhaustive/mmp_all_XL_3299.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_3299.c"
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
  %call886 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1738 = bitcast i8* %call1 to double*
  %polly.access.call1747 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1747, %call2
  %polly.access.call2767 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2767, %call1
  %2 = or i1 %0, %1
  %polly.access.call787 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call787, %call2
  %4 = icmp ule i8* %polly.access.call2767, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call787, %call1
  %8 = icmp ule i8* %polly.access.call1747, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header860, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1121 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1120 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1119 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1118 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1118, %scevgep1121
  %bound1 = icmp ult i8* %scevgep1120, %scevgep1119
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
  br i1 %exitcond18.not.i, label %vector.ph1125, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1125:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1132 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1133 = shufflevector <4 x i64> %broadcast.splatinsert1132, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1124

vector.body1124:                                  ; preds = %vector.body1124, %vector.ph1125
  %index1126 = phi i64 [ 0, %vector.ph1125 ], [ %index.next1127, %vector.body1124 ]
  %vec.ind1130 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1125 ], [ %vec.ind.next1131, %vector.body1124 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1130, %broadcast.splat1133
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv7.i, i64 %index1126
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1127 = add i64 %index1126, 4
  %vec.ind.next1131 = add <4 x i64> %vec.ind1130, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1127, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1124, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1124
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1125, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit921
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start521, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1187 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1187, label %for.body3.i46.preheader1267, label %vector.ph1188

vector.ph1188:                                    ; preds = %for.body3.i46.preheader
  %n.vec1190 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %vector.ph1188
  %index1191 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1192, %vector.body1186 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv21.i, i64 %index1191
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1192 = add i64 %index1191, 4
  %46 = icmp eq i64 %index.next1192, %n.vec1190
  br i1 %46, label %middle.block1184, label %vector.body1186, !llvm.loop !18

middle.block1184:                                 ; preds = %vector.body1186
  %cmp.n1194 = icmp eq i64 %indvars.iv21.i, %n.vec1190
  br i1 %cmp.n1194, label %for.inc6.i, label %for.body3.i46.preheader1267

for.body3.i46.preheader1267:                      ; preds = %for.body3.i46.preheader, %middle.block1184
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1190, %middle.block1184 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1267, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1267 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1184, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting522
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start306, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1210 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1210, label %for.body3.i60.preheader1264, label %vector.ph1211

vector.ph1211:                                    ; preds = %for.body3.i60.preheader
  %n.vec1213 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %vector.ph1211
  %index1214 = phi i64 [ 0, %vector.ph1211 ], [ %index.next1215, %vector.body1209 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv21.i52, i64 %index1214
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1218 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1218, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1215 = add i64 %index1214, 4
  %57 = icmp eq i64 %index.next1215, %n.vec1213
  br i1 %57, label %middle.block1207, label %vector.body1209, !llvm.loop !60

middle.block1207:                                 ; preds = %vector.body1209
  %cmp.n1217 = icmp eq i64 %indvars.iv21.i52, %n.vec1213
  br i1 %cmp.n1217, label %for.inc6.i63, label %for.body3.i60.preheader1264

for.body3.i60.preheader1264:                      ; preds = %for.body3.i60.preheader, %middle.block1207
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1213, %middle.block1207 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1264, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1264 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1207, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting307
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1236 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1236, label %for.body3.i99.preheader1261, label %vector.ph1237

vector.ph1237:                                    ; preds = %for.body3.i99.preheader
  %n.vec1239 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1235

vector.body1235:                                  ; preds = %vector.body1235, %vector.ph1237
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1241, %vector.body1235 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv21.i91, i64 %index1240
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1244 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1244, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1241 = add i64 %index1240, 4
  %68 = icmp eq i64 %index.next1241, %n.vec1239
  br i1 %68, label %middle.block1233, label %vector.body1235, !llvm.loop !62

middle.block1233:                                 ; preds = %vector.body1235
  %cmp.n1243 = icmp eq i64 %indvars.iv21.i91, %n.vec1239
  br i1 %cmp.n1243, label %for.inc6.i102, label %for.body3.i99.preheader1261

for.body3.i99.preheader1261:                      ; preds = %for.body3.i99.preheader, %middle.block1233
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1239, %middle.block1233 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1261, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1261 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1233, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call886, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1248 = phi i64 [ %indvar.next1249, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1248, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1250 = icmp ult i64 %88, 4
  br i1 %min.iters.check1250, label %polly.loop_header191.preheader, label %vector.ph1251

vector.ph1251:                                    ; preds = %polly.loop_header
  %n.vec1253 = and i64 %88, -4
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %vector.ph1251
  %index1254 = phi i64 [ 0, %vector.ph1251 ], [ %index.next1255, %vector.body1247 ]
  %90 = shl nuw nsw i64 %index1254, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1258 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1258, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1255 = add i64 %index1254, 4
  %95 = icmp eq i64 %index.next1255, %n.vec1253
  br i1 %95, label %middle.block1245, label %vector.body1247, !llvm.loop !74

middle.block1245:                                 ; preds = %vector.body1247
  %cmp.n1257 = icmp eq i64 %88, %n.vec1253
  br i1 %cmp.n1257, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1245
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1253, %middle.block1245 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1245
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1249 = add i64 %indvar1248, 1
  br i1 %exitcond991.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond990.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond990.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin972 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -984)
  %97 = add nsw i64 %smin972, 1000
  %98 = mul nsw i64 %polly.indvar202, -16
  %99 = icmp slt i64 %98, -984
  %100 = select i1 %99, i64 %98, i64 -984
  %101 = shl nsw i64 %polly.indvar202, 4
  %102 = add nsw i64 %100, 999
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -16
  %exitcond989.not = icmp eq i64 %polly.indvar_next203, 63
  br i1 %exitcond989.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv978 = phi i64 [ %indvars.iv.next979, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv974 = phi i64 [ %indvars.iv.next975, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv964 = phi i64 [ %indvars.iv.next965, %polly.loop_exit213 ], [ 50, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %103 = mul nuw nsw i64 %polly.indvar208, 5
  %104 = shl nsw i64 %polly.indvar208, 7
  %105 = or i64 %104, 1
  %106 = mul nsw i64 %polly.indvar208, -256
  %107 = shl nsw i64 %polly.indvar208, 8
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit269
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next965 = add nsw i64 %indvars.iv964, -6
  %indvars.iv.next975 = add nuw nsw i64 %indvars.iv974, 6
  %indvars.iv.next979 = add nsw i64 %indvars.iv978, -6
  %exitcond988.not = icmp eq i64 %polly.indvar_next209, 5
  br i1 %exitcond988.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit269, %polly.loop_header205
  %indvars.iv980 = phi i64 [ %indvars.iv.next981, %polly.loop_exit269 ], [ %indvars.iv978, %polly.loop_header205 ]
  %indvars.iv976 = phi i64 [ %indvars.iv.next977, %polly.loop_exit269 ], [ %indvars.iv974, %polly.loop_header205 ]
  %indvars.iv966 = phi i64 [ %indvars.iv.next967, %polly.loop_exit269 ], [ %indvars.iv964, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit269 ], [ %103, %polly.loop_header205 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv976, i64 0)
  %108 = add i64 %smax, %indvars.iv980
  %109 = mul nuw nsw i64 %polly.indvar214, 25
  %.not = icmp ult i64 %109, %105
  br i1 %.not, label %polly.loop_header248, label %polly.then

polly.merge.loopexit:                             ; preds = %polly.loop_exit256
  %.pre1099 = mul nuw nsw i64 %polly.indvar214, 50
  br label %polly.merge

polly.merge:                                      ; preds = %polly.loop_exit236, %polly.loop_exit236.us, %polly.merge.loopexit
  %.pre-phi1100 = phi i64 [ %.pre1099, %polly.merge.loopexit ], [ %113, %polly.loop_exit236.us ], [ %113, %polly.loop_exit236 ]
  %110 = sub nsw i64 %107, %.pre-phi1100
  %111 = icmp sgt i64 %110, 0
  %112 = select i1 %111, i64 %110, i64 0
  br label %polly.loop_header267

polly.loop_exit269:                               ; preds = %polly.loop_exit275
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next967 = add nuw nsw i64 %indvars.iv966, 50
  %indvars.iv.next977 = add nsw i64 %indvars.iv976, -50
  %indvars.iv.next981 = add nsw i64 %indvars.iv980, 50
  %exitcond987.not = icmp eq i64 %polly.indvar_next215, 24
  br i1 %exitcond987.not, label %polly.loop_exit213, label %polly.loop_header211

polly.then:                                       ; preds = %polly.loop_header211
  %113 = mul nuw nsw i64 %polly.indvar214, 50
  %114 = add nsw i64 %113, %106
  %115 = add nsw i64 %114, -1
  %.inv = icmp sgt i64 %114, 255
  %116 = select i1 %.inv, i64 255, i64 %115
  %polly.loop_guard = icmp sgt i64 %116, -1
  %117 = add nsw i64 %114, 49
  br i1 %polly.loop_guard, label %polly.loop_header217.us, label %polly.loop_header217

polly.loop_header217.us:                          ; preds = %polly.then, %polly.loop_exit236.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit236.us ], [ 0, %polly.then ]
  %118 = add nuw nsw i64 %polly.indvar220.us, %101
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header217.us ]
  %119 = add nuw nsw i64 %polly.indvar226.us, %107
  %polly.access.mul.call1230.us = mul nuw nsw i64 %119, 1000
  %polly.access.add.call1231.us = add nuw nsw i64 %118, %polly.access.mul.call1230.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw i64 %polly.indvar226.us, 1
  %exitcond963.not = icmp eq i64 %polly.indvar226.us, %116
  br i1 %exitcond963.not, label %polly.loop_header234.us, label %polly.loop_header223.us

polly.loop_header234.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header234.us
  %polly.indvar238.us = phi i64 [ %polly.indvar_next239.us, %polly.loop_header234.us ], [ %114, %polly.loop_header223.us ]
  %120 = add nsw i64 %polly.indvar238.us, %107
  %polly.access.mul.call1242.us = mul nuw nsw i64 %120, 1000
  %polly.access.add.call1243.us = add nuw nsw i64 %118, %polly.access.mul.call1242.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1246.us = add nsw i64 %polly.indvar238.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  %polly.indvar_next239.us = add nsw i64 %polly.indvar238.us, 1
  %exitcond968.not = icmp eq i64 %polly.indvar_next239.us, %indvars.iv966
  br i1 %exitcond968.not, label %polly.loop_exit236.us, label %polly.loop_header234.us

polly.loop_exit236.us:                            ; preds = %polly.loop_header234.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond970.not = icmp eq i64 %polly.indvar_next221.us, %97
  br i1 %exitcond970.not, label %polly.merge, label %polly.loop_header217.us

polly.loop_header217:                             ; preds = %polly.then, %polly.loop_exit236
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit236 ], [ 0, %polly.then ]
  %121 = add nuw nsw i64 %polly.indvar220, %101
  %polly.access.mul.Packed_MemRef_call1245 = mul nuw nsw i64 %polly.indvar220, 1200
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_header234
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %97
  br i1 %exitcond.not, label %polly.merge, label %polly.loop_header217

polly.loop_header234:                             ; preds = %polly.loop_header217, %polly.loop_header234
  %polly.indvar238 = phi i64 [ %polly.indvar_next239, %polly.loop_header234 ], [ %114, %polly.loop_header217 ]
  %122 = add nsw i64 %polly.indvar238, %107
  %polly.access.mul.call1242 = mul nuw nsw i64 %122, 1000
  %polly.access.add.call1243 = add nuw nsw i64 %121, %polly.access.mul.call1242
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1243
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1246 = add nsw i64 %polly.indvar238, %polly.access.mul.Packed_MemRef_call1245
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.indvar_next239 = add nsw i64 %polly.indvar238, 1
  %polly.loop_cond240.not.not = icmp slt i64 %polly.indvar238, %117
  br i1 %polly.loop_cond240.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header248:                             ; preds = %polly.loop_header211, %polly.loop_exit256
  %polly.indvar251 = phi i64 [ %polly.indvar_next252, %polly.loop_exit256 ], [ 0, %polly.loop_header211 ]
  %123 = add nuw nsw i64 %polly.indvar251, %101
  %polly.access.mul.Packed_MemRef_call1264 = mul nuw nsw i64 %polly.indvar251, 1200
  br label %polly.loop_header254

polly.loop_exit256:                               ; preds = %polly.loop_header254
  %polly.indvar_next252 = add nuw nsw i64 %polly.indvar251, 1
  %exitcond973.not = icmp eq i64 %polly.indvar_next252, %97
  br i1 %exitcond973.not, label %polly.merge.loopexit, label %polly.loop_header248

polly.loop_header254:                             ; preds = %polly.loop_header254, %polly.loop_header248
  %polly.indvar257 = phi i64 [ 0, %polly.loop_header248 ], [ %polly.indvar_next258, %polly.loop_header254 ]
  %124 = add nuw nsw i64 %polly.indvar257, %107
  %polly.access.mul.call1261 = mul nuw nsw i64 %124, 1000
  %polly.access.add.call1262 = add nuw nsw i64 %123, %polly.access.mul.call1261
  %polly.access.call1263 = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1262
  %polly.access.call1263.load = load double, double* %polly.access.call1263, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1265 = add nuw nsw i64 %polly.indvar257, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265
  store double %polly.access.call1263.load, double* %polly.access.Packed_MemRef_call1266, align 8
  %polly.indvar_next258 = add nuw nsw i64 %polly.indvar257, 1
  %exitcond971.not = icmp eq i64 %polly.indvar_next258, %indvars.iv964
  br i1 %exitcond971.not, label %polly.loop_exit256, label %polly.loop_header254

polly.loop_header267:                             ; preds = %polly.loop_exit275, %polly.merge
  %polly.indvar270 = phi i64 [ 0, %polly.merge ], [ %polly.indvar_next271, %polly.loop_exit275 ]
  %125 = add nuw nsw i64 %polly.indvar270, %101
  %polly.access.mul.Packed_MemRef_call1287 = mul nuw nsw i64 %polly.indvar270, 1200
  %126 = shl i64 %125, 3
  br label %polly.loop_header273

polly.loop_exit275:                               ; preds = %polly.loop_exit282
  %polly.indvar_next271 = add nuw nsw i64 %polly.indvar270, 1
  %exitcond986.not = icmp eq i64 %polly.indvar270, %102
  br i1 %exitcond986.not, label %polly.loop_exit269, label %polly.loop_header267

polly.loop_header273:                             ; preds = %polly.loop_exit282, %polly.loop_header267
  %indvars.iv982 = phi i64 [ %indvars.iv.next983, %polly.loop_exit282 ], [ %108, %polly.loop_header267 ]
  %polly.indvar276 = phi i64 [ %polly.indvar_next277, %polly.loop_exit282 ], [ %112, %polly.loop_header267 ]
  %smin984 = call i64 @llvm.smin.i64(i64 %indvars.iv982, i64 255)
  %127 = add nuw i64 %polly.indvar276, %.pre-phi1100
  %128 = add i64 %127, %106
  %polly.loop_guard2831101 = icmp sgt i64 %128, -1
  br i1 %polly.loop_guard2831101, label %polly.loop_header280.preheader, label %polly.loop_exit282

polly.loop_header280.preheader:                   ; preds = %polly.loop_header273
  %129 = mul i64 %127, 8000
  %130 = add i64 %129, %126
  %scevgep291 = getelementptr i8, i8* %call2, i64 %130
  %scevgep291292 = bitcast i8* %scevgep291 to double*
  %_p_scalar_293 = load double, double* %scevgep291292, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1298 = add nsw i64 %polly.access.mul.Packed_MemRef_call1287, %128
  %polly.access.Packed_MemRef_call1299 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1298
  %_p_scalar_300 = load double, double* %polly.access.Packed_MemRef_call1299, align 8
  %131 = mul i64 %127, 9600
  br label %polly.loop_header280

polly.loop_exit282:                               ; preds = %polly.loop_header280, %polly.loop_header273
  %polly.indvar_next277 = add nuw nsw i64 %polly.indvar276, 1
  %polly.loop_cond278 = icmp ult i64 %polly.indvar276, 49
  %indvars.iv.next983 = add i64 %indvars.iv982, 1
  br i1 %polly.loop_cond278, label %polly.loop_header273, label %polly.loop_exit275

polly.loop_header280:                             ; preds = %polly.loop_header280.preheader, %polly.loop_header280
  %polly.indvar284 = phi i64 [ %polly.indvar_next285, %polly.loop_header280 ], [ 0, %polly.loop_header280.preheader ]
  %132 = add nuw nsw i64 %polly.indvar284, %107
  %polly.access.add.Packed_MemRef_call1288 = add nuw nsw i64 %polly.indvar284, %polly.access.mul.Packed_MemRef_call1287
  %polly.access.Packed_MemRef_call1289 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call1289, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_293, %_p_scalar_290
  %133 = mul nuw nsw i64 %132, 8000
  %134 = add nuw nsw i64 %133, %126
  %scevgep294 = getelementptr i8, i8* %call2, i64 %134
  %scevgep294295 = bitcast i8* %scevgep294 to double*
  %_p_scalar_296 = load double, double* %scevgep294295, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114 = fmul fast double %_p_scalar_300, %_p_scalar_296
  %135 = shl i64 %132, 3
  %136 = add i64 %135, %131
  %scevgep301 = getelementptr i8, i8* %call, i64 %136
  %scevgep301302 = bitcast i8* %scevgep301 to double*
  %_p_scalar_303 = load double, double* %scevgep301302, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_303
  store double %p_add42.i118, double* %scevgep301302, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next285 = add nuw nsw i64 %polly.indvar284, 1
  %exitcond985.not = icmp eq i64 %polly.indvar284, %smin984
  br i1 %exitcond985.not, label %polly.loop_exit282, label %polly.loop_header280

polly.start306:                                   ; preds = %kernel_syr2k.exit
  %malloccall308 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header392

polly.exiting307:                                 ; preds = %polly.loop_exit416
  tail call void @free(i8* %malloccall308)
  br label %kernel_syr2k.exit90

polly.loop_header392:                             ; preds = %polly.loop_exit400, %polly.start306
  %indvar1222 = phi i64 [ %indvar.next1223, %polly.loop_exit400 ], [ 0, %polly.start306 ]
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_exit400 ], [ 1, %polly.start306 ]
  %137 = add i64 %indvar1222, 1
  %138 = mul nuw nsw i64 %polly.indvar395, 9600
  %scevgep404 = getelementptr i8, i8* %call, i64 %138
  %min.iters.check1224 = icmp ult i64 %137, 4
  br i1 %min.iters.check1224, label %polly.loop_header398.preheader, label %vector.ph1225

vector.ph1225:                                    ; preds = %polly.loop_header392
  %n.vec1227 = and i64 %137, -4
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %vector.ph1225
  %index1228 = phi i64 [ 0, %vector.ph1225 ], [ %index.next1229, %vector.body1221 ]
  %139 = shl nuw nsw i64 %index1228, 3
  %140 = getelementptr i8, i8* %scevgep404, i64 %139
  %141 = bitcast i8* %140 to <4 x double>*
  %wide.load1232 = load <4 x double>, <4 x double>* %141, align 8, !alias.scope !79, !noalias !81
  %142 = fmul fast <4 x double> %wide.load1232, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %143 = bitcast i8* %140 to <4 x double>*
  store <4 x double> %142, <4 x double>* %143, align 8, !alias.scope !79, !noalias !81
  %index.next1229 = add i64 %index1228, 4
  %144 = icmp eq i64 %index.next1229, %n.vec1227
  br i1 %144, label %middle.block1219, label %vector.body1221, !llvm.loop !85

middle.block1219:                                 ; preds = %vector.body1221
  %cmp.n1231 = icmp eq i64 %137, %n.vec1227
  br i1 %cmp.n1231, label %polly.loop_exit400, label %polly.loop_header398.preheader

polly.loop_header398.preheader:                   ; preds = %polly.loop_header392, %middle.block1219
  %polly.indvar401.ph = phi i64 [ 0, %polly.loop_header392 ], [ %n.vec1227, %middle.block1219 ]
  br label %polly.loop_header398

polly.loop_exit400:                               ; preds = %polly.loop_header398, %middle.block1219
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar_next396, 1200
  %indvar.next1223 = add i64 %indvar1222, 1
  br i1 %exitcond1025.not, label %polly.loop_header408.preheader, label %polly.loop_header392

polly.loop_header408.preheader:                   ; preds = %polly.loop_exit400
  %Packed_MemRef_call1309 = bitcast i8* %malloccall308 to double*
  br label %polly.loop_header408

polly.loop_header398:                             ; preds = %polly.loop_header398.preheader, %polly.loop_header398
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_header398 ], [ %polly.indvar401.ph, %polly.loop_header398.preheader ]
  %145 = shl nuw nsw i64 %polly.indvar401, 3
  %scevgep405 = getelementptr i8, i8* %scevgep404, i64 %145
  %scevgep405406 = bitcast i8* %scevgep405 to double*
  %_p_scalar_407 = load double, double* %scevgep405406, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_407, 1.200000e+00
  store double %p_mul.i57, double* %scevgep405406, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar_next402, %polly.indvar395
  br i1 %exitcond1024.not, label %polly.loop_exit400, label %polly.loop_header398, !llvm.loop !86

polly.loop_header408:                             ; preds = %polly.loop_header408.preheader, %polly.loop_exit416
  %indvars.iv992 = phi i64 [ 0, %polly.loop_header408.preheader ], [ %indvars.iv.next993, %polly.loop_exit416 ]
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header408.preheader ], [ %polly.indvar_next412, %polly.loop_exit416 ]
  %smin1005 = call i64 @llvm.smin.i64(i64 %indvars.iv992, i64 -984)
  %146 = add nsw i64 %smin1005, 1000
  %147 = mul nsw i64 %polly.indvar411, -16
  %148 = icmp slt i64 %147, -984
  %149 = select i1 %148, i64 %147, i64 -984
  %150 = shl nsw i64 %polly.indvar411, 4
  %151 = add nsw i64 %149, 999
  br label %polly.loop_header414

polly.loop_exit416:                               ; preds = %polly.loop_exit422
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %indvars.iv.next993 = add nsw i64 %indvars.iv992, -16
  %exitcond1023.not = icmp eq i64 %polly.indvar_next412, 63
  br i1 %exitcond1023.not, label %polly.exiting307, label %polly.loop_header408

polly.loop_header414:                             ; preds = %polly.loop_exit422, %polly.loop_header408
  %indvars.iv1012 = phi i64 [ %indvars.iv.next1013, %polly.loop_exit422 ], [ 0, %polly.loop_header408 ]
  %indvars.iv1007 = phi i64 [ %indvars.iv.next1008, %polly.loop_exit422 ], [ 0, %polly.loop_header408 ]
  %indvars.iv997 = phi i64 [ %indvars.iv.next998, %polly.loop_exit422 ], [ 50, %polly.loop_header408 ]
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_exit422 ], [ 0, %polly.loop_header408 ]
  %152 = mul nuw nsw i64 %polly.indvar417, 5
  %153 = shl nsw i64 %polly.indvar417, 7
  %154 = or i64 %153, 1
  %155 = mul nsw i64 %polly.indvar417, -256
  %156 = shl nsw i64 %polly.indvar417, 8
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_exit484
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %indvars.iv.next998 = add nsw i64 %indvars.iv997, -6
  %indvars.iv.next1008 = add nuw nsw i64 %indvars.iv1007, 6
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, -6
  %exitcond1022.not = icmp eq i64 %polly.indvar_next418, 5
  br i1 %exitcond1022.not, label %polly.loop_exit416, label %polly.loop_header414

polly.loop_header420:                             ; preds = %polly.loop_exit484, %polly.loop_header414
  %indvars.iv1014 = phi i64 [ %indvars.iv.next1015, %polly.loop_exit484 ], [ %indvars.iv1012, %polly.loop_header414 ]
  %indvars.iv1009 = phi i64 [ %indvars.iv.next1010, %polly.loop_exit484 ], [ %indvars.iv1007, %polly.loop_header414 ]
  %indvars.iv999 = phi i64 [ %indvars.iv.next1000, %polly.loop_exit484 ], [ %indvars.iv997, %polly.loop_header414 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit484 ], [ %152, %polly.loop_header414 ]
  %smax1011 = call i64 @llvm.smax.i64(i64 %indvars.iv1009, i64 0)
  %157 = add i64 %smax1011, %indvars.iv1014
  %158 = mul nuw nsw i64 %polly.indvar423, 25
  %.not940 = icmp ult i64 %158, %154
  br i1 %.not940, label %polly.loop_header463, label %polly.then428

polly.merge427.loopexit:                          ; preds = %polly.loop_exit471
  %.pre1097 = mul nuw nsw i64 %polly.indvar423, 50
  br label %polly.merge427

polly.merge427:                                   ; preds = %polly.loop_exit451, %polly.loop_exit451.us, %polly.merge427.loopexit
  %.pre-phi1098 = phi i64 [ %.pre1097, %polly.merge427.loopexit ], [ %162, %polly.loop_exit451.us ], [ %162, %polly.loop_exit451 ]
  %159 = sub nsw i64 %156, %.pre-phi1098
  %160 = icmp sgt i64 %159, 0
  %161 = select i1 %160, i64 %159, i64 0
  br label %polly.loop_header482

polly.loop_exit484:                               ; preds = %polly.loop_exit490
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1000 = add nuw nsw i64 %indvars.iv999, 50
  %indvars.iv.next1010 = add nsw i64 %indvars.iv1009, -50
  %indvars.iv.next1015 = add nsw i64 %indvars.iv1014, 50
  %exitcond1021.not = icmp eq i64 %polly.indvar_next424, 24
  br i1 %exitcond1021.not, label %polly.loop_exit422, label %polly.loop_header420

polly.then428:                                    ; preds = %polly.loop_header420
  %162 = mul nuw nsw i64 %polly.indvar423, 50
  %163 = add nsw i64 %162, %155
  %164 = add nsw i64 %163, -1
  %.inv941 = icmp sgt i64 %163, 255
  %165 = select i1 %.inv941, i64 255, i64 %164
  %polly.loop_guard440 = icmp sgt i64 %165, -1
  %166 = add nsw i64 %163, 49
  br i1 %polly.loop_guard440, label %polly.loop_header430.us, label %polly.loop_header430

polly.loop_header430.us:                          ; preds = %polly.then428, %polly.loop_exit451.us
  %polly.indvar433.us = phi i64 [ %polly.indvar_next434.us, %polly.loop_exit451.us ], [ 0, %polly.then428 ]
  %167 = add nuw nsw i64 %polly.indvar433.us, %150
  %polly.access.mul.Packed_MemRef_call1309.us = mul nuw nsw i64 %polly.indvar433.us, 1200
  br label %polly.loop_header437.us

polly.loop_header437.us:                          ; preds = %polly.loop_header430.us, %polly.loop_header437.us
  %polly.indvar441.us = phi i64 [ %polly.indvar_next442.us, %polly.loop_header437.us ], [ 0, %polly.loop_header430.us ]
  %168 = add nuw nsw i64 %polly.indvar441.us, %156
  %polly.access.mul.call1445.us = mul nuw nsw i64 %168, 1000
  %polly.access.add.call1446.us = add nuw nsw i64 %167, %polly.access.mul.call1445.us
  %polly.access.call1447.us = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1446.us
  %polly.access.call1447.load.us = load double, double* %polly.access.call1447.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1309.us = add nuw nsw i64 %polly.indvar441.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us
  store double %polly.access.call1447.load.us, double* %polly.access.Packed_MemRef_call1309.us, align 8
  %polly.indvar_next442.us = add nuw i64 %polly.indvar441.us, 1
  %exitcond996.not = icmp eq i64 %polly.indvar441.us, %165
  br i1 %exitcond996.not, label %polly.loop_header449.us, label %polly.loop_header437.us

polly.loop_header449.us:                          ; preds = %polly.loop_header437.us, %polly.loop_header449.us
  %polly.indvar453.us = phi i64 [ %polly.indvar_next454.us, %polly.loop_header449.us ], [ %163, %polly.loop_header437.us ]
  %169 = add nsw i64 %polly.indvar453.us, %156
  %polly.access.mul.call1457.us = mul nuw nsw i64 %169, 1000
  %polly.access.add.call1458.us = add nuw nsw i64 %167, %polly.access.mul.call1457.us
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1309461.us = add nsw i64 %polly.indvar453.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309462.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309461.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1309462.us, align 8
  %polly.indvar_next454.us = add nsw i64 %polly.indvar453.us, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar_next454.us, %indvars.iv999
  br i1 %exitcond1001.not, label %polly.loop_exit451.us, label %polly.loop_header449.us

polly.loop_exit451.us:                            ; preds = %polly.loop_header449.us
  %polly.indvar_next434.us = add nuw nsw i64 %polly.indvar433.us, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar_next434.us, %146
  br i1 %exitcond1003.not, label %polly.merge427, label %polly.loop_header430.us

polly.loop_header430:                             ; preds = %polly.then428, %polly.loop_exit451
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_exit451 ], [ 0, %polly.then428 ]
  %170 = add nuw nsw i64 %polly.indvar433, %150
  %polly.access.mul.Packed_MemRef_call1309460 = mul nuw nsw i64 %polly.indvar433, 1200
  br label %polly.loop_header449

polly.loop_exit451:                               ; preds = %polly.loop_header449
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond995.not = icmp eq i64 %polly.indvar_next434, %146
  br i1 %exitcond995.not, label %polly.merge427, label %polly.loop_header430

polly.loop_header449:                             ; preds = %polly.loop_header430, %polly.loop_header449
  %polly.indvar453 = phi i64 [ %polly.indvar_next454, %polly.loop_header449 ], [ %163, %polly.loop_header430 ]
  %171 = add nsw i64 %polly.indvar453, %156
  %polly.access.mul.call1457 = mul nuw nsw i64 %171, 1000
  %polly.access.add.call1458 = add nuw nsw i64 %170, %polly.access.mul.call1457
  %polly.access.call1459 = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1458
  %polly.access.call1459.load = load double, double* %polly.access.call1459, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1309461 = add nsw i64 %polly.indvar453, %polly.access.mul.Packed_MemRef_call1309460
  %polly.access.Packed_MemRef_call1309462 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309461
  store double %polly.access.call1459.load, double* %polly.access.Packed_MemRef_call1309462, align 8
  %polly.indvar_next454 = add nsw i64 %polly.indvar453, 1
  %polly.loop_cond455.not.not = icmp slt i64 %polly.indvar453, %166
  br i1 %polly.loop_cond455.not.not, label %polly.loop_header449, label %polly.loop_exit451

polly.loop_header463:                             ; preds = %polly.loop_header420, %polly.loop_exit471
  %polly.indvar466 = phi i64 [ %polly.indvar_next467, %polly.loop_exit471 ], [ 0, %polly.loop_header420 ]
  %172 = add nuw nsw i64 %polly.indvar466, %150
  %polly.access.mul.Packed_MemRef_call1309479 = mul nuw nsw i64 %polly.indvar466, 1200
  br label %polly.loop_header469

polly.loop_exit471:                               ; preds = %polly.loop_header469
  %polly.indvar_next467 = add nuw nsw i64 %polly.indvar466, 1
  %exitcond1006.not = icmp eq i64 %polly.indvar_next467, %146
  br i1 %exitcond1006.not, label %polly.merge427.loopexit, label %polly.loop_header463

polly.loop_header469:                             ; preds = %polly.loop_header469, %polly.loop_header463
  %polly.indvar472 = phi i64 [ 0, %polly.loop_header463 ], [ %polly.indvar_next473, %polly.loop_header469 ]
  %173 = add nuw nsw i64 %polly.indvar472, %156
  %polly.access.mul.call1476 = mul nuw nsw i64 %173, 1000
  %polly.access.add.call1477 = add nuw nsw i64 %172, %polly.access.mul.call1476
  %polly.access.call1478 = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1477
  %polly.access.call1478.load = load double, double* %polly.access.call1478, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1309480 = add nuw nsw i64 %polly.indvar472, %polly.access.mul.Packed_MemRef_call1309479
  %polly.access.Packed_MemRef_call1309481 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309480
  store double %polly.access.call1478.load, double* %polly.access.Packed_MemRef_call1309481, align 8
  %polly.indvar_next473 = add nuw nsw i64 %polly.indvar472, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next473, %indvars.iv997
  br i1 %exitcond1004.not, label %polly.loop_exit471, label %polly.loop_header469

polly.loop_header482:                             ; preds = %polly.loop_exit490, %polly.merge427
  %polly.indvar485 = phi i64 [ 0, %polly.merge427 ], [ %polly.indvar_next486, %polly.loop_exit490 ]
  %174 = add nuw nsw i64 %polly.indvar485, %150
  %polly.access.mul.Packed_MemRef_call1309502 = mul nuw nsw i64 %polly.indvar485, 1200
  %175 = shl i64 %174, 3
  br label %polly.loop_header488

polly.loop_exit490:                               ; preds = %polly.loop_exit497
  %polly.indvar_next486 = add nuw nsw i64 %polly.indvar485, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar485, %151
  br i1 %exitcond1020.not, label %polly.loop_exit484, label %polly.loop_header482

polly.loop_header488:                             ; preds = %polly.loop_exit497, %polly.loop_header482
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit497 ], [ %157, %polly.loop_header482 ]
  %polly.indvar491 = phi i64 [ %polly.indvar_next492, %polly.loop_exit497 ], [ %161, %polly.loop_header482 ]
  %smin1018 = call i64 @llvm.smin.i64(i64 %indvars.iv1016, i64 255)
  %176 = add nuw i64 %polly.indvar491, %.pre-phi1098
  %177 = add i64 %176, %155
  %polly.loop_guard4981102 = icmp sgt i64 %177, -1
  br i1 %polly.loop_guard4981102, label %polly.loop_header495.preheader, label %polly.loop_exit497

polly.loop_header495.preheader:                   ; preds = %polly.loop_header488
  %178 = mul i64 %176, 8000
  %179 = add i64 %178, %175
  %scevgep506 = getelementptr i8, i8* %call2, i64 %179
  %scevgep506507 = bitcast i8* %scevgep506 to double*
  %_p_scalar_508 = load double, double* %scevgep506507, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1309513 = add nsw i64 %polly.access.mul.Packed_MemRef_call1309502, %177
  %polly.access.Packed_MemRef_call1309514 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309513
  %_p_scalar_515 = load double, double* %polly.access.Packed_MemRef_call1309514, align 8
  %180 = mul i64 %176, 9600
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %polly.loop_header488
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %polly.loop_cond493 = icmp ult i64 %polly.indvar491, 49
  %indvars.iv.next1017 = add i64 %indvars.iv1016, 1
  br i1 %polly.loop_cond493, label %polly.loop_header488, label %polly.loop_exit490

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader, %polly.loop_header495
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_header495 ], [ 0, %polly.loop_header495.preheader ]
  %181 = add nuw nsw i64 %polly.indvar499, %156
  %polly.access.add.Packed_MemRef_call1309503 = add nuw nsw i64 %polly.indvar499, %polly.access.mul.Packed_MemRef_call1309502
  %polly.access.Packed_MemRef_call1309504 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1309504, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_508, %_p_scalar_505
  %182 = mul nuw nsw i64 %181, 8000
  %183 = add nuw nsw i64 %182, %175
  %scevgep509 = getelementptr i8, i8* %call2, i64 %183
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75 = fmul fast double %_p_scalar_515, %_p_scalar_511
  %184 = shl i64 %181, 3
  %185 = add i64 %184, %180
  %scevgep516 = getelementptr i8, i8* %call, i64 %185
  %scevgep516517 = bitcast i8* %scevgep516 to double*
  %_p_scalar_518 = load double, double* %scevgep516517, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_518
  store double %p_add42.i79, double* %scevgep516517, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar499, %smin1018
  br i1 %exitcond1019.not, label %polly.loop_exit497, label %polly.loop_header495

polly.start521:                                   ; preds = %init_array.exit
  %malloccall523 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header607

polly.exiting522:                                 ; preds = %polly.loop_exit631
  tail call void @free(i8* %malloccall523)
  br label %kernel_syr2k.exit

polly.loop_header607:                             ; preds = %polly.loop_exit615, %polly.start521
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit615 ], [ 0, %polly.start521 ]
  %polly.indvar610 = phi i64 [ %polly.indvar_next611, %polly.loop_exit615 ], [ 1, %polly.start521 ]
  %186 = add i64 %indvar, 1
  %187 = mul nuw nsw i64 %polly.indvar610, 9600
  %scevgep619 = getelementptr i8, i8* %call, i64 %187
  %min.iters.check1198 = icmp ult i64 %186, 4
  br i1 %min.iters.check1198, label %polly.loop_header613.preheader, label %vector.ph1199

vector.ph1199:                                    ; preds = %polly.loop_header607
  %n.vec1201 = and i64 %186, -4
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1199
  %index1202 = phi i64 [ 0, %vector.ph1199 ], [ %index.next1203, %vector.body1197 ]
  %188 = shl nuw nsw i64 %index1202, 3
  %189 = getelementptr i8, i8* %scevgep619, i64 %188
  %190 = bitcast i8* %189 to <4 x double>*
  %wide.load1206 = load <4 x double>, <4 x double>* %190, align 8, !alias.scope !89, !noalias !91
  %191 = fmul fast <4 x double> %wide.load1206, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %192 = bitcast i8* %189 to <4 x double>*
  store <4 x double> %191, <4 x double>* %192, align 8, !alias.scope !89, !noalias !91
  %index.next1203 = add i64 %index1202, 4
  %193 = icmp eq i64 %index.next1203, %n.vec1201
  br i1 %193, label %middle.block1195, label %vector.body1197, !llvm.loop !95

middle.block1195:                                 ; preds = %vector.body1197
  %cmp.n1205 = icmp eq i64 %186, %n.vec1201
  br i1 %cmp.n1205, label %polly.loop_exit615, label %polly.loop_header613.preheader

polly.loop_header613.preheader:                   ; preds = %polly.loop_header607, %middle.block1195
  %polly.indvar616.ph = phi i64 [ 0, %polly.loop_header607 ], [ %n.vec1201, %middle.block1195 ]
  br label %polly.loop_header613

polly.loop_exit615:                               ; preds = %polly.loop_header613, %middle.block1195
  %polly.indvar_next611 = add nuw nsw i64 %polly.indvar610, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next611, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1059.not, label %polly.loop_header623.preheader, label %polly.loop_header607

polly.loop_header623.preheader:                   ; preds = %polly.loop_exit615
  %Packed_MemRef_call1524 = bitcast i8* %malloccall523 to double*
  br label %polly.loop_header623

polly.loop_header613:                             ; preds = %polly.loop_header613.preheader, %polly.loop_header613
  %polly.indvar616 = phi i64 [ %polly.indvar_next617, %polly.loop_header613 ], [ %polly.indvar616.ph, %polly.loop_header613.preheader ]
  %194 = shl nuw nsw i64 %polly.indvar616, 3
  %scevgep620 = getelementptr i8, i8* %scevgep619, i64 %194
  %scevgep620621 = bitcast i8* %scevgep620 to double*
  %_p_scalar_622 = load double, double* %scevgep620621, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_622, 1.200000e+00
  store double %p_mul.i, double* %scevgep620621, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next617 = add nuw nsw i64 %polly.indvar616, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next617, %polly.indvar610
  br i1 %exitcond1058.not, label %polly.loop_exit615, label %polly.loop_header613, !llvm.loop !96

polly.loop_header623:                             ; preds = %polly.loop_header623.preheader, %polly.loop_exit631
  %indvars.iv1026 = phi i64 [ 0, %polly.loop_header623.preheader ], [ %indvars.iv.next1027, %polly.loop_exit631 ]
  %polly.indvar626 = phi i64 [ 0, %polly.loop_header623.preheader ], [ %polly.indvar_next627, %polly.loop_exit631 ]
  %smin1039 = call i64 @llvm.smin.i64(i64 %indvars.iv1026, i64 -984)
  %195 = add nsw i64 %smin1039, 1000
  %196 = mul nsw i64 %polly.indvar626, -16
  %197 = icmp slt i64 %196, -984
  %198 = select i1 %197, i64 %196, i64 -984
  %199 = shl nsw i64 %polly.indvar626, 4
  %200 = add nsw i64 %198, 999
  br label %polly.loop_header629

polly.loop_exit631:                               ; preds = %polly.loop_exit637
  %polly.indvar_next627 = add nuw nsw i64 %polly.indvar626, 1
  %indvars.iv.next1027 = add nsw i64 %indvars.iv1026, -16
  %exitcond1057.not = icmp eq i64 %polly.indvar_next627, 63
  br i1 %exitcond1057.not, label %polly.exiting522, label %polly.loop_header623

polly.loop_header629:                             ; preds = %polly.loop_exit637, %polly.loop_header623
  %indvars.iv1046 = phi i64 [ %indvars.iv.next1047, %polly.loop_exit637 ], [ 0, %polly.loop_header623 ]
  %indvars.iv1041 = phi i64 [ %indvars.iv.next1042, %polly.loop_exit637 ], [ 0, %polly.loop_header623 ]
  %indvars.iv1031 = phi i64 [ %indvars.iv.next1032, %polly.loop_exit637 ], [ 50, %polly.loop_header623 ]
  %polly.indvar632 = phi i64 [ %polly.indvar_next633, %polly.loop_exit637 ], [ 0, %polly.loop_header623 ]
  %201 = mul nuw nsw i64 %polly.indvar632, 5
  %202 = shl nsw i64 %polly.indvar632, 7
  %203 = or i64 %202, 1
  %204 = mul nsw i64 %polly.indvar632, -256
  %205 = shl nsw i64 %polly.indvar632, 8
  br label %polly.loop_header635

polly.loop_exit637:                               ; preds = %polly.loop_exit699
  %polly.indvar_next633 = add nuw nsw i64 %polly.indvar632, 1
  %indvars.iv.next1032 = add nsw i64 %indvars.iv1031, -6
  %indvars.iv.next1042 = add nuw nsw i64 %indvars.iv1041, 6
  %indvars.iv.next1047 = add nsw i64 %indvars.iv1046, -6
  %exitcond1056.not = icmp eq i64 %polly.indvar_next633, 5
  br i1 %exitcond1056.not, label %polly.loop_exit631, label %polly.loop_header629

polly.loop_header635:                             ; preds = %polly.loop_exit699, %polly.loop_header629
  %indvars.iv1048 = phi i64 [ %indvars.iv.next1049, %polly.loop_exit699 ], [ %indvars.iv1046, %polly.loop_header629 ]
  %indvars.iv1043 = phi i64 [ %indvars.iv.next1044, %polly.loop_exit699 ], [ %indvars.iv1041, %polly.loop_header629 ]
  %indvars.iv1033 = phi i64 [ %indvars.iv.next1034, %polly.loop_exit699 ], [ %indvars.iv1031, %polly.loop_header629 ]
  %polly.indvar638 = phi i64 [ %polly.indvar_next639, %polly.loop_exit699 ], [ %201, %polly.loop_header629 ]
  %smax1045 = call i64 @llvm.smax.i64(i64 %indvars.iv1043, i64 0)
  %206 = add i64 %smax1045, %indvars.iv1048
  %207 = mul nuw nsw i64 %polly.indvar638, 25
  %.not942 = icmp ult i64 %207, %203
  br i1 %.not942, label %polly.loop_header678, label %polly.then643

polly.merge642.loopexit:                          ; preds = %polly.loop_exit686
  %.pre = mul nuw nsw i64 %polly.indvar638, 50
  br label %polly.merge642

polly.merge642:                                   ; preds = %polly.loop_exit666, %polly.loop_exit666.us, %polly.merge642.loopexit
  %.pre-phi = phi i64 [ %.pre, %polly.merge642.loopexit ], [ %211, %polly.loop_exit666.us ], [ %211, %polly.loop_exit666 ]
  %208 = sub nsw i64 %205, %.pre-phi
  %209 = icmp sgt i64 %208, 0
  %210 = select i1 %209, i64 %208, i64 0
  br label %polly.loop_header697

polly.loop_exit699:                               ; preds = %polly.loop_exit705
  %polly.indvar_next639 = add nuw nsw i64 %polly.indvar638, 1
  %indvars.iv.next1034 = add nuw nsw i64 %indvars.iv1033, 50
  %indvars.iv.next1044 = add nsw i64 %indvars.iv1043, -50
  %indvars.iv.next1049 = add nsw i64 %indvars.iv1048, 50
  %exitcond1055.not = icmp eq i64 %polly.indvar_next639, 24
  br i1 %exitcond1055.not, label %polly.loop_exit637, label %polly.loop_header635

polly.then643:                                    ; preds = %polly.loop_header635
  %211 = mul nuw nsw i64 %polly.indvar638, 50
  %212 = add nsw i64 %211, %204
  %213 = add nsw i64 %212, -1
  %.inv943 = icmp sgt i64 %212, 255
  %214 = select i1 %.inv943, i64 255, i64 %213
  %polly.loop_guard655 = icmp sgt i64 %214, -1
  %215 = add nsw i64 %212, 49
  br i1 %polly.loop_guard655, label %polly.loop_header645.us, label %polly.loop_header645

polly.loop_header645.us:                          ; preds = %polly.then643, %polly.loop_exit666.us
  %polly.indvar648.us = phi i64 [ %polly.indvar_next649.us, %polly.loop_exit666.us ], [ 0, %polly.then643 ]
  %216 = add nuw nsw i64 %polly.indvar648.us, %199
  %polly.access.mul.Packed_MemRef_call1524.us = mul nuw nsw i64 %polly.indvar648.us, 1200
  br label %polly.loop_header652.us

polly.loop_header652.us:                          ; preds = %polly.loop_header645.us, %polly.loop_header652.us
  %polly.indvar656.us = phi i64 [ %polly.indvar_next657.us, %polly.loop_header652.us ], [ 0, %polly.loop_header645.us ]
  %217 = add nuw nsw i64 %polly.indvar656.us, %205
  %polly.access.mul.call1660.us = mul nuw nsw i64 %217, 1000
  %polly.access.add.call1661.us = add nuw nsw i64 %216, %polly.access.mul.call1660.us
  %polly.access.call1662.us = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1661.us
  %polly.access.call1662.load.us = load double, double* %polly.access.call1662.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1524.us = add nuw nsw i64 %polly.indvar656.us, %polly.access.mul.Packed_MemRef_call1524.us
  %polly.access.Packed_MemRef_call1524.us = getelementptr double, double* %Packed_MemRef_call1524, i64 %polly.access.add.Packed_MemRef_call1524.us
  store double %polly.access.call1662.load.us, double* %polly.access.Packed_MemRef_call1524.us, align 8
  %polly.indvar_next657.us = add nuw i64 %polly.indvar656.us, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar656.us, %214
  br i1 %exitcond1030.not, label %polly.loop_header664.us, label %polly.loop_header652.us

polly.loop_header664.us:                          ; preds = %polly.loop_header652.us, %polly.loop_header664.us
  %polly.indvar668.us = phi i64 [ %polly.indvar_next669.us, %polly.loop_header664.us ], [ %212, %polly.loop_header652.us ]
  %218 = add nsw i64 %polly.indvar668.us, %205
  %polly.access.mul.call1672.us = mul nuw nsw i64 %218, 1000
  %polly.access.add.call1673.us = add nuw nsw i64 %216, %polly.access.mul.call1672.us
  %polly.access.call1674.us = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1673.us
  %polly.access.call1674.load.us = load double, double* %polly.access.call1674.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1524676.us = add nsw i64 %polly.indvar668.us, %polly.access.mul.Packed_MemRef_call1524.us
  %polly.access.Packed_MemRef_call1524677.us = getelementptr double, double* %Packed_MemRef_call1524, i64 %polly.access.add.Packed_MemRef_call1524676.us
  store double %polly.access.call1674.load.us, double* %polly.access.Packed_MemRef_call1524677.us, align 8
  %polly.indvar_next669.us = add nsw i64 %polly.indvar668.us, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar_next669.us, %indvars.iv1033
  br i1 %exitcond1035.not, label %polly.loop_exit666.us, label %polly.loop_header664.us

polly.loop_exit666.us:                            ; preds = %polly.loop_header664.us
  %polly.indvar_next649.us = add nuw nsw i64 %polly.indvar648.us, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next649.us, %195
  br i1 %exitcond1037.not, label %polly.merge642, label %polly.loop_header645.us

polly.loop_header645:                             ; preds = %polly.then643, %polly.loop_exit666
  %polly.indvar648 = phi i64 [ %polly.indvar_next649, %polly.loop_exit666 ], [ 0, %polly.then643 ]
  %219 = add nuw nsw i64 %polly.indvar648, %199
  %polly.access.mul.Packed_MemRef_call1524675 = mul nuw nsw i64 %polly.indvar648, 1200
  br label %polly.loop_header664

polly.loop_exit666:                               ; preds = %polly.loop_header664
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next649, %195
  br i1 %exitcond1029.not, label %polly.merge642, label %polly.loop_header645

polly.loop_header664:                             ; preds = %polly.loop_header645, %polly.loop_header664
  %polly.indvar668 = phi i64 [ %polly.indvar_next669, %polly.loop_header664 ], [ %212, %polly.loop_header645 ]
  %220 = add nsw i64 %polly.indvar668, %205
  %polly.access.mul.call1672 = mul nuw nsw i64 %220, 1000
  %polly.access.add.call1673 = add nuw nsw i64 %219, %polly.access.mul.call1672
  %polly.access.call1674 = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1673
  %polly.access.call1674.load = load double, double* %polly.access.call1674, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1524676 = add nsw i64 %polly.indvar668, %polly.access.mul.Packed_MemRef_call1524675
  %polly.access.Packed_MemRef_call1524677 = getelementptr double, double* %Packed_MemRef_call1524, i64 %polly.access.add.Packed_MemRef_call1524676
  store double %polly.access.call1674.load, double* %polly.access.Packed_MemRef_call1524677, align 8
  %polly.indvar_next669 = add nsw i64 %polly.indvar668, 1
  %polly.loop_cond670.not.not = icmp slt i64 %polly.indvar668, %215
  br i1 %polly.loop_cond670.not.not, label %polly.loop_header664, label %polly.loop_exit666

polly.loop_header678:                             ; preds = %polly.loop_header635, %polly.loop_exit686
  %polly.indvar681 = phi i64 [ %polly.indvar_next682, %polly.loop_exit686 ], [ 0, %polly.loop_header635 ]
  %221 = add nuw nsw i64 %polly.indvar681, %199
  %polly.access.mul.Packed_MemRef_call1524694 = mul nuw nsw i64 %polly.indvar681, 1200
  br label %polly.loop_header684

polly.loop_exit686:                               ; preds = %polly.loop_header684
  %polly.indvar_next682 = add nuw nsw i64 %polly.indvar681, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar_next682, %195
  br i1 %exitcond1040.not, label %polly.merge642.loopexit, label %polly.loop_header678

polly.loop_header684:                             ; preds = %polly.loop_header684, %polly.loop_header678
  %polly.indvar687 = phi i64 [ 0, %polly.loop_header678 ], [ %polly.indvar_next688, %polly.loop_header684 ]
  %222 = add nuw nsw i64 %polly.indvar687, %205
  %polly.access.mul.call1691 = mul nuw nsw i64 %222, 1000
  %polly.access.add.call1692 = add nuw nsw i64 %221, %polly.access.mul.call1691
  %polly.access.call1693 = getelementptr double, double* %polly.access.cast.call1738, i64 %polly.access.add.call1692
  %polly.access.call1693.load = load double, double* %polly.access.call1693, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1524695 = add nuw nsw i64 %polly.indvar687, %polly.access.mul.Packed_MemRef_call1524694
  %polly.access.Packed_MemRef_call1524696 = getelementptr double, double* %Packed_MemRef_call1524, i64 %polly.access.add.Packed_MemRef_call1524695
  store double %polly.access.call1693.load, double* %polly.access.Packed_MemRef_call1524696, align 8
  %polly.indvar_next688 = add nuw nsw i64 %polly.indvar687, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar_next688, %indvars.iv1031
  br i1 %exitcond1038.not, label %polly.loop_exit686, label %polly.loop_header684

polly.loop_header697:                             ; preds = %polly.loop_exit705, %polly.merge642
  %polly.indvar700 = phi i64 [ 0, %polly.merge642 ], [ %polly.indvar_next701, %polly.loop_exit705 ]
  %223 = add nuw nsw i64 %polly.indvar700, %199
  %polly.access.mul.Packed_MemRef_call1524717 = mul nuw nsw i64 %polly.indvar700, 1200
  %224 = shl i64 %223, 3
  br label %polly.loop_header703

polly.loop_exit705:                               ; preds = %polly.loop_exit712
  %polly.indvar_next701 = add nuw nsw i64 %polly.indvar700, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar700, %200
  br i1 %exitcond1054.not, label %polly.loop_exit699, label %polly.loop_header697

polly.loop_header703:                             ; preds = %polly.loop_exit712, %polly.loop_header697
  %indvars.iv1050 = phi i64 [ %indvars.iv.next1051, %polly.loop_exit712 ], [ %206, %polly.loop_header697 ]
  %polly.indvar706 = phi i64 [ %polly.indvar_next707, %polly.loop_exit712 ], [ %210, %polly.loop_header697 ]
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv1050, i64 255)
  %225 = add nuw i64 %polly.indvar706, %.pre-phi
  %226 = add i64 %225, %204
  %polly.loop_guard7131103 = icmp sgt i64 %226, -1
  br i1 %polly.loop_guard7131103, label %polly.loop_header710.preheader, label %polly.loop_exit712

polly.loop_header710.preheader:                   ; preds = %polly.loop_header703
  %227 = mul i64 %225, 8000
  %228 = add i64 %227, %224
  %scevgep721 = getelementptr i8, i8* %call2, i64 %228
  %scevgep721722 = bitcast i8* %scevgep721 to double*
  %_p_scalar_723 = load double, double* %scevgep721722, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1524728 = add nsw i64 %polly.access.mul.Packed_MemRef_call1524717, %226
  %polly.access.Packed_MemRef_call1524729 = getelementptr double, double* %Packed_MemRef_call1524, i64 %polly.access.add.Packed_MemRef_call1524728
  %_p_scalar_730 = load double, double* %polly.access.Packed_MemRef_call1524729, align 8
  %229 = mul i64 %225, 9600
  br label %polly.loop_header710

polly.loop_exit712:                               ; preds = %polly.loop_header710, %polly.loop_header703
  %polly.indvar_next707 = add nuw nsw i64 %polly.indvar706, 1
  %polly.loop_cond708 = icmp ult i64 %polly.indvar706, 49
  %indvars.iv.next1051 = add i64 %indvars.iv1050, 1
  br i1 %polly.loop_cond708, label %polly.loop_header703, label %polly.loop_exit705

polly.loop_header710:                             ; preds = %polly.loop_header710.preheader, %polly.loop_header710
  %polly.indvar714 = phi i64 [ %polly.indvar_next715, %polly.loop_header710 ], [ 0, %polly.loop_header710.preheader ]
  %230 = add nuw nsw i64 %polly.indvar714, %205
  %polly.access.add.Packed_MemRef_call1524718 = add nuw nsw i64 %polly.indvar714, %polly.access.mul.Packed_MemRef_call1524717
  %polly.access.Packed_MemRef_call1524719 = getelementptr double, double* %Packed_MemRef_call1524, i64 %polly.access.add.Packed_MemRef_call1524718
  %_p_scalar_720 = load double, double* %polly.access.Packed_MemRef_call1524719, align 8
  %p_mul27.i = fmul fast double %_p_scalar_723, %_p_scalar_720
  %231 = mul nuw nsw i64 %230, 8000
  %232 = add nuw nsw i64 %231, %224
  %scevgep724 = getelementptr i8, i8* %call2, i64 %232
  %scevgep724725 = bitcast i8* %scevgep724 to double*
  %_p_scalar_726 = load double, double* %scevgep724725, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i = fmul fast double %_p_scalar_730, %_p_scalar_726
  %233 = shl i64 %230, 3
  %234 = add i64 %233, %229
  %scevgep731 = getelementptr i8, i8* %call, i64 %234
  %scevgep731732 = bitcast i8* %scevgep731 to double*
  %_p_scalar_733 = load double, double* %scevgep731732, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_733
  store double %p_add42.i, double* %scevgep731732, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next715 = add nuw nsw i64 %polly.indvar714, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar714, %smin1052
  br i1 %exitcond1053.not, label %polly.loop_exit712, label %polly.loop_header710

polly.loop_header860:                             ; preds = %entry, %polly.loop_exit868
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085, %polly.loop_exit868 ], [ 0, %entry ]
  %polly.indvar863 = phi i64 [ %polly.indvar_next864, %polly.loop_exit868 ], [ 0, %entry ]
  %smin1086 = call i64 @llvm.smin.i64(i64 %indvars.iv1084, i64 -1168)
  %235 = shl nsw i64 %polly.indvar863, 5
  %236 = add nsw i64 %smin1086, 1199
  br label %polly.loop_header866

polly.loop_exit868:                               ; preds = %polly.loop_exit874
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %indvars.iv.next1085 = add nsw i64 %indvars.iv1084, -32
  %exitcond1089.not = icmp eq i64 %polly.indvar_next864, 38
  br i1 %exitcond1089.not, label %polly.loop_header887, label %polly.loop_header860

polly.loop_header866:                             ; preds = %polly.loop_exit874, %polly.loop_header860
  %indvars.iv1080 = phi i64 [ %indvars.iv.next1081, %polly.loop_exit874 ], [ 0, %polly.loop_header860 ]
  %polly.indvar869 = phi i64 [ %polly.indvar_next870, %polly.loop_exit874 ], [ 0, %polly.loop_header860 ]
  %237 = mul nsw i64 %polly.indvar869, -32
  %smin = call i64 @llvm.smin.i64(i64 %237, i64 -1168)
  %238 = add nsw i64 %smin, 1200
  %smin1082 = call i64 @llvm.smin.i64(i64 %indvars.iv1080, i64 -1168)
  %239 = shl nsw i64 %polly.indvar869, 5
  %240 = add nsw i64 %smin1082, 1199
  br label %polly.loop_header872

polly.loop_exit874:                               ; preds = %polly.loop_exit880
  %polly.indvar_next870 = add nuw nsw i64 %polly.indvar869, 1
  %indvars.iv.next1081 = add nsw i64 %indvars.iv1080, -32
  %exitcond1088.not = icmp eq i64 %polly.indvar_next870, 38
  br i1 %exitcond1088.not, label %polly.loop_exit868, label %polly.loop_header866

polly.loop_header872:                             ; preds = %polly.loop_exit880, %polly.loop_header866
  %polly.indvar875 = phi i64 [ 0, %polly.loop_header866 ], [ %polly.indvar_next876, %polly.loop_exit880 ]
  %241 = add nuw nsw i64 %polly.indvar875, %235
  %242 = trunc i64 %241 to i32
  %243 = mul nuw nsw i64 %241, 9600
  %min.iters.check = icmp eq i64 %238, 0
  br i1 %min.iters.check, label %polly.loop_header878, label %vector.ph1137

vector.ph1137:                                    ; preds = %polly.loop_header872
  %broadcast.splatinsert1144 = insertelement <4 x i64> poison, i64 %239, i32 0
  %broadcast.splat1145 = shufflevector <4 x i64> %broadcast.splatinsert1144, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1146 = insertelement <4 x i32> poison, i32 %242, i32 0
  %broadcast.splat1147 = shufflevector <4 x i32> %broadcast.splatinsert1146, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %vector.ph1137
  %index1138 = phi i64 [ 0, %vector.ph1137 ], [ %index.next1139, %vector.body1136 ]
  %vec.ind1142 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1137 ], [ %vec.ind.next1143, %vector.body1136 ]
  %244 = add nuw nsw <4 x i64> %vec.ind1142, %broadcast.splat1145
  %245 = trunc <4 x i64> %244 to <4 x i32>
  %246 = mul <4 x i32> %broadcast.splat1147, %245
  %247 = add <4 x i32> %246, <i32 3, i32 3, i32 3, i32 3>
  %248 = urem <4 x i32> %247, <i32 1200, i32 1200, i32 1200, i32 1200>
  %249 = sitofp <4 x i32> %248 to <4 x double>
  %250 = fmul fast <4 x double> %249, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %251 = extractelement <4 x i64> %244, i32 0
  %252 = shl i64 %251, 3
  %253 = add nuw nsw i64 %252, %243
  %254 = getelementptr i8, i8* %call, i64 %253
  %255 = bitcast i8* %254 to <4 x double>*
  store <4 x double> %250, <4 x double>* %255, align 8, !alias.scope !99, !noalias !101
  %index.next1139 = add i64 %index1138, 4
  %vec.ind.next1143 = add <4 x i64> %vec.ind1142, <i64 4, i64 4, i64 4, i64 4>
  %256 = icmp eq i64 %index.next1139, %238
  br i1 %256, label %polly.loop_exit880, label %vector.body1136, !llvm.loop !104

polly.loop_exit880:                               ; preds = %vector.body1136, %polly.loop_header878
  %polly.indvar_next876 = add nuw nsw i64 %polly.indvar875, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar875, %236
  br i1 %exitcond1087.not, label %polly.loop_exit874, label %polly.loop_header872

polly.loop_header878:                             ; preds = %polly.loop_header872, %polly.loop_header878
  %polly.indvar881 = phi i64 [ %polly.indvar_next882, %polly.loop_header878 ], [ 0, %polly.loop_header872 ]
  %257 = add nuw nsw i64 %polly.indvar881, %239
  %258 = trunc i64 %257 to i32
  %259 = mul i32 %258, %242
  %260 = add i32 %259, 3
  %261 = urem i32 %260, 1200
  %p_conv31.i = sitofp i32 %261 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %262 = shl i64 %257, 3
  %263 = add nuw nsw i64 %262, %243
  %scevgep884 = getelementptr i8, i8* %call, i64 %263
  %scevgep884885 = bitcast i8* %scevgep884 to double*
  store double %p_div33.i, double* %scevgep884885, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next882 = add nuw nsw i64 %polly.indvar881, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar881, %240
  br i1 %exitcond1083.not, label %polly.loop_exit880, label %polly.loop_header878, !llvm.loop !105

polly.loop_header887:                             ; preds = %polly.loop_exit868, %polly.loop_exit895
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075, %polly.loop_exit895 ], [ 0, %polly.loop_exit868 ]
  %polly.indvar890 = phi i64 [ %polly.indvar_next891, %polly.loop_exit895 ], [ 0, %polly.loop_exit868 ]
  %smin1076 = call i64 @llvm.smin.i64(i64 %indvars.iv1074, i64 -1168)
  %264 = shl nsw i64 %polly.indvar890, 5
  %265 = add nsw i64 %smin1076, 1199
  br label %polly.loop_header893

polly.loop_exit895:                               ; preds = %polly.loop_exit901
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %indvars.iv.next1075 = add nsw i64 %indvars.iv1074, -32
  %exitcond1079.not = icmp eq i64 %polly.indvar_next891, 38
  br i1 %exitcond1079.not, label %polly.loop_header913, label %polly.loop_header887

polly.loop_header893:                             ; preds = %polly.loop_exit901, %polly.loop_header887
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071, %polly.loop_exit901 ], [ 0, %polly.loop_header887 ]
  %polly.indvar896 = phi i64 [ %polly.indvar_next897, %polly.loop_exit901 ], [ 0, %polly.loop_header887 ]
  %266 = mul nsw i64 %polly.indvar896, -32
  %smin1151 = call i64 @llvm.smin.i64(i64 %266, i64 -968)
  %267 = add nsw i64 %smin1151, 1000
  %smin1072 = call i64 @llvm.smin.i64(i64 %indvars.iv1070, i64 -968)
  %268 = shl nsw i64 %polly.indvar896, 5
  %269 = add nsw i64 %smin1072, 999
  br label %polly.loop_header899

polly.loop_exit901:                               ; preds = %polly.loop_exit907
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %indvars.iv.next1071 = add nsw i64 %indvars.iv1070, -32
  %exitcond1078.not = icmp eq i64 %polly.indvar_next897, 32
  br i1 %exitcond1078.not, label %polly.loop_exit895, label %polly.loop_header893

polly.loop_header899:                             ; preds = %polly.loop_exit907, %polly.loop_header893
  %polly.indvar902 = phi i64 [ 0, %polly.loop_header893 ], [ %polly.indvar_next903, %polly.loop_exit907 ]
  %270 = add nuw nsw i64 %polly.indvar902, %264
  %271 = trunc i64 %270 to i32
  %272 = mul nuw nsw i64 %270, 8000
  %min.iters.check1152 = icmp eq i64 %267, 0
  br i1 %min.iters.check1152, label %polly.loop_header905, label %vector.ph1153

vector.ph1153:                                    ; preds = %polly.loop_header899
  %broadcast.splatinsert1162 = insertelement <4 x i64> poison, i64 %268, i32 0
  %broadcast.splat1163 = shufflevector <4 x i64> %broadcast.splatinsert1162, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1164 = insertelement <4 x i32> poison, i32 %271, i32 0
  %broadcast.splat1165 = shufflevector <4 x i32> %broadcast.splatinsert1164, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %vector.ph1153
  %index1156 = phi i64 [ 0, %vector.ph1153 ], [ %index.next1157, %vector.body1150 ]
  %vec.ind1160 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1153 ], [ %vec.ind.next1161, %vector.body1150 ]
  %273 = add nuw nsw <4 x i64> %vec.ind1160, %broadcast.splat1163
  %274 = trunc <4 x i64> %273 to <4 x i32>
  %275 = mul <4 x i32> %broadcast.splat1165, %274
  %276 = add <4 x i32> %275, <i32 2, i32 2, i32 2, i32 2>
  %277 = urem <4 x i32> %276, <i32 1000, i32 1000, i32 1000, i32 1000>
  %278 = sitofp <4 x i32> %277 to <4 x double>
  %279 = fmul fast <4 x double> %278, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %280 = extractelement <4 x i64> %273, i32 0
  %281 = shl i64 %280, 3
  %282 = add nuw nsw i64 %281, %272
  %283 = getelementptr i8, i8* %call2, i64 %282
  %284 = bitcast i8* %283 to <4 x double>*
  store <4 x double> %279, <4 x double>* %284, align 8, !alias.scope !103, !noalias !106
  %index.next1157 = add i64 %index1156, 4
  %vec.ind.next1161 = add <4 x i64> %vec.ind1160, <i64 4, i64 4, i64 4, i64 4>
  %285 = icmp eq i64 %index.next1157, %267
  br i1 %285, label %polly.loop_exit907, label %vector.body1150, !llvm.loop !107

polly.loop_exit907:                               ; preds = %vector.body1150, %polly.loop_header905
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar902, %265
  br i1 %exitcond1077.not, label %polly.loop_exit901, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_header899, %polly.loop_header905
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_header905 ], [ 0, %polly.loop_header899 ]
  %286 = add nuw nsw i64 %polly.indvar908, %268
  %287 = trunc i64 %286 to i32
  %288 = mul i32 %287, %271
  %289 = add i32 %288, 2
  %290 = urem i32 %289, 1000
  %p_conv10.i = sitofp i32 %290 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %291 = shl i64 %286, 3
  %292 = add nuw nsw i64 %291, %272
  %scevgep911 = getelementptr i8, i8* %call2, i64 %292
  %scevgep911912 = bitcast i8* %scevgep911 to double*
  store double %p_div12.i, double* %scevgep911912, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar908, %269
  br i1 %exitcond1073.not, label %polly.loop_exit907, label %polly.loop_header905, !llvm.loop !108

polly.loop_header913:                             ; preds = %polly.loop_exit895, %polly.loop_exit921
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065, %polly.loop_exit921 ], [ 0, %polly.loop_exit895 ]
  %polly.indvar916 = phi i64 [ %polly.indvar_next917, %polly.loop_exit921 ], [ 0, %polly.loop_exit895 ]
  %smin1066 = call i64 @llvm.smin.i64(i64 %indvars.iv1064, i64 -1168)
  %293 = shl nsw i64 %polly.indvar916, 5
  %294 = add nsw i64 %smin1066, 1199
  br label %polly.loop_header919

polly.loop_exit921:                               ; preds = %polly.loop_exit927
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %indvars.iv.next1065 = add nsw i64 %indvars.iv1064, -32
  %exitcond1069.not = icmp eq i64 %polly.indvar_next917, 38
  br i1 %exitcond1069.not, label %init_array.exit, label %polly.loop_header913

polly.loop_header919:                             ; preds = %polly.loop_exit927, %polly.loop_header913
  %indvars.iv1060 = phi i64 [ %indvars.iv.next1061, %polly.loop_exit927 ], [ 0, %polly.loop_header913 ]
  %polly.indvar922 = phi i64 [ %polly.indvar_next923, %polly.loop_exit927 ], [ 0, %polly.loop_header913 ]
  %295 = mul nsw i64 %polly.indvar922, -32
  %smin1169 = call i64 @llvm.smin.i64(i64 %295, i64 -968)
  %296 = add nsw i64 %smin1169, 1000
  %smin1062 = call i64 @llvm.smin.i64(i64 %indvars.iv1060, i64 -968)
  %297 = shl nsw i64 %polly.indvar922, 5
  %298 = add nsw i64 %smin1062, 999
  br label %polly.loop_header925

polly.loop_exit927:                               ; preds = %polly.loop_exit933
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %indvars.iv.next1061 = add nsw i64 %indvars.iv1060, -32
  %exitcond1068.not = icmp eq i64 %polly.indvar_next923, 32
  br i1 %exitcond1068.not, label %polly.loop_exit921, label %polly.loop_header919

polly.loop_header925:                             ; preds = %polly.loop_exit933, %polly.loop_header919
  %polly.indvar928 = phi i64 [ 0, %polly.loop_header919 ], [ %polly.indvar_next929, %polly.loop_exit933 ]
  %299 = add nuw nsw i64 %polly.indvar928, %293
  %300 = trunc i64 %299 to i32
  %301 = mul nuw nsw i64 %299, 8000
  %min.iters.check1170 = icmp eq i64 %296, 0
  br i1 %min.iters.check1170, label %polly.loop_header931, label %vector.ph1171

vector.ph1171:                                    ; preds = %polly.loop_header925
  %broadcast.splatinsert1180 = insertelement <4 x i64> poison, i64 %297, i32 0
  %broadcast.splat1181 = shufflevector <4 x i64> %broadcast.splatinsert1180, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1182 = insertelement <4 x i32> poison, i32 %300, i32 0
  %broadcast.splat1183 = shufflevector <4 x i32> %broadcast.splatinsert1182, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %vector.ph1171
  %index1174 = phi i64 [ 0, %vector.ph1171 ], [ %index.next1175, %vector.body1168 ]
  %vec.ind1178 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1171 ], [ %vec.ind.next1179, %vector.body1168 ]
  %302 = add nuw nsw <4 x i64> %vec.ind1178, %broadcast.splat1181
  %303 = trunc <4 x i64> %302 to <4 x i32>
  %304 = mul <4 x i32> %broadcast.splat1183, %303
  %305 = add <4 x i32> %304, <i32 1, i32 1, i32 1, i32 1>
  %306 = urem <4 x i32> %305, <i32 1200, i32 1200, i32 1200, i32 1200>
  %307 = sitofp <4 x i32> %306 to <4 x double>
  %308 = fmul fast <4 x double> %307, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %309 = extractelement <4 x i64> %302, i32 0
  %310 = shl i64 %309, 3
  %311 = add nuw nsw i64 %310, %301
  %312 = getelementptr i8, i8* %call1, i64 %311
  %313 = bitcast i8* %312 to <4 x double>*
  store <4 x double> %308, <4 x double>* %313, align 8, !alias.scope !102, !noalias !109
  %index.next1175 = add i64 %index1174, 4
  %vec.ind.next1179 = add <4 x i64> %vec.ind1178, <i64 4, i64 4, i64 4, i64 4>
  %314 = icmp eq i64 %index.next1175, %296
  br i1 %314, label %polly.loop_exit933, label %vector.body1168, !llvm.loop !110

polly.loop_exit933:                               ; preds = %vector.body1168, %polly.loop_header931
  %polly.indvar_next929 = add nuw nsw i64 %polly.indvar928, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar928, %294
  br i1 %exitcond1067.not, label %polly.loop_exit927, label %polly.loop_header925

polly.loop_header931:                             ; preds = %polly.loop_header925, %polly.loop_header931
  %polly.indvar934 = phi i64 [ %polly.indvar_next935, %polly.loop_header931 ], [ 0, %polly.loop_header925 ]
  %315 = add nuw nsw i64 %polly.indvar934, %297
  %316 = trunc i64 %315 to i32
  %317 = mul i32 %316, %300
  %318 = add i32 %317, 1
  %319 = urem i32 %318, 1200
  %p_conv.i = sitofp i32 %319 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %320 = shl i64 %315, 3
  %321 = add nuw nsw i64 %320, %301
  %scevgep938 = getelementptr i8, i8* %call1, i64 %321
  %scevgep938939 = bitcast i8* %scevgep938 to double*
  store double %p_div.i, double* %scevgep938939, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next935 = add nuw nsw i64 %polly.indvar934, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar934, %298
  br i1 %exitcond1063.not, label %polly.loop_exit933, label %polly.loop_header931, !llvm.loop !111
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
!25 = !{!"llvm.loop.tile.size", i32 256}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 16}
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
