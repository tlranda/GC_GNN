; ModuleID = 'syr2k_exhaustive/mmp_all_XL_3668.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_3668.c"
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
  %call835 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1687 = bitcast i8* %call1 to double*
  %polly.access.call1696 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1696, %call2
  %polly.access.call2716 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2716, %call1
  %2 = or i1 %0, %1
  %polly.access.call736 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call736, %call2
  %4 = icmp ule i8* %polly.access.call2716, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call736, %call1
  %8 = icmp ule i8* %polly.access.call1696, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header809, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1132 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1131 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1130 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1129 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1129, %scevgep1132
  %bound1 = icmp ult i8* %scevgep1131, %scevgep1130
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
  br i1 %exitcond18.not.i, label %vector.ph1136, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1136:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1143 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1144 = shufflevector <4 x i64> %broadcast.splatinsert1143, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1135

vector.body1135:                                  ; preds = %vector.body1135, %vector.ph1136
  %index1137 = phi i64 [ 0, %vector.ph1136 ], [ %index.next1138, %vector.body1135 ]
  %vec.ind1141 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1136 ], [ %vec.ind.next1142, %vector.body1135 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1141, %broadcast.splat1144
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv7.i, i64 %index1137
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1138 = add i64 %index1137, 4
  %vec.ind.next1142 = add <4 x i64> %vec.ind1141, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1138, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1135, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1135
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1136, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit870
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start488, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1199 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1199, label %for.body3.i46.preheader1279, label %vector.ph1200

vector.ph1200:                                    ; preds = %for.body3.i46.preheader
  %n.vec1202 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %vector.ph1200
  %index1203 = phi i64 [ 0, %vector.ph1200 ], [ %index.next1204, %vector.body1198 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv21.i, i64 %index1203
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1204 = add i64 %index1203, 4
  %46 = icmp eq i64 %index.next1204, %n.vec1202
  br i1 %46, label %middle.block1196, label %vector.body1198, !llvm.loop !18

middle.block1196:                                 ; preds = %vector.body1198
  %cmp.n1206 = icmp eq i64 %indvars.iv21.i, %n.vec1202
  br i1 %cmp.n1206, label %for.inc6.i, label %for.body3.i46.preheader1279

for.body3.i46.preheader1279:                      ; preds = %for.body3.i46.preheader, %middle.block1196
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1202, %middle.block1196 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1279, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1279 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1196, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting489
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start291, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1222 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1222, label %for.body3.i60.preheader1276, label %vector.ph1223

vector.ph1223:                                    ; preds = %for.body3.i60.preheader
  %n.vec1225 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %vector.ph1223
  %index1226 = phi i64 [ 0, %vector.ph1223 ], [ %index.next1227, %vector.body1221 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv21.i52, i64 %index1226
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1230 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1230, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1227 = add i64 %index1226, 4
  %57 = icmp eq i64 %index.next1227, %n.vec1225
  br i1 %57, label %middle.block1219, label %vector.body1221, !llvm.loop !60

middle.block1219:                                 ; preds = %vector.body1221
  %cmp.n1229 = icmp eq i64 %indvars.iv21.i52, %n.vec1225
  br i1 %cmp.n1229, label %for.inc6.i63, label %for.body3.i60.preheader1276

for.body3.i60.preheader1276:                      ; preds = %for.body3.i60.preheader, %middle.block1219
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1225, %middle.block1219 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1276, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1276 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1219, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting292
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1248 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1248, label %for.body3.i99.preheader1273, label %vector.ph1249

vector.ph1249:                                    ; preds = %for.body3.i99.preheader
  %n.vec1251 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %vector.ph1249
  %index1252 = phi i64 [ 0, %vector.ph1249 ], [ %index.next1253, %vector.body1247 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv21.i91, i64 %index1252
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1256 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1256, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1253 = add i64 %index1252, 4
  %68 = icmp eq i64 %index.next1253, %n.vec1251
  br i1 %68, label %middle.block1245, label %vector.body1247, !llvm.loop !62

middle.block1245:                                 ; preds = %vector.body1247
  %cmp.n1255 = icmp eq i64 %indvars.iv21.i91, %n.vec1251
  br i1 %cmp.n1255, label %for.inc6.i102, label %for.body3.i99.preheader1273

for.body3.i99.preheader1273:                      ; preds = %for.body3.i99.preheader, %middle.block1245
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1251, %middle.block1245 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1273, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1273 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1245, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call835, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1260 = phi i64 [ %indvar.next1261, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1260, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1262 = icmp ult i64 %88, 4
  br i1 %min.iters.check1262, label %polly.loop_header191.preheader, label %vector.ph1263

vector.ph1263:                                    ; preds = %polly.loop_header
  %n.vec1265 = and i64 %88, -4
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %vector.ph1263
  %index1266 = phi i64 [ 0, %vector.ph1263 ], [ %index.next1267, %vector.body1259 ]
  %90 = shl nuw nsw i64 %index1266, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1270 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1270, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1267 = add i64 %index1266, 4
  %95 = icmp eq i64 %index.next1267, %n.vec1265
  br i1 %95, label %middle.block1257, label %vector.body1259, !llvm.loop !74

middle.block1257:                                 ; preds = %vector.body1259
  %cmp.n1269 = icmp eq i64 %88, %n.vec1265
  br i1 %cmp.n1269, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1257
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1265, %middle.block1257 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1257
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1261 = add i64 %indvar1260, 1
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
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit213 ], [ 47, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %98 = udiv i64 %indvars.iv1016, 48
  %99 = mul nuw nsw i64 %98, 96
  %100 = trunc i64 %polly.indvar208 to i16
  %101 = mul i16 %100, 23
  %pexp.p_div_q.lhs.trunc = add i16 %101, 47
  %pexp.p_div_q893 = udiv i16 %pexp.p_div_q.lhs.trunc, 48
  %pexp.p_div_q.zext = zext i16 %pexp.p_div_q893 to i64
  %102 = sub nsw i64 %polly.indvar208, %pexp.p_div_q.zext
  %polly.loop_guard = icmp slt i64 %102, 13
  br i1 %polly.loop_guard, label %polly.loop_header211.preheader, label %polly.loop_exit213

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %103 = sub nsw i64 %indvars.iv1020, %99
  %104 = add i64 %indvars.iv, %99
  %105 = mul nsw i64 %polly.indvar208, -50
  %106 = mul nuw nsw i64 %polly.indvar208, 50
  %107 = add nsw i64 %105, 1199
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit252, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -46
  %indvars.iv.next1017 = add nuw nsw i64 %indvars.iv1016, 23
  %indvars.iv.next1021 = add nuw nsw i64 %indvars.iv1020, 46
  %exitcond1028.not = icmp eq i64 %polly.indvar_next209, 24
  br i1 %exitcond1028.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit252
  %indvars.iv1022 = phi i64 [ %103, %polly.loop_header211.preheader ], [ %indvars.iv.next1023, %polly.loop_exit252 ]
  %indvars.iv1018 = phi i64 [ %104, %polly.loop_header211.preheader ], [ %indvars.iv.next1019, %polly.loop_exit252 ]
  %polly.indvar214 = phi i64 [ %102, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit252 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1018, i64 0)
  %108 = add i64 %smax, %indvars.iv1022
  %109 = mul nsw i64 %polly.indvar214, 96
  %110 = add nsw i64 %109, %105
  %111 = add nsw i64 %110, -1
  %.inv = icmp sgt i64 %110, 49
  %112 = select i1 %.inv, i64 49, i64 %111
  %polly.loop_guard227 = icmp sgt i64 %112, -1
  %113 = icmp sgt i64 %110, 0
  %114 = select i1 %113, i64 %110, i64 0
  %115 = add nsw i64 %110, 95
  %116 = icmp slt i64 %107, %115
  %117 = select i1 %116, i64 %107, i64 %115
  %polly.loop_guard239.not = icmp sgt i64 %114, %117
  br i1 %polly.loop_guard227, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit238.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit238.us ], [ 0, %polly.loop_header211 ]
  %118 = add nuw nsw i64 %polly.indvar220.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header224.us

polly.loop_header224.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header224.us
  %polly.indvar228.us = phi i64 [ %polly.indvar_next229.us, %polly.loop_header224.us ], [ 0, %polly.loop_header217.us ]
  %119 = add nuw nsw i64 %polly.indvar228.us, %106
  %polly.access.mul.call1232.us = mul nuw nsw i64 %119, 1000
  %polly.access.add.call1233.us = add nuw nsw i64 %118, %polly.access.mul.call1232.us
  %polly.access.call1234.us = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1233.us
  %polly.access.call1234.load.us = load double, double* %polly.access.call1234.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar228.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1234.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next229.us = add nuw i64 %polly.indvar228.us, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar228.us, %112
  br i1 %exitcond1014.not, label %polly.loop_exit226.loopexit.us, label %polly.loop_header224.us

polly.loop_header236.us:                          ; preds = %polly.loop_exit226.loopexit.us, %polly.loop_header236.us
  %polly.indvar240.us = phi i64 [ %polly.indvar_next241.us, %polly.loop_header236.us ], [ %114, %polly.loop_exit226.loopexit.us ]
  %120 = add nuw nsw i64 %polly.indvar240.us, %106
  %polly.access.mul.call1244.us = mul nsw i64 %120, 1000
  %polly.access.add.call1245.us = add nuw nsw i64 %118, %polly.access.mul.call1244.us
  %polly.access.call1246.us = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1245.us
  %polly.access.call1246.load.us = load double, double* %polly.access.call1246.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1248.us = add nuw nsw i64 %polly.indvar240.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1249.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248.us
  store double %polly.access.call1246.load.us, double* %polly.access.Packed_MemRef_call1249.us, align 8
  %polly.indvar_next241.us = add nuw nsw i64 %polly.indvar240.us, 1
  %polly.loop_cond242.not.not.us = icmp slt i64 %polly.indvar240.us, %117
  br i1 %polly.loop_cond242.not.not.us, label %polly.loop_header236.us, label %polly.loop_exit238.us

polly.loop_exit238.us:                            ; preds = %polly.loop_header236.us, %polly.loop_exit226.loopexit.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar_next221.us, 20
  br i1 %exitcond1015.not, label %polly.loop_header250.preheader, label %polly.loop_header217.us

polly.loop_exit226.loopexit.us:                   ; preds = %polly.loop_header224.us
  br i1 %polly.loop_guard239.not, label %polly.loop_exit238.us, label %polly.loop_header236.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %polly.loop_guard239.not, label %polly.loop_header250.preheader, label %polly.loop_header217

polly.loop_exit252:                               ; preds = %polly.loop_exit259, %polly.loop_header250.preheader
  %polly.indvar_next215 = add nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp slt i64 %polly.indvar214, 12
  %indvars.iv.next1019 = add i64 %indvars.iv1018, -96
  %indvars.iv.next1023 = add i64 %indvars.iv1022, 96
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_exit238
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit238 ], [ 0, %polly.loop_header211.split ]
  %121 = add nuw nsw i64 %polly.indvar220, %97
  %polly.access.mul.Packed_MemRef_call1247 = mul nuw nsw i64 %polly.indvar220, 1200
  br label %polly.loop_header236

polly.loop_exit238:                               ; preds = %polly.loop_header236
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 20
  br i1 %exitcond.not, label %polly.loop_header250.preheader, label %polly.loop_header217

polly.loop_header250.preheader:                   ; preds = %polly.loop_exit238, %polly.loop_exit238.us, %polly.loop_header211.split
  %122 = sub nsw i64 %106, %109
  %123 = icmp sgt i64 %122, 0
  %124 = select i1 %123, i64 %122, i64 0
  %125 = mul nsw i64 %polly.indvar214, -96
  %126 = icmp slt i64 %125, -1104
  %127 = select i1 %126, i64 %125, i64 -1104
  %128 = add nsw i64 %127, 1199
  %polly.loop_guard260.not = icmp sgt i64 %124, %128
  br i1 %polly.loop_guard260.not, label %polly.loop_exit252, label %polly.loop_header250

polly.loop_header236:                             ; preds = %polly.loop_header217, %polly.loop_header236
  %polly.indvar240 = phi i64 [ %polly.indvar_next241, %polly.loop_header236 ], [ %114, %polly.loop_header217 ]
  %129 = add nuw nsw i64 %polly.indvar240, %106
  %polly.access.mul.call1244 = mul nsw i64 %129, 1000
  %polly.access.add.call1245 = add nuw nsw i64 %121, %polly.access.mul.call1244
  %polly.access.call1246 = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1245
  %polly.access.call1246.load = load double, double* %polly.access.call1246, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1248 = add nuw nsw i64 %polly.indvar240, %polly.access.mul.Packed_MemRef_call1247
  %polly.access.Packed_MemRef_call1249 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1248
  store double %polly.access.call1246.load, double* %polly.access.Packed_MemRef_call1249, align 8
  %polly.indvar_next241 = add nuw nsw i64 %polly.indvar240, 1
  %polly.loop_cond242.not.not = icmp slt i64 %polly.indvar240, %117
  br i1 %polly.loop_cond242.not.not, label %polly.loop_header236, label %polly.loop_exit238

polly.loop_header250:                             ; preds = %polly.loop_header250.preheader, %polly.loop_exit259
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_exit259 ], [ 0, %polly.loop_header250.preheader ]
  %130 = add nuw nsw i64 %polly.indvar253, %97
  %polly.access.mul.Packed_MemRef_call1272 = mul nuw nsw i64 %polly.indvar253, 1200
  %131 = shl i64 %130, 3
  br label %polly.loop_header257

polly.loop_exit259:                               ; preds = %polly.loop_exit267
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar_next254, 20
  br i1 %exitcond1027.not, label %polly.loop_exit252, label %polly.loop_header250

polly.loop_header257:                             ; preds = %polly.loop_header250, %polly.loop_exit267
  %indvars.iv1024 = phi i64 [ %108, %polly.loop_header250 ], [ %indvars.iv.next1025, %polly.loop_exit267 ]
  %polly.indvar261 = phi i64 [ %124, %polly.loop_header250 ], [ %polly.indvar_next262, %polly.loop_exit267 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1024, i64 49)
  %132 = add nsw i64 %polly.indvar261, %110
  %polly.loop_guard2681115 = icmp sgt i64 %132, -1
  br i1 %polly.loop_guard2681115, label %polly.loop_header265.preheader, label %polly.loop_exit267

polly.loop_header265.preheader:                   ; preds = %polly.loop_header257
  %133 = add nsw i64 %polly.indvar261, %109
  %134 = mul i64 %133, 8000
  %135 = add i64 %134, %131
  %scevgep276 = getelementptr i8, i8* %call2, i64 %135
  %scevgep276277 = bitcast i8* %scevgep276 to double*
  %_p_scalar_278 = load double, double* %scevgep276277, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1283 = add nsw i64 %132, %polly.access.mul.Packed_MemRef_call1272
  %polly.access.Packed_MemRef_call1284 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1283
  %_p_scalar_285 = load double, double* %polly.access.Packed_MemRef_call1284, align 8
  %136 = mul i64 %133, 9600
  br label %polly.loop_header265

polly.loop_exit267:                               ; preds = %polly.loop_header265, %polly.loop_header257
  %polly.indvar_next262 = add nuw nsw i64 %polly.indvar261, 1
  %polly.loop_cond263.not.not = icmp slt i64 %polly.indvar261, %128
  %indvars.iv.next1025 = add i64 %indvars.iv1024, 1
  br i1 %polly.loop_cond263.not.not, label %polly.loop_header257, label %polly.loop_exit259

polly.loop_header265:                             ; preds = %polly.loop_header265.preheader, %polly.loop_header265
  %polly.indvar269 = phi i64 [ %polly.indvar_next270, %polly.loop_header265 ], [ 0, %polly.loop_header265.preheader ]
  %137 = add nuw nsw i64 %polly.indvar269, %106
  %polly.access.add.Packed_MemRef_call1273 = add nuw nsw i64 %polly.indvar269, %polly.access.mul.Packed_MemRef_call1272
  %polly.access.Packed_MemRef_call1274 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273
  %_p_scalar_275 = load double, double* %polly.access.Packed_MemRef_call1274, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_278, %_p_scalar_275
  %138 = mul nuw nsw i64 %137, 8000
  %139 = add nuw nsw i64 %138, %131
  %scevgep279 = getelementptr i8, i8* %call2, i64 %139
  %scevgep279280 = bitcast i8* %scevgep279 to double*
  %_p_scalar_281 = load double, double* %scevgep279280, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114 = fmul fast double %_p_scalar_285, %_p_scalar_281
  %140 = shl i64 %137, 3
  %141 = add i64 %140, %136
  %scevgep286 = getelementptr i8, i8* %call, i64 %141
  %scevgep286287 = bitcast i8* %scevgep286 to double*
  %_p_scalar_288 = load double, double* %scevgep286287, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_288
  store double %p_add42.i118, double* %scevgep286287, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next270 = add nuw nsw i64 %polly.indvar269, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar269, %smin
  br i1 %exitcond1026.not, label %polly.loop_exit267, label %polly.loop_header265

polly.start291:                                   ; preds = %kernel_syr2k.exit
  %malloccall293 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header377

polly.exiting292:                                 ; preds = %polly.loop_exit401
  tail call void @free(i8* %malloccall293)
  br label %kernel_syr2k.exit90

polly.loop_header377:                             ; preds = %polly.loop_exit385, %polly.start291
  %indvar1234 = phi i64 [ %indvar.next1235, %polly.loop_exit385 ], [ 0, %polly.start291 ]
  %polly.indvar380 = phi i64 [ %polly.indvar_next381, %polly.loop_exit385 ], [ 1, %polly.start291 ]
  %142 = add i64 %indvar1234, 1
  %143 = mul nuw nsw i64 %polly.indvar380, 9600
  %scevgep389 = getelementptr i8, i8* %call, i64 %143
  %min.iters.check1236 = icmp ult i64 %142, 4
  br i1 %min.iters.check1236, label %polly.loop_header383.preheader, label %vector.ph1237

vector.ph1237:                                    ; preds = %polly.loop_header377
  %n.vec1239 = and i64 %142, -4
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1237
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1241, %vector.body1233 ]
  %144 = shl nuw nsw i64 %index1240, 3
  %145 = getelementptr i8, i8* %scevgep389, i64 %144
  %146 = bitcast i8* %145 to <4 x double>*
  %wide.load1244 = load <4 x double>, <4 x double>* %146, align 8, !alias.scope !79, !noalias !81
  %147 = fmul fast <4 x double> %wide.load1244, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %148 = bitcast i8* %145 to <4 x double>*
  store <4 x double> %147, <4 x double>* %148, align 8, !alias.scope !79, !noalias !81
  %index.next1241 = add i64 %index1240, 4
  %149 = icmp eq i64 %index.next1241, %n.vec1239
  br i1 %149, label %middle.block1231, label %vector.body1233, !llvm.loop !85

middle.block1231:                                 ; preds = %vector.body1233
  %cmp.n1243 = icmp eq i64 %142, %n.vec1239
  br i1 %cmp.n1243, label %polly.loop_exit385, label %polly.loop_header383.preheader

polly.loop_header383.preheader:                   ; preds = %polly.loop_header377, %middle.block1231
  %polly.indvar386.ph = phi i64 [ 0, %polly.loop_header377 ], [ %n.vec1239, %middle.block1231 ]
  br label %polly.loop_header383

polly.loop_exit385:                               ; preds = %polly.loop_header383, %middle.block1231
  %polly.indvar_next381 = add nuw nsw i64 %polly.indvar380, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next381, 1200
  %indvar.next1235 = add i64 %indvar1234, 1
  br i1 %exitcond1054.not, label %polly.loop_header393.preheader, label %polly.loop_header377

polly.loop_header393.preheader:                   ; preds = %polly.loop_exit385
  %Packed_MemRef_call1294 = bitcast i8* %malloccall293 to double*
  br label %polly.loop_header393

polly.loop_header383:                             ; preds = %polly.loop_header383.preheader, %polly.loop_header383
  %polly.indvar386 = phi i64 [ %polly.indvar_next387, %polly.loop_header383 ], [ %polly.indvar386.ph, %polly.loop_header383.preheader ]
  %150 = shl nuw nsw i64 %polly.indvar386, 3
  %scevgep390 = getelementptr i8, i8* %scevgep389, i64 %150
  %scevgep390391 = bitcast i8* %scevgep390 to double*
  %_p_scalar_392 = load double, double* %scevgep390391, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_392, 1.200000e+00
  store double %p_mul.i57, double* %scevgep390391, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next387 = add nuw nsw i64 %polly.indvar386, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next387, %polly.indvar380
  br i1 %exitcond1053.not, label %polly.loop_exit385, label %polly.loop_header383, !llvm.loop !86

polly.loop_header393:                             ; preds = %polly.loop_header393.preheader, %polly.loop_exit401
  %polly.indvar396 = phi i64 [ %polly.indvar_next397, %polly.loop_exit401 ], [ 0, %polly.loop_header393.preheader ]
  %151 = mul nuw nsw i64 %polly.indvar396, 20
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit409
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next397, 50
  br i1 %exitcond1052.not, label %polly.exiting292, label %polly.loop_header393

polly.loop_header399:                             ; preds = %polly.loop_exit409, %polly.loop_header393
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit409 ], [ 0, %polly.loop_header393 ]
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038, %polly.loop_exit409 ], [ 47, %polly.loop_header393 ]
  %indvars.iv1035 = phi i64 [ %indvars.iv.next1036, %polly.loop_exit409 ], [ 0, %polly.loop_header393 ]
  %polly.indvar402 = phi i64 [ %polly.indvar_next403, %polly.loop_exit409 ], [ 0, %polly.loop_header393 ]
  %152 = udiv i64 %indvars.iv1037, 48
  %153 = mul nuw nsw i64 %152, 96
  %154 = trunc i64 %polly.indvar402 to i16
  %155 = mul i16 %154, 23
  %pexp.p_div_q405.lhs.trunc = add i16 %155, 47
  %pexp.p_div_q405892 = udiv i16 %pexp.p_div_q405.lhs.trunc, 48
  %pexp.p_div_q405.zext = zext i16 %pexp.p_div_q405892 to i64
  %156 = sub nsw i64 %polly.indvar402, %pexp.p_div_q405.zext
  %polly.loop_guard410 = icmp slt i64 %156, 13
  br i1 %polly.loop_guard410, label %polly.loop_header407.preheader, label %polly.loop_exit409

polly.loop_header407.preheader:                   ; preds = %polly.loop_header399
  %157 = sub nsw i64 %indvars.iv1042, %153
  %158 = add i64 %indvars.iv1035, %153
  %159 = mul nsw i64 %polly.indvar402, -50
  %160 = mul nuw nsw i64 %polly.indvar402, 50
  %161 = add nsw i64 %159, 1199
  br label %polly.loop_header407

polly.loop_exit409:                               ; preds = %polly.loop_exit449, %polly.loop_header399
  %polly.indvar_next403 = add nuw nsw i64 %polly.indvar402, 1
  %indvars.iv.next1036 = add nsw i64 %indvars.iv1035, -46
  %indvars.iv.next1038 = add nuw nsw i64 %indvars.iv1037, 23
  %indvars.iv.next1043 = add nuw nsw i64 %indvars.iv1042, 46
  %exitcond1051.not = icmp eq i64 %polly.indvar_next403, 24
  br i1 %exitcond1051.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header407:                             ; preds = %polly.loop_header407.preheader, %polly.loop_exit449
  %indvars.iv1044 = phi i64 [ %157, %polly.loop_header407.preheader ], [ %indvars.iv.next1045, %polly.loop_exit449 ]
  %indvars.iv1039 = phi i64 [ %158, %polly.loop_header407.preheader ], [ %indvars.iv.next1040, %polly.loop_exit449 ]
  %polly.indvar411 = phi i64 [ %156, %polly.loop_header407.preheader ], [ %polly.indvar_next412, %polly.loop_exit449 ]
  %smax1041 = call i64 @llvm.smax.i64(i64 %indvars.iv1039, i64 0)
  %162 = add i64 %smax1041, %indvars.iv1044
  %163 = mul nsw i64 %polly.indvar411, 96
  %164 = add nsw i64 %163, %159
  %165 = add nsw i64 %164, -1
  %.inv889 = icmp sgt i64 %164, 49
  %166 = select i1 %.inv889, i64 49, i64 %165
  %polly.loop_guard424 = icmp sgt i64 %166, -1
  %167 = icmp sgt i64 %164, 0
  %168 = select i1 %167, i64 %164, i64 0
  %169 = add nsw i64 %164, 95
  %170 = icmp slt i64 %161, %169
  %171 = select i1 %170, i64 %161, i64 %169
  %polly.loop_guard436.not = icmp sgt i64 %168, %171
  br i1 %polly.loop_guard424, label %polly.loop_header414.us, label %polly.loop_header407.split

polly.loop_header414.us:                          ; preds = %polly.loop_header407, %polly.loop_exit435.us
  %polly.indvar417.us = phi i64 [ %polly.indvar_next418.us, %polly.loop_exit435.us ], [ 0, %polly.loop_header407 ]
  %172 = add nuw nsw i64 %polly.indvar417.us, %151
  %polly.access.mul.Packed_MemRef_call1294.us = mul nuw nsw i64 %polly.indvar417.us, 1200
  br label %polly.loop_header421.us

polly.loop_header421.us:                          ; preds = %polly.loop_header414.us, %polly.loop_header421.us
  %polly.indvar425.us = phi i64 [ %polly.indvar_next426.us, %polly.loop_header421.us ], [ 0, %polly.loop_header414.us ]
  %173 = add nuw nsw i64 %polly.indvar425.us, %160
  %polly.access.mul.call1429.us = mul nuw nsw i64 %173, 1000
  %polly.access.add.call1430.us = add nuw nsw i64 %172, %polly.access.mul.call1429.us
  %polly.access.call1431.us = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1430.us
  %polly.access.call1431.load.us = load double, double* %polly.access.call1431.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1294.us = add nuw nsw i64 %polly.indvar425.us, %polly.access.mul.Packed_MemRef_call1294.us
  %polly.access.Packed_MemRef_call1294.us = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294.us
  store double %polly.access.call1431.load.us, double* %polly.access.Packed_MemRef_call1294.us, align 8
  %polly.indvar_next426.us = add nuw i64 %polly.indvar425.us, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar425.us, %166
  br i1 %exitcond1033.not, label %polly.loop_exit423.loopexit.us, label %polly.loop_header421.us

polly.loop_header433.us:                          ; preds = %polly.loop_exit423.loopexit.us, %polly.loop_header433.us
  %polly.indvar437.us = phi i64 [ %polly.indvar_next438.us, %polly.loop_header433.us ], [ %168, %polly.loop_exit423.loopexit.us ]
  %174 = add nuw nsw i64 %polly.indvar437.us, %160
  %polly.access.mul.call1441.us = mul nsw i64 %174, 1000
  %polly.access.add.call1442.us = add nuw nsw i64 %172, %polly.access.mul.call1441.us
  %polly.access.call1443.us = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1442.us
  %polly.access.call1443.load.us = load double, double* %polly.access.call1443.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1294445.us = add nuw nsw i64 %polly.indvar437.us, %polly.access.mul.Packed_MemRef_call1294.us
  %polly.access.Packed_MemRef_call1294446.us = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294445.us
  store double %polly.access.call1443.load.us, double* %polly.access.Packed_MemRef_call1294446.us, align 8
  %polly.indvar_next438.us = add nuw nsw i64 %polly.indvar437.us, 1
  %polly.loop_cond439.not.not.us = icmp slt i64 %polly.indvar437.us, %171
  br i1 %polly.loop_cond439.not.not.us, label %polly.loop_header433.us, label %polly.loop_exit435.us

polly.loop_exit435.us:                            ; preds = %polly.loop_header433.us, %polly.loop_exit423.loopexit.us
  %polly.indvar_next418.us = add nuw nsw i64 %polly.indvar417.us, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next418.us, 20
  br i1 %exitcond1034.not, label %polly.loop_header447.preheader, label %polly.loop_header414.us

polly.loop_exit423.loopexit.us:                   ; preds = %polly.loop_header421.us
  br i1 %polly.loop_guard436.not, label %polly.loop_exit435.us, label %polly.loop_header433.us

polly.loop_header407.split:                       ; preds = %polly.loop_header407
  br i1 %polly.loop_guard436.not, label %polly.loop_header447.preheader, label %polly.loop_header414

polly.loop_exit449:                               ; preds = %polly.loop_exit456, %polly.loop_header447.preheader
  %polly.indvar_next412 = add nsw i64 %polly.indvar411, 1
  %polly.loop_cond413 = icmp slt i64 %polly.indvar411, 12
  %indvars.iv.next1040 = add i64 %indvars.iv1039, -96
  %indvars.iv.next1045 = add i64 %indvars.iv1044, 96
  br i1 %polly.loop_cond413, label %polly.loop_header407, label %polly.loop_exit409

polly.loop_header414:                             ; preds = %polly.loop_header407.split, %polly.loop_exit435
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_exit435 ], [ 0, %polly.loop_header407.split ]
  %175 = add nuw nsw i64 %polly.indvar417, %151
  %polly.access.mul.Packed_MemRef_call1294444 = mul nuw nsw i64 %polly.indvar417, 1200
  br label %polly.loop_header433

polly.loop_exit435:                               ; preds = %polly.loop_header433
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar_next418, 20
  br i1 %exitcond1032.not, label %polly.loop_header447.preheader, label %polly.loop_header414

polly.loop_header447.preheader:                   ; preds = %polly.loop_exit435, %polly.loop_exit435.us, %polly.loop_header407.split
  %176 = sub nsw i64 %160, %163
  %177 = icmp sgt i64 %176, 0
  %178 = select i1 %177, i64 %176, i64 0
  %179 = mul nsw i64 %polly.indvar411, -96
  %180 = icmp slt i64 %179, -1104
  %181 = select i1 %180, i64 %179, i64 -1104
  %182 = add nsw i64 %181, 1199
  %polly.loop_guard457.not = icmp sgt i64 %178, %182
  br i1 %polly.loop_guard457.not, label %polly.loop_exit449, label %polly.loop_header447

polly.loop_header433:                             ; preds = %polly.loop_header414, %polly.loop_header433
  %polly.indvar437 = phi i64 [ %polly.indvar_next438, %polly.loop_header433 ], [ %168, %polly.loop_header414 ]
  %183 = add nuw nsw i64 %polly.indvar437, %160
  %polly.access.mul.call1441 = mul nsw i64 %183, 1000
  %polly.access.add.call1442 = add nuw nsw i64 %175, %polly.access.mul.call1441
  %polly.access.call1443 = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1442
  %polly.access.call1443.load = load double, double* %polly.access.call1443, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1294445 = add nuw nsw i64 %polly.indvar437, %polly.access.mul.Packed_MemRef_call1294444
  %polly.access.Packed_MemRef_call1294446 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294445
  store double %polly.access.call1443.load, double* %polly.access.Packed_MemRef_call1294446, align 8
  %polly.indvar_next438 = add nuw nsw i64 %polly.indvar437, 1
  %polly.loop_cond439.not.not = icmp slt i64 %polly.indvar437, %171
  br i1 %polly.loop_cond439.not.not, label %polly.loop_header433, label %polly.loop_exit435

polly.loop_header447:                             ; preds = %polly.loop_header447.preheader, %polly.loop_exit456
  %polly.indvar450 = phi i64 [ %polly.indvar_next451, %polly.loop_exit456 ], [ 0, %polly.loop_header447.preheader ]
  %184 = add nuw nsw i64 %polly.indvar450, %151
  %polly.access.mul.Packed_MemRef_call1294469 = mul nuw nsw i64 %polly.indvar450, 1200
  %185 = shl i64 %184, 3
  br label %polly.loop_header454

polly.loop_exit456:                               ; preds = %polly.loop_exit464
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next451, 20
  br i1 %exitcond1050.not, label %polly.loop_exit449, label %polly.loop_header447

polly.loop_header454:                             ; preds = %polly.loop_header447, %polly.loop_exit464
  %indvars.iv1046 = phi i64 [ %162, %polly.loop_header447 ], [ %indvars.iv.next1047, %polly.loop_exit464 ]
  %polly.indvar458 = phi i64 [ %178, %polly.loop_header447 ], [ %polly.indvar_next459, %polly.loop_exit464 ]
  %smin1048 = call i64 @llvm.smin.i64(i64 %indvars.iv1046, i64 49)
  %186 = add nsw i64 %polly.indvar458, %164
  %polly.loop_guard4651116 = icmp sgt i64 %186, -1
  br i1 %polly.loop_guard4651116, label %polly.loop_header462.preheader, label %polly.loop_exit464

polly.loop_header462.preheader:                   ; preds = %polly.loop_header454
  %187 = add nsw i64 %polly.indvar458, %163
  %188 = mul i64 %187, 8000
  %189 = add i64 %188, %185
  %scevgep473 = getelementptr i8, i8* %call2, i64 %189
  %scevgep473474 = bitcast i8* %scevgep473 to double*
  %_p_scalar_475 = load double, double* %scevgep473474, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1294480 = add nsw i64 %186, %polly.access.mul.Packed_MemRef_call1294469
  %polly.access.Packed_MemRef_call1294481 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294480
  %_p_scalar_482 = load double, double* %polly.access.Packed_MemRef_call1294481, align 8
  %190 = mul i64 %187, 9600
  br label %polly.loop_header462

polly.loop_exit464:                               ; preds = %polly.loop_header462, %polly.loop_header454
  %polly.indvar_next459 = add nuw nsw i64 %polly.indvar458, 1
  %polly.loop_cond460.not.not = icmp slt i64 %polly.indvar458, %182
  %indvars.iv.next1047 = add i64 %indvars.iv1046, 1
  br i1 %polly.loop_cond460.not.not, label %polly.loop_header454, label %polly.loop_exit456

polly.loop_header462:                             ; preds = %polly.loop_header462.preheader, %polly.loop_header462
  %polly.indvar466 = phi i64 [ %polly.indvar_next467, %polly.loop_header462 ], [ 0, %polly.loop_header462.preheader ]
  %191 = add nuw nsw i64 %polly.indvar466, %160
  %polly.access.add.Packed_MemRef_call1294470 = add nuw nsw i64 %polly.indvar466, %polly.access.mul.Packed_MemRef_call1294469
  %polly.access.Packed_MemRef_call1294471 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294470
  %_p_scalar_472 = load double, double* %polly.access.Packed_MemRef_call1294471, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_475, %_p_scalar_472
  %192 = mul nuw nsw i64 %191, 8000
  %193 = add nuw nsw i64 %192, %185
  %scevgep476 = getelementptr i8, i8* %call2, i64 %193
  %scevgep476477 = bitcast i8* %scevgep476 to double*
  %_p_scalar_478 = load double, double* %scevgep476477, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75 = fmul fast double %_p_scalar_482, %_p_scalar_478
  %194 = shl i64 %191, 3
  %195 = add i64 %194, %190
  %scevgep483 = getelementptr i8, i8* %call, i64 %195
  %scevgep483484 = bitcast i8* %scevgep483 to double*
  %_p_scalar_485 = load double, double* %scevgep483484, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_485
  store double %p_add42.i79, double* %scevgep483484, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next467 = add nuw nsw i64 %polly.indvar466, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar466, %smin1048
  br i1 %exitcond1049.not, label %polly.loop_exit464, label %polly.loop_header462

polly.start488:                                   ; preds = %init_array.exit
  %malloccall490 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header574

polly.exiting489:                                 ; preds = %polly.loop_exit598
  tail call void @free(i8* %malloccall490)
  br label %kernel_syr2k.exit

polly.loop_header574:                             ; preds = %polly.loop_exit582, %polly.start488
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit582 ], [ 0, %polly.start488 ]
  %polly.indvar577 = phi i64 [ %polly.indvar_next578, %polly.loop_exit582 ], [ 1, %polly.start488 ]
  %196 = add i64 %indvar, 1
  %197 = mul nuw nsw i64 %polly.indvar577, 9600
  %scevgep586 = getelementptr i8, i8* %call, i64 %197
  %min.iters.check1210 = icmp ult i64 %196, 4
  br i1 %min.iters.check1210, label %polly.loop_header580.preheader, label %vector.ph1211

vector.ph1211:                                    ; preds = %polly.loop_header574
  %n.vec1213 = and i64 %196, -4
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %vector.ph1211
  %index1214 = phi i64 [ 0, %vector.ph1211 ], [ %index.next1215, %vector.body1209 ]
  %198 = shl nuw nsw i64 %index1214, 3
  %199 = getelementptr i8, i8* %scevgep586, i64 %198
  %200 = bitcast i8* %199 to <4 x double>*
  %wide.load1218 = load <4 x double>, <4 x double>* %200, align 8, !alias.scope !89, !noalias !91
  %201 = fmul fast <4 x double> %wide.load1218, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %202 = bitcast i8* %199 to <4 x double>*
  store <4 x double> %201, <4 x double>* %202, align 8, !alias.scope !89, !noalias !91
  %index.next1215 = add i64 %index1214, 4
  %203 = icmp eq i64 %index.next1215, %n.vec1213
  br i1 %203, label %middle.block1207, label %vector.body1209, !llvm.loop !95

middle.block1207:                                 ; preds = %vector.body1209
  %cmp.n1217 = icmp eq i64 %196, %n.vec1213
  br i1 %cmp.n1217, label %polly.loop_exit582, label %polly.loop_header580.preheader

polly.loop_header580.preheader:                   ; preds = %polly.loop_header574, %middle.block1207
  %polly.indvar583.ph = phi i64 [ 0, %polly.loop_header574 ], [ %n.vec1213, %middle.block1207 ]
  br label %polly.loop_header580

polly.loop_exit582:                               ; preds = %polly.loop_header580, %middle.block1207
  %polly.indvar_next578 = add nuw nsw i64 %polly.indvar577, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar_next578, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1077.not, label %polly.loop_header590.preheader, label %polly.loop_header574

polly.loop_header590.preheader:                   ; preds = %polly.loop_exit582
  %Packed_MemRef_call1491 = bitcast i8* %malloccall490 to double*
  br label %polly.loop_header590

polly.loop_header580:                             ; preds = %polly.loop_header580.preheader, %polly.loop_header580
  %polly.indvar583 = phi i64 [ %polly.indvar_next584, %polly.loop_header580 ], [ %polly.indvar583.ph, %polly.loop_header580.preheader ]
  %204 = shl nuw nsw i64 %polly.indvar583, 3
  %scevgep587 = getelementptr i8, i8* %scevgep586, i64 %204
  %scevgep587588 = bitcast i8* %scevgep587 to double*
  %_p_scalar_589 = load double, double* %scevgep587588, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_589, 1.200000e+00
  store double %p_mul.i, double* %scevgep587588, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next584 = add nuw nsw i64 %polly.indvar583, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar_next584, %polly.indvar577
  br i1 %exitcond1076.not, label %polly.loop_exit582, label %polly.loop_header580, !llvm.loop !96

polly.loop_header590:                             ; preds = %polly.loop_header590.preheader, %polly.loop_exit598
  %polly.indvar593 = phi i64 [ %polly.indvar_next594, %polly.loop_exit598 ], [ 0, %polly.loop_header590.preheader ]
  %205 = mul nuw nsw i64 %polly.indvar593, 20
  br label %polly.loop_header596

polly.loop_exit598:                               ; preds = %polly.loop_exit606
  %polly.indvar_next594 = add nuw nsw i64 %polly.indvar593, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar_next594, 50
  br i1 %exitcond1075.not, label %polly.exiting489, label %polly.loop_header590

polly.loop_header596:                             ; preds = %polly.loop_exit606, %polly.loop_header590
  %indvars.iv1065 = phi i64 [ %indvars.iv.next1066, %polly.loop_exit606 ], [ 0, %polly.loop_header590 ]
  %indvars.iv1060 = phi i64 [ %indvars.iv.next1061, %polly.loop_exit606 ], [ 47, %polly.loop_header590 ]
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit606 ], [ 0, %polly.loop_header590 ]
  %polly.indvar599 = phi i64 [ %polly.indvar_next600, %polly.loop_exit606 ], [ 0, %polly.loop_header590 ]
  %206 = udiv i64 %indvars.iv1060, 48
  %207 = mul nuw nsw i64 %206, 96
  %208 = trunc i64 %polly.indvar599 to i16
  %209 = mul i16 %208, 23
  %pexp.p_div_q602.lhs.trunc = add i16 %209, 47
  %pexp.p_div_q602891 = udiv i16 %pexp.p_div_q602.lhs.trunc, 48
  %pexp.p_div_q602.zext = zext i16 %pexp.p_div_q602891 to i64
  %210 = sub nsw i64 %polly.indvar599, %pexp.p_div_q602.zext
  %polly.loop_guard607 = icmp slt i64 %210, 13
  br i1 %polly.loop_guard607, label %polly.loop_header604.preheader, label %polly.loop_exit606

polly.loop_header604.preheader:                   ; preds = %polly.loop_header596
  %211 = sub nsw i64 %indvars.iv1065, %207
  %212 = add i64 %indvars.iv1058, %207
  %213 = mul nsw i64 %polly.indvar599, -50
  %214 = mul nuw nsw i64 %polly.indvar599, 50
  %215 = add nsw i64 %213, 1199
  br label %polly.loop_header604

polly.loop_exit606:                               ; preds = %polly.loop_exit646, %polly.loop_header596
  %polly.indvar_next600 = add nuw nsw i64 %polly.indvar599, 1
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, -46
  %indvars.iv.next1061 = add nuw nsw i64 %indvars.iv1060, 23
  %indvars.iv.next1066 = add nuw nsw i64 %indvars.iv1065, 46
  %exitcond1074.not = icmp eq i64 %polly.indvar_next600, 24
  br i1 %exitcond1074.not, label %polly.loop_exit598, label %polly.loop_header596

polly.loop_header604:                             ; preds = %polly.loop_header604.preheader, %polly.loop_exit646
  %indvars.iv1067 = phi i64 [ %211, %polly.loop_header604.preheader ], [ %indvars.iv.next1068, %polly.loop_exit646 ]
  %indvars.iv1062 = phi i64 [ %212, %polly.loop_header604.preheader ], [ %indvars.iv.next1063, %polly.loop_exit646 ]
  %polly.indvar608 = phi i64 [ %210, %polly.loop_header604.preheader ], [ %polly.indvar_next609, %polly.loop_exit646 ]
  %smax1064 = call i64 @llvm.smax.i64(i64 %indvars.iv1062, i64 0)
  %216 = add i64 %smax1064, %indvars.iv1067
  %217 = mul nsw i64 %polly.indvar608, 96
  %218 = add nsw i64 %217, %213
  %219 = add nsw i64 %218, -1
  %.inv890 = icmp sgt i64 %218, 49
  %220 = select i1 %.inv890, i64 49, i64 %219
  %polly.loop_guard621 = icmp sgt i64 %220, -1
  %221 = icmp sgt i64 %218, 0
  %222 = select i1 %221, i64 %218, i64 0
  %223 = add nsw i64 %218, 95
  %224 = icmp slt i64 %215, %223
  %225 = select i1 %224, i64 %215, i64 %223
  %polly.loop_guard633.not = icmp sgt i64 %222, %225
  br i1 %polly.loop_guard621, label %polly.loop_header611.us, label %polly.loop_header604.split

polly.loop_header611.us:                          ; preds = %polly.loop_header604, %polly.loop_exit632.us
  %polly.indvar614.us = phi i64 [ %polly.indvar_next615.us, %polly.loop_exit632.us ], [ 0, %polly.loop_header604 ]
  %226 = add nuw nsw i64 %polly.indvar614.us, %205
  %polly.access.mul.Packed_MemRef_call1491.us = mul nuw nsw i64 %polly.indvar614.us, 1200
  br label %polly.loop_header618.us

polly.loop_header618.us:                          ; preds = %polly.loop_header611.us, %polly.loop_header618.us
  %polly.indvar622.us = phi i64 [ %polly.indvar_next623.us, %polly.loop_header618.us ], [ 0, %polly.loop_header611.us ]
  %227 = add nuw nsw i64 %polly.indvar622.us, %214
  %polly.access.mul.call1626.us = mul nuw nsw i64 %227, 1000
  %polly.access.add.call1627.us = add nuw nsw i64 %226, %polly.access.mul.call1626.us
  %polly.access.call1628.us = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1627.us
  %polly.access.call1628.load.us = load double, double* %polly.access.call1628.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1491.us = add nuw nsw i64 %polly.indvar622.us, %polly.access.mul.Packed_MemRef_call1491.us
  %polly.access.Packed_MemRef_call1491.us = getelementptr double, double* %Packed_MemRef_call1491, i64 %polly.access.add.Packed_MemRef_call1491.us
  store double %polly.access.call1628.load.us, double* %polly.access.Packed_MemRef_call1491.us, align 8
  %polly.indvar_next623.us = add nuw i64 %polly.indvar622.us, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar622.us, %220
  br i1 %exitcond1056.not, label %polly.loop_exit620.loopexit.us, label %polly.loop_header618.us

polly.loop_header630.us:                          ; preds = %polly.loop_exit620.loopexit.us, %polly.loop_header630.us
  %polly.indvar634.us = phi i64 [ %polly.indvar_next635.us, %polly.loop_header630.us ], [ %222, %polly.loop_exit620.loopexit.us ]
  %228 = add nuw nsw i64 %polly.indvar634.us, %214
  %polly.access.mul.call1638.us = mul nsw i64 %228, 1000
  %polly.access.add.call1639.us = add nuw nsw i64 %226, %polly.access.mul.call1638.us
  %polly.access.call1640.us = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1639.us
  %polly.access.call1640.load.us = load double, double* %polly.access.call1640.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1491642.us = add nuw nsw i64 %polly.indvar634.us, %polly.access.mul.Packed_MemRef_call1491.us
  %polly.access.Packed_MemRef_call1491643.us = getelementptr double, double* %Packed_MemRef_call1491, i64 %polly.access.add.Packed_MemRef_call1491642.us
  store double %polly.access.call1640.load.us, double* %polly.access.Packed_MemRef_call1491643.us, align 8
  %polly.indvar_next635.us = add nuw nsw i64 %polly.indvar634.us, 1
  %polly.loop_cond636.not.not.us = icmp slt i64 %polly.indvar634.us, %225
  br i1 %polly.loop_cond636.not.not.us, label %polly.loop_header630.us, label %polly.loop_exit632.us

polly.loop_exit632.us:                            ; preds = %polly.loop_header630.us, %polly.loop_exit620.loopexit.us
  %polly.indvar_next615.us = add nuw nsw i64 %polly.indvar614.us, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next615.us, 20
  br i1 %exitcond1057.not, label %polly.loop_header644.preheader, label %polly.loop_header611.us

polly.loop_exit620.loopexit.us:                   ; preds = %polly.loop_header618.us
  br i1 %polly.loop_guard633.not, label %polly.loop_exit632.us, label %polly.loop_header630.us

polly.loop_header604.split:                       ; preds = %polly.loop_header604
  br i1 %polly.loop_guard633.not, label %polly.loop_header644.preheader, label %polly.loop_header611

polly.loop_exit646:                               ; preds = %polly.loop_exit653, %polly.loop_header644.preheader
  %polly.indvar_next609 = add nsw i64 %polly.indvar608, 1
  %polly.loop_cond610 = icmp slt i64 %polly.indvar608, 12
  %indvars.iv.next1063 = add i64 %indvars.iv1062, -96
  %indvars.iv.next1068 = add i64 %indvars.iv1067, 96
  br i1 %polly.loop_cond610, label %polly.loop_header604, label %polly.loop_exit606

polly.loop_header611:                             ; preds = %polly.loop_header604.split, %polly.loop_exit632
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit632 ], [ 0, %polly.loop_header604.split ]
  %229 = add nuw nsw i64 %polly.indvar614, %205
  %polly.access.mul.Packed_MemRef_call1491641 = mul nuw nsw i64 %polly.indvar614, 1200
  br label %polly.loop_header630

polly.loop_exit632:                               ; preds = %polly.loop_header630
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next615, 20
  br i1 %exitcond1055.not, label %polly.loop_header644.preheader, label %polly.loop_header611

polly.loop_header644.preheader:                   ; preds = %polly.loop_exit632, %polly.loop_exit632.us, %polly.loop_header604.split
  %230 = sub nsw i64 %214, %217
  %231 = icmp sgt i64 %230, 0
  %232 = select i1 %231, i64 %230, i64 0
  %233 = mul nsw i64 %polly.indvar608, -96
  %234 = icmp slt i64 %233, -1104
  %235 = select i1 %234, i64 %233, i64 -1104
  %236 = add nsw i64 %235, 1199
  %polly.loop_guard654.not = icmp sgt i64 %232, %236
  br i1 %polly.loop_guard654.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header630:                             ; preds = %polly.loop_header611, %polly.loop_header630
  %polly.indvar634 = phi i64 [ %polly.indvar_next635, %polly.loop_header630 ], [ %222, %polly.loop_header611 ]
  %237 = add nuw nsw i64 %polly.indvar634, %214
  %polly.access.mul.call1638 = mul nsw i64 %237, 1000
  %polly.access.add.call1639 = add nuw nsw i64 %229, %polly.access.mul.call1638
  %polly.access.call1640 = getelementptr double, double* %polly.access.cast.call1687, i64 %polly.access.add.call1639
  %polly.access.call1640.load = load double, double* %polly.access.call1640, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1491642 = add nuw nsw i64 %polly.indvar634, %polly.access.mul.Packed_MemRef_call1491641
  %polly.access.Packed_MemRef_call1491643 = getelementptr double, double* %Packed_MemRef_call1491, i64 %polly.access.add.Packed_MemRef_call1491642
  store double %polly.access.call1640.load, double* %polly.access.Packed_MemRef_call1491643, align 8
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %polly.loop_cond636.not.not = icmp slt i64 %polly.indvar634, %225
  br i1 %polly.loop_cond636.not.not, label %polly.loop_header630, label %polly.loop_exit632

polly.loop_header644:                             ; preds = %polly.loop_header644.preheader, %polly.loop_exit653
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit653 ], [ 0, %polly.loop_header644.preheader ]
  %238 = add nuw nsw i64 %polly.indvar647, %205
  %polly.access.mul.Packed_MemRef_call1491666 = mul nuw nsw i64 %polly.indvar647, 1200
  %239 = shl i64 %238, 3
  br label %polly.loop_header651

polly.loop_exit653:                               ; preds = %polly.loop_exit661
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next648, 20
  br i1 %exitcond1073.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header651:                             ; preds = %polly.loop_header644, %polly.loop_exit661
  %indvars.iv1069 = phi i64 [ %216, %polly.loop_header644 ], [ %indvars.iv.next1070, %polly.loop_exit661 ]
  %polly.indvar655 = phi i64 [ %232, %polly.loop_header644 ], [ %polly.indvar_next656, %polly.loop_exit661 ]
  %smin1071 = call i64 @llvm.smin.i64(i64 %indvars.iv1069, i64 49)
  %240 = add nsw i64 %polly.indvar655, %218
  %polly.loop_guard6621117 = icmp sgt i64 %240, -1
  br i1 %polly.loop_guard6621117, label %polly.loop_header659.preheader, label %polly.loop_exit661

polly.loop_header659.preheader:                   ; preds = %polly.loop_header651
  %241 = add nsw i64 %polly.indvar655, %217
  %242 = mul i64 %241, 8000
  %243 = add i64 %242, %239
  %scevgep670 = getelementptr i8, i8* %call2, i64 %243
  %scevgep670671 = bitcast i8* %scevgep670 to double*
  %_p_scalar_672 = load double, double* %scevgep670671, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1491677 = add nsw i64 %240, %polly.access.mul.Packed_MemRef_call1491666
  %polly.access.Packed_MemRef_call1491678 = getelementptr double, double* %Packed_MemRef_call1491, i64 %polly.access.add.Packed_MemRef_call1491677
  %_p_scalar_679 = load double, double* %polly.access.Packed_MemRef_call1491678, align 8
  %244 = mul i64 %241, 9600
  br label %polly.loop_header659

polly.loop_exit661:                               ; preds = %polly.loop_header659, %polly.loop_header651
  %polly.indvar_next656 = add nuw nsw i64 %polly.indvar655, 1
  %polly.loop_cond657.not.not = icmp slt i64 %polly.indvar655, %236
  %indvars.iv.next1070 = add i64 %indvars.iv1069, 1
  br i1 %polly.loop_cond657.not.not, label %polly.loop_header651, label %polly.loop_exit653

polly.loop_header659:                             ; preds = %polly.loop_header659.preheader, %polly.loop_header659
  %polly.indvar663 = phi i64 [ %polly.indvar_next664, %polly.loop_header659 ], [ 0, %polly.loop_header659.preheader ]
  %245 = add nuw nsw i64 %polly.indvar663, %214
  %polly.access.add.Packed_MemRef_call1491667 = add nuw nsw i64 %polly.indvar663, %polly.access.mul.Packed_MemRef_call1491666
  %polly.access.Packed_MemRef_call1491668 = getelementptr double, double* %Packed_MemRef_call1491, i64 %polly.access.add.Packed_MemRef_call1491667
  %_p_scalar_669 = load double, double* %polly.access.Packed_MemRef_call1491668, align 8
  %p_mul27.i = fmul fast double %_p_scalar_672, %_p_scalar_669
  %246 = mul nuw nsw i64 %245, 8000
  %247 = add nuw nsw i64 %246, %239
  %scevgep673 = getelementptr i8, i8* %call2, i64 %247
  %scevgep673674 = bitcast i8* %scevgep673 to double*
  %_p_scalar_675 = load double, double* %scevgep673674, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i = fmul fast double %_p_scalar_679, %_p_scalar_675
  %248 = shl i64 %245, 3
  %249 = add i64 %248, %244
  %scevgep680 = getelementptr i8, i8* %call, i64 %249
  %scevgep680681 = bitcast i8* %scevgep680 to double*
  %_p_scalar_682 = load double, double* %scevgep680681, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_682
  store double %p_add42.i, double* %scevgep680681, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next664 = add nuw nsw i64 %polly.indvar663, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar663, %smin1071
  br i1 %exitcond1072.not, label %polly.loop_exit661, label %polly.loop_header659

polly.loop_header809:                             ; preds = %entry, %polly.loop_exit817
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit817 ], [ 0, %entry ]
  %polly.indvar812 = phi i64 [ %polly.indvar_next813, %polly.loop_exit817 ], [ 0, %entry ]
  %smin1104 = call i64 @llvm.smin.i64(i64 %indvars.iv1102, i64 -1168)
  %250 = shl nsw i64 %polly.indvar812, 5
  %251 = add nsw i64 %smin1104, 1199
  br label %polly.loop_header815

polly.loop_exit817:                               ; preds = %polly.loop_exit823
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %indvars.iv.next1103 = add nsw i64 %indvars.iv1102, -32
  %exitcond1107.not = icmp eq i64 %polly.indvar_next813, 38
  br i1 %exitcond1107.not, label %polly.loop_header836, label %polly.loop_header809

polly.loop_header815:                             ; preds = %polly.loop_exit823, %polly.loop_header809
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit823 ], [ 0, %polly.loop_header809 ]
  %polly.indvar818 = phi i64 [ %polly.indvar_next819, %polly.loop_exit823 ], [ 0, %polly.loop_header809 ]
  %252 = mul nsw i64 %polly.indvar818, -32
  %smin1148 = call i64 @llvm.smin.i64(i64 %252, i64 -1168)
  %253 = add nsw i64 %smin1148, 1200
  %smin1100 = call i64 @llvm.smin.i64(i64 %indvars.iv1098, i64 -1168)
  %254 = shl nsw i64 %polly.indvar818, 5
  %255 = add nsw i64 %smin1100, 1199
  br label %polly.loop_header821

polly.loop_exit823:                               ; preds = %polly.loop_exit829
  %polly.indvar_next819 = add nuw nsw i64 %polly.indvar818, 1
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, -32
  %exitcond1106.not = icmp eq i64 %polly.indvar_next819, 38
  br i1 %exitcond1106.not, label %polly.loop_exit817, label %polly.loop_header815

polly.loop_header821:                             ; preds = %polly.loop_exit829, %polly.loop_header815
  %polly.indvar824 = phi i64 [ 0, %polly.loop_header815 ], [ %polly.indvar_next825, %polly.loop_exit829 ]
  %256 = add nuw nsw i64 %polly.indvar824, %250
  %257 = trunc i64 %256 to i32
  %258 = mul nuw nsw i64 %256, 9600
  %min.iters.check = icmp eq i64 %253, 0
  br i1 %min.iters.check, label %polly.loop_header827, label %vector.ph1149

vector.ph1149:                                    ; preds = %polly.loop_header821
  %broadcast.splatinsert1156 = insertelement <4 x i64> poison, i64 %254, i32 0
  %broadcast.splat1157 = shufflevector <4 x i64> %broadcast.splatinsert1156, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1158 = insertelement <4 x i32> poison, i32 %257, i32 0
  %broadcast.splat1159 = shufflevector <4 x i32> %broadcast.splatinsert1158, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %vector.ph1149
  %index1150 = phi i64 [ 0, %vector.ph1149 ], [ %index.next1151, %vector.body1147 ]
  %vec.ind1154 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1149 ], [ %vec.ind.next1155, %vector.body1147 ]
  %259 = add nuw nsw <4 x i64> %vec.ind1154, %broadcast.splat1157
  %260 = trunc <4 x i64> %259 to <4 x i32>
  %261 = mul <4 x i32> %broadcast.splat1159, %260
  %262 = add <4 x i32> %261, <i32 3, i32 3, i32 3, i32 3>
  %263 = urem <4 x i32> %262, <i32 1200, i32 1200, i32 1200, i32 1200>
  %264 = sitofp <4 x i32> %263 to <4 x double>
  %265 = fmul fast <4 x double> %264, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %266 = extractelement <4 x i64> %259, i32 0
  %267 = shl i64 %266, 3
  %268 = add nuw nsw i64 %267, %258
  %269 = getelementptr i8, i8* %call, i64 %268
  %270 = bitcast i8* %269 to <4 x double>*
  store <4 x double> %265, <4 x double>* %270, align 8, !alias.scope !99, !noalias !101
  %index.next1151 = add i64 %index1150, 4
  %vec.ind.next1155 = add <4 x i64> %vec.ind1154, <i64 4, i64 4, i64 4, i64 4>
  %271 = icmp eq i64 %index.next1151, %253
  br i1 %271, label %polly.loop_exit829, label %vector.body1147, !llvm.loop !104

polly.loop_exit829:                               ; preds = %vector.body1147, %polly.loop_header827
  %polly.indvar_next825 = add nuw nsw i64 %polly.indvar824, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar824, %251
  br i1 %exitcond1105.not, label %polly.loop_exit823, label %polly.loop_header821

polly.loop_header827:                             ; preds = %polly.loop_header821, %polly.loop_header827
  %polly.indvar830 = phi i64 [ %polly.indvar_next831, %polly.loop_header827 ], [ 0, %polly.loop_header821 ]
  %272 = add nuw nsw i64 %polly.indvar830, %254
  %273 = trunc i64 %272 to i32
  %274 = mul i32 %273, %257
  %275 = add i32 %274, 3
  %276 = urem i32 %275, 1200
  %p_conv31.i = sitofp i32 %276 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %277 = shl i64 %272, 3
  %278 = add nuw nsw i64 %277, %258
  %scevgep833 = getelementptr i8, i8* %call, i64 %278
  %scevgep833834 = bitcast i8* %scevgep833 to double*
  store double %p_div33.i, double* %scevgep833834, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next831 = add nuw nsw i64 %polly.indvar830, 1
  %exitcond1101.not = icmp eq i64 %polly.indvar830, %255
  br i1 %exitcond1101.not, label %polly.loop_exit829, label %polly.loop_header827, !llvm.loop !105

polly.loop_header836:                             ; preds = %polly.loop_exit817, %polly.loop_exit844
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %polly.loop_exit844 ], [ 0, %polly.loop_exit817 ]
  %polly.indvar839 = phi i64 [ %polly.indvar_next840, %polly.loop_exit844 ], [ 0, %polly.loop_exit817 ]
  %smin1094 = call i64 @llvm.smin.i64(i64 %indvars.iv1092, i64 -1168)
  %279 = shl nsw i64 %polly.indvar839, 5
  %280 = add nsw i64 %smin1094, 1199
  br label %polly.loop_header842

polly.loop_exit844:                               ; preds = %polly.loop_exit850
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %indvars.iv.next1093 = add nsw i64 %indvars.iv1092, -32
  %exitcond1097.not = icmp eq i64 %polly.indvar_next840, 38
  br i1 %exitcond1097.not, label %polly.loop_header862, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_exit850, %polly.loop_header836
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %281 = mul nsw i64 %polly.indvar845, -32
  %smin1163 = call i64 @llvm.smin.i64(i64 %281, i64 -968)
  %282 = add nsw i64 %smin1163, 1000
  %smin1090 = call i64 @llvm.smin.i64(i64 %indvars.iv1088, i64 -968)
  %283 = shl nsw i64 %polly.indvar845, 5
  %284 = add nsw i64 %smin1090, 999
  br label %polly.loop_header848

polly.loop_exit850:                               ; preds = %polly.loop_exit856
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %indvars.iv.next1089 = add nsw i64 %indvars.iv1088, -32
  %exitcond1096.not = icmp eq i64 %polly.indvar_next846, 32
  br i1 %exitcond1096.not, label %polly.loop_exit844, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_exit856, %polly.loop_header842
  %polly.indvar851 = phi i64 [ 0, %polly.loop_header842 ], [ %polly.indvar_next852, %polly.loop_exit856 ]
  %285 = add nuw nsw i64 %polly.indvar851, %279
  %286 = trunc i64 %285 to i32
  %287 = mul nuw nsw i64 %285, 8000
  %min.iters.check1164 = icmp eq i64 %282, 0
  br i1 %min.iters.check1164, label %polly.loop_header854, label %vector.ph1165

vector.ph1165:                                    ; preds = %polly.loop_header848
  %broadcast.splatinsert1174 = insertelement <4 x i64> poison, i64 %283, i32 0
  %broadcast.splat1175 = shufflevector <4 x i64> %broadcast.splatinsert1174, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1176 = insertelement <4 x i32> poison, i32 %286, i32 0
  %broadcast.splat1177 = shufflevector <4 x i32> %broadcast.splatinsert1176, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %vector.ph1165
  %index1168 = phi i64 [ 0, %vector.ph1165 ], [ %index.next1169, %vector.body1162 ]
  %vec.ind1172 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1165 ], [ %vec.ind.next1173, %vector.body1162 ]
  %288 = add nuw nsw <4 x i64> %vec.ind1172, %broadcast.splat1175
  %289 = trunc <4 x i64> %288 to <4 x i32>
  %290 = mul <4 x i32> %broadcast.splat1177, %289
  %291 = add <4 x i32> %290, <i32 2, i32 2, i32 2, i32 2>
  %292 = urem <4 x i32> %291, <i32 1000, i32 1000, i32 1000, i32 1000>
  %293 = sitofp <4 x i32> %292 to <4 x double>
  %294 = fmul fast <4 x double> %293, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %295 = extractelement <4 x i64> %288, i32 0
  %296 = shl i64 %295, 3
  %297 = add nuw nsw i64 %296, %287
  %298 = getelementptr i8, i8* %call2, i64 %297
  %299 = bitcast i8* %298 to <4 x double>*
  store <4 x double> %294, <4 x double>* %299, align 8, !alias.scope !103, !noalias !106
  %index.next1169 = add i64 %index1168, 4
  %vec.ind.next1173 = add <4 x i64> %vec.ind1172, <i64 4, i64 4, i64 4, i64 4>
  %300 = icmp eq i64 %index.next1169, %282
  br i1 %300, label %polly.loop_exit856, label %vector.body1162, !llvm.loop !107

polly.loop_exit856:                               ; preds = %vector.body1162, %polly.loop_header854
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar851, %280
  br i1 %exitcond1095.not, label %polly.loop_exit850, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_header848, %polly.loop_header854
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_header854 ], [ 0, %polly.loop_header848 ]
  %301 = add nuw nsw i64 %polly.indvar857, %283
  %302 = trunc i64 %301 to i32
  %303 = mul i32 %302, %286
  %304 = add i32 %303, 2
  %305 = urem i32 %304, 1000
  %p_conv10.i = sitofp i32 %305 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %306 = shl i64 %301, 3
  %307 = add nuw nsw i64 %306, %287
  %scevgep860 = getelementptr i8, i8* %call2, i64 %307
  %scevgep860861 = bitcast i8* %scevgep860 to double*
  store double %p_div12.i, double* %scevgep860861, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar857, %284
  br i1 %exitcond1091.not, label %polly.loop_exit856, label %polly.loop_header854, !llvm.loop !108

polly.loop_header862:                             ; preds = %polly.loop_exit844, %polly.loop_exit870
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %polly.loop_exit870 ], [ 0, %polly.loop_exit844 ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %polly.loop_exit844 ]
  %smin1084 = call i64 @llvm.smin.i64(i64 %indvars.iv1082, i64 -1168)
  %308 = shl nsw i64 %polly.indvar865, 5
  %309 = add nsw i64 %smin1084, 1199
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1083 = add nsw i64 %indvars.iv1082, -32
  %exitcond1087.not = icmp eq i64 %polly.indvar_next866, 38
  br i1 %exitcond1087.not, label %init_array.exit, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %310 = mul nsw i64 %polly.indvar871, -32
  %smin1181 = call i64 @llvm.smin.i64(i64 %310, i64 -968)
  %311 = add nsw i64 %smin1181, 1000
  %smin1080 = call i64 @llvm.smin.i64(i64 %indvars.iv1078, i64 -968)
  %312 = shl nsw i64 %polly.indvar871, 5
  %313 = add nsw i64 %smin1080, 999
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1079 = add nsw i64 %indvars.iv1078, -32
  %exitcond1086.not = icmp eq i64 %polly.indvar_next872, 32
  br i1 %exitcond1086.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %polly.indvar877 = phi i64 [ 0, %polly.loop_header868 ], [ %polly.indvar_next878, %polly.loop_exit882 ]
  %314 = add nuw nsw i64 %polly.indvar877, %308
  %315 = trunc i64 %314 to i32
  %316 = mul nuw nsw i64 %314, 8000
  %min.iters.check1182 = icmp eq i64 %311, 0
  br i1 %min.iters.check1182, label %polly.loop_header880, label %vector.ph1183

vector.ph1183:                                    ; preds = %polly.loop_header874
  %broadcast.splatinsert1192 = insertelement <4 x i64> poison, i64 %312, i32 0
  %broadcast.splat1193 = shufflevector <4 x i64> %broadcast.splatinsert1192, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1194 = insertelement <4 x i32> poison, i32 %315, i32 0
  %broadcast.splat1195 = shufflevector <4 x i32> %broadcast.splatinsert1194, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1180

vector.body1180:                                  ; preds = %vector.body1180, %vector.ph1183
  %index1186 = phi i64 [ 0, %vector.ph1183 ], [ %index.next1187, %vector.body1180 ]
  %vec.ind1190 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1183 ], [ %vec.ind.next1191, %vector.body1180 ]
  %317 = add nuw nsw <4 x i64> %vec.ind1190, %broadcast.splat1193
  %318 = trunc <4 x i64> %317 to <4 x i32>
  %319 = mul <4 x i32> %broadcast.splat1195, %318
  %320 = add <4 x i32> %319, <i32 1, i32 1, i32 1, i32 1>
  %321 = urem <4 x i32> %320, <i32 1200, i32 1200, i32 1200, i32 1200>
  %322 = sitofp <4 x i32> %321 to <4 x double>
  %323 = fmul fast <4 x double> %322, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %324 = extractelement <4 x i64> %317, i32 0
  %325 = shl i64 %324, 3
  %326 = add nuw nsw i64 %325, %316
  %327 = getelementptr i8, i8* %call1, i64 %326
  %328 = bitcast i8* %327 to <4 x double>*
  store <4 x double> %323, <4 x double>* %328, align 8, !alias.scope !102, !noalias !109
  %index.next1187 = add i64 %index1186, 4
  %vec.ind.next1191 = add <4 x i64> %vec.ind1190, <i64 4, i64 4, i64 4, i64 4>
  %329 = icmp eq i64 %index.next1187, %311
  br i1 %329, label %polly.loop_exit882, label %vector.body1180, !llvm.loop !110

polly.loop_exit882:                               ; preds = %vector.body1180, %polly.loop_header880
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar877, %309
  br i1 %exitcond1085.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_header874, %polly.loop_header880
  %polly.indvar883 = phi i64 [ %polly.indvar_next884, %polly.loop_header880 ], [ 0, %polly.loop_header874 ]
  %330 = add nuw nsw i64 %polly.indvar883, %312
  %331 = trunc i64 %330 to i32
  %332 = mul i32 %331, %315
  %333 = add i32 %332, 1
  %334 = urem i32 %333, 1200
  %p_conv.i = sitofp i32 %334 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %335 = shl i64 %330, 3
  %336 = add nuw nsw i64 %335, %316
  %scevgep887 = getelementptr i8, i8* %call1, i64 %336
  %scevgep887888 = bitcast i8* %scevgep887 to double*
  store double %p_div.i, double* %scevgep887888, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar883, %313
  br i1 %exitcond1081.not, label %polly.loop_exit882, label %polly.loop_header880, !llvm.loop !111
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
!25 = !{!"llvm.loop.tile.size", i32 50}
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
