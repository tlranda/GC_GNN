; ModuleID = 'syr2k_exhaustive/mmp_all_XL_1207.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_1207.c"
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
  br i1 %min.iters.check1099, label %for.body3.i46.preheader1239, label %vector.ph1100

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
  br i1 %cmp.n1106, label %for.inc6.i, label %for.body3.i46.preheader1239

for.body3.i46.preheader1239:                      ; preds = %for.body3.i46.preheader, %middle.block1096
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1102, %middle.block1096 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1239, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1239 ]
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
  %min.iters.check1143 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1143, label %for.body3.i60.preheader1237, label %vector.ph1144

vector.ph1144:                                    ; preds = %for.body3.i60.preheader
  %n.vec1146 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1142

vector.body1142:                                  ; preds = %vector.body1142, %vector.ph1144
  %index1147 = phi i64 [ 0, %vector.ph1144 ], [ %index.next1148, %vector.body1142 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv21.i52, i64 %index1147
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1151 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1151, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1148 = add i64 %index1147, 4
  %57 = icmp eq i64 %index.next1148, %n.vec1146
  br i1 %57, label %middle.block1140, label %vector.body1142, !llvm.loop !63

middle.block1140:                                 ; preds = %vector.body1142
  %cmp.n1150 = icmp eq i64 %indvars.iv21.i52, %n.vec1146
  br i1 %cmp.n1150, label %for.inc6.i63, label %for.body3.i60.preheader1237

for.body3.i60.preheader1237:                      ; preds = %for.body3.i60.preheader, %middle.block1140
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1146, %middle.block1140 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1237, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1237 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1140, %for.cond1.preheader.i54
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
  %min.iters.check1190 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1190, label %for.body3.i99.preheader1235, label %vector.ph1191

vector.ph1191:                                    ; preds = %for.body3.i99.preheader
  %n.vec1193 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %vector.ph1191
  %index1194 = phi i64 [ 0, %vector.ph1191 ], [ %index.next1195, %vector.body1189 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv21.i91, i64 %index1194
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1198 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1198, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1195 = add i64 %index1194, 4
  %68 = icmp eq i64 %index.next1195, %n.vec1193
  br i1 %68, label %middle.block1187, label %vector.body1189, !llvm.loop !65

middle.block1187:                                 ; preds = %vector.body1189
  %cmp.n1197 = icmp eq i64 %indvars.iv21.i91, %n.vec1193
  br i1 %cmp.n1197, label %for.inc6.i102, label %for.body3.i99.preheader1235

for.body3.i99.preheader1235:                      ; preds = %for.body3.i99.preheader, %middle.block1187
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1193, %middle.block1187 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1235, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1235 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call850, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1187, %for.cond1.preheader.i93
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
  %indvar1202 = phi i64 [ %indvar.next1203, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1202, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1204 = icmp ult i64 %88, 4
  br i1 %min.iters.check1204, label %polly.loop_header192.preheader, label %vector.ph1205

vector.ph1205:                                    ; preds = %polly.loop_header
  %n.vec1207 = and i64 %88, -4
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %vector.ph1205
  %index1208 = phi i64 [ 0, %vector.ph1205 ], [ %index.next1209, %vector.body1201 ]
  %90 = shl nuw nsw i64 %index1208, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1212 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1212, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1209 = add i64 %index1208, 4
  %95 = icmp eq i64 %index.next1209, %n.vec1207
  br i1 %95, label %middle.block1199, label %vector.body1201, !llvm.loop !78

middle.block1199:                                 ; preds = %vector.body1201
  %cmp.n1211 = icmp eq i64 %88, %n.vec1207
  br i1 %cmp.n1211, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1199
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1207, %middle.block1199 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1199
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond946.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1203 = add i64 %indvar1202, 1
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
  %97 = mul nuw nsw i64 %polly.indvar203, 100
  br label %polly.loop_header206

polly.loop_exit224:                               ; preds = %polly.loop_exit259
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %exitcond944.not = icmp eq i64 %polly.indvar_next204, 12
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
  %98 = mul nsw i64 %polly.indvar203, -100
  br label %polly.loop_header222

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %99 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.call2219 = mul nuw nsw i64 %99, 1000
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
  %indvar1216 = phi i64 [ 0, %polly.loop_header222.preheader ], [ %indvar.next1217, %polly.loop_exit259 ]
  %indvars.iv936 = phi i64 [ 0, %polly.loop_header222.preheader ], [ %indvars.iv.next937, %polly.loop_exit259 ]
  %polly.indvar225 = phi i64 [ %polly.indvar203, %polly.loop_header222.preheader ], [ %polly.indvar_next226, %polly.loop_exit259 ]
  %100 = mul nuw nsw i64 %indvar1216, 100
  %101 = mul nuw nsw i64 %polly.indvar225, 100
  %102 = add nsw i64 %101, %98
  %103 = icmp ugt i64 %102, 100
  %104 = select i1 %103, i64 %102, i64 100
  %105 = add nuw nsw i64 %102, 99
  %polly.loop_guard.not = icmp ugt i64 %104, %105
  br i1 %polly.loop_guard.not, label %polly.loop_header228.us, label %polly.loop_header228

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.loop_exit246.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.loop_exit246.us ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 1200
  br label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header228.us
  %polly.indvar237.us = phi i64 [ 0, %polly.loop_header228.us ], [ %polly.indvar_next238.us, %polly.loop_header234.us ]
  %106 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.call1241.us = mul nuw nsw i64 %106, 1000
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond934.not = icmp eq i64 %polly.indvar_next238.us, 100
  br i1 %exitcond934.not, label %polly.loop_exit246.us, label %polly.loop_header234.us

polly.loop_exit246.us:                            ; preds = %polly.loop_header234.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond935.not = icmp eq i64 %polly.indvar_next232.us, 1000
  br i1 %exitcond935.not, label %polly.loop_header257.preheader, label %polly.loop_header228.us

polly.loop_header257.preheader:                   ; preds = %polly.loop_exit246, %polly.loop_exit246.us
  br label %polly.loop_header257

polly.loop_exit259:                               ; preds = %polly.loop_exit265
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next937 = add nuw nsw i64 %indvars.iv936, 100
  %exitcond943.not = icmp eq i64 %polly.indvar_next226, 12
  %indvar.next1217 = add i64 %indvar1216, 1
  br i1 %exitcond943.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header222, %polly.loop_exit246
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit246 ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar231, 1200
  br label %polly.loop_header234

polly.loop_exit246:                               ; preds = %polly.loop_header244
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond933.not = icmp eq i64 %polly.indvar_next232, 1000
  br i1 %exitcond933.not, label %polly.loop_header257.preheader, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234, %polly.loop_header228
  %polly.indvar237 = phi i64 [ 0, %polly.loop_header228 ], [ %polly.indvar_next238, %polly.loop_header234 ]
  %107 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.call1241 = mul nuw nsw i64 %107, 1000
  %polly.access.add.call1242 = add nuw nsw i64 %polly.access.mul.call1241, %polly.indvar231
  %polly.access.call1243 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1242
  %polly.access.call1243.load = load double, double* %polly.access.call1243, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1
  store double %polly.access.call1243.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond932.not = icmp eq i64 %polly.indvar_next238, 100
  br i1 %exitcond932.not, label %polly.loop_header244, label %polly.loop_header234

polly.loop_header244:                             ; preds = %polly.loop_header234, %polly.loop_header244
  %polly.indvar247 = phi i64 [ %polly.indvar_next248, %polly.loop_header244 ], [ %104, %polly.loop_header234 ]
  %108 = add nuw nsw i64 %polly.indvar247, %97
  %polly.access.mul.call1251 = mul nuw nsw i64 %108, 1000
  %polly.access.add.call1252 = add nuw nsw i64 %polly.access.mul.call1251, %polly.indvar231
  %polly.access.call1253 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1252
  %polly.access.call1253.load = load double, double* %polly.access.call1253, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1255 = add nuw nsw i64 %polly.indvar247, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1256 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255
  store double %polly.access.call1253.load, double* %polly.access.Packed_MemRef_call1256, align 8
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %polly.loop_cond249.not.not = icmp ult i64 %polly.indvar247, %105
  br i1 %polly.loop_cond249.not.not, label %polly.loop_header244, label %polly.loop_exit246

polly.loop_header257:                             ; preds = %polly.loop_header257.preheader, %polly.loop_exit265
  %polly.indvar260 = phi i64 [ %polly.indvar_next261, %polly.loop_exit265 ], [ 0, %polly.loop_header257.preheader ]
  %polly.access.mul.Packed_MemRef_call1275 = mul nuw nsw i64 %polly.indvar260, 1200
  br label %polly.loop_header263

polly.loop_exit265:                               ; preds = %polly.loop_exit271
  %polly.indvar_next261 = add nuw nsw i64 %polly.indvar260, 1
  %exitcond942.not = icmp eq i64 %polly.indvar_next261, 1000
  br i1 %exitcond942.not, label %polly.loop_exit259, label %polly.loop_header257

polly.loop_header263:                             ; preds = %polly.loop_exit271, %polly.loop_header257
  %indvars.iv938 = phi i64 [ %indvars.iv.next939, %polly.loop_exit271 ], [ %indvars.iv936, %polly.loop_header257 ]
  %polly.indvar266 = phi i64 [ %polly.indvar_next267, %polly.loop_exit271 ], [ 0, %polly.loop_header257 ]
  %109 = add i64 %100, %polly.indvar266
  %smin1218 = call i64 @llvm.smin.i64(i64 %109, i64 99)
  %110 = add nuw nsw i64 %smin1218, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv938, i64 99)
  %111 = add nuw nsw i64 %polly.indvar266, %102
  %112 = add nuw nsw i64 %polly.indvar266, %101
  %polly.access.add.Packed_MemRef_call2280 = add nuw nsw i64 %111, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call2281 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280
  %_p_scalar_282 = load double, double* %polly.access.Packed_MemRef_call2281, align 8
  %polly.access.Packed_MemRef_call1289 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2280
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call1289, align 8
  %113 = mul nuw nsw i64 %112, 9600
  %min.iters.check1219 = icmp ult i64 %smin1218, 3
  br i1 %min.iters.check1219, label %polly.loop_header269.preheader, label %vector.ph1220

vector.ph1220:                                    ; preds = %polly.loop_header263
  %n.vec1222 = and i64 %110, -4
  %broadcast.splatinsert1228 = insertelement <4 x double> poison, double %_p_scalar_282, i32 0
  %broadcast.splat1229 = shufflevector <4 x double> %broadcast.splatinsert1228, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1231 = insertelement <4 x double> poison, double %_p_scalar_290, i32 0
  %broadcast.splat1232 = shufflevector <4 x double> %broadcast.splatinsert1231, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1220
  %index1223 = phi i64 [ 0, %vector.ph1220 ], [ %index.next1224, %vector.body1215 ]
  %114 = add nuw nsw i64 %index1223, %97
  %115 = add nuw nsw i64 %index1223, %polly.access.mul.Packed_MemRef_call1275
  %116 = getelementptr double, double* %Packed_MemRef_call1, i64 %115
  %117 = bitcast double* %116 to <4 x double>*
  %wide.load1227 = load <4 x double>, <4 x double>* %117, align 8
  %118 = fmul fast <4 x double> %broadcast.splat1229, %wide.load1227
  %119 = getelementptr double, double* %Packed_MemRef_call2, i64 %115
  %120 = bitcast double* %119 to <4 x double>*
  %wide.load1230 = load <4 x double>, <4 x double>* %120, align 8
  %121 = fmul fast <4 x double> %broadcast.splat1232, %wide.load1230
  %122 = shl i64 %114, 3
  %123 = add nuw nsw i64 %122, %113
  %124 = getelementptr i8, i8* %call, i64 %123
  %125 = bitcast i8* %124 to <4 x double>*
  %wide.load1233 = load <4 x double>, <4 x double>* %125, align 8, !alias.scope !71, !noalias !73
  %126 = fadd fast <4 x double> %121, %118
  %127 = fmul fast <4 x double> %126, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %128 = fadd fast <4 x double> %127, %wide.load1233
  %129 = bitcast i8* %124 to <4 x double>*
  store <4 x double> %128, <4 x double>* %129, align 8, !alias.scope !71, !noalias !73
  %index.next1224 = add i64 %index1223, 4
  %130 = icmp eq i64 %index.next1224, %n.vec1222
  br i1 %130, label %middle.block1213, label %vector.body1215, !llvm.loop !83

middle.block1213:                                 ; preds = %vector.body1215
  %cmp.n1226 = icmp eq i64 %110, %n.vec1222
  br i1 %cmp.n1226, label %polly.loop_exit271, label %polly.loop_header269.preheader

polly.loop_header269.preheader:                   ; preds = %polly.loop_header263, %middle.block1213
  %polly.indvar272.ph = phi i64 [ 0, %polly.loop_header263 ], [ %n.vec1222, %middle.block1213 ]
  br label %polly.loop_header269

polly.loop_exit271:                               ; preds = %polly.loop_header269, %middle.block1213
  %polly.indvar_next267 = add nuw nsw i64 %polly.indvar266, 1
  %indvars.iv.next939 = add nuw nsw i64 %indvars.iv938, 1
  %exitcond941.not = icmp eq i64 %polly.indvar_next267, 100
  br i1 %exitcond941.not, label %polly.loop_exit265, label %polly.loop_header263

polly.loop_header269:                             ; preds = %polly.loop_header269.preheader, %polly.loop_header269
  %polly.indvar272 = phi i64 [ %polly.indvar_next273, %polly.loop_header269 ], [ %polly.indvar272.ph, %polly.loop_header269.preheader ]
  %131 = add nuw nsw i64 %polly.indvar272, %97
  %polly.access.add.Packed_MemRef_call1276 = add nuw nsw i64 %polly.indvar272, %polly.access.mul.Packed_MemRef_call1275
  %polly.access.Packed_MemRef_call1277 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276
  %_p_scalar_278 = load double, double* %polly.access.Packed_MemRef_call1277, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_282, %_p_scalar_278
  %polly.access.Packed_MemRef_call2285 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1276
  %_p_scalar_286 = load double, double* %polly.access.Packed_MemRef_call2285, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_290, %_p_scalar_286
  %132 = shl i64 %131, 3
  %133 = add nuw nsw i64 %132, %113
  %scevgep291 = getelementptr i8, i8* %call, i64 %133
  %scevgep291292 = bitcast i8* %scevgep291 to double*
  %_p_scalar_293 = load double, double* %scevgep291292, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_293
  store double %p_add42.i118, double* %scevgep291292, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next273 = add nuw nsw i64 %polly.indvar272, 1
  %exitcond940.not = icmp eq i64 %polly.indvar272, %smin
  br i1 %exitcond940.not, label %polly.loop_exit271, label %polly.loop_header269, !llvm.loop !84

polly.start296:                                   ; preds = %kernel_syr2k.exit
  %malloccall298 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall300 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header384

polly.exiting297:                                 ; preds = %polly.loop_exit424
  tail call void @free(i8* nonnull %malloccall298)
  tail call void @free(i8* nonnull %malloccall300)
  br label %kernel_syr2k.exit90

polly.loop_header384:                             ; preds = %polly.loop_exit392, %polly.start296
  %indvar1155 = phi i64 [ %indvar.next1156, %polly.loop_exit392 ], [ 0, %polly.start296 ]
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit392 ], [ 1, %polly.start296 ]
  %134 = add i64 %indvar1155, 1
  %135 = mul nuw nsw i64 %polly.indvar387, 9600
  %scevgep396 = getelementptr i8, i8* %call, i64 %135
  %min.iters.check1157 = icmp ult i64 %134, 4
  br i1 %min.iters.check1157, label %polly.loop_header390.preheader, label %vector.ph1158

vector.ph1158:                                    ; preds = %polly.loop_header384
  %n.vec1160 = and i64 %134, -4
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.body1154, %vector.ph1158
  %index1161 = phi i64 [ 0, %vector.ph1158 ], [ %index.next1162, %vector.body1154 ]
  %136 = shl nuw nsw i64 %index1161, 3
  %137 = getelementptr i8, i8* %scevgep396, i64 %136
  %138 = bitcast i8* %137 to <4 x double>*
  %wide.load1165 = load <4 x double>, <4 x double>* %138, align 8, !alias.scope !85, !noalias !87
  %139 = fmul fast <4 x double> %wide.load1165, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %140 = bitcast i8* %137 to <4 x double>*
  store <4 x double> %139, <4 x double>* %140, align 8, !alias.scope !85, !noalias !87
  %index.next1162 = add i64 %index1161, 4
  %141 = icmp eq i64 %index.next1162, %n.vec1160
  br i1 %141, label %middle.block1152, label %vector.body1154, !llvm.loop !92

middle.block1152:                                 ; preds = %vector.body1154
  %cmp.n1164 = icmp eq i64 %134, %n.vec1160
  br i1 %cmp.n1164, label %polly.loop_exit392, label %polly.loop_header390.preheader

polly.loop_header390.preheader:                   ; preds = %polly.loop_header384, %middle.block1152
  %polly.indvar393.ph = phi i64 [ 0, %polly.loop_header384 ], [ %n.vec1160, %middle.block1152 ]
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_header390, %middle.block1152
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond966.not = icmp eq i64 %polly.indvar_next388, 1200
  %indvar.next1156 = add i64 %indvar1155, 1
  br i1 %exitcond966.not, label %polly.loop_header400.preheader, label %polly.loop_header384

polly.loop_header400.preheader:                   ; preds = %polly.loop_exit392
  %Packed_MemRef_call1299 = bitcast i8* %malloccall298 to double*
  %Packed_MemRef_call2301 = bitcast i8* %malloccall300 to double*
  br label %polly.loop_header400

polly.loop_header390:                             ; preds = %polly.loop_header390.preheader, %polly.loop_header390
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_header390 ], [ %polly.indvar393.ph, %polly.loop_header390.preheader ]
  %142 = shl nuw nsw i64 %polly.indvar393, 3
  %scevgep397 = getelementptr i8, i8* %scevgep396, i64 %142
  %scevgep397398 = bitcast i8* %scevgep397 to double*
  %_p_scalar_399 = load double, double* %scevgep397398, align 8, !alias.scope !85, !noalias !87
  %p_mul.i57 = fmul fast double %_p_scalar_399, 1.200000e+00
  store double %p_mul.i57, double* %scevgep397398, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond965.not = icmp eq i64 %polly.indvar_next394, %polly.indvar387
  br i1 %exitcond965.not, label %polly.loop_exit392, label %polly.loop_header390, !llvm.loop !93

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_exit424
  %indvars.iv947 = phi i64 [ 1200, %polly.loop_header400.preheader ], [ %indvars.iv.next948, %polly.loop_exit424 ]
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header400.preheader ], [ %polly.indvar_next404, %polly.loop_exit424 ]
  %143 = mul nuw nsw i64 %polly.indvar403, 100
  br label %polly.loop_header406

polly.loop_exit424:                               ; preds = %polly.loop_exit461
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next948 = add nsw i64 %indvars.iv947, -100
  %exitcond964.not = icmp eq i64 %polly.indvar_next404, 12
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
  %144 = mul nsw i64 %polly.indvar403, -100
  br label %polly.loop_header422

polly.loop_header412:                             ; preds = %polly.loop_header412, %polly.loop_header406
  %polly.indvar415 = phi i64 [ 0, %polly.loop_header406 ], [ %polly.indvar_next416, %polly.loop_header412 ]
  %145 = add nuw nsw i64 %polly.indvar415, %143
  %polly.access.mul.call2419 = mul nuw nsw i64 %145, 1000
  %polly.access.add.call2420 = add nuw nsw i64 %polly.access.mul.call2419, %polly.indvar409
  %polly.access.call2421 = getelementptr double, double* %polly.access.cast.call2712, i64 %polly.access.add.call2420
  %polly.access.call2421.load = load double, double* %polly.access.call2421, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2301 = add nuw nsw i64 %polly.indvar415, %polly.access.mul.Packed_MemRef_call2301
  %polly.access.Packed_MemRef_call2301 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301
  store double %polly.access.call2421.load, double* %polly.access.Packed_MemRef_call2301, align 8
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond949.not = icmp eq i64 %polly.indvar_next416, %indvars.iv947
  br i1 %exitcond949.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header422:                             ; preds = %polly.loop_header422.preheader, %polly.loop_exit461
  %indvar1169 = phi i64 [ 0, %polly.loop_header422.preheader ], [ %indvar.next1170, %polly.loop_exit461 ]
  %indvars.iv955 = phi i64 [ 0, %polly.loop_header422.preheader ], [ %indvars.iv.next956, %polly.loop_exit461 ]
  %polly.indvar425 = phi i64 [ %polly.indvar403, %polly.loop_header422.preheader ], [ %polly.indvar_next426, %polly.loop_exit461 ]
  %146 = mul nuw nsw i64 %indvar1169, 100
  %147 = mul nuw nsw i64 %polly.indvar425, 100
  %148 = add nsw i64 %147, %144
  %149 = icmp ugt i64 %148, 100
  %150 = select i1 %149, i64 %148, i64 100
  %151 = add nuw nsw i64 %148, 99
  %polly.loop_guard448.not = icmp ugt i64 %150, %151
  br i1 %polly.loop_guard448.not, label %polly.loop_header428.us, label %polly.loop_header428

polly.loop_header428.us:                          ; preds = %polly.loop_header422, %polly.loop_exit447.us
  %polly.indvar431.us = phi i64 [ %polly.indvar_next432.us, %polly.loop_exit447.us ], [ 0, %polly.loop_header422 ]
  %polly.access.mul.Packed_MemRef_call1299.us = mul nuw nsw i64 %polly.indvar431.us, 1200
  br label %polly.loop_header434.us

polly.loop_header434.us:                          ; preds = %polly.loop_header434.us, %polly.loop_header428.us
  %polly.indvar437.us = phi i64 [ 0, %polly.loop_header428.us ], [ %polly.indvar_next438.us, %polly.loop_header434.us ]
  %152 = add nuw nsw i64 %polly.indvar437.us, %143
  %polly.access.mul.call1441.us = mul nuw nsw i64 %152, 1000
  %polly.access.add.call1442.us = add nuw nsw i64 %polly.access.mul.call1441.us, %polly.indvar431.us
  %polly.access.call1443.us = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442.us
  %polly.access.call1443.load.us = load double, double* %polly.access.call1443.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1299.us = add nuw nsw i64 %polly.indvar437.us, %polly.access.mul.Packed_MemRef_call1299.us
  %polly.access.Packed_MemRef_call1299.us = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299.us
  store double %polly.access.call1443.load.us, double* %polly.access.Packed_MemRef_call1299.us, align 8
  %polly.indvar_next438.us = add nuw nsw i64 %polly.indvar437.us, 1
  %exitcond953.not = icmp eq i64 %polly.indvar_next438.us, 100
  br i1 %exitcond953.not, label %polly.loop_exit447.us, label %polly.loop_header434.us

polly.loop_exit447.us:                            ; preds = %polly.loop_header434.us
  %polly.indvar_next432.us = add nuw nsw i64 %polly.indvar431.us, 1
  %exitcond954.not = icmp eq i64 %polly.indvar_next432.us, 1000
  br i1 %exitcond954.not, label %polly.loop_header459.preheader, label %polly.loop_header428.us

polly.loop_header459.preheader:                   ; preds = %polly.loop_exit447, %polly.loop_exit447.us
  br label %polly.loop_header459

polly.loop_exit461:                               ; preds = %polly.loop_exit467
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %indvars.iv.next956 = add nuw nsw i64 %indvars.iv955, 100
  %exitcond963.not = icmp eq i64 %polly.indvar_next426, 12
  %indvar.next1170 = add i64 %indvar1169, 1
  br i1 %exitcond963.not, label %polly.loop_exit424, label %polly.loop_header422

polly.loop_header428:                             ; preds = %polly.loop_header422, %polly.loop_exit447
  %polly.indvar431 = phi i64 [ %polly.indvar_next432, %polly.loop_exit447 ], [ 0, %polly.loop_header422 ]
  %polly.access.mul.Packed_MemRef_call1299 = mul nuw nsw i64 %polly.indvar431, 1200
  br label %polly.loop_header434

polly.loop_exit447:                               ; preds = %polly.loop_header445
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond952.not = icmp eq i64 %polly.indvar_next432, 1000
  br i1 %exitcond952.not, label %polly.loop_header459.preheader, label %polly.loop_header428

polly.loop_header434:                             ; preds = %polly.loop_header434, %polly.loop_header428
  %polly.indvar437 = phi i64 [ 0, %polly.loop_header428 ], [ %polly.indvar_next438, %polly.loop_header434 ]
  %153 = add nuw nsw i64 %polly.indvar437, %143
  %polly.access.mul.call1441 = mul nuw nsw i64 %153, 1000
  %polly.access.add.call1442 = add nuw nsw i64 %polly.access.mul.call1441, %polly.indvar431
  %polly.access.call1443 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1442
  %polly.access.call1443.load = load double, double* %polly.access.call1443, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1299 = add nuw nsw i64 %polly.indvar437, %polly.access.mul.Packed_MemRef_call1299
  %polly.access.Packed_MemRef_call1299 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299
  store double %polly.access.call1443.load, double* %polly.access.Packed_MemRef_call1299, align 8
  %polly.indvar_next438 = add nuw nsw i64 %polly.indvar437, 1
  %exitcond951.not = icmp eq i64 %polly.indvar_next438, 100
  br i1 %exitcond951.not, label %polly.loop_header445, label %polly.loop_header434

polly.loop_header445:                             ; preds = %polly.loop_header434, %polly.loop_header445
  %polly.indvar449 = phi i64 [ %polly.indvar_next450, %polly.loop_header445 ], [ %150, %polly.loop_header434 ]
  %154 = add nuw nsw i64 %polly.indvar449, %143
  %polly.access.mul.call1453 = mul nuw nsw i64 %154, 1000
  %polly.access.add.call1454 = add nuw nsw i64 %polly.access.mul.call1453, %polly.indvar431
  %polly.access.call1455 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1454
  %polly.access.call1455.load = load double, double* %polly.access.call1455, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1299457 = add nuw nsw i64 %polly.indvar449, %polly.access.mul.Packed_MemRef_call1299
  %polly.access.Packed_MemRef_call1299458 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299457
  store double %polly.access.call1455.load, double* %polly.access.Packed_MemRef_call1299458, align 8
  %polly.indvar_next450 = add nuw nsw i64 %polly.indvar449, 1
  %polly.loop_cond451.not.not = icmp ult i64 %polly.indvar449, %151
  br i1 %polly.loop_cond451.not.not, label %polly.loop_header445, label %polly.loop_exit447

polly.loop_header459:                             ; preds = %polly.loop_header459.preheader, %polly.loop_exit467
  %polly.indvar462 = phi i64 [ %polly.indvar_next463, %polly.loop_exit467 ], [ 0, %polly.loop_header459.preheader ]
  %polly.access.mul.Packed_MemRef_call1299477 = mul nuw nsw i64 %polly.indvar462, 1200
  br label %polly.loop_header465

polly.loop_exit467:                               ; preds = %polly.loop_exit473
  %polly.indvar_next463 = add nuw nsw i64 %polly.indvar462, 1
  %exitcond962.not = icmp eq i64 %polly.indvar_next463, 1000
  br i1 %exitcond962.not, label %polly.loop_exit461, label %polly.loop_header459

polly.loop_header465:                             ; preds = %polly.loop_exit473, %polly.loop_header459
  %indvars.iv957 = phi i64 [ %indvars.iv.next958, %polly.loop_exit473 ], [ %indvars.iv955, %polly.loop_header459 ]
  %polly.indvar468 = phi i64 [ %polly.indvar_next469, %polly.loop_exit473 ], [ 0, %polly.loop_header459 ]
  %155 = add i64 %146, %polly.indvar468
  %smin1171 = call i64 @llvm.smin.i64(i64 %155, i64 99)
  %156 = add nuw nsw i64 %smin1171, 1
  %smin959 = call i64 @llvm.smin.i64(i64 %indvars.iv957, i64 99)
  %157 = add nuw nsw i64 %polly.indvar468, %148
  %158 = add nuw nsw i64 %polly.indvar468, %147
  %polly.access.add.Packed_MemRef_call2301482 = add nuw nsw i64 %157, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call2301483 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call2301482
  %_p_scalar_484 = load double, double* %polly.access.Packed_MemRef_call2301483, align 8
  %polly.access.Packed_MemRef_call1299491 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call2301482
  %_p_scalar_492 = load double, double* %polly.access.Packed_MemRef_call1299491, align 8
  %159 = mul nuw nsw i64 %158, 9600
  %min.iters.check1172 = icmp ult i64 %smin1171, 3
  br i1 %min.iters.check1172, label %polly.loop_header471.preheader, label %vector.ph1173

vector.ph1173:                                    ; preds = %polly.loop_header465
  %n.vec1175 = and i64 %156, -4
  %broadcast.splatinsert1181 = insertelement <4 x double> poison, double %_p_scalar_484, i32 0
  %broadcast.splat1182 = shufflevector <4 x double> %broadcast.splatinsert1181, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1184 = insertelement <4 x double> poison, double %_p_scalar_492, i32 0
  %broadcast.splat1185 = shufflevector <4 x double> %broadcast.splatinsert1184, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %vector.ph1173
  %index1176 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1177, %vector.body1168 ]
  %160 = add nuw nsw i64 %index1176, %143
  %161 = add nuw nsw i64 %index1176, %polly.access.mul.Packed_MemRef_call1299477
  %162 = getelementptr double, double* %Packed_MemRef_call1299, i64 %161
  %163 = bitcast double* %162 to <4 x double>*
  %wide.load1180 = load <4 x double>, <4 x double>* %163, align 8
  %164 = fmul fast <4 x double> %broadcast.splat1182, %wide.load1180
  %165 = getelementptr double, double* %Packed_MemRef_call2301, i64 %161
  %166 = bitcast double* %165 to <4 x double>*
  %wide.load1183 = load <4 x double>, <4 x double>* %166, align 8
  %167 = fmul fast <4 x double> %broadcast.splat1185, %wide.load1183
  %168 = shl i64 %160, 3
  %169 = add nuw nsw i64 %168, %159
  %170 = getelementptr i8, i8* %call, i64 %169
  %171 = bitcast i8* %170 to <4 x double>*
  %wide.load1186 = load <4 x double>, <4 x double>* %171, align 8, !alias.scope !85, !noalias !87
  %172 = fadd fast <4 x double> %167, %164
  %173 = fmul fast <4 x double> %172, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %174 = fadd fast <4 x double> %173, %wide.load1186
  %175 = bitcast i8* %170 to <4 x double>*
  store <4 x double> %174, <4 x double>* %175, align 8, !alias.scope !85, !noalias !87
  %index.next1177 = add i64 %index1176, 4
  %176 = icmp eq i64 %index.next1177, %n.vec1175
  br i1 %176, label %middle.block1166, label %vector.body1168, !llvm.loop !96

middle.block1166:                                 ; preds = %vector.body1168
  %cmp.n1179 = icmp eq i64 %156, %n.vec1175
  br i1 %cmp.n1179, label %polly.loop_exit473, label %polly.loop_header471.preheader

polly.loop_header471.preheader:                   ; preds = %polly.loop_header465, %middle.block1166
  %polly.indvar474.ph = phi i64 [ 0, %polly.loop_header465 ], [ %n.vec1175, %middle.block1166 ]
  br label %polly.loop_header471

polly.loop_exit473:                               ; preds = %polly.loop_header471, %middle.block1166
  %polly.indvar_next469 = add nuw nsw i64 %polly.indvar468, 1
  %indvars.iv.next958 = add nuw nsw i64 %indvars.iv957, 1
  %exitcond961.not = icmp eq i64 %polly.indvar_next469, 100
  br i1 %exitcond961.not, label %polly.loop_exit467, label %polly.loop_header465

polly.loop_header471:                             ; preds = %polly.loop_header471.preheader, %polly.loop_header471
  %polly.indvar474 = phi i64 [ %polly.indvar_next475, %polly.loop_header471 ], [ %polly.indvar474.ph, %polly.loop_header471.preheader ]
  %177 = add nuw nsw i64 %polly.indvar474, %143
  %polly.access.add.Packed_MemRef_call1299478 = add nuw nsw i64 %polly.indvar474, %polly.access.mul.Packed_MemRef_call1299477
  %polly.access.Packed_MemRef_call1299479 = getelementptr double, double* %Packed_MemRef_call1299, i64 %polly.access.add.Packed_MemRef_call1299478
  %_p_scalar_480 = load double, double* %polly.access.Packed_MemRef_call1299479, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_484, %_p_scalar_480
  %polly.access.Packed_MemRef_call2301487 = getelementptr double, double* %Packed_MemRef_call2301, i64 %polly.access.add.Packed_MemRef_call1299478
  %_p_scalar_488 = load double, double* %polly.access.Packed_MemRef_call2301487, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_492, %_p_scalar_488
  %178 = shl i64 %177, 3
  %179 = add nuw nsw i64 %178, %159
  %scevgep493 = getelementptr i8, i8* %call, i64 %179
  %scevgep493494 = bitcast i8* %scevgep493 to double*
  %_p_scalar_495 = load double, double* %scevgep493494, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_495
  store double %p_add42.i79, double* %scevgep493494, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next475 = add nuw nsw i64 %polly.indvar474, 1
  %exitcond960.not = icmp eq i64 %polly.indvar474, %smin959
  br i1 %exitcond960.not, label %polly.loop_exit473, label %polly.loop_header471, !llvm.loop !97

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
  %180 = add i64 %indvar, 1
  %181 = mul nuw nsw i64 %polly.indvar589, 9600
  %scevgep598 = getelementptr i8, i8* %call, i64 %181
  %min.iters.check1110 = icmp ult i64 %180, 4
  br i1 %min.iters.check1110, label %polly.loop_header592.preheader, label %vector.ph1111

vector.ph1111:                                    ; preds = %polly.loop_header586
  %n.vec1113 = and i64 %180, -4
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %vector.ph1111
  %index1114 = phi i64 [ 0, %vector.ph1111 ], [ %index.next1115, %vector.body1109 ]
  %182 = shl nuw nsw i64 %index1114, 3
  %183 = getelementptr i8, i8* %scevgep598, i64 %182
  %184 = bitcast i8* %183 to <4 x double>*
  %wide.load1118 = load <4 x double>, <4 x double>* %184, align 8, !alias.scope !98, !noalias !100
  %185 = fmul fast <4 x double> %wide.load1118, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %186 = bitcast i8* %183 to <4 x double>*
  store <4 x double> %185, <4 x double>* %186, align 8, !alias.scope !98, !noalias !100
  %index.next1115 = add i64 %index1114, 4
  %187 = icmp eq i64 %index.next1115, %n.vec1113
  br i1 %187, label %middle.block1107, label %vector.body1109, !llvm.loop !105

middle.block1107:                                 ; preds = %vector.body1109
  %cmp.n1117 = icmp eq i64 %180, %n.vec1113
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
  %188 = shl nuw nsw i64 %polly.indvar595, 3
  %scevgep599 = getelementptr i8, i8* %scevgep598, i64 %188
  %scevgep599600 = bitcast i8* %scevgep599 to double*
  %_p_scalar_601 = load double, double* %scevgep599600, align 8, !alias.scope !98, !noalias !100
  %p_mul.i = fmul fast double %_p_scalar_601, 1.200000e+00
  store double %p_mul.i, double* %scevgep599600, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next596 = add nuw nsw i64 %polly.indvar595, 1
  %exitcond985.not = icmp eq i64 %polly.indvar_next596, %polly.indvar589
  br i1 %exitcond985.not, label %polly.loop_exit594, label %polly.loop_header592, !llvm.loop !106

polly.loop_header602:                             ; preds = %polly.loop_header602.preheader, %polly.loop_exit626
  %indvars.iv967 = phi i64 [ 1200, %polly.loop_header602.preheader ], [ %indvars.iv.next968, %polly.loop_exit626 ]
  %polly.indvar605 = phi i64 [ 0, %polly.loop_header602.preheader ], [ %polly.indvar_next606, %polly.loop_exit626 ]
  %189 = mul nuw nsw i64 %polly.indvar605, 100
  br label %polly.loop_header608

polly.loop_exit626:                               ; preds = %polly.loop_exit663
  %polly.indvar_next606 = add nuw nsw i64 %polly.indvar605, 1
  %indvars.iv.next968 = add nsw i64 %indvars.iv967, -100
  %exitcond984.not = icmp eq i64 %polly.indvar_next606, 12
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
  %190 = mul nsw i64 %polly.indvar605, -100
  br label %polly.loop_header624

polly.loop_header614:                             ; preds = %polly.loop_header614, %polly.loop_header608
  %polly.indvar617 = phi i64 [ 0, %polly.loop_header608 ], [ %polly.indvar_next618, %polly.loop_header614 ]
  %191 = add nuw nsw i64 %polly.indvar617, %189
  %polly.access.mul.call2621 = mul nuw nsw i64 %191, 1000
  %polly.access.add.call2622 = add nuw nsw i64 %polly.access.mul.call2621, %polly.indvar611
  %polly.access.call2623 = getelementptr double, double* %polly.access.cast.call2712, i64 %polly.access.add.call2622
  %polly.access.call2623.load = load double, double* %polly.access.call2623, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2503 = add nuw nsw i64 %polly.indvar617, %polly.access.mul.Packed_MemRef_call2503
  %polly.access.Packed_MemRef_call2503 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503
  store double %polly.access.call2623.load, double* %polly.access.Packed_MemRef_call2503, align 8
  %polly.indvar_next618 = add nuw nsw i64 %polly.indvar617, 1
  %exitcond969.not = icmp eq i64 %polly.indvar_next618, %indvars.iv967
  br i1 %exitcond969.not, label %polly.loop_exit616, label %polly.loop_header614

polly.loop_header624:                             ; preds = %polly.loop_header624.preheader, %polly.loop_exit663
  %indvar1122 = phi i64 [ 0, %polly.loop_header624.preheader ], [ %indvar.next1123, %polly.loop_exit663 ]
  %indvars.iv975 = phi i64 [ 0, %polly.loop_header624.preheader ], [ %indvars.iv.next976, %polly.loop_exit663 ]
  %polly.indvar627 = phi i64 [ %polly.indvar605, %polly.loop_header624.preheader ], [ %polly.indvar_next628, %polly.loop_exit663 ]
  %192 = mul nuw nsw i64 %indvar1122, 100
  %193 = mul nuw nsw i64 %polly.indvar627, 100
  %194 = add nsw i64 %193, %190
  %195 = icmp ugt i64 %194, 100
  %196 = select i1 %195, i64 %194, i64 100
  %197 = add nuw nsw i64 %194, 99
  %polly.loop_guard650.not = icmp ugt i64 %196, %197
  br i1 %polly.loop_guard650.not, label %polly.loop_header630.us, label %polly.loop_header630

polly.loop_header630.us:                          ; preds = %polly.loop_header624, %polly.loop_exit649.us
  %polly.indvar633.us = phi i64 [ %polly.indvar_next634.us, %polly.loop_exit649.us ], [ 0, %polly.loop_header624 ]
  %polly.access.mul.Packed_MemRef_call1501.us = mul nuw nsw i64 %polly.indvar633.us, 1200
  br label %polly.loop_header636.us

polly.loop_header636.us:                          ; preds = %polly.loop_header636.us, %polly.loop_header630.us
  %polly.indvar639.us = phi i64 [ 0, %polly.loop_header630.us ], [ %polly.indvar_next640.us, %polly.loop_header636.us ]
  %198 = add nuw nsw i64 %polly.indvar639.us, %189
  %polly.access.mul.call1643.us = mul nuw nsw i64 %198, 1000
  %polly.access.add.call1644.us = add nuw nsw i64 %polly.access.mul.call1643.us, %polly.indvar633.us
  %polly.access.call1645.us = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644.us
  %polly.access.call1645.load.us = load double, double* %polly.access.call1645.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1501.us = add nuw nsw i64 %polly.indvar639.us, %polly.access.mul.Packed_MemRef_call1501.us
  %polly.access.Packed_MemRef_call1501.us = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501.us
  store double %polly.access.call1645.load.us, double* %polly.access.Packed_MemRef_call1501.us, align 8
  %polly.indvar_next640.us = add nuw nsw i64 %polly.indvar639.us, 1
  %exitcond973.not = icmp eq i64 %polly.indvar_next640.us, 100
  br i1 %exitcond973.not, label %polly.loop_exit649.us, label %polly.loop_header636.us

polly.loop_exit649.us:                            ; preds = %polly.loop_header636.us
  %polly.indvar_next634.us = add nuw nsw i64 %polly.indvar633.us, 1
  %exitcond974.not = icmp eq i64 %polly.indvar_next634.us, 1000
  br i1 %exitcond974.not, label %polly.loop_header661.preheader, label %polly.loop_header630.us

polly.loop_header661.preheader:                   ; preds = %polly.loop_exit649, %polly.loop_exit649.us
  br label %polly.loop_header661

polly.loop_exit663:                               ; preds = %polly.loop_exit669
  %polly.indvar_next628 = add nuw nsw i64 %polly.indvar627, 1
  %indvars.iv.next976 = add nuw nsw i64 %indvars.iv975, 100
  %exitcond983.not = icmp eq i64 %polly.indvar_next628, 12
  %indvar.next1123 = add i64 %indvar1122, 1
  br i1 %exitcond983.not, label %polly.loop_exit626, label %polly.loop_header624

polly.loop_header630:                             ; preds = %polly.loop_header624, %polly.loop_exit649
  %polly.indvar633 = phi i64 [ %polly.indvar_next634, %polly.loop_exit649 ], [ 0, %polly.loop_header624 ]
  %polly.access.mul.Packed_MemRef_call1501 = mul nuw nsw i64 %polly.indvar633, 1200
  br label %polly.loop_header636

polly.loop_exit649:                               ; preds = %polly.loop_header647
  %polly.indvar_next634 = add nuw nsw i64 %polly.indvar633, 1
  %exitcond972.not = icmp eq i64 %polly.indvar_next634, 1000
  br i1 %exitcond972.not, label %polly.loop_header661.preheader, label %polly.loop_header630

polly.loop_header636:                             ; preds = %polly.loop_header636, %polly.loop_header630
  %polly.indvar639 = phi i64 [ 0, %polly.loop_header630 ], [ %polly.indvar_next640, %polly.loop_header636 ]
  %199 = add nuw nsw i64 %polly.indvar639, %189
  %polly.access.mul.call1643 = mul nuw nsw i64 %199, 1000
  %polly.access.add.call1644 = add nuw nsw i64 %polly.access.mul.call1643, %polly.indvar633
  %polly.access.call1645 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1644
  %polly.access.call1645.load = load double, double* %polly.access.call1645, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1501 = add nuw nsw i64 %polly.indvar639, %polly.access.mul.Packed_MemRef_call1501
  %polly.access.Packed_MemRef_call1501 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501
  store double %polly.access.call1645.load, double* %polly.access.Packed_MemRef_call1501, align 8
  %polly.indvar_next640 = add nuw nsw i64 %polly.indvar639, 1
  %exitcond971.not = icmp eq i64 %polly.indvar_next640, 100
  br i1 %exitcond971.not, label %polly.loop_header647, label %polly.loop_header636

polly.loop_header647:                             ; preds = %polly.loop_header636, %polly.loop_header647
  %polly.indvar651 = phi i64 [ %polly.indvar_next652, %polly.loop_header647 ], [ %196, %polly.loop_header636 ]
  %200 = add nuw nsw i64 %polly.indvar651, %189
  %polly.access.mul.call1655 = mul nuw nsw i64 %200, 1000
  %polly.access.add.call1656 = add nuw nsw i64 %polly.access.mul.call1655, %polly.indvar633
  %polly.access.call1657 = getelementptr double, double* %polly.access.cast.call1702, i64 %polly.access.add.call1656
  %polly.access.call1657.load = load double, double* %polly.access.call1657, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1501659 = add nuw nsw i64 %polly.indvar651, %polly.access.mul.Packed_MemRef_call1501
  %polly.access.Packed_MemRef_call1501660 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501659
  store double %polly.access.call1657.load, double* %polly.access.Packed_MemRef_call1501660, align 8
  %polly.indvar_next652 = add nuw nsw i64 %polly.indvar651, 1
  %polly.loop_cond653.not.not = icmp ult i64 %polly.indvar651, %197
  br i1 %polly.loop_cond653.not.not, label %polly.loop_header647, label %polly.loop_exit649

polly.loop_header661:                             ; preds = %polly.loop_header661.preheader, %polly.loop_exit669
  %polly.indvar664 = phi i64 [ %polly.indvar_next665, %polly.loop_exit669 ], [ 0, %polly.loop_header661.preheader ]
  %polly.access.mul.Packed_MemRef_call1501679 = mul nuw nsw i64 %polly.indvar664, 1200
  br label %polly.loop_header667

polly.loop_exit669:                               ; preds = %polly.loop_exit675
  %polly.indvar_next665 = add nuw nsw i64 %polly.indvar664, 1
  %exitcond982.not = icmp eq i64 %polly.indvar_next665, 1000
  br i1 %exitcond982.not, label %polly.loop_exit663, label %polly.loop_header661

polly.loop_header667:                             ; preds = %polly.loop_exit675, %polly.loop_header661
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit675 ], [ %indvars.iv975, %polly.loop_header661 ]
  %polly.indvar670 = phi i64 [ %polly.indvar_next671, %polly.loop_exit675 ], [ 0, %polly.loop_header661 ]
  %201 = add i64 %192, %polly.indvar670
  %smin1124 = call i64 @llvm.smin.i64(i64 %201, i64 99)
  %202 = add nuw nsw i64 %smin1124, 1
  %smin979 = call i64 @llvm.smin.i64(i64 %indvars.iv977, i64 99)
  %203 = add nuw nsw i64 %polly.indvar670, %194
  %204 = add nuw nsw i64 %polly.indvar670, %193
  %polly.access.add.Packed_MemRef_call2503684 = add nuw nsw i64 %203, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call2503685 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call2503684
  %_p_scalar_686 = load double, double* %polly.access.Packed_MemRef_call2503685, align 8
  %polly.access.Packed_MemRef_call1501693 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call2503684
  %_p_scalar_694 = load double, double* %polly.access.Packed_MemRef_call1501693, align 8
  %205 = mul nuw nsw i64 %204, 9600
  %min.iters.check1125 = icmp ult i64 %smin1124, 3
  br i1 %min.iters.check1125, label %polly.loop_header673.preheader, label %vector.ph1126

vector.ph1126:                                    ; preds = %polly.loop_header667
  %n.vec1128 = and i64 %202, -4
  %broadcast.splatinsert1134 = insertelement <4 x double> poison, double %_p_scalar_686, i32 0
  %broadcast.splat1135 = shufflevector <4 x double> %broadcast.splatinsert1134, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1137 = insertelement <4 x double> poison, double %_p_scalar_694, i32 0
  %broadcast.splat1138 = shufflevector <4 x double> %broadcast.splatinsert1137, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %vector.ph1126
  %index1129 = phi i64 [ 0, %vector.ph1126 ], [ %index.next1130, %vector.body1121 ]
  %206 = add nuw nsw i64 %index1129, %189
  %207 = add nuw nsw i64 %index1129, %polly.access.mul.Packed_MemRef_call1501679
  %208 = getelementptr double, double* %Packed_MemRef_call1501, i64 %207
  %209 = bitcast double* %208 to <4 x double>*
  %wide.load1133 = load <4 x double>, <4 x double>* %209, align 8
  %210 = fmul fast <4 x double> %broadcast.splat1135, %wide.load1133
  %211 = getelementptr double, double* %Packed_MemRef_call2503, i64 %207
  %212 = bitcast double* %211 to <4 x double>*
  %wide.load1136 = load <4 x double>, <4 x double>* %212, align 8
  %213 = fmul fast <4 x double> %broadcast.splat1138, %wide.load1136
  %214 = shl i64 %206, 3
  %215 = add nuw nsw i64 %214, %205
  %216 = getelementptr i8, i8* %call, i64 %215
  %217 = bitcast i8* %216 to <4 x double>*
  %wide.load1139 = load <4 x double>, <4 x double>* %217, align 8, !alias.scope !98, !noalias !100
  %218 = fadd fast <4 x double> %213, %210
  %219 = fmul fast <4 x double> %218, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %220 = fadd fast <4 x double> %219, %wide.load1139
  %221 = bitcast i8* %216 to <4 x double>*
  store <4 x double> %220, <4 x double>* %221, align 8, !alias.scope !98, !noalias !100
  %index.next1130 = add i64 %index1129, 4
  %222 = icmp eq i64 %index.next1130, %n.vec1128
  br i1 %222, label %middle.block1119, label %vector.body1121, !llvm.loop !109

middle.block1119:                                 ; preds = %vector.body1121
  %cmp.n1132 = icmp eq i64 %202, %n.vec1128
  br i1 %cmp.n1132, label %polly.loop_exit675, label %polly.loop_header673.preheader

polly.loop_header673.preheader:                   ; preds = %polly.loop_header667, %middle.block1119
  %polly.indvar676.ph = phi i64 [ 0, %polly.loop_header667 ], [ %n.vec1128, %middle.block1119 ]
  br label %polly.loop_header673

polly.loop_exit675:                               ; preds = %polly.loop_header673, %middle.block1119
  %polly.indvar_next671 = add nuw nsw i64 %polly.indvar670, 1
  %indvars.iv.next978 = add nuw nsw i64 %indvars.iv977, 1
  %exitcond981.not = icmp eq i64 %polly.indvar_next671, 100
  br i1 %exitcond981.not, label %polly.loop_exit669, label %polly.loop_header667

polly.loop_header673:                             ; preds = %polly.loop_header673.preheader, %polly.loop_header673
  %polly.indvar676 = phi i64 [ %polly.indvar_next677, %polly.loop_header673 ], [ %polly.indvar676.ph, %polly.loop_header673.preheader ]
  %223 = add nuw nsw i64 %polly.indvar676, %189
  %polly.access.add.Packed_MemRef_call1501680 = add nuw nsw i64 %polly.indvar676, %polly.access.mul.Packed_MemRef_call1501679
  %polly.access.Packed_MemRef_call1501681 = getelementptr double, double* %Packed_MemRef_call1501, i64 %polly.access.add.Packed_MemRef_call1501680
  %_p_scalar_682 = load double, double* %polly.access.Packed_MemRef_call1501681, align 8
  %p_mul27.i = fmul fast double %_p_scalar_686, %_p_scalar_682
  %polly.access.Packed_MemRef_call2503689 = getelementptr double, double* %Packed_MemRef_call2503, i64 %polly.access.add.Packed_MemRef_call1501680
  %_p_scalar_690 = load double, double* %polly.access.Packed_MemRef_call2503689, align 8
  %p_mul37.i = fmul fast double %_p_scalar_694, %_p_scalar_690
  %224 = shl i64 %223, 3
  %225 = add nuw nsw i64 %224, %205
  %scevgep695 = getelementptr i8, i8* %call, i64 %225
  %scevgep695696 = bitcast i8* %scevgep695 to double*
  %_p_scalar_697 = load double, double* %scevgep695696, align 8, !alias.scope !98, !noalias !100
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_697
  store double %p_add42.i, double* %scevgep695696, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next677 = add nuw nsw i64 %polly.indvar676, 1
  %exitcond980.not = icmp eq i64 %polly.indvar676, %smin979
  br i1 %exitcond980.not, label %polly.loop_exit675, label %polly.loop_header673, !llvm.loop !110

polly.loop_header824:                             ; preds = %entry, %polly.loop_exit832
  %indvars.iv1011 = phi i64 [ %indvars.iv.next1012, %polly.loop_exit832 ], [ 0, %entry ]
  %polly.indvar827 = phi i64 [ %polly.indvar_next828, %polly.loop_exit832 ], [ 0, %entry ]
  %smin1013 = call i64 @llvm.smin.i64(i64 %indvars.iv1011, i64 -1168)
  %226 = shl nsw i64 %polly.indvar827, 5
  %227 = add nsw i64 %smin1013, 1199
  br label %polly.loop_header830

polly.loop_exit832:                               ; preds = %polly.loop_exit838
  %polly.indvar_next828 = add nuw nsw i64 %polly.indvar827, 1
  %indvars.iv.next1012 = add nsw i64 %indvars.iv1011, -32
  %exitcond1016.not = icmp eq i64 %polly.indvar_next828, 38
  br i1 %exitcond1016.not, label %polly.loop_header851, label %polly.loop_header824

polly.loop_header830:                             ; preds = %polly.loop_exit838, %polly.loop_header824
  %indvars.iv1007 = phi i64 [ %indvars.iv.next1008, %polly.loop_exit838 ], [ 0, %polly.loop_header824 ]
  %polly.indvar833 = phi i64 [ %polly.indvar_next834, %polly.loop_exit838 ], [ 0, %polly.loop_header824 ]
  %228 = mul nsw i64 %polly.indvar833, -32
  %smin1048 = call i64 @llvm.smin.i64(i64 %228, i64 -1168)
  %229 = add nsw i64 %smin1048, 1200
  %smin1009 = call i64 @llvm.smin.i64(i64 %indvars.iv1007, i64 -1168)
  %230 = shl nsw i64 %polly.indvar833, 5
  %231 = add nsw i64 %smin1009, 1199
  br label %polly.loop_header836

polly.loop_exit838:                               ; preds = %polly.loop_exit844
  %polly.indvar_next834 = add nuw nsw i64 %polly.indvar833, 1
  %indvars.iv.next1008 = add nsw i64 %indvars.iv1007, -32
  %exitcond1015.not = icmp eq i64 %polly.indvar_next834, 38
  br i1 %exitcond1015.not, label %polly.loop_exit832, label %polly.loop_header830

polly.loop_header836:                             ; preds = %polly.loop_exit844, %polly.loop_header830
  %polly.indvar839 = phi i64 [ 0, %polly.loop_header830 ], [ %polly.indvar_next840, %polly.loop_exit844 ]
  %232 = add nuw nsw i64 %polly.indvar839, %226
  %233 = trunc i64 %232 to i32
  %234 = mul nuw nsw i64 %232, 9600
  %min.iters.check = icmp eq i64 %229, 0
  br i1 %min.iters.check, label %polly.loop_header842, label %vector.ph1049

vector.ph1049:                                    ; preds = %polly.loop_header836
  %broadcast.splatinsert1056 = insertelement <4 x i64> poison, i64 %230, i32 0
  %broadcast.splat1057 = shufflevector <4 x i64> %broadcast.splatinsert1056, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1058 = insertelement <4 x i32> poison, i32 %233, i32 0
  %broadcast.splat1059 = shufflevector <4 x i32> %broadcast.splatinsert1058, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1047

vector.body1047:                                  ; preds = %vector.body1047, %vector.ph1049
  %index1050 = phi i64 [ 0, %vector.ph1049 ], [ %index.next1051, %vector.body1047 ]
  %vec.ind1054 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1049 ], [ %vec.ind.next1055, %vector.body1047 ]
  %235 = add nuw nsw <4 x i64> %vec.ind1054, %broadcast.splat1057
  %236 = trunc <4 x i64> %235 to <4 x i32>
  %237 = mul <4 x i32> %broadcast.splat1059, %236
  %238 = add <4 x i32> %237, <i32 3, i32 3, i32 3, i32 3>
  %239 = urem <4 x i32> %238, <i32 1200, i32 1200, i32 1200, i32 1200>
  %240 = sitofp <4 x i32> %239 to <4 x double>
  %241 = fmul fast <4 x double> %240, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %242 = extractelement <4 x i64> %235, i32 0
  %243 = shl i64 %242, 3
  %244 = add nuw nsw i64 %243, %234
  %245 = getelementptr i8, i8* %call, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %241, <4 x double>* %246, align 8, !alias.scope !111, !noalias !113
  %index.next1051 = add i64 %index1050, 4
  %vec.ind.next1055 = add <4 x i64> %vec.ind1054, <i64 4, i64 4, i64 4, i64 4>
  %247 = icmp eq i64 %index.next1051, %229
  br i1 %247, label %polly.loop_exit844, label %vector.body1047, !llvm.loop !116

polly.loop_exit844:                               ; preds = %vector.body1047, %polly.loop_header842
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar839, %227
  br i1 %exitcond1014.not, label %polly.loop_exit838, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_header836, %polly.loop_header842
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_header842 ], [ 0, %polly.loop_header836 ]
  %248 = add nuw nsw i64 %polly.indvar845, %230
  %249 = trunc i64 %248 to i32
  %250 = mul i32 %249, %233
  %251 = add i32 %250, 3
  %252 = urem i32 %251, 1200
  %p_conv31.i = sitofp i32 %252 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %253 = shl i64 %248, 3
  %254 = add nuw nsw i64 %253, %234
  %scevgep848 = getelementptr i8, i8* %call, i64 %254
  %scevgep848849 = bitcast i8* %scevgep848 to double*
  store double %p_div33.i, double* %scevgep848849, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar845, %231
  br i1 %exitcond1010.not, label %polly.loop_exit844, label %polly.loop_header842, !llvm.loop !117

polly.loop_header851:                             ; preds = %polly.loop_exit832, %polly.loop_exit859
  %indvars.iv1001 = phi i64 [ %indvars.iv.next1002, %polly.loop_exit859 ], [ 0, %polly.loop_exit832 ]
  %polly.indvar854 = phi i64 [ %polly.indvar_next855, %polly.loop_exit859 ], [ 0, %polly.loop_exit832 ]
  %smin1003 = call i64 @llvm.smin.i64(i64 %indvars.iv1001, i64 -1168)
  %255 = shl nsw i64 %polly.indvar854, 5
  %256 = add nsw i64 %smin1003, 1199
  br label %polly.loop_header857

polly.loop_exit859:                               ; preds = %polly.loop_exit865
  %polly.indvar_next855 = add nuw nsw i64 %polly.indvar854, 1
  %indvars.iv.next1002 = add nsw i64 %indvars.iv1001, -32
  %exitcond1006.not = icmp eq i64 %polly.indvar_next855, 38
  br i1 %exitcond1006.not, label %polly.loop_header877, label %polly.loop_header851

polly.loop_header857:                             ; preds = %polly.loop_exit865, %polly.loop_header851
  %indvars.iv997 = phi i64 [ %indvars.iv.next998, %polly.loop_exit865 ], [ 0, %polly.loop_header851 ]
  %polly.indvar860 = phi i64 [ %polly.indvar_next861, %polly.loop_exit865 ], [ 0, %polly.loop_header851 ]
  %257 = mul nsw i64 %polly.indvar860, -32
  %smin1063 = call i64 @llvm.smin.i64(i64 %257, i64 -968)
  %258 = add nsw i64 %smin1063, 1000
  %smin999 = call i64 @llvm.smin.i64(i64 %indvars.iv997, i64 -968)
  %259 = shl nsw i64 %polly.indvar860, 5
  %260 = add nsw i64 %smin999, 999
  br label %polly.loop_header863

polly.loop_exit865:                               ; preds = %polly.loop_exit871
  %polly.indvar_next861 = add nuw nsw i64 %polly.indvar860, 1
  %indvars.iv.next998 = add nsw i64 %indvars.iv997, -32
  %exitcond1005.not = icmp eq i64 %polly.indvar_next861, 32
  br i1 %exitcond1005.not, label %polly.loop_exit859, label %polly.loop_header857

polly.loop_header863:                             ; preds = %polly.loop_exit871, %polly.loop_header857
  %polly.indvar866 = phi i64 [ 0, %polly.loop_header857 ], [ %polly.indvar_next867, %polly.loop_exit871 ]
  %261 = add nuw nsw i64 %polly.indvar866, %255
  %262 = trunc i64 %261 to i32
  %263 = mul nuw nsw i64 %261, 8000
  %min.iters.check1064 = icmp eq i64 %258, 0
  br i1 %min.iters.check1064, label %polly.loop_header869, label %vector.ph1065

vector.ph1065:                                    ; preds = %polly.loop_header863
  %broadcast.splatinsert1074 = insertelement <4 x i64> poison, i64 %259, i32 0
  %broadcast.splat1075 = shufflevector <4 x i64> %broadcast.splatinsert1074, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1076 = insertelement <4 x i32> poison, i32 %262, i32 0
  %broadcast.splat1077 = shufflevector <4 x i32> %broadcast.splatinsert1076, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %vector.ph1065
  %index1068 = phi i64 [ 0, %vector.ph1065 ], [ %index.next1069, %vector.body1062 ]
  %vec.ind1072 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1065 ], [ %vec.ind.next1073, %vector.body1062 ]
  %264 = add nuw nsw <4 x i64> %vec.ind1072, %broadcast.splat1075
  %265 = trunc <4 x i64> %264 to <4 x i32>
  %266 = mul <4 x i32> %broadcast.splat1077, %265
  %267 = add <4 x i32> %266, <i32 2, i32 2, i32 2, i32 2>
  %268 = urem <4 x i32> %267, <i32 1000, i32 1000, i32 1000, i32 1000>
  %269 = sitofp <4 x i32> %268 to <4 x double>
  %270 = fmul fast <4 x double> %269, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %271 = extractelement <4 x i64> %264, i32 0
  %272 = shl i64 %271, 3
  %273 = add nuw nsw i64 %272, %263
  %274 = getelementptr i8, i8* %call2, i64 %273
  %275 = bitcast i8* %274 to <4 x double>*
  store <4 x double> %270, <4 x double>* %275, align 8, !alias.scope !115, !noalias !118
  %index.next1069 = add i64 %index1068, 4
  %vec.ind.next1073 = add <4 x i64> %vec.ind1072, <i64 4, i64 4, i64 4, i64 4>
  %276 = icmp eq i64 %index.next1069, %258
  br i1 %276, label %polly.loop_exit871, label %vector.body1062, !llvm.loop !119

polly.loop_exit871:                               ; preds = %vector.body1062, %polly.loop_header869
  %polly.indvar_next867 = add nuw nsw i64 %polly.indvar866, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar866, %256
  br i1 %exitcond1004.not, label %polly.loop_exit865, label %polly.loop_header863

polly.loop_header869:                             ; preds = %polly.loop_header863, %polly.loop_header869
  %polly.indvar872 = phi i64 [ %polly.indvar_next873, %polly.loop_header869 ], [ 0, %polly.loop_header863 ]
  %277 = add nuw nsw i64 %polly.indvar872, %259
  %278 = trunc i64 %277 to i32
  %279 = mul i32 %278, %262
  %280 = add i32 %279, 2
  %281 = urem i32 %280, 1000
  %p_conv10.i = sitofp i32 %281 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %282 = shl i64 %277, 3
  %283 = add nuw nsw i64 %282, %263
  %scevgep875 = getelementptr i8, i8* %call2, i64 %283
  %scevgep875876 = bitcast i8* %scevgep875 to double*
  store double %p_div12.i, double* %scevgep875876, align 8, !alias.scope !115, !noalias !118
  %polly.indvar_next873 = add nuw nsw i64 %polly.indvar872, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar872, %260
  br i1 %exitcond1000.not, label %polly.loop_exit871, label %polly.loop_header869, !llvm.loop !120

polly.loop_header877:                             ; preds = %polly.loop_exit859, %polly.loop_exit885
  %indvars.iv991 = phi i64 [ %indvars.iv.next992, %polly.loop_exit885 ], [ 0, %polly.loop_exit859 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_exit859 ]
  %smin993 = call i64 @llvm.smin.i64(i64 %indvars.iv991, i64 -1168)
  %284 = shl nsw i64 %polly.indvar880, 5
  %285 = add nsw i64 %smin993, 1199
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next992 = add nsw i64 %indvars.iv991, -32
  %exitcond996.not = icmp eq i64 %polly.indvar_next881, 38
  br i1 %exitcond996.not, label %init_array.exit, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %indvars.iv987 = phi i64 [ %indvars.iv.next988, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %286 = mul nsw i64 %polly.indvar886, -32
  %smin1081 = call i64 @llvm.smin.i64(i64 %286, i64 -968)
  %287 = add nsw i64 %smin1081, 1000
  %smin989 = call i64 @llvm.smin.i64(i64 %indvars.iv987, i64 -968)
  %288 = shl nsw i64 %polly.indvar886, 5
  %289 = add nsw i64 %smin989, 999
  br label %polly.loop_header889

polly.loop_exit891:                               ; preds = %polly.loop_exit897
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %indvars.iv.next988 = add nsw i64 %indvars.iv987, -32
  %exitcond995.not = icmp eq i64 %polly.indvar_next887, 32
  br i1 %exitcond995.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_exit897, %polly.loop_header883
  %polly.indvar892 = phi i64 [ 0, %polly.loop_header883 ], [ %polly.indvar_next893, %polly.loop_exit897 ]
  %290 = add nuw nsw i64 %polly.indvar892, %284
  %291 = trunc i64 %290 to i32
  %292 = mul nuw nsw i64 %290, 8000
  %min.iters.check1082 = icmp eq i64 %287, 0
  br i1 %min.iters.check1082, label %polly.loop_header895, label %vector.ph1083

vector.ph1083:                                    ; preds = %polly.loop_header889
  %broadcast.splatinsert1092 = insertelement <4 x i64> poison, i64 %288, i32 0
  %broadcast.splat1093 = shufflevector <4 x i64> %broadcast.splatinsert1092, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1094 = insertelement <4 x i32> poison, i32 %291, i32 0
  %broadcast.splat1095 = shufflevector <4 x i32> %broadcast.splatinsert1094, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1080

vector.body1080:                                  ; preds = %vector.body1080, %vector.ph1083
  %index1086 = phi i64 [ 0, %vector.ph1083 ], [ %index.next1087, %vector.body1080 ]
  %vec.ind1090 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1083 ], [ %vec.ind.next1091, %vector.body1080 ]
  %293 = add nuw nsw <4 x i64> %vec.ind1090, %broadcast.splat1093
  %294 = trunc <4 x i64> %293 to <4 x i32>
  %295 = mul <4 x i32> %broadcast.splat1095, %294
  %296 = add <4 x i32> %295, <i32 1, i32 1, i32 1, i32 1>
  %297 = urem <4 x i32> %296, <i32 1200, i32 1200, i32 1200, i32 1200>
  %298 = sitofp <4 x i32> %297 to <4 x double>
  %299 = fmul fast <4 x double> %298, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %300 = extractelement <4 x i64> %293, i32 0
  %301 = shl i64 %300, 3
  %302 = add nuw nsw i64 %301, %292
  %303 = getelementptr i8, i8* %call1, i64 %302
  %304 = bitcast i8* %303 to <4 x double>*
  store <4 x double> %299, <4 x double>* %304, align 8, !alias.scope !114, !noalias !121
  %index.next1087 = add i64 %index1086, 4
  %vec.ind.next1091 = add <4 x i64> %vec.ind1090, <i64 4, i64 4, i64 4, i64 4>
  %305 = icmp eq i64 %index.next1087, %287
  br i1 %305, label %polly.loop_exit897, label %vector.body1080, !llvm.loop !122

polly.loop_exit897:                               ; preds = %vector.body1080, %polly.loop_header895
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond994.not = icmp eq i64 %polly.indvar892, %285
  br i1 %exitcond994.not, label %polly.loop_exit891, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_header889, %polly.loop_header895
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_header895 ], [ 0, %polly.loop_header889 ]
  %306 = add nuw nsw i64 %polly.indvar898, %288
  %307 = trunc i64 %306 to i32
  %308 = mul i32 %307, %291
  %309 = add i32 %308, 1
  %310 = urem i32 %309, 1200
  %p_conv.i = sitofp i32 %310 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %311 = shl i64 %306, 3
  %312 = add nuw nsw i64 %311, %292
  %scevgep902 = getelementptr i8, i8* %call1, i64 %312
  %scevgep902903 = bitcast i8* %scevgep902 to double*
  store double %p_div.i, double* %scevgep902903, align 8, !alias.scope !114, !noalias !121
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %exitcond990.not = icmp eq i64 %polly.indvar898, %289
  br i1 %exitcond990.not, label %polly.loop_exit897, label %polly.loop_header895, !llvm.loop !123
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
!26 = !{!"llvm.loop.tile.size", i32 100}
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
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !80, !13}
!85 = distinct !{!85, !86, !"polly.alias.scope.MemRef_call"}
!86 = distinct !{!86, !"polly.alias.scope.domain"}
!87 = !{!88, !89, !90, !91}
!88 = distinct !{!88, !86, !"polly.alias.scope.MemRef_call1"}
!89 = distinct !{!89, !86, !"polly.alias.scope.MemRef_call2"}
!90 = distinct !{!90, !86, !"polly.alias.scope.Packed_MemRef_call1"}
!91 = distinct !{!91, !86, !"polly.alias.scope.Packed_MemRef_call2"}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !80, !13}
!94 = !{!85, !88, !90, !91}
!95 = !{!85, !89, !90, !91}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !80, !13}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102, !103, !104}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !99, !"polly.alias.scope.Packed_MemRef_call1"}
!104 = distinct !{!104, !99, !"polly.alias.scope.Packed_MemRef_call2"}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !80, !13}
!107 = !{!98, !101, !103, !104}
!108 = !{!98, !102, !103, !104}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !80, !13}
!111 = distinct !{!111, !112, !"polly.alias.scope.MemRef_call"}
!112 = distinct !{!112, !"polly.alias.scope.domain"}
!113 = !{!114, !115}
!114 = distinct !{!114, !112, !"polly.alias.scope.MemRef_call1"}
!115 = distinct !{!115, !112, !"polly.alias.scope.MemRef_call2"}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !80, !13}
!118 = !{!114, !111}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !80, !13}
!121 = !{!115, !111}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !80, !13}
