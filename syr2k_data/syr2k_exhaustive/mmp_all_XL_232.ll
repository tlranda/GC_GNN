; ModuleID = 'syr2k_exhaustive/mmp_all_XL_232.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_232.c"
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
  %call850 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
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
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start498, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1099 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1099, label %for.body3.i46.preheader1176, label %vector.ph1100

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
  br i1 %cmp.n1106, label %for.inc6.i, label %for.body3.i46.preheader1176

for.body3.i46.preheader1176:                      ; preds = %for.body3.i46.preheader, %middle.block1096
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1102, %middle.block1096 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1176, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1176 ]
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
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start296, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1122 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1122, label %for.body3.i60.preheader1174, label %vector.ph1123

vector.ph1123:                                    ; preds = %for.body3.i60.preheader
  %n.vec1125 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %vector.ph1123
  %index1126 = phi i64 [ 0, %vector.ph1123 ], [ %index.next1127, %vector.body1121 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv21.i52, i64 %index1126
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1130 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1130, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1127 = add i64 %index1126, 4
  %57 = icmp eq i64 %index.next1127, %n.vec1125
  br i1 %57, label %middle.block1119, label %vector.body1121, !llvm.loop !63

middle.block1119:                                 ; preds = %vector.body1121
  %cmp.n1129 = icmp eq i64 %indvars.iv21.i52, %n.vec1125
  br i1 %cmp.n1129, label %for.inc6.i63, label %for.body3.i60.preheader1174

for.body3.i60.preheader1174:                      ; preds = %for.body3.i60.preheader, %middle.block1119
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1125, %middle.block1119 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1174, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1174 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1119, %for.cond1.preheader.i54
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
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1148 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1148, label %for.body3.i99.preheader1172, label %vector.ph1149

vector.ph1149:                                    ; preds = %for.body3.i99.preheader
  %n.vec1151 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %vector.ph1149
  %index1152 = phi i64 [ 0, %vector.ph1149 ], [ %index.next1153, %vector.body1147 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv21.i91, i64 %index1152
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1156 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1156, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1153 = add i64 %index1152, 4
  %68 = icmp eq i64 %index.next1153, %n.vec1151
  br i1 %68, label %middle.block1145, label %vector.body1147, !llvm.loop !65

middle.block1145:                                 ; preds = %vector.body1147
  %cmp.n1155 = icmp eq i64 %indvars.iv21.i91, %n.vec1151
  br i1 %cmp.n1155, label %for.inc6.i102, label %for.body3.i99.preheader1172

for.body3.i99.preheader1172:                      ; preds = %for.body3.i99.preheader, %middle.block1145
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1151, %middle.block1145 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1172, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1172 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1145, %for.cond1.preheader.i93
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
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !67
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !69

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !70

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1160 = phi i64 [ %indvar.next1161, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1160, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1162 = icmp ult i64 %88, 4
  br i1 %min.iters.check1162, label %polly.loop_header192.preheader, label %vector.ph1163

vector.ph1163:                                    ; preds = %polly.loop_header
  %n.vec1165 = and i64 %88, -4
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %vector.ph1163
  %index1166 = phi i64 [ 0, %vector.ph1163 ], [ %index.next1167, %vector.body1159 ]
  %90 = shl nuw nsw i64 %index1166, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1170 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1170, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1167 = add i64 %index1166, 4
  %95 = icmp eq i64 %index.next1167, %n.vec1165
  br i1 %95, label %middle.block1157, label %vector.body1159, !llvm.loop !78

middle.block1157:                                 ; preds = %vector.body1159
  %cmp.n1169 = icmp eq i64 %88, %n.vec1165
  br i1 %cmp.n1169, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1157
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1165, %middle.block1157 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1157
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond946.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1161 = add i64 %indvar1160, 1
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
  %97 = shl nsw i64 %polly.indvar203, 3
  br label %polly.loop_header206

polly.loop_exit224:                               ; preds = %polly.loop_exit259
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %exitcond944.not = icmp eq i64 %polly.indvar_next204, 150
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
  %98 = mul nsw i64 %polly.indvar203, -8
  %polly.access.mul.call1241 = mul nsw i64 %polly.indvar203, 8000
  %99 = or i64 %97, 1
  %polly.access.mul.call1241.1 = mul nuw nsw i64 %99, 1000
  %100 = or i64 %97, 2
  %polly.access.mul.call1241.2 = mul nuw nsw i64 %100, 1000
  %101 = or i64 %97, 3
  %polly.access.mul.call1241.3 = mul nuw nsw i64 %101, 1000
  %102 = or i64 %97, 4
  %polly.access.mul.call1241.4 = mul nuw nsw i64 %102, 1000
  %103 = or i64 %97, 5
  %polly.access.mul.call1241.5 = mul nuw nsw i64 %103, 1000
  %104 = or i64 %97, 6
  %polly.access.mul.call1241.6 = mul nuw nsw i64 %104, 1000
  %105 = or i64 %97, 7
  %polly.access.mul.call1241.7 = mul nuw nsw i64 %105, 1000
  %polly.access.mul.call1241.us = mul nsw i64 %polly.indvar203, 8000
  %106 = or i64 %97, 1
  %polly.access.mul.call1241.us.1 = mul nuw nsw i64 %106, 1000
  %107 = or i64 %97, 2
  %polly.access.mul.call1241.us.2 = mul nuw nsw i64 %107, 1000
  %108 = or i64 %97, 3
  %polly.access.mul.call1241.us.3 = mul nuw nsw i64 %108, 1000
  %109 = or i64 %97, 4
  %polly.access.mul.call1241.us.4 = mul nuw nsw i64 %109, 1000
  %110 = or i64 %97, 5
  %polly.access.mul.call1241.us.5 = mul nuw nsw i64 %110, 1000
  %111 = or i64 %97, 6
  %polly.access.mul.call1241.us.6 = mul nuw nsw i64 %111, 1000
  %112 = or i64 %97, 7
  %polly.access.mul.call1241.us.7 = mul nuw nsw i64 %112, 1000
  br label %polly.loop_header222

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %113 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.call2219 = mul nuw nsw i64 %113, 1000
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
  %indvars.iv936 = phi i64 [ 0, %polly.loop_header222.preheader ], [ %indvars.iv.next937, %polly.loop_exit259 ]
  %polly.indvar225 = phi i64 [ %polly.indvar203, %polly.loop_header222.preheader ], [ %polly.indvar_next226, %polly.loop_exit259 ]
  %114 = shl nsw i64 %polly.indvar225, 3
  %115 = add nsw i64 %114, %98
  %116 = icmp ugt i64 %115, 8
  %117 = select i1 %116, i64 %115, i64 8
  %118 = or i64 %115, 7
  %polly.loop_guard.not = icmp ugt i64 %117, %118
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
  %polly.access.add.call1242.us.4 = add nuw nsw i64 %polly.access.mul.call1241.us.4, %polly.indvar231.us
  %polly.access.call1243.us.4 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242.us.4
  %polly.access.call1243.load.us.4 = load double, double* %polly.access.call1243.us.4, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 4
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.4
  store double %polly.access.call1243.load.us.4, double* %polly.access.Packed_MemRef_call1.us.4, align 8
  %polly.access.add.call1242.us.5 = add nuw nsw i64 %polly.access.mul.call1241.us.5, %polly.indvar231.us
  %polly.access.call1243.us.5 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242.us.5
  %polly.access.call1243.load.us.5 = load double, double* %polly.access.call1243.us.5, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 5
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.5
  store double %polly.access.call1243.load.us.5, double* %polly.access.Packed_MemRef_call1.us.5, align 8
  %polly.access.add.call1242.us.6 = add nuw nsw i64 %polly.access.mul.call1241.us.6, %polly.indvar231.us
  %polly.access.call1243.us.6 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242.us.6
  %polly.access.call1243.load.us.6 = load double, double* %polly.access.call1243.us.6, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 6
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.6
  store double %polly.access.call1243.load.us.6, double* %polly.access.Packed_MemRef_call1.us.6, align 8
  %polly.access.add.call1242.us.7 = add nuw nsw i64 %polly.access.mul.call1241.us.7, %polly.indvar231.us
  %polly.access.call1243.us.7 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242.us.7
  %polly.access.call1243.load.us.7 = load double, double* %polly.access.call1243.us.7, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 7
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.7
  store double %polly.access.call1243.load.us.7, double* %polly.access.Packed_MemRef_call1.us.7, align 8
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond935.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond935.not, label %polly.loop_header257.preheader, label %polly.loop_header228.us

polly.loop_exit259:                               ; preds = %polly.loop_exit271.7
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next937 = add nuw nsw i64 %indvars.iv936, 8
  %exitcond943.not = icmp eq i64 %polly.indvar_next226, 150
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
  %polly.access.add.call1242.4 = add nuw nsw i64 %polly.access.mul.call1241.4, %polly.indvar231
  %polly.access.call1243.4 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242.4
  %polly.access.call1243.load.4 = load double, double* %polly.access.call1243.4, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.4 = or i64 %polly.access.mul.Packed_MemRef_call1, 4
  %polly.access.Packed_MemRef_call1.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.4
  store double %polly.access.call1243.load.4, double* %polly.access.Packed_MemRef_call1.4, align 8
  %polly.access.add.call1242.5 = add nuw nsw i64 %polly.access.mul.call1241.5, %polly.indvar231
  %polly.access.call1243.5 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242.5
  %polly.access.call1243.load.5 = load double, double* %polly.access.call1243.5, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.5 = or i64 %polly.access.mul.Packed_MemRef_call1, 5
  %polly.access.Packed_MemRef_call1.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.5
  store double %polly.access.call1243.load.5, double* %polly.access.Packed_MemRef_call1.5, align 8
  %polly.access.add.call1242.6 = add nuw nsw i64 %polly.access.mul.call1241.6, %polly.indvar231
  %polly.access.call1243.6 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242.6
  %polly.access.call1243.load.6 = load double, double* %polly.access.call1243.6, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.6 = or i64 %polly.access.mul.Packed_MemRef_call1, 6
  %polly.access.Packed_MemRef_call1.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.6
  store double %polly.access.call1243.load.6, double* %polly.access.Packed_MemRef_call1.6, align 8
  %polly.access.add.call1242.7 = add nuw nsw i64 %polly.access.mul.call1241.7, %polly.indvar231
  %polly.access.call1243.7 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242.7
  %polly.access.call1243.load.7 = load double, double* %polly.access.call1243.7, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.7 = or i64 %polly.access.mul.Packed_MemRef_call1, 7
  %polly.access.Packed_MemRef_call1.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.7
  store double %polly.access.call1243.load.7, double* %polly.access.Packed_MemRef_call1.7, align 8
  br label %polly.loop_header244

polly.loop_exit246:                               ; preds = %polly.loop_header244
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond933.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond933.not, label %polly.loop_header257.preheader, label %polly.loop_header228

polly.loop_header257.preheader:                   ; preds = %polly.loop_exit246, %polly.loop_header228.us
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv936, i64 7)
  %119 = mul nsw i64 %polly.indvar225, 76800
  %indvars.iv.next939 = or i64 %indvars.iv936, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next939, i64 7)
  %120 = or i64 %115, 1
  %121 = or i64 %114, 1
  %122 = mul nuw nsw i64 %121, 9600
  %indvars.iv.next939.1 = add nuw nsw i64 %indvars.iv.next939, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next939.1, i64 7)
  %123 = or i64 %115, 2
  %124 = or i64 %114, 2
  %125 = mul nuw nsw i64 %124, 9600
  %indvars.iv.next939.2 = or i64 %indvars.iv936, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next939.2, i64 7)
  %126 = or i64 %115, 3
  %127 = or i64 %114, 3
  %128 = mul nuw nsw i64 %127, 9600
  %indvars.iv.next939.3 = add nuw nsw i64 %indvars.iv.next939.2, 1
  %smin.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next939.3, i64 7)
  %129 = or i64 %115, 4
  %130 = or i64 %114, 4
  %131 = mul nuw nsw i64 %130, 9600
  %indvars.iv.next939.4 = add nuw nsw i64 %indvars.iv.next939.2, 2
  %smin.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next939.4, i64 7)
  %132 = or i64 %115, 5
  %133 = or i64 %114, 5
  %134 = mul nuw nsw i64 %133, 9600
  %indvars.iv.next939.5 = add nuw nsw i64 %indvars.iv.next939.2, 3
  %smin.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next939.5, i64 7)
  %135 = or i64 %115, 6
  %136 = or i64 %114, 6
  %137 = mul nuw nsw i64 %136, 9600
  %138 = or i64 %115, 7
  %139 = or i64 %114, 7
  %140 = mul nuw nsw i64 %139, 9600
  br label %polly.loop_header257

polly.loop_header244:                             ; preds = %polly.loop_header228, %polly.loop_header244
  %polly.indvar247 = phi i64 [ %polly.indvar_next248, %polly.loop_header244 ], [ %117, %polly.loop_header228 ]
  %141 = add nuw nsw i64 %polly.indvar247, %97
  %polly.access.mul.call1251 = mul nuw nsw i64 %141, 1000
  %polly.access.add.call1252 = add nuw nsw i64 %polly.access.mul.call1251, %polly.indvar231
  %polly.access.call1253 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1252
  %polly.access.call1253.load = load double, double* %polly.access.call1253, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1255 = add nuw nsw i64 %polly.indvar247, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1256 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255
  store double %polly.access.call1253.load, double* %polly.access.Packed_MemRef_call1256, align 8
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %polly.loop_cond249.not.not = icmp ult i64 %polly.indvar247, %118
  br i1 %polly.loop_cond249.not.not, label %polly.loop_header244, label %polly.loop_exit246

polly.loop_header257:                             ; preds = %polly.loop_header257.preheader, %polly.loop_exit271.7
  %polly.indvar260 = phi i64 [ %polly.indvar_next261, %polly.loop_exit271.7 ], [ 0, %polly.loop_header257.preheader ]
  %polly.access.mul.Packed_MemRef_call1275 = mul nuw nsw i64 %polly.indvar260, 1200
  %polly.access.add.Packed_MemRef_call2280 = add nuw nsw i64 %115, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call2281 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280
  %_p_scalar_282 = load double, double* %polly.access.Packed_MemRef_call2281, align 8
  %polly.access.Packed_MemRef_call1289 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2280
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call1289, align 8
  br label %polly.loop_header269

polly.loop_exit271:                               ; preds = %polly.loop_header269
  %polly.access.add.Packed_MemRef_call2280.1 = add nuw nsw i64 %120, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call2281.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280.1
  %_p_scalar_282.1 = load double, double* %polly.access.Packed_MemRef_call2281.1, align 8
  %polly.access.Packed_MemRef_call1289.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2280.1
  %_p_scalar_290.1 = load double, double* %polly.access.Packed_MemRef_call1289.1, align 8
  br label %polly.loop_header269.1

polly.loop_header269:                             ; preds = %polly.loop_header269, %polly.loop_header257
  %polly.indvar272 = phi i64 [ 0, %polly.loop_header257 ], [ %polly.indvar_next273, %polly.loop_header269 ]
  %142 = add nuw nsw i64 %polly.indvar272, %97
  %polly.access.add.Packed_MemRef_call1276 = add nuw nsw i64 %polly.indvar272, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call1277 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276
  %_p_scalar_278 = load double, double* %polly.access.Packed_MemRef_call1277, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_282, %_p_scalar_278
  %polly.access.Packed_MemRef_call2285 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1276
  %_p_scalar_286 = load double, double* %polly.access.Packed_MemRef_call2285, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_290, %_p_scalar_286
  %143 = shl i64 %142, 3
  %144 = add nuw nsw i64 %143, %119
  %scevgep291 = getelementptr i8, i8* %call, i64 %144
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
  %malloccall298 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall300 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header384

polly.exiting297:                                 ; preds = %polly.loop_exit424
  tail call void @free(i8* nonnull %malloccall298)
  tail call void @free(i8* nonnull %malloccall300)
  br label %kernel_syr2k.exit90

polly.loop_header384:                             ; preds = %polly.loop_exit392, %polly.start296
  %indvar1134 = phi i64 [ %indvar.next1135, %polly.loop_exit392 ], [ 0, %polly.start296 ]
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit392 ], [ 1, %polly.start296 ]
  %145 = add i64 %indvar1134, 1
  %146 = mul nuw nsw i64 %polly.indvar387, 9600
  %scevgep396 = getelementptr i8, i8* %call, i64 %146
  %min.iters.check1136 = icmp ult i64 %145, 4
  br i1 %min.iters.check1136, label %polly.loop_header390.preheader, label %vector.ph1137

vector.ph1137:                                    ; preds = %polly.loop_header384
  %n.vec1139 = and i64 %145, -4
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %vector.ph1137
  %index1140 = phi i64 [ 0, %vector.ph1137 ], [ %index.next1141, %vector.body1133 ]
  %147 = shl nuw nsw i64 %index1140, 3
  %148 = getelementptr i8, i8* %scevgep396, i64 %147
  %149 = bitcast i8* %148 to <4 x double>*
  %wide.load1144 = load <4 x double>, <4 x double>* %149, align 8, !alias.scope !83, !noalias !85
  %150 = fmul fast <4 x double> %wide.load1144, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %151 = bitcast i8* %148 to <4 x double>*
  store <4 x double> %150, <4 x double>* %151, align 8, !alias.scope !83, !noalias !85
  %index.next1141 = add i64 %index1140, 4
  %152 = icmp eq i64 %index.next1141, %n.vec1139
  br i1 %152, label %middle.block1131, label %vector.body1133, !llvm.loop !90

middle.block1131:                                 ; preds = %vector.body1133
  %cmp.n1143 = icmp eq i64 %145, %n.vec1139
  br i1 %cmp.n1143, label %polly.loop_exit392, label %polly.loop_header390.preheader

polly.loop_header390.preheader:                   ; preds = %polly.loop_header384, %middle.block1131
  %polly.indvar393.ph = phi i64 [ 0, %polly.loop_header384 ], [ %n.vec1139, %middle.block1131 ]
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_header390, %middle.block1131
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond966.not = icmp eq i64 %polly.indvar_next388, 1200
  %indvar.next1135 = add i64 %indvar1134, 1
  br i1 %exitcond966.not, label %polly.loop_header400.preheader, label %polly.loop_header384

polly.loop_header400.preheader:                   ; preds = %polly.loop_exit392
  %Packed_MemRef_call1299 = bitcast i8* %malloccall298 to double*
  %Packed_MemRef_call2301 = bitcast i8* %malloccall300 to double*
  br label %polly.loop_header400

polly.loop_header390:                             ; preds = %polly.loop_header390.preheader, %polly.loop_header390
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_header390 ], [ %polly.indvar393.ph, %polly.loop_header390.preheader ]
  %153 = shl nuw nsw i64 %polly.indvar393, 3
  %scevgep397 = getelementptr i8, i8* %scevgep396, i64 %153
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
  %154 = shl nsw i64 %polly.indvar403, 3
  br label %polly.loop_header406

polly.loop_exit424:                               ; preds = %polly.loop_exit461
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next948 = add nsw i64 %indvars.iv947, -8
  %exitcond964.not = icmp eq i64 %polly.indvar_next404, 150
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
  %155 = mul nsw i64 %polly.indvar403, -8
  %polly.access.mul.call1441 = mul nsw i64 %polly.indvar403, 8000
  %156 = or i64 %154, 1
  %polly.access.mul.call1441.1 = mul nuw nsw i64 %156, 1000
  %157 = or i64 %154, 2
  %polly.access.mul.call1441.2 = mul nuw nsw i64 %157, 1000
  %158 = or i64 %154, 3
  %polly.access.mul.call1441.3 = mul nuw nsw i64 %158, 1000
  %159 = or i64 %154, 4
  %polly.access.mul.call1441.4 = mul nuw nsw i64 %159, 1000
  %160 = or i64 %154, 5
  %polly.access.mul.call1441.5 = mul nuw nsw i64 %160, 1000
  %161 = or i64 %154, 6
  %polly.access.mul.call1441.6 = mul nuw nsw i64 %161, 1000
  %162 = or i64 %154, 7
  %polly.access.mul.call1441.7 = mul nuw nsw i64 %162, 1000
  %polly.access.mul.call1441.us = mul nsw i64 %polly.indvar403, 8000
  %163 = or i64 %154, 1
  %polly.access.mul.call1441.us.1 = mul nuw nsw i64 %163, 1000
  %164 = or i64 %154, 2
  %polly.access.mul.call1441.us.2 = mul nuw nsw i64 %164, 1000
  %165 = or i64 %154, 3
  %polly.access.mul.call1441.us.3 = mul nuw nsw i64 %165, 1000
  %166 = or i64 %154, 4
  %polly.access.mul.call1441.us.4 = mul nuw nsw i64 %166, 1000
  %167 = or i64 %154, 5
  %polly.access.mul.call1441.us.5 = mul nuw nsw i64 %167, 1000
  %168 = or i64 %154, 6
  %polly.access.mul.call1441.us.6 = mul nuw nsw i64 %168, 1000
  %169 = or i64 %154, 7
  %polly.access.mul.call1441.us.7 = mul nuw nsw i64 %169, 1000
  br label %polly.loop_header422

polly.loop_header412:                             ; preds = %polly.loop_header412, %polly.loop_header406
  %polly.indvar415 = phi i64 [ 0, %polly.loop_header406 ], [ %polly.indvar_next416, %polly.loop_header412 ]
  %170 = add nuw nsw i64 %polly.indvar415, %154
  %polly.access.mul.call2419 = mul nuw nsw i64 %170, 1000
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
  %indvars.iv955 = phi i64 [ 0, %polly.loop_header422.preheader ], [ %indvars.iv.next956, %polly.loop_exit461 ]
  %polly.indvar425 = phi i64 [ %polly.indvar403, %polly.loop_header422.preheader ], [ %polly.indvar_next426, %polly.loop_exit461 ]
  %171 = shl nsw i64 %polly.indvar425, 3
  %172 = add nsw i64 %171, %155
  %173 = icmp ugt i64 %172, 8
  %174 = select i1 %173, i64 %172, i64 8
  %175 = or i64 %172, 7
  %polly.loop_guard448.not = icmp ugt i64 %174, %175
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
  %polly.access.add.call1442.us.4 = add nuw nsw i64 %polly.access.mul.call1441.us.4, %polly.indvar431.us
  %polly.access.call1443.us.4 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442.us.4
  %polly.access.call1443.load.us.4 = load double, double* %polly.access.call1443.us.4, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1299.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1299.us, 4
  %polly.access.Packed_MemRef_call1299.us.4 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299.us.4
  store double %polly.access.call1443.load.us.4, double* %polly.access.Packed_MemRef_call1299.us.4, align 8
  %polly.access.add.call1442.us.5 = add nuw nsw i64 %polly.access.mul.call1441.us.5, %polly.indvar431.us
  %polly.access.call1443.us.5 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442.us.5
  %polly.access.call1443.load.us.5 = load double, double* %polly.access.call1443.us.5, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1299.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1299.us, 5
  %polly.access.Packed_MemRef_call1299.us.5 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299.us.5
  store double %polly.access.call1443.load.us.5, double* %polly.access.Packed_MemRef_call1299.us.5, align 8
  %polly.access.add.call1442.us.6 = add nuw nsw i64 %polly.access.mul.call1441.us.6, %polly.indvar431.us
  %polly.access.call1443.us.6 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442.us.6
  %polly.access.call1443.load.us.6 = load double, double* %polly.access.call1443.us.6, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1299.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1299.us, 6
  %polly.access.Packed_MemRef_call1299.us.6 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299.us.6
  store double %polly.access.call1443.load.us.6, double* %polly.access.Packed_MemRef_call1299.us.6, align 8
  %polly.access.add.call1442.us.7 = add nuw nsw i64 %polly.access.mul.call1441.us.7, %polly.indvar431.us
  %polly.access.call1443.us.7 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442.us.7
  %polly.access.call1443.load.us.7 = load double, double* %polly.access.call1443.us.7, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1299.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1299.us, 7
  %polly.access.Packed_MemRef_call1299.us.7 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299.us.7
  store double %polly.access.call1443.load.us.7, double* %polly.access.Packed_MemRef_call1299.us.7, align 8
  %polly.indvar_next432.us = add nuw nsw i64 %polly.indvar431.us, 1
  %exitcond954.not = icmp eq i64 %polly.indvar_next432.us, 1000
  br i1 %exitcond954.not, label %polly.loop_header459.preheader, label %polly.loop_header428.us

polly.loop_exit461:                               ; preds = %polly.loop_exit473.7
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %indvars.iv.next956 = add nuw nsw i64 %indvars.iv955, 8
  %exitcond963.not = icmp eq i64 %polly.indvar_next426, 150
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
  %polly.access.add.call1442.4 = add nuw nsw i64 %polly.access.mul.call1441.4, %polly.indvar431
  %polly.access.call1443.4 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442.4
  %polly.access.call1443.load.4 = load double, double* %polly.access.call1443.4, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1299.4 = or i64 %polly.access.mul.Packed_MemRef_call1299, 4
  %polly.access.Packed_MemRef_call1299.4 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299.4
  store double %polly.access.call1443.load.4, double* %polly.access.Packed_MemRef_call1299.4, align 8
  %polly.access.add.call1442.5 = add nuw nsw i64 %polly.access.mul.call1441.5, %polly.indvar431
  %polly.access.call1443.5 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442.5
  %polly.access.call1443.load.5 = load double, double* %polly.access.call1443.5, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1299.5 = or i64 %polly.access.mul.Packed_MemRef_call1299, 5
  %polly.access.Packed_MemRef_call1299.5 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299.5
  store double %polly.access.call1443.load.5, double* %polly.access.Packed_MemRef_call1299.5, align 8
  %polly.access.add.call1442.6 = add nuw nsw i64 %polly.access.mul.call1441.6, %polly.indvar431
  %polly.access.call1443.6 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442.6
  %polly.access.call1443.load.6 = load double, double* %polly.access.call1443.6, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1299.6 = or i64 %polly.access.mul.Packed_MemRef_call1299, 6
  %polly.access.Packed_MemRef_call1299.6 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299.6
  store double %polly.access.call1443.load.6, double* %polly.access.Packed_MemRef_call1299.6, align 8
  %polly.access.add.call1442.7 = add nuw nsw i64 %polly.access.mul.call1441.7, %polly.indvar431
  %polly.access.call1443.7 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442.7
  %polly.access.call1443.load.7 = load double, double* %polly.access.call1443.7, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1299.7 = or i64 %polly.access.mul.Packed_MemRef_call1299, 7
  %polly.access.Packed_MemRef_call1299.7 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299.7
  store double %polly.access.call1443.load.7, double* %polly.access.Packed_MemRef_call1299.7, align 8
  br label %polly.loop_header445

polly.loop_exit447:                               ; preds = %polly.loop_header445
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond952.not = icmp eq i64 %polly.indvar_next432, 1000
  br i1 %exitcond952.not, label %polly.loop_header459.preheader, label %polly.loop_header428

polly.loop_header459.preheader:                   ; preds = %polly.loop_exit447, %polly.loop_header428.us
  %smin959 = call i64 @llvm.smin.i64(i64 %indvars.iv955, i64 7)
  %176 = mul nsw i64 %polly.indvar425, 76800
  %indvars.iv.next958 = or i64 %indvars.iv955, 1
  %smin959.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next958, i64 7)
  %177 = or i64 %172, 1
  %178 = or i64 %171, 1
  %179 = mul nuw nsw i64 %178, 9600
  %indvars.iv.next958.1 = add nuw nsw i64 %indvars.iv.next958, 1
  %smin959.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next958.1, i64 7)
  %180 = or i64 %172, 2
  %181 = or i64 %171, 2
  %182 = mul nuw nsw i64 %181, 9600
  %indvars.iv.next958.2 = or i64 %indvars.iv955, 3
  %smin959.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next958.2, i64 7)
  %183 = or i64 %172, 3
  %184 = or i64 %171, 3
  %185 = mul nuw nsw i64 %184, 9600
  %indvars.iv.next958.3 = add nuw nsw i64 %indvars.iv.next958.2, 1
  %smin959.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next958.3, i64 7)
  %186 = or i64 %172, 4
  %187 = or i64 %171, 4
  %188 = mul nuw nsw i64 %187, 9600
  %indvars.iv.next958.4 = add nuw nsw i64 %indvars.iv.next958.2, 2
  %smin959.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next958.4, i64 7)
  %189 = or i64 %172, 5
  %190 = or i64 %171, 5
  %191 = mul nuw nsw i64 %190, 9600
  %indvars.iv.next958.5 = add nuw nsw i64 %indvars.iv.next958.2, 3
  %smin959.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next958.5, i64 7)
  %192 = or i64 %172, 6
  %193 = or i64 %171, 6
  %194 = mul nuw nsw i64 %193, 9600
  %195 = or i64 %172, 7
  %196 = or i64 %171, 7
  %197 = mul nuw nsw i64 %196, 9600
  br label %polly.loop_header459

polly.loop_header445:                             ; preds = %polly.loop_header428, %polly.loop_header445
  %polly.indvar449 = phi i64 [ %polly.indvar_next450, %polly.loop_header445 ], [ %174, %polly.loop_header428 ]
  %198 = add nuw nsw i64 %polly.indvar449, %154
  %polly.access.mul.call1453 = mul nuw nsw i64 %198, 1000
  %polly.access.add.call1454 = add nuw nsw i64 %polly.access.mul.call1453, %polly.indvar431
  %polly.access.call1455 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1454
  %polly.access.call1455.load = load double, double* %polly.access.call1455, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1299457 = add nuw nsw i64 %polly.indvar449, %polly.access.mul.Packed_MemRef_call1299
  %polly.access.Packed_MemRef_call1299458 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299457
  store double %polly.access.call1455.load, double* %polly.access.Packed_MemRef_call1299458, align 8
  %polly.indvar_next450 = add nuw nsw i64 %polly.indvar449, 1
  %polly.loop_cond451.not.not = icmp ult i64 %polly.indvar449, %175
  br i1 %polly.loop_cond451.not.not, label %polly.loop_header445, label %polly.loop_exit447

polly.loop_header459:                             ; preds = %polly.loop_header459.preheader, %polly.loop_exit473.7
  %polly.indvar462 = phi i64 [ %polly.indvar_next463, %polly.loop_exit473.7 ], [ 0, %polly.loop_header459.preheader ]
  %polly.access.mul.Packed_MemRef_call1299477 = mul nuw nsw i64 %polly.indvar462, 1200
  %polly.access.add.Packed_MemRef_call2301482 = add nuw nsw i64 %172, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call2301483 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301482
  %_p_scalar_484 = load double, double* %polly.access.Packed_MemRef_call2301483, align 8
  %polly.access.Packed_MemRef_call1299491 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call2301482
  %_p_scalar_492 = load double, double* %polly.access.Packed_MemRef_call1299491, align 8
  br label %polly.loop_header471

polly.loop_exit473:                               ; preds = %polly.loop_header471
  %polly.access.add.Packed_MemRef_call2301482.1 = add nuw nsw i64 %177, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call2301483.1 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301482.1
  %_p_scalar_484.1 = load double, double* %polly.access.Packed_MemRef_call2301483.1, align 8
  %polly.access.Packed_MemRef_call1299491.1 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call2301482.1
  %_p_scalar_492.1 = load double, double* %polly.access.Packed_MemRef_call1299491.1, align 8
  br label %polly.loop_header471.1

polly.loop_header471:                             ; preds = %polly.loop_header471, %polly.loop_header459
  %polly.indvar474 = phi i64 [ 0, %polly.loop_header459 ], [ %polly.indvar_next475, %polly.loop_header471 ]
  %199 = add nuw nsw i64 %polly.indvar474, %154
  %polly.access.add.Packed_MemRef_call1299478 = add nuw nsw i64 %polly.indvar474, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call1299479 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299478
  %_p_scalar_480 = load double, double* %polly.access.Packed_MemRef_call1299479, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_484, %_p_scalar_480
  %polly.access.Packed_MemRef_call2301487 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call1299478
  %_p_scalar_488 = load double, double* %polly.access.Packed_MemRef_call2301487, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_492, %_p_scalar_488
  %200 = shl i64 %199, 3
  %201 = add nuw nsw i64 %200, %176
  %scevgep493 = getelementptr i8, i8* %call, i64 %201
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
  %malloccall500 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall502 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header586

polly.exiting499:                                 ; preds = %polly.loop_exit626
  tail call void @free(i8* nonnull %malloccall500)
  tail call void @free(i8* nonnull %malloccall502)
  br label %kernel_syr2k.exit

polly.loop_header586:                             ; preds = %polly.loop_exit594, %polly.start498
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit594 ], [ 0, %polly.start498 ]
  %polly.indvar589 = phi i64 [ %polly.indvar_next590, %polly.loop_exit594 ], [ 1, %polly.start498 ]
  %202 = add i64 %indvar, 1
  %203 = mul nuw nsw i64 %polly.indvar589, 9600
  %scevgep598 = getelementptr i8, i8* %call, i64 %203
  %min.iters.check1110 = icmp ult i64 %202, 4
  br i1 %min.iters.check1110, label %polly.loop_header592.preheader, label %vector.ph1111

vector.ph1111:                                    ; preds = %polly.loop_header586
  %n.vec1113 = and i64 %202, -4
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %vector.ph1111
  %index1114 = phi i64 [ 0, %vector.ph1111 ], [ %index.next1115, %vector.body1109 ]
  %204 = shl nuw nsw i64 %index1114, 3
  %205 = getelementptr i8, i8* %scevgep598, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  %wide.load1118 = load <4 x double>, <4 x double>* %206, align 8, !alias.scope !94, !noalias !96
  %207 = fmul fast <4 x double> %wide.load1118, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %208 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %207, <4 x double>* %208, align 8, !alias.scope !94, !noalias !96
  %index.next1115 = add i64 %index1114, 4
  %209 = icmp eq i64 %index.next1115, %n.vec1113
  br i1 %209, label %middle.block1107, label %vector.body1109, !llvm.loop !101

middle.block1107:                                 ; preds = %vector.body1109
  %cmp.n1117 = icmp eq i64 %202, %n.vec1113
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
  %210 = shl nuw nsw i64 %polly.indvar595, 3
  %scevgep599 = getelementptr i8, i8* %scevgep598, i64 %210
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
  %211 = shl nsw i64 %polly.indvar605, 3
  br label %polly.loop_header608

polly.loop_exit626:                               ; preds = %polly.loop_exit663
  %polly.indvar_next606 = add nuw nsw i64 %polly.indvar605, 1
  %indvars.iv.next968 = add nsw i64 %indvars.iv967, -8
  %exitcond984.not = icmp eq i64 %polly.indvar_next606, 150
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
  %212 = mul nsw i64 %polly.indvar605, -8
  %polly.access.mul.call1643 = mul nsw i64 %polly.indvar605, 8000
  %213 = or i64 %211, 1
  %polly.access.mul.call1643.1 = mul nuw nsw i64 %213, 1000
  %214 = or i64 %211, 2
  %polly.access.mul.call1643.2 = mul nuw nsw i64 %214, 1000
  %215 = or i64 %211, 3
  %polly.access.mul.call1643.3 = mul nuw nsw i64 %215, 1000
  %216 = or i64 %211, 4
  %polly.access.mul.call1643.4 = mul nuw nsw i64 %216, 1000
  %217 = or i64 %211, 5
  %polly.access.mul.call1643.5 = mul nuw nsw i64 %217, 1000
  %218 = or i64 %211, 6
  %polly.access.mul.call1643.6 = mul nuw nsw i64 %218, 1000
  %219 = or i64 %211, 7
  %polly.access.mul.call1643.7 = mul nuw nsw i64 %219, 1000
  %polly.access.mul.call1643.us = mul nsw i64 %polly.indvar605, 8000
  %220 = or i64 %211, 1
  %polly.access.mul.call1643.us.1 = mul nuw nsw i64 %220, 1000
  %221 = or i64 %211, 2
  %polly.access.mul.call1643.us.2 = mul nuw nsw i64 %221, 1000
  %222 = or i64 %211, 3
  %polly.access.mul.call1643.us.3 = mul nuw nsw i64 %222, 1000
  %223 = or i64 %211, 4
  %polly.access.mul.call1643.us.4 = mul nuw nsw i64 %223, 1000
  %224 = or i64 %211, 5
  %polly.access.mul.call1643.us.5 = mul nuw nsw i64 %224, 1000
  %225 = or i64 %211, 6
  %polly.access.mul.call1643.us.6 = mul nuw nsw i64 %225, 1000
  %226 = or i64 %211, 7
  %polly.access.mul.call1643.us.7 = mul nuw nsw i64 %226, 1000
  br label %polly.loop_header624

polly.loop_header614:                             ; preds = %polly.loop_header614, %polly.loop_header608
  %polly.indvar617 = phi i64 [ 0, %polly.loop_header608 ], [ %polly.indvar_next618, %polly.loop_header614 ]
  %227 = add nuw nsw i64 %polly.indvar617, %211
  %polly.access.mul.call2621 = mul nuw nsw i64 %227, 1000
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
  %indvars.iv975 = phi i64 [ 0, %polly.loop_header624.preheader ], [ %indvars.iv.next976, %polly.loop_exit663 ]
  %polly.indvar627 = phi i64 [ %polly.indvar605, %polly.loop_header624.preheader ], [ %polly.indvar_next628, %polly.loop_exit663 ]
  %228 = shl nsw i64 %polly.indvar627, 3
  %229 = add nsw i64 %228, %212
  %230 = icmp ugt i64 %229, 8
  %231 = select i1 %230, i64 %229, i64 8
  %232 = or i64 %229, 7
  %polly.loop_guard650.not = icmp ugt i64 %231, %232
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
  %polly.access.add.call1644.us.4 = add nuw nsw i64 %polly.access.mul.call1643.us.4, %polly.indvar633.us
  %polly.access.call1645.us.4 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644.us.4
  %polly.access.call1645.load.us.4 = load double, double* %polly.access.call1645.us.4, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1501.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1501.us, 4
  %polly.access.Packed_MemRef_call1501.us.4 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.us.4
  store double %polly.access.call1645.load.us.4, double* %polly.access.Packed_MemRef_call1501.us.4, align 8
  %polly.access.add.call1644.us.5 = add nuw nsw i64 %polly.access.mul.call1643.us.5, %polly.indvar633.us
  %polly.access.call1645.us.5 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644.us.5
  %polly.access.call1645.load.us.5 = load double, double* %polly.access.call1645.us.5, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1501.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1501.us, 5
  %polly.access.Packed_MemRef_call1501.us.5 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.us.5
  store double %polly.access.call1645.load.us.5, double* %polly.access.Packed_MemRef_call1501.us.5, align 8
  %polly.access.add.call1644.us.6 = add nuw nsw i64 %polly.access.mul.call1643.us.6, %polly.indvar633.us
  %polly.access.call1645.us.6 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644.us.6
  %polly.access.call1645.load.us.6 = load double, double* %polly.access.call1645.us.6, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1501.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1501.us, 6
  %polly.access.Packed_MemRef_call1501.us.6 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.us.6
  store double %polly.access.call1645.load.us.6, double* %polly.access.Packed_MemRef_call1501.us.6, align 8
  %polly.access.add.call1644.us.7 = add nuw nsw i64 %polly.access.mul.call1643.us.7, %polly.indvar633.us
  %polly.access.call1645.us.7 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644.us.7
  %polly.access.call1645.load.us.7 = load double, double* %polly.access.call1645.us.7, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1501.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1501.us, 7
  %polly.access.Packed_MemRef_call1501.us.7 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.us.7
  store double %polly.access.call1645.load.us.7, double* %polly.access.Packed_MemRef_call1501.us.7, align 8
  %polly.indvar_next634.us = add nuw nsw i64 %polly.indvar633.us, 1
  %exitcond974.not = icmp eq i64 %polly.indvar_next634.us, 1000
  br i1 %exitcond974.not, label %polly.loop_header661.preheader, label %polly.loop_header630.us

polly.loop_exit663:                               ; preds = %polly.loop_exit675.7
  %polly.indvar_next628 = add nuw nsw i64 %polly.indvar627, 1
  %indvars.iv.next976 = add nuw nsw i64 %indvars.iv975, 8
  %exitcond983.not = icmp eq i64 %polly.indvar_next628, 150
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
  %polly.access.add.call1644.4 = add nuw nsw i64 %polly.access.mul.call1643.4, %polly.indvar633
  %polly.access.call1645.4 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644.4
  %polly.access.call1645.load.4 = load double, double* %polly.access.call1645.4, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1501.4 = or i64 %polly.access.mul.Packed_MemRef_call1501, 4
  %polly.access.Packed_MemRef_call1501.4 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.4
  store double %polly.access.call1645.load.4, double* %polly.access.Packed_MemRef_call1501.4, align 8
  %polly.access.add.call1644.5 = add nuw nsw i64 %polly.access.mul.call1643.5, %polly.indvar633
  %polly.access.call1645.5 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644.5
  %polly.access.call1645.load.5 = load double, double* %polly.access.call1645.5, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1501.5 = or i64 %polly.access.mul.Packed_MemRef_call1501, 5
  %polly.access.Packed_MemRef_call1501.5 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.5
  store double %polly.access.call1645.load.5, double* %polly.access.Packed_MemRef_call1501.5, align 8
  %polly.access.add.call1644.6 = add nuw nsw i64 %polly.access.mul.call1643.6, %polly.indvar633
  %polly.access.call1645.6 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644.6
  %polly.access.call1645.load.6 = load double, double* %polly.access.call1645.6, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1501.6 = or i64 %polly.access.mul.Packed_MemRef_call1501, 6
  %polly.access.Packed_MemRef_call1501.6 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.6
  store double %polly.access.call1645.load.6, double* %polly.access.Packed_MemRef_call1501.6, align 8
  %polly.access.add.call1644.7 = add nuw nsw i64 %polly.access.mul.call1643.7, %polly.indvar633
  %polly.access.call1645.7 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644.7
  %polly.access.call1645.load.7 = load double, double* %polly.access.call1645.7, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1501.7 = or i64 %polly.access.mul.Packed_MemRef_call1501, 7
  %polly.access.Packed_MemRef_call1501.7 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.7
  store double %polly.access.call1645.load.7, double* %polly.access.Packed_MemRef_call1501.7, align 8
  br label %polly.loop_header647

polly.loop_exit649:                               ; preds = %polly.loop_header647
  %polly.indvar_next634 = add nuw nsw i64 %polly.indvar633, 1
  %exitcond972.not = icmp eq i64 %polly.indvar_next634, 1000
  br i1 %exitcond972.not, label %polly.loop_header661.preheader, label %polly.loop_header630

polly.loop_header661.preheader:                   ; preds = %polly.loop_exit649, %polly.loop_header630.us
  %smin979 = call i64 @llvm.smin.i64(i64 %indvars.iv975, i64 7)
  %233 = mul nsw i64 %polly.indvar627, 76800
  %indvars.iv.next978 = or i64 %indvars.iv975, 1
  %smin979.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next978, i64 7)
  %234 = or i64 %229, 1
  %235 = or i64 %228, 1
  %236 = mul nuw nsw i64 %235, 9600
  %indvars.iv.next978.1 = add nuw nsw i64 %indvars.iv.next978, 1
  %smin979.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next978.1, i64 7)
  %237 = or i64 %229, 2
  %238 = or i64 %228, 2
  %239 = mul nuw nsw i64 %238, 9600
  %indvars.iv.next978.2 = or i64 %indvars.iv975, 3
  %smin979.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next978.2, i64 7)
  %240 = or i64 %229, 3
  %241 = or i64 %228, 3
  %242 = mul nuw nsw i64 %241, 9600
  %indvars.iv.next978.3 = add nuw nsw i64 %indvars.iv.next978.2, 1
  %smin979.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next978.3, i64 7)
  %243 = or i64 %229, 4
  %244 = or i64 %228, 4
  %245 = mul nuw nsw i64 %244, 9600
  %indvars.iv.next978.4 = add nuw nsw i64 %indvars.iv.next978.2, 2
  %smin979.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next978.4, i64 7)
  %246 = or i64 %229, 5
  %247 = or i64 %228, 5
  %248 = mul nuw nsw i64 %247, 9600
  %indvars.iv.next978.5 = add nuw nsw i64 %indvars.iv.next978.2, 3
  %smin979.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next978.5, i64 7)
  %249 = or i64 %229, 6
  %250 = or i64 %228, 6
  %251 = mul nuw nsw i64 %250, 9600
  %252 = or i64 %229, 7
  %253 = or i64 %228, 7
  %254 = mul nuw nsw i64 %253, 9600
  br label %polly.loop_header661

polly.loop_header647:                             ; preds = %polly.loop_header630, %polly.loop_header647
  %polly.indvar651 = phi i64 [ %polly.indvar_next652, %polly.loop_header647 ], [ %231, %polly.loop_header630 ]
  %255 = add nuw nsw i64 %polly.indvar651, %211
  %polly.access.mul.call1655 = mul nuw nsw i64 %255, 1000
  %polly.access.add.call1656 = add nuw nsw i64 %polly.access.mul.call1655, %polly.indvar633
  %polly.access.call1657 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1656
  %polly.access.call1657.load = load double, double* %polly.access.call1657, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1501659 = add nuw nsw i64 %polly.indvar651, %polly.access.mul.Packed_MemRef_call1501
  %polly.access.Packed_MemRef_call1501660 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501659
  store double %polly.access.call1657.load, double* %polly.access.Packed_MemRef_call1501660, align 8
  %polly.indvar_next652 = add nuw nsw i64 %polly.indvar651, 1
  %polly.loop_cond653.not.not = icmp ult i64 %polly.indvar651, %232
  br i1 %polly.loop_cond653.not.not, label %polly.loop_header647, label %polly.loop_exit649

polly.loop_header661:                             ; preds = %polly.loop_header661.preheader, %polly.loop_exit675.7
  %polly.indvar664 = phi i64 [ %polly.indvar_next665, %polly.loop_exit675.7 ], [ 0, %polly.loop_header661.preheader ]
  %polly.access.mul.Packed_MemRef_call1501679 = mul nuw nsw i64 %polly.indvar664, 1200
  %polly.access.add.Packed_MemRef_call2503684 = add nuw nsw i64 %229, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call2503685 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503684
  %_p_scalar_686 = load double, double* %polly.access.Packed_MemRef_call2503685, align 8
  %polly.access.Packed_MemRef_call1501693 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call2503684
  %_p_scalar_694 = load double, double* %polly.access.Packed_MemRef_call1501693, align 8
  br label %polly.loop_header673

polly.loop_exit675:                               ; preds = %polly.loop_header673
  %polly.access.add.Packed_MemRef_call2503684.1 = add nuw nsw i64 %234, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call2503685.1 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503684.1
  %_p_scalar_686.1 = load double, double* %polly.access.Packed_MemRef_call2503685.1, align 8
  %polly.access.Packed_MemRef_call1501693.1 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call2503684.1
  %_p_scalar_694.1 = load double, double* %polly.access.Packed_MemRef_call1501693.1, align 8
  br label %polly.loop_header673.1

polly.loop_header673:                             ; preds = %polly.loop_header673, %polly.loop_header661
  %polly.indvar676 = phi i64 [ 0, %polly.loop_header661 ], [ %polly.indvar_next677, %polly.loop_header673 ]
  %256 = add nuw nsw i64 %polly.indvar676, %211
  %polly.access.add.Packed_MemRef_call1501680 = add nuw nsw i64 %polly.indvar676, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call1501681 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501680
  %_p_scalar_682 = load double, double* %polly.access.Packed_MemRef_call1501681, align 8
  %p_mul27.i = fmul fast double %_p_scalar_686, %_p_scalar_682
  %polly.access.Packed_MemRef_call2503689 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call1501680
  %_p_scalar_690 = load double, double* %polly.access.Packed_MemRef_call2503689, align 8
  %p_mul37.i = fmul fast double %_p_scalar_694, %_p_scalar_690
  %257 = shl i64 %256, 3
  %258 = add nuw nsw i64 %257, %233
  %scevgep695 = getelementptr i8, i8* %call, i64 %258
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
  %259 = shl nsw i64 %polly.indvar827, 5
  %260 = add nsw i64 %smin1013, 1199
  br label %polly.loop_header830

polly.loop_exit832:                               ; preds = %polly.loop_exit838
  %polly.indvar_next828 = add nuw nsw i64 %polly.indvar827, 1
  %indvars.iv.next1012 = add nsw i64 %indvars.iv1011, -32
  %exitcond1016.not = icmp eq i64 %polly.indvar_next828, 38
  br i1 %exitcond1016.not, label %polly.loop_header851, label %polly.loop_header824

polly.loop_header830:                             ; preds = %polly.loop_exit838, %polly.loop_header824
  %indvars.iv1007 = phi i64 [ %indvars.iv.next1008, %polly.loop_exit838 ], [ 0, %polly.loop_header824 ]
  %polly.indvar833 = phi i64 [ %polly.indvar_next834, %polly.loop_exit838 ], [ 0, %polly.loop_header824 ]
  %261 = mul nsw i64 %polly.indvar833, -32
  %smin1048 = call i64 @llvm.smin.i64(i64 %261, i64 -1168)
  %262 = add nsw i64 %smin1048, 1200
  %smin1009 = call i64 @llvm.smin.i64(i64 %indvars.iv1007, i64 -1168)
  %263 = shl nsw i64 %polly.indvar833, 5
  %264 = add nsw i64 %smin1009, 1199
  br label %polly.loop_header836

polly.loop_exit838:                               ; preds = %polly.loop_exit844
  %polly.indvar_next834 = add nuw nsw i64 %polly.indvar833, 1
  %indvars.iv.next1008 = add nsw i64 %indvars.iv1007, -32
  %exitcond1015.not = icmp eq i64 %polly.indvar_next834, 38
  br i1 %exitcond1015.not, label %polly.loop_exit832, label %polly.loop_header830

polly.loop_header836:                             ; preds = %polly.loop_exit844, %polly.loop_header830
  %polly.indvar839 = phi i64 [ 0, %polly.loop_header830 ], [ %polly.indvar_next840, %polly.loop_exit844 ]
  %265 = add nuw nsw i64 %polly.indvar839, %259
  %266 = trunc i64 %265 to i32
  %267 = mul nuw nsw i64 %265, 9600
  %min.iters.check = icmp eq i64 %262, 0
  br i1 %min.iters.check, label %polly.loop_header842, label %vector.ph1049

vector.ph1049:                                    ; preds = %polly.loop_header836
  %broadcast.splatinsert1056 = insertelement <4 x i64> poison, i64 %263, i32 0
  %broadcast.splat1057 = shufflevector <4 x i64> %broadcast.splatinsert1056, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1058 = insertelement <4 x i32> poison, i32 %266, i32 0
  %broadcast.splat1059 = shufflevector <4 x i32> %broadcast.splatinsert1058, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1047

vector.body1047:                                  ; preds = %vector.body1047, %vector.ph1049
  %index1050 = phi i64 [ 0, %vector.ph1049 ], [ %index.next1051, %vector.body1047 ]
  %vec.ind1054 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1049 ], [ %vec.ind.next1055, %vector.body1047 ]
  %268 = add nuw nsw <4 x i64> %vec.ind1054, %broadcast.splat1057
  %269 = trunc <4 x i64> %268 to <4 x i32>
  %270 = mul <4 x i32> %broadcast.splat1059, %269
  %271 = add <4 x i32> %270, <i32 3, i32 3, i32 3, i32 3>
  %272 = urem <4 x i32> %271, <i32 1200, i32 1200, i32 1200, i32 1200>
  %273 = sitofp <4 x i32> %272 to <4 x double>
  %274 = fmul fast <4 x double> %273, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %275 = extractelement <4 x i64> %268, i32 0
  %276 = shl i64 %275, 3
  %277 = add nuw nsw i64 %276, %267
  %278 = getelementptr i8, i8* %call, i64 %277
  %279 = bitcast i8* %278 to <4 x double>*
  store <4 x double> %274, <4 x double>* %279, align 8, !alias.scope !105, !noalias !107
  %index.next1051 = add i64 %index1050, 4
  %vec.ind.next1055 = add <4 x i64> %vec.ind1054, <i64 4, i64 4, i64 4, i64 4>
  %280 = icmp eq i64 %index.next1051, %262
  br i1 %280, label %polly.loop_exit844, label %vector.body1047, !llvm.loop !110

polly.loop_exit844:                               ; preds = %vector.body1047, %polly.loop_header842
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar839, %260
  br i1 %exitcond1014.not, label %polly.loop_exit838, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_header836, %polly.loop_header842
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_header842 ], [ 0, %polly.loop_header836 ]
  %281 = add nuw nsw i64 %polly.indvar845, %263
  %282 = trunc i64 %281 to i32
  %283 = mul i32 %282, %266
  %284 = add i32 %283, 3
  %285 = urem i32 %284, 1200
  %p_conv31.i = sitofp i32 %285 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %286 = shl i64 %281, 3
  %287 = add nuw nsw i64 %286, %267
  %scevgep848 = getelementptr i8, i8* %call, i64 %287
  %scevgep848849 = bitcast i8* %scevgep848 to double*
  store double %p_div33.i, double* %scevgep848849, align 8, !alias.scope !105, !noalias !107
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar845, %264
  br i1 %exitcond1010.not, label %polly.loop_exit844, label %polly.loop_header842, !llvm.loop !111

polly.loop_header851:                             ; preds = %polly.loop_exit832, %polly.loop_exit859
  %indvars.iv1001 = phi i64 [ %indvars.iv.next1002, %polly.loop_exit859 ], [ 0, %polly.loop_exit832 ]
  %polly.indvar854 = phi i64 [ %polly.indvar_next855, %polly.loop_exit859 ], [ 0, %polly.loop_exit832 ]
  %smin1003 = call i64 @llvm.smin.i64(i64 %indvars.iv1001, i64 -1168)
  %288 = shl nsw i64 %polly.indvar854, 5
  %289 = add nsw i64 %smin1003, 1199
  br label %polly.loop_header857

polly.loop_exit859:                               ; preds = %polly.loop_exit865
  %polly.indvar_next855 = add nuw nsw i64 %polly.indvar854, 1
  %indvars.iv.next1002 = add nsw i64 %indvars.iv1001, -32
  %exitcond1006.not = icmp eq i64 %polly.indvar_next855, 38
  br i1 %exitcond1006.not, label %polly.loop_header877, label %polly.loop_header851

polly.loop_header857:                             ; preds = %polly.loop_exit865, %polly.loop_header851
  %indvars.iv997 = phi i64 [ %indvars.iv.next998, %polly.loop_exit865 ], [ 0, %polly.loop_header851 ]
  %polly.indvar860 = phi i64 [ %polly.indvar_next861, %polly.loop_exit865 ], [ 0, %polly.loop_header851 ]
  %290 = mul nsw i64 %polly.indvar860, -32
  %smin1063 = call i64 @llvm.smin.i64(i64 %290, i64 -968)
  %291 = add nsw i64 %smin1063, 1000
  %smin999 = call i64 @llvm.smin.i64(i64 %indvars.iv997, i64 -968)
  %292 = shl nsw i64 %polly.indvar860, 5
  %293 = add nsw i64 %smin999, 999
  br label %polly.loop_header863

polly.loop_exit865:                               ; preds = %polly.loop_exit871
  %polly.indvar_next861 = add nuw nsw i64 %polly.indvar860, 1
  %indvars.iv.next998 = add nsw i64 %indvars.iv997, -32
  %exitcond1005.not = icmp eq i64 %polly.indvar_next861, 32
  br i1 %exitcond1005.not, label %polly.loop_exit859, label %polly.loop_header857

polly.loop_header863:                             ; preds = %polly.loop_exit871, %polly.loop_header857
  %polly.indvar866 = phi i64 [ 0, %polly.loop_header857 ], [ %polly.indvar_next867, %polly.loop_exit871 ]
  %294 = add nuw nsw i64 %polly.indvar866, %288
  %295 = trunc i64 %294 to i32
  %296 = mul nuw nsw i64 %294, 8000
  %min.iters.check1064 = icmp eq i64 %291, 0
  br i1 %min.iters.check1064, label %polly.loop_header869, label %vector.ph1065

vector.ph1065:                                    ; preds = %polly.loop_header863
  %broadcast.splatinsert1074 = insertelement <4 x i64> poison, i64 %292, i32 0
  %broadcast.splat1075 = shufflevector <4 x i64> %broadcast.splatinsert1074, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1076 = insertelement <4 x i32> poison, i32 %295, i32 0
  %broadcast.splat1077 = shufflevector <4 x i32> %broadcast.splatinsert1076, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %vector.ph1065
  %index1068 = phi i64 [ 0, %vector.ph1065 ], [ %index.next1069, %vector.body1062 ]
  %vec.ind1072 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1065 ], [ %vec.ind.next1073, %vector.body1062 ]
  %297 = add nuw nsw <4 x i64> %vec.ind1072, %broadcast.splat1075
  %298 = trunc <4 x i64> %297 to <4 x i32>
  %299 = mul <4 x i32> %broadcast.splat1077, %298
  %300 = add <4 x i32> %299, <i32 2, i32 2, i32 2, i32 2>
  %301 = urem <4 x i32> %300, <i32 1000, i32 1000, i32 1000, i32 1000>
  %302 = sitofp <4 x i32> %301 to <4 x double>
  %303 = fmul fast <4 x double> %302, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %304 = extractelement <4 x i64> %297, i32 0
  %305 = shl i64 %304, 3
  %306 = add nuw nsw i64 %305, %296
  %307 = getelementptr i8, i8* %call2, i64 %306
  %308 = bitcast i8* %307 to <4 x double>*
  store <4 x double> %303, <4 x double>* %308, align 8, !alias.scope !109, !noalias !112
  %index.next1069 = add i64 %index1068, 4
  %vec.ind.next1073 = add <4 x i64> %vec.ind1072, <i64 4, i64 4, i64 4, i64 4>
  %309 = icmp eq i64 %index.next1069, %291
  br i1 %309, label %polly.loop_exit871, label %vector.body1062, !llvm.loop !113

polly.loop_exit871:                               ; preds = %vector.body1062, %polly.loop_header869
  %polly.indvar_next867 = add nuw nsw i64 %polly.indvar866, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar866, %289
  br i1 %exitcond1004.not, label %polly.loop_exit865, label %polly.loop_header863

polly.loop_header869:                             ; preds = %polly.loop_header863, %polly.loop_header869
  %polly.indvar872 = phi i64 [ %polly.indvar_next873, %polly.loop_header869 ], [ 0, %polly.loop_header863 ]
  %310 = add nuw nsw i64 %polly.indvar872, %292
  %311 = trunc i64 %310 to i32
  %312 = mul i32 %311, %295
  %313 = add i32 %312, 2
  %314 = urem i32 %313, 1000
  %p_conv10.i = sitofp i32 %314 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %315 = shl i64 %310, 3
  %316 = add nuw nsw i64 %315, %296
  %scevgep875 = getelementptr i8, i8* %call2, i64 %316
  %scevgep875876 = bitcast i8* %scevgep875 to double*
  store double %p_div12.i, double* %scevgep875876, align 8, !alias.scope !109, !noalias !112
  %polly.indvar_next873 = add nuw nsw i64 %polly.indvar872, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar872, %293
  br i1 %exitcond1000.not, label %polly.loop_exit871, label %polly.loop_header869, !llvm.loop !114

polly.loop_header877:                             ; preds = %polly.loop_exit859, %polly.loop_exit885
  %indvars.iv991 = phi i64 [ %indvars.iv.next992, %polly.loop_exit885 ], [ 0, %polly.loop_exit859 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_exit859 ]
  %smin993 = call i64 @llvm.smin.i64(i64 %indvars.iv991, i64 -1168)
  %317 = shl nsw i64 %polly.indvar880, 5
  %318 = add nsw i64 %smin993, 1199
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next992 = add nsw i64 %indvars.iv991, -32
  %exitcond996.not = icmp eq i64 %polly.indvar_next881, 38
  br i1 %exitcond996.not, label %init_array.exit, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %indvars.iv987 = phi i64 [ %indvars.iv.next988, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %319 = mul nsw i64 %polly.indvar886, -32
  %smin1081 = call i64 @llvm.smin.i64(i64 %319, i64 -968)
  %320 = add nsw i64 %smin1081, 1000
  %smin989 = call i64 @llvm.smin.i64(i64 %indvars.iv987, i64 -968)
  %321 = shl nsw i64 %polly.indvar886, 5
  %322 = add nsw i64 %smin989, 999
  br label %polly.loop_header889

polly.loop_exit891:                               ; preds = %polly.loop_exit897
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %indvars.iv.next988 = add nsw i64 %indvars.iv987, -32
  %exitcond995.not = icmp eq i64 %polly.indvar_next887, 32
  br i1 %exitcond995.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_exit897, %polly.loop_header883
  %polly.indvar892 = phi i64 [ 0, %polly.loop_header883 ], [ %polly.indvar_next893, %polly.loop_exit897 ]
  %323 = add nuw nsw i64 %polly.indvar892, %317
  %324 = trunc i64 %323 to i32
  %325 = mul nuw nsw i64 %323, 8000
  %min.iters.check1082 = icmp eq i64 %320, 0
  br i1 %min.iters.check1082, label %polly.loop_header895, label %vector.ph1083

vector.ph1083:                                    ; preds = %polly.loop_header889
  %broadcast.splatinsert1092 = insertelement <4 x i64> poison, i64 %321, i32 0
  %broadcast.splat1093 = shufflevector <4 x i64> %broadcast.splatinsert1092, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1094 = insertelement <4 x i32> poison, i32 %324, i32 0
  %broadcast.splat1095 = shufflevector <4 x i32> %broadcast.splatinsert1094, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1080

vector.body1080:                                  ; preds = %vector.body1080, %vector.ph1083
  %index1086 = phi i64 [ 0, %vector.ph1083 ], [ %index.next1087, %vector.body1080 ]
  %vec.ind1090 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1083 ], [ %vec.ind.next1091, %vector.body1080 ]
  %326 = add nuw nsw <4 x i64> %vec.ind1090, %broadcast.splat1093
  %327 = trunc <4 x i64> %326 to <4 x i32>
  %328 = mul <4 x i32> %broadcast.splat1095, %327
  %329 = add <4 x i32> %328, <i32 1, i32 1, i32 1, i32 1>
  %330 = urem <4 x i32> %329, <i32 1200, i32 1200, i32 1200, i32 1200>
  %331 = sitofp <4 x i32> %330 to <4 x double>
  %332 = fmul fast <4 x double> %331, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %333 = extractelement <4 x i64> %326, i32 0
  %334 = shl i64 %333, 3
  %335 = add nuw nsw i64 %334, %325
  %336 = getelementptr i8, i8* %call1, i64 %335
  %337 = bitcast i8* %336 to <4 x double>*
  store <4 x double> %332, <4 x double>* %337, align 8, !alias.scope !108, !noalias !115
  %index.next1087 = add i64 %index1086, 4
  %vec.ind.next1091 = add <4 x i64> %vec.ind1090, <i64 4, i64 4, i64 4, i64 4>
  %338 = icmp eq i64 %index.next1087, %320
  br i1 %338, label %polly.loop_exit897, label %vector.body1080, !llvm.loop !116

polly.loop_exit897:                               ; preds = %vector.body1080, %polly.loop_header895
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond994.not = icmp eq i64 %polly.indvar892, %318
  br i1 %exitcond994.not, label %polly.loop_exit891, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_header889, %polly.loop_header895
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_header895 ], [ 0, %polly.loop_header889 ]
  %339 = add nuw nsw i64 %polly.indvar898, %321
  %340 = trunc i64 %339 to i32
  %341 = mul i32 %340, %324
  %342 = add i32 %341, 1
  %343 = urem i32 %342, 1200
  %p_conv.i = sitofp i32 %343 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %344 = shl i64 %339, 3
  %345 = add nuw nsw i64 %344, %325
  %scevgep902 = getelementptr i8, i8* %call1, i64 %345
  %scevgep902903 = bitcast i8* %scevgep902 to double*
  store double %p_div.i, double* %scevgep902903, align 8, !alias.scope !108, !noalias !115
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %exitcond990.not = icmp eq i64 %polly.indvar898, %322
  br i1 %exitcond990.not, label %polly.loop_exit897, label %polly.loop_header895, !llvm.loop !117

polly.loop_header269.1:                           ; preds = %polly.loop_header269.1, %polly.loop_exit271
  %polly.indvar272.1 = phi i64 [ 0, %polly.loop_exit271 ], [ %polly.indvar_next273.1, %polly.loop_header269.1 ]
  %346 = add nuw nsw i64 %polly.indvar272.1, %97
  %polly.access.add.Packed_MemRef_call1276.1 = add nuw nsw i64 %polly.indvar272.1, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call1277.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276.1
  %_p_scalar_278.1 = load double, double* %polly.access.Packed_MemRef_call1277.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_282.1, %_p_scalar_278.1
  %polly.access.Packed_MemRef_call2285.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1276.1
  %_p_scalar_286.1 = load double, double* %polly.access.Packed_MemRef_call2285.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_290.1, %_p_scalar_286.1
  %347 = shl i64 %346, 3
  %348 = add nuw nsw i64 %347, %122
  %scevgep291.1 = getelementptr i8, i8* %call, i64 %348
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
  %polly.access.add.Packed_MemRef_call2280.2 = add nuw nsw i64 %123, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call2281.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280.2
  %_p_scalar_282.2 = load double, double* %polly.access.Packed_MemRef_call2281.2, align 8
  %polly.access.Packed_MemRef_call1289.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2280.2
  %_p_scalar_290.2 = load double, double* %polly.access.Packed_MemRef_call1289.2, align 8
  br label %polly.loop_header269.2

polly.loop_header269.2:                           ; preds = %polly.loop_header269.2, %polly.loop_exit271.1
  %polly.indvar272.2 = phi i64 [ 0, %polly.loop_exit271.1 ], [ %polly.indvar_next273.2, %polly.loop_header269.2 ]
  %349 = add nuw nsw i64 %polly.indvar272.2, %97
  %polly.access.add.Packed_MemRef_call1276.2 = add nuw nsw i64 %polly.indvar272.2, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call1277.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276.2
  %_p_scalar_278.2 = load double, double* %polly.access.Packed_MemRef_call1277.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_282.2, %_p_scalar_278.2
  %polly.access.Packed_MemRef_call2285.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1276.2
  %_p_scalar_286.2 = load double, double* %polly.access.Packed_MemRef_call2285.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_290.2, %_p_scalar_286.2
  %350 = shl i64 %349, 3
  %351 = add nuw nsw i64 %350, %125
  %scevgep291.2 = getelementptr i8, i8* %call, i64 %351
  %scevgep291292.2 = bitcast i8* %scevgep291.2 to double*
  %_p_scalar_293.2 = load double, double* %scevgep291292.2, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_293.2
  store double %p_add42.i118.2, double* %scevgep291292.2, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next273.2 = add nuw nsw i64 %polly.indvar272.2, 1
  %exitcond940.2.not = icmp eq i64 %polly.indvar272.2, %smin.2
  br i1 %exitcond940.2.not, label %polly.loop_exit271.2, label %polly.loop_header269.2

polly.loop_exit271.2:                             ; preds = %polly.loop_header269.2
  %polly.access.add.Packed_MemRef_call2280.3 = add nuw nsw i64 %126, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call2281.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280.3
  %_p_scalar_282.3 = load double, double* %polly.access.Packed_MemRef_call2281.3, align 8
  %polly.access.Packed_MemRef_call1289.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2280.3
  %_p_scalar_290.3 = load double, double* %polly.access.Packed_MemRef_call1289.3, align 8
  br label %polly.loop_header269.3

polly.loop_header269.3:                           ; preds = %polly.loop_header269.3, %polly.loop_exit271.2
  %polly.indvar272.3 = phi i64 [ 0, %polly.loop_exit271.2 ], [ %polly.indvar_next273.3, %polly.loop_header269.3 ]
  %352 = add nuw nsw i64 %polly.indvar272.3, %97
  %polly.access.add.Packed_MemRef_call1276.3 = add nuw nsw i64 %polly.indvar272.3, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call1277.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276.3
  %_p_scalar_278.3 = load double, double* %polly.access.Packed_MemRef_call1277.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_282.3, %_p_scalar_278.3
  %polly.access.Packed_MemRef_call2285.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1276.3
  %_p_scalar_286.3 = load double, double* %polly.access.Packed_MemRef_call2285.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_290.3, %_p_scalar_286.3
  %353 = shl i64 %352, 3
  %354 = add nuw nsw i64 %353, %128
  %scevgep291.3 = getelementptr i8, i8* %call, i64 %354
  %scevgep291292.3 = bitcast i8* %scevgep291.3 to double*
  %_p_scalar_293.3 = load double, double* %scevgep291292.3, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_293.3
  store double %p_add42.i118.3, double* %scevgep291292.3, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next273.3 = add nuw nsw i64 %polly.indvar272.3, 1
  %exitcond940.3.not = icmp eq i64 %polly.indvar272.3, %smin.3
  br i1 %exitcond940.3.not, label %polly.loop_exit271.3, label %polly.loop_header269.3

polly.loop_exit271.3:                             ; preds = %polly.loop_header269.3
  %polly.access.add.Packed_MemRef_call2280.4 = add nuw nsw i64 %129, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call2281.4 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280.4
  %_p_scalar_282.4 = load double, double* %polly.access.Packed_MemRef_call2281.4, align 8
  %polly.access.Packed_MemRef_call1289.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2280.4
  %_p_scalar_290.4 = load double, double* %polly.access.Packed_MemRef_call1289.4, align 8
  br label %polly.loop_header269.4

polly.loop_header269.4:                           ; preds = %polly.loop_header269.4, %polly.loop_exit271.3
  %polly.indvar272.4 = phi i64 [ 0, %polly.loop_exit271.3 ], [ %polly.indvar_next273.4, %polly.loop_header269.4 ]
  %355 = add nuw nsw i64 %polly.indvar272.4, %97
  %polly.access.add.Packed_MemRef_call1276.4 = add nuw nsw i64 %polly.indvar272.4, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call1277.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276.4
  %_p_scalar_278.4 = load double, double* %polly.access.Packed_MemRef_call1277.4, align 8
  %p_mul27.i112.4 = fmul fast double %_p_scalar_282.4, %_p_scalar_278.4
  %polly.access.Packed_MemRef_call2285.4 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1276.4
  %_p_scalar_286.4 = load double, double* %polly.access.Packed_MemRef_call2285.4, align 8
  %p_mul37.i114.4 = fmul fast double %_p_scalar_290.4, %_p_scalar_286.4
  %356 = shl i64 %355, 3
  %357 = add nuw nsw i64 %356, %131
  %scevgep291.4 = getelementptr i8, i8* %call, i64 %357
  %scevgep291292.4 = bitcast i8* %scevgep291.4 to double*
  %_p_scalar_293.4 = load double, double* %scevgep291292.4, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_293.4
  store double %p_add42.i118.4, double* %scevgep291292.4, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next273.4 = add nuw nsw i64 %polly.indvar272.4, 1
  %exitcond940.4.not = icmp eq i64 %polly.indvar272.4, %smin.4
  br i1 %exitcond940.4.not, label %polly.loop_exit271.4, label %polly.loop_header269.4

polly.loop_exit271.4:                             ; preds = %polly.loop_header269.4
  %polly.access.add.Packed_MemRef_call2280.5 = add nuw nsw i64 %132, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call2281.5 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280.5
  %_p_scalar_282.5 = load double, double* %polly.access.Packed_MemRef_call2281.5, align 8
  %polly.access.Packed_MemRef_call1289.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2280.5
  %_p_scalar_290.5 = load double, double* %polly.access.Packed_MemRef_call1289.5, align 8
  br label %polly.loop_header269.5

polly.loop_header269.5:                           ; preds = %polly.loop_header269.5, %polly.loop_exit271.4
  %polly.indvar272.5 = phi i64 [ 0, %polly.loop_exit271.4 ], [ %polly.indvar_next273.5, %polly.loop_header269.5 ]
  %358 = add nuw nsw i64 %polly.indvar272.5, %97
  %polly.access.add.Packed_MemRef_call1276.5 = add nuw nsw i64 %polly.indvar272.5, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call1277.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276.5
  %_p_scalar_278.5 = load double, double* %polly.access.Packed_MemRef_call1277.5, align 8
  %p_mul27.i112.5 = fmul fast double %_p_scalar_282.5, %_p_scalar_278.5
  %polly.access.Packed_MemRef_call2285.5 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1276.5
  %_p_scalar_286.5 = load double, double* %polly.access.Packed_MemRef_call2285.5, align 8
  %p_mul37.i114.5 = fmul fast double %_p_scalar_290.5, %_p_scalar_286.5
  %359 = shl i64 %358, 3
  %360 = add nuw nsw i64 %359, %134
  %scevgep291.5 = getelementptr i8, i8* %call, i64 %360
  %scevgep291292.5 = bitcast i8* %scevgep291.5 to double*
  %_p_scalar_293.5 = load double, double* %scevgep291292.5, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.5 = fadd fast double %p_mul37.i114.5, %p_mul27.i112.5
  %p_reass.mul.i117.5 = fmul fast double %p_reass.add.i116.5, 1.500000e+00
  %p_add42.i118.5 = fadd fast double %p_reass.mul.i117.5, %_p_scalar_293.5
  store double %p_add42.i118.5, double* %scevgep291292.5, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next273.5 = add nuw nsw i64 %polly.indvar272.5, 1
  %exitcond940.5.not = icmp eq i64 %polly.indvar272.5, %smin.5
  br i1 %exitcond940.5.not, label %polly.loop_exit271.5, label %polly.loop_header269.5

polly.loop_exit271.5:                             ; preds = %polly.loop_header269.5
  %polly.access.add.Packed_MemRef_call2280.6 = add nuw nsw i64 %135, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call2281.6 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280.6
  %_p_scalar_282.6 = load double, double* %polly.access.Packed_MemRef_call2281.6, align 8
  %polly.access.Packed_MemRef_call1289.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2280.6
  %_p_scalar_290.6 = load double, double* %polly.access.Packed_MemRef_call1289.6, align 8
  br label %polly.loop_header269.6

polly.loop_header269.6:                           ; preds = %polly.loop_header269.6, %polly.loop_exit271.5
  %polly.indvar272.6 = phi i64 [ 0, %polly.loop_exit271.5 ], [ %polly.indvar_next273.6, %polly.loop_header269.6 ]
  %361 = add nuw nsw i64 %polly.indvar272.6, %97
  %polly.access.add.Packed_MemRef_call1276.6 = add nuw nsw i64 %polly.indvar272.6, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call1277.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276.6
  %_p_scalar_278.6 = load double, double* %polly.access.Packed_MemRef_call1277.6, align 8
  %p_mul27.i112.6 = fmul fast double %_p_scalar_282.6, %_p_scalar_278.6
  %polly.access.Packed_MemRef_call2285.6 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1276.6
  %_p_scalar_286.6 = load double, double* %polly.access.Packed_MemRef_call2285.6, align 8
  %p_mul37.i114.6 = fmul fast double %_p_scalar_290.6, %_p_scalar_286.6
  %362 = shl i64 %361, 3
  %363 = add nuw nsw i64 %362, %137
  %scevgep291.6 = getelementptr i8, i8* %call, i64 %363
  %scevgep291292.6 = bitcast i8* %scevgep291.6 to double*
  %_p_scalar_293.6 = load double, double* %scevgep291292.6, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.6 = fadd fast double %p_mul37.i114.6, %p_mul27.i112.6
  %p_reass.mul.i117.6 = fmul fast double %p_reass.add.i116.6, 1.500000e+00
  %p_add42.i118.6 = fadd fast double %p_reass.mul.i117.6, %_p_scalar_293.6
  store double %p_add42.i118.6, double* %scevgep291292.6, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next273.6 = add nuw nsw i64 %polly.indvar272.6, 1
  %exitcond940.6.not = icmp eq i64 %polly.indvar272.6, %smin.6
  br i1 %exitcond940.6.not, label %polly.loop_exit271.6, label %polly.loop_header269.6

polly.loop_exit271.6:                             ; preds = %polly.loop_header269.6
  %polly.access.add.Packed_MemRef_call2280.7 = add nuw nsw i64 %138, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call2281.7 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280.7
  %_p_scalar_282.7 = load double, double* %polly.access.Packed_MemRef_call2281.7, align 8
  %polly.access.Packed_MemRef_call1289.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2280.7
  %_p_scalar_290.7 = load double, double* %polly.access.Packed_MemRef_call1289.7, align 8
  br label %polly.loop_header269.7

polly.loop_header269.7:                           ; preds = %polly.loop_header269.7, %polly.loop_exit271.6
  %polly.indvar272.7 = phi i64 [ 0, %polly.loop_exit271.6 ], [ %polly.indvar_next273.7, %polly.loop_header269.7 ]
  %364 = add nuw nsw i64 %polly.indvar272.7, %97
  %polly.access.add.Packed_MemRef_call1276.7 = add nuw nsw i64 %polly.indvar272.7, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call1277.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276.7
  %_p_scalar_278.7 = load double, double* %polly.access.Packed_MemRef_call1277.7, align 8
  %p_mul27.i112.7 = fmul fast double %_p_scalar_282.7, %_p_scalar_278.7
  %polly.access.Packed_MemRef_call2285.7 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1276.7
  %_p_scalar_286.7 = load double, double* %polly.access.Packed_MemRef_call2285.7, align 8
  %p_mul37.i114.7 = fmul fast double %_p_scalar_290.7, %_p_scalar_286.7
  %365 = shl i64 %364, 3
  %366 = add nuw nsw i64 %365, %140
  %scevgep291.7 = getelementptr i8, i8* %call, i64 %366
  %scevgep291292.7 = bitcast i8* %scevgep291.7 to double*
  %_p_scalar_293.7 = load double, double* %scevgep291292.7, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.7 = fadd fast double %p_mul37.i114.7, %p_mul27.i112.7
  %p_reass.mul.i117.7 = fmul fast double %p_reass.add.i116.7, 1.500000e+00
  %p_add42.i118.7 = fadd fast double %p_reass.mul.i117.7, %_p_scalar_293.7
  store double %p_add42.i118.7, double* %scevgep291292.7, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next273.7 = add nuw nsw i64 %polly.indvar272.7, 1
  %exitcond940.7.not = icmp eq i64 %polly.indvar_next273.7, 8
  br i1 %exitcond940.7.not, label %polly.loop_exit271.7, label %polly.loop_header269.7

polly.loop_exit271.7:                             ; preds = %polly.loop_header269.7
  %polly.indvar_next261 = add nuw nsw i64 %polly.indvar260, 1
  %exitcond942.not = icmp eq i64 %polly.indvar_next261, 1000
  br i1 %exitcond942.not, label %polly.loop_exit259, label %polly.loop_header257

polly.loop_header471.1:                           ; preds = %polly.loop_header471.1, %polly.loop_exit473
  %polly.indvar474.1 = phi i64 [ 0, %polly.loop_exit473 ], [ %polly.indvar_next475.1, %polly.loop_header471.1 ]
  %367 = add nuw nsw i64 %polly.indvar474.1, %154
  %polly.access.add.Packed_MemRef_call1299478.1 = add nuw nsw i64 %polly.indvar474.1, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call1299479.1 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299478.1
  %_p_scalar_480.1 = load double, double* %polly.access.Packed_MemRef_call1299479.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_484.1, %_p_scalar_480.1
  %polly.access.Packed_MemRef_call2301487.1 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call1299478.1
  %_p_scalar_488.1 = load double, double* %polly.access.Packed_MemRef_call2301487.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_492.1, %_p_scalar_488.1
  %368 = shl i64 %367, 3
  %369 = add nuw nsw i64 %368, %179
  %scevgep493.1 = getelementptr i8, i8* %call, i64 %369
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
  %polly.access.add.Packed_MemRef_call2301482.2 = add nuw nsw i64 %180, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call2301483.2 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301482.2
  %_p_scalar_484.2 = load double, double* %polly.access.Packed_MemRef_call2301483.2, align 8
  %polly.access.Packed_MemRef_call1299491.2 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call2301482.2
  %_p_scalar_492.2 = load double, double* %polly.access.Packed_MemRef_call1299491.2, align 8
  br label %polly.loop_header471.2

polly.loop_header471.2:                           ; preds = %polly.loop_header471.2, %polly.loop_exit473.1
  %polly.indvar474.2 = phi i64 [ 0, %polly.loop_exit473.1 ], [ %polly.indvar_next475.2, %polly.loop_header471.2 ]
  %370 = add nuw nsw i64 %polly.indvar474.2, %154
  %polly.access.add.Packed_MemRef_call1299478.2 = add nuw nsw i64 %polly.indvar474.2, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call1299479.2 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299478.2
  %_p_scalar_480.2 = load double, double* %polly.access.Packed_MemRef_call1299479.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_484.2, %_p_scalar_480.2
  %polly.access.Packed_MemRef_call2301487.2 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call1299478.2
  %_p_scalar_488.2 = load double, double* %polly.access.Packed_MemRef_call2301487.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_492.2, %_p_scalar_488.2
  %371 = shl i64 %370, 3
  %372 = add nuw nsw i64 %371, %182
  %scevgep493.2 = getelementptr i8, i8* %call, i64 %372
  %scevgep493494.2 = bitcast i8* %scevgep493.2 to double*
  %_p_scalar_495.2 = load double, double* %scevgep493494.2, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_495.2
  store double %p_add42.i79.2, double* %scevgep493494.2, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next475.2 = add nuw nsw i64 %polly.indvar474.2, 1
  %exitcond960.2.not = icmp eq i64 %polly.indvar474.2, %smin959.2
  br i1 %exitcond960.2.not, label %polly.loop_exit473.2, label %polly.loop_header471.2

polly.loop_exit473.2:                             ; preds = %polly.loop_header471.2
  %polly.access.add.Packed_MemRef_call2301482.3 = add nuw nsw i64 %183, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call2301483.3 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301482.3
  %_p_scalar_484.3 = load double, double* %polly.access.Packed_MemRef_call2301483.3, align 8
  %polly.access.Packed_MemRef_call1299491.3 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call2301482.3
  %_p_scalar_492.3 = load double, double* %polly.access.Packed_MemRef_call1299491.3, align 8
  br label %polly.loop_header471.3

polly.loop_header471.3:                           ; preds = %polly.loop_header471.3, %polly.loop_exit473.2
  %polly.indvar474.3 = phi i64 [ 0, %polly.loop_exit473.2 ], [ %polly.indvar_next475.3, %polly.loop_header471.3 ]
  %373 = add nuw nsw i64 %polly.indvar474.3, %154
  %polly.access.add.Packed_MemRef_call1299478.3 = add nuw nsw i64 %polly.indvar474.3, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call1299479.3 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299478.3
  %_p_scalar_480.3 = load double, double* %polly.access.Packed_MemRef_call1299479.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_484.3, %_p_scalar_480.3
  %polly.access.Packed_MemRef_call2301487.3 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call1299478.3
  %_p_scalar_488.3 = load double, double* %polly.access.Packed_MemRef_call2301487.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_492.3, %_p_scalar_488.3
  %374 = shl i64 %373, 3
  %375 = add nuw nsw i64 %374, %185
  %scevgep493.3 = getelementptr i8, i8* %call, i64 %375
  %scevgep493494.3 = bitcast i8* %scevgep493.3 to double*
  %_p_scalar_495.3 = load double, double* %scevgep493494.3, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_495.3
  store double %p_add42.i79.3, double* %scevgep493494.3, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next475.3 = add nuw nsw i64 %polly.indvar474.3, 1
  %exitcond960.3.not = icmp eq i64 %polly.indvar474.3, %smin959.3
  br i1 %exitcond960.3.not, label %polly.loop_exit473.3, label %polly.loop_header471.3

polly.loop_exit473.3:                             ; preds = %polly.loop_header471.3
  %polly.access.add.Packed_MemRef_call2301482.4 = add nuw nsw i64 %186, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call2301483.4 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301482.4
  %_p_scalar_484.4 = load double, double* %polly.access.Packed_MemRef_call2301483.4, align 8
  %polly.access.Packed_MemRef_call1299491.4 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call2301482.4
  %_p_scalar_492.4 = load double, double* %polly.access.Packed_MemRef_call1299491.4, align 8
  br label %polly.loop_header471.4

polly.loop_header471.4:                           ; preds = %polly.loop_header471.4, %polly.loop_exit473.3
  %polly.indvar474.4 = phi i64 [ 0, %polly.loop_exit473.3 ], [ %polly.indvar_next475.4, %polly.loop_header471.4 ]
  %376 = add nuw nsw i64 %polly.indvar474.4, %154
  %polly.access.add.Packed_MemRef_call1299478.4 = add nuw nsw i64 %polly.indvar474.4, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call1299479.4 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299478.4
  %_p_scalar_480.4 = load double, double* %polly.access.Packed_MemRef_call1299479.4, align 8
  %p_mul27.i73.4 = fmul fast double %_p_scalar_484.4, %_p_scalar_480.4
  %polly.access.Packed_MemRef_call2301487.4 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call1299478.4
  %_p_scalar_488.4 = load double, double* %polly.access.Packed_MemRef_call2301487.4, align 8
  %p_mul37.i75.4 = fmul fast double %_p_scalar_492.4, %_p_scalar_488.4
  %377 = shl i64 %376, 3
  %378 = add nuw nsw i64 %377, %188
  %scevgep493.4 = getelementptr i8, i8* %call, i64 %378
  %scevgep493494.4 = bitcast i8* %scevgep493.4 to double*
  %_p_scalar_495.4 = load double, double* %scevgep493494.4, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_495.4
  store double %p_add42.i79.4, double* %scevgep493494.4, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next475.4 = add nuw nsw i64 %polly.indvar474.4, 1
  %exitcond960.4.not = icmp eq i64 %polly.indvar474.4, %smin959.4
  br i1 %exitcond960.4.not, label %polly.loop_exit473.4, label %polly.loop_header471.4

polly.loop_exit473.4:                             ; preds = %polly.loop_header471.4
  %polly.access.add.Packed_MemRef_call2301482.5 = add nuw nsw i64 %189, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call2301483.5 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301482.5
  %_p_scalar_484.5 = load double, double* %polly.access.Packed_MemRef_call2301483.5, align 8
  %polly.access.Packed_MemRef_call1299491.5 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call2301482.5
  %_p_scalar_492.5 = load double, double* %polly.access.Packed_MemRef_call1299491.5, align 8
  br label %polly.loop_header471.5

polly.loop_header471.5:                           ; preds = %polly.loop_header471.5, %polly.loop_exit473.4
  %polly.indvar474.5 = phi i64 [ 0, %polly.loop_exit473.4 ], [ %polly.indvar_next475.5, %polly.loop_header471.5 ]
  %379 = add nuw nsw i64 %polly.indvar474.5, %154
  %polly.access.add.Packed_MemRef_call1299478.5 = add nuw nsw i64 %polly.indvar474.5, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call1299479.5 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299478.5
  %_p_scalar_480.5 = load double, double* %polly.access.Packed_MemRef_call1299479.5, align 8
  %p_mul27.i73.5 = fmul fast double %_p_scalar_484.5, %_p_scalar_480.5
  %polly.access.Packed_MemRef_call2301487.5 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call1299478.5
  %_p_scalar_488.5 = load double, double* %polly.access.Packed_MemRef_call2301487.5, align 8
  %p_mul37.i75.5 = fmul fast double %_p_scalar_492.5, %_p_scalar_488.5
  %380 = shl i64 %379, 3
  %381 = add nuw nsw i64 %380, %191
  %scevgep493.5 = getelementptr i8, i8* %call, i64 %381
  %scevgep493494.5 = bitcast i8* %scevgep493.5 to double*
  %_p_scalar_495.5 = load double, double* %scevgep493494.5, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77.5 = fadd fast double %p_mul37.i75.5, %p_mul27.i73.5
  %p_reass.mul.i78.5 = fmul fast double %p_reass.add.i77.5, 1.500000e+00
  %p_add42.i79.5 = fadd fast double %p_reass.mul.i78.5, %_p_scalar_495.5
  store double %p_add42.i79.5, double* %scevgep493494.5, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next475.5 = add nuw nsw i64 %polly.indvar474.5, 1
  %exitcond960.5.not = icmp eq i64 %polly.indvar474.5, %smin959.5
  br i1 %exitcond960.5.not, label %polly.loop_exit473.5, label %polly.loop_header471.5

polly.loop_exit473.5:                             ; preds = %polly.loop_header471.5
  %polly.access.add.Packed_MemRef_call2301482.6 = add nuw nsw i64 %192, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call2301483.6 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301482.6
  %_p_scalar_484.6 = load double, double* %polly.access.Packed_MemRef_call2301483.6, align 8
  %polly.access.Packed_MemRef_call1299491.6 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call2301482.6
  %_p_scalar_492.6 = load double, double* %polly.access.Packed_MemRef_call1299491.6, align 8
  br label %polly.loop_header471.6

polly.loop_header471.6:                           ; preds = %polly.loop_header471.6, %polly.loop_exit473.5
  %polly.indvar474.6 = phi i64 [ 0, %polly.loop_exit473.5 ], [ %polly.indvar_next475.6, %polly.loop_header471.6 ]
  %382 = add nuw nsw i64 %polly.indvar474.6, %154
  %polly.access.add.Packed_MemRef_call1299478.6 = add nuw nsw i64 %polly.indvar474.6, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call1299479.6 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299478.6
  %_p_scalar_480.6 = load double, double* %polly.access.Packed_MemRef_call1299479.6, align 8
  %p_mul27.i73.6 = fmul fast double %_p_scalar_484.6, %_p_scalar_480.6
  %polly.access.Packed_MemRef_call2301487.6 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call1299478.6
  %_p_scalar_488.6 = load double, double* %polly.access.Packed_MemRef_call2301487.6, align 8
  %p_mul37.i75.6 = fmul fast double %_p_scalar_492.6, %_p_scalar_488.6
  %383 = shl i64 %382, 3
  %384 = add nuw nsw i64 %383, %194
  %scevgep493.6 = getelementptr i8, i8* %call, i64 %384
  %scevgep493494.6 = bitcast i8* %scevgep493.6 to double*
  %_p_scalar_495.6 = load double, double* %scevgep493494.6, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77.6 = fadd fast double %p_mul37.i75.6, %p_mul27.i73.6
  %p_reass.mul.i78.6 = fmul fast double %p_reass.add.i77.6, 1.500000e+00
  %p_add42.i79.6 = fadd fast double %p_reass.mul.i78.6, %_p_scalar_495.6
  store double %p_add42.i79.6, double* %scevgep493494.6, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next475.6 = add nuw nsw i64 %polly.indvar474.6, 1
  %exitcond960.6.not = icmp eq i64 %polly.indvar474.6, %smin959.6
  br i1 %exitcond960.6.not, label %polly.loop_exit473.6, label %polly.loop_header471.6

polly.loop_exit473.6:                             ; preds = %polly.loop_header471.6
  %polly.access.add.Packed_MemRef_call2301482.7 = add nuw nsw i64 %195, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call2301483.7 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301482.7
  %_p_scalar_484.7 = load double, double* %polly.access.Packed_MemRef_call2301483.7, align 8
  %polly.access.Packed_MemRef_call1299491.7 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call2301482.7
  %_p_scalar_492.7 = load double, double* %polly.access.Packed_MemRef_call1299491.7, align 8
  br label %polly.loop_header471.7

polly.loop_header471.7:                           ; preds = %polly.loop_header471.7, %polly.loop_exit473.6
  %polly.indvar474.7 = phi i64 [ 0, %polly.loop_exit473.6 ], [ %polly.indvar_next475.7, %polly.loop_header471.7 ]
  %385 = add nuw nsw i64 %polly.indvar474.7, %154
  %polly.access.add.Packed_MemRef_call1299478.7 = add nuw nsw i64 %polly.indvar474.7, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call1299479.7 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299478.7
  %_p_scalar_480.7 = load double, double* %polly.access.Packed_MemRef_call1299479.7, align 8
  %p_mul27.i73.7 = fmul fast double %_p_scalar_484.7, %_p_scalar_480.7
  %polly.access.Packed_MemRef_call2301487.7 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call1299478.7
  %_p_scalar_488.7 = load double, double* %polly.access.Packed_MemRef_call2301487.7, align 8
  %p_mul37.i75.7 = fmul fast double %_p_scalar_492.7, %_p_scalar_488.7
  %386 = shl i64 %385, 3
  %387 = add nuw nsw i64 %386, %197
  %scevgep493.7 = getelementptr i8, i8* %call, i64 %387
  %scevgep493494.7 = bitcast i8* %scevgep493.7 to double*
  %_p_scalar_495.7 = load double, double* %scevgep493494.7, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77.7 = fadd fast double %p_mul37.i75.7, %p_mul27.i73.7
  %p_reass.mul.i78.7 = fmul fast double %p_reass.add.i77.7, 1.500000e+00
  %p_add42.i79.7 = fadd fast double %p_reass.mul.i78.7, %_p_scalar_495.7
  store double %p_add42.i79.7, double* %scevgep493494.7, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next475.7 = add nuw nsw i64 %polly.indvar474.7, 1
  %exitcond960.7.not = icmp eq i64 %polly.indvar_next475.7, 8
  br i1 %exitcond960.7.not, label %polly.loop_exit473.7, label %polly.loop_header471.7

polly.loop_exit473.7:                             ; preds = %polly.loop_header471.7
  %polly.indvar_next463 = add nuw nsw i64 %polly.indvar462, 1
  %exitcond962.not = icmp eq i64 %polly.indvar_next463, 1000
  br i1 %exitcond962.not, label %polly.loop_exit461, label %polly.loop_header459

polly.loop_header673.1:                           ; preds = %polly.loop_header673.1, %polly.loop_exit675
  %polly.indvar676.1 = phi i64 [ 0, %polly.loop_exit675 ], [ %polly.indvar_next677.1, %polly.loop_header673.1 ]
  %388 = add nuw nsw i64 %polly.indvar676.1, %211
  %polly.access.add.Packed_MemRef_call1501680.1 = add nuw nsw i64 %polly.indvar676.1, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call1501681.1 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501680.1
  %_p_scalar_682.1 = load double, double* %polly.access.Packed_MemRef_call1501681.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_686.1, %_p_scalar_682.1
  %polly.access.Packed_MemRef_call2503689.1 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call1501680.1
  %_p_scalar_690.1 = load double, double* %polly.access.Packed_MemRef_call2503689.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_694.1, %_p_scalar_690.1
  %389 = shl i64 %388, 3
  %390 = add nuw nsw i64 %389, %236
  %scevgep695.1 = getelementptr i8, i8* %call, i64 %390
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
  %polly.access.add.Packed_MemRef_call2503684.2 = add nuw nsw i64 %237, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call2503685.2 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503684.2
  %_p_scalar_686.2 = load double, double* %polly.access.Packed_MemRef_call2503685.2, align 8
  %polly.access.Packed_MemRef_call1501693.2 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call2503684.2
  %_p_scalar_694.2 = load double, double* %polly.access.Packed_MemRef_call1501693.2, align 8
  br label %polly.loop_header673.2

polly.loop_header673.2:                           ; preds = %polly.loop_header673.2, %polly.loop_exit675.1
  %polly.indvar676.2 = phi i64 [ 0, %polly.loop_exit675.1 ], [ %polly.indvar_next677.2, %polly.loop_header673.2 ]
  %391 = add nuw nsw i64 %polly.indvar676.2, %211
  %polly.access.add.Packed_MemRef_call1501680.2 = add nuw nsw i64 %polly.indvar676.2, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call1501681.2 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501680.2
  %_p_scalar_682.2 = load double, double* %polly.access.Packed_MemRef_call1501681.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_686.2, %_p_scalar_682.2
  %polly.access.Packed_MemRef_call2503689.2 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call1501680.2
  %_p_scalar_690.2 = load double, double* %polly.access.Packed_MemRef_call2503689.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_694.2, %_p_scalar_690.2
  %392 = shl i64 %391, 3
  %393 = add nuw nsw i64 %392, %239
  %scevgep695.2 = getelementptr i8, i8* %call, i64 %393
  %scevgep695696.2 = bitcast i8* %scevgep695.2 to double*
  %_p_scalar_697.2 = load double, double* %scevgep695696.2, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_697.2
  store double %p_add42.i.2, double* %scevgep695696.2, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next677.2 = add nuw nsw i64 %polly.indvar676.2, 1
  %exitcond980.2.not = icmp eq i64 %polly.indvar676.2, %smin979.2
  br i1 %exitcond980.2.not, label %polly.loop_exit675.2, label %polly.loop_header673.2

polly.loop_exit675.2:                             ; preds = %polly.loop_header673.2
  %polly.access.add.Packed_MemRef_call2503684.3 = add nuw nsw i64 %240, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call2503685.3 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503684.3
  %_p_scalar_686.3 = load double, double* %polly.access.Packed_MemRef_call2503685.3, align 8
  %polly.access.Packed_MemRef_call1501693.3 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call2503684.3
  %_p_scalar_694.3 = load double, double* %polly.access.Packed_MemRef_call1501693.3, align 8
  br label %polly.loop_header673.3

polly.loop_header673.3:                           ; preds = %polly.loop_header673.3, %polly.loop_exit675.2
  %polly.indvar676.3 = phi i64 [ 0, %polly.loop_exit675.2 ], [ %polly.indvar_next677.3, %polly.loop_header673.3 ]
  %394 = add nuw nsw i64 %polly.indvar676.3, %211
  %polly.access.add.Packed_MemRef_call1501680.3 = add nuw nsw i64 %polly.indvar676.3, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call1501681.3 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501680.3
  %_p_scalar_682.3 = load double, double* %polly.access.Packed_MemRef_call1501681.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_686.3, %_p_scalar_682.3
  %polly.access.Packed_MemRef_call2503689.3 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call1501680.3
  %_p_scalar_690.3 = load double, double* %polly.access.Packed_MemRef_call2503689.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_694.3, %_p_scalar_690.3
  %395 = shl i64 %394, 3
  %396 = add nuw nsw i64 %395, %242
  %scevgep695.3 = getelementptr i8, i8* %call, i64 %396
  %scevgep695696.3 = bitcast i8* %scevgep695.3 to double*
  %_p_scalar_697.3 = load double, double* %scevgep695696.3, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_697.3
  store double %p_add42.i.3, double* %scevgep695696.3, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next677.3 = add nuw nsw i64 %polly.indvar676.3, 1
  %exitcond980.3.not = icmp eq i64 %polly.indvar676.3, %smin979.3
  br i1 %exitcond980.3.not, label %polly.loop_exit675.3, label %polly.loop_header673.3

polly.loop_exit675.3:                             ; preds = %polly.loop_header673.3
  %polly.access.add.Packed_MemRef_call2503684.4 = add nuw nsw i64 %243, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call2503685.4 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503684.4
  %_p_scalar_686.4 = load double, double* %polly.access.Packed_MemRef_call2503685.4, align 8
  %polly.access.Packed_MemRef_call1501693.4 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call2503684.4
  %_p_scalar_694.4 = load double, double* %polly.access.Packed_MemRef_call1501693.4, align 8
  br label %polly.loop_header673.4

polly.loop_header673.4:                           ; preds = %polly.loop_header673.4, %polly.loop_exit675.3
  %polly.indvar676.4 = phi i64 [ 0, %polly.loop_exit675.3 ], [ %polly.indvar_next677.4, %polly.loop_header673.4 ]
  %397 = add nuw nsw i64 %polly.indvar676.4, %211
  %polly.access.add.Packed_MemRef_call1501680.4 = add nuw nsw i64 %polly.indvar676.4, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call1501681.4 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501680.4
  %_p_scalar_682.4 = load double, double* %polly.access.Packed_MemRef_call1501681.4, align 8
  %p_mul27.i.4 = fmul fast double %_p_scalar_686.4, %_p_scalar_682.4
  %polly.access.Packed_MemRef_call2503689.4 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call1501680.4
  %_p_scalar_690.4 = load double, double* %polly.access.Packed_MemRef_call2503689.4, align 8
  %p_mul37.i.4 = fmul fast double %_p_scalar_694.4, %_p_scalar_690.4
  %398 = shl i64 %397, 3
  %399 = add nuw nsw i64 %398, %245
  %scevgep695.4 = getelementptr i8, i8* %call, i64 %399
  %scevgep695696.4 = bitcast i8* %scevgep695.4 to double*
  %_p_scalar_697.4 = load double, double* %scevgep695696.4, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_697.4
  store double %p_add42.i.4, double* %scevgep695696.4, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next677.4 = add nuw nsw i64 %polly.indvar676.4, 1
  %exitcond980.4.not = icmp eq i64 %polly.indvar676.4, %smin979.4
  br i1 %exitcond980.4.not, label %polly.loop_exit675.4, label %polly.loop_header673.4

polly.loop_exit675.4:                             ; preds = %polly.loop_header673.4
  %polly.access.add.Packed_MemRef_call2503684.5 = add nuw nsw i64 %246, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call2503685.5 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503684.5
  %_p_scalar_686.5 = load double, double* %polly.access.Packed_MemRef_call2503685.5, align 8
  %polly.access.Packed_MemRef_call1501693.5 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call2503684.5
  %_p_scalar_694.5 = load double, double* %polly.access.Packed_MemRef_call1501693.5, align 8
  br label %polly.loop_header673.5

polly.loop_header673.5:                           ; preds = %polly.loop_header673.5, %polly.loop_exit675.4
  %polly.indvar676.5 = phi i64 [ 0, %polly.loop_exit675.4 ], [ %polly.indvar_next677.5, %polly.loop_header673.5 ]
  %400 = add nuw nsw i64 %polly.indvar676.5, %211
  %polly.access.add.Packed_MemRef_call1501680.5 = add nuw nsw i64 %polly.indvar676.5, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call1501681.5 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501680.5
  %_p_scalar_682.5 = load double, double* %polly.access.Packed_MemRef_call1501681.5, align 8
  %p_mul27.i.5 = fmul fast double %_p_scalar_686.5, %_p_scalar_682.5
  %polly.access.Packed_MemRef_call2503689.5 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call1501680.5
  %_p_scalar_690.5 = load double, double* %polly.access.Packed_MemRef_call2503689.5, align 8
  %p_mul37.i.5 = fmul fast double %_p_scalar_694.5, %_p_scalar_690.5
  %401 = shl i64 %400, 3
  %402 = add nuw nsw i64 %401, %248
  %scevgep695.5 = getelementptr i8, i8* %call, i64 %402
  %scevgep695696.5 = bitcast i8* %scevgep695.5 to double*
  %_p_scalar_697.5 = load double, double* %scevgep695696.5, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i.5 = fadd fast double %p_mul37.i.5, %p_mul27.i.5
  %p_reass.mul.i.5 = fmul fast double %p_reass.add.i.5, 1.500000e+00
  %p_add42.i.5 = fadd fast double %p_reass.mul.i.5, %_p_scalar_697.5
  store double %p_add42.i.5, double* %scevgep695696.5, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next677.5 = add nuw nsw i64 %polly.indvar676.5, 1
  %exitcond980.5.not = icmp eq i64 %polly.indvar676.5, %smin979.5
  br i1 %exitcond980.5.not, label %polly.loop_exit675.5, label %polly.loop_header673.5

polly.loop_exit675.5:                             ; preds = %polly.loop_header673.5
  %polly.access.add.Packed_MemRef_call2503684.6 = add nuw nsw i64 %249, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call2503685.6 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503684.6
  %_p_scalar_686.6 = load double, double* %polly.access.Packed_MemRef_call2503685.6, align 8
  %polly.access.Packed_MemRef_call1501693.6 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call2503684.6
  %_p_scalar_694.6 = load double, double* %polly.access.Packed_MemRef_call1501693.6, align 8
  br label %polly.loop_header673.6

polly.loop_header673.6:                           ; preds = %polly.loop_header673.6, %polly.loop_exit675.5
  %polly.indvar676.6 = phi i64 [ 0, %polly.loop_exit675.5 ], [ %polly.indvar_next677.6, %polly.loop_header673.6 ]
  %403 = add nuw nsw i64 %polly.indvar676.6, %211
  %polly.access.add.Packed_MemRef_call1501680.6 = add nuw nsw i64 %polly.indvar676.6, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call1501681.6 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501680.6
  %_p_scalar_682.6 = load double, double* %polly.access.Packed_MemRef_call1501681.6, align 8
  %p_mul27.i.6 = fmul fast double %_p_scalar_686.6, %_p_scalar_682.6
  %polly.access.Packed_MemRef_call2503689.6 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call1501680.6
  %_p_scalar_690.6 = load double, double* %polly.access.Packed_MemRef_call2503689.6, align 8
  %p_mul37.i.6 = fmul fast double %_p_scalar_694.6, %_p_scalar_690.6
  %404 = shl i64 %403, 3
  %405 = add nuw nsw i64 %404, %251
  %scevgep695.6 = getelementptr i8, i8* %call, i64 %405
  %scevgep695696.6 = bitcast i8* %scevgep695.6 to double*
  %_p_scalar_697.6 = load double, double* %scevgep695696.6, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i.6 = fadd fast double %p_mul37.i.6, %p_mul27.i.6
  %p_reass.mul.i.6 = fmul fast double %p_reass.add.i.6, 1.500000e+00
  %p_add42.i.6 = fadd fast double %p_reass.mul.i.6, %_p_scalar_697.6
  store double %p_add42.i.6, double* %scevgep695696.6, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next677.6 = add nuw nsw i64 %polly.indvar676.6, 1
  %exitcond980.6.not = icmp eq i64 %polly.indvar676.6, %smin979.6
  br i1 %exitcond980.6.not, label %polly.loop_exit675.6, label %polly.loop_header673.6

polly.loop_exit675.6:                             ; preds = %polly.loop_header673.6
  %polly.access.add.Packed_MemRef_call2503684.7 = add nuw nsw i64 %252, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call2503685.7 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503684.7
  %_p_scalar_686.7 = load double, double* %polly.access.Packed_MemRef_call2503685.7, align 8
  %polly.access.Packed_MemRef_call1501693.7 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call2503684.7
  %_p_scalar_694.7 = load double, double* %polly.access.Packed_MemRef_call1501693.7, align 8
  br label %polly.loop_header673.7

polly.loop_header673.7:                           ; preds = %polly.loop_header673.7, %polly.loop_exit675.6
  %polly.indvar676.7 = phi i64 [ 0, %polly.loop_exit675.6 ], [ %polly.indvar_next677.7, %polly.loop_header673.7 ]
  %406 = add nuw nsw i64 %polly.indvar676.7, %211
  %polly.access.add.Packed_MemRef_call1501680.7 = add nuw nsw i64 %polly.indvar676.7, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call1501681.7 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501680.7
  %_p_scalar_682.7 = load double, double* %polly.access.Packed_MemRef_call1501681.7, align 8
  %p_mul27.i.7 = fmul fast double %_p_scalar_686.7, %_p_scalar_682.7
  %polly.access.Packed_MemRef_call2503689.7 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call1501680.7
  %_p_scalar_690.7 = load double, double* %polly.access.Packed_MemRef_call2503689.7, align 8
  %p_mul37.i.7 = fmul fast double %_p_scalar_694.7, %_p_scalar_690.7
  %407 = shl i64 %406, 3
  %408 = add nuw nsw i64 %407, %254
  %scevgep695.7 = getelementptr i8, i8* %call, i64 %408
  %scevgep695696.7 = bitcast i8* %scevgep695.7 to double*
  %_p_scalar_697.7 = load double, double* %scevgep695696.7, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i.7 = fadd fast double %p_mul37.i.7, %p_mul27.i.7
  %p_reass.mul.i.7 = fmul fast double %p_reass.add.i.7, 1.500000e+00
  %p_add42.i.7 = fadd fast double %p_reass.mul.i.7, %_p_scalar_697.7
  store double %p_add42.i.7, double* %scevgep695696.7, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next677.7 = add nuw nsw i64 %polly.indvar676.7, 1
  %exitcond980.7.not = icmp eq i64 %polly.indvar_next677.7, 8
  br i1 %exitcond980.7.not, label %polly.loop_exit675.7, label %polly.loop_header673.7

polly.loop_exit675.7:                             ; preds = %polly.loop_header673.7
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
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 8}
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
