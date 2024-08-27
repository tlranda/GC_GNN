; ModuleID = 'syr2k_exhaustive/mmp_all_XL_8841.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_8841.c"
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
  %call712 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1573 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1573, %call2
  %polly.access.call2593 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2593, %call1
  %2 = or i1 %0, %1
  %polly.access.call613 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call613, %call2
  %4 = icmp ule i8* %polly.access.call2593, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call613, %call1
  %8 = icmp ule i8* %polly.access.call1573, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header686, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep883 = getelementptr i8, i8* %call2, i64 %12
  %scevgep882 = getelementptr i8, i8* %call2, i64 %11
  %scevgep881 = getelementptr i8, i8* %call1, i64 %12
  %scevgep880 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep880, %scevgep883
  %bound1 = icmp ult i8* %scevgep882, %scevgep881
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
  br i1 %exitcond18.not.i, label %vector.ph887, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph887:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert894 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat895 = shufflevector <4 x i64> %broadcast.splatinsert894, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body886

vector.body886:                                   ; preds = %vector.body886, %vector.ph887
  %index888 = phi i64 [ 0, %vector.ph887 ], [ %index.next889, %vector.body886 ]
  %vec.ind892 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph887 ], [ %vec.ind.next893, %vector.body886 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind892, %broadcast.splat895
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv7.i, i64 %index888
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next889 = add i64 %index888, 4
  %vec.ind.next893 = add <4 x i64> %vec.ind892, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next889, 1200
  br i1 %40, label %for.inc41.i, label %vector.body886, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body886
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph887, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit747
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header491, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check950 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check950, label %for.body3.i46.preheader1027, label %vector.ph951

vector.ph951:                                     ; preds = %for.body3.i46.preheader
  %n.vec953 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body949

vector.body949:                                   ; preds = %vector.body949, %vector.ph951
  %index954 = phi i64 [ 0, %vector.ph951 ], [ %index.next955, %vector.body949 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i, i64 %index954
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next955 = add i64 %index954, 4
  %46 = icmp eq i64 %index.next955, %n.vec953
  br i1 %46, label %middle.block947, label %vector.body949, !llvm.loop !18

middle.block947:                                  ; preds = %vector.body949
  %cmp.n957 = icmp eq i64 %indvars.iv21.i, %n.vec953
  br i1 %cmp.n957, label %for.inc6.i, label %for.body3.i46.preheader1027

for.body3.i46.preheader1027:                      ; preds = %for.body3.i46.preheader, %middle.block947
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec953, %middle.block947 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1027, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1027 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block947, %for.cond1.preheader.i45
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
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !21

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !31

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !40

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit515
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check973 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check973, label %for.body3.i60.preheader1025, label %vector.ph974

vector.ph974:                                     ; preds = %for.body3.i60.preheader
  %n.vec976 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body972

vector.body972:                                   ; preds = %vector.body972, %vector.ph974
  %index977 = phi i64 [ 0, %vector.ph974 ], [ %index.next978, %vector.body972 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i52, i64 %index977
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load981 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load981, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next978 = add i64 %index977, 4
  %57 = icmp eq i64 %index.next978, %n.vec976
  br i1 %57, label %middle.block970, label %vector.body972, !llvm.loop !54

middle.block970:                                  ; preds = %vector.body972
  %cmp.n980 = icmp eq i64 %indvars.iv21.i52, %n.vec976
  br i1 %cmp.n980, label %for.inc6.i63, label %for.body3.i60.preheader1025

for.body3.i60.preheader1025:                      ; preds = %for.body3.i60.preheader, %middle.block970
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec976, %middle.block970 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1025, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1025 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block970, %for.cond1.preheader.i54
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
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !21

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !31

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !40

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit360
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check999 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check999, label %for.body3.i99.preheader1023, label %vector.ph1000

vector.ph1000:                                    ; preds = %for.body3.i99.preheader
  %n.vec1002 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %vector.ph1000
  %index1003 = phi i64 [ 0, %vector.ph1000 ], [ %index.next1004, %vector.body998 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i91, i64 %index1003
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1007 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1007, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1004 = add i64 %index1003, 4
  %68 = icmp eq i64 %index.next1004, %n.vec1002
  br i1 %68, label %middle.block996, label %vector.body998, !llvm.loop !56

middle.block996:                                  ; preds = %vector.body998
  %cmp.n1006 = icmp eq i64 %indvars.iv21.i91, %n.vec1002
  br i1 %cmp.n1006, label %for.inc6.i102, label %for.body3.i99.preheader1023

for.body3.i99.preheader1023:                      ; preds = %for.body3.i99.preheader, %middle.block996
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1002, %middle.block996 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1023, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1023 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block996, %for.cond1.preheader.i93
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
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !21

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !31

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !40

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !58
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !60

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !61

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1011 = phi i64 [ %indvar.next1012, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1011, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1013 = icmp ult i64 %88, 4
  br i1 %min.iters.check1013, label %polly.loop_header191.preheader, label %vector.ph1014

vector.ph1014:                                    ; preds = %polly.loop_header
  %n.vec1016 = and i64 %88, -4
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %vector.ph1014
  %index1017 = phi i64 [ 0, %vector.ph1014 ], [ %index.next1018, %vector.body1010 ]
  %90 = shl nuw nsw i64 %index1017, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1021 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1021, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1018 = add i64 %index1017, 4
  %95 = icmp eq i64 %index.next1018, %n.vec1016
  br i1 %95, label %middle.block1008, label %vector.body1010, !llvm.loop !67

middle.block1008:                                 ; preds = %vector.body1010
  %cmp.n1020 = icmp eq i64 %88, %n.vec1016
  br i1 %cmp.n1020, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1008
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1016, %middle.block1008 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1008
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond787.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1012 = add i64 %indvar1011, 1
  br i1 %exitcond787.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond786.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond786.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = shl i64 %polly.indvar202, 5
  %98 = shl i64 %polly.indvar202, 5
  %99 = shl i64 %polly.indvar202, 5
  %100 = or i64 %99, 8
  %101 = shl i64 %polly.indvar202, 5
  %102 = or i64 %101, 16
  %103 = or i64 %97, 24
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond785.not = icmp eq i64 %polly.indvar_next203, 250
  br i1 %exitcond785.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv776 = phi i64 [ %indvars.iv.next777, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %104 = mul nuw nsw i64 %polly.indvar208, 3
  %105 = shl nsw i64 %polly.indvar208, 8
  %106 = mul nsw i64 %polly.indvar208, -256
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit225.3
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %indvars.iv.next777 = add nsw i64 %indvars.iv776, -16
  %exitcond784.not = icmp eq i64 %polly.indvar_next209, 5
  br i1 %exitcond784.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit225.3, %polly.loop_header205
  %indvars.iv778 = phi i64 [ %indvars.iv.next779, %polly.loop_exit225.3 ], [ %indvars.iv776, %polly.loop_header205 ]
  %indvars.iv774 = phi i64 [ %indvars.iv.next775, %polly.loop_exit225.3 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit225.3 ], [ %104, %polly.loop_header205 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv774, i64 0)
  %107 = add i64 %smax, %indvars.iv778
  %108 = mul nuw nsw i64 %polly.indvar214, 80
  %109 = sub nsw i64 %105, %108
  %110 = icmp sgt i64 %109, 0
  %111 = select i1 %110, i64 %109, i64 0
  br label %polly.loop_header223

polly.loop_header223:                             ; preds = %polly.loop_exit231, %polly.loop_header211
  %indvars.iv780 = phi i64 [ %indvars.iv.next781, %polly.loop_exit231 ], [ %107, %polly.loop_header211 ]
  %polly.indvar226 = phi i64 [ %polly.indvar_next227, %polly.loop_exit231 ], [ %111, %polly.loop_header211 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv780, i64 255)
  %112 = add nuw i64 %polly.indvar226, %108
  %113 = add i64 %112, %106
  %polly.loop_guard860 = icmp sgt i64 %113, -1
  br i1 %polly.loop_guard860, label %polly.loop_header229.preheader, label %polly.loop_exit231

polly.loop_header229.preheader:                   ; preds = %polly.loop_header223
  %114 = mul i64 %112, 8000
  %115 = add i64 %114, %98
  %scevgep238 = getelementptr i8, i8* %call2, i64 %115
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !66, !noalias !70
  %scevgep244 = getelementptr i8, i8* %call1, i64 %115
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !65, !noalias !71
  %116 = mul i64 %112, 9600
  br label %polly.loop_header229

polly.loop_exit231:                               ; preds = %polly.loop_header229, %polly.loop_header223
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %polly.loop_cond228 = icmp ult i64 %polly.indvar226, 79
  %indvars.iv.next781 = add i64 %indvars.iv780, 1
  br i1 %polly.loop_cond228, label %polly.loop_header223, label %polly.loop_header223.1

polly.loop_header229:                             ; preds = %polly.loop_header229.preheader, %polly.loop_header229
  %polly.indvar232 = phi i64 [ %polly.indvar_next233, %polly.loop_header229 ], [ 0, %polly.loop_header229.preheader ]
  %117 = add nuw nsw i64 %polly.indvar232, %105
  %118 = mul nuw nsw i64 %117, 8000
  %119 = add nuw nsw i64 %118, %98
  %scevgep235 = getelementptr i8, i8* %call1, i64 %119
  %scevgep235236 = bitcast i8* %scevgep235 to double*
  %_p_scalar_237 = load double, double* %scevgep235236, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_240, %_p_scalar_237
  %scevgep241 = getelementptr i8, i8* %call2, i64 %119
  %scevgep241242 = bitcast i8* %scevgep241 to double*
  %_p_scalar_243 = load double, double* %scevgep241242, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_246, %_p_scalar_243
  %120 = shl i64 %117, 3
  %121 = add i64 %120, %116
  %scevgep247 = getelementptr i8, i8* %call, i64 %121
  %scevgep247248 = bitcast i8* %scevgep247 to double*
  %_p_scalar_249 = load double, double* %scevgep247248, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_249
  store double %p_add42.i118, double* %scevgep247248, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233 = add nuw nsw i64 %polly.indvar232, 1
  %exitcond.not = icmp eq i64 %polly.indvar232, %smin
  br i1 %exitcond.not, label %polly.loop_exit231, label %polly.loop_header229

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar985 = phi i64 [ %indvar.next986, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %122 = add i64 %indvar985, 1
  %123 = mul nuw nsw i64 %polly.indvar339, 9600
  %scevgep348 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check987 = icmp ult i64 %122, 4
  br i1 %min.iters.check987, label %polly.loop_header342.preheader, label %vector.ph988

vector.ph988:                                     ; preds = %polly.loop_header336
  %n.vec990 = and i64 %122, -4
  br label %vector.body984

vector.body984:                                   ; preds = %vector.body984, %vector.ph988
  %index991 = phi i64 [ 0, %vector.ph988 ], [ %index.next992, %vector.body984 ]
  %124 = shl nuw nsw i64 %index991, 3
  %125 = getelementptr i8, i8* %scevgep348, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load995 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !72, !noalias !74
  %127 = fmul fast <4 x double> %wide.load995, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !72, !noalias !74
  %index.next992 = add i64 %index991, 4
  %129 = icmp eq i64 %index.next992, %n.vec990
  br i1 %129, label %middle.block982, label %vector.body984, !llvm.loop !77

middle.block982:                                  ; preds = %vector.body984
  %cmp.n994 = icmp eq i64 %122, %n.vec990
  br i1 %cmp.n994, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block982
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec990, %middle.block982 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block982
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond806.not = icmp eq i64 %polly.indvar_next340, 1200
  %indvar.next986 = add i64 %indvar985, 1
  br i1 %exitcond806.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %130
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond805.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond805.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !78

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit360
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %131 = shl i64 %polly.indvar355, 5
  %132 = shl i64 %polly.indvar355, 5
  %133 = shl i64 %polly.indvar355, 5
  %134 = or i64 %133, 8
  %135 = shl i64 %polly.indvar355, 5
  %136 = or i64 %135, 16
  %137 = or i64 %131, 24
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_exit366
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond804.not = icmp eq i64 %polly.indvar_next356, 250
  br i1 %exitcond804.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.loop_header352
  %indvars.iv793 = phi i64 [ %indvars.iv.next794, %polly.loop_exit366 ], [ 0, %polly.loop_header352 ]
  %indvars.iv788 = phi i64 [ %indvars.iv.next789, %polly.loop_exit366 ], [ 0, %polly.loop_header352 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 0, %polly.loop_header352 ]
  %138 = mul nuw nsw i64 %polly.indvar361, 3
  %139 = shl nsw i64 %polly.indvar361, 8
  %140 = mul nsw i64 %polly.indvar361, -256
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_exit378.3
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %indvars.iv.next789 = add nuw nsw i64 %indvars.iv788, 16
  %indvars.iv.next794 = add nsw i64 %indvars.iv793, -16
  %exitcond803.not = icmp eq i64 %polly.indvar_next362, 5
  br i1 %exitcond803.not, label %polly.loop_exit360, label %polly.loop_header358

polly.loop_header364:                             ; preds = %polly.loop_exit378.3, %polly.loop_header358
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %polly.loop_exit378.3 ], [ %indvars.iv793, %polly.loop_header358 ]
  %indvars.iv790 = phi i64 [ %indvars.iv.next791, %polly.loop_exit378.3 ], [ %indvars.iv788, %polly.loop_header358 ]
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_exit378.3 ], [ %138, %polly.loop_header358 ]
  %smax792 = call i64 @llvm.smax.i64(i64 %indvars.iv790, i64 0)
  %141 = add i64 %smax792, %indvars.iv795
  %142 = mul nuw nsw i64 %polly.indvar367, 80
  %143 = sub nsw i64 %139, %142
  %144 = icmp sgt i64 %143, 0
  %145 = select i1 %144, i64 %143, i64 0
  br label %polly.loop_header376

polly.loop_header376:                             ; preds = %polly.loop_exit385, %polly.loop_header364
  %indvars.iv797 = phi i64 [ %indvars.iv.next798, %polly.loop_exit385 ], [ %141, %polly.loop_header364 ]
  %polly.indvar379 = phi i64 [ %polly.indvar_next380, %polly.loop_exit385 ], [ %145, %polly.loop_header364 ]
  %smin799 = call i64 @llvm.smin.i64(i64 %indvars.iv797, i64 255)
  %146 = add nuw i64 %polly.indvar379, %142
  %147 = add i64 %146, %140
  %polly.loop_guard386864 = icmp sgt i64 %147, -1
  br i1 %polly.loop_guard386864, label %polly.loop_header383.preheader, label %polly.loop_exit385

polly.loop_header383.preheader:                   ; preds = %polly.loop_header376
  %148 = mul i64 %146, 8000
  %149 = add i64 %148, %132
  %scevgep393 = getelementptr i8, i8* %call2, i64 %149
  %scevgep393394 = bitcast i8* %scevgep393 to double*
  %_p_scalar_395 = load double, double* %scevgep393394, align 8, !alias.scope !76, !noalias !79
  %scevgep399 = getelementptr i8, i8* %call1, i64 %149
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !75, !noalias !80
  %150 = mul i64 %146, 9600
  br label %polly.loop_header383

polly.loop_exit385:                               ; preds = %polly.loop_header383, %polly.loop_header376
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %polly.loop_cond381 = icmp ult i64 %polly.indvar379, 79
  %indvars.iv.next798 = add i64 %indvars.iv797, 1
  br i1 %polly.loop_cond381, label %polly.loop_header376, label %polly.loop_header376.1

polly.loop_header383:                             ; preds = %polly.loop_header383.preheader, %polly.loop_header383
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_header383 ], [ 0, %polly.loop_header383.preheader ]
  %151 = add nuw nsw i64 %polly.indvar387, %139
  %152 = mul nuw nsw i64 %151, 8000
  %153 = add nuw nsw i64 %152, %132
  %scevgep390 = getelementptr i8, i8* %call1, i64 %153
  %scevgep390391 = bitcast i8* %scevgep390 to double*
  %_p_scalar_392 = load double, double* %scevgep390391, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_395, %_p_scalar_392
  %scevgep396 = getelementptr i8, i8* %call2, i64 %153
  %scevgep396397 = bitcast i8* %scevgep396 to double*
  %_p_scalar_398 = load double, double* %scevgep396397, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_401, %_p_scalar_398
  %154 = shl i64 %151, 3
  %155 = add i64 %154, %150
  %scevgep402 = getelementptr i8, i8* %call, i64 %155
  %scevgep402403 = bitcast i8* %scevgep402 to double*
  %_p_scalar_404 = load double, double* %scevgep402403, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_404
  store double %p_add42.i79, double* %scevgep402403, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond800.not = icmp eq i64 %polly.indvar387, %smin799
  br i1 %exitcond800.not, label %polly.loop_exit385, label %polly.loop_header383

polly.loop_header491:                             ; preds = %init_array.exit, %polly.loop_exit499
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit499 ], [ 0, %init_array.exit ]
  %polly.indvar494 = phi i64 [ %polly.indvar_next495, %polly.loop_exit499 ], [ 1, %init_array.exit ]
  %156 = add i64 %indvar, 1
  %157 = mul nuw nsw i64 %polly.indvar494, 9600
  %scevgep503 = getelementptr i8, i8* %call, i64 %157
  %min.iters.check961 = icmp ult i64 %156, 4
  br i1 %min.iters.check961, label %polly.loop_header497.preheader, label %vector.ph962

vector.ph962:                                     ; preds = %polly.loop_header491
  %n.vec964 = and i64 %156, -4
  br label %vector.body960

vector.body960:                                   ; preds = %vector.body960, %vector.ph962
  %index965 = phi i64 [ 0, %vector.ph962 ], [ %index.next966, %vector.body960 ]
  %158 = shl nuw nsw i64 %index965, 3
  %159 = getelementptr i8, i8* %scevgep503, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load969 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !81, !noalias !83
  %161 = fmul fast <4 x double> %wide.load969, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %162 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !81, !noalias !83
  %index.next966 = add i64 %index965, 4
  %163 = icmp eq i64 %index.next966, %n.vec964
  br i1 %163, label %middle.block958, label %vector.body960, !llvm.loop !86

middle.block958:                                  ; preds = %vector.body960
  %cmp.n968 = icmp eq i64 %156, %n.vec964
  br i1 %cmp.n968, label %polly.loop_exit499, label %polly.loop_header497.preheader

polly.loop_header497.preheader:                   ; preds = %polly.loop_header491, %middle.block958
  %polly.indvar500.ph = phi i64 [ 0, %polly.loop_header491 ], [ %n.vec964, %middle.block958 ]
  br label %polly.loop_header497

polly.loop_exit499:                               ; preds = %polly.loop_header497, %middle.block958
  %polly.indvar_next495 = add nuw nsw i64 %polly.indvar494, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next495, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond825.not, label %polly.loop_header507, label %polly.loop_header491

polly.loop_header497:                             ; preds = %polly.loop_header497.preheader, %polly.loop_header497
  %polly.indvar500 = phi i64 [ %polly.indvar_next501, %polly.loop_header497 ], [ %polly.indvar500.ph, %polly.loop_header497.preheader ]
  %164 = shl nuw nsw i64 %polly.indvar500, 3
  %scevgep504 = getelementptr i8, i8* %scevgep503, i64 %164
  %scevgep504505 = bitcast i8* %scevgep504 to double*
  %_p_scalar_506 = load double, double* %scevgep504505, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_506, 1.200000e+00
  store double %p_mul.i, double* %scevgep504505, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next501 = add nuw nsw i64 %polly.indvar500, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next501, %polly.indvar494
  br i1 %exitcond824.not, label %polly.loop_exit499, label %polly.loop_header497, !llvm.loop !87

polly.loop_header507:                             ; preds = %polly.loop_exit499, %polly.loop_exit515
  %polly.indvar510 = phi i64 [ %polly.indvar_next511, %polly.loop_exit515 ], [ 0, %polly.loop_exit499 ]
  %165 = shl i64 %polly.indvar510, 5
  %166 = shl i64 %polly.indvar510, 5
  %167 = shl i64 %polly.indvar510, 5
  %168 = or i64 %167, 8
  %169 = shl i64 %polly.indvar510, 5
  %170 = or i64 %169, 16
  %171 = or i64 %165, 24
  br label %polly.loop_header513

polly.loop_exit515:                               ; preds = %polly.loop_exit521
  %polly.indvar_next511 = add nuw nsw i64 %polly.indvar510, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next511, 250
  br i1 %exitcond823.not, label %kernel_syr2k.exit, label %polly.loop_header507

polly.loop_header513:                             ; preds = %polly.loop_exit521, %polly.loop_header507
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %polly.loop_exit521 ], [ 0, %polly.loop_header507 ]
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit521 ], [ 0, %polly.loop_header507 ]
  %polly.indvar516 = phi i64 [ %polly.indvar_next517, %polly.loop_exit521 ], [ 0, %polly.loop_header507 ]
  %172 = mul nuw nsw i64 %polly.indvar516, 3
  %173 = shl nsw i64 %polly.indvar516, 8
  %174 = mul nsw i64 %polly.indvar516, -256
  br label %polly.loop_header519

polly.loop_exit521:                               ; preds = %polly.loop_exit533.3
  %polly.indvar_next517 = add nuw nsw i64 %polly.indvar516, 1
  %indvars.iv.next808 = add nuw nsw i64 %indvars.iv807, 16
  %indvars.iv.next813 = add nsw i64 %indvars.iv812, -16
  %exitcond822.not = icmp eq i64 %polly.indvar_next517, 5
  br i1 %exitcond822.not, label %polly.loop_exit515, label %polly.loop_header513

polly.loop_header519:                             ; preds = %polly.loop_exit533.3, %polly.loop_header513
  %indvars.iv814 = phi i64 [ %indvars.iv.next815, %polly.loop_exit533.3 ], [ %indvars.iv812, %polly.loop_header513 ]
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %polly.loop_exit533.3 ], [ %indvars.iv807, %polly.loop_header513 ]
  %polly.indvar522 = phi i64 [ %polly.indvar_next523, %polly.loop_exit533.3 ], [ %172, %polly.loop_header513 ]
  %smax811 = call i64 @llvm.smax.i64(i64 %indvars.iv809, i64 0)
  %175 = add i64 %smax811, %indvars.iv814
  %176 = mul nuw nsw i64 %polly.indvar522, 80
  %177 = sub nsw i64 %173, %176
  %178 = icmp sgt i64 %177, 0
  %179 = select i1 %178, i64 %177, i64 0
  br label %polly.loop_header531

polly.loop_header531:                             ; preds = %polly.loop_exit540, %polly.loop_header519
  %indvars.iv816 = phi i64 [ %indvars.iv.next817, %polly.loop_exit540 ], [ %175, %polly.loop_header519 ]
  %polly.indvar534 = phi i64 [ %polly.indvar_next535, %polly.loop_exit540 ], [ %179, %polly.loop_header519 ]
  %smin818 = call i64 @llvm.smin.i64(i64 %indvars.iv816, i64 255)
  %180 = add nuw i64 %polly.indvar534, %176
  %181 = add i64 %180, %174
  %polly.loop_guard541868 = icmp sgt i64 %181, -1
  br i1 %polly.loop_guard541868, label %polly.loop_header538.preheader, label %polly.loop_exit540

polly.loop_header538.preheader:                   ; preds = %polly.loop_header531
  %182 = mul i64 %180, 8000
  %183 = add i64 %182, %166
  %scevgep548 = getelementptr i8, i8* %call2, i64 %183
  %scevgep548549 = bitcast i8* %scevgep548 to double*
  %_p_scalar_550 = load double, double* %scevgep548549, align 8, !alias.scope !85, !noalias !88
  %scevgep554 = getelementptr i8, i8* %call1, i64 %183
  %scevgep554555 = bitcast i8* %scevgep554 to double*
  %_p_scalar_556 = load double, double* %scevgep554555, align 8, !alias.scope !84, !noalias !89
  %184 = mul i64 %180, 9600
  br label %polly.loop_header538

polly.loop_exit540:                               ; preds = %polly.loop_header538, %polly.loop_header531
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %polly.loop_cond536 = icmp ult i64 %polly.indvar534, 79
  %indvars.iv.next817 = add i64 %indvars.iv816, 1
  br i1 %polly.loop_cond536, label %polly.loop_header531, label %polly.loop_header531.1

polly.loop_header538:                             ; preds = %polly.loop_header538.preheader, %polly.loop_header538
  %polly.indvar542 = phi i64 [ %polly.indvar_next543, %polly.loop_header538 ], [ 0, %polly.loop_header538.preheader ]
  %185 = add nuw nsw i64 %polly.indvar542, %173
  %186 = mul nuw nsw i64 %185, 8000
  %187 = add nuw nsw i64 %186, %166
  %scevgep545 = getelementptr i8, i8* %call1, i64 %187
  %scevgep545546 = bitcast i8* %scevgep545 to double*
  %_p_scalar_547 = load double, double* %scevgep545546, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_550, %_p_scalar_547
  %scevgep551 = getelementptr i8, i8* %call2, i64 %187
  %scevgep551552 = bitcast i8* %scevgep551 to double*
  %_p_scalar_553 = load double, double* %scevgep551552, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_556, %_p_scalar_553
  %188 = shl i64 %185, 3
  %189 = add i64 %188, %184
  %scevgep557 = getelementptr i8, i8* %call, i64 %189
  %scevgep557558 = bitcast i8* %scevgep557 to double*
  %_p_scalar_559 = load double, double* %scevgep557558, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_559
  store double %p_add42.i, double* %scevgep557558, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next543 = add nuw nsw i64 %polly.indvar542, 1
  %exitcond819.not = icmp eq i64 %polly.indvar542, %smin818
  br i1 %exitcond819.not, label %polly.loop_exit540, label %polly.loop_header538

polly.loop_header686:                             ; preds = %entry, %polly.loop_exit694
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %polly.loop_exit694 ], [ 0, %entry ]
  %polly.indvar689 = phi i64 [ %polly.indvar_next690, %polly.loop_exit694 ], [ 0, %entry ]
  %smin852 = call i64 @llvm.smin.i64(i64 %indvars.iv850, i64 -1168)
  %190 = shl nsw i64 %polly.indvar689, 5
  %191 = add nsw i64 %smin852, 1199
  br label %polly.loop_header692

polly.loop_exit694:                               ; preds = %polly.loop_exit700
  %polly.indvar_next690 = add nuw nsw i64 %polly.indvar689, 1
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, -32
  %exitcond855.not = icmp eq i64 %polly.indvar_next690, 38
  br i1 %exitcond855.not, label %polly.loop_header713, label %polly.loop_header686

polly.loop_header692:                             ; preds = %polly.loop_exit700, %polly.loop_header686
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %polly.loop_exit700 ], [ 0, %polly.loop_header686 ]
  %polly.indvar695 = phi i64 [ %polly.indvar_next696, %polly.loop_exit700 ], [ 0, %polly.loop_header686 ]
  %192 = mul nsw i64 %polly.indvar695, -32
  %smin899 = call i64 @llvm.smin.i64(i64 %192, i64 -1168)
  %193 = add nsw i64 %smin899, 1200
  %smin848 = call i64 @llvm.smin.i64(i64 %indvars.iv846, i64 -1168)
  %194 = shl nsw i64 %polly.indvar695, 5
  %195 = add nsw i64 %smin848, 1199
  br label %polly.loop_header698

polly.loop_exit700:                               ; preds = %polly.loop_exit706
  %polly.indvar_next696 = add nuw nsw i64 %polly.indvar695, 1
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, -32
  %exitcond854.not = icmp eq i64 %polly.indvar_next696, 38
  br i1 %exitcond854.not, label %polly.loop_exit694, label %polly.loop_header692

polly.loop_header698:                             ; preds = %polly.loop_exit706, %polly.loop_header692
  %polly.indvar701 = phi i64 [ 0, %polly.loop_header692 ], [ %polly.indvar_next702, %polly.loop_exit706 ]
  %196 = add nuw nsw i64 %polly.indvar701, %190
  %197 = trunc i64 %196 to i32
  %198 = mul nuw nsw i64 %196, 9600
  %min.iters.check = icmp eq i64 %193, 0
  br i1 %min.iters.check, label %polly.loop_header704, label %vector.ph900

vector.ph900:                                     ; preds = %polly.loop_header698
  %broadcast.splatinsert907 = insertelement <4 x i64> poison, i64 %194, i32 0
  %broadcast.splat908 = shufflevector <4 x i64> %broadcast.splatinsert907, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert909 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat910 = shufflevector <4 x i32> %broadcast.splatinsert909, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body898

vector.body898:                                   ; preds = %vector.body898, %vector.ph900
  %index901 = phi i64 [ 0, %vector.ph900 ], [ %index.next902, %vector.body898 ]
  %vec.ind905 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph900 ], [ %vec.ind.next906, %vector.body898 ]
  %199 = add nuw nsw <4 x i64> %vec.ind905, %broadcast.splat908
  %200 = trunc <4 x i64> %199 to <4 x i32>
  %201 = mul <4 x i32> %broadcast.splat910, %200
  %202 = add <4 x i32> %201, <i32 3, i32 3, i32 3, i32 3>
  %203 = urem <4 x i32> %202, <i32 1200, i32 1200, i32 1200, i32 1200>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %206 = extractelement <4 x i64> %199, i32 0
  %207 = shl i64 %206, 3
  %208 = add nuw nsw i64 %207, %198
  %209 = getelementptr i8, i8* %call, i64 %208
  %210 = bitcast i8* %209 to <4 x double>*
  store <4 x double> %205, <4 x double>* %210, align 8, !alias.scope !90, !noalias !92
  %index.next902 = add i64 %index901, 4
  %vec.ind.next906 = add <4 x i64> %vec.ind905, <i64 4, i64 4, i64 4, i64 4>
  %211 = icmp eq i64 %index.next902, %193
  br i1 %211, label %polly.loop_exit706, label %vector.body898, !llvm.loop !95

polly.loop_exit706:                               ; preds = %vector.body898, %polly.loop_header704
  %polly.indvar_next702 = add nuw nsw i64 %polly.indvar701, 1
  %exitcond853.not = icmp eq i64 %polly.indvar701, %191
  br i1 %exitcond853.not, label %polly.loop_exit700, label %polly.loop_header698

polly.loop_header704:                             ; preds = %polly.loop_header698, %polly.loop_header704
  %polly.indvar707 = phi i64 [ %polly.indvar_next708, %polly.loop_header704 ], [ 0, %polly.loop_header698 ]
  %212 = add nuw nsw i64 %polly.indvar707, %194
  %213 = trunc i64 %212 to i32
  %214 = mul i32 %213, %197
  %215 = add i32 %214, 3
  %216 = urem i32 %215, 1200
  %p_conv31.i = sitofp i32 %216 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %217 = shl i64 %212, 3
  %218 = add nuw nsw i64 %217, %198
  %scevgep710 = getelementptr i8, i8* %call, i64 %218
  %scevgep710711 = bitcast i8* %scevgep710 to double*
  store double %p_div33.i, double* %scevgep710711, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next708 = add nuw nsw i64 %polly.indvar707, 1
  %exitcond849.not = icmp eq i64 %polly.indvar707, %195
  br i1 %exitcond849.not, label %polly.loop_exit706, label %polly.loop_header704, !llvm.loop !96

polly.loop_header713:                             ; preds = %polly.loop_exit694, %polly.loop_exit721
  %indvars.iv840 = phi i64 [ %indvars.iv.next841, %polly.loop_exit721 ], [ 0, %polly.loop_exit694 ]
  %polly.indvar716 = phi i64 [ %polly.indvar_next717, %polly.loop_exit721 ], [ 0, %polly.loop_exit694 ]
  %smin842 = call i64 @llvm.smin.i64(i64 %indvars.iv840, i64 -1168)
  %219 = shl nsw i64 %polly.indvar716, 5
  %220 = add nsw i64 %smin842, 1199
  br label %polly.loop_header719

polly.loop_exit721:                               ; preds = %polly.loop_exit727
  %polly.indvar_next717 = add nuw nsw i64 %polly.indvar716, 1
  %indvars.iv.next841 = add nsw i64 %indvars.iv840, -32
  %exitcond845.not = icmp eq i64 %polly.indvar_next717, 38
  br i1 %exitcond845.not, label %polly.loop_header739, label %polly.loop_header713

polly.loop_header719:                             ; preds = %polly.loop_exit727, %polly.loop_header713
  %indvars.iv836 = phi i64 [ %indvars.iv.next837, %polly.loop_exit727 ], [ 0, %polly.loop_header713 ]
  %polly.indvar722 = phi i64 [ %polly.indvar_next723, %polly.loop_exit727 ], [ 0, %polly.loop_header713 ]
  %221 = mul nsw i64 %polly.indvar722, -32
  %smin914 = call i64 @llvm.smin.i64(i64 %221, i64 -968)
  %222 = add nsw i64 %smin914, 1000
  %smin838 = call i64 @llvm.smin.i64(i64 %indvars.iv836, i64 -968)
  %223 = shl nsw i64 %polly.indvar722, 5
  %224 = add nsw i64 %smin838, 999
  br label %polly.loop_header725

polly.loop_exit727:                               ; preds = %polly.loop_exit733
  %polly.indvar_next723 = add nuw nsw i64 %polly.indvar722, 1
  %indvars.iv.next837 = add nsw i64 %indvars.iv836, -32
  %exitcond844.not = icmp eq i64 %polly.indvar_next723, 32
  br i1 %exitcond844.not, label %polly.loop_exit721, label %polly.loop_header719

polly.loop_header725:                             ; preds = %polly.loop_exit733, %polly.loop_header719
  %polly.indvar728 = phi i64 [ 0, %polly.loop_header719 ], [ %polly.indvar_next729, %polly.loop_exit733 ]
  %225 = add nuw nsw i64 %polly.indvar728, %219
  %226 = trunc i64 %225 to i32
  %227 = mul nuw nsw i64 %225, 8000
  %min.iters.check915 = icmp eq i64 %222, 0
  br i1 %min.iters.check915, label %polly.loop_header731, label %vector.ph916

vector.ph916:                                     ; preds = %polly.loop_header725
  %broadcast.splatinsert925 = insertelement <4 x i64> poison, i64 %223, i32 0
  %broadcast.splat926 = shufflevector <4 x i64> %broadcast.splatinsert925, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert927 = insertelement <4 x i32> poison, i32 %226, i32 0
  %broadcast.splat928 = shufflevector <4 x i32> %broadcast.splatinsert927, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body913

vector.body913:                                   ; preds = %vector.body913, %vector.ph916
  %index919 = phi i64 [ 0, %vector.ph916 ], [ %index.next920, %vector.body913 ]
  %vec.ind923 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph916 ], [ %vec.ind.next924, %vector.body913 ]
  %228 = add nuw nsw <4 x i64> %vec.ind923, %broadcast.splat926
  %229 = trunc <4 x i64> %228 to <4 x i32>
  %230 = mul <4 x i32> %broadcast.splat928, %229
  %231 = add <4 x i32> %230, <i32 2, i32 2, i32 2, i32 2>
  %232 = urem <4 x i32> %231, <i32 1000, i32 1000, i32 1000, i32 1000>
  %233 = sitofp <4 x i32> %232 to <4 x double>
  %234 = fmul fast <4 x double> %233, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %235 = extractelement <4 x i64> %228, i32 0
  %236 = shl i64 %235, 3
  %237 = add nuw nsw i64 %236, %227
  %238 = getelementptr i8, i8* %call2, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %234, <4 x double>* %239, align 8, !alias.scope !94, !noalias !97
  %index.next920 = add i64 %index919, 4
  %vec.ind.next924 = add <4 x i64> %vec.ind923, <i64 4, i64 4, i64 4, i64 4>
  %240 = icmp eq i64 %index.next920, %222
  br i1 %240, label %polly.loop_exit733, label %vector.body913, !llvm.loop !98

polly.loop_exit733:                               ; preds = %vector.body913, %polly.loop_header731
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %exitcond843.not = icmp eq i64 %polly.indvar728, %220
  br i1 %exitcond843.not, label %polly.loop_exit727, label %polly.loop_header725

polly.loop_header731:                             ; preds = %polly.loop_header725, %polly.loop_header731
  %polly.indvar734 = phi i64 [ %polly.indvar_next735, %polly.loop_header731 ], [ 0, %polly.loop_header725 ]
  %241 = add nuw nsw i64 %polly.indvar734, %223
  %242 = trunc i64 %241 to i32
  %243 = mul i32 %242, %226
  %244 = add i32 %243, 2
  %245 = urem i32 %244, 1000
  %p_conv10.i = sitofp i32 %245 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %246 = shl i64 %241, 3
  %247 = add nuw nsw i64 %246, %227
  %scevgep737 = getelementptr i8, i8* %call2, i64 %247
  %scevgep737738 = bitcast i8* %scevgep737 to double*
  store double %p_div12.i, double* %scevgep737738, align 8, !alias.scope !94, !noalias !97
  %polly.indvar_next735 = add nuw nsw i64 %polly.indvar734, 1
  %exitcond839.not = icmp eq i64 %polly.indvar734, %224
  br i1 %exitcond839.not, label %polly.loop_exit733, label %polly.loop_header731, !llvm.loop !99

polly.loop_header739:                             ; preds = %polly.loop_exit721, %polly.loop_exit747
  %indvars.iv830 = phi i64 [ %indvars.iv.next831, %polly.loop_exit747 ], [ 0, %polly.loop_exit721 ]
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_exit747 ], [ 0, %polly.loop_exit721 ]
  %smin832 = call i64 @llvm.smin.i64(i64 %indvars.iv830, i64 -1168)
  %248 = shl nsw i64 %polly.indvar742, 5
  %249 = add nsw i64 %smin832, 1199
  br label %polly.loop_header745

polly.loop_exit747:                               ; preds = %polly.loop_exit753
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %indvars.iv.next831 = add nsw i64 %indvars.iv830, -32
  %exitcond835.not = icmp eq i64 %polly.indvar_next743, 38
  br i1 %exitcond835.not, label %init_array.exit, label %polly.loop_header739

polly.loop_header745:                             ; preds = %polly.loop_exit753, %polly.loop_header739
  %indvars.iv826 = phi i64 [ %indvars.iv.next827, %polly.loop_exit753 ], [ 0, %polly.loop_header739 ]
  %polly.indvar748 = phi i64 [ %polly.indvar_next749, %polly.loop_exit753 ], [ 0, %polly.loop_header739 ]
  %250 = mul nsw i64 %polly.indvar748, -32
  %smin932 = call i64 @llvm.smin.i64(i64 %250, i64 -968)
  %251 = add nsw i64 %smin932, 1000
  %smin828 = call i64 @llvm.smin.i64(i64 %indvars.iv826, i64 -968)
  %252 = shl nsw i64 %polly.indvar748, 5
  %253 = add nsw i64 %smin828, 999
  br label %polly.loop_header751

polly.loop_exit753:                               ; preds = %polly.loop_exit759
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %indvars.iv.next827 = add nsw i64 %indvars.iv826, -32
  %exitcond834.not = icmp eq i64 %polly.indvar_next749, 32
  br i1 %exitcond834.not, label %polly.loop_exit747, label %polly.loop_header745

polly.loop_header751:                             ; preds = %polly.loop_exit759, %polly.loop_header745
  %polly.indvar754 = phi i64 [ 0, %polly.loop_header745 ], [ %polly.indvar_next755, %polly.loop_exit759 ]
  %254 = add nuw nsw i64 %polly.indvar754, %248
  %255 = trunc i64 %254 to i32
  %256 = mul nuw nsw i64 %254, 8000
  %min.iters.check933 = icmp eq i64 %251, 0
  br i1 %min.iters.check933, label %polly.loop_header757, label %vector.ph934

vector.ph934:                                     ; preds = %polly.loop_header751
  %broadcast.splatinsert943 = insertelement <4 x i64> poison, i64 %252, i32 0
  %broadcast.splat944 = shufflevector <4 x i64> %broadcast.splatinsert943, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert945 = insertelement <4 x i32> poison, i32 %255, i32 0
  %broadcast.splat946 = shufflevector <4 x i32> %broadcast.splatinsert945, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body931

vector.body931:                                   ; preds = %vector.body931, %vector.ph934
  %index937 = phi i64 [ 0, %vector.ph934 ], [ %index.next938, %vector.body931 ]
  %vec.ind941 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph934 ], [ %vec.ind.next942, %vector.body931 ]
  %257 = add nuw nsw <4 x i64> %vec.ind941, %broadcast.splat944
  %258 = trunc <4 x i64> %257 to <4 x i32>
  %259 = mul <4 x i32> %broadcast.splat946, %258
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 1200, i32 1200, i32 1200, i32 1200>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %264 = extractelement <4 x i64> %257, i32 0
  %265 = shl i64 %264, 3
  %266 = add nuw nsw i64 %265, %256
  %267 = getelementptr i8, i8* %call1, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %263, <4 x double>* %268, align 8, !alias.scope !93, !noalias !100
  %index.next938 = add i64 %index937, 4
  %vec.ind.next942 = add <4 x i64> %vec.ind941, <i64 4, i64 4, i64 4, i64 4>
  %269 = icmp eq i64 %index.next938, %251
  br i1 %269, label %polly.loop_exit759, label %vector.body931, !llvm.loop !101

polly.loop_exit759:                               ; preds = %vector.body931, %polly.loop_header757
  %polly.indvar_next755 = add nuw nsw i64 %polly.indvar754, 1
  %exitcond833.not = icmp eq i64 %polly.indvar754, %249
  br i1 %exitcond833.not, label %polly.loop_exit753, label %polly.loop_header751

polly.loop_header757:                             ; preds = %polly.loop_header751, %polly.loop_header757
  %polly.indvar760 = phi i64 [ %polly.indvar_next761, %polly.loop_header757 ], [ 0, %polly.loop_header751 ]
  %270 = add nuw nsw i64 %polly.indvar760, %252
  %271 = trunc i64 %270 to i32
  %272 = mul i32 %271, %255
  %273 = add i32 %272, 1
  %274 = urem i32 %273, 1200
  %p_conv.i = sitofp i32 %274 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %275 = shl i64 %270, 3
  %276 = add nuw nsw i64 %275, %256
  %scevgep764 = getelementptr i8, i8* %call1, i64 %276
  %scevgep764765 = bitcast i8* %scevgep764 to double*
  store double %p_div.i, double* %scevgep764765, align 8, !alias.scope !93, !noalias !100
  %polly.indvar_next761 = add nuw nsw i64 %polly.indvar760, 1
  %exitcond829.not = icmp eq i64 %polly.indvar760, %253
  br i1 %exitcond829.not, label %polly.loop_exit759, label %polly.loop_header757, !llvm.loop !102

polly.loop_header223.1:                           ; preds = %polly.loop_exit231, %polly.loop_exit231.1
  %indvars.iv780.1 = phi i64 [ %indvars.iv.next781.1, %polly.loop_exit231.1 ], [ %107, %polly.loop_exit231 ]
  %polly.indvar226.1 = phi i64 [ %polly.indvar_next227.1, %polly.loop_exit231.1 ], [ %111, %polly.loop_exit231 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv780.1, i64 255)
  %277 = add nuw i64 %polly.indvar226.1, %108
  %278 = add i64 %277, %106
  %polly.loop_guard.1861 = icmp sgt i64 %278, -1
  br i1 %polly.loop_guard.1861, label %polly.loop_header229.preheader.1, label %polly.loop_exit231.1

polly.loop_header229.preheader.1:                 ; preds = %polly.loop_header223.1
  %279 = mul i64 %277, 8000
  %280 = add i64 %279, %100
  %scevgep238.1 = getelementptr i8, i8* %call2, i64 %280
  %scevgep238239.1 = bitcast i8* %scevgep238.1 to double*
  %_p_scalar_240.1 = load double, double* %scevgep238239.1, align 8, !alias.scope !66, !noalias !70
  %scevgep244.1 = getelementptr i8, i8* %call1, i64 %280
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !65, !noalias !71
  %281 = mul i64 %277, 9600
  br label %polly.loop_header229.1

polly.loop_header229.1:                           ; preds = %polly.loop_header229.1, %polly.loop_header229.preheader.1
  %polly.indvar232.1 = phi i64 [ %polly.indvar_next233.1, %polly.loop_header229.1 ], [ 0, %polly.loop_header229.preheader.1 ]
  %282 = add nuw nsw i64 %polly.indvar232.1, %105
  %283 = mul nuw nsw i64 %282, 8000
  %284 = add nuw nsw i64 %283, %100
  %scevgep235.1 = getelementptr i8, i8* %call1, i64 %284
  %scevgep235236.1 = bitcast i8* %scevgep235.1 to double*
  %_p_scalar_237.1 = load double, double* %scevgep235236.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_240.1, %_p_scalar_237.1
  %scevgep241.1 = getelementptr i8, i8* %call2, i64 %284
  %scevgep241242.1 = bitcast i8* %scevgep241.1 to double*
  %_p_scalar_243.1 = load double, double* %scevgep241242.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1 = fmul fast double %_p_scalar_246.1, %_p_scalar_243.1
  %285 = shl i64 %282, 3
  %286 = add i64 %285, %281
  %scevgep247.1 = getelementptr i8, i8* %call, i64 %286
  %scevgep247248.1 = bitcast i8* %scevgep247.1 to double*
  %_p_scalar_249.1 = load double, double* %scevgep247248.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_249.1
  store double %p_add42.i118.1, double* %scevgep247248.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233.1 = add nuw nsw i64 %polly.indvar232.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar232.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit231.1, label %polly.loop_header229.1

polly.loop_exit231.1:                             ; preds = %polly.loop_header229.1, %polly.loop_header223.1
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %polly.loop_cond228.1 = icmp ult i64 %polly.indvar226.1, 79
  %indvars.iv.next781.1 = add i64 %indvars.iv780.1, 1
  br i1 %polly.loop_cond228.1, label %polly.loop_header223.1, label %polly.loop_header223.2

polly.loop_header223.2:                           ; preds = %polly.loop_exit231.1, %polly.loop_exit231.2
  %indvars.iv780.2 = phi i64 [ %indvars.iv.next781.2, %polly.loop_exit231.2 ], [ %107, %polly.loop_exit231.1 ]
  %polly.indvar226.2 = phi i64 [ %polly.indvar_next227.2, %polly.loop_exit231.2 ], [ %111, %polly.loop_exit231.1 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv780.2, i64 255)
  %287 = add nuw i64 %polly.indvar226.2, %108
  %288 = add i64 %287, %106
  %polly.loop_guard.2862 = icmp sgt i64 %288, -1
  br i1 %polly.loop_guard.2862, label %polly.loop_header229.preheader.2, label %polly.loop_exit231.2

polly.loop_header229.preheader.2:                 ; preds = %polly.loop_header223.2
  %289 = mul i64 %287, 8000
  %290 = add i64 %289, %102
  %scevgep238.2 = getelementptr i8, i8* %call2, i64 %290
  %scevgep238239.2 = bitcast i8* %scevgep238.2 to double*
  %_p_scalar_240.2 = load double, double* %scevgep238239.2, align 8, !alias.scope !66, !noalias !70
  %scevgep244.2 = getelementptr i8, i8* %call1, i64 %290
  %scevgep244245.2 = bitcast i8* %scevgep244.2 to double*
  %_p_scalar_246.2 = load double, double* %scevgep244245.2, align 8, !alias.scope !65, !noalias !71
  %291 = mul i64 %287, 9600
  br label %polly.loop_header229.2

polly.loop_header229.2:                           ; preds = %polly.loop_header229.2, %polly.loop_header229.preheader.2
  %polly.indvar232.2 = phi i64 [ %polly.indvar_next233.2, %polly.loop_header229.2 ], [ 0, %polly.loop_header229.preheader.2 ]
  %292 = add nuw nsw i64 %polly.indvar232.2, %105
  %293 = mul nuw nsw i64 %292, 8000
  %294 = add nuw nsw i64 %293, %102
  %scevgep235.2 = getelementptr i8, i8* %call1, i64 %294
  %scevgep235236.2 = bitcast i8* %scevgep235.2 to double*
  %_p_scalar_237.2 = load double, double* %scevgep235236.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2 = fmul fast double %_p_scalar_240.2, %_p_scalar_237.2
  %scevgep241.2 = getelementptr i8, i8* %call2, i64 %294
  %scevgep241242.2 = bitcast i8* %scevgep241.2 to double*
  %_p_scalar_243.2 = load double, double* %scevgep241242.2, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.2 = fmul fast double %_p_scalar_246.2, %_p_scalar_243.2
  %295 = shl i64 %292, 3
  %296 = add i64 %295, %291
  %scevgep247.2 = getelementptr i8, i8* %call, i64 %296
  %scevgep247248.2 = bitcast i8* %scevgep247.2 to double*
  %_p_scalar_249.2 = load double, double* %scevgep247248.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_249.2
  store double %p_add42.i118.2, double* %scevgep247248.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233.2 = add nuw nsw i64 %polly.indvar232.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar232.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit231.2, label %polly.loop_header229.2

polly.loop_exit231.2:                             ; preds = %polly.loop_header229.2, %polly.loop_header223.2
  %polly.indvar_next227.2 = add nuw nsw i64 %polly.indvar226.2, 1
  %polly.loop_cond228.2 = icmp ult i64 %polly.indvar226.2, 79
  %indvars.iv.next781.2 = add i64 %indvars.iv780.2, 1
  br i1 %polly.loop_cond228.2, label %polly.loop_header223.2, label %polly.loop_header223.3

polly.loop_header223.3:                           ; preds = %polly.loop_exit231.2, %polly.loop_exit231.3
  %indvars.iv780.3 = phi i64 [ %indvars.iv.next781.3, %polly.loop_exit231.3 ], [ %107, %polly.loop_exit231.2 ]
  %polly.indvar226.3 = phi i64 [ %polly.indvar_next227.3, %polly.loop_exit231.3 ], [ %111, %polly.loop_exit231.2 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv780.3, i64 255)
  %297 = add nuw i64 %polly.indvar226.3, %108
  %298 = add i64 %297, %106
  %polly.loop_guard.3863 = icmp sgt i64 %298, -1
  br i1 %polly.loop_guard.3863, label %polly.loop_header229.preheader.3, label %polly.loop_exit231.3

polly.loop_header229.preheader.3:                 ; preds = %polly.loop_header223.3
  %299 = mul i64 %297, 8000
  %300 = add i64 %299, %103
  %scevgep238.3 = getelementptr i8, i8* %call2, i64 %300
  %scevgep238239.3 = bitcast i8* %scevgep238.3 to double*
  %_p_scalar_240.3 = load double, double* %scevgep238239.3, align 8, !alias.scope !66, !noalias !70
  %scevgep244.3 = getelementptr i8, i8* %call1, i64 %300
  %scevgep244245.3 = bitcast i8* %scevgep244.3 to double*
  %_p_scalar_246.3 = load double, double* %scevgep244245.3, align 8, !alias.scope !65, !noalias !71
  %301 = mul i64 %297, 9600
  br label %polly.loop_header229.3

polly.loop_header229.3:                           ; preds = %polly.loop_header229.3, %polly.loop_header229.preheader.3
  %polly.indvar232.3 = phi i64 [ %polly.indvar_next233.3, %polly.loop_header229.3 ], [ 0, %polly.loop_header229.preheader.3 ]
  %302 = add nuw nsw i64 %polly.indvar232.3, %105
  %303 = mul nuw nsw i64 %302, 8000
  %304 = add nuw nsw i64 %303, %103
  %scevgep235.3 = getelementptr i8, i8* %call1, i64 %304
  %scevgep235236.3 = bitcast i8* %scevgep235.3 to double*
  %_p_scalar_237.3 = load double, double* %scevgep235236.3, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.3 = fmul fast double %_p_scalar_240.3, %_p_scalar_237.3
  %scevgep241.3 = getelementptr i8, i8* %call2, i64 %304
  %scevgep241242.3 = bitcast i8* %scevgep241.3 to double*
  %_p_scalar_243.3 = load double, double* %scevgep241242.3, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.3 = fmul fast double %_p_scalar_246.3, %_p_scalar_243.3
  %305 = shl i64 %302, 3
  %306 = add i64 %305, %301
  %scevgep247.3 = getelementptr i8, i8* %call, i64 %306
  %scevgep247248.3 = bitcast i8* %scevgep247.3 to double*
  %_p_scalar_249.3 = load double, double* %scevgep247248.3, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_249.3
  store double %p_add42.i118.3, double* %scevgep247248.3, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233.3 = add nuw nsw i64 %polly.indvar232.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar232.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit231.3, label %polly.loop_header229.3

polly.loop_exit231.3:                             ; preds = %polly.loop_header229.3, %polly.loop_header223.3
  %polly.indvar_next227.3 = add nuw nsw i64 %polly.indvar226.3, 1
  %polly.loop_cond228.3 = icmp ult i64 %polly.indvar226.3, 79
  %indvars.iv.next781.3 = add i64 %indvars.iv780.3, 1
  br i1 %polly.loop_cond228.3, label %polly.loop_header223.3, label %polly.loop_exit225.3

polly.loop_exit225.3:                             ; preds = %polly.loop_exit231.3
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next775 = add nsw i64 %indvars.iv774, -80
  %indvars.iv.next779 = add nsw i64 %indvars.iv778, 80
  %exitcond783.not = icmp eq i64 %polly.indvar_next215, 15
  br i1 %exitcond783.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header376.1:                           ; preds = %polly.loop_exit385, %polly.loop_exit385.1
  %indvars.iv797.1 = phi i64 [ %indvars.iv.next798.1, %polly.loop_exit385.1 ], [ %141, %polly.loop_exit385 ]
  %polly.indvar379.1 = phi i64 [ %polly.indvar_next380.1, %polly.loop_exit385.1 ], [ %145, %polly.loop_exit385 ]
  %smin799.1 = call i64 @llvm.smin.i64(i64 %indvars.iv797.1, i64 255)
  %307 = add nuw i64 %polly.indvar379.1, %142
  %308 = add i64 %307, %140
  %polly.loop_guard386.1865 = icmp sgt i64 %308, -1
  br i1 %polly.loop_guard386.1865, label %polly.loop_header383.preheader.1, label %polly.loop_exit385.1

polly.loop_header383.preheader.1:                 ; preds = %polly.loop_header376.1
  %309 = mul i64 %307, 8000
  %310 = add i64 %309, %134
  %scevgep393.1 = getelementptr i8, i8* %call2, i64 %310
  %scevgep393394.1 = bitcast i8* %scevgep393.1 to double*
  %_p_scalar_395.1 = load double, double* %scevgep393394.1, align 8, !alias.scope !76, !noalias !79
  %scevgep399.1 = getelementptr i8, i8* %call1, i64 %310
  %scevgep399400.1 = bitcast i8* %scevgep399.1 to double*
  %_p_scalar_401.1 = load double, double* %scevgep399400.1, align 8, !alias.scope !75, !noalias !80
  %311 = mul i64 %307, 9600
  br label %polly.loop_header383.1

polly.loop_header383.1:                           ; preds = %polly.loop_header383.1, %polly.loop_header383.preheader.1
  %polly.indvar387.1 = phi i64 [ %polly.indvar_next388.1, %polly.loop_header383.1 ], [ 0, %polly.loop_header383.preheader.1 ]
  %312 = add nuw nsw i64 %polly.indvar387.1, %139
  %313 = mul nuw nsw i64 %312, 8000
  %314 = add nuw nsw i64 %313, %134
  %scevgep390.1 = getelementptr i8, i8* %call1, i64 %314
  %scevgep390391.1 = bitcast i8* %scevgep390.1 to double*
  %_p_scalar_392.1 = load double, double* %scevgep390391.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_395.1, %_p_scalar_392.1
  %scevgep396.1 = getelementptr i8, i8* %call2, i64 %314
  %scevgep396397.1 = bitcast i8* %scevgep396.1 to double*
  %_p_scalar_398.1 = load double, double* %scevgep396397.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1 = fmul fast double %_p_scalar_401.1, %_p_scalar_398.1
  %315 = shl i64 %312, 3
  %316 = add i64 %315, %311
  %scevgep402.1 = getelementptr i8, i8* %call, i64 %316
  %scevgep402403.1 = bitcast i8* %scevgep402.1 to double*
  %_p_scalar_404.1 = load double, double* %scevgep402403.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_404.1
  store double %p_add42.i79.1, double* %scevgep402403.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next388.1 = add nuw nsw i64 %polly.indvar387.1, 1
  %exitcond800.1.not = icmp eq i64 %polly.indvar387.1, %smin799.1
  br i1 %exitcond800.1.not, label %polly.loop_exit385.1, label %polly.loop_header383.1

polly.loop_exit385.1:                             ; preds = %polly.loop_header383.1, %polly.loop_header376.1
  %polly.indvar_next380.1 = add nuw nsw i64 %polly.indvar379.1, 1
  %polly.loop_cond381.1 = icmp ult i64 %polly.indvar379.1, 79
  %indvars.iv.next798.1 = add i64 %indvars.iv797.1, 1
  br i1 %polly.loop_cond381.1, label %polly.loop_header376.1, label %polly.loop_header376.2

polly.loop_header376.2:                           ; preds = %polly.loop_exit385.1, %polly.loop_exit385.2
  %indvars.iv797.2 = phi i64 [ %indvars.iv.next798.2, %polly.loop_exit385.2 ], [ %141, %polly.loop_exit385.1 ]
  %polly.indvar379.2 = phi i64 [ %polly.indvar_next380.2, %polly.loop_exit385.2 ], [ %145, %polly.loop_exit385.1 ]
  %smin799.2 = call i64 @llvm.smin.i64(i64 %indvars.iv797.2, i64 255)
  %317 = add nuw i64 %polly.indvar379.2, %142
  %318 = add i64 %317, %140
  %polly.loop_guard386.2866 = icmp sgt i64 %318, -1
  br i1 %polly.loop_guard386.2866, label %polly.loop_header383.preheader.2, label %polly.loop_exit385.2

polly.loop_header383.preheader.2:                 ; preds = %polly.loop_header376.2
  %319 = mul i64 %317, 8000
  %320 = add i64 %319, %136
  %scevgep393.2 = getelementptr i8, i8* %call2, i64 %320
  %scevgep393394.2 = bitcast i8* %scevgep393.2 to double*
  %_p_scalar_395.2 = load double, double* %scevgep393394.2, align 8, !alias.scope !76, !noalias !79
  %scevgep399.2 = getelementptr i8, i8* %call1, i64 %320
  %scevgep399400.2 = bitcast i8* %scevgep399.2 to double*
  %_p_scalar_401.2 = load double, double* %scevgep399400.2, align 8, !alias.scope !75, !noalias !80
  %321 = mul i64 %317, 9600
  br label %polly.loop_header383.2

polly.loop_header383.2:                           ; preds = %polly.loop_header383.2, %polly.loop_header383.preheader.2
  %polly.indvar387.2 = phi i64 [ %polly.indvar_next388.2, %polly.loop_header383.2 ], [ 0, %polly.loop_header383.preheader.2 ]
  %322 = add nuw nsw i64 %polly.indvar387.2, %139
  %323 = mul nuw nsw i64 %322, 8000
  %324 = add nuw nsw i64 %323, %136
  %scevgep390.2 = getelementptr i8, i8* %call1, i64 %324
  %scevgep390391.2 = bitcast i8* %scevgep390.2 to double*
  %_p_scalar_392.2 = load double, double* %scevgep390391.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2 = fmul fast double %_p_scalar_395.2, %_p_scalar_392.2
  %scevgep396.2 = getelementptr i8, i8* %call2, i64 %324
  %scevgep396397.2 = bitcast i8* %scevgep396.2 to double*
  %_p_scalar_398.2 = load double, double* %scevgep396397.2, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.2 = fmul fast double %_p_scalar_401.2, %_p_scalar_398.2
  %325 = shl i64 %322, 3
  %326 = add i64 %325, %321
  %scevgep402.2 = getelementptr i8, i8* %call, i64 %326
  %scevgep402403.2 = bitcast i8* %scevgep402.2 to double*
  %_p_scalar_404.2 = load double, double* %scevgep402403.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_404.2
  store double %p_add42.i79.2, double* %scevgep402403.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next388.2 = add nuw nsw i64 %polly.indvar387.2, 1
  %exitcond800.2.not = icmp eq i64 %polly.indvar387.2, %smin799.2
  br i1 %exitcond800.2.not, label %polly.loop_exit385.2, label %polly.loop_header383.2

polly.loop_exit385.2:                             ; preds = %polly.loop_header383.2, %polly.loop_header376.2
  %polly.indvar_next380.2 = add nuw nsw i64 %polly.indvar379.2, 1
  %polly.loop_cond381.2 = icmp ult i64 %polly.indvar379.2, 79
  %indvars.iv.next798.2 = add i64 %indvars.iv797.2, 1
  br i1 %polly.loop_cond381.2, label %polly.loop_header376.2, label %polly.loop_header376.3

polly.loop_header376.3:                           ; preds = %polly.loop_exit385.2, %polly.loop_exit385.3
  %indvars.iv797.3 = phi i64 [ %indvars.iv.next798.3, %polly.loop_exit385.3 ], [ %141, %polly.loop_exit385.2 ]
  %polly.indvar379.3 = phi i64 [ %polly.indvar_next380.3, %polly.loop_exit385.3 ], [ %145, %polly.loop_exit385.2 ]
  %smin799.3 = call i64 @llvm.smin.i64(i64 %indvars.iv797.3, i64 255)
  %327 = add nuw i64 %polly.indvar379.3, %142
  %328 = add i64 %327, %140
  %polly.loop_guard386.3867 = icmp sgt i64 %328, -1
  br i1 %polly.loop_guard386.3867, label %polly.loop_header383.preheader.3, label %polly.loop_exit385.3

polly.loop_header383.preheader.3:                 ; preds = %polly.loop_header376.3
  %329 = mul i64 %327, 8000
  %330 = add i64 %329, %137
  %scevgep393.3 = getelementptr i8, i8* %call2, i64 %330
  %scevgep393394.3 = bitcast i8* %scevgep393.3 to double*
  %_p_scalar_395.3 = load double, double* %scevgep393394.3, align 8, !alias.scope !76, !noalias !79
  %scevgep399.3 = getelementptr i8, i8* %call1, i64 %330
  %scevgep399400.3 = bitcast i8* %scevgep399.3 to double*
  %_p_scalar_401.3 = load double, double* %scevgep399400.3, align 8, !alias.scope !75, !noalias !80
  %331 = mul i64 %327, 9600
  br label %polly.loop_header383.3

polly.loop_header383.3:                           ; preds = %polly.loop_header383.3, %polly.loop_header383.preheader.3
  %polly.indvar387.3 = phi i64 [ %polly.indvar_next388.3, %polly.loop_header383.3 ], [ 0, %polly.loop_header383.preheader.3 ]
  %332 = add nuw nsw i64 %polly.indvar387.3, %139
  %333 = mul nuw nsw i64 %332, 8000
  %334 = add nuw nsw i64 %333, %137
  %scevgep390.3 = getelementptr i8, i8* %call1, i64 %334
  %scevgep390391.3 = bitcast i8* %scevgep390.3 to double*
  %_p_scalar_392.3 = load double, double* %scevgep390391.3, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.3 = fmul fast double %_p_scalar_395.3, %_p_scalar_392.3
  %scevgep396.3 = getelementptr i8, i8* %call2, i64 %334
  %scevgep396397.3 = bitcast i8* %scevgep396.3 to double*
  %_p_scalar_398.3 = load double, double* %scevgep396397.3, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.3 = fmul fast double %_p_scalar_401.3, %_p_scalar_398.3
  %335 = shl i64 %332, 3
  %336 = add i64 %335, %331
  %scevgep402.3 = getelementptr i8, i8* %call, i64 %336
  %scevgep402403.3 = bitcast i8* %scevgep402.3 to double*
  %_p_scalar_404.3 = load double, double* %scevgep402403.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_404.3
  store double %p_add42.i79.3, double* %scevgep402403.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next388.3 = add nuw nsw i64 %polly.indvar387.3, 1
  %exitcond800.3.not = icmp eq i64 %polly.indvar387.3, %smin799.3
  br i1 %exitcond800.3.not, label %polly.loop_exit385.3, label %polly.loop_header383.3

polly.loop_exit385.3:                             ; preds = %polly.loop_header383.3, %polly.loop_header376.3
  %polly.indvar_next380.3 = add nuw nsw i64 %polly.indvar379.3, 1
  %polly.loop_cond381.3 = icmp ult i64 %polly.indvar379.3, 79
  %indvars.iv.next798.3 = add i64 %indvars.iv797.3, 1
  br i1 %polly.loop_cond381.3, label %polly.loop_header376.3, label %polly.loop_exit378.3

polly.loop_exit378.3:                             ; preds = %polly.loop_exit385.3
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %indvars.iv.next791 = add nsw i64 %indvars.iv790, -80
  %indvars.iv.next796 = add nsw i64 %indvars.iv795, 80
  %exitcond802.not = icmp eq i64 %polly.indvar_next368, 15
  br i1 %exitcond802.not, label %polly.loop_exit366, label %polly.loop_header364

polly.loop_header531.1:                           ; preds = %polly.loop_exit540, %polly.loop_exit540.1
  %indvars.iv816.1 = phi i64 [ %indvars.iv.next817.1, %polly.loop_exit540.1 ], [ %175, %polly.loop_exit540 ]
  %polly.indvar534.1 = phi i64 [ %polly.indvar_next535.1, %polly.loop_exit540.1 ], [ %179, %polly.loop_exit540 ]
  %smin818.1 = call i64 @llvm.smin.i64(i64 %indvars.iv816.1, i64 255)
  %337 = add nuw i64 %polly.indvar534.1, %176
  %338 = add i64 %337, %174
  %polly.loop_guard541.1869 = icmp sgt i64 %338, -1
  br i1 %polly.loop_guard541.1869, label %polly.loop_header538.preheader.1, label %polly.loop_exit540.1

polly.loop_header538.preheader.1:                 ; preds = %polly.loop_header531.1
  %339 = mul i64 %337, 8000
  %340 = add i64 %339, %168
  %scevgep548.1 = getelementptr i8, i8* %call2, i64 %340
  %scevgep548549.1 = bitcast i8* %scevgep548.1 to double*
  %_p_scalar_550.1 = load double, double* %scevgep548549.1, align 8, !alias.scope !85, !noalias !88
  %scevgep554.1 = getelementptr i8, i8* %call1, i64 %340
  %scevgep554555.1 = bitcast i8* %scevgep554.1 to double*
  %_p_scalar_556.1 = load double, double* %scevgep554555.1, align 8, !alias.scope !84, !noalias !89
  %341 = mul i64 %337, 9600
  br label %polly.loop_header538.1

polly.loop_header538.1:                           ; preds = %polly.loop_header538.1, %polly.loop_header538.preheader.1
  %polly.indvar542.1 = phi i64 [ %polly.indvar_next543.1, %polly.loop_header538.1 ], [ 0, %polly.loop_header538.preheader.1 ]
  %342 = add nuw nsw i64 %polly.indvar542.1, %173
  %343 = mul nuw nsw i64 %342, 8000
  %344 = add nuw nsw i64 %343, %168
  %scevgep545.1 = getelementptr i8, i8* %call1, i64 %344
  %scevgep545546.1 = bitcast i8* %scevgep545.1 to double*
  %_p_scalar_547.1 = load double, double* %scevgep545546.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_550.1, %_p_scalar_547.1
  %scevgep551.1 = getelementptr i8, i8* %call2, i64 %344
  %scevgep551552.1 = bitcast i8* %scevgep551.1 to double*
  %_p_scalar_553.1 = load double, double* %scevgep551552.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1 = fmul fast double %_p_scalar_556.1, %_p_scalar_553.1
  %345 = shl i64 %342, 3
  %346 = add i64 %345, %341
  %scevgep557.1 = getelementptr i8, i8* %call, i64 %346
  %scevgep557558.1 = bitcast i8* %scevgep557.1 to double*
  %_p_scalar_559.1 = load double, double* %scevgep557558.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_559.1
  store double %p_add42.i.1, double* %scevgep557558.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next543.1 = add nuw nsw i64 %polly.indvar542.1, 1
  %exitcond819.1.not = icmp eq i64 %polly.indvar542.1, %smin818.1
  br i1 %exitcond819.1.not, label %polly.loop_exit540.1, label %polly.loop_header538.1

polly.loop_exit540.1:                             ; preds = %polly.loop_header538.1, %polly.loop_header531.1
  %polly.indvar_next535.1 = add nuw nsw i64 %polly.indvar534.1, 1
  %polly.loop_cond536.1 = icmp ult i64 %polly.indvar534.1, 79
  %indvars.iv.next817.1 = add i64 %indvars.iv816.1, 1
  br i1 %polly.loop_cond536.1, label %polly.loop_header531.1, label %polly.loop_header531.2

polly.loop_header531.2:                           ; preds = %polly.loop_exit540.1, %polly.loop_exit540.2
  %indvars.iv816.2 = phi i64 [ %indvars.iv.next817.2, %polly.loop_exit540.2 ], [ %175, %polly.loop_exit540.1 ]
  %polly.indvar534.2 = phi i64 [ %polly.indvar_next535.2, %polly.loop_exit540.2 ], [ %179, %polly.loop_exit540.1 ]
  %smin818.2 = call i64 @llvm.smin.i64(i64 %indvars.iv816.2, i64 255)
  %347 = add nuw i64 %polly.indvar534.2, %176
  %348 = add i64 %347, %174
  %polly.loop_guard541.2870 = icmp sgt i64 %348, -1
  br i1 %polly.loop_guard541.2870, label %polly.loop_header538.preheader.2, label %polly.loop_exit540.2

polly.loop_header538.preheader.2:                 ; preds = %polly.loop_header531.2
  %349 = mul i64 %347, 8000
  %350 = add i64 %349, %170
  %scevgep548.2 = getelementptr i8, i8* %call2, i64 %350
  %scevgep548549.2 = bitcast i8* %scevgep548.2 to double*
  %_p_scalar_550.2 = load double, double* %scevgep548549.2, align 8, !alias.scope !85, !noalias !88
  %scevgep554.2 = getelementptr i8, i8* %call1, i64 %350
  %scevgep554555.2 = bitcast i8* %scevgep554.2 to double*
  %_p_scalar_556.2 = load double, double* %scevgep554555.2, align 8, !alias.scope !84, !noalias !89
  %351 = mul i64 %347, 9600
  br label %polly.loop_header538.2

polly.loop_header538.2:                           ; preds = %polly.loop_header538.2, %polly.loop_header538.preheader.2
  %polly.indvar542.2 = phi i64 [ %polly.indvar_next543.2, %polly.loop_header538.2 ], [ 0, %polly.loop_header538.preheader.2 ]
  %352 = add nuw nsw i64 %polly.indvar542.2, %173
  %353 = mul nuw nsw i64 %352, 8000
  %354 = add nuw nsw i64 %353, %170
  %scevgep545.2 = getelementptr i8, i8* %call1, i64 %354
  %scevgep545546.2 = bitcast i8* %scevgep545.2 to double*
  %_p_scalar_547.2 = load double, double* %scevgep545546.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2 = fmul fast double %_p_scalar_550.2, %_p_scalar_547.2
  %scevgep551.2 = getelementptr i8, i8* %call2, i64 %354
  %scevgep551552.2 = bitcast i8* %scevgep551.2 to double*
  %_p_scalar_553.2 = load double, double* %scevgep551552.2, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.2 = fmul fast double %_p_scalar_556.2, %_p_scalar_553.2
  %355 = shl i64 %352, 3
  %356 = add i64 %355, %351
  %scevgep557.2 = getelementptr i8, i8* %call, i64 %356
  %scevgep557558.2 = bitcast i8* %scevgep557.2 to double*
  %_p_scalar_559.2 = load double, double* %scevgep557558.2, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_559.2
  store double %p_add42.i.2, double* %scevgep557558.2, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next543.2 = add nuw nsw i64 %polly.indvar542.2, 1
  %exitcond819.2.not = icmp eq i64 %polly.indvar542.2, %smin818.2
  br i1 %exitcond819.2.not, label %polly.loop_exit540.2, label %polly.loop_header538.2

polly.loop_exit540.2:                             ; preds = %polly.loop_header538.2, %polly.loop_header531.2
  %polly.indvar_next535.2 = add nuw nsw i64 %polly.indvar534.2, 1
  %polly.loop_cond536.2 = icmp ult i64 %polly.indvar534.2, 79
  %indvars.iv.next817.2 = add i64 %indvars.iv816.2, 1
  br i1 %polly.loop_cond536.2, label %polly.loop_header531.2, label %polly.loop_header531.3

polly.loop_header531.3:                           ; preds = %polly.loop_exit540.2, %polly.loop_exit540.3
  %indvars.iv816.3 = phi i64 [ %indvars.iv.next817.3, %polly.loop_exit540.3 ], [ %175, %polly.loop_exit540.2 ]
  %polly.indvar534.3 = phi i64 [ %polly.indvar_next535.3, %polly.loop_exit540.3 ], [ %179, %polly.loop_exit540.2 ]
  %smin818.3 = call i64 @llvm.smin.i64(i64 %indvars.iv816.3, i64 255)
  %357 = add nuw i64 %polly.indvar534.3, %176
  %358 = add i64 %357, %174
  %polly.loop_guard541.3871 = icmp sgt i64 %358, -1
  br i1 %polly.loop_guard541.3871, label %polly.loop_header538.preheader.3, label %polly.loop_exit540.3

polly.loop_header538.preheader.3:                 ; preds = %polly.loop_header531.3
  %359 = mul i64 %357, 8000
  %360 = add i64 %359, %171
  %scevgep548.3 = getelementptr i8, i8* %call2, i64 %360
  %scevgep548549.3 = bitcast i8* %scevgep548.3 to double*
  %_p_scalar_550.3 = load double, double* %scevgep548549.3, align 8, !alias.scope !85, !noalias !88
  %scevgep554.3 = getelementptr i8, i8* %call1, i64 %360
  %scevgep554555.3 = bitcast i8* %scevgep554.3 to double*
  %_p_scalar_556.3 = load double, double* %scevgep554555.3, align 8, !alias.scope !84, !noalias !89
  %361 = mul i64 %357, 9600
  br label %polly.loop_header538.3

polly.loop_header538.3:                           ; preds = %polly.loop_header538.3, %polly.loop_header538.preheader.3
  %polly.indvar542.3 = phi i64 [ %polly.indvar_next543.3, %polly.loop_header538.3 ], [ 0, %polly.loop_header538.preheader.3 ]
  %362 = add nuw nsw i64 %polly.indvar542.3, %173
  %363 = mul nuw nsw i64 %362, 8000
  %364 = add nuw nsw i64 %363, %171
  %scevgep545.3 = getelementptr i8, i8* %call1, i64 %364
  %scevgep545546.3 = bitcast i8* %scevgep545.3 to double*
  %_p_scalar_547.3 = load double, double* %scevgep545546.3, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.3 = fmul fast double %_p_scalar_550.3, %_p_scalar_547.3
  %scevgep551.3 = getelementptr i8, i8* %call2, i64 %364
  %scevgep551552.3 = bitcast i8* %scevgep551.3 to double*
  %_p_scalar_553.3 = load double, double* %scevgep551552.3, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.3 = fmul fast double %_p_scalar_556.3, %_p_scalar_553.3
  %365 = shl i64 %362, 3
  %366 = add i64 %365, %361
  %scevgep557.3 = getelementptr i8, i8* %call, i64 %366
  %scevgep557558.3 = bitcast i8* %scevgep557.3 to double*
  %_p_scalar_559.3 = load double, double* %scevgep557558.3, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_559.3
  store double %p_add42.i.3, double* %scevgep557558.3, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next543.3 = add nuw nsw i64 %polly.indvar542.3, 1
  %exitcond819.3.not = icmp eq i64 %polly.indvar542.3, %smin818.3
  br i1 %exitcond819.3.not, label %polly.loop_exit540.3, label %polly.loop_header538.3

polly.loop_exit540.3:                             ; preds = %polly.loop_header538.3, %polly.loop_header531.3
  %polly.indvar_next535.3 = add nuw nsw i64 %polly.indvar534.3, 1
  %polly.loop_cond536.3 = icmp ult i64 %polly.indvar534.3, 79
  %indvars.iv.next817.3 = add i64 %indvars.iv816.3, 1
  br i1 %polly.loop_cond536.3, label %polly.loop_header531.3, label %polly.loop_exit533.3

polly.loop_exit533.3:                             ; preds = %polly.loop_exit540.3
  %polly.indvar_next523 = add nuw nsw i64 %polly.indvar522, 1
  %indvars.iv.next810 = add nsw i64 %indvars.iv809, -80
  %indvars.iv.next815 = add nsw i64 %indvars.iv814, 80
  %exitcond821.not = icmp eq i64 %polly.indvar_next523, 15
  br i1 %exitcond821.not, label %polly.loop_exit521, label %polly.loop_header519
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
!21 = distinct !{!21, !12, !22, !23, !24, !25, !28}
!22 = !{!"llvm.loop.disable_nonforced"}
!23 = !{!"llvm.loop.id", !"k"}
!24 = !{!"llvm.loop.tile.size", i32 256}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 4}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !22, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !22, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !44, !45, !51}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 80}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !22, !47, !48, !49, !50}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.interchange.enable", i1 true}
!49 = !{!"llvm.loop.interchange.depth", i32 5}
!50 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !22, !53}
!53 = !{!"llvm.loop.id", !"i2"}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !4, i64 0}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !63, !"polly.alias.scope.MemRef_call"}
!63 = distinct !{!63, !"polly.alias.scope.domain"}
!64 = !{!65, !66}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !69, !13}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!62, !65}
!71 = !{!62, !66}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !69, !13}
!79 = !{!72, !75}
!80 = !{!72, !76}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !69, !13}
!88 = !{!81, !84}
!89 = !{!81, !85}
!90 = distinct !{!90, !91, !"polly.alias.scope.MemRef_call"}
!91 = distinct !{!91, !"polly.alias.scope.domain"}
!92 = !{!93, !94}
!93 = distinct !{!93, !91, !"polly.alias.scope.MemRef_call1"}
!94 = distinct !{!94, !91, !"polly.alias.scope.MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !69, !13}
!97 = !{!93, !90}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !69, !13}
!100 = !{!94, !90}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !69, !13}
