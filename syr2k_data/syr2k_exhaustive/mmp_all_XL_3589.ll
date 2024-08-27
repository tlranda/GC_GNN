; ModuleID = 'syr2k_exhaustive/mmp_all_XL_3589.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_3589.c"
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
  %scevgep1137 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1136 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1135 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1134 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1134, %scevgep1137
  %bound1 = icmp ult i8* %scevgep1136, %scevgep1135
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
  br i1 %exitcond18.not.i, label %vector.ph1141, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1141:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1148 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1149 = shufflevector <4 x i64> %broadcast.splatinsert1148, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1140

vector.body1140:                                  ; preds = %vector.body1140, %vector.ph1141
  %index1142 = phi i64 [ 0, %vector.ph1141 ], [ %index.next1143, %vector.body1140 ]
  %vec.ind1146 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1141 ], [ %vec.ind.next1147, %vector.body1140 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1146, %broadcast.splat1149
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv7.i, i64 %index1142
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1147 = add <4 x i64> %vec.ind1146, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1143, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1140, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1140
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1141, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit866
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start484, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1203 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1203, label %for.body3.i46.preheader1280, label %vector.ph1204

vector.ph1204:                                    ; preds = %for.body3.i46.preheader
  %n.vec1206 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %vector.ph1204
  %index1207 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1208, %vector.body1202 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i, i64 %index1207
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1208 = add i64 %index1207, 4
  %46 = icmp eq i64 %index.next1208, %n.vec1206
  br i1 %46, label %middle.block1200, label %vector.body1202, !llvm.loop !18

middle.block1200:                                 ; preds = %vector.body1202
  %cmp.n1210 = icmp eq i64 %indvars.iv21.i, %n.vec1206
  br i1 %cmp.n1210, label %for.inc6.i, label %for.body3.i46.preheader1280

for.body3.i46.preheader1280:                      ; preds = %for.body3.i46.preheader, %middle.block1200
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1206, %middle.block1200 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1280, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1280 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1200, %for.cond1.preheader.i45
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
  %min.iters.check1226 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1226, label %for.body3.i60.preheader1278, label %vector.ph1227

vector.ph1227:                                    ; preds = %for.body3.i60.preheader
  %n.vec1229 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1225

vector.body1225:                                  ; preds = %vector.body1225, %vector.ph1227
  %index1230 = phi i64 [ 0, %vector.ph1227 ], [ %index.next1231, %vector.body1225 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i52, i64 %index1230
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1234 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1234, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1231 = add i64 %index1230, 4
  %57 = icmp eq i64 %index.next1231, %n.vec1229
  br i1 %57, label %middle.block1223, label %vector.body1225, !llvm.loop !59

middle.block1223:                                 ; preds = %vector.body1225
  %cmp.n1233 = icmp eq i64 %indvars.iv21.i52, %n.vec1229
  br i1 %cmp.n1233, label %for.inc6.i63, label %for.body3.i60.preheader1278

for.body3.i60.preheader1278:                      ; preds = %for.body3.i60.preheader, %middle.block1223
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1229, %middle.block1223 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1278, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1278 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1223, %for.cond1.preheader.i54
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
  %min.iters.check1252 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1252, label %for.body3.i99.preheader1276, label %vector.ph1253

vector.ph1253:                                    ; preds = %for.body3.i99.preheader
  %n.vec1255 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %vector.ph1253
  %index1256 = phi i64 [ 0, %vector.ph1253 ], [ %index.next1257, %vector.body1251 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i91, i64 %index1256
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1260 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1260, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1257 = add i64 %index1256, 4
  %68 = icmp eq i64 %index.next1257, %n.vec1255
  br i1 %68, label %middle.block1249, label %vector.body1251, !llvm.loop !61

middle.block1249:                                 ; preds = %vector.body1251
  %cmp.n1259 = icmp eq i64 %indvars.iv21.i91, %n.vec1255
  br i1 %cmp.n1259, label %for.inc6.i102, label %for.body3.i99.preheader1276

for.body3.i99.preheader1276:                      ; preds = %for.body3.i99.preheader, %middle.block1249
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1255, %middle.block1249 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1276, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1276 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1249, %for.cond1.preheader.i93
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !63
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call831, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !65

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !66

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(768000) i8* @malloc(i64 768000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1264 = phi i64 [ %indvar.next1265, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1264, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1266 = icmp ult i64 %88, 4
  br i1 %min.iters.check1266, label %polly.loop_header191.preheader, label %vector.ph1267

vector.ph1267:                                    ; preds = %polly.loop_header
  %n.vec1269 = and i64 %88, -4
  br label %vector.body1263

vector.body1263:                                  ; preds = %vector.body1263, %vector.ph1267
  %index1270 = phi i64 [ 0, %vector.ph1267 ], [ %index.next1271, %vector.body1263 ]
  %90 = shl nuw nsw i64 %index1270, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1274 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1274, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1271 = add i64 %index1270, 4
  %95 = icmp eq i64 %index.next1271, %n.vec1269
  br i1 %95, label %middle.block1261, label %vector.body1263, !llvm.loop !73

middle.block1261:                                 ; preds = %vector.body1263
  %cmp.n1273 = icmp eq i64 %88, %n.vec1269
  br i1 %cmp.n1273, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1261
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1269, %middle.block1261 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1261
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1265 = add i64 %indvar1264, 1
  br i1 %exitcond1034.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1033.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin1028 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -920)
  %97 = add nsw i64 %smin1028, 1000
  %98 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -80
  %exitcond1032.not = icmp eq i64 %polly.indvar_next203, 13
  br i1 %exitcond1032.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %124, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = lshr i64 %polly.indvar208, 2
  %100 = mul nuw nsw i64 %99, 80
  %101 = sub nsw i64 %indvars.iv1016, %100
  %102 = add i64 %indvars.iv1020, %100
  %103 = mul nuw nsw i64 %polly.indvar208, 20
  %104 = mul nsw i64 %polly.indvar208, -20
  %polly.access.mul.call1230.us = mul nuw i64 %polly.indvar208, 20000
  %105 = or i64 %103, 1
  %polly.access.mul.call1230.us.1 = mul nuw nsw i64 %105, 1000
  %106 = or i64 %103, 2
  %polly.access.mul.call1230.us.2 = mul nuw nsw i64 %106, 1000
  %107 = or i64 %103, 3
  %polly.access.mul.call1230.us.3 = mul nuw nsw i64 %107, 1000
  %108 = mul i64 %polly.indvar208, 20000
  %polly.access.mul.call1230.us.4 = add i64 %108, 4000
  %109 = mul i64 %polly.indvar208, 20000
  %polly.access.mul.call1230.us.5 = add i64 %109, 5000
  %110 = mul i64 %polly.indvar208, 20000
  %polly.access.mul.call1230.us.6 = add i64 %110, 6000
  %111 = mul i64 %polly.indvar208, 20000
  %polly.access.mul.call1230.us.7 = add i64 %111, 7000
  %112 = mul i64 %polly.indvar208, 20000
  %polly.access.mul.call1230.us.8 = add i64 %112, 8000
  %113 = mul i64 %polly.indvar208, 20000
  %polly.access.mul.call1230.us.9 = add i64 %113, 9000
  %114 = mul i64 %polly.indvar208, 20000
  %polly.access.mul.call1230.us.10 = add i64 %114, 10000
  %115 = mul i64 %polly.indvar208, 20000
  %polly.access.mul.call1230.us.11 = add i64 %115, 11000
  %116 = mul i64 %polly.indvar208, 20000
  %polly.access.mul.call1230.us.12 = add i64 %116, 12000
  %117 = mul i64 %polly.indvar208, 20000
  %polly.access.mul.call1230.us.13 = add i64 %117, 13000
  %118 = mul i64 %polly.indvar208, 20000
  %polly.access.mul.call1230.us.14 = add i64 %118, 14000
  %119 = mul i64 %polly.indvar208, 20000
  %polly.access.mul.call1230.us.15 = add i64 %119, 15000
  %120 = mul i64 %polly.indvar208, 20000
  %polly.access.mul.call1230.us.16 = add i64 %120, 16000
  %121 = mul i64 %polly.indvar208, 20000
  %polly.access.mul.call1230.us.17 = add i64 %121, 17000
  %122 = mul i64 %polly.indvar208, 20000
  %polly.access.mul.call1230.us.18 = add i64 %122, 18000
  %123 = mul i64 %polly.indvar208, 20000
  %polly.access.mul.call1230.us.19 = add i64 %123, 19000
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit248
  %124 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next1017 = add nuw nsw i64 %indvars.iv1016, 20
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, -20
  %exitcond1031.not = icmp eq i64 %124, 60
  br i1 %exitcond1031.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit248, %polly.loop_header205
  %indvars.iv1022 = phi i64 [ %indvars.iv.next1023, %polly.loop_exit248 ], [ %102, %polly.loop_header205 ]
  %indvars.iv1018 = phi i64 [ %indvars.iv.next1019, %polly.loop_exit248 ], [ %101, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit248 ], [ %99, %polly.loop_header205 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1018, i64 0)
  %125 = add i64 %smax, %indvars.iv1022
  %126 = shl nsw i64 %polly.indvar214, 2
  %.not.not = icmp ugt i64 %126, %polly.indvar208
  %127 = mul nuw nsw i64 %polly.indvar214, 80
  %128 = add nsw i64 %127, %104
  %129 = icmp sgt i64 %128, 0
  %130 = select i1 %129, i64 %128, i64 0
  %131 = add nsw i64 %128, 79
  %polly.loop_guard.not = icmp sgt i64 %130, %131
  br i1 %.not.not, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit235.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit235.us ], [ 0, %polly.loop_header211 ]
  %132 = add nuw nsw i64 %polly.indvar220.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  %polly.access.add.call1231.us = add nuw nsw i64 %132, %polly.access.mul.call1230.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1231.us.1 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.1
  %polly.access.call1232.us.1 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.1
  %polly.access.call1232.load.us.1 = load double, double* %polly.access.call1232.us.1, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1232.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1231.us.2 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.2
  %polly.access.call1232.us.2 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.2
  %polly.access.call1232.load.us.2 = load double, double* %polly.access.call1232.us.2, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1232.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1231.us.3 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.3
  %polly.access.call1232.us.3 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.3
  %polly.access.call1232.load.us.3 = load double, double* %polly.access.call1232.us.3, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1232.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.access.add.call1231.us.4 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.4
  %polly.access.call1232.us.4 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.4
  %polly.access.call1232.load.us.4 = load double, double* %polly.access.call1232.us.4, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 4
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.4
  store double %polly.access.call1232.load.us.4, double* %polly.access.Packed_MemRef_call1.us.4, align 8
  %polly.access.add.call1231.us.5 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.5
  %polly.access.call1232.us.5 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.5
  %polly.access.call1232.load.us.5 = load double, double* %polly.access.call1232.us.5, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 5
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.5
  store double %polly.access.call1232.load.us.5, double* %polly.access.Packed_MemRef_call1.us.5, align 8
  %polly.access.add.call1231.us.6 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.6
  %polly.access.call1232.us.6 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.6
  %polly.access.call1232.load.us.6 = load double, double* %polly.access.call1232.us.6, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 6
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.6
  store double %polly.access.call1232.load.us.6, double* %polly.access.Packed_MemRef_call1.us.6, align 8
  %polly.access.add.call1231.us.7 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.7
  %polly.access.call1232.us.7 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.7
  %polly.access.call1232.load.us.7 = load double, double* %polly.access.call1232.us.7, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 7
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.7
  store double %polly.access.call1232.load.us.7, double* %polly.access.Packed_MemRef_call1.us.7, align 8
  %polly.access.add.call1231.us.8 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.8
  %polly.access.call1232.us.8 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.8
  %polly.access.call1232.load.us.8 = load double, double* %polly.access.call1232.us.8, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 8
  %polly.access.Packed_MemRef_call1.us.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.8
  store double %polly.access.call1232.load.us.8, double* %polly.access.Packed_MemRef_call1.us.8, align 8
  %polly.access.add.call1231.us.9 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.9
  %polly.access.call1232.us.9 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.9
  %polly.access.call1232.load.us.9 = load double, double* %polly.access.call1232.us.9, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 9
  %polly.access.Packed_MemRef_call1.us.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.9
  store double %polly.access.call1232.load.us.9, double* %polly.access.Packed_MemRef_call1.us.9, align 8
  %polly.access.add.call1231.us.10 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.10
  %polly.access.call1232.us.10 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.10
  %polly.access.call1232.load.us.10 = load double, double* %polly.access.call1232.us.10, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 10
  %polly.access.Packed_MemRef_call1.us.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.10
  store double %polly.access.call1232.load.us.10, double* %polly.access.Packed_MemRef_call1.us.10, align 8
  %polly.access.add.call1231.us.11 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.11
  %polly.access.call1232.us.11 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.11
  %polly.access.call1232.load.us.11 = load double, double* %polly.access.call1232.us.11, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 11
  %polly.access.Packed_MemRef_call1.us.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.11
  store double %polly.access.call1232.load.us.11, double* %polly.access.Packed_MemRef_call1.us.11, align 8
  %polly.access.add.call1231.us.12 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.12
  %polly.access.call1232.us.12 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.12
  %polly.access.call1232.load.us.12 = load double, double* %polly.access.call1232.us.12, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 12
  %polly.access.Packed_MemRef_call1.us.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.12
  store double %polly.access.call1232.load.us.12, double* %polly.access.Packed_MemRef_call1.us.12, align 8
  %polly.access.add.call1231.us.13 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.13
  %polly.access.call1232.us.13 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.13
  %polly.access.call1232.load.us.13 = load double, double* %polly.access.call1232.us.13, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 13
  %polly.access.Packed_MemRef_call1.us.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.13
  store double %polly.access.call1232.load.us.13, double* %polly.access.Packed_MemRef_call1.us.13, align 8
  %polly.access.add.call1231.us.14 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.14
  %polly.access.call1232.us.14 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.14
  %polly.access.call1232.load.us.14 = load double, double* %polly.access.call1232.us.14, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 14
  %polly.access.Packed_MemRef_call1.us.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.14
  store double %polly.access.call1232.load.us.14, double* %polly.access.Packed_MemRef_call1.us.14, align 8
  %polly.access.add.call1231.us.15 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.15
  %polly.access.call1232.us.15 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.15
  %polly.access.call1232.load.us.15 = load double, double* %polly.access.call1232.us.15, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 15
  %polly.access.Packed_MemRef_call1.us.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.15
  store double %polly.access.call1232.load.us.15, double* %polly.access.Packed_MemRef_call1.us.15, align 8
  %polly.access.add.call1231.us.16 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.16
  %polly.access.call1232.us.16 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.16
  %polly.access.call1232.load.us.16 = load double, double* %polly.access.call1232.us.16, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.16 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, 16
  %polly.access.Packed_MemRef_call1.us.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.16
  store double %polly.access.call1232.load.us.16, double* %polly.access.Packed_MemRef_call1.us.16, align 8
  %polly.access.add.call1231.us.17 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.17
  %polly.access.call1232.us.17 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.17
  %polly.access.call1232.load.us.17 = load double, double* %polly.access.call1232.us.17, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.17 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, 17
  %polly.access.Packed_MemRef_call1.us.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.17
  store double %polly.access.call1232.load.us.17, double* %polly.access.Packed_MemRef_call1.us.17, align 8
  %polly.access.add.call1231.us.18 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.18
  %polly.access.call1232.us.18 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.18
  %polly.access.call1232.load.us.18 = load double, double* %polly.access.call1232.us.18, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.18 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, 18
  %polly.access.Packed_MemRef_call1.us.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.18
  store double %polly.access.call1232.load.us.18, double* %polly.access.Packed_MemRef_call1.us.18, align 8
  %polly.access.add.call1231.us.19 = add nuw nsw i64 %132, %polly.access.mul.call1230.us.19
  %polly.access.call1232.us.19 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.19
  %polly.access.call1232.load.us.19 = load double, double* %polly.access.call1232.us.19, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.19 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us, 19
  %polly.access.Packed_MemRef_call1.us.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.19
  store double %polly.access.call1232.load.us.19, double* %polly.access.Packed_MemRef_call1.us.19, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_exit235.us, label %polly.loop_header233.us

polly.loop_header233.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header233.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_header233.us ], [ %130, %polly.loop_header217.us ]
  %133 = add nuw nsw i64 %polly.indvar236.us, %103
  %polly.access.mul.call1240.us = mul nsw i64 %133, 1000
  %polly.access.add.call1241.us = add nuw nsw i64 %132, %polly.access.mul.call1240.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1244.us = add nuw nsw i64 %polly.indvar236.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1245.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1245.us, align 8
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %polly.loop_cond238.not.not.us = icmp slt i64 %polly.indvar236.us, %131
  br i1 %polly.loop_cond238.not.not.us, label %polly.loop_header233.us, label %polly.loop_exit235.us

polly.loop_exit235.us:                            ; preds = %polly.loop_header233.us, %polly.loop_header217.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar_next221.us, %97
  br i1 %exitcond1015.not, label %polly.loop_header246.preheader, label %polly.loop_header217.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %polly.loop_guard.not, label %polly.loop_header246.preheader, label %polly.loop_header217

polly.loop_exit248:                               ; preds = %polly.loop_exit255.loopexit.us, %polly.loop_header246.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next1019 = add i64 %indvars.iv1018, -80
  %indvars.iv.next1023 = add i64 %indvars.iv1022, 80
  %exitcond1030.not = icmp eq i64 %polly.indvar_next215, 15
  br i1 %exitcond1030.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_exit235
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit235 ], [ 0, %polly.loop_header211.split ]
  %134 = add nuw nsw i64 %polly.indvar220, %98
  %polly.access.mul.Packed_MemRef_call1243 = mul nuw nsw i64 %polly.indvar220, 1200
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %97
  br i1 %exitcond.not, label %polly.loop_header246.preheader, label %polly.loop_header217

polly.loop_header246.preheader:                   ; preds = %polly.loop_exit235, %polly.loop_exit235.us, %polly.loop_header211.split
  %135 = sub nsw i64 %103, %127
  %136 = icmp sgt i64 %135, 0
  %137 = select i1 %136, i64 %135, i64 0
  %polly.loop_guard256 = icmp slt i64 %137, 80
  br i1 %polly.loop_guard256, label %polly.loop_header246.us, label %polly.loop_exit248

polly.loop_header246.us:                          ; preds = %polly.loop_header246.preheader, %polly.loop_exit255.loopexit.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_exit255.loopexit.us ], [ 0, %polly.loop_header246.preheader ]
  %138 = add nuw nsw i64 %polly.indvar249.us, %98
  %polly.access.mul.Packed_MemRef_call1268.us = mul nuw nsw i64 %polly.indvar249.us, 1200
  %139 = shl i64 %138, 3
  br label %polly.loop_header253.us

polly.loop_header253.us:                          ; preds = %polly.loop_header246.us, %polly.loop_exit263.us
  %indvars.iv1024 = phi i64 [ %125, %polly.loop_header246.us ], [ %indvars.iv.next1025, %polly.loop_exit263.us ]
  %polly.indvar257.us = phi i64 [ %137, %polly.loop_header246.us ], [ %polly.indvar_next258.us, %polly.loop_exit263.us ]
  %smin1026 = call i64 @llvm.smin.i64(i64 %indvars.iv1024, i64 19)
  %140 = add nsw i64 %polly.indvar257.us, %128
  %polly.loop_guard264.us1123 = icmp sgt i64 %140, -1
  br i1 %polly.loop_guard264.us1123, label %polly.loop_header261.preheader.us, label %polly.loop_exit263.us

polly.loop_header261.us:                          ; preds = %polly.loop_header261.preheader.us, %polly.loop_header261.us
  %polly.indvar265.us = phi i64 [ %polly.indvar_next266.us, %polly.loop_header261.us ], [ 0, %polly.loop_header261.preheader.us ]
  %141 = add nuw nsw i64 %polly.indvar265.us, %103
  %polly.access.add.Packed_MemRef_call1269.us = add nuw nsw i64 %polly.indvar265.us, %polly.access.mul.Packed_MemRef_call1268.us
  %polly.access.Packed_MemRef_call1270.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1269.us
  %_p_scalar_271.us = load double, double* %polly.access.Packed_MemRef_call1270.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_274.us, %_p_scalar_271.us
  %142 = mul nuw nsw i64 %141, 8000
  %143 = add nuw nsw i64 %142, %139
  %scevgep275.us = getelementptr i8, i8* %call2, i64 %143
  %scevgep275276.us = bitcast i8* %scevgep275.us to double*
  %_p_scalar_277.us = load double, double* %scevgep275276.us, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.us = fmul fast double %_p_scalar_281.us, %_p_scalar_277.us
  %144 = shl i64 %141, 3
  %145 = add i64 %144, %149
  %scevgep282.us = getelementptr i8, i8* %call, i64 %145
  %scevgep282283.us = bitcast i8* %scevgep282.us to double*
  %_p_scalar_284.us = load double, double* %scevgep282283.us, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_284.us
  store double %p_add42.i118.us, double* %scevgep282283.us, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next266.us = add nuw nsw i64 %polly.indvar265.us, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar265.us, %smin1026
  br i1 %exitcond1027.not, label %polly.loop_exit263.us, label %polly.loop_header261.us

polly.loop_exit263.us:                            ; preds = %polly.loop_header261.us, %polly.loop_header253.us
  %polly.indvar_next258.us = add nuw nsw i64 %polly.indvar257.us, 1
  %polly.loop_cond259.us = icmp ult i64 %polly.indvar257.us, 79
  %indvars.iv.next1025 = add i64 %indvars.iv1024, 1
  br i1 %polly.loop_cond259.us, label %polly.loop_header253.us, label %polly.loop_exit255.loopexit.us

polly.loop_header261.preheader.us:                ; preds = %polly.loop_header253.us
  %146 = add nuw nsw i64 %polly.indvar257.us, %127
  %147 = mul i64 %146, 8000
  %148 = add i64 %147, %139
  %scevgep272.us = getelementptr i8, i8* %call2, i64 %148
  %scevgep272273.us = bitcast i8* %scevgep272.us to double*
  %_p_scalar_274.us = load double, double* %scevgep272273.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1279.us = add nsw i64 %140, %polly.access.mul.Packed_MemRef_call1268.us
  %polly.access.Packed_MemRef_call1280.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1279.us
  %_p_scalar_281.us = load double, double* %polly.access.Packed_MemRef_call1280.us, align 8
  %149 = mul i64 %146, 9600
  br label %polly.loop_header261.us

polly.loop_exit255.loopexit.us:                   ; preds = %polly.loop_exit263.us
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next250.us, %97
  br i1 %exitcond1029.not, label %polly.loop_exit248, label %polly.loop_header246.us

polly.loop_header233:                             ; preds = %polly.loop_header217, %polly.loop_header233
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_header233 ], [ %130, %polly.loop_header217 ]
  %150 = add nuw nsw i64 %polly.indvar236, %103
  %polly.access.mul.call1240 = mul nsw i64 %150, 1000
  %polly.access.add.call1241 = add nuw nsw i64 %134, %polly.access.mul.call1240
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1241
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1244 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call1243
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp slt i64 %polly.indvar236, %131
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.start287:                                   ; preds = %kernel_syr2k.exit
  %malloccall289 = tail call dereferenceable_or_null(768000) i8* @malloc(i64 768000) #6
  br label %polly.loop_header373

polly.exiting288:                                 ; preds = %polly.loop_exit397
  tail call void @free(i8* %malloccall289)
  br label %kernel_syr2k.exit90

polly.loop_header373:                             ; preds = %polly.loop_exit381, %polly.start287
  %indvar1238 = phi i64 [ %indvar.next1239, %polly.loop_exit381 ], [ 0, %polly.start287 ]
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_exit381 ], [ 1, %polly.start287 ]
  %151 = add i64 %indvar1238, 1
  %152 = mul nuw nsw i64 %polly.indvar376, 9600
  %scevgep385 = getelementptr i8, i8* %call, i64 %152
  %min.iters.check1240 = icmp ult i64 %151, 4
  br i1 %min.iters.check1240, label %polly.loop_header379.preheader, label %vector.ph1241

vector.ph1241:                                    ; preds = %polly.loop_header373
  %n.vec1243 = and i64 %151, -4
  br label %vector.body1237

vector.body1237:                                  ; preds = %vector.body1237, %vector.ph1241
  %index1244 = phi i64 [ 0, %vector.ph1241 ], [ %index.next1245, %vector.body1237 ]
  %153 = shl nuw nsw i64 %index1244, 3
  %154 = getelementptr i8, i8* %scevgep385, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  %wide.load1248 = load <4 x double>, <4 x double>* %155, align 8, !alias.scope !78, !noalias !80
  %156 = fmul fast <4 x double> %wide.load1248, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %157 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %156, <4 x double>* %157, align 8, !alias.scope !78, !noalias !80
  %index.next1245 = add i64 %index1244, 4
  %158 = icmp eq i64 %index.next1245, %n.vec1243
  br i1 %158, label %middle.block1235, label %vector.body1237, !llvm.loop !84

middle.block1235:                                 ; preds = %vector.body1237
  %cmp.n1247 = icmp eq i64 %151, %n.vec1243
  br i1 %cmp.n1247, label %polly.loop_exit381, label %polly.loop_header379.preheader

polly.loop_header379.preheader:                   ; preds = %polly.loop_header373, %middle.block1235
  %polly.indvar382.ph = phi i64 [ 0, %polly.loop_header373 ], [ %n.vec1243, %middle.block1235 ]
  br label %polly.loop_header379

polly.loop_exit381:                               ; preds = %polly.loop_header379, %middle.block1235
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next377, 1200
  %indvar.next1239 = add i64 %indvar1238, 1
  br i1 %exitcond1061.not, label %polly.loop_header389.preheader, label %polly.loop_header373

polly.loop_header389.preheader:                   ; preds = %polly.loop_exit381
  %Packed_MemRef_call1290 = bitcast i8* %malloccall289 to double*
  br label %polly.loop_header389

polly.loop_header379:                             ; preds = %polly.loop_header379.preheader, %polly.loop_header379
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_header379 ], [ %polly.indvar382.ph, %polly.loop_header379.preheader ]
  %159 = shl nuw nsw i64 %polly.indvar382, 3
  %scevgep386 = getelementptr i8, i8* %scevgep385, i64 %159
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_388, 1.200000e+00
  store double %p_mul.i57, double* %scevgep386387, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next383, %polly.indvar376
  br i1 %exitcond1060.not, label %polly.loop_exit381, label %polly.loop_header379, !llvm.loop !85

polly.loop_header389:                             ; preds = %polly.loop_header389.preheader, %polly.loop_exit397
  %indvars.iv1035 = phi i64 [ 0, %polly.loop_header389.preheader ], [ %indvars.iv.next1036, %polly.loop_exit397 ]
  %polly.indvar392 = phi i64 [ 0, %polly.loop_header389.preheader ], [ %polly.indvar_next393, %polly.loop_exit397 ]
  %smin1055 = call i64 @llvm.smin.i64(i64 %indvars.iv1035, i64 -920)
  %160 = add nsw i64 %smin1055, 1000
  %161 = mul nuw nsw i64 %polly.indvar392, 80
  br label %polly.loop_header395

polly.loop_exit397:                               ; preds = %polly.loop_exit404
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %indvars.iv.next1036 = add nsw i64 %indvars.iv1035, -80
  %exitcond1059.not = icmp eq i64 %polly.indvar_next393, 13
  br i1 %exitcond1059.not, label %polly.exiting288, label %polly.loop_header389

polly.loop_header395:                             ; preds = %polly.loop_exit404, %polly.loop_header389
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %polly.indvar398 = phi i64 [ %187, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %162 = lshr i64 %polly.indvar398, 2
  %163 = mul nuw nsw i64 %162, 80
  %164 = sub nsw i64 %indvars.iv1042, %163
  %165 = add i64 %indvars.iv1047, %163
  %166 = mul nuw nsw i64 %polly.indvar398, 20
  %167 = mul nsw i64 %polly.indvar398, -20
  %polly.access.mul.call1425.us = mul nuw i64 %polly.indvar398, 20000
  %168 = or i64 %166, 1
  %polly.access.mul.call1425.us.1 = mul nuw nsw i64 %168, 1000
  %169 = or i64 %166, 2
  %polly.access.mul.call1425.us.2 = mul nuw nsw i64 %169, 1000
  %170 = or i64 %166, 3
  %polly.access.mul.call1425.us.3 = mul nuw nsw i64 %170, 1000
  %171 = mul i64 %polly.indvar398, 20000
  %polly.access.mul.call1425.us.4 = add i64 %171, 4000
  %172 = mul i64 %polly.indvar398, 20000
  %polly.access.mul.call1425.us.5 = add i64 %172, 5000
  %173 = mul i64 %polly.indvar398, 20000
  %polly.access.mul.call1425.us.6 = add i64 %173, 6000
  %174 = mul i64 %polly.indvar398, 20000
  %polly.access.mul.call1425.us.7 = add i64 %174, 7000
  %175 = mul i64 %polly.indvar398, 20000
  %polly.access.mul.call1425.us.8 = add i64 %175, 8000
  %176 = mul i64 %polly.indvar398, 20000
  %polly.access.mul.call1425.us.9 = add i64 %176, 9000
  %177 = mul i64 %polly.indvar398, 20000
  %polly.access.mul.call1425.us.10 = add i64 %177, 10000
  %178 = mul i64 %polly.indvar398, 20000
  %polly.access.mul.call1425.us.11 = add i64 %178, 11000
  %179 = mul i64 %polly.indvar398, 20000
  %polly.access.mul.call1425.us.12 = add i64 %179, 12000
  %180 = mul i64 %polly.indvar398, 20000
  %polly.access.mul.call1425.us.13 = add i64 %180, 13000
  %181 = mul i64 %polly.indvar398, 20000
  %polly.access.mul.call1425.us.14 = add i64 %181, 14000
  %182 = mul i64 %polly.indvar398, 20000
  %polly.access.mul.call1425.us.15 = add i64 %182, 15000
  %183 = mul i64 %polly.indvar398, 20000
  %polly.access.mul.call1425.us.16 = add i64 %183, 16000
  %184 = mul i64 %polly.indvar398, 20000
  %polly.access.mul.call1425.us.17 = add i64 %184, 17000
  %185 = mul i64 %polly.indvar398, 20000
  %polly.access.mul.call1425.us.18 = add i64 %185, 18000
  %186 = mul i64 %polly.indvar398, 20000
  %polly.access.mul.call1425.us.19 = add i64 %186, 19000
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit445
  %187 = add nuw nsw i64 %polly.indvar398, 1
  %indvars.iv.next1043 = add nuw nsw i64 %indvars.iv1042, 20
  %indvars.iv.next1048 = add nsw i64 %indvars.iv1047, -20
  %exitcond1058.not = icmp eq i64 %187, 60
  br i1 %exitcond1058.not, label %polly.loop_exit397, label %polly.loop_header395

polly.loop_header402:                             ; preds = %polly.loop_exit445, %polly.loop_header395
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit445 ], [ %165, %polly.loop_header395 ]
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit445 ], [ %164, %polly.loop_header395 ]
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit445 ], [ %162, %polly.loop_header395 ]
  %smax1046 = call i64 @llvm.smax.i64(i64 %indvars.iv1044, i64 0)
  %188 = add i64 %smax1046, %indvars.iv1049
  %189 = shl nsw i64 %polly.indvar405, 2
  %.not.not885 = icmp ugt i64 %189, %polly.indvar398
  %190 = mul nuw nsw i64 %polly.indvar405, 80
  %191 = add nsw i64 %190, %167
  %192 = icmp sgt i64 %191, 0
  %193 = select i1 %192, i64 %191, i64 0
  %194 = add nsw i64 %191, 79
  %polly.loop_guard432.not = icmp sgt i64 %193, %194
  br i1 %.not.not885, label %polly.loop_header408.us, label %polly.loop_header402.split

polly.loop_header408.us:                          ; preds = %polly.loop_header402, %polly.loop_exit431.us
  %polly.indvar411.us = phi i64 [ %polly.indvar_next412.us, %polly.loop_exit431.us ], [ 0, %polly.loop_header402 ]
  %195 = add nuw nsw i64 %polly.indvar411.us, %161
  %polly.access.mul.Packed_MemRef_call1290.us = mul nuw nsw i64 %polly.indvar411.us, 1200
  %polly.access.add.call1426.us = add nuw nsw i64 %195, %polly.access.mul.call1425.us
  %polly.access.call1427.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us
  %polly.access.call1427.load.us = load double, double* %polly.access.call1427.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.Packed_MemRef_call1290.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.mul.Packed_MemRef_call1290.us
  store double %polly.access.call1427.load.us, double* %polly.access.Packed_MemRef_call1290.us, align 8
  %polly.access.add.call1426.us.1 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.1
  %polly.access.call1427.us.1 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.1
  %polly.access.call1427.load.us.1 = load double, double* %polly.access.call1427.us.1, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 1
  %polly.access.Packed_MemRef_call1290.us.1 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.1
  store double %polly.access.call1427.load.us.1, double* %polly.access.Packed_MemRef_call1290.us.1, align 8
  %polly.access.add.call1426.us.2 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.2
  %polly.access.call1427.us.2 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.2
  %polly.access.call1427.load.us.2 = load double, double* %polly.access.call1427.us.2, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 2
  %polly.access.Packed_MemRef_call1290.us.2 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.2
  store double %polly.access.call1427.load.us.2, double* %polly.access.Packed_MemRef_call1290.us.2, align 8
  %polly.access.add.call1426.us.3 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.3
  %polly.access.call1427.us.3 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.3
  %polly.access.call1427.load.us.3 = load double, double* %polly.access.call1427.us.3, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 3
  %polly.access.Packed_MemRef_call1290.us.3 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.3
  store double %polly.access.call1427.load.us.3, double* %polly.access.Packed_MemRef_call1290.us.3, align 8
  %polly.access.add.call1426.us.4 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.4
  %polly.access.call1427.us.4 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.4
  %polly.access.call1427.load.us.4 = load double, double* %polly.access.call1427.us.4, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 4
  %polly.access.Packed_MemRef_call1290.us.4 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.4
  store double %polly.access.call1427.load.us.4, double* %polly.access.Packed_MemRef_call1290.us.4, align 8
  %polly.access.add.call1426.us.5 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.5
  %polly.access.call1427.us.5 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.5
  %polly.access.call1427.load.us.5 = load double, double* %polly.access.call1427.us.5, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 5
  %polly.access.Packed_MemRef_call1290.us.5 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.5
  store double %polly.access.call1427.load.us.5, double* %polly.access.Packed_MemRef_call1290.us.5, align 8
  %polly.access.add.call1426.us.6 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.6
  %polly.access.call1427.us.6 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.6
  %polly.access.call1427.load.us.6 = load double, double* %polly.access.call1427.us.6, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 6
  %polly.access.Packed_MemRef_call1290.us.6 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.6
  store double %polly.access.call1427.load.us.6, double* %polly.access.Packed_MemRef_call1290.us.6, align 8
  %polly.access.add.call1426.us.7 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.7
  %polly.access.call1427.us.7 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.7
  %polly.access.call1427.load.us.7 = load double, double* %polly.access.call1427.us.7, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 7
  %polly.access.Packed_MemRef_call1290.us.7 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.7
  store double %polly.access.call1427.load.us.7, double* %polly.access.Packed_MemRef_call1290.us.7, align 8
  %polly.access.add.call1426.us.8 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.8
  %polly.access.call1427.us.8 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.8
  %polly.access.call1427.load.us.8 = load double, double* %polly.access.call1427.us.8, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 8
  %polly.access.Packed_MemRef_call1290.us.8 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.8
  store double %polly.access.call1427.load.us.8, double* %polly.access.Packed_MemRef_call1290.us.8, align 8
  %polly.access.add.call1426.us.9 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.9
  %polly.access.call1427.us.9 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.9
  %polly.access.call1427.load.us.9 = load double, double* %polly.access.call1427.us.9, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 9
  %polly.access.Packed_MemRef_call1290.us.9 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.9
  store double %polly.access.call1427.load.us.9, double* %polly.access.Packed_MemRef_call1290.us.9, align 8
  %polly.access.add.call1426.us.10 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.10
  %polly.access.call1427.us.10 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.10
  %polly.access.call1427.load.us.10 = load double, double* %polly.access.call1427.us.10, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 10
  %polly.access.Packed_MemRef_call1290.us.10 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.10
  store double %polly.access.call1427.load.us.10, double* %polly.access.Packed_MemRef_call1290.us.10, align 8
  %polly.access.add.call1426.us.11 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.11
  %polly.access.call1427.us.11 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.11
  %polly.access.call1427.load.us.11 = load double, double* %polly.access.call1427.us.11, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 11
  %polly.access.Packed_MemRef_call1290.us.11 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.11
  store double %polly.access.call1427.load.us.11, double* %polly.access.Packed_MemRef_call1290.us.11, align 8
  %polly.access.add.call1426.us.12 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.12
  %polly.access.call1427.us.12 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.12
  %polly.access.call1427.load.us.12 = load double, double* %polly.access.call1427.us.12, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 12
  %polly.access.Packed_MemRef_call1290.us.12 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.12
  store double %polly.access.call1427.load.us.12, double* %polly.access.Packed_MemRef_call1290.us.12, align 8
  %polly.access.add.call1426.us.13 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.13
  %polly.access.call1427.us.13 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.13
  %polly.access.call1427.load.us.13 = load double, double* %polly.access.call1427.us.13, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 13
  %polly.access.Packed_MemRef_call1290.us.13 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.13
  store double %polly.access.call1427.load.us.13, double* %polly.access.Packed_MemRef_call1290.us.13, align 8
  %polly.access.add.call1426.us.14 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.14
  %polly.access.call1427.us.14 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.14
  %polly.access.call1427.load.us.14 = load double, double* %polly.access.call1427.us.14, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 14
  %polly.access.Packed_MemRef_call1290.us.14 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.14
  store double %polly.access.call1427.load.us.14, double* %polly.access.Packed_MemRef_call1290.us.14, align 8
  %polly.access.add.call1426.us.15 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.15
  %polly.access.call1427.us.15 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.15
  %polly.access.call1427.load.us.15 = load double, double* %polly.access.call1427.us.15, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 15
  %polly.access.Packed_MemRef_call1290.us.15 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.15
  store double %polly.access.call1427.load.us.15, double* %polly.access.Packed_MemRef_call1290.us.15, align 8
  %polly.access.add.call1426.us.16 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.16
  %polly.access.call1427.us.16 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.16
  %polly.access.call1427.load.us.16 = load double, double* %polly.access.call1427.us.16, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.16 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1290.us, 16
  %polly.access.Packed_MemRef_call1290.us.16 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.16
  store double %polly.access.call1427.load.us.16, double* %polly.access.Packed_MemRef_call1290.us.16, align 8
  %polly.access.add.call1426.us.17 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.17
  %polly.access.call1427.us.17 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.17
  %polly.access.call1427.load.us.17 = load double, double* %polly.access.call1427.us.17, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.17 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1290.us, 17
  %polly.access.Packed_MemRef_call1290.us.17 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.17
  store double %polly.access.call1427.load.us.17, double* %polly.access.Packed_MemRef_call1290.us.17, align 8
  %polly.access.add.call1426.us.18 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.18
  %polly.access.call1427.us.18 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.18
  %polly.access.call1427.load.us.18 = load double, double* %polly.access.call1427.us.18, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.18 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1290.us, 18
  %polly.access.Packed_MemRef_call1290.us.18 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.18
  store double %polly.access.call1427.load.us.18, double* %polly.access.Packed_MemRef_call1290.us.18, align 8
  %polly.access.add.call1426.us.19 = add nuw nsw i64 %195, %polly.access.mul.call1425.us.19
  %polly.access.call1427.us.19 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.19
  %polly.access.call1427.load.us.19 = load double, double* %polly.access.call1427.us.19, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290.us.19 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1290.us, 19
  %polly.access.Packed_MemRef_call1290.us.19 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.19
  store double %polly.access.call1427.load.us.19, double* %polly.access.Packed_MemRef_call1290.us.19, align 8
  br i1 %polly.loop_guard432.not, label %polly.loop_exit431.us, label %polly.loop_header429.us

polly.loop_header429.us:                          ; preds = %polly.loop_header408.us, %polly.loop_header429.us
  %polly.indvar433.us = phi i64 [ %polly.indvar_next434.us, %polly.loop_header429.us ], [ %193, %polly.loop_header408.us ]
  %196 = add nuw nsw i64 %polly.indvar433.us, %166
  %polly.access.mul.call1437.us = mul nsw i64 %196, 1000
  %polly.access.add.call1438.us = add nuw nsw i64 %195, %polly.access.mul.call1437.us
  %polly.access.call1439.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1438.us
  %polly.access.call1439.load.us = load double, double* %polly.access.call1439.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290441.us = add nuw nsw i64 %polly.indvar433.us, %polly.access.mul.Packed_MemRef_call1290.us
  %polly.access.Packed_MemRef_call1290442.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290441.us
  store double %polly.access.call1439.load.us, double* %polly.access.Packed_MemRef_call1290442.us, align 8
  %polly.indvar_next434.us = add nuw nsw i64 %polly.indvar433.us, 1
  %polly.loop_cond435.not.not.us = icmp slt i64 %polly.indvar433.us, %194
  br i1 %polly.loop_cond435.not.not.us, label %polly.loop_header429.us, label %polly.loop_exit431.us

polly.loop_exit431.us:                            ; preds = %polly.loop_header429.us, %polly.loop_header408.us
  %polly.indvar_next412.us = add nuw nsw i64 %polly.indvar411.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next412.us, %160
  br i1 %exitcond1041.not, label %polly.loop_header443.preheader, label %polly.loop_header408.us

polly.loop_header402.split:                       ; preds = %polly.loop_header402
  br i1 %polly.loop_guard432.not, label %polly.loop_header443.preheader, label %polly.loop_header408

polly.loop_exit445:                               ; preds = %polly.loop_exit452.loopexit.us, %polly.loop_header443.preheader
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next1045 = add i64 %indvars.iv1044, -80
  %indvars.iv.next1050 = add i64 %indvars.iv1049, 80
  %exitcond1057.not = icmp eq i64 %polly.indvar_next406, 15
  br i1 %exitcond1057.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header402.split, %polly.loop_exit431
  %polly.indvar411 = phi i64 [ %polly.indvar_next412, %polly.loop_exit431 ], [ 0, %polly.loop_header402.split ]
  %197 = add nuw nsw i64 %polly.indvar411, %161
  %polly.access.mul.Packed_MemRef_call1290440 = mul nuw nsw i64 %polly.indvar411, 1200
  br label %polly.loop_header429

polly.loop_exit431:                               ; preds = %polly.loop_header429
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar_next412, %160
  br i1 %exitcond1038.not, label %polly.loop_header443.preheader, label %polly.loop_header408

polly.loop_header443.preheader:                   ; preds = %polly.loop_exit431, %polly.loop_exit431.us, %polly.loop_header402.split
  %198 = sub nsw i64 %166, %190
  %199 = icmp sgt i64 %198, 0
  %200 = select i1 %199, i64 %198, i64 0
  %polly.loop_guard453 = icmp slt i64 %200, 80
  br i1 %polly.loop_guard453, label %polly.loop_header443.us, label %polly.loop_exit445

polly.loop_header443.us:                          ; preds = %polly.loop_header443.preheader, %polly.loop_exit452.loopexit.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_exit452.loopexit.us ], [ 0, %polly.loop_header443.preheader ]
  %201 = add nuw nsw i64 %polly.indvar446.us, %161
  %polly.access.mul.Packed_MemRef_call1290465.us = mul nuw nsw i64 %polly.indvar446.us, 1200
  %202 = shl i64 %201, 3
  br label %polly.loop_header450.us

polly.loop_header450.us:                          ; preds = %polly.loop_header443.us, %polly.loop_exit460.us
  %indvars.iv1051 = phi i64 [ %188, %polly.loop_header443.us ], [ %indvars.iv.next1052, %polly.loop_exit460.us ]
  %polly.indvar454.us = phi i64 [ %200, %polly.loop_header443.us ], [ %polly.indvar_next455.us, %polly.loop_exit460.us ]
  %smin1053 = call i64 @llvm.smin.i64(i64 %indvars.iv1051, i64 19)
  %203 = add nsw i64 %polly.indvar454.us, %191
  %polly.loop_guard461.us1124 = icmp sgt i64 %203, -1
  br i1 %polly.loop_guard461.us1124, label %polly.loop_header458.preheader.us, label %polly.loop_exit460.us

polly.loop_header458.us:                          ; preds = %polly.loop_header458.preheader.us, %polly.loop_header458.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_header458.us ], [ 0, %polly.loop_header458.preheader.us ]
  %204 = add nuw nsw i64 %polly.indvar462.us, %166
  %polly.access.add.Packed_MemRef_call1290466.us = add nuw nsw i64 %polly.indvar462.us, %polly.access.mul.Packed_MemRef_call1290465.us
  %polly.access.Packed_MemRef_call1290467.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290466.us
  %_p_scalar_468.us = load double, double* %polly.access.Packed_MemRef_call1290467.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_471.us, %_p_scalar_468.us
  %205 = mul nuw nsw i64 %204, 8000
  %206 = add nuw nsw i64 %205, %202
  %scevgep472.us = getelementptr i8, i8* %call2, i64 %206
  %scevgep472473.us = bitcast i8* %scevgep472.us to double*
  %_p_scalar_474.us = load double, double* %scevgep472473.us, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.us = fmul fast double %_p_scalar_478.us, %_p_scalar_474.us
  %207 = shl i64 %204, 3
  %208 = add i64 %207, %212
  %scevgep479.us = getelementptr i8, i8* %call, i64 %208
  %scevgep479480.us = bitcast i8* %scevgep479.us to double*
  %_p_scalar_481.us = load double, double* %scevgep479480.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_481.us
  store double %p_add42.i79.us, double* %scevgep479480.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next463.us = add nuw nsw i64 %polly.indvar462.us, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar462.us, %smin1053
  br i1 %exitcond1054.not, label %polly.loop_exit460.us, label %polly.loop_header458.us

polly.loop_exit460.us:                            ; preds = %polly.loop_header458.us, %polly.loop_header450.us
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %polly.loop_cond456.us = icmp ult i64 %polly.indvar454.us, 79
  %indvars.iv.next1052 = add i64 %indvars.iv1051, 1
  br i1 %polly.loop_cond456.us, label %polly.loop_header450.us, label %polly.loop_exit452.loopexit.us

polly.loop_header458.preheader.us:                ; preds = %polly.loop_header450.us
  %209 = add nuw nsw i64 %polly.indvar454.us, %190
  %210 = mul i64 %209, 8000
  %211 = add i64 %210, %202
  %scevgep469.us = getelementptr i8, i8* %call2, i64 %211
  %scevgep469470.us = bitcast i8* %scevgep469.us to double*
  %_p_scalar_471.us = load double, double* %scevgep469470.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290476.us = add nsw i64 %203, %polly.access.mul.Packed_MemRef_call1290465.us
  %polly.access.Packed_MemRef_call1290477.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290476.us
  %_p_scalar_478.us = load double, double* %polly.access.Packed_MemRef_call1290477.us, align 8
  %212 = mul i64 %209, 9600
  br label %polly.loop_header458.us

polly.loop_exit452.loopexit.us:                   ; preds = %polly.loop_exit460.us
  %polly.indvar_next447.us = add nuw nsw i64 %polly.indvar446.us, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar_next447.us, %160
  br i1 %exitcond1056.not, label %polly.loop_exit445, label %polly.loop_header443.us

polly.loop_header429:                             ; preds = %polly.loop_header408, %polly.loop_header429
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_header429 ], [ %193, %polly.loop_header408 ]
  %213 = add nuw nsw i64 %polly.indvar433, %166
  %polly.access.mul.call1437 = mul nsw i64 %213, 1000
  %polly.access.add.call1438 = add nuw nsw i64 %197, %polly.access.mul.call1437
  %polly.access.call1439 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1438
  %polly.access.call1439.load = load double, double* %polly.access.call1439, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1290441 = add nuw nsw i64 %polly.indvar433, %polly.access.mul.Packed_MemRef_call1290440
  %polly.access.Packed_MemRef_call1290442 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290441
  store double %polly.access.call1439.load, double* %polly.access.Packed_MemRef_call1290442, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %polly.loop_cond435.not.not = icmp slt i64 %polly.indvar433, %194
  br i1 %polly.loop_cond435.not.not, label %polly.loop_header429, label %polly.loop_exit431

polly.start484:                                   ; preds = %init_array.exit
  %malloccall486 = tail call dereferenceable_or_null(768000) i8* @malloc(i64 768000) #6
  br label %polly.loop_header570

polly.exiting485:                                 ; preds = %polly.loop_exit594
  tail call void @free(i8* %malloccall486)
  br label %kernel_syr2k.exit

polly.loop_header570:                             ; preds = %polly.loop_exit578, %polly.start484
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit578 ], [ 0, %polly.start484 ]
  %polly.indvar573 = phi i64 [ %polly.indvar_next574, %polly.loop_exit578 ], [ 1, %polly.start484 ]
  %214 = add i64 %indvar, 1
  %215 = mul nuw nsw i64 %polly.indvar573, 9600
  %scevgep582 = getelementptr i8, i8* %call, i64 %215
  %min.iters.check1214 = icmp ult i64 %214, 4
  br i1 %min.iters.check1214, label %polly.loop_header576.preheader, label %vector.ph1215

vector.ph1215:                                    ; preds = %polly.loop_header570
  %n.vec1217 = and i64 %214, -4
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.body1213, %vector.ph1215
  %index1218 = phi i64 [ 0, %vector.ph1215 ], [ %index.next1219, %vector.body1213 ]
  %216 = shl nuw nsw i64 %index1218, 3
  %217 = getelementptr i8, i8* %scevgep582, i64 %216
  %218 = bitcast i8* %217 to <4 x double>*
  %wide.load1222 = load <4 x double>, <4 x double>* %218, align 8, !alias.scope !88, !noalias !90
  %219 = fmul fast <4 x double> %wide.load1222, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %220 = bitcast i8* %217 to <4 x double>*
  store <4 x double> %219, <4 x double>* %220, align 8, !alias.scope !88, !noalias !90
  %index.next1219 = add i64 %index1218, 4
  %221 = icmp eq i64 %index.next1219, %n.vec1217
  br i1 %221, label %middle.block1211, label %vector.body1213, !llvm.loop !94

middle.block1211:                                 ; preds = %vector.body1213
  %cmp.n1221 = icmp eq i64 %214, %n.vec1217
  br i1 %cmp.n1221, label %polly.loop_exit578, label %polly.loop_header576.preheader

polly.loop_header576.preheader:                   ; preds = %polly.loop_header570, %middle.block1211
  %polly.indvar579.ph = phi i64 [ 0, %polly.loop_header570 ], [ %n.vec1217, %middle.block1211 ]
  br label %polly.loop_header576

polly.loop_exit578:                               ; preds = %polly.loop_header576, %middle.block1211
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next574, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1088.not, label %polly.loop_header586.preheader, label %polly.loop_header570

polly.loop_header586.preheader:                   ; preds = %polly.loop_exit578
  %Packed_MemRef_call1487 = bitcast i8* %malloccall486 to double*
  br label %polly.loop_header586

polly.loop_header576:                             ; preds = %polly.loop_header576.preheader, %polly.loop_header576
  %polly.indvar579 = phi i64 [ %polly.indvar_next580, %polly.loop_header576 ], [ %polly.indvar579.ph, %polly.loop_header576.preheader ]
  %222 = shl nuw nsw i64 %polly.indvar579, 3
  %scevgep583 = getelementptr i8, i8* %scevgep582, i64 %222
  %scevgep583584 = bitcast i8* %scevgep583 to double*
  %_p_scalar_585 = load double, double* %scevgep583584, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_585, 1.200000e+00
  store double %p_mul.i, double* %scevgep583584, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next580 = add nuw nsw i64 %polly.indvar579, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next580, %polly.indvar573
  br i1 %exitcond1087.not, label %polly.loop_exit578, label %polly.loop_header576, !llvm.loop !95

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_exit594
  %indvars.iv1062 = phi i64 [ 0, %polly.loop_header586.preheader ], [ %indvars.iv.next1063, %polly.loop_exit594 ]
  %polly.indvar589 = phi i64 [ 0, %polly.loop_header586.preheader ], [ %polly.indvar_next590, %polly.loop_exit594 ]
  %smin1082 = call i64 @llvm.smin.i64(i64 %indvars.iv1062, i64 -920)
  %223 = add nsw i64 %smin1082, 1000
  %224 = mul nuw nsw i64 %polly.indvar589, 80
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit601
  %polly.indvar_next590 = add nuw nsw i64 %polly.indvar589, 1
  %indvars.iv.next1063 = add nsw i64 %indvars.iv1062, -80
  %exitcond1086.not = icmp eq i64 %polly.indvar_next590, 13
  br i1 %exitcond1086.not, label %polly.exiting485, label %polly.loop_header586

polly.loop_header592:                             ; preds = %polly.loop_exit601, %polly.loop_header586
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %polly.indvar595 = phi i64 [ %250, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %225 = lshr i64 %polly.indvar595, 2
  %226 = mul nuw nsw i64 %225, 80
  %227 = sub nsw i64 %indvars.iv1069, %226
  %228 = add i64 %indvars.iv1074, %226
  %229 = mul nuw nsw i64 %polly.indvar595, 20
  %230 = mul nsw i64 %polly.indvar595, -20
  %polly.access.mul.call1622.us = mul nuw i64 %polly.indvar595, 20000
  %231 = or i64 %229, 1
  %polly.access.mul.call1622.us.1 = mul nuw nsw i64 %231, 1000
  %232 = or i64 %229, 2
  %polly.access.mul.call1622.us.2 = mul nuw nsw i64 %232, 1000
  %233 = or i64 %229, 3
  %polly.access.mul.call1622.us.3 = mul nuw nsw i64 %233, 1000
  %234 = mul i64 %polly.indvar595, 20000
  %polly.access.mul.call1622.us.4 = add i64 %234, 4000
  %235 = mul i64 %polly.indvar595, 20000
  %polly.access.mul.call1622.us.5 = add i64 %235, 5000
  %236 = mul i64 %polly.indvar595, 20000
  %polly.access.mul.call1622.us.6 = add i64 %236, 6000
  %237 = mul i64 %polly.indvar595, 20000
  %polly.access.mul.call1622.us.7 = add i64 %237, 7000
  %238 = mul i64 %polly.indvar595, 20000
  %polly.access.mul.call1622.us.8 = add i64 %238, 8000
  %239 = mul i64 %polly.indvar595, 20000
  %polly.access.mul.call1622.us.9 = add i64 %239, 9000
  %240 = mul i64 %polly.indvar595, 20000
  %polly.access.mul.call1622.us.10 = add i64 %240, 10000
  %241 = mul i64 %polly.indvar595, 20000
  %polly.access.mul.call1622.us.11 = add i64 %241, 11000
  %242 = mul i64 %polly.indvar595, 20000
  %polly.access.mul.call1622.us.12 = add i64 %242, 12000
  %243 = mul i64 %polly.indvar595, 20000
  %polly.access.mul.call1622.us.13 = add i64 %243, 13000
  %244 = mul i64 %polly.indvar595, 20000
  %polly.access.mul.call1622.us.14 = add i64 %244, 14000
  %245 = mul i64 %polly.indvar595, 20000
  %polly.access.mul.call1622.us.15 = add i64 %245, 15000
  %246 = mul i64 %polly.indvar595, 20000
  %polly.access.mul.call1622.us.16 = add i64 %246, 16000
  %247 = mul i64 %polly.indvar595, 20000
  %polly.access.mul.call1622.us.17 = add i64 %247, 17000
  %248 = mul i64 %polly.indvar595, 20000
  %polly.access.mul.call1622.us.18 = add i64 %248, 18000
  %249 = mul i64 %polly.indvar595, 20000
  %polly.access.mul.call1622.us.19 = add i64 %249, 19000
  br label %polly.loop_header599

polly.loop_exit601:                               ; preds = %polly.loop_exit642
  %250 = add nuw nsw i64 %polly.indvar595, 1
  %indvars.iv.next1070 = add nuw nsw i64 %indvars.iv1069, 20
  %indvars.iv.next1075 = add nsw i64 %indvars.iv1074, -20
  %exitcond1085.not = icmp eq i64 %250, 60
  br i1 %exitcond1085.not, label %polly.loop_exit594, label %polly.loop_header592

polly.loop_header599:                             ; preds = %polly.loop_exit642, %polly.loop_header592
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit642 ], [ %228, %polly.loop_header592 ]
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072, %polly.loop_exit642 ], [ %227, %polly.loop_header592 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit642 ], [ %225, %polly.loop_header592 ]
  %smax1073 = call i64 @llvm.smax.i64(i64 %indvars.iv1071, i64 0)
  %251 = add i64 %smax1073, %indvars.iv1076
  %252 = shl nsw i64 %polly.indvar602, 2
  %.not.not886 = icmp ugt i64 %252, %polly.indvar595
  %253 = mul nuw nsw i64 %polly.indvar602, 80
  %254 = add nsw i64 %253, %230
  %255 = icmp sgt i64 %254, 0
  %256 = select i1 %255, i64 %254, i64 0
  %257 = add nsw i64 %254, 79
  %polly.loop_guard629.not = icmp sgt i64 %256, %257
  br i1 %.not.not886, label %polly.loop_header605.us, label %polly.loop_header599.split

polly.loop_header605.us:                          ; preds = %polly.loop_header599, %polly.loop_exit628.us
  %polly.indvar608.us = phi i64 [ %polly.indvar_next609.us, %polly.loop_exit628.us ], [ 0, %polly.loop_header599 ]
  %258 = add nuw nsw i64 %polly.indvar608.us, %224
  %polly.access.mul.Packed_MemRef_call1487.us = mul nuw nsw i64 %polly.indvar608.us, 1200
  %polly.access.add.call1623.us = add nuw nsw i64 %258, %polly.access.mul.call1622.us
  %polly.access.call1624.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us
  %polly.access.call1624.load.us = load double, double* %polly.access.call1624.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.Packed_MemRef_call1487.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.mul.Packed_MemRef_call1487.us
  store double %polly.access.call1624.load.us, double* %polly.access.Packed_MemRef_call1487.us, align 8
  %polly.access.add.call1623.us.1 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.1
  %polly.access.call1624.us.1 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.1
  %polly.access.call1624.load.us.1 = load double, double* %polly.access.call1624.us.1, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 1
  %polly.access.Packed_MemRef_call1487.us.1 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.1
  store double %polly.access.call1624.load.us.1, double* %polly.access.Packed_MemRef_call1487.us.1, align 8
  %polly.access.add.call1623.us.2 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.2
  %polly.access.call1624.us.2 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.2
  %polly.access.call1624.load.us.2 = load double, double* %polly.access.call1624.us.2, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 2
  %polly.access.Packed_MemRef_call1487.us.2 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.2
  store double %polly.access.call1624.load.us.2, double* %polly.access.Packed_MemRef_call1487.us.2, align 8
  %polly.access.add.call1623.us.3 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.3
  %polly.access.call1624.us.3 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.3
  %polly.access.call1624.load.us.3 = load double, double* %polly.access.call1624.us.3, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 3
  %polly.access.Packed_MemRef_call1487.us.3 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.3
  store double %polly.access.call1624.load.us.3, double* %polly.access.Packed_MemRef_call1487.us.3, align 8
  %polly.access.add.call1623.us.4 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.4
  %polly.access.call1624.us.4 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.4
  %polly.access.call1624.load.us.4 = load double, double* %polly.access.call1624.us.4, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 4
  %polly.access.Packed_MemRef_call1487.us.4 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.4
  store double %polly.access.call1624.load.us.4, double* %polly.access.Packed_MemRef_call1487.us.4, align 8
  %polly.access.add.call1623.us.5 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.5
  %polly.access.call1624.us.5 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.5
  %polly.access.call1624.load.us.5 = load double, double* %polly.access.call1624.us.5, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 5
  %polly.access.Packed_MemRef_call1487.us.5 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.5
  store double %polly.access.call1624.load.us.5, double* %polly.access.Packed_MemRef_call1487.us.5, align 8
  %polly.access.add.call1623.us.6 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.6
  %polly.access.call1624.us.6 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.6
  %polly.access.call1624.load.us.6 = load double, double* %polly.access.call1624.us.6, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 6
  %polly.access.Packed_MemRef_call1487.us.6 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.6
  store double %polly.access.call1624.load.us.6, double* %polly.access.Packed_MemRef_call1487.us.6, align 8
  %polly.access.add.call1623.us.7 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.7
  %polly.access.call1624.us.7 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.7
  %polly.access.call1624.load.us.7 = load double, double* %polly.access.call1624.us.7, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 7
  %polly.access.Packed_MemRef_call1487.us.7 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.7
  store double %polly.access.call1624.load.us.7, double* %polly.access.Packed_MemRef_call1487.us.7, align 8
  %polly.access.add.call1623.us.8 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.8
  %polly.access.call1624.us.8 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.8
  %polly.access.call1624.load.us.8 = load double, double* %polly.access.call1624.us.8, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.8 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 8
  %polly.access.Packed_MemRef_call1487.us.8 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.8
  store double %polly.access.call1624.load.us.8, double* %polly.access.Packed_MemRef_call1487.us.8, align 8
  %polly.access.add.call1623.us.9 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.9
  %polly.access.call1624.us.9 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.9
  %polly.access.call1624.load.us.9 = load double, double* %polly.access.call1624.us.9, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.9 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 9
  %polly.access.Packed_MemRef_call1487.us.9 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.9
  store double %polly.access.call1624.load.us.9, double* %polly.access.Packed_MemRef_call1487.us.9, align 8
  %polly.access.add.call1623.us.10 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.10
  %polly.access.call1624.us.10 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.10
  %polly.access.call1624.load.us.10 = load double, double* %polly.access.call1624.us.10, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.10 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 10
  %polly.access.Packed_MemRef_call1487.us.10 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.10
  store double %polly.access.call1624.load.us.10, double* %polly.access.Packed_MemRef_call1487.us.10, align 8
  %polly.access.add.call1623.us.11 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.11
  %polly.access.call1624.us.11 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.11
  %polly.access.call1624.load.us.11 = load double, double* %polly.access.call1624.us.11, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.11 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 11
  %polly.access.Packed_MemRef_call1487.us.11 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.11
  store double %polly.access.call1624.load.us.11, double* %polly.access.Packed_MemRef_call1487.us.11, align 8
  %polly.access.add.call1623.us.12 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.12
  %polly.access.call1624.us.12 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.12
  %polly.access.call1624.load.us.12 = load double, double* %polly.access.call1624.us.12, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.12 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 12
  %polly.access.Packed_MemRef_call1487.us.12 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.12
  store double %polly.access.call1624.load.us.12, double* %polly.access.Packed_MemRef_call1487.us.12, align 8
  %polly.access.add.call1623.us.13 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.13
  %polly.access.call1624.us.13 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.13
  %polly.access.call1624.load.us.13 = load double, double* %polly.access.call1624.us.13, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.13 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 13
  %polly.access.Packed_MemRef_call1487.us.13 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.13
  store double %polly.access.call1624.load.us.13, double* %polly.access.Packed_MemRef_call1487.us.13, align 8
  %polly.access.add.call1623.us.14 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.14
  %polly.access.call1624.us.14 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.14
  %polly.access.call1624.load.us.14 = load double, double* %polly.access.call1624.us.14, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.14 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 14
  %polly.access.Packed_MemRef_call1487.us.14 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.14
  store double %polly.access.call1624.load.us.14, double* %polly.access.Packed_MemRef_call1487.us.14, align 8
  %polly.access.add.call1623.us.15 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.15
  %polly.access.call1624.us.15 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.15
  %polly.access.call1624.load.us.15 = load double, double* %polly.access.call1624.us.15, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.15 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 15
  %polly.access.Packed_MemRef_call1487.us.15 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.15
  store double %polly.access.call1624.load.us.15, double* %polly.access.Packed_MemRef_call1487.us.15, align 8
  %polly.access.add.call1623.us.16 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.16
  %polly.access.call1624.us.16 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.16
  %polly.access.call1624.load.us.16 = load double, double* %polly.access.call1624.us.16, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.16 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1487.us, 16
  %polly.access.Packed_MemRef_call1487.us.16 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.16
  store double %polly.access.call1624.load.us.16, double* %polly.access.Packed_MemRef_call1487.us.16, align 8
  %polly.access.add.call1623.us.17 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.17
  %polly.access.call1624.us.17 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.17
  %polly.access.call1624.load.us.17 = load double, double* %polly.access.call1624.us.17, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.17 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1487.us, 17
  %polly.access.Packed_MemRef_call1487.us.17 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.17
  store double %polly.access.call1624.load.us.17, double* %polly.access.Packed_MemRef_call1487.us.17, align 8
  %polly.access.add.call1623.us.18 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.18
  %polly.access.call1624.us.18 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.18
  %polly.access.call1624.load.us.18 = load double, double* %polly.access.call1624.us.18, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.18 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1487.us, 18
  %polly.access.Packed_MemRef_call1487.us.18 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.18
  store double %polly.access.call1624.load.us.18, double* %polly.access.Packed_MemRef_call1487.us.18, align 8
  %polly.access.add.call1623.us.19 = add nuw nsw i64 %258, %polly.access.mul.call1622.us.19
  %polly.access.call1624.us.19 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.19
  %polly.access.call1624.load.us.19 = load double, double* %polly.access.call1624.us.19, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us.19 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1487.us, 19
  %polly.access.Packed_MemRef_call1487.us.19 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.19
  store double %polly.access.call1624.load.us.19, double* %polly.access.Packed_MemRef_call1487.us.19, align 8
  br i1 %polly.loop_guard629.not, label %polly.loop_exit628.us, label %polly.loop_header626.us

polly.loop_header626.us:                          ; preds = %polly.loop_header605.us, %polly.loop_header626.us
  %polly.indvar630.us = phi i64 [ %polly.indvar_next631.us, %polly.loop_header626.us ], [ %256, %polly.loop_header605.us ]
  %259 = add nuw nsw i64 %polly.indvar630.us, %229
  %polly.access.mul.call1634.us = mul nsw i64 %259, 1000
  %polly.access.add.call1635.us = add nuw nsw i64 %258, %polly.access.mul.call1634.us
  %polly.access.call1636.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1635.us
  %polly.access.call1636.load.us = load double, double* %polly.access.call1636.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487638.us = add nuw nsw i64 %polly.indvar630.us, %polly.access.mul.Packed_MemRef_call1487.us
  %polly.access.Packed_MemRef_call1487639.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487638.us
  store double %polly.access.call1636.load.us, double* %polly.access.Packed_MemRef_call1487639.us, align 8
  %polly.indvar_next631.us = add nuw nsw i64 %polly.indvar630.us, 1
  %polly.loop_cond632.not.not.us = icmp slt i64 %polly.indvar630.us, %257
  br i1 %polly.loop_cond632.not.not.us, label %polly.loop_header626.us, label %polly.loop_exit628.us

polly.loop_exit628.us:                            ; preds = %polly.loop_header626.us, %polly.loop_header605.us
  %polly.indvar_next609.us = add nuw nsw i64 %polly.indvar608.us, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar_next609.us, %223
  br i1 %exitcond1068.not, label %polly.loop_header640.preheader, label %polly.loop_header605.us

polly.loop_header599.split:                       ; preds = %polly.loop_header599
  br i1 %polly.loop_guard629.not, label %polly.loop_header640.preheader, label %polly.loop_header605

polly.loop_exit642:                               ; preds = %polly.loop_exit649.loopexit.us, %polly.loop_header640.preheader
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %indvars.iv.next1072 = add i64 %indvars.iv1071, -80
  %indvars.iv.next1077 = add i64 %indvars.iv1076, 80
  %exitcond1084.not = icmp eq i64 %polly.indvar_next603, 15
  br i1 %exitcond1084.not, label %polly.loop_exit601, label %polly.loop_header599

polly.loop_header605:                             ; preds = %polly.loop_header599.split, %polly.loop_exit628
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_exit628 ], [ 0, %polly.loop_header599.split ]
  %260 = add nuw nsw i64 %polly.indvar608, %224
  %polly.access.mul.Packed_MemRef_call1487637 = mul nuw nsw i64 %polly.indvar608, 1200
  br label %polly.loop_header626

polly.loop_exit628:                               ; preds = %polly.loop_header626
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next609, %223
  br i1 %exitcond1065.not, label %polly.loop_header640.preheader, label %polly.loop_header605

polly.loop_header640.preheader:                   ; preds = %polly.loop_exit628, %polly.loop_exit628.us, %polly.loop_header599.split
  %261 = sub nsw i64 %229, %253
  %262 = icmp sgt i64 %261, 0
  %263 = select i1 %262, i64 %261, i64 0
  %polly.loop_guard650 = icmp slt i64 %263, 80
  br i1 %polly.loop_guard650, label %polly.loop_header640.us, label %polly.loop_exit642

polly.loop_header640.us:                          ; preds = %polly.loop_header640.preheader, %polly.loop_exit649.loopexit.us
  %polly.indvar643.us = phi i64 [ %polly.indvar_next644.us, %polly.loop_exit649.loopexit.us ], [ 0, %polly.loop_header640.preheader ]
  %264 = add nuw nsw i64 %polly.indvar643.us, %224
  %polly.access.mul.Packed_MemRef_call1487662.us = mul nuw nsw i64 %polly.indvar643.us, 1200
  %265 = shl i64 %264, 3
  br label %polly.loop_header647.us

polly.loop_header647.us:                          ; preds = %polly.loop_header640.us, %polly.loop_exit657.us
  %indvars.iv1078 = phi i64 [ %251, %polly.loop_header640.us ], [ %indvars.iv.next1079, %polly.loop_exit657.us ]
  %polly.indvar651.us = phi i64 [ %263, %polly.loop_header640.us ], [ %polly.indvar_next652.us, %polly.loop_exit657.us ]
  %smin1080 = call i64 @llvm.smin.i64(i64 %indvars.iv1078, i64 19)
  %266 = add nsw i64 %polly.indvar651.us, %254
  %polly.loop_guard658.us1125 = icmp sgt i64 %266, -1
  br i1 %polly.loop_guard658.us1125, label %polly.loop_header655.preheader.us, label %polly.loop_exit657.us

polly.loop_header655.us:                          ; preds = %polly.loop_header655.preheader.us, %polly.loop_header655.us
  %polly.indvar659.us = phi i64 [ %polly.indvar_next660.us, %polly.loop_header655.us ], [ 0, %polly.loop_header655.preheader.us ]
  %267 = add nuw nsw i64 %polly.indvar659.us, %229
  %polly.access.add.Packed_MemRef_call1487663.us = add nuw nsw i64 %polly.indvar659.us, %polly.access.mul.Packed_MemRef_call1487662.us
  %polly.access.Packed_MemRef_call1487664.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487663.us
  %_p_scalar_665.us = load double, double* %polly.access.Packed_MemRef_call1487664.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_668.us, %_p_scalar_665.us
  %268 = mul nuw nsw i64 %267, 8000
  %269 = add nuw nsw i64 %268, %265
  %scevgep669.us = getelementptr i8, i8* %call2, i64 %269
  %scevgep669670.us = bitcast i8* %scevgep669.us to double*
  %_p_scalar_671.us = load double, double* %scevgep669670.us, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.us = fmul fast double %_p_scalar_675.us, %_p_scalar_671.us
  %270 = shl i64 %267, 3
  %271 = add i64 %270, %275
  %scevgep676.us = getelementptr i8, i8* %call, i64 %271
  %scevgep676677.us = bitcast i8* %scevgep676.us to double*
  %_p_scalar_678.us = load double, double* %scevgep676677.us, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_678.us
  store double %p_add42.i.us, double* %scevgep676677.us, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next660.us = add nuw nsw i64 %polly.indvar659.us, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar659.us, %smin1080
  br i1 %exitcond1081.not, label %polly.loop_exit657.us, label %polly.loop_header655.us

polly.loop_exit657.us:                            ; preds = %polly.loop_header655.us, %polly.loop_header647.us
  %polly.indvar_next652.us = add nuw nsw i64 %polly.indvar651.us, 1
  %polly.loop_cond653.us = icmp ult i64 %polly.indvar651.us, 79
  %indvars.iv.next1079 = add i64 %indvars.iv1078, 1
  br i1 %polly.loop_cond653.us, label %polly.loop_header647.us, label %polly.loop_exit649.loopexit.us

polly.loop_header655.preheader.us:                ; preds = %polly.loop_header647.us
  %272 = add nuw nsw i64 %polly.indvar651.us, %253
  %273 = mul i64 %272, 8000
  %274 = add i64 %273, %265
  %scevgep666.us = getelementptr i8, i8* %call2, i64 %274
  %scevgep666667.us = bitcast i8* %scevgep666.us to double*
  %_p_scalar_668.us = load double, double* %scevgep666667.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487673.us = add nsw i64 %266, %polly.access.mul.Packed_MemRef_call1487662.us
  %polly.access.Packed_MemRef_call1487674.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487673.us
  %_p_scalar_675.us = load double, double* %polly.access.Packed_MemRef_call1487674.us, align 8
  %275 = mul i64 %272, 9600
  br label %polly.loop_header655.us

polly.loop_exit649.loopexit.us:                   ; preds = %polly.loop_exit657.us
  %polly.indvar_next644.us = add nuw nsw i64 %polly.indvar643.us, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next644.us, %223
  br i1 %exitcond1083.not, label %polly.loop_exit642, label %polly.loop_header640.us

polly.loop_header626:                             ; preds = %polly.loop_header605, %polly.loop_header626
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_header626 ], [ %256, %polly.loop_header605 ]
  %276 = add nuw nsw i64 %polly.indvar630, %229
  %polly.access.mul.call1634 = mul nsw i64 %276, 1000
  %polly.access.add.call1635 = add nuw nsw i64 %260, %polly.access.mul.call1634
  %polly.access.call1636 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1635
  %polly.access.call1636.load = load double, double* %polly.access.call1636, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487638 = add nuw nsw i64 %polly.indvar630, %polly.access.mul.Packed_MemRef_call1487637
  %polly.access.Packed_MemRef_call1487639 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487638
  store double %polly.access.call1636.load, double* %polly.access.Packed_MemRef_call1487639, align 8
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %polly.loop_cond632.not.not = icmp slt i64 %polly.indvar630, %257
  br i1 %polly.loop_cond632.not.not, label %polly.loop_header626, label %polly.loop_exit628

polly.loop_header805:                             ; preds = %entry, %polly.loop_exit813
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit813 ], [ 0, %entry ]
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %entry ]
  %smin1115 = call i64 @llvm.smin.i64(i64 %indvars.iv1113, i64 -1168)
  %277 = shl nsw i64 %polly.indvar808, 5
  %278 = add nsw i64 %smin1115, 1199
  br label %polly.loop_header811

polly.loop_exit813:                               ; preds = %polly.loop_exit819
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %indvars.iv.next1114 = add nsw i64 %indvars.iv1113, -32
  %exitcond1118.not = icmp eq i64 %polly.indvar_next809, 38
  br i1 %exitcond1118.not, label %polly.loop_header832, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_exit819, %polly.loop_header805
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110, %polly.loop_exit819 ], [ 0, %polly.loop_header805 ]
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_exit819 ], [ 0, %polly.loop_header805 ]
  %279 = mul nsw i64 %polly.indvar814, -32
  %smin = call i64 @llvm.smin.i64(i64 %279, i64 -1168)
  %280 = add nsw i64 %smin, 1200
  %smin1111 = call i64 @llvm.smin.i64(i64 %indvars.iv1109, i64 -1168)
  %281 = shl nsw i64 %polly.indvar814, 5
  %282 = add nsw i64 %smin1111, 1199
  br label %polly.loop_header817

polly.loop_exit819:                               ; preds = %polly.loop_exit825
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %indvars.iv.next1110 = add nsw i64 %indvars.iv1109, -32
  %exitcond1117.not = icmp eq i64 %polly.indvar_next815, 38
  br i1 %exitcond1117.not, label %polly.loop_exit813, label %polly.loop_header811

polly.loop_header817:                             ; preds = %polly.loop_exit825, %polly.loop_header811
  %polly.indvar820 = phi i64 [ 0, %polly.loop_header811 ], [ %polly.indvar_next821, %polly.loop_exit825 ]
  %283 = add nuw nsw i64 %polly.indvar820, %277
  %284 = trunc i64 %283 to i32
  %285 = mul nuw nsw i64 %283, 9600
  %min.iters.check = icmp eq i64 %280, 0
  br i1 %min.iters.check, label %polly.loop_header823, label %vector.ph1153

vector.ph1153:                                    ; preds = %polly.loop_header817
  %broadcast.splatinsert1160 = insertelement <4 x i64> poison, i64 %281, i32 0
  %broadcast.splat1161 = shufflevector <4 x i64> %broadcast.splatinsert1160, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1162 = insertelement <4 x i32> poison, i32 %284, i32 0
  %broadcast.splat1163 = shufflevector <4 x i32> %broadcast.splatinsert1162, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %vector.ph1153
  %index1154 = phi i64 [ 0, %vector.ph1153 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1158 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1153 ], [ %vec.ind.next1159, %vector.body1152 ]
  %286 = add nuw nsw <4 x i64> %vec.ind1158, %broadcast.splat1161
  %287 = trunc <4 x i64> %286 to <4 x i32>
  %288 = mul <4 x i32> %broadcast.splat1163, %287
  %289 = add <4 x i32> %288, <i32 3, i32 3, i32 3, i32 3>
  %290 = urem <4 x i32> %289, <i32 1200, i32 1200, i32 1200, i32 1200>
  %291 = sitofp <4 x i32> %290 to <4 x double>
  %292 = fmul fast <4 x double> %291, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %293 = extractelement <4 x i64> %286, i32 0
  %294 = shl i64 %293, 3
  %295 = add nuw nsw i64 %294, %285
  %296 = getelementptr i8, i8* %call, i64 %295
  %297 = bitcast i8* %296 to <4 x double>*
  store <4 x double> %292, <4 x double>* %297, align 8, !alias.scope !98, !noalias !100
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1159 = add <4 x i64> %vec.ind1158, <i64 4, i64 4, i64 4, i64 4>
  %298 = icmp eq i64 %index.next1155, %280
  br i1 %298, label %polly.loop_exit825, label %vector.body1152, !llvm.loop !103

polly.loop_exit825:                               ; preds = %vector.body1152, %polly.loop_header823
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar820, %278
  br i1 %exitcond1116.not, label %polly.loop_exit819, label %polly.loop_header817

polly.loop_header823:                             ; preds = %polly.loop_header817, %polly.loop_header823
  %polly.indvar826 = phi i64 [ %polly.indvar_next827, %polly.loop_header823 ], [ 0, %polly.loop_header817 ]
  %299 = add nuw nsw i64 %polly.indvar826, %281
  %300 = trunc i64 %299 to i32
  %301 = mul i32 %300, %284
  %302 = add i32 %301, 3
  %303 = urem i32 %302, 1200
  %p_conv31.i = sitofp i32 %303 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %304 = shl i64 %299, 3
  %305 = add nuw nsw i64 %304, %285
  %scevgep829 = getelementptr i8, i8* %call, i64 %305
  %scevgep829830 = bitcast i8* %scevgep829 to double*
  store double %p_div33.i, double* %scevgep829830, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next827 = add nuw nsw i64 %polly.indvar826, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar826, %282
  br i1 %exitcond1112.not, label %polly.loop_exit825, label %polly.loop_header823, !llvm.loop !104

polly.loop_header832:                             ; preds = %polly.loop_exit813, %polly.loop_exit840
  %indvars.iv1103 = phi i64 [ %indvars.iv.next1104, %polly.loop_exit840 ], [ 0, %polly.loop_exit813 ]
  %polly.indvar835 = phi i64 [ %polly.indvar_next836, %polly.loop_exit840 ], [ 0, %polly.loop_exit813 ]
  %smin1105 = call i64 @llvm.smin.i64(i64 %indvars.iv1103, i64 -1168)
  %306 = shl nsw i64 %polly.indvar835, 5
  %307 = add nsw i64 %smin1105, 1199
  br label %polly.loop_header838

polly.loop_exit840:                               ; preds = %polly.loop_exit846
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %indvars.iv.next1104 = add nsw i64 %indvars.iv1103, -32
  %exitcond1108.not = icmp eq i64 %polly.indvar_next836, 38
  br i1 %exitcond1108.not, label %polly.loop_header858, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_exit846, %polly.loop_header832
  %indvars.iv1099 = phi i64 [ %indvars.iv.next1100, %polly.loop_exit846 ], [ 0, %polly.loop_header832 ]
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %polly.loop_header832 ]
  %308 = mul nsw i64 %polly.indvar841, -32
  %smin1167 = call i64 @llvm.smin.i64(i64 %308, i64 -968)
  %309 = add nsw i64 %smin1167, 1000
  %smin1101 = call i64 @llvm.smin.i64(i64 %indvars.iv1099, i64 -968)
  %310 = shl nsw i64 %polly.indvar841, 5
  %311 = add nsw i64 %smin1101, 999
  br label %polly.loop_header844

polly.loop_exit846:                               ; preds = %polly.loop_exit852
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %indvars.iv.next1100 = add nsw i64 %indvars.iv1099, -32
  %exitcond1107.not = icmp eq i64 %polly.indvar_next842, 32
  br i1 %exitcond1107.not, label %polly.loop_exit840, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_exit852, %polly.loop_header838
  %polly.indvar847 = phi i64 [ 0, %polly.loop_header838 ], [ %polly.indvar_next848, %polly.loop_exit852 ]
  %312 = add nuw nsw i64 %polly.indvar847, %306
  %313 = trunc i64 %312 to i32
  %314 = mul nuw nsw i64 %312, 8000
  %min.iters.check1168 = icmp eq i64 %309, 0
  br i1 %min.iters.check1168, label %polly.loop_header850, label %vector.ph1169

vector.ph1169:                                    ; preds = %polly.loop_header844
  %broadcast.splatinsert1178 = insertelement <4 x i64> poison, i64 %310, i32 0
  %broadcast.splat1179 = shufflevector <4 x i64> %broadcast.splatinsert1178, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1180 = insertelement <4 x i32> poison, i32 %313, i32 0
  %broadcast.splat1181 = shufflevector <4 x i32> %broadcast.splatinsert1180, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %vector.ph1169
  %index1172 = phi i64 [ 0, %vector.ph1169 ], [ %index.next1173, %vector.body1166 ]
  %vec.ind1176 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1169 ], [ %vec.ind.next1177, %vector.body1166 ]
  %315 = add nuw nsw <4 x i64> %vec.ind1176, %broadcast.splat1179
  %316 = trunc <4 x i64> %315 to <4 x i32>
  %317 = mul <4 x i32> %broadcast.splat1181, %316
  %318 = add <4 x i32> %317, <i32 2, i32 2, i32 2, i32 2>
  %319 = urem <4 x i32> %318, <i32 1000, i32 1000, i32 1000, i32 1000>
  %320 = sitofp <4 x i32> %319 to <4 x double>
  %321 = fmul fast <4 x double> %320, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %322 = extractelement <4 x i64> %315, i32 0
  %323 = shl i64 %322, 3
  %324 = add nuw nsw i64 %323, %314
  %325 = getelementptr i8, i8* %call2, i64 %324
  %326 = bitcast i8* %325 to <4 x double>*
  store <4 x double> %321, <4 x double>* %326, align 8, !alias.scope !102, !noalias !105
  %index.next1173 = add i64 %index1172, 4
  %vec.ind.next1177 = add <4 x i64> %vec.ind1176, <i64 4, i64 4, i64 4, i64 4>
  %327 = icmp eq i64 %index.next1173, %309
  br i1 %327, label %polly.loop_exit852, label %vector.body1166, !llvm.loop !106

polly.loop_exit852:                               ; preds = %vector.body1166, %polly.loop_header850
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar847, %307
  br i1 %exitcond1106.not, label %polly.loop_exit846, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_header844, %polly.loop_header850
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_header850 ], [ 0, %polly.loop_header844 ]
  %328 = add nuw nsw i64 %polly.indvar853, %310
  %329 = trunc i64 %328 to i32
  %330 = mul i32 %329, %313
  %331 = add i32 %330, 2
  %332 = urem i32 %331, 1000
  %p_conv10.i = sitofp i32 %332 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %333 = shl i64 %328, 3
  %334 = add nuw nsw i64 %333, %314
  %scevgep856 = getelementptr i8, i8* %call2, i64 %334
  %scevgep856857 = bitcast i8* %scevgep856 to double*
  store double %p_div12.i, double* %scevgep856857, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar853, %311
  br i1 %exitcond1102.not, label %polly.loop_exit852, label %polly.loop_header850, !llvm.loop !107

polly.loop_header858:                             ; preds = %polly.loop_exit840, %polly.loop_exit866
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094, %polly.loop_exit866 ], [ 0, %polly.loop_exit840 ]
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_exit866 ], [ 0, %polly.loop_exit840 ]
  %smin1095 = call i64 @llvm.smin.i64(i64 %indvars.iv1093, i64 -1168)
  %335 = shl nsw i64 %polly.indvar861, 5
  %336 = add nsw i64 %smin1095, 1199
  br label %polly.loop_header864

polly.loop_exit866:                               ; preds = %polly.loop_exit872
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %indvars.iv.next1094 = add nsw i64 %indvars.iv1093, -32
  %exitcond1098.not = icmp eq i64 %polly.indvar_next862, 38
  br i1 %exitcond1098.not, label %init_array.exit, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_exit872, %polly.loop_header858
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090, %polly.loop_exit872 ], [ 0, %polly.loop_header858 ]
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_exit872 ], [ 0, %polly.loop_header858 ]
  %337 = mul nsw i64 %polly.indvar867, -32
  %smin1185 = call i64 @llvm.smin.i64(i64 %337, i64 -968)
  %338 = add nsw i64 %smin1185, 1000
  %smin1091 = call i64 @llvm.smin.i64(i64 %indvars.iv1089, i64 -968)
  %339 = shl nsw i64 %polly.indvar867, 5
  %340 = add nsw i64 %smin1091, 999
  br label %polly.loop_header870

polly.loop_exit872:                               ; preds = %polly.loop_exit878
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %indvars.iv.next1090 = add nsw i64 %indvars.iv1089, -32
  %exitcond1097.not = icmp eq i64 %polly.indvar_next868, 32
  br i1 %exitcond1097.not, label %polly.loop_exit866, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_exit878, %polly.loop_header864
  %polly.indvar873 = phi i64 [ 0, %polly.loop_header864 ], [ %polly.indvar_next874, %polly.loop_exit878 ]
  %341 = add nuw nsw i64 %polly.indvar873, %335
  %342 = trunc i64 %341 to i32
  %343 = mul nuw nsw i64 %341, 8000
  %min.iters.check1186 = icmp eq i64 %338, 0
  br i1 %min.iters.check1186, label %polly.loop_header876, label %vector.ph1187

vector.ph1187:                                    ; preds = %polly.loop_header870
  %broadcast.splatinsert1196 = insertelement <4 x i64> poison, i64 %339, i32 0
  %broadcast.splat1197 = shufflevector <4 x i64> %broadcast.splatinsert1196, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1198 = insertelement <4 x i32> poison, i32 %342, i32 0
  %broadcast.splat1199 = shufflevector <4 x i32> %broadcast.splatinsert1198, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %vector.ph1187
  %index1190 = phi i64 [ 0, %vector.ph1187 ], [ %index.next1191, %vector.body1184 ]
  %vec.ind1194 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1187 ], [ %vec.ind.next1195, %vector.body1184 ]
  %344 = add nuw nsw <4 x i64> %vec.ind1194, %broadcast.splat1197
  %345 = trunc <4 x i64> %344 to <4 x i32>
  %346 = mul <4 x i32> %broadcast.splat1199, %345
  %347 = add <4 x i32> %346, <i32 1, i32 1, i32 1, i32 1>
  %348 = urem <4 x i32> %347, <i32 1200, i32 1200, i32 1200, i32 1200>
  %349 = sitofp <4 x i32> %348 to <4 x double>
  %350 = fmul fast <4 x double> %349, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %351 = extractelement <4 x i64> %344, i32 0
  %352 = shl i64 %351, 3
  %353 = add nuw nsw i64 %352, %343
  %354 = getelementptr i8, i8* %call1, i64 %353
  %355 = bitcast i8* %354 to <4 x double>*
  store <4 x double> %350, <4 x double>* %355, align 8, !alias.scope !101, !noalias !108
  %index.next1191 = add i64 %index1190, 4
  %vec.ind.next1195 = add <4 x i64> %vec.ind1194, <i64 4, i64 4, i64 4, i64 4>
  %356 = icmp eq i64 %index.next1191, %338
  br i1 %356, label %polly.loop_exit878, label %vector.body1184, !llvm.loop !109

polly.loop_exit878:                               ; preds = %vector.body1184, %polly.loop_header876
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar873, %336
  br i1 %exitcond1096.not, label %polly.loop_exit872, label %polly.loop_header870

polly.loop_header876:                             ; preds = %polly.loop_header870, %polly.loop_header876
  %polly.indvar879 = phi i64 [ %polly.indvar_next880, %polly.loop_header876 ], [ 0, %polly.loop_header870 ]
  %357 = add nuw nsw i64 %polly.indvar879, %339
  %358 = trunc i64 %357 to i32
  %359 = mul i32 %358, %342
  %360 = add i32 %359, 1
  %361 = urem i32 %360, 1200
  %p_conv.i = sitofp i32 %361 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %362 = shl i64 %357, 3
  %363 = add nuw nsw i64 %362, %343
  %scevgep883 = getelementptr i8, i8* %call1, i64 %363
  %scevgep883884 = bitcast i8* %scevgep883 to double*
  store double %p_div.i, double* %scevgep883884, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next880 = add nuw nsw i64 %polly.indvar879, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar879, %340
  br i1 %exitcond1092.not, label %polly.loop_exit878, label %polly.loop_header876, !llvm.loop !110
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
!25 = !{!"llvm.loop.tile.size", i32 20}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 80}
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
!46 = distinct !{!46, !12, !23, !47, !48, !49, !34, !50, !56}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !23, !52, !53, !54, !55}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.loop.interchange.enable", i1 true}
!54 = !{!"llvm.loop.interchange.depth", i32 5}
!55 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!56 = !{!"llvm.loop.tile.followup_tile", !57}
!57 = distinct !{!57, !12, !23, !58}
!58 = !{!"llvm.loop.id", !"i2"}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !4, i64 0}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !68, !"polly.alias.scope.MemRef_call"}
!68 = distinct !{!68, !"polly.alias.scope.domain"}
!69 = !{!70, !71, !72}
!70 = distinct !{!70, !68, !"polly.alias.scope.MemRef_call1"}
!71 = distinct !{!71, !68, !"polly.alias.scope.MemRef_call2"}
!72 = distinct !{!72, !68, !"polly.alias.scope.Packed_MemRef_call1"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !75, !13}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!67, !71, !72}
!77 = !{!67, !70, !72}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !75, !13}
!86 = !{!78, !82, !83}
!87 = !{!78, !81, !83}
!88 = distinct !{!88, !89, !"polly.alias.scope.MemRef_call"}
!89 = distinct !{!89, !"polly.alias.scope.domain"}
!90 = !{!91, !92, !93}
!91 = distinct !{!91, !89, !"polly.alias.scope.MemRef_call1"}
!92 = distinct !{!92, !89, !"polly.alias.scope.MemRef_call2"}
!93 = distinct !{!93, !89, !"polly.alias.scope.Packed_MemRef_call1"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !75, !13}
!96 = !{!88, !92, !93}
!97 = !{!88, !91, !93}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !75, !13}
!105 = !{!101, !98}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !75, !13}
!108 = !{!102, !98}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !75, !13}
