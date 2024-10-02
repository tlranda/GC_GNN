; ModuleID = 'syr2k_exhaustive/mmp_all_XL_3664.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_3664.c"
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
  %call831 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1683 = bitcast i8* %call1 to double*
  %polly.access.call1692 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1692, %call2
  %polly.access.call2712 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2712, %call1
  %2 = or i1 %0, %1
  %polly.access.call732 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call732, %call2
  %4 = icmp ule i8* %polly.access.call2712, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call732, %call1
  %8 = icmp ule i8* %polly.access.call1692, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header805, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1128 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1127 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1126 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1125 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1125, %scevgep1128
  %bound1 = icmp ult i8* %scevgep1127, %scevgep1126
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
  br i1 %exitcond18.not.i, label %vector.ph1132, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1132:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1139 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1140 = shufflevector <4 x i64> %broadcast.splatinsert1139, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1131

vector.body1131:                                  ; preds = %vector.body1131, %vector.ph1132
  %index1133 = phi i64 [ 0, %vector.ph1132 ], [ %index.next1134, %vector.body1131 ]
  %vec.ind1137 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1132 ], [ %vec.ind.next1138, %vector.body1131 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1137, %broadcast.splat1140
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv7.i, i64 %index1133
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1134 = add i64 %index1133, 4
  %vec.ind.next1138 = add <4 x i64> %vec.ind1137, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1134, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1131, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1131
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1132, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit866
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start484, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1195 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1195, label %for.body3.i46.preheader1275, label %vector.ph1196

vector.ph1196:                                    ; preds = %for.body3.i46.preheader
  %n.vec1198 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1194

vector.body1194:                                  ; preds = %vector.body1194, %vector.ph1196
  %index1199 = phi i64 [ 0, %vector.ph1196 ], [ %index.next1200, %vector.body1194 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i, i64 %index1199
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1200 = add i64 %index1199, 4
  %46 = icmp eq i64 %index.next1200, %n.vec1198
  br i1 %46, label %middle.block1192, label %vector.body1194, !llvm.loop !18

middle.block1192:                                 ; preds = %vector.body1194
  %cmp.n1202 = icmp eq i64 %indvars.iv21.i, %n.vec1198
  br i1 %cmp.n1202, label %for.inc6.i, label %for.body3.i46.preheader1275

for.body3.i46.preheader1275:                      ; preds = %for.body3.i46.preheader, %middle.block1192
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1198, %middle.block1192 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1275, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1275 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1192, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting485
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start287, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1218 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1218, label %for.body3.i60.preheader1272, label %vector.ph1219

vector.ph1219:                                    ; preds = %for.body3.i60.preheader
  %n.vec1221 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %vector.ph1219
  %index1222 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1223, %vector.body1217 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i52, i64 %index1222
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1226 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1226, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1223 = add i64 %index1222, 4
  %57 = icmp eq i64 %index.next1223, %n.vec1221
  br i1 %57, label %middle.block1215, label %vector.body1217, !llvm.loop !60

middle.block1215:                                 ; preds = %vector.body1217
  %cmp.n1225 = icmp eq i64 %indvars.iv21.i52, %n.vec1221
  br i1 %cmp.n1225, label %for.inc6.i63, label %for.body3.i60.preheader1272

for.body3.i60.preheader1272:                      ; preds = %for.body3.i60.preheader, %middle.block1215
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1221, %middle.block1215 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1272, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1272 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1215, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting288
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1244 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1244, label %for.body3.i99.preheader1269, label %vector.ph1245

vector.ph1245:                                    ; preds = %for.body3.i99.preheader
  %n.vec1247 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1243

vector.body1243:                                  ; preds = %vector.body1243, %vector.ph1245
  %index1248 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1249, %vector.body1243 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i91, i64 %index1248
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1252 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1252, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1249 = add i64 %index1248, 4
  %68 = icmp eq i64 %index.next1249, %n.vec1247
  br i1 %68, label %middle.block1241, label %vector.body1243, !llvm.loop !62

middle.block1241:                                 ; preds = %vector.body1243
  %cmp.n1251 = icmp eq i64 %indvars.iv21.i91, %n.vec1247
  br i1 %cmp.n1251, label %for.inc6.i102, label %for.body3.i99.preheader1269

for.body3.i99.preheader1269:                      ; preds = %for.body3.i99.preheader, %middle.block1241
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1247, %middle.block1241 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1269, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1269 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1241, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1256 = phi i64 [ %indvar.next1257, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1256, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1258 = icmp ult i64 %88, 4
  br i1 %min.iters.check1258, label %polly.loop_header191.preheader, label %vector.ph1259

vector.ph1259:                                    ; preds = %polly.loop_header
  %n.vec1261 = and i64 %88, -4
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %vector.ph1259
  %index1262 = phi i64 [ 0, %vector.ph1259 ], [ %index.next1263, %vector.body1255 ]
  %90 = shl nuw nsw i64 %index1262, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1266 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1266, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1263 = add i64 %index1262, 4
  %95 = icmp eq i64 %index.next1263, %n.vec1261
  br i1 %95, label %middle.block1253, label %vector.body1255, !llvm.loop !74

middle.block1253:                                 ; preds = %vector.body1255
  %cmp.n1265 = icmp eq i64 %88, %n.vec1261
  br i1 %cmp.n1265, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1253
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1261, %middle.block1253 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1253
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1257 = add i64 %indvar1256, 1
  br i1 %exitcond1031.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond1030.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1030.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, 20
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next203, 50
  br i1 %exitcond1029.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %112, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %98 = udiv i64 %polly.indvar208, 12
  %99 = mul nuw nsw i64 %98, 96
  %100 = sub nsw i64 %indvars.iv, %99
  %101 = add i64 %indvars.iv1020, %99
  %pexp.p_div_q.lhs.trunc = trunc i64 %polly.indvar208 to i8
  %pexp.p_div_q889 = udiv i8 %pexp.p_div_q.lhs.trunc, 12
  %pexp.p_div_q.zext = zext i8 %pexp.p_div_q889 to i64
  %102 = shl nsw i64 %polly.indvar208, 3
  %103 = mul nsw i64 %polly.indvar208, -8
  %104 = add nsw i64 %103, 1199
  %polly.access.mul.call1230.us = mul nsw i64 %polly.indvar208, 8000
  %105 = or i64 %102, 1
  %polly.access.mul.call1230.us.1 = mul nuw nsw i64 %105, 1000
  %106 = or i64 %102, 2
  %polly.access.mul.call1230.us.2 = mul nuw nsw i64 %106, 1000
  %107 = or i64 %102, 3
  %polly.access.mul.call1230.us.3 = mul nuw nsw i64 %107, 1000
  %108 = or i64 %102, 4
  %polly.access.mul.call1230.us.4 = mul nuw nsw i64 %108, 1000
  %109 = or i64 %102, 5
  %polly.access.mul.call1230.us.5 = mul nuw nsw i64 %109, 1000
  %110 = or i64 %102, 6
  %polly.access.mul.call1230.us.6 = mul nuw nsw i64 %110, 1000
  %111 = or i64 %102, 7
  %polly.access.mul.call1230.us.7 = mul nuw nsw i64 %111, 1000
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit248
  %112 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, -8
  %exitcond1028.not = icmp eq i64 %112, 150
  br i1 %exitcond1028.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit248, %polly.loop_header205
  %indvars.iv1022 = phi i64 [ %indvars.iv.next1023, %polly.loop_exit248 ], [ %101, %polly.loop_header205 ]
  %indvars.iv1018 = phi i64 [ %indvars.iv.next1019, %polly.loop_exit248 ], [ %100, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit248 ], [ %pexp.p_div_q.zext, %polly.loop_header205 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1018, i64 0)
  %113 = add i64 %smax, %indvars.iv1022
  %114 = mul nuw nsw i64 %polly.indvar214, 12
  %.not.not = icmp ugt i64 %114, %polly.indvar208
  %115 = mul nuw nsw i64 %polly.indvar214, 96
  %116 = add nsw i64 %115, %103
  %117 = icmp sgt i64 %116, 0
  %118 = select i1 %117, i64 %116, i64 0
  %119 = add nsw i64 %116, 95
  %120 = icmp slt i64 %104, %119
  %121 = select i1 %120, i64 %104, i64 %119
  %polly.loop_guard.not = icmp sgt i64 %118, %121
  br i1 %.not.not, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit235.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit235.us ], [ 0, %polly.loop_header211 ]
  %122 = add nuw nsw i64 %polly.indvar220.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  %polly.access.add.call1231.us = add nuw nsw i64 %122, %polly.access.mul.call1230.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1231.us.1 = add nuw nsw i64 %122, %polly.access.mul.call1230.us.1
  %polly.access.call1232.us.1 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.1
  %polly.access.call1232.load.us.1 = load double, double* %polly.access.call1232.us.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1232.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1231.us.2 = add nuw nsw i64 %122, %polly.access.mul.call1230.us.2
  %polly.access.call1232.us.2 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.2
  %polly.access.call1232.load.us.2 = load double, double* %polly.access.call1232.us.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1232.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1231.us.3 = add nuw nsw i64 %122, %polly.access.mul.call1230.us.3
  %polly.access.call1232.us.3 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.3
  %polly.access.call1232.load.us.3 = load double, double* %polly.access.call1232.us.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1232.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.access.add.call1231.us.4 = add nuw nsw i64 %122, %polly.access.mul.call1230.us.4
  %polly.access.call1232.us.4 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.4
  %polly.access.call1232.load.us.4 = load double, double* %polly.access.call1232.us.4, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 4
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.4
  store double %polly.access.call1232.load.us.4, double* %polly.access.Packed_MemRef_call1.us.4, align 8
  %polly.access.add.call1231.us.5 = add nuw nsw i64 %122, %polly.access.mul.call1230.us.5
  %polly.access.call1232.us.5 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.5
  %polly.access.call1232.load.us.5 = load double, double* %polly.access.call1232.us.5, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 5
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.5
  store double %polly.access.call1232.load.us.5, double* %polly.access.Packed_MemRef_call1.us.5, align 8
  %polly.access.add.call1231.us.6 = add nuw nsw i64 %122, %polly.access.mul.call1230.us.6
  %polly.access.call1232.us.6 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.6
  %polly.access.call1232.load.us.6 = load double, double* %polly.access.call1232.us.6, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 6
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.6
  store double %polly.access.call1232.load.us.6, double* %polly.access.Packed_MemRef_call1.us.6, align 8
  %polly.access.add.call1231.us.7 = add nuw nsw i64 %122, %polly.access.mul.call1230.us.7
  %polly.access.call1232.us.7 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.7
  %polly.access.call1232.load.us.7 = load double, double* %polly.access.call1232.us.7, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 7
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.7
  store double %polly.access.call1232.load.us.7, double* %polly.access.Packed_MemRef_call1.us.7, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_exit235.us, label %polly.loop_header233.us

polly.loop_header233.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header233.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_header233.us ], [ %118, %polly.loop_header217.us ]
  %123 = add nuw nsw i64 %polly.indvar236.us, %102
  %polly.access.mul.call1240.us = mul nsw i64 %123, 1000
  %polly.access.add.call1241.us = add nuw nsw i64 %122, %polly.access.mul.call1240.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1244.us = add nuw nsw i64 %polly.indvar236.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1245.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1245.us, align 8
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %polly.loop_cond238.not.not.us = icmp slt i64 %polly.indvar236.us, %121
  br i1 %polly.loop_cond238.not.not.us, label %polly.loop_header233.us, label %polly.loop_exit235.us

polly.loop_exit235.us:                            ; preds = %polly.loop_header233.us, %polly.loop_header217.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next221.us, 20
  br i1 %exitcond1017.not, label %polly.loop_header246.preheader, label %polly.loop_header217.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %polly.loop_guard.not, label %polly.loop_header246.preheader, label %polly.loop_header217

polly.loop_exit248:                               ; preds = %polly.loop_exit255, %polly.loop_header246.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp ult i64 %polly.indvar214, 12
  %indvars.iv.next1019 = add i64 %indvars.iv1018, -96
  %indvars.iv.next1023 = add i64 %indvars.iv1022, 96
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_exit235
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit235 ], [ 0, %polly.loop_header211.split ]
  %124 = add nuw nsw i64 %polly.indvar220, %97
  %polly.access.mul.Packed_MemRef_call1243 = mul nuw nsw i64 %polly.indvar220, 1200
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 20
  br i1 %exitcond.not, label %polly.loop_header246.preheader, label %polly.loop_header217

polly.loop_header246.preheader:                   ; preds = %polly.loop_exit235, %polly.loop_exit235.us, %polly.loop_header211.split
  %125 = sub nsw i64 %102, %115
  %126 = icmp sgt i64 %125, 0
  %127 = select i1 %126, i64 %125, i64 0
  %128 = mul nsw i64 %polly.indvar214, -96
  %129 = icmp slt i64 %128, -1104
  %130 = select i1 %129, i64 %128, i64 -1104
  %131 = add nsw i64 %130, 1199
  %polly.loop_guard256.not = icmp sgt i64 %127, %131
  br i1 %polly.loop_guard256.not, label %polly.loop_exit248, label %polly.loop_header246

polly.loop_header233:                             ; preds = %polly.loop_header217, %polly.loop_header233
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_header233 ], [ %118, %polly.loop_header217 ]
  %132 = add nuw nsw i64 %polly.indvar236, %102
  %polly.access.mul.call1240 = mul nsw i64 %132, 1000
  %polly.access.add.call1241 = add nuw nsw i64 %124, %polly.access.mul.call1240
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1241
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1244 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call1243
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp slt i64 %polly.indvar236, %121
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.loop_header246:                             ; preds = %polly.loop_header246.preheader, %polly.loop_exit255
  %polly.indvar249 = phi i64 [ %polly.indvar_next250, %polly.loop_exit255 ], [ 0, %polly.loop_header246.preheader ]
  %133 = add nuw nsw i64 %polly.indvar249, %97
  %polly.access.mul.Packed_MemRef_call1268 = mul nuw nsw i64 %polly.indvar249, 1200
  %134 = shl i64 %133, 3
  br label %polly.loop_header253

polly.loop_exit255:                               ; preds = %polly.loop_exit263
  %polly.indvar_next250 = add nuw nsw i64 %polly.indvar249, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar_next250, 20
  br i1 %exitcond1027.not, label %polly.loop_exit248, label %polly.loop_header246

polly.loop_header253:                             ; preds = %polly.loop_header246, %polly.loop_exit263
  %indvars.iv1024 = phi i64 [ %113, %polly.loop_header246 ], [ %indvars.iv.next1025, %polly.loop_exit263 ]
  %polly.indvar257 = phi i64 [ %127, %polly.loop_header246 ], [ %polly.indvar_next258, %polly.loop_exit263 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1024, i64 7)
  %135 = add nsw i64 %polly.indvar257, %116
  %polly.loop_guard2641111 = icmp sgt i64 %135, -1
  br i1 %polly.loop_guard2641111, label %polly.loop_header261.preheader, label %polly.loop_exit263

polly.loop_header261.preheader:                   ; preds = %polly.loop_header253
  %136 = add nuw nsw i64 %polly.indvar257, %115
  %137 = mul i64 %136, 8000
  %138 = add i64 %137, %134
  %scevgep272 = getelementptr i8, i8* %call2, i64 %138
  %scevgep272273 = bitcast i8* %scevgep272 to double*
  %_p_scalar_274 = load double, double* %scevgep272273, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1279 = add nsw i64 %135, %polly.access.mul.Packed_MemRef_call1268
  %polly.access.Packed_MemRef_call1280 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1279
  %_p_scalar_281 = load double, double* %polly.access.Packed_MemRef_call1280, align 8
  %139 = mul i64 %136, 9600
  br label %polly.loop_header261

polly.loop_exit263:                               ; preds = %polly.loop_header261, %polly.loop_header253
  %polly.indvar_next258 = add nuw nsw i64 %polly.indvar257, 1
  %polly.loop_cond259.not.not = icmp slt i64 %polly.indvar257, %131
  %indvars.iv.next1025 = add i64 %indvars.iv1024, 1
  br i1 %polly.loop_cond259.not.not, label %polly.loop_header253, label %polly.loop_exit255

polly.loop_header261:                             ; preds = %polly.loop_header261.preheader, %polly.loop_header261
  %polly.indvar265 = phi i64 [ %polly.indvar_next266, %polly.loop_header261 ], [ 0, %polly.loop_header261.preheader ]
  %140 = add nuw nsw i64 %polly.indvar265, %102
  %polly.access.add.Packed_MemRef_call1269 = add nuw nsw i64 %polly.indvar265, %polly.access.mul.Packed_MemRef_call1268
  %polly.access.Packed_MemRef_call1270 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1269
  %_p_scalar_271 = load double, double* %polly.access.Packed_MemRef_call1270, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_274, %_p_scalar_271
  %141 = mul nuw nsw i64 %140, 8000
  %142 = add nuw nsw i64 %141, %134
  %scevgep275 = getelementptr i8, i8* %call2, i64 %142
  %scevgep275276 = bitcast i8* %scevgep275 to double*
  %_p_scalar_277 = load double, double* %scevgep275276, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114 = fmul fast double %_p_scalar_281, %_p_scalar_277
  %143 = shl i64 %140, 3
  %144 = add i64 %143, %139
  %scevgep282 = getelementptr i8, i8* %call, i64 %144
  %scevgep282283 = bitcast i8* %scevgep282 to double*
  %_p_scalar_284 = load double, double* %scevgep282283, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_284
  store double %p_add42.i118, double* %scevgep282283, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next266 = add nuw nsw i64 %polly.indvar265, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar265, %smin
  br i1 %exitcond1026.not, label %polly.loop_exit263, label %polly.loop_header261

polly.start287:                                   ; preds = %kernel_syr2k.exit
  %malloccall289 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header373

polly.exiting288:                                 ; preds = %polly.loop_exit397
  tail call void @free(i8* %malloccall289)
  br label %kernel_syr2k.exit90

polly.loop_header373:                             ; preds = %polly.loop_exit381, %polly.start287
  %indvar1230 = phi i64 [ %indvar.next1231, %polly.loop_exit381 ], [ 0, %polly.start287 ]
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_exit381 ], [ 1, %polly.start287 ]
  %145 = add i64 %indvar1230, 1
  %146 = mul nuw nsw i64 %polly.indvar376, 9600
  %scevgep385 = getelementptr i8, i8* %call, i64 %146
  %min.iters.check1232 = icmp ult i64 %145, 4
  br i1 %min.iters.check1232, label %polly.loop_header379.preheader, label %vector.ph1233

vector.ph1233:                                    ; preds = %polly.loop_header373
  %n.vec1235 = and i64 %145, -4
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %vector.ph1233
  %index1236 = phi i64 [ 0, %vector.ph1233 ], [ %index.next1237, %vector.body1229 ]
  %147 = shl nuw nsw i64 %index1236, 3
  %148 = getelementptr i8, i8* %scevgep385, i64 %147
  %149 = bitcast i8* %148 to <4 x double>*
  %wide.load1240 = load <4 x double>, <4 x double>* %149, align 8, !alias.scope !79, !noalias !81
  %150 = fmul fast <4 x double> %wide.load1240, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %151 = bitcast i8* %148 to <4 x double>*
  store <4 x double> %150, <4 x double>* %151, align 8, !alias.scope !79, !noalias !81
  %index.next1237 = add i64 %index1236, 4
  %152 = icmp eq i64 %index.next1237, %n.vec1235
  br i1 %152, label %middle.block1227, label %vector.body1229, !llvm.loop !85

middle.block1227:                                 ; preds = %vector.body1229
  %cmp.n1239 = icmp eq i64 %145, %n.vec1235
  br i1 %cmp.n1239, label %polly.loop_exit381, label %polly.loop_header379.preheader

polly.loop_header379.preheader:                   ; preds = %polly.loop_header373, %middle.block1227
  %polly.indvar382.ph = phi i64 [ 0, %polly.loop_header373 ], [ %n.vec1235, %middle.block1227 ]
  br label %polly.loop_header379

polly.loop_exit381:                               ; preds = %polly.loop_header379, %middle.block1227
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next377, 1200
  %indvar.next1231 = add i64 %indvar1230, 1
  br i1 %exitcond1052.not, label %polly.loop_header389.preheader, label %polly.loop_header373

polly.loop_header389.preheader:                   ; preds = %polly.loop_exit381
  %Packed_MemRef_call1290 = bitcast i8* %malloccall289 to double*
  br label %polly.loop_header389

polly.loop_header379:                             ; preds = %polly.loop_header379.preheader, %polly.loop_header379
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_header379 ], [ %polly.indvar382.ph, %polly.loop_header379.preheader ]
  %153 = shl nuw nsw i64 %polly.indvar382, 3
  %scevgep386 = getelementptr i8, i8* %scevgep385, i64 %153
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_388, 1.200000e+00
  store double %p_mul.i57, double* %scevgep386387, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar_next383, %polly.indvar376
  br i1 %exitcond1051.not, label %polly.loop_exit381, label %polly.loop_header379, !llvm.loop !86

polly.loop_header389:                             ; preds = %polly.loop_header389.preheader, %polly.loop_exit397
  %polly.indvar392 = phi i64 [ %polly.indvar_next393, %polly.loop_exit397 ], [ 0, %polly.loop_header389.preheader ]
  %154 = mul nuw nsw i64 %polly.indvar392, 20
  br label %polly.loop_header395

polly.loop_exit397:                               ; preds = %polly.loop_exit404
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next393, 50
  br i1 %exitcond1050.not, label %polly.exiting288, label %polly.loop_header389

polly.loop_header395:                             ; preds = %polly.loop_exit404, %polly.loop_header389
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %indvars.iv1035 = phi i64 [ %indvars.iv.next1036, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %polly.indvar398 = phi i64 [ %169, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %155 = udiv i64 %polly.indvar398, 12
  %156 = mul nuw nsw i64 %155, 96
  %157 = sub nsw i64 %indvars.iv1035, %156
  %158 = add i64 %indvars.iv1040, %156
  %pexp.p_div_q401.lhs.trunc = trunc i64 %polly.indvar398 to i8
  %pexp.p_div_q401888 = udiv i8 %pexp.p_div_q401.lhs.trunc, 12
  %pexp.p_div_q401.zext = zext i8 %pexp.p_div_q401888 to i64
  %159 = shl nsw i64 %polly.indvar398, 3
  %160 = mul nsw i64 %polly.indvar398, -8
  %161 = add nsw i64 %160, 1199
  %polly.access.mul.call1425.us = mul nsw i64 %polly.indvar398, 8000
  %162 = or i64 %159, 1
  %polly.access.mul.call1425.us.1 = mul nuw nsw i64 %162, 1000
  %163 = or i64 %159, 2
  %polly.access.mul.call1425.us.2 = mul nuw nsw i64 %163, 1000
  %164 = or i64 %159, 3
  %polly.access.mul.call1425.us.3 = mul nuw nsw i64 %164, 1000
  %165 = or i64 %159, 4
  %polly.access.mul.call1425.us.4 = mul nuw nsw i64 %165, 1000
  %166 = or i64 %159, 5
  %polly.access.mul.call1425.us.5 = mul nuw nsw i64 %166, 1000
  %167 = or i64 %159, 6
  %polly.access.mul.call1425.us.6 = mul nuw nsw i64 %167, 1000
  %168 = or i64 %159, 7
  %polly.access.mul.call1425.us.7 = mul nuw nsw i64 %168, 1000
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit445
  %169 = add nuw nsw i64 %polly.indvar398, 1
  %indvars.iv.next1036 = add nuw nsw i64 %indvars.iv1035, 8
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -8
  %exitcond1049.not = icmp eq i64 %169, 150
  br i1 %exitcond1049.not, label %polly.loop_exit397, label %polly.loop_header395

polly.loop_header402:                             ; preds = %polly.loop_exit445, %polly.loop_header395
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit445 ], [ %158, %polly.loop_header395 ]
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038, %polly.loop_exit445 ], [ %157, %polly.loop_header395 ]
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit445 ], [ %pexp.p_div_q401.zext, %polly.loop_header395 ]
  %smax1039 = call i64 @llvm.smax.i64(i64 %indvars.iv1037, i64 0)
  %170 = add i64 %smax1039, %indvars.iv1042
  %171 = mul nuw nsw i64 %polly.indvar405, 12
  %.not.not885 = icmp ugt i64 %171, %polly.indvar398
  %172 = mul nuw nsw i64 %polly.indvar405, 96
  %173 = add nsw i64 %172, %160
  %174 = icmp sgt i64 %173, 0
  %175 = select i1 %174, i64 %173, i64 0
  %176 = add nsw i64 %173, 95
  %177 = icmp slt i64 %161, %176
  %178 = select i1 %177, i64 %161, i64 %176
  %polly.loop_guard432.not = icmp sgt i64 %175, %178
  br i1 %.not.not885, label %polly.loop_header408.us, label %polly.loop_header402.split

polly.loop_header408.us:                          ; preds = %polly.loop_header402, %polly.loop_exit431.us
  %polly.indvar411.us = phi i64 [ %polly.indvar_next412.us, %polly.loop_exit431.us ], [ 0, %polly.loop_header402 ]
  %179 = add nuw nsw i64 %polly.indvar411.us, %154
  %polly.access.mul.Packed_MemRef_call1290.us = mul nuw nsw i64 %polly.indvar411.us, 1200
  %polly.access.add.call1426.us = add nuw nsw i64 %179, %polly.access.mul.call1425.us
  %polly.access.call1427.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us
  %polly.access.call1427.load.us = load double, double* %polly.access.call1427.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.Packed_MemRef_call1290.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.mul.Packed_MemRef_call1290.us
  store double %polly.access.call1427.load.us, double* %polly.access.Packed_MemRef_call1290.us, align 8
  %polly.access.add.call1426.us.1 = add nuw nsw i64 %179, %polly.access.mul.call1425.us.1
  %polly.access.call1427.us.1 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.1
  %polly.access.call1427.load.us.1 = load double, double* %polly.access.call1427.us.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 1
  %polly.access.Packed_MemRef_call1290.us.1 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.1
  store double %polly.access.call1427.load.us.1, double* %polly.access.Packed_MemRef_call1290.us.1, align 8
  %polly.access.add.call1426.us.2 = add nuw nsw i64 %179, %polly.access.mul.call1425.us.2
  %polly.access.call1427.us.2 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.2
  %polly.access.call1427.load.us.2 = load double, double* %polly.access.call1427.us.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 2
  %polly.access.Packed_MemRef_call1290.us.2 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.2
  store double %polly.access.call1427.load.us.2, double* %polly.access.Packed_MemRef_call1290.us.2, align 8
  %polly.access.add.call1426.us.3 = add nuw nsw i64 %179, %polly.access.mul.call1425.us.3
  %polly.access.call1427.us.3 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.3
  %polly.access.call1427.load.us.3 = load double, double* %polly.access.call1427.us.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 3
  %polly.access.Packed_MemRef_call1290.us.3 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.3
  store double %polly.access.call1427.load.us.3, double* %polly.access.Packed_MemRef_call1290.us.3, align 8
  %polly.access.add.call1426.us.4 = add nuw nsw i64 %179, %polly.access.mul.call1425.us.4
  %polly.access.call1427.us.4 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.4
  %polly.access.call1427.load.us.4 = load double, double* %polly.access.call1427.us.4, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 4
  %polly.access.Packed_MemRef_call1290.us.4 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.4
  store double %polly.access.call1427.load.us.4, double* %polly.access.Packed_MemRef_call1290.us.4, align 8
  %polly.access.add.call1426.us.5 = add nuw nsw i64 %179, %polly.access.mul.call1425.us.5
  %polly.access.call1427.us.5 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.5
  %polly.access.call1427.load.us.5 = load double, double* %polly.access.call1427.us.5, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 5
  %polly.access.Packed_MemRef_call1290.us.5 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.5
  store double %polly.access.call1427.load.us.5, double* %polly.access.Packed_MemRef_call1290.us.5, align 8
  %polly.access.add.call1426.us.6 = add nuw nsw i64 %179, %polly.access.mul.call1425.us.6
  %polly.access.call1427.us.6 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.6
  %polly.access.call1427.load.us.6 = load double, double* %polly.access.call1427.us.6, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 6
  %polly.access.Packed_MemRef_call1290.us.6 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.6
  store double %polly.access.call1427.load.us.6, double* %polly.access.Packed_MemRef_call1290.us.6, align 8
  %polly.access.add.call1426.us.7 = add nuw nsw i64 %179, %polly.access.mul.call1425.us.7
  %polly.access.call1427.us.7 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.7
  %polly.access.call1427.load.us.7 = load double, double* %polly.access.call1427.us.7, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 7
  %polly.access.Packed_MemRef_call1290.us.7 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.7
  store double %polly.access.call1427.load.us.7, double* %polly.access.Packed_MemRef_call1290.us.7, align 8
  br i1 %polly.loop_guard432.not, label %polly.loop_exit431.us, label %polly.loop_header429.us

polly.loop_header429.us:                          ; preds = %polly.loop_header408.us, %polly.loop_header429.us
  %polly.indvar433.us = phi i64 [ %polly.indvar_next434.us, %polly.loop_header429.us ], [ %175, %polly.loop_header408.us ]
  %180 = add nuw nsw i64 %polly.indvar433.us, %159
  %polly.access.mul.call1437.us = mul nsw i64 %180, 1000
  %polly.access.add.call1438.us = add nuw nsw i64 %179, %polly.access.mul.call1437.us
  %polly.access.call1439.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1438.us
  %polly.access.call1439.load.us = load double, double* %polly.access.call1439.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290441.us = add nuw nsw i64 %polly.indvar433.us, %polly.access.mul.Packed_MemRef_call1290.us
  %polly.access.Packed_MemRef_call1290442.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290441.us
  store double %polly.access.call1439.load.us, double* %polly.access.Packed_MemRef_call1290442.us, align 8
  %polly.indvar_next434.us = add nuw nsw i64 %polly.indvar433.us, 1
  %polly.loop_cond435.not.not.us = icmp slt i64 %polly.indvar433.us, %178
  br i1 %polly.loop_cond435.not.not.us, label %polly.loop_header429.us, label %polly.loop_exit431.us

polly.loop_exit431.us:                            ; preds = %polly.loop_header429.us, %polly.loop_header408.us
  %polly.indvar_next412.us = add nuw nsw i64 %polly.indvar411.us, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next412.us, 20
  br i1 %exitcond1034.not, label %polly.loop_header443.preheader, label %polly.loop_header408.us

polly.loop_header402.split:                       ; preds = %polly.loop_header402
  br i1 %polly.loop_guard432.not, label %polly.loop_header443.preheader, label %polly.loop_header408

polly.loop_exit445:                               ; preds = %polly.loop_exit452, %polly.loop_header443.preheader
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %polly.loop_cond407 = icmp ult i64 %polly.indvar405, 12
  %indvars.iv.next1038 = add i64 %indvars.iv1037, -96
  %indvars.iv.next1043 = add i64 %indvars.iv1042, 96
  br i1 %polly.loop_cond407, label %polly.loop_header402, label %polly.loop_exit404

polly.loop_header408:                             ; preds = %polly.loop_header402.split, %polly.loop_exit431
  %polly.indvar411 = phi i64 [ %polly.indvar_next412, %polly.loop_exit431 ], [ 0, %polly.loop_header402.split ]
  %181 = add nuw nsw i64 %polly.indvar411, %154
  %polly.access.mul.Packed_MemRef_call1290440 = mul nuw nsw i64 %polly.indvar411, 1200
  br label %polly.loop_header429

polly.loop_exit431:                               ; preds = %polly.loop_header429
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar_next412, 20
  br i1 %exitcond1032.not, label %polly.loop_header443.preheader, label %polly.loop_header408

polly.loop_header443.preheader:                   ; preds = %polly.loop_exit431, %polly.loop_exit431.us, %polly.loop_header402.split
  %182 = sub nsw i64 %159, %172
  %183 = icmp sgt i64 %182, 0
  %184 = select i1 %183, i64 %182, i64 0
  %185 = mul nsw i64 %polly.indvar405, -96
  %186 = icmp slt i64 %185, -1104
  %187 = select i1 %186, i64 %185, i64 -1104
  %188 = add nsw i64 %187, 1199
  %polly.loop_guard453.not = icmp sgt i64 %184, %188
  br i1 %polly.loop_guard453.not, label %polly.loop_exit445, label %polly.loop_header443

polly.loop_header429:                             ; preds = %polly.loop_header408, %polly.loop_header429
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_header429 ], [ %175, %polly.loop_header408 ]
  %189 = add nuw nsw i64 %polly.indvar433, %159
  %polly.access.mul.call1437 = mul nsw i64 %189, 1000
  %polly.access.add.call1438 = add nuw nsw i64 %181, %polly.access.mul.call1437
  %polly.access.call1439 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1438
  %polly.access.call1439.load = load double, double* %polly.access.call1439, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290441 = add nuw nsw i64 %polly.indvar433, %polly.access.mul.Packed_MemRef_call1290440
  %polly.access.Packed_MemRef_call1290442 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290441
  store double %polly.access.call1439.load, double* %polly.access.Packed_MemRef_call1290442, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %polly.loop_cond435.not.not = icmp slt i64 %polly.indvar433, %178
  br i1 %polly.loop_cond435.not.not, label %polly.loop_header429, label %polly.loop_exit431

polly.loop_header443:                             ; preds = %polly.loop_header443.preheader, %polly.loop_exit452
  %polly.indvar446 = phi i64 [ %polly.indvar_next447, %polly.loop_exit452 ], [ 0, %polly.loop_header443.preheader ]
  %190 = add nuw nsw i64 %polly.indvar446, %154
  %polly.access.mul.Packed_MemRef_call1290465 = mul nuw nsw i64 %polly.indvar446, 1200
  %191 = shl i64 %190, 3
  br label %polly.loop_header450

polly.loop_exit452:                               ; preds = %polly.loop_exit460
  %polly.indvar_next447 = add nuw nsw i64 %polly.indvar446, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next447, 20
  br i1 %exitcond1048.not, label %polly.loop_exit445, label %polly.loop_header443

polly.loop_header450:                             ; preds = %polly.loop_header443, %polly.loop_exit460
  %indvars.iv1044 = phi i64 [ %170, %polly.loop_header443 ], [ %indvars.iv.next1045, %polly.loop_exit460 ]
  %polly.indvar454 = phi i64 [ %184, %polly.loop_header443 ], [ %polly.indvar_next455, %polly.loop_exit460 ]
  %smin1046 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 7)
  %192 = add nsw i64 %polly.indvar454, %173
  %polly.loop_guard4611112 = icmp sgt i64 %192, -1
  br i1 %polly.loop_guard4611112, label %polly.loop_header458.preheader, label %polly.loop_exit460

polly.loop_header458.preheader:                   ; preds = %polly.loop_header450
  %193 = add nuw nsw i64 %polly.indvar454, %172
  %194 = mul i64 %193, 8000
  %195 = add i64 %194, %191
  %scevgep469 = getelementptr i8, i8* %call2, i64 %195
  %scevgep469470 = bitcast i8* %scevgep469 to double*
  %_p_scalar_471 = load double, double* %scevgep469470, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1290476 = add nsw i64 %192, %polly.access.mul.Packed_MemRef_call1290465
  %polly.access.Packed_MemRef_call1290477 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290476
  %_p_scalar_478 = load double, double* %polly.access.Packed_MemRef_call1290477, align 8
  %196 = mul i64 %193, 9600
  br label %polly.loop_header458

polly.loop_exit460:                               ; preds = %polly.loop_header458, %polly.loop_header450
  %polly.indvar_next455 = add nuw nsw i64 %polly.indvar454, 1
  %polly.loop_cond456.not.not = icmp slt i64 %polly.indvar454, %188
  %indvars.iv.next1045 = add i64 %indvars.iv1044, 1
  br i1 %polly.loop_cond456.not.not, label %polly.loop_header450, label %polly.loop_exit452

polly.loop_header458:                             ; preds = %polly.loop_header458.preheader, %polly.loop_header458
  %polly.indvar462 = phi i64 [ %polly.indvar_next463, %polly.loop_header458 ], [ 0, %polly.loop_header458.preheader ]
  %197 = add nuw nsw i64 %polly.indvar462, %159
  %polly.access.add.Packed_MemRef_call1290466 = add nuw nsw i64 %polly.indvar462, %polly.access.mul.Packed_MemRef_call1290465
  %polly.access.Packed_MemRef_call1290467 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290466
  %_p_scalar_468 = load double, double* %polly.access.Packed_MemRef_call1290467, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_471, %_p_scalar_468
  %198 = mul nuw nsw i64 %197, 8000
  %199 = add nuw nsw i64 %198, %191
  %scevgep472 = getelementptr i8, i8* %call2, i64 %199
  %scevgep472473 = bitcast i8* %scevgep472 to double*
  %_p_scalar_474 = load double, double* %scevgep472473, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75 = fmul fast double %_p_scalar_478, %_p_scalar_474
  %200 = shl i64 %197, 3
  %201 = add i64 %200, %196
  %scevgep479 = getelementptr i8, i8* %call, i64 %201
  %scevgep479480 = bitcast i8* %scevgep479 to double*
  %_p_scalar_481 = load double, double* %scevgep479480, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_481
  store double %p_add42.i79, double* %scevgep479480, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next463 = add nuw nsw i64 %polly.indvar462, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar462, %smin1046
  br i1 %exitcond1047.not, label %polly.loop_exit460, label %polly.loop_header458

polly.start484:                                   ; preds = %init_array.exit
  %malloccall486 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header570

polly.exiting485:                                 ; preds = %polly.loop_exit594
  tail call void @free(i8* %malloccall486)
  br label %kernel_syr2k.exit

polly.loop_header570:                             ; preds = %polly.loop_exit578, %polly.start484
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit578 ], [ 0, %polly.start484 ]
  %polly.indvar573 = phi i64 [ %polly.indvar_next574, %polly.loop_exit578 ], [ 1, %polly.start484 ]
  %202 = add i64 %indvar, 1
  %203 = mul nuw nsw i64 %polly.indvar573, 9600
  %scevgep582 = getelementptr i8, i8* %call, i64 %203
  %min.iters.check1206 = icmp ult i64 %202, 4
  br i1 %min.iters.check1206, label %polly.loop_header576.preheader, label %vector.ph1207

vector.ph1207:                                    ; preds = %polly.loop_header570
  %n.vec1209 = and i64 %202, -4
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %vector.ph1207
  %index1210 = phi i64 [ 0, %vector.ph1207 ], [ %index.next1211, %vector.body1205 ]
  %204 = shl nuw nsw i64 %index1210, 3
  %205 = getelementptr i8, i8* %scevgep582, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  %wide.load1214 = load <4 x double>, <4 x double>* %206, align 8, !alias.scope !89, !noalias !91
  %207 = fmul fast <4 x double> %wide.load1214, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %208 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %207, <4 x double>* %208, align 8, !alias.scope !89, !noalias !91
  %index.next1211 = add i64 %index1210, 4
  %209 = icmp eq i64 %index.next1211, %n.vec1209
  br i1 %209, label %middle.block1203, label %vector.body1205, !llvm.loop !95

middle.block1203:                                 ; preds = %vector.body1205
  %cmp.n1213 = icmp eq i64 %202, %n.vec1209
  br i1 %cmp.n1213, label %polly.loop_exit578, label %polly.loop_header576.preheader

polly.loop_header576.preheader:                   ; preds = %polly.loop_header570, %middle.block1203
  %polly.indvar579.ph = phi i64 [ 0, %polly.loop_header570 ], [ %n.vec1209, %middle.block1203 ]
  br label %polly.loop_header576

polly.loop_exit578:                               ; preds = %polly.loop_header576, %middle.block1203
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next574, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1073.not, label %polly.loop_header586.preheader, label %polly.loop_header570

polly.loop_header586.preheader:                   ; preds = %polly.loop_exit578
  %Packed_MemRef_call1487 = bitcast i8* %malloccall486 to double*
  br label %polly.loop_header586

polly.loop_header576:                             ; preds = %polly.loop_header576.preheader, %polly.loop_header576
  %polly.indvar579 = phi i64 [ %polly.indvar_next580, %polly.loop_header576 ], [ %polly.indvar579.ph, %polly.loop_header576.preheader ]
  %210 = shl nuw nsw i64 %polly.indvar579, 3
  %scevgep583 = getelementptr i8, i8* %scevgep582, i64 %210
  %scevgep583584 = bitcast i8* %scevgep583 to double*
  %_p_scalar_585 = load double, double* %scevgep583584, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_585, 1.200000e+00
  store double %p_mul.i, double* %scevgep583584, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next580 = add nuw nsw i64 %polly.indvar579, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar_next580, %polly.indvar573
  br i1 %exitcond1072.not, label %polly.loop_exit578, label %polly.loop_header576, !llvm.loop !96

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_exit594
  %polly.indvar589 = phi i64 [ %polly.indvar_next590, %polly.loop_exit594 ], [ 0, %polly.loop_header586.preheader ]
  %211 = mul nuw nsw i64 %polly.indvar589, 20
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit601
  %polly.indvar_next590 = add nuw nsw i64 %polly.indvar589, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next590, 50
  br i1 %exitcond1071.not, label %polly.exiting485, label %polly.loop_header586

polly.loop_header592:                             ; preds = %polly.loop_exit601, %polly.loop_header586
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %polly.indvar595 = phi i64 [ %226, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %212 = udiv i64 %polly.indvar595, 12
  %213 = mul nuw nsw i64 %212, 96
  %214 = sub nsw i64 %indvars.iv1056, %213
  %215 = add i64 %indvars.iv1061, %213
  %pexp.p_div_q598.lhs.trunc = trunc i64 %polly.indvar595 to i8
  %pexp.p_div_q598887 = udiv i8 %pexp.p_div_q598.lhs.trunc, 12
  %pexp.p_div_q598.zext = zext i8 %pexp.p_div_q598887 to i64
  %216 = shl nsw i64 %polly.indvar595, 3
  %217 = mul nsw i64 %polly.indvar595, -8
  %218 = add nsw i64 %217, 1199
  %polly.access.mul.call1622.us = mul nsw i64 %polly.indvar595, 8000
  %219 = or i64 %216, 1
  %polly.access.mul.call1622.us.1 = mul nuw nsw i64 %219, 1000
  %220 = or i64 %216, 2
  %polly.access.mul.call1622.us.2 = mul nuw nsw i64 %220, 1000
  %221 = or i64 %216, 3
  %polly.access.mul.call1622.us.3 = mul nuw nsw i64 %221, 1000
  %222 = or i64 %216, 4
  %polly.access.mul.call1622.us.4 = mul nuw nsw i64 %222, 1000
  %223 = or i64 %216, 5
  %polly.access.mul.call1622.us.5 = mul nuw nsw i64 %223, 1000
  %224 = or i64 %216, 6
  %polly.access.mul.call1622.us.6 = mul nuw nsw i64 %224, 1000
  %225 = or i64 %216, 7
  %polly.access.mul.call1622.us.7 = mul nuw nsw i64 %225, 1000
  br label %polly.loop_header599

polly.loop_exit601:                               ; preds = %polly.loop_exit642
  %226 = add nuw nsw i64 %polly.indvar595, 1
  %indvars.iv.next1057 = add nuw nsw i64 %indvars.iv1056, 8
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, -8
  %exitcond1070.not = icmp eq i64 %226, 150
  br i1 %exitcond1070.not, label %polly.loop_exit594, label %polly.loop_header592

polly.loop_header599:                             ; preds = %polly.loop_exit642, %polly.loop_header592
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit642 ], [ %215, %polly.loop_header592 ]
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit642 ], [ %214, %polly.loop_header592 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit642 ], [ %pexp.p_div_q598.zext, %polly.loop_header592 ]
  %smax1060 = call i64 @llvm.smax.i64(i64 %indvars.iv1058, i64 0)
  %227 = add i64 %smax1060, %indvars.iv1063
  %228 = mul nuw nsw i64 %polly.indvar602, 12
  %.not.not886 = icmp ugt i64 %228, %polly.indvar595
  %229 = mul nuw nsw i64 %polly.indvar602, 96
  %230 = add nsw i64 %229, %217
  %231 = icmp sgt i64 %230, 0
  %232 = select i1 %231, i64 %230, i64 0
  %233 = add nsw i64 %230, 95
  %234 = icmp slt i64 %218, %233
  %235 = select i1 %234, i64 %218, i64 %233
  %polly.loop_guard629.not = icmp sgt i64 %232, %235
  br i1 %.not.not886, label %polly.loop_header605.us, label %polly.loop_header599.split

polly.loop_header605.us:                          ; preds = %polly.loop_header599, %polly.loop_exit628.us
  %polly.indvar608.us = phi i64 [ %polly.indvar_next609.us, %polly.loop_exit628.us ], [ 0, %polly.loop_header599 ]
  %236 = add nuw nsw i64 %polly.indvar608.us, %211
  %polly.access.mul.Packed_MemRef_call1487.us = mul nuw nsw i64 %polly.indvar608.us, 1200
  %polly.access.add.call1623.us = add nuw nsw i64 %236, %polly.access.mul.call1622.us
  %polly.access.call1624.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us
  %polly.access.call1624.load.us = load double, double* %polly.access.call1624.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.Packed_MemRef_call1487.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.mul.Packed_MemRef_call1487.us
  store double %polly.access.call1624.load.us, double* %polly.access.Packed_MemRef_call1487.us, align 8
  %polly.access.add.call1623.us.1 = add nuw nsw i64 %236, %polly.access.mul.call1622.us.1
  %polly.access.call1624.us.1 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.1
  %polly.access.call1624.load.us.1 = load double, double* %polly.access.call1624.us.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 1
  %polly.access.Packed_MemRef_call1487.us.1 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.1
  store double %polly.access.call1624.load.us.1, double* %polly.access.Packed_MemRef_call1487.us.1, align 8
  %polly.access.add.call1623.us.2 = add nuw nsw i64 %236, %polly.access.mul.call1622.us.2
  %polly.access.call1624.us.2 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.2
  %polly.access.call1624.load.us.2 = load double, double* %polly.access.call1624.us.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 2
  %polly.access.Packed_MemRef_call1487.us.2 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.2
  store double %polly.access.call1624.load.us.2, double* %polly.access.Packed_MemRef_call1487.us.2, align 8
  %polly.access.add.call1623.us.3 = add nuw nsw i64 %236, %polly.access.mul.call1622.us.3
  %polly.access.call1624.us.3 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.3
  %polly.access.call1624.load.us.3 = load double, double* %polly.access.call1624.us.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 3
  %polly.access.Packed_MemRef_call1487.us.3 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.3
  store double %polly.access.call1624.load.us.3, double* %polly.access.Packed_MemRef_call1487.us.3, align 8
  %polly.access.add.call1623.us.4 = add nuw nsw i64 %236, %polly.access.mul.call1622.us.4
  %polly.access.call1624.us.4 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.4
  %polly.access.call1624.load.us.4 = load double, double* %polly.access.call1624.us.4, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 4
  %polly.access.Packed_MemRef_call1487.us.4 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.4
  store double %polly.access.call1624.load.us.4, double* %polly.access.Packed_MemRef_call1487.us.4, align 8
  %polly.access.add.call1623.us.5 = add nuw nsw i64 %236, %polly.access.mul.call1622.us.5
  %polly.access.call1624.us.5 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.5
  %polly.access.call1624.load.us.5 = load double, double* %polly.access.call1624.us.5, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 5
  %polly.access.Packed_MemRef_call1487.us.5 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.5
  store double %polly.access.call1624.load.us.5, double* %polly.access.Packed_MemRef_call1487.us.5, align 8
  %polly.access.add.call1623.us.6 = add nuw nsw i64 %236, %polly.access.mul.call1622.us.6
  %polly.access.call1624.us.6 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.6
  %polly.access.call1624.load.us.6 = load double, double* %polly.access.call1624.us.6, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 6
  %polly.access.Packed_MemRef_call1487.us.6 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.6
  store double %polly.access.call1624.load.us.6, double* %polly.access.Packed_MemRef_call1487.us.6, align 8
  %polly.access.add.call1623.us.7 = add nuw nsw i64 %236, %polly.access.mul.call1622.us.7
  %polly.access.call1624.us.7 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.7
  %polly.access.call1624.load.us.7 = load double, double* %polly.access.call1624.us.7, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 7
  %polly.access.Packed_MemRef_call1487.us.7 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.7
  store double %polly.access.call1624.load.us.7, double* %polly.access.Packed_MemRef_call1487.us.7, align 8
  br i1 %polly.loop_guard629.not, label %polly.loop_exit628.us, label %polly.loop_header626.us

polly.loop_header626.us:                          ; preds = %polly.loop_header605.us, %polly.loop_header626.us
  %polly.indvar630.us = phi i64 [ %polly.indvar_next631.us, %polly.loop_header626.us ], [ %232, %polly.loop_header605.us ]
  %237 = add nuw nsw i64 %polly.indvar630.us, %216
  %polly.access.mul.call1634.us = mul nsw i64 %237, 1000
  %polly.access.add.call1635.us = add nuw nsw i64 %236, %polly.access.mul.call1634.us
  %polly.access.call1636.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1635.us
  %polly.access.call1636.load.us = load double, double* %polly.access.call1636.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487638.us = add nuw nsw i64 %polly.indvar630.us, %polly.access.mul.Packed_MemRef_call1487.us
  %polly.access.Packed_MemRef_call1487639.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487638.us
  store double %polly.access.call1636.load.us, double* %polly.access.Packed_MemRef_call1487639.us, align 8
  %polly.indvar_next631.us = add nuw nsw i64 %polly.indvar630.us, 1
  %polly.loop_cond632.not.not.us = icmp slt i64 %polly.indvar630.us, %235
  br i1 %polly.loop_cond632.not.not.us, label %polly.loop_header626.us, label %polly.loop_exit628.us

polly.loop_exit628.us:                            ; preds = %polly.loop_header626.us, %polly.loop_header605.us
  %polly.indvar_next609.us = add nuw nsw i64 %polly.indvar608.us, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next609.us, 20
  br i1 %exitcond1055.not, label %polly.loop_header640.preheader, label %polly.loop_header605.us

polly.loop_header599.split:                       ; preds = %polly.loop_header599
  br i1 %polly.loop_guard629.not, label %polly.loop_header640.preheader, label %polly.loop_header605

polly.loop_exit642:                               ; preds = %polly.loop_exit649, %polly.loop_header640.preheader
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %polly.loop_cond604 = icmp ult i64 %polly.indvar602, 12
  %indvars.iv.next1059 = add i64 %indvars.iv1058, -96
  %indvars.iv.next1064 = add i64 %indvars.iv1063, 96
  br i1 %polly.loop_cond604, label %polly.loop_header599, label %polly.loop_exit601

polly.loop_header605:                             ; preds = %polly.loop_header599.split, %polly.loop_exit628
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_exit628 ], [ 0, %polly.loop_header599.split ]
  %238 = add nuw nsw i64 %polly.indvar608, %211
  %polly.access.mul.Packed_MemRef_call1487637 = mul nuw nsw i64 %polly.indvar608, 1200
  br label %polly.loop_header626

polly.loop_exit628:                               ; preds = %polly.loop_header626
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next609, 20
  br i1 %exitcond1053.not, label %polly.loop_header640.preheader, label %polly.loop_header605

polly.loop_header640.preheader:                   ; preds = %polly.loop_exit628, %polly.loop_exit628.us, %polly.loop_header599.split
  %239 = sub nsw i64 %216, %229
  %240 = icmp sgt i64 %239, 0
  %241 = select i1 %240, i64 %239, i64 0
  %242 = mul nsw i64 %polly.indvar602, -96
  %243 = icmp slt i64 %242, -1104
  %244 = select i1 %243, i64 %242, i64 -1104
  %245 = add nsw i64 %244, 1199
  %polly.loop_guard650.not = icmp sgt i64 %241, %245
  br i1 %polly.loop_guard650.not, label %polly.loop_exit642, label %polly.loop_header640

polly.loop_header626:                             ; preds = %polly.loop_header605, %polly.loop_header626
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_header626 ], [ %232, %polly.loop_header605 ]
  %246 = add nuw nsw i64 %polly.indvar630, %216
  %polly.access.mul.call1634 = mul nsw i64 %246, 1000
  %polly.access.add.call1635 = add nuw nsw i64 %238, %polly.access.mul.call1634
  %polly.access.call1636 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1635
  %polly.access.call1636.load = load double, double* %polly.access.call1636, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487638 = add nuw nsw i64 %polly.indvar630, %polly.access.mul.Packed_MemRef_call1487637
  %polly.access.Packed_MemRef_call1487639 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487638
  store double %polly.access.call1636.load, double* %polly.access.Packed_MemRef_call1487639, align 8
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %polly.loop_cond632.not.not = icmp slt i64 %polly.indvar630, %235
  br i1 %polly.loop_cond632.not.not, label %polly.loop_header626, label %polly.loop_exit628

polly.loop_header640:                             ; preds = %polly.loop_header640.preheader, %polly.loop_exit649
  %polly.indvar643 = phi i64 [ %polly.indvar_next644, %polly.loop_exit649 ], [ 0, %polly.loop_header640.preheader ]
  %247 = add nuw nsw i64 %polly.indvar643, %211
  %polly.access.mul.Packed_MemRef_call1487662 = mul nuw nsw i64 %polly.indvar643, 1200
  %248 = shl i64 %247, 3
  br label %polly.loop_header647

polly.loop_exit649:                               ; preds = %polly.loop_exit657
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar_next644, 20
  br i1 %exitcond1069.not, label %polly.loop_exit642, label %polly.loop_header640

polly.loop_header647:                             ; preds = %polly.loop_header640, %polly.loop_exit657
  %indvars.iv1065 = phi i64 [ %227, %polly.loop_header640 ], [ %indvars.iv.next1066, %polly.loop_exit657 ]
  %polly.indvar651 = phi i64 [ %241, %polly.loop_header640 ], [ %polly.indvar_next652, %polly.loop_exit657 ]
  %smin1067 = call i64 @llvm.smin.i64(i64 %indvars.iv1065, i64 7)
  %249 = add nsw i64 %polly.indvar651, %230
  %polly.loop_guard6581113 = icmp sgt i64 %249, -1
  br i1 %polly.loop_guard6581113, label %polly.loop_header655.preheader, label %polly.loop_exit657

polly.loop_header655.preheader:                   ; preds = %polly.loop_header647
  %250 = add nuw nsw i64 %polly.indvar651, %229
  %251 = mul i64 %250, 8000
  %252 = add i64 %251, %248
  %scevgep666 = getelementptr i8, i8* %call2, i64 %252
  %scevgep666667 = bitcast i8* %scevgep666 to double*
  %_p_scalar_668 = load double, double* %scevgep666667, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1487673 = add nsw i64 %249, %polly.access.mul.Packed_MemRef_call1487662
  %polly.access.Packed_MemRef_call1487674 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487673
  %_p_scalar_675 = load double, double* %polly.access.Packed_MemRef_call1487674, align 8
  %253 = mul i64 %250, 9600
  br label %polly.loop_header655

polly.loop_exit657:                               ; preds = %polly.loop_header655, %polly.loop_header647
  %polly.indvar_next652 = add nuw nsw i64 %polly.indvar651, 1
  %polly.loop_cond653.not.not = icmp slt i64 %polly.indvar651, %245
  %indvars.iv.next1066 = add i64 %indvars.iv1065, 1
  br i1 %polly.loop_cond653.not.not, label %polly.loop_header647, label %polly.loop_exit649

polly.loop_header655:                             ; preds = %polly.loop_header655.preheader, %polly.loop_header655
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_header655 ], [ 0, %polly.loop_header655.preheader ]
  %254 = add nuw nsw i64 %polly.indvar659, %216
  %polly.access.add.Packed_MemRef_call1487663 = add nuw nsw i64 %polly.indvar659, %polly.access.mul.Packed_MemRef_call1487662
  %polly.access.Packed_MemRef_call1487664 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487663
  %_p_scalar_665 = load double, double* %polly.access.Packed_MemRef_call1487664, align 8
  %p_mul27.i = fmul fast double %_p_scalar_668, %_p_scalar_665
  %255 = mul nuw nsw i64 %254, 8000
  %256 = add nuw nsw i64 %255, %248
  %scevgep669 = getelementptr i8, i8* %call2, i64 %256
  %scevgep669670 = bitcast i8* %scevgep669 to double*
  %_p_scalar_671 = load double, double* %scevgep669670, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i = fmul fast double %_p_scalar_675, %_p_scalar_671
  %257 = shl i64 %254, 3
  %258 = add i64 %257, %253
  %scevgep676 = getelementptr i8, i8* %call, i64 %258
  %scevgep676677 = bitcast i8* %scevgep676 to double*
  %_p_scalar_678 = load double, double* %scevgep676677, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_678
  store double %p_add42.i, double* %scevgep676677, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar659, %smin1067
  br i1 %exitcond1068.not, label %polly.loop_exit657, label %polly.loop_header655

polly.loop_header805:                             ; preds = %entry, %polly.loop_exit813
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit813 ], [ 0, %entry ]
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %entry ]
  %smin1100 = call i64 @llvm.smin.i64(i64 %indvars.iv1098, i64 -1168)
  %259 = shl nsw i64 %polly.indvar808, 5
  %260 = add nsw i64 %smin1100, 1199
  br label %polly.loop_header811

polly.loop_exit813:                               ; preds = %polly.loop_exit819
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, -32
  %exitcond1103.not = icmp eq i64 %polly.indvar_next809, 38
  br i1 %exitcond1103.not, label %polly.loop_header832, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_exit819, %polly.loop_header805
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit819 ], [ 0, %polly.loop_header805 ]
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_exit819 ], [ 0, %polly.loop_header805 ]
  %261 = mul nsw i64 %polly.indvar814, -32
  %smin1144 = call i64 @llvm.smin.i64(i64 %261, i64 -1168)
  %262 = add nsw i64 %smin1144, 1200
  %smin1096 = call i64 @llvm.smin.i64(i64 %indvars.iv1094, i64 -1168)
  %263 = shl nsw i64 %polly.indvar814, 5
  %264 = add nsw i64 %smin1096, 1199
  br label %polly.loop_header817

polly.loop_exit819:                               ; preds = %polly.loop_exit825
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %indvars.iv.next1095 = add nsw i64 %indvars.iv1094, -32
  %exitcond1102.not = icmp eq i64 %polly.indvar_next815, 38
  br i1 %exitcond1102.not, label %polly.loop_exit813, label %polly.loop_header811

polly.loop_header817:                             ; preds = %polly.loop_exit825, %polly.loop_header811
  %polly.indvar820 = phi i64 [ 0, %polly.loop_header811 ], [ %polly.indvar_next821, %polly.loop_exit825 ]
  %265 = add nuw nsw i64 %polly.indvar820, %259
  %266 = trunc i64 %265 to i32
  %267 = mul nuw nsw i64 %265, 9600
  %min.iters.check = icmp eq i64 %262, 0
  br i1 %min.iters.check, label %polly.loop_header823, label %vector.ph1145

vector.ph1145:                                    ; preds = %polly.loop_header817
  %broadcast.splatinsert1152 = insertelement <4 x i64> poison, i64 %263, i32 0
  %broadcast.splat1153 = shufflevector <4 x i64> %broadcast.splatinsert1152, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1154 = insertelement <4 x i32> poison, i32 %266, i32 0
  %broadcast.splat1155 = shufflevector <4 x i32> %broadcast.splatinsert1154, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1143

vector.body1143:                                  ; preds = %vector.body1143, %vector.ph1145
  %index1146 = phi i64 [ 0, %vector.ph1145 ], [ %index.next1147, %vector.body1143 ]
  %vec.ind1150 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1145 ], [ %vec.ind.next1151, %vector.body1143 ]
  %268 = add nuw nsw <4 x i64> %vec.ind1150, %broadcast.splat1153
  %269 = trunc <4 x i64> %268 to <4 x i32>
  %270 = mul <4 x i32> %broadcast.splat1155, %269
  %271 = add <4 x i32> %270, <i32 3, i32 3, i32 3, i32 3>
  %272 = urem <4 x i32> %271, <i32 1200, i32 1200, i32 1200, i32 1200>
  %273 = sitofp <4 x i32> %272 to <4 x double>
  %274 = fmul fast <4 x double> %273, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %275 = extractelement <4 x i64> %268, i32 0
  %276 = shl i64 %275, 3
  %277 = add nuw nsw i64 %276, %267
  %278 = getelementptr i8, i8* %call, i64 %277
  %279 = bitcast i8* %278 to <4 x double>*
  store <4 x double> %274, <4 x double>* %279, align 8, !alias.scope !99, !noalias !101
  %index.next1147 = add i64 %index1146, 4
  %vec.ind.next1151 = add <4 x i64> %vec.ind1150, <i64 4, i64 4, i64 4, i64 4>
  %280 = icmp eq i64 %index.next1147, %262
  br i1 %280, label %polly.loop_exit825, label %vector.body1143, !llvm.loop !104

polly.loop_exit825:                               ; preds = %vector.body1143, %polly.loop_header823
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond1101.not = icmp eq i64 %polly.indvar820, %260
  br i1 %exitcond1101.not, label %polly.loop_exit819, label %polly.loop_header817

polly.loop_header823:                             ; preds = %polly.loop_header817, %polly.loop_header823
  %polly.indvar826 = phi i64 [ %polly.indvar_next827, %polly.loop_header823 ], [ 0, %polly.loop_header817 ]
  %281 = add nuw nsw i64 %polly.indvar826, %263
  %282 = trunc i64 %281 to i32
  %283 = mul i32 %282, %266
  %284 = add i32 %283, 3
  %285 = urem i32 %284, 1200
  %p_conv31.i = sitofp i32 %285 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %286 = shl i64 %281, 3
  %287 = add nuw nsw i64 %286, %267
  %scevgep829 = getelementptr i8, i8* %call, i64 %287
  %scevgep829830 = bitcast i8* %scevgep829 to double*
  store double %p_div33.i, double* %scevgep829830, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next827 = add nuw nsw i64 %polly.indvar826, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar826, %264
  br i1 %exitcond1097.not, label %polly.loop_exit825, label %polly.loop_header823, !llvm.loop !105

polly.loop_header832:                             ; preds = %polly.loop_exit813, %polly.loop_exit840
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit840 ], [ 0, %polly.loop_exit813 ]
  %polly.indvar835 = phi i64 [ %polly.indvar_next836, %polly.loop_exit840 ], [ 0, %polly.loop_exit813 ]
  %smin1090 = call i64 @llvm.smin.i64(i64 %indvars.iv1088, i64 -1168)
  %288 = shl nsw i64 %polly.indvar835, 5
  %289 = add nsw i64 %smin1090, 1199
  br label %polly.loop_header838

polly.loop_exit840:                               ; preds = %polly.loop_exit846
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %indvars.iv.next1089 = add nsw i64 %indvars.iv1088, -32
  %exitcond1093.not = icmp eq i64 %polly.indvar_next836, 38
  br i1 %exitcond1093.not, label %polly.loop_header858, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_exit846, %polly.loop_header832
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085, %polly.loop_exit846 ], [ 0, %polly.loop_header832 ]
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %polly.loop_header832 ]
  %290 = mul nsw i64 %polly.indvar841, -32
  %smin1159 = call i64 @llvm.smin.i64(i64 %290, i64 -968)
  %291 = add nsw i64 %smin1159, 1000
  %smin1086 = call i64 @llvm.smin.i64(i64 %indvars.iv1084, i64 -968)
  %292 = shl nsw i64 %polly.indvar841, 5
  %293 = add nsw i64 %smin1086, 999
  br label %polly.loop_header844

polly.loop_exit846:                               ; preds = %polly.loop_exit852
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %indvars.iv.next1085 = add nsw i64 %indvars.iv1084, -32
  %exitcond1092.not = icmp eq i64 %polly.indvar_next842, 32
  br i1 %exitcond1092.not, label %polly.loop_exit840, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_exit852, %polly.loop_header838
  %polly.indvar847 = phi i64 [ 0, %polly.loop_header838 ], [ %polly.indvar_next848, %polly.loop_exit852 ]
  %294 = add nuw nsw i64 %polly.indvar847, %288
  %295 = trunc i64 %294 to i32
  %296 = mul nuw nsw i64 %294, 8000
  %min.iters.check1160 = icmp eq i64 %291, 0
  br i1 %min.iters.check1160, label %polly.loop_header850, label %vector.ph1161

vector.ph1161:                                    ; preds = %polly.loop_header844
  %broadcast.splatinsert1170 = insertelement <4 x i64> poison, i64 %292, i32 0
  %broadcast.splat1171 = shufflevector <4 x i64> %broadcast.splatinsert1170, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1172 = insertelement <4 x i32> poison, i32 %295, i32 0
  %broadcast.splat1173 = shufflevector <4 x i32> %broadcast.splatinsert1172, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %vector.ph1161
  %index1164 = phi i64 [ 0, %vector.ph1161 ], [ %index.next1165, %vector.body1158 ]
  %vec.ind1168 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1161 ], [ %vec.ind.next1169, %vector.body1158 ]
  %297 = add nuw nsw <4 x i64> %vec.ind1168, %broadcast.splat1171
  %298 = trunc <4 x i64> %297 to <4 x i32>
  %299 = mul <4 x i32> %broadcast.splat1173, %298
  %300 = add <4 x i32> %299, <i32 2, i32 2, i32 2, i32 2>
  %301 = urem <4 x i32> %300, <i32 1000, i32 1000, i32 1000, i32 1000>
  %302 = sitofp <4 x i32> %301 to <4 x double>
  %303 = fmul fast <4 x double> %302, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %304 = extractelement <4 x i64> %297, i32 0
  %305 = shl i64 %304, 3
  %306 = add nuw nsw i64 %305, %296
  %307 = getelementptr i8, i8* %call2, i64 %306
  %308 = bitcast i8* %307 to <4 x double>*
  store <4 x double> %303, <4 x double>* %308, align 8, !alias.scope !103, !noalias !106
  %index.next1165 = add i64 %index1164, 4
  %vec.ind.next1169 = add <4 x i64> %vec.ind1168, <i64 4, i64 4, i64 4, i64 4>
  %309 = icmp eq i64 %index.next1165, %291
  br i1 %309, label %polly.loop_exit852, label %vector.body1158, !llvm.loop !107

polly.loop_exit852:                               ; preds = %vector.body1158, %polly.loop_header850
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar847, %289
  br i1 %exitcond1091.not, label %polly.loop_exit846, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_header844, %polly.loop_header850
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_header850 ], [ 0, %polly.loop_header844 ]
  %310 = add nuw nsw i64 %polly.indvar853, %292
  %311 = trunc i64 %310 to i32
  %312 = mul i32 %311, %295
  %313 = add i32 %312, 2
  %314 = urem i32 %313, 1000
  %p_conv10.i = sitofp i32 %314 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %315 = shl i64 %310, 3
  %316 = add nuw nsw i64 %315, %296
  %scevgep856 = getelementptr i8, i8* %call2, i64 %316
  %scevgep856857 = bitcast i8* %scevgep856 to double*
  store double %p_div12.i, double* %scevgep856857, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar853, %293
  br i1 %exitcond1087.not, label %polly.loop_exit852, label %polly.loop_header850, !llvm.loop !108

polly.loop_header858:                             ; preds = %polly.loop_exit840, %polly.loop_exit866
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079, %polly.loop_exit866 ], [ 0, %polly.loop_exit840 ]
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_exit866 ], [ 0, %polly.loop_exit840 ]
  %smin1080 = call i64 @llvm.smin.i64(i64 %indvars.iv1078, i64 -1168)
  %317 = shl nsw i64 %polly.indvar861, 5
  %318 = add nsw i64 %smin1080, 1199
  br label %polly.loop_header864

polly.loop_exit866:                               ; preds = %polly.loop_exit872
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %indvars.iv.next1079 = add nsw i64 %indvars.iv1078, -32
  %exitcond1083.not = icmp eq i64 %polly.indvar_next862, 38
  br i1 %exitcond1083.not, label %init_array.exit, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_exit872, %polly.loop_header858
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075, %polly.loop_exit872 ], [ 0, %polly.loop_header858 ]
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_exit872 ], [ 0, %polly.loop_header858 ]
  %319 = mul nsw i64 %polly.indvar867, -32
  %smin1177 = call i64 @llvm.smin.i64(i64 %319, i64 -968)
  %320 = add nsw i64 %smin1177, 1000
  %smin1076 = call i64 @llvm.smin.i64(i64 %indvars.iv1074, i64 -968)
  %321 = shl nsw i64 %polly.indvar867, 5
  %322 = add nsw i64 %smin1076, 999
  br label %polly.loop_header870

polly.loop_exit872:                               ; preds = %polly.loop_exit878
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %indvars.iv.next1075 = add nsw i64 %indvars.iv1074, -32
  %exitcond1082.not = icmp eq i64 %polly.indvar_next868, 32
  br i1 %exitcond1082.not, label %polly.loop_exit866, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_exit878, %polly.loop_header864
  %polly.indvar873 = phi i64 [ 0, %polly.loop_header864 ], [ %polly.indvar_next874, %polly.loop_exit878 ]
  %323 = add nuw nsw i64 %polly.indvar873, %317
  %324 = trunc i64 %323 to i32
  %325 = mul nuw nsw i64 %323, 8000
  %min.iters.check1178 = icmp eq i64 %320, 0
  br i1 %min.iters.check1178, label %polly.loop_header876, label %vector.ph1179

vector.ph1179:                                    ; preds = %polly.loop_header870
  %broadcast.splatinsert1188 = insertelement <4 x i64> poison, i64 %321, i32 0
  %broadcast.splat1189 = shufflevector <4 x i64> %broadcast.splatinsert1188, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1190 = insertelement <4 x i32> poison, i32 %324, i32 0
  %broadcast.splat1191 = shufflevector <4 x i32> %broadcast.splatinsert1190, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %vector.ph1179
  %index1182 = phi i64 [ 0, %vector.ph1179 ], [ %index.next1183, %vector.body1176 ]
  %vec.ind1186 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1179 ], [ %vec.ind.next1187, %vector.body1176 ]
  %326 = add nuw nsw <4 x i64> %vec.ind1186, %broadcast.splat1189
  %327 = trunc <4 x i64> %326 to <4 x i32>
  %328 = mul <4 x i32> %broadcast.splat1191, %327
  %329 = add <4 x i32> %328, <i32 1, i32 1, i32 1, i32 1>
  %330 = urem <4 x i32> %329, <i32 1200, i32 1200, i32 1200, i32 1200>
  %331 = sitofp <4 x i32> %330 to <4 x double>
  %332 = fmul fast <4 x double> %331, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %333 = extractelement <4 x i64> %326, i32 0
  %334 = shl i64 %333, 3
  %335 = add nuw nsw i64 %334, %325
  %336 = getelementptr i8, i8* %call1, i64 %335
  %337 = bitcast i8* %336 to <4 x double>*
  store <4 x double> %332, <4 x double>* %337, align 8, !alias.scope !102, !noalias !109
  %index.next1183 = add i64 %index1182, 4
  %vec.ind.next1187 = add <4 x i64> %vec.ind1186, <i64 4, i64 4, i64 4, i64 4>
  %338 = icmp eq i64 %index.next1183, %320
  br i1 %338, label %polly.loop_exit878, label %vector.body1176, !llvm.loop !110

polly.loop_exit878:                               ; preds = %vector.body1176, %polly.loop_header876
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar873, %318
  br i1 %exitcond1081.not, label %polly.loop_exit872, label %polly.loop_header870

polly.loop_header876:                             ; preds = %polly.loop_header870, %polly.loop_header876
  %polly.indvar879 = phi i64 [ %polly.indvar_next880, %polly.loop_header876 ], [ 0, %polly.loop_header870 ]
  %339 = add nuw nsw i64 %polly.indvar879, %321
  %340 = trunc i64 %339 to i32
  %341 = mul i32 %340, %324
  %342 = add i32 %341, 1
  %343 = urem i32 %342, 1200
  %p_conv.i = sitofp i32 %343 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %344 = shl i64 %339, 3
  %345 = add nuw nsw i64 %344, %325
  %scevgep883 = getelementptr i8, i8* %call1, i64 %345
  %scevgep883884 = bitcast i8* %scevgep883 to double*
  store double %p_div.i, double* %scevgep883884, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next880 = add nuw nsw i64 %polly.indvar879, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar879, %322
  br i1 %exitcond1077.not, label %polly.loop_exit878, label %polly.loop_header876, !llvm.loop !111
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
!25 = !{!"llvm.loop.tile.size", i32 8}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 20}
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
!50 = !{!"llvm.loop.tile.size", i32 96}
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
