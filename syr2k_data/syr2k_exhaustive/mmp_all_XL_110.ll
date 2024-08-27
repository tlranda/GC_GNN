; ModuleID = 'syr2k_exhaustive/mmp_all_XL_110.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_110.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 1440000, i32 8) #8
  %call850 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #8
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #8
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1702 = bitcast i8* %call1 to double*
  %polly.access.call1711 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2712 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1711, %call2
  %polly.access.call2731 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2731, %call1
  %2 = or i1 %0, %1
  %polly.access.call751 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call751, %call2
  %4 = icmp ule i8* %polly.access.call2731, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call751, %call1
  %8 = icmp ule i8* %polly.access.call1711, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header824, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1032 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1031 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1030 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1029 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1029, %scevgep1032
  %bound1 = icmp ult i8* %scevgep1031, %scevgep1030
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
  br i1 %exitcond18.not.i, label %vector.ph1036, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1036:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1043 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1044 = shufflevector <4 x i64> %broadcast.splatinsert1043, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1035

vector.body1035:                                  ; preds = %vector.body1035, %vector.ph1036
  %index1037 = phi i64 [ 0, %vector.ph1036 ], [ %index.next1038, %vector.body1035 ]
  %vec.ind1041 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1036 ], [ %vec.ind.next1042, %vector.body1035 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1041, %broadcast.splat1044
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv7.i, i64 %index1037
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1038 = add i64 %index1037, 4
  %vec.ind.next1042 = add <4 x i64> %vec.ind1041, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1038, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1035, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1035
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1036, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit885
  tail call void (...) @polybench_timer_start() #8
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start498, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1099 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1099, label %for.body3.i46.preheader1304, label %vector.ph1100

vector.ph1100:                                    ; preds = %for.body3.i46.preheader
  %n.vec1102 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1098

vector.body1098:                                  ; preds = %vector.body1098, %vector.ph1100
  %index1103 = phi i64 [ 0, %vector.ph1100 ], [ %index.next1104, %vector.body1098 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv21.i, i64 %index1103
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1104 = add i64 %index1103, 4
  %46 = icmp eq i64 %index.next1104, %n.vec1102
  br i1 %46, label %middle.block1096, label %vector.body1098, !llvm.loop !18

middle.block1096:                                 ; preds = %vector.body1098
  %cmp.n1106 = icmp eq i64 %indvars.iv21.i, %n.vec1102
  br i1 %cmp.n1106, label %for.inc6.i, label %for.body3.i46.preheader1304

for.body3.i46.preheader1304:                      ; preds = %for.body3.i46.preheader, %middle.block1096
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1102, %middle.block1096 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1304, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1304 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1096, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !22
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !22
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !23

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !33

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !47

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting499
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start296, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1162 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1162, label %for.body3.i60.preheader1302, label %vector.ph1163

vector.ph1163:                                    ; preds = %for.body3.i60.preheader
  %n.vec1165 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1161

vector.body1161:                                  ; preds = %vector.body1161, %vector.ph1163
  %index1166 = phi i64 [ 0, %vector.ph1163 ], [ %index.next1167, %vector.body1161 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv21.i52, i64 %index1166
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1170 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1170, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1167 = add i64 %index1166, 4
  %57 = icmp eq i64 %index.next1167, %n.vec1165
  br i1 %57, label %middle.block1159, label %vector.body1161, !llvm.loop !63

middle.block1159:                                 ; preds = %vector.body1161
  %cmp.n1169 = icmp eq i64 %indvars.iv21.i52, %n.vec1165
  br i1 %cmp.n1169, label %for.inc6.i63, label %for.body3.i60.preheader1302

for.body3.i60.preheader1302:                      ; preds = %for.body3.i60.preheader, %middle.block1159
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1165, %middle.block1159 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1302, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1302 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1159, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !22
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !22
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !23

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !33

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !47

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting297
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1232 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1232, label %for.body3.i99.preheader1300, label %vector.ph1233

vector.ph1233:                                    ; preds = %for.body3.i99.preheader
  %n.vec1235 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1233
  %index1236 = phi i64 [ 0, %vector.ph1233 ], [ %index.next1237, %vector.body1231 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv21.i91, i64 %index1236
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1240 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1240, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1237 = add i64 %index1236, 4
  %68 = icmp eq i64 %index.next1237, %n.vec1235
  br i1 %68, label %middle.block1229, label %vector.body1231, !llvm.loop !65

middle.block1229:                                 ; preds = %vector.body1231
  %cmp.n1239 = icmp eq i64 %indvars.iv21.i91, %n.vec1235
  br i1 %cmp.n1239, label %for.inc6.i102, label %for.body3.i99.preheader1300

for.body3.i99.preheader1300:                      ; preds = %for.body3.i99.preheader, %middle.block1229
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1235, %middle.block1229 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1300, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1300 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1229, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !22
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !22
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !23

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !33

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !47

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !67
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #9
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #9
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !69

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !70

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #8
  tail call void @free(i8* %call1) #8
  tail call void @free(i8* %call2) #8
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #8
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #8
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1244 = phi i64 [ %indvar.next1245, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1244, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1246 = icmp ult i64 %88, 4
  br i1 %min.iters.check1246, label %polly.loop_header192.preheader, label %vector.ph1247

vector.ph1247:                                    ; preds = %polly.loop_header
  %n.vec1249 = and i64 %88, -4
  br label %vector.body1243

vector.body1243:                                  ; preds = %vector.body1243, %vector.ph1247
  %index1250 = phi i64 [ 0, %vector.ph1247 ], [ %index.next1251, %vector.body1243 ]
  %90 = shl nuw nsw i64 %index1250, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1254 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1254, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1251 = add i64 %index1250, 4
  %95 = icmp eq i64 %index.next1251, %n.vec1249
  br i1 %95, label %middle.block1241, label %vector.body1243, !llvm.loop !78

middle.block1241:                                 ; preds = %vector.body1243
  %cmp.n1253 = icmp eq i64 %88, %n.vec1249
  br i1 %cmp.n1253, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1241
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1249, %middle.block1241 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1241
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond946.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1245 = add i64 %indvar1244, 1
  br i1 %exitcond946.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond945.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond945.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !79

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv = phi i64 [ 1200, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit224 ]
  %97 = shl nsw i64 %polly.indvar203, 2
  br label %polly.loop_header206

polly.loop_exit224:                               ; preds = %polly.loop_exit259
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %exitcond944.not = icmp eq i64 %polly.indvar_next204, 300
  br i1 %exitcond944.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 1200
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond931.not = icmp eq i64 %polly.indvar_next210, 1000
  br i1 %exitcond931.not, label %polly.loop_header222.preheader, label %polly.loop_header206

polly.loop_header222.preheader:                   ; preds = %polly.loop_exit214
  %98 = mul nsw i64 %polly.indvar203, -4
  %polly.access.mul.call1241 = mul nsw i64 %polly.indvar203, 4000
  %99 = or i64 %97, 1
  %polly.access.mul.call1241.1 = mul nuw nsw i64 %99, 1000
  %100 = or i64 %97, 2
  %polly.access.mul.call1241.2 = mul nuw nsw i64 %100, 1000
  %101 = or i64 %97, 3
  %polly.access.mul.call1241.3 = mul nuw nsw i64 %101, 1000
  %polly.access.mul.call1241.us = mul nsw i64 %polly.indvar203, 4000
  %102 = or i64 %97, 1
  %polly.access.mul.call1241.us.1 = mul nuw nsw i64 %102, 1000
  %103 = or i64 %97, 2
  %polly.access.mul.call1241.us.2 = mul nuw nsw i64 %103, 1000
  %104 = or i64 %97, 3
  %polly.access.mul.call1241.us.3 = mul nuw nsw i64 %104, 1000
  br label %polly.loop_header222

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %105 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.call2219 = mul nuw nsw i64 %105, 1000
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2712, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_header222.preheader, %polly.loop_exit259
  %indvar1276 = phi i64 [ 0, %polly.loop_header222.preheader ], [ %indvar.next1277, %polly.loop_exit259 ]
  %indvars.iv936 = phi i64 [ 0, %polly.loop_header222.preheader ], [ %indvars.iv.next937, %polly.loop_exit259 ]
  %polly.indvar225 = phi i64 [ %polly.indvar203, %polly.loop_header222.preheader ], [ %polly.indvar_next226, %polly.loop_exit259 ]
  %106 = shl nuw nsw i64 %indvar1276, 2
  %107 = or i64 %106, 2
  %smin1278 = call i64 @llvm.smin.i64(i64 %107, i64 3)
  %108 = shl nsw i64 %polly.indvar225, 2
  %109 = add nsw i64 %108, %98
  %110 = icmp ugt i64 %109, 4
  %111 = select i1 %110, i64 %109, i64 4
  %112 = or i64 %109, 3
  %polly.loop_guard.not = icmp ugt i64 %111, %112
  br i1 %polly.loop_guard.not, label %polly.loop_header228.us, label %polly.loop_header228

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.loop_header228.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.loop_header228.us ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1242.us.1 = add nuw nsw i64 %polly.access.mul.call1241.us.1, %polly.indvar231.us
  %polly.access.call1243.us.1 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242.us.1
  %polly.access.call1243.load.us.1 = load double, double* %polly.access.call1243.us.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1243.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1242.us.2 = add nuw nsw i64 %polly.access.mul.call1241.us.2, %polly.indvar231.us
  %polly.access.call1243.us.2 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242.us.2
  %polly.access.call1243.load.us.2 = load double, double* %polly.access.call1243.us.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1243.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1242.us.3 = add nuw nsw i64 %polly.access.mul.call1241.us.3, %polly.indvar231.us
  %polly.access.call1243.us.3 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242.us.3
  %polly.access.call1243.load.us.3 = load double, double* %polly.access.call1243.us.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1243.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond935.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond935.not, label %polly.loop_header257.preheader, label %polly.loop_header228.us

polly.loop_exit259:                               ; preds = %polly.loop_exit271.3
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next937 = add nuw nsw i64 %indvars.iv936, 4
  %exitcond943.not = icmp eq i64 %polly.indvar_next226, 300
  %indvar.next1277 = add i64 %indvar1276, 1
  br i1 %exitcond943.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header222, %polly.loop_exit246
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit246 ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar231, 1200
  %polly.access.add.call1242 = add nuw nsw i64 %polly.access.mul.call1241, %polly.indvar231
  %polly.access.call1243 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242
  %polly.access.call1243.load = load double, double* %polly.access.call1243, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1
  store double %polly.access.call1243.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.access.add.call1242.1 = add nuw nsw i64 %polly.access.mul.call1241.1, %polly.indvar231
  %polly.access.call1243.1 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242.1
  %polly.access.call1243.load.1 = load double, double* %polly.access.call1243.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.1 = or i64 %polly.access.mul.Packed_MemRef_call1, 1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1243.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.access.add.call1242.2 = add nuw nsw i64 %polly.access.mul.call1241.2, %polly.indvar231
  %polly.access.call1243.2 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242.2
  %polly.access.call1243.load.2 = load double, double* %polly.access.call1243.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.2 = or i64 %polly.access.mul.Packed_MemRef_call1, 2
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1243.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.access.add.call1242.3 = add nuw nsw i64 %polly.access.mul.call1241.3, %polly.indvar231
  %polly.access.call1243.3 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242.3
  %polly.access.call1243.load.3 = load double, double* %polly.access.call1243.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.3 = or i64 %polly.access.mul.Packed_MemRef_call1, 3
  %polly.access.Packed_MemRef_call1.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.3
  store double %polly.access.call1243.load.3, double* %polly.access.Packed_MemRef_call1.3, align 8
  br label %polly.loop_header244

polly.loop_exit246:                               ; preds = %polly.loop_header244
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond933.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond933.not, label %polly.loop_header257.preheader, label %polly.loop_header228

polly.loop_header257.preheader:                   ; preds = %polly.loop_exit246, %polly.loop_header228.us
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv936, i64 3)
  %113 = mul nsw i64 %polly.indvar225, 38400
  %indvars.iv.next939 = or i64 %indvars.iv936, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next939, i64 3)
  %114 = or i64 %109, 1
  %115 = or i64 %108, 1
  %116 = mul nuw nsw i64 %115, 9600
  %117 = or i64 %109, 2
  %118 = or i64 %108, 2
  %119 = mul nuw nsw i64 %118, 9600
  %120 = or i64 %109, 3
  %121 = or i64 %108, 3
  %122 = mul nuw nsw i64 %121, 9600
  br label %polly.loop_header257

polly.loop_header244:                             ; preds = %polly.loop_header228, %polly.loop_header244
  %polly.indvar247 = phi i64 [ %polly.indvar_next248, %polly.loop_header244 ], [ %111, %polly.loop_header228 ]
  %123 = add nuw nsw i64 %polly.indvar247, %97
  %polly.access.mul.call1251 = mul nuw nsw i64 %123, 1000
  %polly.access.add.call1252 = add nuw nsw i64 %polly.access.mul.call1251, %polly.indvar231
  %polly.access.call1253 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1252
  %polly.access.call1253.load = load double, double* %polly.access.call1253, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1255 = add nuw nsw i64 %polly.indvar247, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1256 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255
  store double %polly.access.call1253.load, double* %polly.access.Packed_MemRef_call1256, align 8
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %polly.loop_cond249.not.not = icmp ult i64 %polly.indvar247, %112
  br i1 %polly.loop_cond249.not.not, label %polly.loop_header244, label %polly.loop_exit246

polly.loop_header257:                             ; preds = %polly.loop_header257.preheader, %polly.loop_exit271.3
  %polly.indvar260 = phi i64 [ %polly.indvar_next261, %polly.loop_exit271.3 ], [ 0, %polly.loop_header257.preheader ]
  %polly.access.mul.Packed_MemRef_call1275 = mul nuw nsw i64 %polly.indvar260, 1200
  %polly.access.add.Packed_MemRef_call2280 = add nuw nsw i64 %109, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call2281 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280
  %_p_scalar_282 = load double, double* %polly.access.Packed_MemRef_call2281, align 8
  %polly.access.Packed_MemRef_call1289 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2280
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call1289, align 8
  br label %polly.loop_header269

polly.loop_exit271:                               ; preds = %polly.loop_header269
  %polly.access.add.Packed_MemRef_call2280.1 = add nuw nsw i64 %114, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call2281.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280.1
  %_p_scalar_282.1 = load double, double* %polly.access.Packed_MemRef_call2281.1, align 8
  %polly.access.Packed_MemRef_call1289.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2280.1
  %_p_scalar_290.1 = load double, double* %polly.access.Packed_MemRef_call1289.1, align 8
  br label %polly.loop_header269.1

polly.loop_header269:                             ; preds = %polly.loop_header269, %polly.loop_header257
  %polly.indvar272 = phi i64 [ 0, %polly.loop_header257 ], [ %polly.indvar_next273, %polly.loop_header269 ]
  %124 = add nuw nsw i64 %polly.indvar272, %97
  %polly.access.add.Packed_MemRef_call1276 = add nuw nsw i64 %polly.indvar272, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call1277 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276
  %_p_scalar_278 = load double, double* %polly.access.Packed_MemRef_call1277, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_282, %_p_scalar_278
  %polly.access.Packed_MemRef_call2285 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1276
  %_p_scalar_286 = load double, double* %polly.access.Packed_MemRef_call2285, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_290, %_p_scalar_286
  %125 = shl i64 %124, 3
  %126 = add nuw nsw i64 %125, %113
  %scevgep291 = getelementptr i8, i8* %call, i64 %126
  %scevgep291292 = bitcast i8* %scevgep291 to double*
  %_p_scalar_293 = load double, double* %scevgep291292, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_293
  store double %p_add42.i118, double* %scevgep291292, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next273 = add nuw nsw i64 %polly.indvar272, 1
  %exitcond940.not = icmp eq i64 %polly.indvar272, %smin
  br i1 %exitcond940.not, label %polly.loop_exit271, label %polly.loop_header269

polly.start296:                                   ; preds = %kernel_syr2k.exit
  %malloccall298 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #8
  %malloccall300 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #8
  br label %polly.loop_header384

polly.exiting297:                                 ; preds = %polly.loop_exit424
  tail call void @free(i8* nonnull %malloccall298)
  tail call void @free(i8* nonnull %malloccall300)
  br label %kernel_syr2k.exit90

polly.loop_header384:                             ; preds = %polly.loop_exit392, %polly.start296
  %indvar1174 = phi i64 [ %indvar.next1175, %polly.loop_exit392 ], [ 0, %polly.start296 ]
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit392 ], [ 1, %polly.start296 ]
  %127 = add i64 %indvar1174, 1
  %128 = mul nuw nsw i64 %polly.indvar387, 9600
  %scevgep396 = getelementptr i8, i8* %call, i64 %128
  %min.iters.check1176 = icmp ult i64 %127, 4
  br i1 %min.iters.check1176, label %polly.loop_header390.preheader, label %vector.ph1177

vector.ph1177:                                    ; preds = %polly.loop_header384
  %n.vec1179 = and i64 %127, -4
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %vector.ph1177
  %index1180 = phi i64 [ 0, %vector.ph1177 ], [ %index.next1181, %vector.body1173 ]
  %129 = shl nuw nsw i64 %index1180, 3
  %130 = getelementptr i8, i8* %scevgep396, i64 %129
  %131 = bitcast i8* %130 to <4 x double>*
  %wide.load1184 = load <4 x double>, <4 x double>* %131, align 8, !alias.scope !83, !noalias !85
  %132 = fmul fast <4 x double> %wide.load1184, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %133 = bitcast i8* %130 to <4 x double>*
  store <4 x double> %132, <4 x double>* %133, align 8, !alias.scope !83, !noalias !85
  %index.next1181 = add i64 %index1180, 4
  %134 = icmp eq i64 %index.next1181, %n.vec1179
  br i1 %134, label %middle.block1171, label %vector.body1173, !llvm.loop !90

middle.block1171:                                 ; preds = %vector.body1173
  %cmp.n1183 = icmp eq i64 %127, %n.vec1179
  br i1 %cmp.n1183, label %polly.loop_exit392, label %polly.loop_header390.preheader

polly.loop_header390.preheader:                   ; preds = %polly.loop_header384, %middle.block1171
  %polly.indvar393.ph = phi i64 [ 0, %polly.loop_header384 ], [ %n.vec1179, %middle.block1171 ]
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_header390, %middle.block1171
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond966.not = icmp eq i64 %polly.indvar_next388, 1200
  %indvar.next1175 = add i64 %indvar1174, 1
  br i1 %exitcond966.not, label %polly.loop_header400.preheader, label %polly.loop_header384

polly.loop_header400.preheader:                   ; preds = %polly.loop_exit392
  %Packed_MemRef_call1299 = bitcast i8* %malloccall298 to double*
  %Packed_MemRef_call2301 = bitcast i8* %malloccall300 to double*
  br label %polly.loop_header400

polly.loop_header390:                             ; preds = %polly.loop_header390.preheader, %polly.loop_header390
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_header390 ], [ %polly.indvar393.ph, %polly.loop_header390.preheader ]
  %135 = shl nuw nsw i64 %polly.indvar393, 3
  %scevgep397 = getelementptr i8, i8* %scevgep396, i64 %135
  %scevgep397398 = bitcast i8* %scevgep397 to double*
  %_p_scalar_399 = load double, double* %scevgep397398, align 8, !alias.scope !83, !noalias !85
  %p_mul.i57 = fmul fast double %_p_scalar_399, 1.200000e+00
  store double %p_mul.i57, double* %scevgep397398, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond965.not = icmp eq i64 %polly.indvar_next394, %polly.indvar387
  br i1 %exitcond965.not, label %polly.loop_exit392, label %polly.loop_header390, !llvm.loop !91

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_exit424
  %indvars.iv947 = phi i64 [ 1200, %polly.loop_header400.preheader ], [ %indvars.iv.next948, %polly.loop_exit424 ]
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header400.preheader ], [ %polly.indvar_next404, %polly.loop_exit424 ]
  %136 = shl nsw i64 %polly.indvar403, 2
  br label %polly.loop_header406

polly.loop_exit424:                               ; preds = %polly.loop_exit461
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next948 = add nsw i64 %indvars.iv947, -4
  %exitcond964.not = icmp eq i64 %polly.indvar_next404, 300
  br i1 %exitcond964.not, label %polly.exiting297, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_exit414, %polly.loop_header400
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header400 ], [ %polly.indvar_next410, %polly.loop_exit414 ]
  %polly.access.mul.Packed_MemRef_call2301 = mul nuw nsw i64 %polly.indvar409, 1200
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_header412
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond950.not = icmp eq i64 %polly.indvar_next410, 1000
  br i1 %exitcond950.not, label %polly.loop_header422.preheader, label %polly.loop_header406

polly.loop_header422.preheader:                   ; preds = %polly.loop_exit414
  %137 = mul nsw i64 %polly.indvar403, -4
  %polly.access.mul.call1441 = mul nsw i64 %polly.indvar403, 4000
  %138 = or i64 %136, 1
  %polly.access.mul.call1441.1 = mul nuw nsw i64 %138, 1000
  %139 = or i64 %136, 2
  %polly.access.mul.call1441.2 = mul nuw nsw i64 %139, 1000
  %140 = or i64 %136, 3
  %polly.access.mul.call1441.3 = mul nuw nsw i64 %140, 1000
  %polly.access.mul.call1441.us = mul nsw i64 %polly.indvar403, 4000
  %141 = or i64 %136, 1
  %polly.access.mul.call1441.us.1 = mul nuw nsw i64 %141, 1000
  %142 = or i64 %136, 2
  %polly.access.mul.call1441.us.2 = mul nuw nsw i64 %142, 1000
  %143 = or i64 %136, 3
  %polly.access.mul.call1441.us.3 = mul nuw nsw i64 %143, 1000
  br label %polly.loop_header422

polly.loop_header412:                             ; preds = %polly.loop_header412, %polly.loop_header406
  %polly.indvar415 = phi i64 [ 0, %polly.loop_header406 ], [ %polly.indvar_next416, %polly.loop_header412 ]
  %144 = add nuw nsw i64 %polly.indvar415, %136
  %polly.access.mul.call2419 = mul nuw nsw i64 %144, 1000
  %polly.access.add.call2420 = add nuw nsw i64 %polly.access.mul.call2419, %polly.indvar409
  %polly.access.call2421 = getelementptr double, double* %polly.access.cast.call2712, i64 %polly.access.add.call2420
  %polly.access.call2421.load = load double, double* %polly.access.call2421, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call2301 = add nuw nsw i64 %polly.indvar415, %polly.access.mul.Packed_MemRef_call2301
  %polly.access.Packed_MemRef_call2301 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301
  store double %polly.access.call2421.load, double* %polly.access.Packed_MemRef_call2301, align 8
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond949.not = icmp eq i64 %polly.indvar_next416, %indvars.iv947
  br i1 %exitcond949.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header422:                             ; preds = %polly.loop_header422.preheader, %polly.loop_exit461
  %indvar1206 = phi i64 [ 0, %polly.loop_header422.preheader ], [ %indvar.next1207, %polly.loop_exit461 ]
  %indvars.iv955 = phi i64 [ 0, %polly.loop_header422.preheader ], [ %indvars.iv.next956, %polly.loop_exit461 ]
  %polly.indvar425 = phi i64 [ %polly.indvar403, %polly.loop_header422.preheader ], [ %polly.indvar_next426, %polly.loop_exit461 ]
  %145 = shl nuw nsw i64 %indvar1206, 2
  %146 = or i64 %145, 2
  %smin1208 = call i64 @llvm.smin.i64(i64 %146, i64 3)
  %147 = shl nsw i64 %polly.indvar425, 2
  %148 = add nsw i64 %147, %137
  %149 = icmp ugt i64 %148, 4
  %150 = select i1 %149, i64 %148, i64 4
  %151 = or i64 %148, 3
  %polly.loop_guard448.not = icmp ugt i64 %150, %151
  br i1 %polly.loop_guard448.not, label %polly.loop_header428.us, label %polly.loop_header428

polly.loop_header428.us:                          ; preds = %polly.loop_header422, %polly.loop_header428.us
  %polly.indvar431.us = phi i64 [ %polly.indvar_next432.us, %polly.loop_header428.us ], [ 0, %polly.loop_header422 ]
  %polly.access.mul.Packed_MemRef_call1299.us = mul nuw nsw i64 %polly.indvar431.us, 1200
  %polly.access.add.call1442.us = add nuw nsw i64 %polly.access.mul.call1441.us, %polly.indvar431.us
  %polly.access.call1443.us = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442.us
  %polly.access.call1443.load.us = load double, double* %polly.access.call1443.us, align 8, !alias.scope !86, !noalias !93
  %polly.access.Packed_MemRef_call1299.us = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.mul.Packed_MemRef_call1299.us
  store double %polly.access.call1443.load.us, double* %polly.access.Packed_MemRef_call1299.us, align 8
  %polly.access.add.call1442.us.1 = add nuw nsw i64 %polly.access.mul.call1441.us.1, %polly.indvar431.us
  %polly.access.call1443.us.1 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442.us.1
  %polly.access.call1443.load.us.1 = load double, double* %polly.access.call1443.us.1, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1299.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1299.us, 1
  %polly.access.Packed_MemRef_call1299.us.1 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299.us.1
  store double %polly.access.call1443.load.us.1, double* %polly.access.Packed_MemRef_call1299.us.1, align 8
  %polly.access.add.call1442.us.2 = add nuw nsw i64 %polly.access.mul.call1441.us.2, %polly.indvar431.us
  %polly.access.call1443.us.2 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442.us.2
  %polly.access.call1443.load.us.2 = load double, double* %polly.access.call1443.us.2, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1299.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1299.us, 2
  %polly.access.Packed_MemRef_call1299.us.2 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299.us.2
  store double %polly.access.call1443.load.us.2, double* %polly.access.Packed_MemRef_call1299.us.2, align 8
  %polly.access.add.call1442.us.3 = add nuw nsw i64 %polly.access.mul.call1441.us.3, %polly.indvar431.us
  %polly.access.call1443.us.3 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442.us.3
  %polly.access.call1443.load.us.3 = load double, double* %polly.access.call1443.us.3, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1299.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1299.us, 3
  %polly.access.Packed_MemRef_call1299.us.3 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299.us.3
  store double %polly.access.call1443.load.us.3, double* %polly.access.Packed_MemRef_call1299.us.3, align 8
  %polly.indvar_next432.us = add nuw nsw i64 %polly.indvar431.us, 1
  %exitcond954.not = icmp eq i64 %polly.indvar_next432.us, 1000
  br i1 %exitcond954.not, label %polly.loop_header459.preheader, label %polly.loop_header428.us

polly.loop_exit461:                               ; preds = %polly.loop_exit473.3
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %indvars.iv.next956 = add nuw nsw i64 %indvars.iv955, 4
  %exitcond963.not = icmp eq i64 %polly.indvar_next426, 300
  %indvar.next1207 = add i64 %indvar1206, 1
  br i1 %exitcond963.not, label %polly.loop_exit424, label %polly.loop_header422

polly.loop_header428:                             ; preds = %polly.loop_header422, %polly.loop_exit447
  %polly.indvar431 = phi i64 [ %polly.indvar_next432, %polly.loop_exit447 ], [ 0, %polly.loop_header422 ]
  %polly.access.mul.Packed_MemRef_call1299 = mul nuw nsw i64 %polly.indvar431, 1200
  %polly.access.add.call1442 = add nuw nsw i64 %polly.access.mul.call1441, %polly.indvar431
  %polly.access.call1443 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442
  %polly.access.call1443.load = load double, double* %polly.access.call1443, align 8, !alias.scope !86, !noalias !93
  %polly.access.Packed_MemRef_call1299 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.mul.Packed_MemRef_call1299
  store double %polly.access.call1443.load, double* %polly.access.Packed_MemRef_call1299, align 8
  %polly.access.add.call1442.1 = add nuw nsw i64 %polly.access.mul.call1441.1, %polly.indvar431
  %polly.access.call1443.1 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442.1
  %polly.access.call1443.load.1 = load double, double* %polly.access.call1443.1, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1299.1 = or i64 %polly.access.mul.Packed_MemRef_call1299, 1
  %polly.access.Packed_MemRef_call1299.1 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299.1
  store double %polly.access.call1443.load.1, double* %polly.access.Packed_MemRef_call1299.1, align 8
  %polly.access.add.call1442.2 = add nuw nsw i64 %polly.access.mul.call1441.2, %polly.indvar431
  %polly.access.call1443.2 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442.2
  %polly.access.call1443.load.2 = load double, double* %polly.access.call1443.2, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1299.2 = or i64 %polly.access.mul.Packed_MemRef_call1299, 2
  %polly.access.Packed_MemRef_call1299.2 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299.2
  store double %polly.access.call1443.load.2, double* %polly.access.Packed_MemRef_call1299.2, align 8
  %polly.access.add.call1442.3 = add nuw nsw i64 %polly.access.mul.call1441.3, %polly.indvar431
  %polly.access.call1443.3 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442.3
  %polly.access.call1443.load.3 = load double, double* %polly.access.call1443.3, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1299.3 = or i64 %polly.access.mul.Packed_MemRef_call1299, 3
  %polly.access.Packed_MemRef_call1299.3 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299.3
  store double %polly.access.call1443.load.3, double* %polly.access.Packed_MemRef_call1299.3, align 8
  br label %polly.loop_header445

polly.loop_exit447:                               ; preds = %polly.loop_header445
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond952.not = icmp eq i64 %polly.indvar_next432, 1000
  br i1 %exitcond952.not, label %polly.loop_header459.preheader, label %polly.loop_header428

polly.loop_header459.preheader:                   ; preds = %polly.loop_exit447, %polly.loop_header428.us
  %smin959 = call i64 @llvm.smin.i64(i64 %indvars.iv955, i64 3)
  %152 = mul nsw i64 %polly.indvar425, 38400
  %indvars.iv.next958 = or i64 %indvars.iv955, 1
  %smin959.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next958, i64 3)
  %153 = or i64 %148, 1
  %154 = or i64 %147, 1
  %155 = mul nuw nsw i64 %154, 9600
  %156 = or i64 %148, 2
  %157 = or i64 %147, 2
  %158 = mul nuw nsw i64 %157, 9600
  %159 = or i64 %148, 3
  %160 = or i64 %147, 3
  %161 = mul nuw nsw i64 %160, 9600
  br label %polly.loop_header459

polly.loop_header445:                             ; preds = %polly.loop_header428, %polly.loop_header445
  %polly.indvar449 = phi i64 [ %polly.indvar_next450, %polly.loop_header445 ], [ %150, %polly.loop_header428 ]
  %162 = add nuw nsw i64 %polly.indvar449, %136
  %polly.access.mul.call1453 = mul nuw nsw i64 %162, 1000
  %polly.access.add.call1454 = add nuw nsw i64 %polly.access.mul.call1453, %polly.indvar431
  %polly.access.call1455 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1454
  %polly.access.call1455.load = load double, double* %polly.access.call1455, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1299457 = add nuw nsw i64 %polly.indvar449, %polly.access.mul.Packed_MemRef_call1299
  %polly.access.Packed_MemRef_call1299458 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299457
  store double %polly.access.call1455.load, double* %polly.access.Packed_MemRef_call1299458, align 8
  %polly.indvar_next450 = add nuw nsw i64 %polly.indvar449, 1
  %polly.loop_cond451.not.not = icmp ult i64 %polly.indvar449, %151
  br i1 %polly.loop_cond451.not.not, label %polly.loop_header445, label %polly.loop_exit447

polly.loop_header459:                             ; preds = %polly.loop_header459.preheader, %polly.loop_exit473.3
  %polly.indvar462 = phi i64 [ %polly.indvar_next463, %polly.loop_exit473.3 ], [ 0, %polly.loop_header459.preheader ]
  %polly.access.mul.Packed_MemRef_call1299477 = mul nuw nsw i64 %polly.indvar462, 1200
  %polly.access.add.Packed_MemRef_call2301482 = add nuw nsw i64 %148, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call2301483 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301482
  %_p_scalar_484 = load double, double* %polly.access.Packed_MemRef_call2301483, align 8
  %polly.access.Packed_MemRef_call1299491 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call2301482
  %_p_scalar_492 = load double, double* %polly.access.Packed_MemRef_call1299491, align 8
  br label %polly.loop_header471

polly.loop_exit473:                               ; preds = %polly.loop_header471
  %polly.access.add.Packed_MemRef_call2301482.1 = add nuw nsw i64 %153, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call2301483.1 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301482.1
  %_p_scalar_484.1 = load double, double* %polly.access.Packed_MemRef_call2301483.1, align 8
  %polly.access.Packed_MemRef_call1299491.1 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call2301482.1
  %_p_scalar_492.1 = load double, double* %polly.access.Packed_MemRef_call1299491.1, align 8
  br label %polly.loop_header471.1

polly.loop_header471:                             ; preds = %polly.loop_header471, %polly.loop_header459
  %polly.indvar474 = phi i64 [ 0, %polly.loop_header459 ], [ %polly.indvar_next475, %polly.loop_header471 ]
  %163 = add nuw nsw i64 %polly.indvar474, %136
  %polly.access.add.Packed_MemRef_call1299478 = add nuw nsw i64 %polly.indvar474, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call1299479 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299478
  %_p_scalar_480 = load double, double* %polly.access.Packed_MemRef_call1299479, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_484, %_p_scalar_480
  %polly.access.Packed_MemRef_call2301487 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call1299478
  %_p_scalar_488 = load double, double* %polly.access.Packed_MemRef_call2301487, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_492, %_p_scalar_488
  %164 = shl i64 %163, 3
  %165 = add nuw nsw i64 %164, %152
  %scevgep493 = getelementptr i8, i8* %call, i64 %165
  %scevgep493494 = bitcast i8* %scevgep493 to double*
  %_p_scalar_495 = load double, double* %scevgep493494, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_495
  store double %p_add42.i79, double* %scevgep493494, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next475 = add nuw nsw i64 %polly.indvar474, 1
  %exitcond960.not = icmp eq i64 %polly.indvar474, %smin959
  br i1 %exitcond960.not, label %polly.loop_exit473, label %polly.loop_header471

polly.start498:                                   ; preds = %init_array.exit
  %malloccall500 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #8
  %malloccall502 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #8
  br label %polly.loop_header586

polly.exiting499:                                 ; preds = %polly.loop_exit626
  tail call void @free(i8* nonnull %malloccall500)
  tail call void @free(i8* nonnull %malloccall502)
  br label %kernel_syr2k.exit

polly.loop_header586:                             ; preds = %polly.loop_exit594, %polly.start498
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit594 ], [ 0, %polly.start498 ]
  %polly.indvar589 = phi i64 [ %polly.indvar_next590, %polly.loop_exit594 ], [ 1, %polly.start498 ]
  %166 = add i64 %indvar, 1
  %167 = mul nuw nsw i64 %polly.indvar589, 9600
  %scevgep598 = getelementptr i8, i8* %call, i64 %167
  %min.iters.check1110 = icmp ult i64 %166, 4
  br i1 %min.iters.check1110, label %polly.loop_header592.preheader, label %vector.ph1111

vector.ph1111:                                    ; preds = %polly.loop_header586
  %n.vec1113 = and i64 %166, -4
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %vector.ph1111
  %index1114 = phi i64 [ 0, %vector.ph1111 ], [ %index.next1115, %vector.body1109 ]
  %168 = shl nuw nsw i64 %index1114, 3
  %169 = getelementptr i8, i8* %scevgep598, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  %wide.load1118 = load <4 x double>, <4 x double>* %170, align 8, !alias.scope !94, !noalias !96
  %171 = fmul fast <4 x double> %wide.load1118, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %172 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %171, <4 x double>* %172, align 8, !alias.scope !94, !noalias !96
  %index.next1115 = add i64 %index1114, 4
  %173 = icmp eq i64 %index.next1115, %n.vec1113
  br i1 %173, label %middle.block1107, label %vector.body1109, !llvm.loop !101

middle.block1107:                                 ; preds = %vector.body1109
  %cmp.n1117 = icmp eq i64 %166, %n.vec1113
  br i1 %cmp.n1117, label %polly.loop_exit594, label %polly.loop_header592.preheader

polly.loop_header592.preheader:                   ; preds = %polly.loop_header586, %middle.block1107
  %polly.indvar595.ph = phi i64 [ 0, %polly.loop_header586 ], [ %n.vec1113, %middle.block1107 ]
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_header592, %middle.block1107
  %polly.indvar_next590 = add nuw nsw i64 %polly.indvar589, 1
  %exitcond986.not = icmp eq i64 %polly.indvar_next590, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond986.not, label %polly.loop_header602.preheader, label %polly.loop_header586

polly.loop_header602.preheader:                   ; preds = %polly.loop_exit594
  %Packed_MemRef_call1501 = bitcast i8* %malloccall500 to double*
  %Packed_MemRef_call2503 = bitcast i8* %malloccall502 to double*
  br label %polly.loop_header602

polly.loop_header592:                             ; preds = %polly.loop_header592.preheader, %polly.loop_header592
  %polly.indvar595 = phi i64 [ %polly.indvar_next596, %polly.loop_header592 ], [ %polly.indvar595.ph, %polly.loop_header592.preheader ]
  %174 = shl nuw nsw i64 %polly.indvar595, 3
  %scevgep599 = getelementptr i8, i8* %scevgep598, i64 %174
  %scevgep599600 = bitcast i8* %scevgep599 to double*
  %_p_scalar_601 = load double, double* %scevgep599600, align 8, !alias.scope !94, !noalias !96
  %p_mul.i = fmul fast double %_p_scalar_601, 1.200000e+00
  store double %p_mul.i, double* %scevgep599600, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next596 = add nuw nsw i64 %polly.indvar595, 1
  %exitcond985.not = icmp eq i64 %polly.indvar_next596, %polly.indvar589
  br i1 %exitcond985.not, label %polly.loop_exit594, label %polly.loop_header592, !llvm.loop !102

polly.loop_header602:                             ; preds = %polly.loop_header602.preheader, %polly.loop_exit626
  %indvars.iv967 = phi i64 [ 1200, %polly.loop_header602.preheader ], [ %indvars.iv.next968, %polly.loop_exit626 ]
  %polly.indvar605 = phi i64 [ 0, %polly.loop_header602.preheader ], [ %polly.indvar_next606, %polly.loop_exit626 ]
  %175 = shl nsw i64 %polly.indvar605, 2
  br label %polly.loop_header608

polly.loop_exit626:                               ; preds = %polly.loop_exit663
  %polly.indvar_next606 = add nuw nsw i64 %polly.indvar605, 1
  %indvars.iv.next968 = add nsw i64 %indvars.iv967, -4
  %exitcond984.not = icmp eq i64 %polly.indvar_next606, 300
  br i1 %exitcond984.not, label %polly.exiting499, label %polly.loop_header602

polly.loop_header608:                             ; preds = %polly.loop_exit616, %polly.loop_header602
  %polly.indvar611 = phi i64 [ 0, %polly.loop_header602 ], [ %polly.indvar_next612, %polly.loop_exit616 ]
  %polly.access.mul.Packed_MemRef_call2503 = mul nuw nsw i64 %polly.indvar611, 1200
  br label %polly.loop_header614

polly.loop_exit616:                               ; preds = %polly.loop_header614
  %polly.indvar_next612 = add nuw nsw i64 %polly.indvar611, 1
  %exitcond970.not = icmp eq i64 %polly.indvar_next612, 1000
  br i1 %exitcond970.not, label %polly.loop_header624.preheader, label %polly.loop_header608

polly.loop_header624.preheader:                   ; preds = %polly.loop_exit616
  %176 = mul nsw i64 %polly.indvar605, -4
  %polly.access.mul.call1643 = mul nsw i64 %polly.indvar605, 4000
  %177 = or i64 %175, 1
  %polly.access.mul.call1643.1 = mul nuw nsw i64 %177, 1000
  %178 = or i64 %175, 2
  %polly.access.mul.call1643.2 = mul nuw nsw i64 %178, 1000
  %179 = or i64 %175, 3
  %polly.access.mul.call1643.3 = mul nuw nsw i64 %179, 1000
  %polly.access.mul.call1643.us = mul nsw i64 %polly.indvar605, 4000
  %180 = or i64 %175, 1
  %polly.access.mul.call1643.us.1 = mul nuw nsw i64 %180, 1000
  %181 = or i64 %175, 2
  %polly.access.mul.call1643.us.2 = mul nuw nsw i64 %181, 1000
  %182 = or i64 %175, 3
  %polly.access.mul.call1643.us.3 = mul nuw nsw i64 %182, 1000
  br label %polly.loop_header624

polly.loop_header614:                             ; preds = %polly.loop_header614, %polly.loop_header608
  %polly.indvar617 = phi i64 [ 0, %polly.loop_header608 ], [ %polly.indvar_next618, %polly.loop_header614 ]
  %183 = add nuw nsw i64 %polly.indvar617, %175
  %polly.access.mul.call2621 = mul nuw nsw i64 %183, 1000
  %polly.access.add.call2622 = add nuw nsw i64 %polly.access.mul.call2621, %polly.indvar611
  %polly.access.call2623 = getelementptr double, double* %polly.access.cast.call2712, i64 %polly.access.add.call2622
  %polly.access.call2623.load = load double, double* %polly.access.call2623, align 8, !alias.scope !98, !noalias !103
  %polly.access.add.Packed_MemRef_call2503 = add nuw nsw i64 %polly.indvar617, %polly.access.mul.Packed_MemRef_call2503
  %polly.access.Packed_MemRef_call2503 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503
  store double %polly.access.call2623.load, double* %polly.access.Packed_MemRef_call2503, align 8
  %polly.indvar_next618 = add nuw nsw i64 %polly.indvar617, 1
  %exitcond969.not = icmp eq i64 %polly.indvar_next618, %indvars.iv967
  br i1 %exitcond969.not, label %polly.loop_exit616, label %polly.loop_header614

polly.loop_header624:                             ; preds = %polly.loop_header624.preheader, %polly.loop_exit663
  %indvar1139 = phi i64 [ 0, %polly.loop_header624.preheader ], [ %indvar.next1140, %polly.loop_exit663 ]
  %indvars.iv975 = phi i64 [ 0, %polly.loop_header624.preheader ], [ %indvars.iv.next976, %polly.loop_exit663 ]
  %polly.indvar627 = phi i64 [ %polly.indvar605, %polly.loop_header624.preheader ], [ %polly.indvar_next628, %polly.loop_exit663 ]
  %184 = shl nuw nsw i64 %indvar1139, 2
  %185 = or i64 %184, 2
  %smin1141 = call i64 @llvm.smin.i64(i64 %185, i64 3)
  %186 = shl nsw i64 %polly.indvar627, 2
  %187 = add nsw i64 %186, %176
  %188 = icmp ugt i64 %187, 4
  %189 = select i1 %188, i64 %187, i64 4
  %190 = or i64 %187, 3
  %polly.loop_guard650.not = icmp ugt i64 %189, %190
  br i1 %polly.loop_guard650.not, label %polly.loop_header630.us, label %polly.loop_header630

polly.loop_header630.us:                          ; preds = %polly.loop_header624, %polly.loop_header630.us
  %polly.indvar633.us = phi i64 [ %polly.indvar_next634.us, %polly.loop_header630.us ], [ 0, %polly.loop_header624 ]
  %polly.access.mul.Packed_MemRef_call1501.us = mul nuw nsw i64 %polly.indvar633.us, 1200
  %polly.access.add.call1644.us = add nuw nsw i64 %polly.access.mul.call1643.us, %polly.indvar633.us
  %polly.access.call1645.us = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644.us
  %polly.access.call1645.load.us = load double, double* %polly.access.call1645.us, align 8, !alias.scope !97, !noalias !104
  %polly.access.Packed_MemRef_call1501.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.mul.Packed_MemRef_call1501.us
  store double %polly.access.call1645.load.us, double* %polly.access.Packed_MemRef_call1501.us, align 8
  %polly.access.add.call1644.us.1 = add nuw nsw i64 %polly.access.mul.call1643.us.1, %polly.indvar633.us
  %polly.access.call1645.us.1 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644.us.1
  %polly.access.call1645.load.us.1 = load double, double* %polly.access.call1645.us.1, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1501.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1501.us, 1
  %polly.access.Packed_MemRef_call1501.us.1 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.us.1
  store double %polly.access.call1645.load.us.1, double* %polly.access.Packed_MemRef_call1501.us.1, align 8
  %polly.access.add.call1644.us.2 = add nuw nsw i64 %polly.access.mul.call1643.us.2, %polly.indvar633.us
  %polly.access.call1645.us.2 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644.us.2
  %polly.access.call1645.load.us.2 = load double, double* %polly.access.call1645.us.2, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1501.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1501.us, 2
  %polly.access.Packed_MemRef_call1501.us.2 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.us.2
  store double %polly.access.call1645.load.us.2, double* %polly.access.Packed_MemRef_call1501.us.2, align 8
  %polly.access.add.call1644.us.3 = add nuw nsw i64 %polly.access.mul.call1643.us.3, %polly.indvar633.us
  %polly.access.call1645.us.3 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644.us.3
  %polly.access.call1645.load.us.3 = load double, double* %polly.access.call1645.us.3, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1501.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1501.us, 3
  %polly.access.Packed_MemRef_call1501.us.3 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.us.3
  store double %polly.access.call1645.load.us.3, double* %polly.access.Packed_MemRef_call1501.us.3, align 8
  %polly.indvar_next634.us = add nuw nsw i64 %polly.indvar633.us, 1
  %exitcond974.not = icmp eq i64 %polly.indvar_next634.us, 1000
  br i1 %exitcond974.not, label %polly.loop_header661.preheader, label %polly.loop_header630.us

polly.loop_exit663:                               ; preds = %polly.loop_exit675.3
  %polly.indvar_next628 = add nuw nsw i64 %polly.indvar627, 1
  %indvars.iv.next976 = add nuw nsw i64 %indvars.iv975, 4
  %exitcond983.not = icmp eq i64 %polly.indvar_next628, 300
  %indvar.next1140 = add i64 %indvar1139, 1
  br i1 %exitcond983.not, label %polly.loop_exit626, label %polly.loop_header624

polly.loop_header630:                             ; preds = %polly.loop_header624, %polly.loop_exit649
  %polly.indvar633 = phi i64 [ %polly.indvar_next634, %polly.loop_exit649 ], [ 0, %polly.loop_header624 ]
  %polly.access.mul.Packed_MemRef_call1501 = mul nuw nsw i64 %polly.indvar633, 1200
  %polly.access.add.call1644 = add nuw nsw i64 %polly.access.mul.call1643, %polly.indvar633
  %polly.access.call1645 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644
  %polly.access.call1645.load = load double, double* %polly.access.call1645, align 8, !alias.scope !97, !noalias !104
  %polly.access.Packed_MemRef_call1501 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.mul.Packed_MemRef_call1501
  store double %polly.access.call1645.load, double* %polly.access.Packed_MemRef_call1501, align 8
  %polly.access.add.call1644.1 = add nuw nsw i64 %polly.access.mul.call1643.1, %polly.indvar633
  %polly.access.call1645.1 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644.1
  %polly.access.call1645.load.1 = load double, double* %polly.access.call1645.1, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1501.1 = or i64 %polly.access.mul.Packed_MemRef_call1501, 1
  %polly.access.Packed_MemRef_call1501.1 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.1
  store double %polly.access.call1645.load.1, double* %polly.access.Packed_MemRef_call1501.1, align 8
  %polly.access.add.call1644.2 = add nuw nsw i64 %polly.access.mul.call1643.2, %polly.indvar633
  %polly.access.call1645.2 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644.2
  %polly.access.call1645.load.2 = load double, double* %polly.access.call1645.2, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1501.2 = or i64 %polly.access.mul.Packed_MemRef_call1501, 2
  %polly.access.Packed_MemRef_call1501.2 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.2
  store double %polly.access.call1645.load.2, double* %polly.access.Packed_MemRef_call1501.2, align 8
  %polly.access.add.call1644.3 = add nuw nsw i64 %polly.access.mul.call1643.3, %polly.indvar633
  %polly.access.call1645.3 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644.3
  %polly.access.call1645.load.3 = load double, double* %polly.access.call1645.3, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1501.3 = or i64 %polly.access.mul.Packed_MemRef_call1501, 3
  %polly.access.Packed_MemRef_call1501.3 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.3
  store double %polly.access.call1645.load.3, double* %polly.access.Packed_MemRef_call1501.3, align 8
  br label %polly.loop_header647

polly.loop_exit649:                               ; preds = %polly.loop_header647
  %polly.indvar_next634 = add nuw nsw i64 %polly.indvar633, 1
  %exitcond972.not = icmp eq i64 %polly.indvar_next634, 1000
  br i1 %exitcond972.not, label %polly.loop_header661.preheader, label %polly.loop_header630

polly.loop_header661.preheader:                   ; preds = %polly.loop_exit649, %polly.loop_header630.us
  %smin979 = call i64 @llvm.smin.i64(i64 %indvars.iv975, i64 3)
  %191 = mul nsw i64 %polly.indvar627, 38400
  %indvars.iv.next978 = or i64 %indvars.iv975, 1
  %smin979.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next978, i64 3)
  %192 = or i64 %187, 1
  %193 = or i64 %186, 1
  %194 = mul nuw nsw i64 %193, 9600
  %195 = or i64 %187, 2
  %196 = or i64 %186, 2
  %197 = mul nuw nsw i64 %196, 9600
  %198 = or i64 %187, 3
  %199 = or i64 %186, 3
  %200 = mul nuw nsw i64 %199, 9600
  br label %polly.loop_header661

polly.loop_header647:                             ; preds = %polly.loop_header630, %polly.loop_header647
  %polly.indvar651 = phi i64 [ %polly.indvar_next652, %polly.loop_header647 ], [ %189, %polly.loop_header630 ]
  %201 = add nuw nsw i64 %polly.indvar651, %175
  %polly.access.mul.call1655 = mul nuw nsw i64 %201, 1000
  %polly.access.add.call1656 = add nuw nsw i64 %polly.access.mul.call1655, %polly.indvar633
  %polly.access.call1657 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1656
  %polly.access.call1657.load = load double, double* %polly.access.call1657, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1501659 = add nuw nsw i64 %polly.indvar651, %polly.access.mul.Packed_MemRef_call1501
  %polly.access.Packed_MemRef_call1501660 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501659
  store double %polly.access.call1657.load, double* %polly.access.Packed_MemRef_call1501660, align 8
  %polly.indvar_next652 = add nuw nsw i64 %polly.indvar651, 1
  %polly.loop_cond653.not.not = icmp ult i64 %polly.indvar651, %190
  br i1 %polly.loop_cond653.not.not, label %polly.loop_header647, label %polly.loop_exit649

polly.loop_header661:                             ; preds = %polly.loop_header661.preheader, %polly.loop_exit675.3
  %polly.indvar664 = phi i64 [ %polly.indvar_next665, %polly.loop_exit675.3 ], [ 0, %polly.loop_header661.preheader ]
  %polly.access.mul.Packed_MemRef_call1501679 = mul nuw nsw i64 %polly.indvar664, 1200
  %polly.access.add.Packed_MemRef_call2503684 = add nuw nsw i64 %187, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call2503685 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503684
  %_p_scalar_686 = load double, double* %polly.access.Packed_MemRef_call2503685, align 8
  %polly.access.Packed_MemRef_call1501693 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call2503684
  %_p_scalar_694 = load double, double* %polly.access.Packed_MemRef_call1501693, align 8
  br label %polly.loop_header673

polly.loop_exit675:                               ; preds = %polly.loop_header673
  %polly.access.add.Packed_MemRef_call2503684.1 = add nuw nsw i64 %192, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call2503685.1 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503684.1
  %_p_scalar_686.1 = load double, double* %polly.access.Packed_MemRef_call2503685.1, align 8
  %polly.access.Packed_MemRef_call1501693.1 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call2503684.1
  %_p_scalar_694.1 = load double, double* %polly.access.Packed_MemRef_call1501693.1, align 8
  br label %polly.loop_header673.1

polly.loop_header673:                             ; preds = %polly.loop_header673, %polly.loop_header661
  %polly.indvar676 = phi i64 [ 0, %polly.loop_header661 ], [ %polly.indvar_next677, %polly.loop_header673 ]
  %202 = add nuw nsw i64 %polly.indvar676, %175
  %polly.access.add.Packed_MemRef_call1501680 = add nuw nsw i64 %polly.indvar676, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call1501681 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501680
  %_p_scalar_682 = load double, double* %polly.access.Packed_MemRef_call1501681, align 8
  %p_mul27.i = fmul fast double %_p_scalar_686, %_p_scalar_682
  %polly.access.Packed_MemRef_call2503689 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call1501680
  %_p_scalar_690 = load double, double* %polly.access.Packed_MemRef_call2503689, align 8
  %p_mul37.i = fmul fast double %_p_scalar_694, %_p_scalar_690
  %203 = shl i64 %202, 3
  %204 = add nuw nsw i64 %203, %191
  %scevgep695 = getelementptr i8, i8* %call, i64 %204
  %scevgep695696 = bitcast i8* %scevgep695 to double*
  %_p_scalar_697 = load double, double* %scevgep695696, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_697
  store double %p_add42.i, double* %scevgep695696, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next677 = add nuw nsw i64 %polly.indvar676, 1
  %exitcond980.not = icmp eq i64 %polly.indvar676, %smin979
  br i1 %exitcond980.not, label %polly.loop_exit675, label %polly.loop_header673

polly.loop_header824:                             ; preds = %entry, %polly.loop_exit832
  %indvars.iv1011 = phi i64 [ %indvars.iv.next1012, %polly.loop_exit832 ], [ 0, %entry ]
  %polly.indvar827 = phi i64 [ %polly.indvar_next828, %polly.loop_exit832 ], [ 0, %entry ]
  %smin1013 = call i64 @llvm.smin.i64(i64 %indvars.iv1011, i64 -1168)
  %205 = shl nsw i64 %polly.indvar827, 5
  %206 = add nsw i64 %smin1013, 1199
  br label %polly.loop_header830

polly.loop_exit832:                               ; preds = %polly.loop_exit838
  %polly.indvar_next828 = add nuw nsw i64 %polly.indvar827, 1
  %indvars.iv.next1012 = add nsw i64 %indvars.iv1011, -32
  %exitcond1016.not = icmp eq i64 %polly.indvar_next828, 38
  br i1 %exitcond1016.not, label %polly.loop_header851, label %polly.loop_header824

polly.loop_header830:                             ; preds = %polly.loop_exit838, %polly.loop_header824
  %indvars.iv1007 = phi i64 [ %indvars.iv.next1008, %polly.loop_exit838 ], [ 0, %polly.loop_header824 ]
  %polly.indvar833 = phi i64 [ %polly.indvar_next834, %polly.loop_exit838 ], [ 0, %polly.loop_header824 ]
  %207 = mul nsw i64 %polly.indvar833, -32
  %smin1048 = call i64 @llvm.smin.i64(i64 %207, i64 -1168)
  %208 = add nsw i64 %smin1048, 1200
  %smin1009 = call i64 @llvm.smin.i64(i64 %indvars.iv1007, i64 -1168)
  %209 = shl nsw i64 %polly.indvar833, 5
  %210 = add nsw i64 %smin1009, 1199
  br label %polly.loop_header836

polly.loop_exit838:                               ; preds = %polly.loop_exit844
  %polly.indvar_next834 = add nuw nsw i64 %polly.indvar833, 1
  %indvars.iv.next1008 = add nsw i64 %indvars.iv1007, -32
  %exitcond1015.not = icmp eq i64 %polly.indvar_next834, 38
  br i1 %exitcond1015.not, label %polly.loop_exit832, label %polly.loop_header830

polly.loop_header836:                             ; preds = %polly.loop_exit844, %polly.loop_header830
  %polly.indvar839 = phi i64 [ 0, %polly.loop_header830 ], [ %polly.indvar_next840, %polly.loop_exit844 ]
  %211 = add nuw nsw i64 %polly.indvar839, %205
  %212 = trunc i64 %211 to i32
  %213 = mul nuw nsw i64 %211, 9600
  %min.iters.check = icmp eq i64 %208, 0
  br i1 %min.iters.check, label %polly.loop_header842, label %vector.ph1049

vector.ph1049:                                    ; preds = %polly.loop_header836
  %broadcast.splatinsert1056 = insertelement <4 x i64> poison, i64 %209, i32 0
  %broadcast.splat1057 = shufflevector <4 x i64> %broadcast.splatinsert1056, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1058 = insertelement <4 x i32> poison, i32 %212, i32 0
  %broadcast.splat1059 = shufflevector <4 x i32> %broadcast.splatinsert1058, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1047

vector.body1047:                                  ; preds = %vector.body1047, %vector.ph1049
  %index1050 = phi i64 [ 0, %vector.ph1049 ], [ %index.next1051, %vector.body1047 ]
  %vec.ind1054 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1049 ], [ %vec.ind.next1055, %vector.body1047 ]
  %214 = add nuw nsw <4 x i64> %vec.ind1054, %broadcast.splat1057
  %215 = trunc <4 x i64> %214 to <4 x i32>
  %216 = mul <4 x i32> %broadcast.splat1059, %215
  %217 = add <4 x i32> %216, <i32 3, i32 3, i32 3, i32 3>
  %218 = urem <4 x i32> %217, <i32 1200, i32 1200, i32 1200, i32 1200>
  %219 = sitofp <4 x i32> %218 to <4 x double>
  %220 = fmul fast <4 x double> %219, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %221 = extractelement <4 x i64> %214, i32 0
  %222 = shl i64 %221, 3
  %223 = add nuw nsw i64 %222, %213
  %224 = getelementptr i8, i8* %call, i64 %223
  %225 = bitcast i8* %224 to <4 x double>*
  store <4 x double> %220, <4 x double>* %225, align 8, !alias.scope !105, !noalias !107
  %index.next1051 = add i64 %index1050, 4
  %vec.ind.next1055 = add <4 x i64> %vec.ind1054, <i64 4, i64 4, i64 4, i64 4>
  %226 = icmp eq i64 %index.next1051, %208
  br i1 %226, label %polly.loop_exit844, label %vector.body1047, !llvm.loop !110

polly.loop_exit844:                               ; preds = %vector.body1047, %polly.loop_header842
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar839, %206
  br i1 %exitcond1014.not, label %polly.loop_exit838, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_header836, %polly.loop_header842
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_header842 ], [ 0, %polly.loop_header836 ]
  %227 = add nuw nsw i64 %polly.indvar845, %209
  %228 = trunc i64 %227 to i32
  %229 = mul i32 %228, %212
  %230 = add i32 %229, 3
  %231 = urem i32 %230, 1200
  %p_conv31.i = sitofp i32 %231 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %232 = shl i64 %227, 3
  %233 = add nuw nsw i64 %232, %213
  %scevgep848 = getelementptr i8, i8* %call, i64 %233
  %scevgep848849 = bitcast i8* %scevgep848 to double*
  store double %p_div33.i, double* %scevgep848849, align 8, !alias.scope !105, !noalias !107
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar845, %210
  br i1 %exitcond1010.not, label %polly.loop_exit844, label %polly.loop_header842, !llvm.loop !111

polly.loop_header851:                             ; preds = %polly.loop_exit832, %polly.loop_exit859
  %indvars.iv1001 = phi i64 [ %indvars.iv.next1002, %polly.loop_exit859 ], [ 0, %polly.loop_exit832 ]
  %polly.indvar854 = phi i64 [ %polly.indvar_next855, %polly.loop_exit859 ], [ 0, %polly.loop_exit832 ]
  %smin1003 = call i64 @llvm.smin.i64(i64 %indvars.iv1001, i64 -1168)
  %234 = shl nsw i64 %polly.indvar854, 5
  %235 = add nsw i64 %smin1003, 1199
  br label %polly.loop_header857

polly.loop_exit859:                               ; preds = %polly.loop_exit865
  %polly.indvar_next855 = add nuw nsw i64 %polly.indvar854, 1
  %indvars.iv.next1002 = add nsw i64 %indvars.iv1001, -32
  %exitcond1006.not = icmp eq i64 %polly.indvar_next855, 38
  br i1 %exitcond1006.not, label %polly.loop_header877, label %polly.loop_header851

polly.loop_header857:                             ; preds = %polly.loop_exit865, %polly.loop_header851
  %indvars.iv997 = phi i64 [ %indvars.iv.next998, %polly.loop_exit865 ], [ 0, %polly.loop_header851 ]
  %polly.indvar860 = phi i64 [ %polly.indvar_next861, %polly.loop_exit865 ], [ 0, %polly.loop_header851 ]
  %236 = mul nsw i64 %polly.indvar860, -32
  %smin1063 = call i64 @llvm.smin.i64(i64 %236, i64 -968)
  %237 = add nsw i64 %smin1063, 1000
  %smin999 = call i64 @llvm.smin.i64(i64 %indvars.iv997, i64 -968)
  %238 = shl nsw i64 %polly.indvar860, 5
  %239 = add nsw i64 %smin999, 999
  br label %polly.loop_header863

polly.loop_exit865:                               ; preds = %polly.loop_exit871
  %polly.indvar_next861 = add nuw nsw i64 %polly.indvar860, 1
  %indvars.iv.next998 = add nsw i64 %indvars.iv997, -32
  %exitcond1005.not = icmp eq i64 %polly.indvar_next861, 32
  br i1 %exitcond1005.not, label %polly.loop_exit859, label %polly.loop_header857

polly.loop_header863:                             ; preds = %polly.loop_exit871, %polly.loop_header857
  %polly.indvar866 = phi i64 [ 0, %polly.loop_header857 ], [ %polly.indvar_next867, %polly.loop_exit871 ]
  %240 = add nuw nsw i64 %polly.indvar866, %234
  %241 = trunc i64 %240 to i32
  %242 = mul nuw nsw i64 %240, 8000
  %min.iters.check1064 = icmp eq i64 %237, 0
  br i1 %min.iters.check1064, label %polly.loop_header869, label %vector.ph1065

vector.ph1065:                                    ; preds = %polly.loop_header863
  %broadcast.splatinsert1074 = insertelement <4 x i64> poison, i64 %238, i32 0
  %broadcast.splat1075 = shufflevector <4 x i64> %broadcast.splatinsert1074, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1076 = insertelement <4 x i32> poison, i32 %241, i32 0
  %broadcast.splat1077 = shufflevector <4 x i32> %broadcast.splatinsert1076, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %vector.ph1065
  %index1068 = phi i64 [ 0, %vector.ph1065 ], [ %index.next1069, %vector.body1062 ]
  %vec.ind1072 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1065 ], [ %vec.ind.next1073, %vector.body1062 ]
  %243 = add nuw nsw <4 x i64> %vec.ind1072, %broadcast.splat1075
  %244 = trunc <4 x i64> %243 to <4 x i32>
  %245 = mul <4 x i32> %broadcast.splat1077, %244
  %246 = add <4 x i32> %245, <i32 2, i32 2, i32 2, i32 2>
  %247 = urem <4 x i32> %246, <i32 1000, i32 1000, i32 1000, i32 1000>
  %248 = sitofp <4 x i32> %247 to <4 x double>
  %249 = fmul fast <4 x double> %248, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %250 = extractelement <4 x i64> %243, i32 0
  %251 = shl i64 %250, 3
  %252 = add nuw nsw i64 %251, %242
  %253 = getelementptr i8, i8* %call2, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %249, <4 x double>* %254, align 8, !alias.scope !109, !noalias !112
  %index.next1069 = add i64 %index1068, 4
  %vec.ind.next1073 = add <4 x i64> %vec.ind1072, <i64 4, i64 4, i64 4, i64 4>
  %255 = icmp eq i64 %index.next1069, %237
  br i1 %255, label %polly.loop_exit871, label %vector.body1062, !llvm.loop !113

polly.loop_exit871:                               ; preds = %vector.body1062, %polly.loop_header869
  %polly.indvar_next867 = add nuw nsw i64 %polly.indvar866, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar866, %235
  br i1 %exitcond1004.not, label %polly.loop_exit865, label %polly.loop_header863

polly.loop_header869:                             ; preds = %polly.loop_header863, %polly.loop_header869
  %polly.indvar872 = phi i64 [ %polly.indvar_next873, %polly.loop_header869 ], [ 0, %polly.loop_header863 ]
  %256 = add nuw nsw i64 %polly.indvar872, %238
  %257 = trunc i64 %256 to i32
  %258 = mul i32 %257, %241
  %259 = add i32 %258, 2
  %260 = urem i32 %259, 1000
  %p_conv10.i = sitofp i32 %260 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %261 = shl i64 %256, 3
  %262 = add nuw nsw i64 %261, %242
  %scevgep875 = getelementptr i8, i8* %call2, i64 %262
  %scevgep875876 = bitcast i8* %scevgep875 to double*
  store double %p_div12.i, double* %scevgep875876, align 8, !alias.scope !109, !noalias !112
  %polly.indvar_next873 = add nuw nsw i64 %polly.indvar872, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar872, %239
  br i1 %exitcond1000.not, label %polly.loop_exit871, label %polly.loop_header869, !llvm.loop !114

polly.loop_header877:                             ; preds = %polly.loop_exit859, %polly.loop_exit885
  %indvars.iv991 = phi i64 [ %indvars.iv.next992, %polly.loop_exit885 ], [ 0, %polly.loop_exit859 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_exit859 ]
  %smin993 = call i64 @llvm.smin.i64(i64 %indvars.iv991, i64 -1168)
  %263 = shl nsw i64 %polly.indvar880, 5
  %264 = add nsw i64 %smin993, 1199
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next992 = add nsw i64 %indvars.iv991, -32
  %exitcond996.not = icmp eq i64 %polly.indvar_next881, 38
  br i1 %exitcond996.not, label %init_array.exit, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %indvars.iv987 = phi i64 [ %indvars.iv.next988, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %265 = mul nsw i64 %polly.indvar886, -32
  %smin1081 = call i64 @llvm.smin.i64(i64 %265, i64 -968)
  %266 = add nsw i64 %smin1081, 1000
  %smin989 = call i64 @llvm.smin.i64(i64 %indvars.iv987, i64 -968)
  %267 = shl nsw i64 %polly.indvar886, 5
  %268 = add nsw i64 %smin989, 999
  br label %polly.loop_header889

polly.loop_exit891:                               ; preds = %polly.loop_exit897
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %indvars.iv.next988 = add nsw i64 %indvars.iv987, -32
  %exitcond995.not = icmp eq i64 %polly.indvar_next887, 32
  br i1 %exitcond995.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_exit897, %polly.loop_header883
  %polly.indvar892 = phi i64 [ 0, %polly.loop_header883 ], [ %polly.indvar_next893, %polly.loop_exit897 ]
  %269 = add nuw nsw i64 %polly.indvar892, %263
  %270 = trunc i64 %269 to i32
  %271 = mul nuw nsw i64 %269, 8000
  %min.iters.check1082 = icmp eq i64 %266, 0
  br i1 %min.iters.check1082, label %polly.loop_header895, label %vector.ph1083

vector.ph1083:                                    ; preds = %polly.loop_header889
  %broadcast.splatinsert1092 = insertelement <4 x i64> poison, i64 %267, i32 0
  %broadcast.splat1093 = shufflevector <4 x i64> %broadcast.splatinsert1092, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1094 = insertelement <4 x i32> poison, i32 %270, i32 0
  %broadcast.splat1095 = shufflevector <4 x i32> %broadcast.splatinsert1094, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1080

vector.body1080:                                  ; preds = %vector.body1080, %vector.ph1083
  %index1086 = phi i64 [ 0, %vector.ph1083 ], [ %index.next1087, %vector.body1080 ]
  %vec.ind1090 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1083 ], [ %vec.ind.next1091, %vector.body1080 ]
  %272 = add nuw nsw <4 x i64> %vec.ind1090, %broadcast.splat1093
  %273 = trunc <4 x i64> %272 to <4 x i32>
  %274 = mul <4 x i32> %broadcast.splat1095, %273
  %275 = add <4 x i32> %274, <i32 1, i32 1, i32 1, i32 1>
  %276 = urem <4 x i32> %275, <i32 1200, i32 1200, i32 1200, i32 1200>
  %277 = sitofp <4 x i32> %276 to <4 x double>
  %278 = fmul fast <4 x double> %277, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %279 = extractelement <4 x i64> %272, i32 0
  %280 = shl i64 %279, 3
  %281 = add nuw nsw i64 %280, %271
  %282 = getelementptr i8, i8* %call1, i64 %281
  %283 = bitcast i8* %282 to <4 x double>*
  store <4 x double> %278, <4 x double>* %283, align 8, !alias.scope !108, !noalias !115
  %index.next1087 = add i64 %index1086, 4
  %vec.ind.next1091 = add <4 x i64> %vec.ind1090, <i64 4, i64 4, i64 4, i64 4>
  %284 = icmp eq i64 %index.next1087, %266
  br i1 %284, label %polly.loop_exit897, label %vector.body1080, !llvm.loop !116

polly.loop_exit897:                               ; preds = %vector.body1080, %polly.loop_header895
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond994.not = icmp eq i64 %polly.indvar892, %264
  br i1 %exitcond994.not, label %polly.loop_exit891, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_header889, %polly.loop_header895
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_header895 ], [ 0, %polly.loop_header889 ]
  %285 = add nuw nsw i64 %polly.indvar898, %267
  %286 = trunc i64 %285 to i32
  %287 = mul i32 %286, %270
  %288 = add i32 %287, 1
  %289 = urem i32 %288, 1200
  %p_conv.i = sitofp i32 %289 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %290 = shl i64 %285, 3
  %291 = add nuw nsw i64 %290, %271
  %scevgep902 = getelementptr i8, i8* %call1, i64 %291
  %scevgep902903 = bitcast i8* %scevgep902 to double*
  store double %p_div.i, double* %scevgep902903, align 8, !alias.scope !108, !noalias !115
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %exitcond990.not = icmp eq i64 %polly.indvar898, %268
  br i1 %exitcond990.not, label %polly.loop_exit897, label %polly.loop_header895, !llvm.loop !117

polly.loop_header269.1:                           ; preds = %polly.loop_header269.1, %polly.loop_exit271
  %polly.indvar272.1 = phi i64 [ 0, %polly.loop_exit271 ], [ %polly.indvar_next273.1, %polly.loop_header269.1 ]
  %292 = add nuw nsw i64 %polly.indvar272.1, %97
  %polly.access.add.Packed_MemRef_call1276.1 = add nuw nsw i64 %polly.indvar272.1, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call1277.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276.1
  %_p_scalar_278.1 = load double, double* %polly.access.Packed_MemRef_call1277.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_282.1, %_p_scalar_278.1
  %polly.access.Packed_MemRef_call2285.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1276.1
  %_p_scalar_286.1 = load double, double* %polly.access.Packed_MemRef_call2285.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_290.1, %_p_scalar_286.1
  %293 = shl i64 %292, 3
  %294 = add nuw nsw i64 %293, %116
  %scevgep291.1 = getelementptr i8, i8* %call, i64 %294
  %scevgep291292.1 = bitcast i8* %scevgep291.1 to double*
  %_p_scalar_293.1 = load double, double* %scevgep291292.1, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_293.1
  store double %p_add42.i118.1, double* %scevgep291292.1, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next273.1 = add nuw nsw i64 %polly.indvar272.1, 1
  %exitcond940.1.not = icmp eq i64 %polly.indvar272.1, %smin.1
  br i1 %exitcond940.1.not, label %polly.loop_exit271.1, label %polly.loop_header269.1

polly.loop_exit271.1:                             ; preds = %polly.loop_header269.1
  %polly.access.add.Packed_MemRef_call2280.2 = add nuw nsw i64 %117, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call1289.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2280.2
  %_p_scalar_290.2 = load double, double* %polly.access.Packed_MemRef_call1289.2, align 8
  %polly.access.Packed_MemRef_call2281.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280.2
  %_p_scalar_282.2 = load double, double* %polly.access.Packed_MemRef_call2281.2, align 8
  %n.rnd.up1280 = add nsw i64 %smin1278, 4
  %n.vec1282 = and i64 %n.rnd.up1280, -4
  %broadcast.splatinsert1287 = insertelement <4 x i64> poison, i64 %smin1278, i32 0
  %broadcast.splat1288 = shufflevector <4 x i64> %broadcast.splatinsert1287, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1293 = insertelement <4 x double> poison, double %_p_scalar_282.2, i32 0
  %broadcast.splat1294 = shufflevector <4 x double> %broadcast.splatinsert1293, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1296 = insertelement <4 x double> poison, double %_p_scalar_290.2, i32 0
  %broadcast.splat1297 = shufflevector <4 x double> %broadcast.splatinsert1296, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1275

vector.body1275:                                  ; preds = %vector.body1275, %polly.loop_exit271.1
  %index1283 = phi i64 [ 0, %polly.loop_exit271.1 ], [ %index.next1284, %vector.body1275 ]
  %broadcast.splatinsert1289 = insertelement <4 x i64> poison, i64 %index1283, i32 0
  %broadcast.splat1290 = shufflevector <4 x i64> %broadcast.splatinsert1289, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1291 = or <4 x i64> %broadcast.splat1290, <i64 0, i64 1, i64 2, i64 3>
  %295 = icmp ule <4 x i64> %induction1291, %broadcast.splat1288
  %296 = add nuw nsw i64 %index1283, %97
  %297 = add nuw nsw i64 %index1283, %polly.access.mul.Packed_MemRef_call1275
  %298 = getelementptr double, double* %Packed_MemRef_call1, i64 %297
  %299 = bitcast double* %298 to <4 x double>*
  %wide.masked.load1292 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %299, i32 8, <4 x i1> %295, <4 x double> poison)
  %300 = fmul fast <4 x double> %broadcast.splat1294, %wide.masked.load1292
  %301 = getelementptr double, double* %Packed_MemRef_call2, i64 %297
  %302 = bitcast double* %301 to <4 x double>*
  %wide.masked.load1295 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %302, i32 8, <4 x i1> %295, <4 x double> poison)
  %303 = fmul fast <4 x double> %broadcast.splat1297, %wide.masked.load1295
  %304 = shl i64 %296, 3
  %305 = add nuw nsw i64 %304, %119
  %306 = getelementptr i8, i8* %call, i64 %305
  %307 = bitcast i8* %306 to <4 x double>*
  %wide.masked.load1298 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %307, i32 8, <4 x i1> %295, <4 x double> poison), !alias.scope !71, !noalias !73
  %308 = fadd fast <4 x double> %303, %300
  %309 = fmul fast <4 x double> %308, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %310 = fadd fast <4 x double> %309, %wide.masked.load1298
  %311 = bitcast i8* %306 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %310, <4 x double>* %311, i32 8, <4 x i1> %295), !alias.scope !71, !noalias !73
  %index.next1284 = add i64 %index1283, 4
  %312 = icmp eq i64 %index.next1284, %n.vec1282
  br i1 %312, label %polly.loop_exit271.2, label %vector.body1275, !llvm.loop !118

polly.loop_exit271.2:                             ; preds = %vector.body1275
  %polly.access.add.Packed_MemRef_call2280.3 = add nuw nsw i64 %120, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call1289.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2280.3
  %_p_scalar_290.3 = load double, double* %polly.access.Packed_MemRef_call1289.3, align 8
  %polly.access.Packed_MemRef_call2281.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280.3
  %_p_scalar_282.3 = load double, double* %polly.access.Packed_MemRef_call2281.3, align 8
  %broadcast.splatinsert1267 = insertelement <4 x double> poison, double %_p_scalar_282.3, i32 0
  %broadcast.splat1268 = shufflevector <4 x double> %broadcast.splatinsert1267, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1270 = insertelement <4 x double> poison, double %_p_scalar_290.3, i32 0
  %broadcast.splat1271 = shufflevector <4 x double> %broadcast.splatinsert1270, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1257

vector.body1257:                                  ; preds = %vector.body1257, %polly.loop_exit271.2
  %index1259 = phi i64 [ 0, %polly.loop_exit271.2 ], [ %index.next1260, %vector.body1257 ]
  %313 = add nuw nsw i64 %index1259, %97
  %314 = add nuw nsw i64 %index1259, %polly.access.mul.Packed_MemRef_call1275
  %315 = getelementptr double, double* %Packed_MemRef_call1, i64 %314
  %316 = bitcast double* %315 to <4 x double>*
  %wide.load1266 = load <4 x double>, <4 x double>* %316, align 8
  %317 = fmul fast <4 x double> %broadcast.splat1268, %wide.load1266
  %318 = getelementptr double, double* %Packed_MemRef_call2, i64 %314
  %319 = bitcast double* %318 to <4 x double>*
  %wide.load1269 = load <4 x double>, <4 x double>* %319, align 8
  %320 = fmul fast <4 x double> %broadcast.splat1271, %wide.load1269
  %321 = shl i64 %313, 3
  %322 = add nuw nsw i64 %321, %122
  %323 = getelementptr i8, i8* %call, i64 %322
  %324 = bitcast i8* %323 to <4 x double>*
  %wide.load1272 = load <4 x double>, <4 x double>* %324, align 8, !alias.scope !71, !noalias !73
  %325 = fadd fast <4 x double> %320, %317
  %326 = fmul fast <4 x double> %325, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %327 = fadd fast <4 x double> %326, %wide.load1272
  %328 = bitcast i8* %323 to <4 x double>*
  store <4 x double> %327, <4 x double>* %328, align 8, !alias.scope !71, !noalias !73
  %index.next1260 = add i64 %index1259, 4
  %329 = icmp eq i64 %index1259, 0
  br i1 %329, label %polly.loop_exit271.3, label %vector.body1257, !llvm.loop !119

polly.loop_exit271.3:                             ; preds = %vector.body1257
  %polly.indvar_next261 = add nuw nsw i64 %polly.indvar260, 1
  %exitcond942.not = icmp eq i64 %polly.indvar_next261, 1000
  br i1 %exitcond942.not, label %polly.loop_exit259, label %polly.loop_header257

polly.loop_header471.1:                           ; preds = %polly.loop_header471.1, %polly.loop_exit473
  %polly.indvar474.1 = phi i64 [ 0, %polly.loop_exit473 ], [ %polly.indvar_next475.1, %polly.loop_header471.1 ]
  %330 = add nuw nsw i64 %polly.indvar474.1, %136
  %polly.access.add.Packed_MemRef_call1299478.1 = add nuw nsw i64 %polly.indvar474.1, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call1299479.1 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299478.1
  %_p_scalar_480.1 = load double, double* %polly.access.Packed_MemRef_call1299479.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_484.1, %_p_scalar_480.1
  %polly.access.Packed_MemRef_call2301487.1 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call1299478.1
  %_p_scalar_488.1 = load double, double* %polly.access.Packed_MemRef_call2301487.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_492.1, %_p_scalar_488.1
  %331 = shl i64 %330, 3
  %332 = add nuw nsw i64 %331, %155
  %scevgep493.1 = getelementptr i8, i8* %call, i64 %332
  %scevgep493494.1 = bitcast i8* %scevgep493.1 to double*
  %_p_scalar_495.1 = load double, double* %scevgep493494.1, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_495.1
  store double %p_add42.i79.1, double* %scevgep493494.1, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next475.1 = add nuw nsw i64 %polly.indvar474.1, 1
  %exitcond960.1.not = icmp eq i64 %polly.indvar474.1, %smin959.1
  br i1 %exitcond960.1.not, label %polly.loop_exit473.1, label %polly.loop_header471.1

polly.loop_exit473.1:                             ; preds = %polly.loop_header471.1
  %polly.access.add.Packed_MemRef_call2301482.2 = add nuw nsw i64 %156, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call1299491.2 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call2301482.2
  %_p_scalar_492.2 = load double, double* %polly.access.Packed_MemRef_call1299491.2, align 8
  %polly.access.Packed_MemRef_call2301483.2 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301482.2
  %_p_scalar_484.2 = load double, double* %polly.access.Packed_MemRef_call2301483.2, align 8
  %n.rnd.up1210 = add nsw i64 %smin1208, 4
  %n.vec1212 = and i64 %n.rnd.up1210, -4
  %broadcast.splatinsert1217 = insertelement <4 x i64> poison, i64 %smin1208, i32 0
  %broadcast.splat1218 = shufflevector <4 x i64> %broadcast.splatinsert1217, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1223 = insertelement <4 x double> poison, double %_p_scalar_484.2, i32 0
  %broadcast.splat1224 = shufflevector <4 x double> %broadcast.splatinsert1223, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1226 = insertelement <4 x double> poison, double %_p_scalar_492.2, i32 0
  %broadcast.splat1227 = shufflevector <4 x double> %broadcast.splatinsert1226, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %polly.loop_exit473.1
  %index1213 = phi i64 [ 0, %polly.loop_exit473.1 ], [ %index.next1214, %vector.body1205 ]
  %broadcast.splatinsert1219 = insertelement <4 x i64> poison, i64 %index1213, i32 0
  %broadcast.splat1220 = shufflevector <4 x i64> %broadcast.splatinsert1219, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1221 = or <4 x i64> %broadcast.splat1220, <i64 0, i64 1, i64 2, i64 3>
  %333 = icmp ule <4 x i64> %induction1221, %broadcast.splat1218
  %334 = add nuw nsw i64 %index1213, %136
  %335 = add nuw nsw i64 %index1213, %polly.access.mul.Packed_MemRef_call1299477
  %336 = getelementptr double, double* %Packed_MemRef_call1299, i64 %335
  %337 = bitcast double* %336 to <4 x double>*
  %wide.masked.load1222 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %337, i32 8, <4 x i1> %333, <4 x double> poison)
  %338 = fmul fast <4 x double> %broadcast.splat1224, %wide.masked.load1222
  %339 = getelementptr double, double* %Packed_MemRef_call2301, i64 %335
  %340 = bitcast double* %339 to <4 x double>*
  %wide.masked.load1225 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %340, i32 8, <4 x i1> %333, <4 x double> poison)
  %341 = fmul fast <4 x double> %broadcast.splat1227, %wide.masked.load1225
  %342 = shl i64 %334, 3
  %343 = add nuw nsw i64 %342, %158
  %344 = getelementptr i8, i8* %call, i64 %343
  %345 = bitcast i8* %344 to <4 x double>*
  %wide.masked.load1228 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %345, i32 8, <4 x i1> %333, <4 x double> poison), !alias.scope !83, !noalias !85
  %346 = fadd fast <4 x double> %341, %338
  %347 = fmul fast <4 x double> %346, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %348 = fadd fast <4 x double> %347, %wide.masked.load1228
  %349 = bitcast i8* %344 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %348, <4 x double>* %349, i32 8, <4 x i1> %333), !alias.scope !83, !noalias !85
  %index.next1214 = add i64 %index1213, 4
  %350 = icmp eq i64 %index.next1214, %n.vec1212
  br i1 %350, label %polly.loop_exit473.2, label %vector.body1205, !llvm.loop !120

polly.loop_exit473.2:                             ; preds = %vector.body1205
  %polly.access.add.Packed_MemRef_call2301482.3 = add nuw nsw i64 %159, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call1299491.3 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call2301482.3
  %_p_scalar_492.3 = load double, double* %polly.access.Packed_MemRef_call1299491.3, align 8
  %polly.access.Packed_MemRef_call2301483.3 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301482.3
  %_p_scalar_484.3 = load double, double* %polly.access.Packed_MemRef_call2301483.3, align 8
  %broadcast.splatinsert1197 = insertelement <4 x double> poison, double %_p_scalar_484.3, i32 0
  %broadcast.splat1198 = shufflevector <4 x double> %broadcast.splatinsert1197, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1200 = insertelement <4 x double> poison, double %_p_scalar_492.3, i32 0
  %broadcast.splat1201 = shufflevector <4 x double> %broadcast.splatinsert1200, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %polly.loop_exit473.2
  %index1189 = phi i64 [ 0, %polly.loop_exit473.2 ], [ %index.next1190, %vector.body1187 ]
  %351 = add nuw nsw i64 %index1189, %136
  %352 = add nuw nsw i64 %index1189, %polly.access.mul.Packed_MemRef_call1299477
  %353 = getelementptr double, double* %Packed_MemRef_call1299, i64 %352
  %354 = bitcast double* %353 to <4 x double>*
  %wide.load1196 = load <4 x double>, <4 x double>* %354, align 8
  %355 = fmul fast <4 x double> %broadcast.splat1198, %wide.load1196
  %356 = getelementptr double, double* %Packed_MemRef_call2301, i64 %352
  %357 = bitcast double* %356 to <4 x double>*
  %wide.load1199 = load <4 x double>, <4 x double>* %357, align 8
  %358 = fmul fast <4 x double> %broadcast.splat1201, %wide.load1199
  %359 = shl i64 %351, 3
  %360 = add nuw nsw i64 %359, %161
  %361 = getelementptr i8, i8* %call, i64 %360
  %362 = bitcast i8* %361 to <4 x double>*
  %wide.load1202 = load <4 x double>, <4 x double>* %362, align 8, !alias.scope !83, !noalias !85
  %363 = fadd fast <4 x double> %358, %355
  %364 = fmul fast <4 x double> %363, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %365 = fadd fast <4 x double> %364, %wide.load1202
  %366 = bitcast i8* %361 to <4 x double>*
  store <4 x double> %365, <4 x double>* %366, align 8, !alias.scope !83, !noalias !85
  %index.next1190 = add i64 %index1189, 4
  %367 = icmp eq i64 %index1189, 0
  br i1 %367, label %polly.loop_exit473.3, label %vector.body1187, !llvm.loop !121

polly.loop_exit473.3:                             ; preds = %vector.body1187
  %polly.indvar_next463 = add nuw nsw i64 %polly.indvar462, 1
  %exitcond962.not = icmp eq i64 %polly.indvar_next463, 1000
  br i1 %exitcond962.not, label %polly.loop_exit461, label %polly.loop_header459

polly.loop_header673.1:                           ; preds = %polly.loop_header673.1, %polly.loop_exit675
  %polly.indvar676.1 = phi i64 [ 0, %polly.loop_exit675 ], [ %polly.indvar_next677.1, %polly.loop_header673.1 ]
  %368 = add nuw nsw i64 %polly.indvar676.1, %175
  %polly.access.add.Packed_MemRef_call1501680.1 = add nuw nsw i64 %polly.indvar676.1, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call1501681.1 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501680.1
  %_p_scalar_682.1 = load double, double* %polly.access.Packed_MemRef_call1501681.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_686.1, %_p_scalar_682.1
  %polly.access.Packed_MemRef_call2503689.1 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call1501680.1
  %_p_scalar_690.1 = load double, double* %polly.access.Packed_MemRef_call2503689.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_694.1, %_p_scalar_690.1
  %369 = shl i64 %368, 3
  %370 = add nuw nsw i64 %369, %194
  %scevgep695.1 = getelementptr i8, i8* %call, i64 %370
  %scevgep695696.1 = bitcast i8* %scevgep695.1 to double*
  %_p_scalar_697.1 = load double, double* %scevgep695696.1, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_697.1
  store double %p_add42.i.1, double* %scevgep695696.1, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next677.1 = add nuw nsw i64 %polly.indvar676.1, 1
  %exitcond980.1.not = icmp eq i64 %polly.indvar676.1, %smin979.1
  br i1 %exitcond980.1.not, label %polly.loop_exit675.1, label %polly.loop_header673.1

polly.loop_exit675.1:                             ; preds = %polly.loop_header673.1
  %polly.access.add.Packed_MemRef_call2503684.2 = add nuw nsw i64 %195, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call1501693.2 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call2503684.2
  %_p_scalar_694.2 = load double, double* %polly.access.Packed_MemRef_call1501693.2, align 8
  %polly.access.Packed_MemRef_call2503685.2 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503684.2
  %_p_scalar_686.2 = load double, double* %polly.access.Packed_MemRef_call2503685.2, align 8
  %n.rnd.up = add nsw i64 %smin1141, 4
  %n.vec1144 = and i64 %n.rnd.up, -4
  %broadcast.splatinsert1148 = insertelement <4 x i64> poison, i64 %smin1141, i32 0
  %broadcast.splat1149 = shufflevector <4 x i64> %broadcast.splatinsert1148, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1153 = insertelement <4 x double> poison, double %_p_scalar_686.2, i32 0
  %broadcast.splat1154 = shufflevector <4 x double> %broadcast.splatinsert1153, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1156 = insertelement <4 x double> poison, double %_p_scalar_694.2, i32 0
  %broadcast.splat1157 = shufflevector <4 x double> %broadcast.splatinsert1156, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1138

vector.body1138:                                  ; preds = %vector.body1138, %polly.loop_exit675.1
  %index1145 = phi i64 [ 0, %polly.loop_exit675.1 ], [ %index.next1146, %vector.body1138 ]
  %broadcast.splatinsert1150 = insertelement <4 x i64> poison, i64 %index1145, i32 0
  %broadcast.splat1151 = shufflevector <4 x i64> %broadcast.splatinsert1150, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1152 = or <4 x i64> %broadcast.splat1151, <i64 0, i64 1, i64 2, i64 3>
  %371 = icmp ule <4 x i64> %induction1152, %broadcast.splat1149
  %372 = add nuw nsw i64 %index1145, %175
  %373 = add nuw nsw i64 %index1145, %polly.access.mul.Packed_MemRef_call1501679
  %374 = getelementptr double, double* %Packed_MemRef_call1501, i64 %373
  %375 = bitcast double* %374 to <4 x double>*
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %375, i32 8, <4 x i1> %371, <4 x double> poison)
  %376 = fmul fast <4 x double> %broadcast.splat1154, %wide.masked.load
  %377 = getelementptr double, double* %Packed_MemRef_call2503, i64 %373
  %378 = bitcast double* %377 to <4 x double>*
  %wide.masked.load1155 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %378, i32 8, <4 x i1> %371, <4 x double> poison)
  %379 = fmul fast <4 x double> %broadcast.splat1157, %wide.masked.load1155
  %380 = shl i64 %372, 3
  %381 = add nuw nsw i64 %380, %197
  %382 = getelementptr i8, i8* %call, i64 %381
  %383 = bitcast i8* %382 to <4 x double>*
  %wide.masked.load1158 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %383, i32 8, <4 x i1> %371, <4 x double> poison), !alias.scope !94, !noalias !96
  %384 = fadd fast <4 x double> %379, %376
  %385 = fmul fast <4 x double> %384, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %386 = fadd fast <4 x double> %385, %wide.masked.load1158
  %387 = bitcast i8* %382 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %386, <4 x double>* %387, i32 8, <4 x i1> %371), !alias.scope !94, !noalias !96
  %index.next1146 = add i64 %index1145, 4
  %388 = icmp eq i64 %index.next1146, %n.vec1144
  br i1 %388, label %polly.loop_exit675.2, label %vector.body1138, !llvm.loop !122

polly.loop_exit675.2:                             ; preds = %vector.body1138
  %polly.access.add.Packed_MemRef_call2503684.3 = add nuw nsw i64 %198, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call1501693.3 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call2503684.3
  %_p_scalar_694.3 = load double, double* %polly.access.Packed_MemRef_call1501693.3, align 8
  %polly.access.Packed_MemRef_call2503685.3 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503684.3
  %_p_scalar_686.3 = load double, double* %polly.access.Packed_MemRef_call2503685.3, align 8
  %broadcast.splatinsert1130 = insertelement <4 x double> poison, double %_p_scalar_686.3, i32 0
  %broadcast.splat1131 = shufflevector <4 x double> %broadcast.splatinsert1130, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1133 = insertelement <4 x double> poison, double %_p_scalar_694.3, i32 0
  %broadcast.splat1134 = shufflevector <4 x double> %broadcast.splatinsert1133, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %polly.loop_exit675.2
  %index1123 = phi i64 [ 0, %polly.loop_exit675.2 ], [ %index.next1124, %vector.body1121 ]
  %389 = add nuw nsw i64 %index1123, %175
  %390 = add nuw nsw i64 %index1123, %polly.access.mul.Packed_MemRef_call1501679
  %391 = getelementptr double, double* %Packed_MemRef_call1501, i64 %390
  %392 = bitcast double* %391 to <4 x double>*
  %wide.load1129 = load <4 x double>, <4 x double>* %392, align 8
  %393 = fmul fast <4 x double> %broadcast.splat1131, %wide.load1129
  %394 = getelementptr double, double* %Packed_MemRef_call2503, i64 %390
  %395 = bitcast double* %394 to <4 x double>*
  %wide.load1132 = load <4 x double>, <4 x double>* %395, align 8
  %396 = fmul fast <4 x double> %broadcast.splat1134, %wide.load1132
  %397 = shl i64 %389, 3
  %398 = add nuw nsw i64 %397, %200
  %399 = getelementptr i8, i8* %call, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  %wide.load1135 = load <4 x double>, <4 x double>* %400, align 8, !alias.scope !94, !noalias !96
  %401 = fadd fast <4 x double> %396, %393
  %402 = fmul fast <4 x double> %401, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %403 = fadd fast <4 x double> %402, %wide.load1135
  %404 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %403, <4 x double>* %404, align 8, !alias.scope !94, !noalias !96
  %index.next1124 = add i64 %index1123, 4
  %405 = icmp eq i64 %index1123, 0
  br i1 %405, label %polly.loop_exit675.3, label %vector.body1121, !llvm.loop !123

polly.loop_exit675.3:                             ; preds = %vector.body1121
  %polly.indvar_next665 = add nuw nsw i64 %polly.indvar664, 1
  %exitcond982.not = icmp eq i64 %polly.indvar_next665, 1000
  br i1 %exitcond982.not, label %polly.loop_exit663, label %polly.loop_header661
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

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>*, i32 immarg, <4 x i1>, <4 x double>) #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.v4f64.p0v4f64(<4 x double>, <4 x double>*, i32 immarg, <4 x i1>) #7

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nosync nounwind readonly willreturn }
attributes #7 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 4}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 2048}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !24, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.loop.interchange.followup_interchanged", !43}
!43 = distinct !{!43, !12, !24, !41, !44, !45, !46}
!44 = !{!"llvm.data.pack.enable", i1 true}
!45 = !{!"llvm.data.pack.array", !21}
!46 = !{!"llvm.data.pack.allocate", !"malloc"}
!47 = distinct !{!47, !12, !24, !48, !49, !50, !26, !51, !60}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !24, !53, !54, !55, !56, !57}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.interchange.followup_interchanged", !58}
!58 = distinct !{!58, !12, !24, !53, !44, !59, !46}
!59 = !{!"llvm.data.pack.array", !22}
!60 = !{!"llvm.loop.tile.followup_tile", !61}
!61 = distinct !{!61, !12, !24, !62}
!62 = !{!"llvm.loop.id", !"i2"}
!63 = distinct !{!63, !12, !13}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = !{!68, !68, i64 0}
!68 = !{!"any pointer", !4, i64 0}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !72, !"polly.alias.scope.MemRef_call"}
!72 = distinct !{!72, !"polly.alias.scope.domain"}
!73 = !{!74, !75, !76, !77}
!74 = distinct !{!74, !72, !"polly.alias.scope.MemRef_call1"}
!75 = distinct !{!75, !72, !"polly.alias.scope.MemRef_call2"}
!76 = distinct !{!76, !72, !"polly.alias.scope.Packed_MemRef_call1"}
!77 = distinct !{!77, !72, !"polly.alias.scope.Packed_MemRef_call2"}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !80, !13}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!71, !74, !76, !77}
!82 = !{!71, !75, !76, !77}
!83 = distinct !{!83, !84, !"polly.alias.scope.MemRef_call"}
!84 = distinct !{!84, !"polly.alias.scope.domain"}
!85 = !{!86, !87, !88, !89}
!86 = distinct !{!86, !84, !"polly.alias.scope.MemRef_call1"}
!87 = distinct !{!87, !84, !"polly.alias.scope.MemRef_call2"}
!88 = distinct !{!88, !84, !"polly.alias.scope.Packed_MemRef_call1"}
!89 = distinct !{!89, !84, !"polly.alias.scope.Packed_MemRef_call2"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !80, !13}
!92 = !{!83, !86, !88, !89}
!93 = !{!83, !87, !88, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98, !99, !100}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !95, !"polly.alias.scope.Packed_MemRef_call1"}
!100 = distinct !{!100, !95, !"polly.alias.scope.Packed_MemRef_call2"}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !80, !13}
!103 = !{!94, !97, !99, !100}
!104 = !{!94, !98, !99, !100}
!105 = distinct !{!105, !106, !"polly.alias.scope.MemRef_call"}
!106 = distinct !{!106, !"polly.alias.scope.domain"}
!107 = !{!108, !109}
!108 = distinct !{!108, !106, !"polly.alias.scope.MemRef_call1"}
!109 = distinct !{!109, !106, !"polly.alias.scope.MemRef_call2"}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !80, !13}
!112 = !{!108, !105}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !80, !13}
!115 = !{!109, !105}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !80, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
