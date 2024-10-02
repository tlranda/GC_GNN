; ModuleID = 'syr2k_exhaustive/mmp_all_XL_3489.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_3489.c"
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
  %scevgep1143 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1142 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1141 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1140 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1140, %scevgep1143
  %bound1 = icmp ult i8* %scevgep1142, %scevgep1141
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
  br i1 %exitcond18.not.i, label %vector.ph1147, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1147:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1154 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1155 = shufflevector <4 x i64> %broadcast.splatinsert1154, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.body1146, %vector.ph1147
  %index1148 = phi i64 [ 0, %vector.ph1147 ], [ %index.next1149, %vector.body1146 ]
  %vec.ind1152 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1147 ], [ %vec.ind.next1153, %vector.body1146 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1152, %broadcast.splat1155
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv7.i, i64 %index1148
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1149 = add i64 %index1148, 4
  %vec.ind.next1153 = add <4 x i64> %vec.ind1152, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1149, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1146, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1146
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1147, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit866
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start484, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1209 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1209, label %for.body3.i46.preheader1289, label %vector.ph1210

vector.ph1210:                                    ; preds = %for.body3.i46.preheader
  %n.vec1212 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %vector.ph1210
  %index1213 = phi i64 [ 0, %vector.ph1210 ], [ %index.next1214, %vector.body1208 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i, i64 %index1213
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1214 = add i64 %index1213, 4
  %46 = icmp eq i64 %index.next1214, %n.vec1212
  br i1 %46, label %middle.block1206, label %vector.body1208, !llvm.loop !18

middle.block1206:                                 ; preds = %vector.body1208
  %cmp.n1216 = icmp eq i64 %indvars.iv21.i, %n.vec1212
  br i1 %cmp.n1216, label %for.inc6.i, label %for.body3.i46.preheader1289

for.body3.i46.preheader1289:                      ; preds = %for.body3.i46.preheader, %middle.block1206
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1212, %middle.block1206 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1289, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1289 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1206, %for.cond1.preheader.i45
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
  %min.iters.check1232 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1232, label %for.body3.i60.preheader1286, label %vector.ph1233

vector.ph1233:                                    ; preds = %for.body3.i60.preheader
  %n.vec1235 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1233
  %index1236 = phi i64 [ 0, %vector.ph1233 ], [ %index.next1237, %vector.body1231 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i52, i64 %index1236
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1240 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1240, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1237 = add i64 %index1236, 4
  %57 = icmp eq i64 %index.next1237, %n.vec1235
  br i1 %57, label %middle.block1229, label %vector.body1231, !llvm.loop !60

middle.block1229:                                 ; preds = %vector.body1231
  %cmp.n1239 = icmp eq i64 %indvars.iv21.i52, %n.vec1235
  br i1 %cmp.n1239, label %for.inc6.i63, label %for.body3.i60.preheader1286

for.body3.i60.preheader1286:                      ; preds = %for.body3.i60.preheader, %middle.block1229
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1235, %middle.block1229 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1286, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1286 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1229, %for.cond1.preheader.i54
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
  %min.iters.check1258 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1258, label %for.body3.i99.preheader1283, label %vector.ph1259

vector.ph1259:                                    ; preds = %for.body3.i99.preheader
  %n.vec1261 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1257

vector.body1257:                                  ; preds = %vector.body1257, %vector.ph1259
  %index1262 = phi i64 [ 0, %vector.ph1259 ], [ %index.next1263, %vector.body1257 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i91, i64 %index1262
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1266 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1266, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1263 = add i64 %index1262, 4
  %68 = icmp eq i64 %index.next1263, %n.vec1261
  br i1 %68, label %middle.block1255, label %vector.body1257, !llvm.loop !62

middle.block1255:                                 ; preds = %vector.body1257
  %cmp.n1265 = icmp eq i64 %indvars.iv21.i91, %n.vec1261
  br i1 %cmp.n1265, label %for.inc6.i102, label %for.body3.i99.preheader1283

for.body3.i99.preheader1283:                      ; preds = %for.body3.i99.preheader, %middle.block1255
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1261, %middle.block1255 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1283, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1283 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1255, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1270 = phi i64 [ %indvar.next1271, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1270, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1272 = icmp ult i64 %88, 4
  br i1 %min.iters.check1272, label %polly.loop_header191.preheader, label %vector.ph1273

vector.ph1273:                                    ; preds = %polly.loop_header
  %n.vec1275 = and i64 %88, -4
  br label %vector.body1269

vector.body1269:                                  ; preds = %vector.body1269, %vector.ph1273
  %index1276 = phi i64 [ 0, %vector.ph1273 ], [ %index.next1277, %vector.body1269 ]
  %90 = shl nuw nsw i64 %index1276, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1280 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1280, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1277 = add i64 %index1276, 4
  %95 = icmp eq i64 %index.next1277, %n.vec1275
  br i1 %95, label %middle.block1267, label %vector.body1269, !llvm.loop !74

middle.block1267:                                 ; preds = %vector.body1269
  %cmp.n1279 = icmp eq i64 %88, %n.vec1275
  br i1 %cmp.n1279, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1267
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1275, %middle.block1267 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1267
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1271 = add i64 %indvar1270, 1
  br i1 %exitcond1034.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond1033.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1033.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin1028 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -872)
  %97 = add nsw i64 %smin1028, 1000
  %98 = shl nsw i64 %polly.indvar202, 7
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %exitcond1032.not = icmp eq i64 %polly.indvar_next203, 8
  br i1 %exitcond1032.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %121, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = lshr i64 %polly.indvar208, 2
  %100 = shl nuw nsw i64 %99, 6
  %101 = sub nsw i64 %indvars.iv1016, %100
  %102 = add i64 %indvars.iv1020, %100
  %103 = shl nsw i64 %polly.indvar208, 4
  %104 = mul nsw i64 %polly.indvar208, -16
  %105 = add nsw i64 %104, 1199
  %polly.access.mul.call1230.us = mul nsw i64 %polly.indvar208, 16000
  %106 = or i64 %103, 1
  %polly.access.mul.call1230.us.1 = mul nuw nsw i64 %106, 1000
  %107 = or i64 %103, 2
  %polly.access.mul.call1230.us.2 = mul nuw nsw i64 %107, 1000
  %108 = or i64 %103, 3
  %polly.access.mul.call1230.us.3 = mul nuw nsw i64 %108, 1000
  %109 = or i64 %103, 4
  %polly.access.mul.call1230.us.4 = mul nuw nsw i64 %109, 1000
  %110 = or i64 %103, 5
  %polly.access.mul.call1230.us.5 = mul nuw nsw i64 %110, 1000
  %111 = or i64 %103, 6
  %polly.access.mul.call1230.us.6 = mul nuw nsw i64 %111, 1000
  %112 = or i64 %103, 7
  %polly.access.mul.call1230.us.7 = mul nuw nsw i64 %112, 1000
  %113 = or i64 %103, 8
  %polly.access.mul.call1230.us.8 = mul nuw nsw i64 %113, 1000
  %114 = or i64 %103, 9
  %polly.access.mul.call1230.us.9 = mul nuw nsw i64 %114, 1000
  %115 = or i64 %103, 10
  %polly.access.mul.call1230.us.10 = mul nuw nsw i64 %115, 1000
  %116 = or i64 %103, 11
  %polly.access.mul.call1230.us.11 = mul nuw nsw i64 %116, 1000
  %117 = or i64 %103, 12
  %polly.access.mul.call1230.us.12 = mul nuw nsw i64 %117, 1000
  %118 = or i64 %103, 13
  %polly.access.mul.call1230.us.13 = mul nuw nsw i64 %118, 1000
  %119 = or i64 %103, 14
  %polly.access.mul.call1230.us.14 = mul nuw nsw i64 %119, 1000
  %120 = or i64 %103, 15
  %polly.access.mul.call1230.us.15 = mul nuw nsw i64 %120, 1000
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit248
  %121 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next1017 = add nuw nsw i64 %indvars.iv1016, 16
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, -16
  %exitcond1031.not = icmp eq i64 %121, 75
  br i1 %exitcond1031.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit248, %polly.loop_header205
  %indvars.iv1022 = phi i64 [ %indvars.iv.next1023, %polly.loop_exit248 ], [ %102, %polly.loop_header205 ]
  %indvars.iv1018 = phi i64 [ %indvars.iv.next1019, %polly.loop_exit248 ], [ %101, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit248 ], [ %99, %polly.loop_header205 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1018, i64 0)
  %122 = add i64 %smax, %indvars.iv1022
  %123 = shl nsw i64 %polly.indvar214, 2
  %.not.not = icmp ugt i64 %123, %polly.indvar208
  %124 = shl nsw i64 %polly.indvar214, 6
  %125 = add nsw i64 %124, %104
  %126 = icmp sgt i64 %125, 0
  %127 = select i1 %126, i64 %125, i64 0
  %128 = add nsw i64 %125, 63
  %129 = icmp slt i64 %105, %128
  %130 = select i1 %129, i64 %105, i64 %128
  %polly.loop_guard.not = icmp sgt i64 %127, %130
  br i1 %.not.not, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit235.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit235.us ], [ 0, %polly.loop_header211 ]
  %131 = add nuw nsw i64 %polly.indvar220.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  %polly.access.add.call1231.us = add nuw nsw i64 %131, %polly.access.mul.call1230.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1231.us.1 = add nuw nsw i64 %131, %polly.access.mul.call1230.us.1
  %polly.access.call1232.us.1 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.1
  %polly.access.call1232.load.us.1 = load double, double* %polly.access.call1232.us.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1232.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1231.us.2 = add nuw nsw i64 %131, %polly.access.mul.call1230.us.2
  %polly.access.call1232.us.2 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.2
  %polly.access.call1232.load.us.2 = load double, double* %polly.access.call1232.us.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1232.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1231.us.3 = add nuw nsw i64 %131, %polly.access.mul.call1230.us.3
  %polly.access.call1232.us.3 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.3
  %polly.access.call1232.load.us.3 = load double, double* %polly.access.call1232.us.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1232.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.access.add.call1231.us.4 = add nuw nsw i64 %131, %polly.access.mul.call1230.us.4
  %polly.access.call1232.us.4 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.4
  %polly.access.call1232.load.us.4 = load double, double* %polly.access.call1232.us.4, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 4
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.4
  store double %polly.access.call1232.load.us.4, double* %polly.access.Packed_MemRef_call1.us.4, align 8
  %polly.access.add.call1231.us.5 = add nuw nsw i64 %131, %polly.access.mul.call1230.us.5
  %polly.access.call1232.us.5 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.5
  %polly.access.call1232.load.us.5 = load double, double* %polly.access.call1232.us.5, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 5
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.5
  store double %polly.access.call1232.load.us.5, double* %polly.access.Packed_MemRef_call1.us.5, align 8
  %polly.access.add.call1231.us.6 = add nuw nsw i64 %131, %polly.access.mul.call1230.us.6
  %polly.access.call1232.us.6 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.6
  %polly.access.call1232.load.us.6 = load double, double* %polly.access.call1232.us.6, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 6
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.6
  store double %polly.access.call1232.load.us.6, double* %polly.access.Packed_MemRef_call1.us.6, align 8
  %polly.access.add.call1231.us.7 = add nuw nsw i64 %131, %polly.access.mul.call1230.us.7
  %polly.access.call1232.us.7 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.7
  %polly.access.call1232.load.us.7 = load double, double* %polly.access.call1232.us.7, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 7
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.7
  store double %polly.access.call1232.load.us.7, double* %polly.access.Packed_MemRef_call1.us.7, align 8
  %polly.access.add.call1231.us.8 = add nuw nsw i64 %131, %polly.access.mul.call1230.us.8
  %polly.access.call1232.us.8 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.8
  %polly.access.call1232.load.us.8 = load double, double* %polly.access.call1232.us.8, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 8
  %polly.access.Packed_MemRef_call1.us.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.8
  store double %polly.access.call1232.load.us.8, double* %polly.access.Packed_MemRef_call1.us.8, align 8
  %polly.access.add.call1231.us.9 = add nuw nsw i64 %131, %polly.access.mul.call1230.us.9
  %polly.access.call1232.us.9 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.9
  %polly.access.call1232.load.us.9 = load double, double* %polly.access.call1232.us.9, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 9
  %polly.access.Packed_MemRef_call1.us.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.9
  store double %polly.access.call1232.load.us.9, double* %polly.access.Packed_MemRef_call1.us.9, align 8
  %polly.access.add.call1231.us.10 = add nuw nsw i64 %131, %polly.access.mul.call1230.us.10
  %polly.access.call1232.us.10 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.10
  %polly.access.call1232.load.us.10 = load double, double* %polly.access.call1232.us.10, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 10
  %polly.access.Packed_MemRef_call1.us.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.10
  store double %polly.access.call1232.load.us.10, double* %polly.access.Packed_MemRef_call1.us.10, align 8
  %polly.access.add.call1231.us.11 = add nuw nsw i64 %131, %polly.access.mul.call1230.us.11
  %polly.access.call1232.us.11 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.11
  %polly.access.call1232.load.us.11 = load double, double* %polly.access.call1232.us.11, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 11
  %polly.access.Packed_MemRef_call1.us.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.11
  store double %polly.access.call1232.load.us.11, double* %polly.access.Packed_MemRef_call1.us.11, align 8
  %polly.access.add.call1231.us.12 = add nuw nsw i64 %131, %polly.access.mul.call1230.us.12
  %polly.access.call1232.us.12 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.12
  %polly.access.call1232.load.us.12 = load double, double* %polly.access.call1232.us.12, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 12
  %polly.access.Packed_MemRef_call1.us.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.12
  store double %polly.access.call1232.load.us.12, double* %polly.access.Packed_MemRef_call1.us.12, align 8
  %polly.access.add.call1231.us.13 = add nuw nsw i64 %131, %polly.access.mul.call1230.us.13
  %polly.access.call1232.us.13 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.13
  %polly.access.call1232.load.us.13 = load double, double* %polly.access.call1232.us.13, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 13
  %polly.access.Packed_MemRef_call1.us.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.13
  store double %polly.access.call1232.load.us.13, double* %polly.access.Packed_MemRef_call1.us.13, align 8
  %polly.access.add.call1231.us.14 = add nuw nsw i64 %131, %polly.access.mul.call1230.us.14
  %polly.access.call1232.us.14 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.14
  %polly.access.call1232.load.us.14 = load double, double* %polly.access.call1232.us.14, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 14
  %polly.access.Packed_MemRef_call1.us.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.14
  store double %polly.access.call1232.load.us.14, double* %polly.access.Packed_MemRef_call1.us.14, align 8
  %polly.access.add.call1231.us.15 = add nuw nsw i64 %131, %polly.access.mul.call1230.us.15
  %polly.access.call1232.us.15 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.15
  %polly.access.call1232.load.us.15 = load double, double* %polly.access.call1232.us.15, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 15
  %polly.access.Packed_MemRef_call1.us.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.15
  store double %polly.access.call1232.load.us.15, double* %polly.access.Packed_MemRef_call1.us.15, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_exit235.us, label %polly.loop_header233.us

polly.loop_header233.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header233.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_header233.us ], [ %127, %polly.loop_header217.us ]
  %132 = add nuw nsw i64 %polly.indvar236.us, %103
  %polly.access.mul.call1240.us = mul nsw i64 %132, 1000
  %polly.access.add.call1241.us = add nuw nsw i64 %131, %polly.access.mul.call1240.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1244.us = add nuw nsw i64 %polly.indvar236.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1245.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1245.us, align 8
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %polly.loop_cond238.not.not.us = icmp slt i64 %polly.indvar236.us, %130
  br i1 %polly.loop_cond238.not.not.us, label %polly.loop_header233.us, label %polly.loop_exit235.us

polly.loop_exit235.us:                            ; preds = %polly.loop_header233.us, %polly.loop_header217.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar_next221.us, %97
  br i1 %exitcond1015.not, label %polly.loop_header246.preheader, label %polly.loop_header217.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %polly.loop_guard.not, label %polly.loop_header246.preheader, label %polly.loop_header217

polly.loop_exit248:                               ; preds = %polly.loop_exit255, %polly.loop_header246.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next1019 = add i64 %indvars.iv1018, -64
  %indvars.iv.next1023 = add i64 %indvars.iv1022, 64
  %exitcond1030.not = icmp eq i64 %polly.indvar_next215, 19
  br i1 %exitcond1030.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_exit235
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit235 ], [ 0, %polly.loop_header211.split ]
  %133 = add nuw nsw i64 %polly.indvar220, %98
  %polly.access.mul.Packed_MemRef_call1243 = mul nuw nsw i64 %polly.indvar220, 1200
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %97
  br i1 %exitcond.not, label %polly.loop_header246.preheader, label %polly.loop_header217

polly.loop_header246.preheader:                   ; preds = %polly.loop_exit235, %polly.loop_exit235.us, %polly.loop_header211.split
  %134 = sub nsw i64 %103, %124
  %135 = icmp sgt i64 %134, 0
  %136 = select i1 %135, i64 %134, i64 0
  %137 = mul nsw i64 %polly.indvar214, -64
  %138 = icmp slt i64 %137, -1136
  %139 = select i1 %138, i64 %137, i64 -1136
  %140 = add nsw i64 %139, 1199
  %polly.loop_guard256.not = icmp sgt i64 %136, %140
  br i1 %polly.loop_guard256.not, label %polly.loop_exit248, label %polly.loop_header246

polly.loop_header233:                             ; preds = %polly.loop_header217, %polly.loop_header233
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_header233 ], [ %127, %polly.loop_header217 ]
  %141 = add nuw nsw i64 %polly.indvar236, %103
  %polly.access.mul.call1240 = mul nsw i64 %141, 1000
  %polly.access.add.call1241 = add nuw nsw i64 %133, %polly.access.mul.call1240
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1241
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1244 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call1243
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp slt i64 %polly.indvar236, %130
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.loop_header246:                             ; preds = %polly.loop_header246.preheader, %polly.loop_exit255
  %polly.indvar249 = phi i64 [ %polly.indvar_next250, %polly.loop_exit255 ], [ 0, %polly.loop_header246.preheader ]
  %142 = add nuw nsw i64 %polly.indvar249, %98
  %polly.access.mul.Packed_MemRef_call1268 = mul nuw nsw i64 %polly.indvar249, 1200
  %143 = shl i64 %142, 3
  br label %polly.loop_header253

polly.loop_exit255:                               ; preds = %polly.loop_exit263
  %polly.indvar_next250 = add nuw nsw i64 %polly.indvar249, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next250, %97
  br i1 %exitcond1029.not, label %polly.loop_exit248, label %polly.loop_header246

polly.loop_header253:                             ; preds = %polly.loop_header246, %polly.loop_exit263
  %indvars.iv1024 = phi i64 [ %122, %polly.loop_header246 ], [ %indvars.iv.next1025, %polly.loop_exit263 ]
  %polly.indvar257 = phi i64 [ %136, %polly.loop_header246 ], [ %polly.indvar_next258, %polly.loop_exit263 ]
  %smin1026 = call i64 @llvm.smin.i64(i64 %indvars.iv1024, i64 15)
  %144 = add nsw i64 %polly.indvar257, %125
  %polly.loop_guard2641126 = icmp sgt i64 %144, -1
  br i1 %polly.loop_guard2641126, label %polly.loop_header261.preheader, label %polly.loop_exit263

polly.loop_header261.preheader:                   ; preds = %polly.loop_header253
  %145 = add nuw nsw i64 %polly.indvar257, %124
  %146 = mul i64 %145, 8000
  %147 = add i64 %146, %143
  %scevgep272 = getelementptr i8, i8* %call2, i64 %147
  %scevgep272273 = bitcast i8* %scevgep272 to double*
  %_p_scalar_274 = load double, double* %scevgep272273, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1279 = add nsw i64 %144, %polly.access.mul.Packed_MemRef_call1268
  %polly.access.Packed_MemRef_call1280 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1279
  %_p_scalar_281 = load double, double* %polly.access.Packed_MemRef_call1280, align 8
  %148 = mul i64 %145, 9600
  br label %polly.loop_header261

polly.loop_exit263:                               ; preds = %polly.loop_header261, %polly.loop_header253
  %polly.indvar_next258 = add nuw nsw i64 %polly.indvar257, 1
  %polly.loop_cond259.not.not = icmp slt i64 %polly.indvar257, %140
  %indvars.iv.next1025 = add i64 %indvars.iv1024, 1
  br i1 %polly.loop_cond259.not.not, label %polly.loop_header253, label %polly.loop_exit255

polly.loop_header261:                             ; preds = %polly.loop_header261.preheader, %polly.loop_header261
  %polly.indvar265 = phi i64 [ %polly.indvar_next266, %polly.loop_header261 ], [ 0, %polly.loop_header261.preheader ]
  %149 = add nuw nsw i64 %polly.indvar265, %103
  %polly.access.add.Packed_MemRef_call1269 = add nuw nsw i64 %polly.indvar265, %polly.access.mul.Packed_MemRef_call1268
  %polly.access.Packed_MemRef_call1270 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1269
  %_p_scalar_271 = load double, double* %polly.access.Packed_MemRef_call1270, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_274, %_p_scalar_271
  %150 = mul nuw nsw i64 %149, 8000
  %151 = add nuw nsw i64 %150, %143
  %scevgep275 = getelementptr i8, i8* %call2, i64 %151
  %scevgep275276 = bitcast i8* %scevgep275 to double*
  %_p_scalar_277 = load double, double* %scevgep275276, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114 = fmul fast double %_p_scalar_281, %_p_scalar_277
  %152 = shl i64 %149, 3
  %153 = add i64 %152, %148
  %scevgep282 = getelementptr i8, i8* %call, i64 %153
  %scevgep282283 = bitcast i8* %scevgep282 to double*
  %_p_scalar_284 = load double, double* %scevgep282283, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_284
  store double %p_add42.i118, double* %scevgep282283, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next266 = add nuw nsw i64 %polly.indvar265, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar265, %smin1026
  br i1 %exitcond1027.not, label %polly.loop_exit263, label %polly.loop_header261

polly.start287:                                   ; preds = %kernel_syr2k.exit
  %malloccall289 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header373

polly.exiting288:                                 ; preds = %polly.loop_exit397
  tail call void @free(i8* %malloccall289)
  br label %kernel_syr2k.exit90

polly.loop_header373:                             ; preds = %polly.loop_exit381, %polly.start287
  %indvar1244 = phi i64 [ %indvar.next1245, %polly.loop_exit381 ], [ 0, %polly.start287 ]
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_exit381 ], [ 1, %polly.start287 ]
  %154 = add i64 %indvar1244, 1
  %155 = mul nuw nsw i64 %polly.indvar376, 9600
  %scevgep385 = getelementptr i8, i8* %call, i64 %155
  %min.iters.check1246 = icmp ult i64 %154, 4
  br i1 %min.iters.check1246, label %polly.loop_header379.preheader, label %vector.ph1247

vector.ph1247:                                    ; preds = %polly.loop_header373
  %n.vec1249 = and i64 %154, -4
  br label %vector.body1243

vector.body1243:                                  ; preds = %vector.body1243, %vector.ph1247
  %index1250 = phi i64 [ 0, %vector.ph1247 ], [ %index.next1251, %vector.body1243 ]
  %156 = shl nuw nsw i64 %index1250, 3
  %157 = getelementptr i8, i8* %scevgep385, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load1254 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !79, !noalias !81
  %159 = fmul fast <4 x double> %wide.load1254, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %160 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %159, <4 x double>* %160, align 8, !alias.scope !79, !noalias !81
  %index.next1251 = add i64 %index1250, 4
  %161 = icmp eq i64 %index.next1251, %n.vec1249
  br i1 %161, label %middle.block1241, label %vector.body1243, !llvm.loop !85

middle.block1241:                                 ; preds = %vector.body1243
  %cmp.n1253 = icmp eq i64 %154, %n.vec1249
  br i1 %cmp.n1253, label %polly.loop_exit381, label %polly.loop_header379.preheader

polly.loop_header379.preheader:                   ; preds = %polly.loop_header373, %middle.block1241
  %polly.indvar382.ph = phi i64 [ 0, %polly.loop_header373 ], [ %n.vec1249, %middle.block1241 ]
  br label %polly.loop_header379

polly.loop_exit381:                               ; preds = %polly.loop_header379, %middle.block1241
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next377, 1200
  %indvar.next1245 = add i64 %indvar1244, 1
  br i1 %exitcond1061.not, label %polly.loop_header389.preheader, label %polly.loop_header373

polly.loop_header389.preheader:                   ; preds = %polly.loop_exit381
  %Packed_MemRef_call1290 = bitcast i8* %malloccall289 to double*
  br label %polly.loop_header389

polly.loop_header379:                             ; preds = %polly.loop_header379.preheader, %polly.loop_header379
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_header379 ], [ %polly.indvar382.ph, %polly.loop_header379.preheader ]
  %162 = shl nuw nsw i64 %polly.indvar382, 3
  %scevgep386 = getelementptr i8, i8* %scevgep385, i64 %162
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_388, 1.200000e+00
  store double %p_mul.i57, double* %scevgep386387, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next383, %polly.indvar376
  br i1 %exitcond1060.not, label %polly.loop_exit381, label %polly.loop_header379, !llvm.loop !86

polly.loop_header389:                             ; preds = %polly.loop_header389.preheader, %polly.loop_exit397
  %indvars.iv1035 = phi i64 [ 0, %polly.loop_header389.preheader ], [ %indvars.iv.next1036, %polly.loop_exit397 ]
  %polly.indvar392 = phi i64 [ 0, %polly.loop_header389.preheader ], [ %polly.indvar_next393, %polly.loop_exit397 ]
  %smin1055 = call i64 @llvm.smin.i64(i64 %indvars.iv1035, i64 -872)
  %163 = add nsw i64 %smin1055, 1000
  %164 = shl nsw i64 %polly.indvar392, 7
  br label %polly.loop_header395

polly.loop_exit397:                               ; preds = %polly.loop_exit404
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %indvars.iv.next1036 = add nsw i64 %indvars.iv1035, -128
  %exitcond1059.not = icmp eq i64 %polly.indvar_next393, 8
  br i1 %exitcond1059.not, label %polly.exiting288, label %polly.loop_header389

polly.loop_header395:                             ; preds = %polly.loop_exit404, %polly.loop_header389
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %polly.indvar398 = phi i64 [ %187, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %165 = lshr i64 %polly.indvar398, 2
  %166 = shl nuw nsw i64 %165, 6
  %167 = sub nsw i64 %indvars.iv1042, %166
  %168 = add i64 %indvars.iv1047, %166
  %169 = shl nsw i64 %polly.indvar398, 4
  %170 = mul nsw i64 %polly.indvar398, -16
  %171 = add nsw i64 %170, 1199
  %polly.access.mul.call1425.us = mul nsw i64 %polly.indvar398, 16000
  %172 = or i64 %169, 1
  %polly.access.mul.call1425.us.1 = mul nuw nsw i64 %172, 1000
  %173 = or i64 %169, 2
  %polly.access.mul.call1425.us.2 = mul nuw nsw i64 %173, 1000
  %174 = or i64 %169, 3
  %polly.access.mul.call1425.us.3 = mul nuw nsw i64 %174, 1000
  %175 = or i64 %169, 4
  %polly.access.mul.call1425.us.4 = mul nuw nsw i64 %175, 1000
  %176 = or i64 %169, 5
  %polly.access.mul.call1425.us.5 = mul nuw nsw i64 %176, 1000
  %177 = or i64 %169, 6
  %polly.access.mul.call1425.us.6 = mul nuw nsw i64 %177, 1000
  %178 = or i64 %169, 7
  %polly.access.mul.call1425.us.7 = mul nuw nsw i64 %178, 1000
  %179 = or i64 %169, 8
  %polly.access.mul.call1425.us.8 = mul nuw nsw i64 %179, 1000
  %180 = or i64 %169, 9
  %polly.access.mul.call1425.us.9 = mul nuw nsw i64 %180, 1000
  %181 = or i64 %169, 10
  %polly.access.mul.call1425.us.10 = mul nuw nsw i64 %181, 1000
  %182 = or i64 %169, 11
  %polly.access.mul.call1425.us.11 = mul nuw nsw i64 %182, 1000
  %183 = or i64 %169, 12
  %polly.access.mul.call1425.us.12 = mul nuw nsw i64 %183, 1000
  %184 = or i64 %169, 13
  %polly.access.mul.call1425.us.13 = mul nuw nsw i64 %184, 1000
  %185 = or i64 %169, 14
  %polly.access.mul.call1425.us.14 = mul nuw nsw i64 %185, 1000
  %186 = or i64 %169, 15
  %polly.access.mul.call1425.us.15 = mul nuw nsw i64 %186, 1000
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit445
  %187 = add nuw nsw i64 %polly.indvar398, 1
  %indvars.iv.next1043 = add nuw nsw i64 %indvars.iv1042, 16
  %indvars.iv.next1048 = add nsw i64 %indvars.iv1047, -16
  %exitcond1058.not = icmp eq i64 %187, 75
  br i1 %exitcond1058.not, label %polly.loop_exit397, label %polly.loop_header395

polly.loop_header402:                             ; preds = %polly.loop_exit445, %polly.loop_header395
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit445 ], [ %168, %polly.loop_header395 ]
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit445 ], [ %167, %polly.loop_header395 ]
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit445 ], [ %165, %polly.loop_header395 ]
  %smax1046 = call i64 @llvm.smax.i64(i64 %indvars.iv1044, i64 0)
  %188 = add i64 %smax1046, %indvars.iv1049
  %189 = shl nsw i64 %polly.indvar405, 2
  %.not.not885 = icmp ugt i64 %189, %polly.indvar398
  %190 = shl nsw i64 %polly.indvar405, 6
  %191 = add nsw i64 %190, %170
  %192 = icmp sgt i64 %191, 0
  %193 = select i1 %192, i64 %191, i64 0
  %194 = add nsw i64 %191, 63
  %195 = icmp slt i64 %171, %194
  %196 = select i1 %195, i64 %171, i64 %194
  %polly.loop_guard432.not = icmp sgt i64 %193, %196
  br i1 %.not.not885, label %polly.loop_header408.us, label %polly.loop_header402.split

polly.loop_header408.us:                          ; preds = %polly.loop_header402, %polly.loop_exit431.us
  %polly.indvar411.us = phi i64 [ %polly.indvar_next412.us, %polly.loop_exit431.us ], [ 0, %polly.loop_header402 ]
  %197 = add nuw nsw i64 %polly.indvar411.us, %164
  %polly.access.mul.Packed_MemRef_call1290.us = mul nuw nsw i64 %polly.indvar411.us, 1200
  %polly.access.add.call1426.us = add nuw nsw i64 %197, %polly.access.mul.call1425.us
  %polly.access.call1427.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us
  %polly.access.call1427.load.us = load double, double* %polly.access.call1427.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.Packed_MemRef_call1290.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.mul.Packed_MemRef_call1290.us
  store double %polly.access.call1427.load.us, double* %polly.access.Packed_MemRef_call1290.us, align 8
  %polly.access.add.call1426.us.1 = add nuw nsw i64 %197, %polly.access.mul.call1425.us.1
  %polly.access.call1427.us.1 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.1
  %polly.access.call1427.load.us.1 = load double, double* %polly.access.call1427.us.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 1
  %polly.access.Packed_MemRef_call1290.us.1 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.1
  store double %polly.access.call1427.load.us.1, double* %polly.access.Packed_MemRef_call1290.us.1, align 8
  %polly.access.add.call1426.us.2 = add nuw nsw i64 %197, %polly.access.mul.call1425.us.2
  %polly.access.call1427.us.2 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.2
  %polly.access.call1427.load.us.2 = load double, double* %polly.access.call1427.us.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 2
  %polly.access.Packed_MemRef_call1290.us.2 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.2
  store double %polly.access.call1427.load.us.2, double* %polly.access.Packed_MemRef_call1290.us.2, align 8
  %polly.access.add.call1426.us.3 = add nuw nsw i64 %197, %polly.access.mul.call1425.us.3
  %polly.access.call1427.us.3 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.3
  %polly.access.call1427.load.us.3 = load double, double* %polly.access.call1427.us.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 3
  %polly.access.Packed_MemRef_call1290.us.3 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.3
  store double %polly.access.call1427.load.us.3, double* %polly.access.Packed_MemRef_call1290.us.3, align 8
  %polly.access.add.call1426.us.4 = add nuw nsw i64 %197, %polly.access.mul.call1425.us.4
  %polly.access.call1427.us.4 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.4
  %polly.access.call1427.load.us.4 = load double, double* %polly.access.call1427.us.4, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 4
  %polly.access.Packed_MemRef_call1290.us.4 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.4
  store double %polly.access.call1427.load.us.4, double* %polly.access.Packed_MemRef_call1290.us.4, align 8
  %polly.access.add.call1426.us.5 = add nuw nsw i64 %197, %polly.access.mul.call1425.us.5
  %polly.access.call1427.us.5 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.5
  %polly.access.call1427.load.us.5 = load double, double* %polly.access.call1427.us.5, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 5
  %polly.access.Packed_MemRef_call1290.us.5 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.5
  store double %polly.access.call1427.load.us.5, double* %polly.access.Packed_MemRef_call1290.us.5, align 8
  %polly.access.add.call1426.us.6 = add nuw nsw i64 %197, %polly.access.mul.call1425.us.6
  %polly.access.call1427.us.6 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.6
  %polly.access.call1427.load.us.6 = load double, double* %polly.access.call1427.us.6, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 6
  %polly.access.Packed_MemRef_call1290.us.6 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.6
  store double %polly.access.call1427.load.us.6, double* %polly.access.Packed_MemRef_call1290.us.6, align 8
  %polly.access.add.call1426.us.7 = add nuw nsw i64 %197, %polly.access.mul.call1425.us.7
  %polly.access.call1427.us.7 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.7
  %polly.access.call1427.load.us.7 = load double, double* %polly.access.call1427.us.7, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 7
  %polly.access.Packed_MemRef_call1290.us.7 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.7
  store double %polly.access.call1427.load.us.7, double* %polly.access.Packed_MemRef_call1290.us.7, align 8
  %polly.access.add.call1426.us.8 = add nuw nsw i64 %197, %polly.access.mul.call1425.us.8
  %polly.access.call1427.us.8 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.8
  %polly.access.call1427.load.us.8 = load double, double* %polly.access.call1427.us.8, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 8
  %polly.access.Packed_MemRef_call1290.us.8 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.8
  store double %polly.access.call1427.load.us.8, double* %polly.access.Packed_MemRef_call1290.us.8, align 8
  %polly.access.add.call1426.us.9 = add nuw nsw i64 %197, %polly.access.mul.call1425.us.9
  %polly.access.call1427.us.9 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.9
  %polly.access.call1427.load.us.9 = load double, double* %polly.access.call1427.us.9, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 9
  %polly.access.Packed_MemRef_call1290.us.9 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.9
  store double %polly.access.call1427.load.us.9, double* %polly.access.Packed_MemRef_call1290.us.9, align 8
  %polly.access.add.call1426.us.10 = add nuw nsw i64 %197, %polly.access.mul.call1425.us.10
  %polly.access.call1427.us.10 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.10
  %polly.access.call1427.load.us.10 = load double, double* %polly.access.call1427.us.10, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 10
  %polly.access.Packed_MemRef_call1290.us.10 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.10
  store double %polly.access.call1427.load.us.10, double* %polly.access.Packed_MemRef_call1290.us.10, align 8
  %polly.access.add.call1426.us.11 = add nuw nsw i64 %197, %polly.access.mul.call1425.us.11
  %polly.access.call1427.us.11 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.11
  %polly.access.call1427.load.us.11 = load double, double* %polly.access.call1427.us.11, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 11
  %polly.access.Packed_MemRef_call1290.us.11 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.11
  store double %polly.access.call1427.load.us.11, double* %polly.access.Packed_MemRef_call1290.us.11, align 8
  %polly.access.add.call1426.us.12 = add nuw nsw i64 %197, %polly.access.mul.call1425.us.12
  %polly.access.call1427.us.12 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.12
  %polly.access.call1427.load.us.12 = load double, double* %polly.access.call1427.us.12, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 12
  %polly.access.Packed_MemRef_call1290.us.12 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.12
  store double %polly.access.call1427.load.us.12, double* %polly.access.Packed_MemRef_call1290.us.12, align 8
  %polly.access.add.call1426.us.13 = add nuw nsw i64 %197, %polly.access.mul.call1425.us.13
  %polly.access.call1427.us.13 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.13
  %polly.access.call1427.load.us.13 = load double, double* %polly.access.call1427.us.13, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 13
  %polly.access.Packed_MemRef_call1290.us.13 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.13
  store double %polly.access.call1427.load.us.13, double* %polly.access.Packed_MemRef_call1290.us.13, align 8
  %polly.access.add.call1426.us.14 = add nuw nsw i64 %197, %polly.access.mul.call1425.us.14
  %polly.access.call1427.us.14 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.14
  %polly.access.call1427.load.us.14 = load double, double* %polly.access.call1427.us.14, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 14
  %polly.access.Packed_MemRef_call1290.us.14 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.14
  store double %polly.access.call1427.load.us.14, double* %polly.access.Packed_MemRef_call1290.us.14, align 8
  %polly.access.add.call1426.us.15 = add nuw nsw i64 %197, %polly.access.mul.call1425.us.15
  %polly.access.call1427.us.15 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.15
  %polly.access.call1427.load.us.15 = load double, double* %polly.access.call1427.us.15, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 15
  %polly.access.Packed_MemRef_call1290.us.15 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.15
  store double %polly.access.call1427.load.us.15, double* %polly.access.Packed_MemRef_call1290.us.15, align 8
  br i1 %polly.loop_guard432.not, label %polly.loop_exit431.us, label %polly.loop_header429.us

polly.loop_header429.us:                          ; preds = %polly.loop_header408.us, %polly.loop_header429.us
  %polly.indvar433.us = phi i64 [ %polly.indvar_next434.us, %polly.loop_header429.us ], [ %193, %polly.loop_header408.us ]
  %198 = add nuw nsw i64 %polly.indvar433.us, %169
  %polly.access.mul.call1437.us = mul nsw i64 %198, 1000
  %polly.access.add.call1438.us = add nuw nsw i64 %197, %polly.access.mul.call1437.us
  %polly.access.call1439.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1438.us
  %polly.access.call1439.load.us = load double, double* %polly.access.call1439.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290441.us = add nuw nsw i64 %polly.indvar433.us, %polly.access.mul.Packed_MemRef_call1290.us
  %polly.access.Packed_MemRef_call1290442.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290441.us
  store double %polly.access.call1439.load.us, double* %polly.access.Packed_MemRef_call1290442.us, align 8
  %polly.indvar_next434.us = add nuw nsw i64 %polly.indvar433.us, 1
  %polly.loop_cond435.not.not.us = icmp slt i64 %polly.indvar433.us, %196
  br i1 %polly.loop_cond435.not.not.us, label %polly.loop_header429.us, label %polly.loop_exit431.us

polly.loop_exit431.us:                            ; preds = %polly.loop_header429.us, %polly.loop_header408.us
  %polly.indvar_next412.us = add nuw nsw i64 %polly.indvar411.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next412.us, %163
  br i1 %exitcond1041.not, label %polly.loop_header443.preheader, label %polly.loop_header408.us

polly.loop_header402.split:                       ; preds = %polly.loop_header402
  br i1 %polly.loop_guard432.not, label %polly.loop_header443.preheader, label %polly.loop_header408

polly.loop_exit445:                               ; preds = %polly.loop_exit452, %polly.loop_header443.preheader
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next1045 = add i64 %indvars.iv1044, -64
  %indvars.iv.next1050 = add i64 %indvars.iv1049, 64
  %exitcond1057.not = icmp eq i64 %polly.indvar_next406, 19
  br i1 %exitcond1057.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header402.split, %polly.loop_exit431
  %polly.indvar411 = phi i64 [ %polly.indvar_next412, %polly.loop_exit431 ], [ 0, %polly.loop_header402.split ]
  %199 = add nuw nsw i64 %polly.indvar411, %164
  %polly.access.mul.Packed_MemRef_call1290440 = mul nuw nsw i64 %polly.indvar411, 1200
  br label %polly.loop_header429

polly.loop_exit431:                               ; preds = %polly.loop_header429
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar_next412, %163
  br i1 %exitcond1038.not, label %polly.loop_header443.preheader, label %polly.loop_header408

polly.loop_header443.preheader:                   ; preds = %polly.loop_exit431, %polly.loop_exit431.us, %polly.loop_header402.split
  %200 = sub nsw i64 %169, %190
  %201 = icmp sgt i64 %200, 0
  %202 = select i1 %201, i64 %200, i64 0
  %203 = mul nsw i64 %polly.indvar405, -64
  %204 = icmp slt i64 %203, -1136
  %205 = select i1 %204, i64 %203, i64 -1136
  %206 = add nsw i64 %205, 1199
  %polly.loop_guard453.not = icmp sgt i64 %202, %206
  br i1 %polly.loop_guard453.not, label %polly.loop_exit445, label %polly.loop_header443

polly.loop_header429:                             ; preds = %polly.loop_header408, %polly.loop_header429
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_header429 ], [ %193, %polly.loop_header408 ]
  %207 = add nuw nsw i64 %polly.indvar433, %169
  %polly.access.mul.call1437 = mul nsw i64 %207, 1000
  %polly.access.add.call1438 = add nuw nsw i64 %199, %polly.access.mul.call1437
  %polly.access.call1439 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1438
  %polly.access.call1439.load = load double, double* %polly.access.call1439, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290441 = add nuw nsw i64 %polly.indvar433, %polly.access.mul.Packed_MemRef_call1290440
  %polly.access.Packed_MemRef_call1290442 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290441
  store double %polly.access.call1439.load, double* %polly.access.Packed_MemRef_call1290442, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %polly.loop_cond435.not.not = icmp slt i64 %polly.indvar433, %196
  br i1 %polly.loop_cond435.not.not, label %polly.loop_header429, label %polly.loop_exit431

polly.loop_header443:                             ; preds = %polly.loop_header443.preheader, %polly.loop_exit452
  %polly.indvar446 = phi i64 [ %polly.indvar_next447, %polly.loop_exit452 ], [ 0, %polly.loop_header443.preheader ]
  %208 = add nuw nsw i64 %polly.indvar446, %164
  %polly.access.mul.Packed_MemRef_call1290465 = mul nuw nsw i64 %polly.indvar446, 1200
  %209 = shl i64 %208, 3
  br label %polly.loop_header450

polly.loop_exit452:                               ; preds = %polly.loop_exit460
  %polly.indvar_next447 = add nuw nsw i64 %polly.indvar446, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar_next447, %163
  br i1 %exitcond1056.not, label %polly.loop_exit445, label %polly.loop_header443

polly.loop_header450:                             ; preds = %polly.loop_header443, %polly.loop_exit460
  %indvars.iv1051 = phi i64 [ %188, %polly.loop_header443 ], [ %indvars.iv.next1052, %polly.loop_exit460 ]
  %polly.indvar454 = phi i64 [ %202, %polly.loop_header443 ], [ %polly.indvar_next455, %polly.loop_exit460 ]
  %smin1053 = call i64 @llvm.smin.i64(i64 %indvars.iv1051, i64 15)
  %210 = add nsw i64 %polly.indvar454, %191
  %polly.loop_guard4611127 = icmp sgt i64 %210, -1
  br i1 %polly.loop_guard4611127, label %polly.loop_header458.preheader, label %polly.loop_exit460

polly.loop_header458.preheader:                   ; preds = %polly.loop_header450
  %211 = add nuw nsw i64 %polly.indvar454, %190
  %212 = mul i64 %211, 8000
  %213 = add i64 %212, %209
  %scevgep469 = getelementptr i8, i8* %call2, i64 %213
  %scevgep469470 = bitcast i8* %scevgep469 to double*
  %_p_scalar_471 = load double, double* %scevgep469470, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1290476 = add nsw i64 %210, %polly.access.mul.Packed_MemRef_call1290465
  %polly.access.Packed_MemRef_call1290477 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290476
  %_p_scalar_478 = load double, double* %polly.access.Packed_MemRef_call1290477, align 8
  %214 = mul i64 %211, 9600
  br label %polly.loop_header458

polly.loop_exit460:                               ; preds = %polly.loop_header458, %polly.loop_header450
  %polly.indvar_next455 = add nuw nsw i64 %polly.indvar454, 1
  %polly.loop_cond456.not.not = icmp slt i64 %polly.indvar454, %206
  %indvars.iv.next1052 = add i64 %indvars.iv1051, 1
  br i1 %polly.loop_cond456.not.not, label %polly.loop_header450, label %polly.loop_exit452

polly.loop_header458:                             ; preds = %polly.loop_header458.preheader, %polly.loop_header458
  %polly.indvar462 = phi i64 [ %polly.indvar_next463, %polly.loop_header458 ], [ 0, %polly.loop_header458.preheader ]
  %215 = add nuw nsw i64 %polly.indvar462, %169
  %polly.access.add.Packed_MemRef_call1290466 = add nuw nsw i64 %polly.indvar462, %polly.access.mul.Packed_MemRef_call1290465
  %polly.access.Packed_MemRef_call1290467 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290466
  %_p_scalar_468 = load double, double* %polly.access.Packed_MemRef_call1290467, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_471, %_p_scalar_468
  %216 = mul nuw nsw i64 %215, 8000
  %217 = add nuw nsw i64 %216, %209
  %scevgep472 = getelementptr i8, i8* %call2, i64 %217
  %scevgep472473 = bitcast i8* %scevgep472 to double*
  %_p_scalar_474 = load double, double* %scevgep472473, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75 = fmul fast double %_p_scalar_478, %_p_scalar_474
  %218 = shl i64 %215, 3
  %219 = add i64 %218, %214
  %scevgep479 = getelementptr i8, i8* %call, i64 %219
  %scevgep479480 = bitcast i8* %scevgep479 to double*
  %_p_scalar_481 = load double, double* %scevgep479480, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_481
  store double %p_add42.i79, double* %scevgep479480, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next463 = add nuw nsw i64 %polly.indvar462, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar462, %smin1053
  br i1 %exitcond1054.not, label %polly.loop_exit460, label %polly.loop_header458

polly.start484:                                   ; preds = %init_array.exit
  %malloccall486 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header570

polly.exiting485:                                 ; preds = %polly.loop_exit594
  tail call void @free(i8* %malloccall486)
  br label %kernel_syr2k.exit

polly.loop_header570:                             ; preds = %polly.loop_exit578, %polly.start484
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit578 ], [ 0, %polly.start484 ]
  %polly.indvar573 = phi i64 [ %polly.indvar_next574, %polly.loop_exit578 ], [ 1, %polly.start484 ]
  %220 = add i64 %indvar, 1
  %221 = mul nuw nsw i64 %polly.indvar573, 9600
  %scevgep582 = getelementptr i8, i8* %call, i64 %221
  %min.iters.check1220 = icmp ult i64 %220, 4
  br i1 %min.iters.check1220, label %polly.loop_header576.preheader, label %vector.ph1221

vector.ph1221:                                    ; preds = %polly.loop_header570
  %n.vec1223 = and i64 %220, -4
  br label %vector.body1219

vector.body1219:                                  ; preds = %vector.body1219, %vector.ph1221
  %index1224 = phi i64 [ 0, %vector.ph1221 ], [ %index.next1225, %vector.body1219 ]
  %222 = shl nuw nsw i64 %index1224, 3
  %223 = getelementptr i8, i8* %scevgep582, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  %wide.load1228 = load <4 x double>, <4 x double>* %224, align 8, !alias.scope !89, !noalias !91
  %225 = fmul fast <4 x double> %wide.load1228, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %226 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %225, <4 x double>* %226, align 8, !alias.scope !89, !noalias !91
  %index.next1225 = add i64 %index1224, 4
  %227 = icmp eq i64 %index.next1225, %n.vec1223
  br i1 %227, label %middle.block1217, label %vector.body1219, !llvm.loop !95

middle.block1217:                                 ; preds = %vector.body1219
  %cmp.n1227 = icmp eq i64 %220, %n.vec1223
  br i1 %cmp.n1227, label %polly.loop_exit578, label %polly.loop_header576.preheader

polly.loop_header576.preheader:                   ; preds = %polly.loop_header570, %middle.block1217
  %polly.indvar579.ph = phi i64 [ 0, %polly.loop_header570 ], [ %n.vec1223, %middle.block1217 ]
  br label %polly.loop_header576

polly.loop_exit578:                               ; preds = %polly.loop_header576, %middle.block1217
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next574, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1088.not, label %polly.loop_header586.preheader, label %polly.loop_header570

polly.loop_header586.preheader:                   ; preds = %polly.loop_exit578
  %Packed_MemRef_call1487 = bitcast i8* %malloccall486 to double*
  br label %polly.loop_header586

polly.loop_header576:                             ; preds = %polly.loop_header576.preheader, %polly.loop_header576
  %polly.indvar579 = phi i64 [ %polly.indvar_next580, %polly.loop_header576 ], [ %polly.indvar579.ph, %polly.loop_header576.preheader ]
  %228 = shl nuw nsw i64 %polly.indvar579, 3
  %scevgep583 = getelementptr i8, i8* %scevgep582, i64 %228
  %scevgep583584 = bitcast i8* %scevgep583 to double*
  %_p_scalar_585 = load double, double* %scevgep583584, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_585, 1.200000e+00
  store double %p_mul.i, double* %scevgep583584, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next580 = add nuw nsw i64 %polly.indvar579, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next580, %polly.indvar573
  br i1 %exitcond1087.not, label %polly.loop_exit578, label %polly.loop_header576, !llvm.loop !96

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_exit594
  %indvars.iv1062 = phi i64 [ 0, %polly.loop_header586.preheader ], [ %indvars.iv.next1063, %polly.loop_exit594 ]
  %polly.indvar589 = phi i64 [ 0, %polly.loop_header586.preheader ], [ %polly.indvar_next590, %polly.loop_exit594 ]
  %smin1082 = call i64 @llvm.smin.i64(i64 %indvars.iv1062, i64 -872)
  %229 = add nsw i64 %smin1082, 1000
  %230 = shl nsw i64 %polly.indvar589, 7
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit601
  %polly.indvar_next590 = add nuw nsw i64 %polly.indvar589, 1
  %indvars.iv.next1063 = add nsw i64 %indvars.iv1062, -128
  %exitcond1086.not = icmp eq i64 %polly.indvar_next590, 8
  br i1 %exitcond1086.not, label %polly.exiting485, label %polly.loop_header586

polly.loop_header592:                             ; preds = %polly.loop_exit601, %polly.loop_header586
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %polly.indvar595 = phi i64 [ %253, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %231 = lshr i64 %polly.indvar595, 2
  %232 = shl nuw nsw i64 %231, 6
  %233 = sub nsw i64 %indvars.iv1069, %232
  %234 = add i64 %indvars.iv1074, %232
  %235 = shl nsw i64 %polly.indvar595, 4
  %236 = mul nsw i64 %polly.indvar595, -16
  %237 = add nsw i64 %236, 1199
  %polly.access.mul.call1622.us = mul nsw i64 %polly.indvar595, 16000
  %238 = or i64 %235, 1
  %polly.access.mul.call1622.us.1 = mul nuw nsw i64 %238, 1000
  %239 = or i64 %235, 2
  %polly.access.mul.call1622.us.2 = mul nuw nsw i64 %239, 1000
  %240 = or i64 %235, 3
  %polly.access.mul.call1622.us.3 = mul nuw nsw i64 %240, 1000
  %241 = or i64 %235, 4
  %polly.access.mul.call1622.us.4 = mul nuw nsw i64 %241, 1000
  %242 = or i64 %235, 5
  %polly.access.mul.call1622.us.5 = mul nuw nsw i64 %242, 1000
  %243 = or i64 %235, 6
  %polly.access.mul.call1622.us.6 = mul nuw nsw i64 %243, 1000
  %244 = or i64 %235, 7
  %polly.access.mul.call1622.us.7 = mul nuw nsw i64 %244, 1000
  %245 = or i64 %235, 8
  %polly.access.mul.call1622.us.8 = mul nuw nsw i64 %245, 1000
  %246 = or i64 %235, 9
  %polly.access.mul.call1622.us.9 = mul nuw nsw i64 %246, 1000
  %247 = or i64 %235, 10
  %polly.access.mul.call1622.us.10 = mul nuw nsw i64 %247, 1000
  %248 = or i64 %235, 11
  %polly.access.mul.call1622.us.11 = mul nuw nsw i64 %248, 1000
  %249 = or i64 %235, 12
  %polly.access.mul.call1622.us.12 = mul nuw nsw i64 %249, 1000
  %250 = or i64 %235, 13
  %polly.access.mul.call1622.us.13 = mul nuw nsw i64 %250, 1000
  %251 = or i64 %235, 14
  %polly.access.mul.call1622.us.14 = mul nuw nsw i64 %251, 1000
  %252 = or i64 %235, 15
  %polly.access.mul.call1622.us.15 = mul nuw nsw i64 %252, 1000
  br label %polly.loop_header599

polly.loop_exit601:                               ; preds = %polly.loop_exit642
  %253 = add nuw nsw i64 %polly.indvar595, 1
  %indvars.iv.next1070 = add nuw nsw i64 %indvars.iv1069, 16
  %indvars.iv.next1075 = add nsw i64 %indvars.iv1074, -16
  %exitcond1085.not = icmp eq i64 %253, 75
  br i1 %exitcond1085.not, label %polly.loop_exit594, label %polly.loop_header592

polly.loop_header599:                             ; preds = %polly.loop_exit642, %polly.loop_header592
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit642 ], [ %234, %polly.loop_header592 ]
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072, %polly.loop_exit642 ], [ %233, %polly.loop_header592 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit642 ], [ %231, %polly.loop_header592 ]
  %smax1073 = call i64 @llvm.smax.i64(i64 %indvars.iv1071, i64 0)
  %254 = add i64 %smax1073, %indvars.iv1076
  %255 = shl nsw i64 %polly.indvar602, 2
  %.not.not886 = icmp ugt i64 %255, %polly.indvar595
  %256 = shl nsw i64 %polly.indvar602, 6
  %257 = add nsw i64 %256, %236
  %258 = icmp sgt i64 %257, 0
  %259 = select i1 %258, i64 %257, i64 0
  %260 = add nsw i64 %257, 63
  %261 = icmp slt i64 %237, %260
  %262 = select i1 %261, i64 %237, i64 %260
  %polly.loop_guard629.not = icmp sgt i64 %259, %262
  br i1 %.not.not886, label %polly.loop_header605.us, label %polly.loop_header599.split

polly.loop_header605.us:                          ; preds = %polly.loop_header599, %polly.loop_exit628.us
  %polly.indvar608.us = phi i64 [ %polly.indvar_next609.us, %polly.loop_exit628.us ], [ 0, %polly.loop_header599 ]
  %263 = add nuw nsw i64 %polly.indvar608.us, %230
  %polly.access.mul.Packed_MemRef_call1487.us = mul nuw nsw i64 %polly.indvar608.us, 1200
  %polly.access.add.call1623.us = add nuw nsw i64 %263, %polly.access.mul.call1622.us
  %polly.access.call1624.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us
  %polly.access.call1624.load.us = load double, double* %polly.access.call1624.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.Packed_MemRef_call1487.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.mul.Packed_MemRef_call1487.us
  store double %polly.access.call1624.load.us, double* %polly.access.Packed_MemRef_call1487.us, align 8
  %polly.access.add.call1623.us.1 = add nuw nsw i64 %263, %polly.access.mul.call1622.us.1
  %polly.access.call1624.us.1 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.1
  %polly.access.call1624.load.us.1 = load double, double* %polly.access.call1624.us.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 1
  %polly.access.Packed_MemRef_call1487.us.1 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.1
  store double %polly.access.call1624.load.us.1, double* %polly.access.Packed_MemRef_call1487.us.1, align 8
  %polly.access.add.call1623.us.2 = add nuw nsw i64 %263, %polly.access.mul.call1622.us.2
  %polly.access.call1624.us.2 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.2
  %polly.access.call1624.load.us.2 = load double, double* %polly.access.call1624.us.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 2
  %polly.access.Packed_MemRef_call1487.us.2 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.2
  store double %polly.access.call1624.load.us.2, double* %polly.access.Packed_MemRef_call1487.us.2, align 8
  %polly.access.add.call1623.us.3 = add nuw nsw i64 %263, %polly.access.mul.call1622.us.3
  %polly.access.call1624.us.3 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.3
  %polly.access.call1624.load.us.3 = load double, double* %polly.access.call1624.us.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 3
  %polly.access.Packed_MemRef_call1487.us.3 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.3
  store double %polly.access.call1624.load.us.3, double* %polly.access.Packed_MemRef_call1487.us.3, align 8
  %polly.access.add.call1623.us.4 = add nuw nsw i64 %263, %polly.access.mul.call1622.us.4
  %polly.access.call1624.us.4 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.4
  %polly.access.call1624.load.us.4 = load double, double* %polly.access.call1624.us.4, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 4
  %polly.access.Packed_MemRef_call1487.us.4 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.4
  store double %polly.access.call1624.load.us.4, double* %polly.access.Packed_MemRef_call1487.us.4, align 8
  %polly.access.add.call1623.us.5 = add nuw nsw i64 %263, %polly.access.mul.call1622.us.5
  %polly.access.call1624.us.5 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.5
  %polly.access.call1624.load.us.5 = load double, double* %polly.access.call1624.us.5, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 5
  %polly.access.Packed_MemRef_call1487.us.5 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.5
  store double %polly.access.call1624.load.us.5, double* %polly.access.Packed_MemRef_call1487.us.5, align 8
  %polly.access.add.call1623.us.6 = add nuw nsw i64 %263, %polly.access.mul.call1622.us.6
  %polly.access.call1624.us.6 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.6
  %polly.access.call1624.load.us.6 = load double, double* %polly.access.call1624.us.6, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 6
  %polly.access.Packed_MemRef_call1487.us.6 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.6
  store double %polly.access.call1624.load.us.6, double* %polly.access.Packed_MemRef_call1487.us.6, align 8
  %polly.access.add.call1623.us.7 = add nuw nsw i64 %263, %polly.access.mul.call1622.us.7
  %polly.access.call1624.us.7 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.7
  %polly.access.call1624.load.us.7 = load double, double* %polly.access.call1624.us.7, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 7
  %polly.access.Packed_MemRef_call1487.us.7 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.7
  store double %polly.access.call1624.load.us.7, double* %polly.access.Packed_MemRef_call1487.us.7, align 8
  %polly.access.add.call1623.us.8 = add nuw nsw i64 %263, %polly.access.mul.call1622.us.8
  %polly.access.call1624.us.8 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.8
  %polly.access.call1624.load.us.8 = load double, double* %polly.access.call1624.us.8, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 8
  %polly.access.Packed_MemRef_call1487.us.8 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.8
  store double %polly.access.call1624.load.us.8, double* %polly.access.Packed_MemRef_call1487.us.8, align 8
  %polly.access.add.call1623.us.9 = add nuw nsw i64 %263, %polly.access.mul.call1622.us.9
  %polly.access.call1624.us.9 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.9
  %polly.access.call1624.load.us.9 = load double, double* %polly.access.call1624.us.9, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 9
  %polly.access.Packed_MemRef_call1487.us.9 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.9
  store double %polly.access.call1624.load.us.9, double* %polly.access.Packed_MemRef_call1487.us.9, align 8
  %polly.access.add.call1623.us.10 = add nuw nsw i64 %263, %polly.access.mul.call1622.us.10
  %polly.access.call1624.us.10 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.10
  %polly.access.call1624.load.us.10 = load double, double* %polly.access.call1624.us.10, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 10
  %polly.access.Packed_MemRef_call1487.us.10 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.10
  store double %polly.access.call1624.load.us.10, double* %polly.access.Packed_MemRef_call1487.us.10, align 8
  %polly.access.add.call1623.us.11 = add nuw nsw i64 %263, %polly.access.mul.call1622.us.11
  %polly.access.call1624.us.11 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.11
  %polly.access.call1624.load.us.11 = load double, double* %polly.access.call1624.us.11, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 11
  %polly.access.Packed_MemRef_call1487.us.11 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.11
  store double %polly.access.call1624.load.us.11, double* %polly.access.Packed_MemRef_call1487.us.11, align 8
  %polly.access.add.call1623.us.12 = add nuw nsw i64 %263, %polly.access.mul.call1622.us.12
  %polly.access.call1624.us.12 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.12
  %polly.access.call1624.load.us.12 = load double, double* %polly.access.call1624.us.12, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 12
  %polly.access.Packed_MemRef_call1487.us.12 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.12
  store double %polly.access.call1624.load.us.12, double* %polly.access.Packed_MemRef_call1487.us.12, align 8
  %polly.access.add.call1623.us.13 = add nuw nsw i64 %263, %polly.access.mul.call1622.us.13
  %polly.access.call1624.us.13 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.13
  %polly.access.call1624.load.us.13 = load double, double* %polly.access.call1624.us.13, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 13
  %polly.access.Packed_MemRef_call1487.us.13 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.13
  store double %polly.access.call1624.load.us.13, double* %polly.access.Packed_MemRef_call1487.us.13, align 8
  %polly.access.add.call1623.us.14 = add nuw nsw i64 %263, %polly.access.mul.call1622.us.14
  %polly.access.call1624.us.14 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.14
  %polly.access.call1624.load.us.14 = load double, double* %polly.access.call1624.us.14, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 14
  %polly.access.Packed_MemRef_call1487.us.14 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.14
  store double %polly.access.call1624.load.us.14, double* %polly.access.Packed_MemRef_call1487.us.14, align 8
  %polly.access.add.call1623.us.15 = add nuw nsw i64 %263, %polly.access.mul.call1622.us.15
  %polly.access.call1624.us.15 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.15
  %polly.access.call1624.load.us.15 = load double, double* %polly.access.call1624.us.15, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 15
  %polly.access.Packed_MemRef_call1487.us.15 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.15
  store double %polly.access.call1624.load.us.15, double* %polly.access.Packed_MemRef_call1487.us.15, align 8
  br i1 %polly.loop_guard629.not, label %polly.loop_exit628.us, label %polly.loop_header626.us

polly.loop_header626.us:                          ; preds = %polly.loop_header605.us, %polly.loop_header626.us
  %polly.indvar630.us = phi i64 [ %polly.indvar_next631.us, %polly.loop_header626.us ], [ %259, %polly.loop_header605.us ]
  %264 = add nuw nsw i64 %polly.indvar630.us, %235
  %polly.access.mul.call1634.us = mul nsw i64 %264, 1000
  %polly.access.add.call1635.us = add nuw nsw i64 %263, %polly.access.mul.call1634.us
  %polly.access.call1636.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1635.us
  %polly.access.call1636.load.us = load double, double* %polly.access.call1636.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487638.us = add nuw nsw i64 %polly.indvar630.us, %polly.access.mul.Packed_MemRef_call1487.us
  %polly.access.Packed_MemRef_call1487639.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487638.us
  store double %polly.access.call1636.load.us, double* %polly.access.Packed_MemRef_call1487639.us, align 8
  %polly.indvar_next631.us = add nuw nsw i64 %polly.indvar630.us, 1
  %polly.loop_cond632.not.not.us = icmp slt i64 %polly.indvar630.us, %262
  br i1 %polly.loop_cond632.not.not.us, label %polly.loop_header626.us, label %polly.loop_exit628.us

polly.loop_exit628.us:                            ; preds = %polly.loop_header626.us, %polly.loop_header605.us
  %polly.indvar_next609.us = add nuw nsw i64 %polly.indvar608.us, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar_next609.us, %229
  br i1 %exitcond1068.not, label %polly.loop_header640.preheader, label %polly.loop_header605.us

polly.loop_header599.split:                       ; preds = %polly.loop_header599
  br i1 %polly.loop_guard629.not, label %polly.loop_header640.preheader, label %polly.loop_header605

polly.loop_exit642:                               ; preds = %polly.loop_exit649, %polly.loop_header640.preheader
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %indvars.iv.next1072 = add i64 %indvars.iv1071, -64
  %indvars.iv.next1077 = add i64 %indvars.iv1076, 64
  %exitcond1084.not = icmp eq i64 %polly.indvar_next603, 19
  br i1 %exitcond1084.not, label %polly.loop_exit601, label %polly.loop_header599

polly.loop_header605:                             ; preds = %polly.loop_header599.split, %polly.loop_exit628
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_exit628 ], [ 0, %polly.loop_header599.split ]
  %265 = add nuw nsw i64 %polly.indvar608, %230
  %polly.access.mul.Packed_MemRef_call1487637 = mul nuw nsw i64 %polly.indvar608, 1200
  br label %polly.loop_header626

polly.loop_exit628:                               ; preds = %polly.loop_header626
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next609, %229
  br i1 %exitcond1065.not, label %polly.loop_header640.preheader, label %polly.loop_header605

polly.loop_header640.preheader:                   ; preds = %polly.loop_exit628, %polly.loop_exit628.us, %polly.loop_header599.split
  %266 = sub nsw i64 %235, %256
  %267 = icmp sgt i64 %266, 0
  %268 = select i1 %267, i64 %266, i64 0
  %269 = mul nsw i64 %polly.indvar602, -64
  %270 = icmp slt i64 %269, -1136
  %271 = select i1 %270, i64 %269, i64 -1136
  %272 = add nsw i64 %271, 1199
  %polly.loop_guard650.not = icmp sgt i64 %268, %272
  br i1 %polly.loop_guard650.not, label %polly.loop_exit642, label %polly.loop_header640

polly.loop_header626:                             ; preds = %polly.loop_header605, %polly.loop_header626
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_header626 ], [ %259, %polly.loop_header605 ]
  %273 = add nuw nsw i64 %polly.indvar630, %235
  %polly.access.mul.call1634 = mul nsw i64 %273, 1000
  %polly.access.add.call1635 = add nuw nsw i64 %265, %polly.access.mul.call1634
  %polly.access.call1636 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1635
  %polly.access.call1636.load = load double, double* %polly.access.call1636, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487638 = add nuw nsw i64 %polly.indvar630, %polly.access.mul.Packed_MemRef_call1487637
  %polly.access.Packed_MemRef_call1487639 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487638
  store double %polly.access.call1636.load, double* %polly.access.Packed_MemRef_call1487639, align 8
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %polly.loop_cond632.not.not = icmp slt i64 %polly.indvar630, %262
  br i1 %polly.loop_cond632.not.not, label %polly.loop_header626, label %polly.loop_exit628

polly.loop_header640:                             ; preds = %polly.loop_header640.preheader, %polly.loop_exit649
  %polly.indvar643 = phi i64 [ %polly.indvar_next644, %polly.loop_exit649 ], [ 0, %polly.loop_header640.preheader ]
  %274 = add nuw nsw i64 %polly.indvar643, %230
  %polly.access.mul.Packed_MemRef_call1487662 = mul nuw nsw i64 %polly.indvar643, 1200
  %275 = shl i64 %274, 3
  br label %polly.loop_header647

polly.loop_exit649:                               ; preds = %polly.loop_exit657
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next644, %229
  br i1 %exitcond1083.not, label %polly.loop_exit642, label %polly.loop_header640

polly.loop_header647:                             ; preds = %polly.loop_header640, %polly.loop_exit657
  %indvars.iv1078 = phi i64 [ %254, %polly.loop_header640 ], [ %indvars.iv.next1079, %polly.loop_exit657 ]
  %polly.indvar651 = phi i64 [ %268, %polly.loop_header640 ], [ %polly.indvar_next652, %polly.loop_exit657 ]
  %smin1080 = call i64 @llvm.smin.i64(i64 %indvars.iv1078, i64 15)
  %276 = add nsw i64 %polly.indvar651, %257
  %polly.loop_guard6581128 = icmp sgt i64 %276, -1
  br i1 %polly.loop_guard6581128, label %polly.loop_header655.preheader, label %polly.loop_exit657

polly.loop_header655.preheader:                   ; preds = %polly.loop_header647
  %277 = add nuw nsw i64 %polly.indvar651, %256
  %278 = mul i64 %277, 8000
  %279 = add i64 %278, %275
  %scevgep666 = getelementptr i8, i8* %call2, i64 %279
  %scevgep666667 = bitcast i8* %scevgep666 to double*
  %_p_scalar_668 = load double, double* %scevgep666667, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1487673 = add nsw i64 %276, %polly.access.mul.Packed_MemRef_call1487662
  %polly.access.Packed_MemRef_call1487674 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487673
  %_p_scalar_675 = load double, double* %polly.access.Packed_MemRef_call1487674, align 8
  %280 = mul i64 %277, 9600
  br label %polly.loop_header655

polly.loop_exit657:                               ; preds = %polly.loop_header655, %polly.loop_header647
  %polly.indvar_next652 = add nuw nsw i64 %polly.indvar651, 1
  %polly.loop_cond653.not.not = icmp slt i64 %polly.indvar651, %272
  %indvars.iv.next1079 = add i64 %indvars.iv1078, 1
  br i1 %polly.loop_cond653.not.not, label %polly.loop_header647, label %polly.loop_exit649

polly.loop_header655:                             ; preds = %polly.loop_header655.preheader, %polly.loop_header655
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_header655 ], [ 0, %polly.loop_header655.preheader ]
  %281 = add nuw nsw i64 %polly.indvar659, %235
  %polly.access.add.Packed_MemRef_call1487663 = add nuw nsw i64 %polly.indvar659, %polly.access.mul.Packed_MemRef_call1487662
  %polly.access.Packed_MemRef_call1487664 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487663
  %_p_scalar_665 = load double, double* %polly.access.Packed_MemRef_call1487664, align 8
  %p_mul27.i = fmul fast double %_p_scalar_668, %_p_scalar_665
  %282 = mul nuw nsw i64 %281, 8000
  %283 = add nuw nsw i64 %282, %275
  %scevgep669 = getelementptr i8, i8* %call2, i64 %283
  %scevgep669670 = bitcast i8* %scevgep669 to double*
  %_p_scalar_671 = load double, double* %scevgep669670, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i = fmul fast double %_p_scalar_675, %_p_scalar_671
  %284 = shl i64 %281, 3
  %285 = add i64 %284, %280
  %scevgep676 = getelementptr i8, i8* %call, i64 %285
  %scevgep676677 = bitcast i8* %scevgep676 to double*
  %_p_scalar_678 = load double, double* %scevgep676677, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_678
  store double %p_add42.i, double* %scevgep676677, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar659, %smin1080
  br i1 %exitcond1081.not, label %polly.loop_exit657, label %polly.loop_header655

polly.loop_header805:                             ; preds = %entry, %polly.loop_exit813
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit813 ], [ 0, %entry ]
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %entry ]
  %smin1115 = call i64 @llvm.smin.i64(i64 %indvars.iv1113, i64 -1168)
  %286 = shl nsw i64 %polly.indvar808, 5
  %287 = add nsw i64 %smin1115, 1199
  br label %polly.loop_header811

polly.loop_exit813:                               ; preds = %polly.loop_exit819
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %indvars.iv.next1114 = add nsw i64 %indvars.iv1113, -32
  %exitcond1118.not = icmp eq i64 %polly.indvar_next809, 38
  br i1 %exitcond1118.not, label %polly.loop_header832, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_exit819, %polly.loop_header805
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110, %polly.loop_exit819 ], [ 0, %polly.loop_header805 ]
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_exit819 ], [ 0, %polly.loop_header805 ]
  %288 = mul nsw i64 %polly.indvar814, -32
  %smin = call i64 @llvm.smin.i64(i64 %288, i64 -1168)
  %289 = add nsw i64 %smin, 1200
  %smin1111 = call i64 @llvm.smin.i64(i64 %indvars.iv1109, i64 -1168)
  %290 = shl nsw i64 %polly.indvar814, 5
  %291 = add nsw i64 %smin1111, 1199
  br label %polly.loop_header817

polly.loop_exit819:                               ; preds = %polly.loop_exit825
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %indvars.iv.next1110 = add nsw i64 %indvars.iv1109, -32
  %exitcond1117.not = icmp eq i64 %polly.indvar_next815, 38
  br i1 %exitcond1117.not, label %polly.loop_exit813, label %polly.loop_header811

polly.loop_header817:                             ; preds = %polly.loop_exit825, %polly.loop_header811
  %polly.indvar820 = phi i64 [ 0, %polly.loop_header811 ], [ %polly.indvar_next821, %polly.loop_exit825 ]
  %292 = add nuw nsw i64 %polly.indvar820, %286
  %293 = trunc i64 %292 to i32
  %294 = mul nuw nsw i64 %292, 9600
  %min.iters.check = icmp eq i64 %289, 0
  br i1 %min.iters.check, label %polly.loop_header823, label %vector.ph1159

vector.ph1159:                                    ; preds = %polly.loop_header817
  %broadcast.splatinsert1166 = insertelement <4 x i64> poison, i64 %290, i32 0
  %broadcast.splat1167 = shufflevector <4 x i64> %broadcast.splatinsert1166, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1168 = insertelement <4 x i32> poison, i32 %293, i32 0
  %broadcast.splat1169 = shufflevector <4 x i32> %broadcast.splatinsert1168, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %vector.ph1159
  %index1160 = phi i64 [ 0, %vector.ph1159 ], [ %index.next1161, %vector.body1158 ]
  %vec.ind1164 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1159 ], [ %vec.ind.next1165, %vector.body1158 ]
  %295 = add nuw nsw <4 x i64> %vec.ind1164, %broadcast.splat1167
  %296 = trunc <4 x i64> %295 to <4 x i32>
  %297 = mul <4 x i32> %broadcast.splat1169, %296
  %298 = add <4 x i32> %297, <i32 3, i32 3, i32 3, i32 3>
  %299 = urem <4 x i32> %298, <i32 1200, i32 1200, i32 1200, i32 1200>
  %300 = sitofp <4 x i32> %299 to <4 x double>
  %301 = fmul fast <4 x double> %300, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %302 = extractelement <4 x i64> %295, i32 0
  %303 = shl i64 %302, 3
  %304 = add nuw nsw i64 %303, %294
  %305 = getelementptr i8, i8* %call, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %301, <4 x double>* %306, align 8, !alias.scope !99, !noalias !101
  %index.next1161 = add i64 %index1160, 4
  %vec.ind.next1165 = add <4 x i64> %vec.ind1164, <i64 4, i64 4, i64 4, i64 4>
  %307 = icmp eq i64 %index.next1161, %289
  br i1 %307, label %polly.loop_exit825, label %vector.body1158, !llvm.loop !104

polly.loop_exit825:                               ; preds = %vector.body1158, %polly.loop_header823
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar820, %287
  br i1 %exitcond1116.not, label %polly.loop_exit819, label %polly.loop_header817

polly.loop_header823:                             ; preds = %polly.loop_header817, %polly.loop_header823
  %polly.indvar826 = phi i64 [ %polly.indvar_next827, %polly.loop_header823 ], [ 0, %polly.loop_header817 ]
  %308 = add nuw nsw i64 %polly.indvar826, %290
  %309 = trunc i64 %308 to i32
  %310 = mul i32 %309, %293
  %311 = add i32 %310, 3
  %312 = urem i32 %311, 1200
  %p_conv31.i = sitofp i32 %312 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %313 = shl i64 %308, 3
  %314 = add nuw nsw i64 %313, %294
  %scevgep829 = getelementptr i8, i8* %call, i64 %314
  %scevgep829830 = bitcast i8* %scevgep829 to double*
  store double %p_div33.i, double* %scevgep829830, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next827 = add nuw nsw i64 %polly.indvar826, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar826, %291
  br i1 %exitcond1112.not, label %polly.loop_exit825, label %polly.loop_header823, !llvm.loop !105

polly.loop_header832:                             ; preds = %polly.loop_exit813, %polly.loop_exit840
  %indvars.iv1103 = phi i64 [ %indvars.iv.next1104, %polly.loop_exit840 ], [ 0, %polly.loop_exit813 ]
  %polly.indvar835 = phi i64 [ %polly.indvar_next836, %polly.loop_exit840 ], [ 0, %polly.loop_exit813 ]
  %smin1105 = call i64 @llvm.smin.i64(i64 %indvars.iv1103, i64 -1168)
  %315 = shl nsw i64 %polly.indvar835, 5
  %316 = add nsw i64 %smin1105, 1199
  br label %polly.loop_header838

polly.loop_exit840:                               ; preds = %polly.loop_exit846
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %indvars.iv.next1104 = add nsw i64 %indvars.iv1103, -32
  %exitcond1108.not = icmp eq i64 %polly.indvar_next836, 38
  br i1 %exitcond1108.not, label %polly.loop_header858, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_exit846, %polly.loop_header832
  %indvars.iv1099 = phi i64 [ %indvars.iv.next1100, %polly.loop_exit846 ], [ 0, %polly.loop_header832 ]
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %polly.loop_header832 ]
  %317 = mul nsw i64 %polly.indvar841, -32
  %smin1173 = call i64 @llvm.smin.i64(i64 %317, i64 -968)
  %318 = add nsw i64 %smin1173, 1000
  %smin1101 = call i64 @llvm.smin.i64(i64 %indvars.iv1099, i64 -968)
  %319 = shl nsw i64 %polly.indvar841, 5
  %320 = add nsw i64 %smin1101, 999
  br label %polly.loop_header844

polly.loop_exit846:                               ; preds = %polly.loop_exit852
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %indvars.iv.next1100 = add nsw i64 %indvars.iv1099, -32
  %exitcond1107.not = icmp eq i64 %polly.indvar_next842, 32
  br i1 %exitcond1107.not, label %polly.loop_exit840, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_exit852, %polly.loop_header838
  %polly.indvar847 = phi i64 [ 0, %polly.loop_header838 ], [ %polly.indvar_next848, %polly.loop_exit852 ]
  %321 = add nuw nsw i64 %polly.indvar847, %315
  %322 = trunc i64 %321 to i32
  %323 = mul nuw nsw i64 %321, 8000
  %min.iters.check1174 = icmp eq i64 %318, 0
  br i1 %min.iters.check1174, label %polly.loop_header850, label %vector.ph1175

vector.ph1175:                                    ; preds = %polly.loop_header844
  %broadcast.splatinsert1184 = insertelement <4 x i64> poison, i64 %319, i32 0
  %broadcast.splat1185 = shufflevector <4 x i64> %broadcast.splatinsert1184, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1186 = insertelement <4 x i32> poison, i32 %322, i32 0
  %broadcast.splat1187 = shufflevector <4 x i32> %broadcast.splatinsert1186, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1172

vector.body1172:                                  ; preds = %vector.body1172, %vector.ph1175
  %index1178 = phi i64 [ 0, %vector.ph1175 ], [ %index.next1179, %vector.body1172 ]
  %vec.ind1182 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1175 ], [ %vec.ind.next1183, %vector.body1172 ]
  %324 = add nuw nsw <4 x i64> %vec.ind1182, %broadcast.splat1185
  %325 = trunc <4 x i64> %324 to <4 x i32>
  %326 = mul <4 x i32> %broadcast.splat1187, %325
  %327 = add <4 x i32> %326, <i32 2, i32 2, i32 2, i32 2>
  %328 = urem <4 x i32> %327, <i32 1000, i32 1000, i32 1000, i32 1000>
  %329 = sitofp <4 x i32> %328 to <4 x double>
  %330 = fmul fast <4 x double> %329, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %331 = extractelement <4 x i64> %324, i32 0
  %332 = shl i64 %331, 3
  %333 = add nuw nsw i64 %332, %323
  %334 = getelementptr i8, i8* %call2, i64 %333
  %335 = bitcast i8* %334 to <4 x double>*
  store <4 x double> %330, <4 x double>* %335, align 8, !alias.scope !103, !noalias !106
  %index.next1179 = add i64 %index1178, 4
  %vec.ind.next1183 = add <4 x i64> %vec.ind1182, <i64 4, i64 4, i64 4, i64 4>
  %336 = icmp eq i64 %index.next1179, %318
  br i1 %336, label %polly.loop_exit852, label %vector.body1172, !llvm.loop !107

polly.loop_exit852:                               ; preds = %vector.body1172, %polly.loop_header850
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar847, %316
  br i1 %exitcond1106.not, label %polly.loop_exit846, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_header844, %polly.loop_header850
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_header850 ], [ 0, %polly.loop_header844 ]
  %337 = add nuw nsw i64 %polly.indvar853, %319
  %338 = trunc i64 %337 to i32
  %339 = mul i32 %338, %322
  %340 = add i32 %339, 2
  %341 = urem i32 %340, 1000
  %p_conv10.i = sitofp i32 %341 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %342 = shl i64 %337, 3
  %343 = add nuw nsw i64 %342, %323
  %scevgep856 = getelementptr i8, i8* %call2, i64 %343
  %scevgep856857 = bitcast i8* %scevgep856 to double*
  store double %p_div12.i, double* %scevgep856857, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar853, %320
  br i1 %exitcond1102.not, label %polly.loop_exit852, label %polly.loop_header850, !llvm.loop !108

polly.loop_header858:                             ; preds = %polly.loop_exit840, %polly.loop_exit866
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094, %polly.loop_exit866 ], [ 0, %polly.loop_exit840 ]
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_exit866 ], [ 0, %polly.loop_exit840 ]
  %smin1095 = call i64 @llvm.smin.i64(i64 %indvars.iv1093, i64 -1168)
  %344 = shl nsw i64 %polly.indvar861, 5
  %345 = add nsw i64 %smin1095, 1199
  br label %polly.loop_header864

polly.loop_exit866:                               ; preds = %polly.loop_exit872
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %indvars.iv.next1094 = add nsw i64 %indvars.iv1093, -32
  %exitcond1098.not = icmp eq i64 %polly.indvar_next862, 38
  br i1 %exitcond1098.not, label %init_array.exit, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_exit872, %polly.loop_header858
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090, %polly.loop_exit872 ], [ 0, %polly.loop_header858 ]
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_exit872 ], [ 0, %polly.loop_header858 ]
  %346 = mul nsw i64 %polly.indvar867, -32
  %smin1191 = call i64 @llvm.smin.i64(i64 %346, i64 -968)
  %347 = add nsw i64 %smin1191, 1000
  %smin1091 = call i64 @llvm.smin.i64(i64 %indvars.iv1089, i64 -968)
  %348 = shl nsw i64 %polly.indvar867, 5
  %349 = add nsw i64 %smin1091, 999
  br label %polly.loop_header870

polly.loop_exit872:                               ; preds = %polly.loop_exit878
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %indvars.iv.next1090 = add nsw i64 %indvars.iv1089, -32
  %exitcond1097.not = icmp eq i64 %polly.indvar_next868, 32
  br i1 %exitcond1097.not, label %polly.loop_exit866, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_exit878, %polly.loop_header864
  %polly.indvar873 = phi i64 [ 0, %polly.loop_header864 ], [ %polly.indvar_next874, %polly.loop_exit878 ]
  %350 = add nuw nsw i64 %polly.indvar873, %344
  %351 = trunc i64 %350 to i32
  %352 = mul nuw nsw i64 %350, 8000
  %min.iters.check1192 = icmp eq i64 %347, 0
  br i1 %min.iters.check1192, label %polly.loop_header876, label %vector.ph1193

vector.ph1193:                                    ; preds = %polly.loop_header870
  %broadcast.splatinsert1202 = insertelement <4 x i64> poison, i64 %348, i32 0
  %broadcast.splat1203 = shufflevector <4 x i64> %broadcast.splatinsert1202, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1204 = insertelement <4 x i32> poison, i32 %351, i32 0
  %broadcast.splat1205 = shufflevector <4 x i32> %broadcast.splatinsert1204, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %vector.ph1193
  %index1196 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1197, %vector.body1190 ]
  %vec.ind1200 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1193 ], [ %vec.ind.next1201, %vector.body1190 ]
  %353 = add nuw nsw <4 x i64> %vec.ind1200, %broadcast.splat1203
  %354 = trunc <4 x i64> %353 to <4 x i32>
  %355 = mul <4 x i32> %broadcast.splat1205, %354
  %356 = add <4 x i32> %355, <i32 1, i32 1, i32 1, i32 1>
  %357 = urem <4 x i32> %356, <i32 1200, i32 1200, i32 1200, i32 1200>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %360 = extractelement <4 x i64> %353, i32 0
  %361 = shl i64 %360, 3
  %362 = add nuw nsw i64 %361, %352
  %363 = getelementptr i8, i8* %call1, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %359, <4 x double>* %364, align 8, !alias.scope !102, !noalias !109
  %index.next1197 = add i64 %index1196, 4
  %vec.ind.next1201 = add <4 x i64> %vec.ind1200, <i64 4, i64 4, i64 4, i64 4>
  %365 = icmp eq i64 %index.next1197, %347
  br i1 %365, label %polly.loop_exit878, label %vector.body1190, !llvm.loop !110

polly.loop_exit878:                               ; preds = %vector.body1190, %polly.loop_header876
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar873, %345
  br i1 %exitcond1096.not, label %polly.loop_exit872, label %polly.loop_header870

polly.loop_header876:                             ; preds = %polly.loop_header870, %polly.loop_header876
  %polly.indvar879 = phi i64 [ %polly.indvar_next880, %polly.loop_header876 ], [ 0, %polly.loop_header870 ]
  %366 = add nuw nsw i64 %polly.indvar879, %348
  %367 = trunc i64 %366 to i32
  %368 = mul i32 %367, %351
  %369 = add i32 %368, 1
  %370 = urem i32 %369, 1200
  %p_conv.i = sitofp i32 %370 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %371 = shl i64 %366, 3
  %372 = add nuw nsw i64 %371, %352
  %scevgep883 = getelementptr i8, i8* %call1, i64 %372
  %scevgep883884 = bitcast i8* %scevgep883 to double*
  store double %p_div.i, double* %scevgep883884, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next880 = add nuw nsw i64 %polly.indvar879, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar879, %349
  br i1 %exitcond1092.not, label %polly.loop_exit878, label %polly.loop_header876, !llvm.loop !111
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
!25 = !{!"llvm.loop.tile.size", i32 16}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 128}
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
!50 = !{!"llvm.loop.tile.size", i32 64}
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
