; ModuleID = 'syr2k_exhaustive/mmp_all_SM_9249.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_9249.c"
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
  %scevgep886 = getelementptr i8, i8* %call2, i64 %12
  %scevgep885 = getelementptr i8, i8* %call2, i64 %11
  %scevgep884 = getelementptr i8, i8* %call1, i64 %12
  %scevgep883 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep883, %scevgep886
  %bound1 = icmp ult i8* %scevgep885, %scevgep884
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
  br i1 %exitcond18.not.i, label %vector.ph890, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph890:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert897 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat898 = shufflevector <4 x i64> %broadcast.splatinsert897, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body889

vector.body889:                                   ; preds = %vector.body889, %vector.ph890
  %index891 = phi i64 [ 0, %vector.ph890 ], [ %index.next892, %vector.body889 ]
  %vec.ind895 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph890 ], [ %vec.ind.next896, %vector.body889 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind895, %broadcast.splat898
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv7.i, i64 %index891
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next892 = add i64 %index891, 4
  %vec.ind.next896 = add <4 x i64> %vec.ind895, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next892, 1200
  br i1 %40, label %for.inc41.i, label %vector.body889, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body889
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph890, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit747
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header491, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check953 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check953, label %for.body3.i46.preheader1030, label %vector.ph954

vector.ph954:                                     ; preds = %for.body3.i46.preheader
  %n.vec956 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body952

vector.body952:                                   ; preds = %vector.body952, %vector.ph954
  %index957 = phi i64 [ 0, %vector.ph954 ], [ %index.next958, %vector.body952 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i, i64 %index957
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next958 = add i64 %index957, 4
  %46 = icmp eq i64 %index.next958, %n.vec956
  br i1 %46, label %middle.block950, label %vector.body952, !llvm.loop !18

middle.block950:                                  ; preds = %vector.body952
  %cmp.n960 = icmp eq i64 %indvars.iv21.i, %n.vec956
  br i1 %cmp.n960, label %for.inc6.i, label %for.body3.i46.preheader1030

for.body3.i46.preheader1030:                      ; preds = %for.body3.i46.preheader, %middle.block950
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec956, %middle.block950 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1030, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1030 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block950, %for.cond1.preheader.i45
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
  %min.iters.check976 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check976, label %for.body3.i60.preheader1028, label %vector.ph977

vector.ph977:                                     ; preds = %for.body3.i60.preheader
  %n.vec979 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body975

vector.body975:                                   ; preds = %vector.body975, %vector.ph977
  %index980 = phi i64 [ 0, %vector.ph977 ], [ %index.next981, %vector.body975 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i52, i64 %index980
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load984 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load984, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next981 = add i64 %index980, 4
  %57 = icmp eq i64 %index.next981, %n.vec979
  br i1 %57, label %middle.block973, label %vector.body975, !llvm.loop !53

middle.block973:                                  ; preds = %vector.body975
  %cmp.n983 = icmp eq i64 %indvars.iv21.i52, %n.vec979
  br i1 %cmp.n983, label %for.inc6.i63, label %for.body3.i60.preheader1028

for.body3.i60.preheader1028:                      ; preds = %for.body3.i60.preheader, %middle.block973
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec979, %middle.block973 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1028, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1028 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !54

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block973, %for.cond1.preheader.i54
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
  %min.iters.check1002 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1002, label %for.body3.i99.preheader1026, label %vector.ph1003

vector.ph1003:                                    ; preds = %for.body3.i99.preheader
  %n.vec1005 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.body1001, %vector.ph1003
  %index1006 = phi i64 [ 0, %vector.ph1003 ], [ %index.next1007, %vector.body1001 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i91, i64 %index1006
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1010 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1010, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1007 = add i64 %index1006, 4
  %68 = icmp eq i64 %index.next1007, %n.vec1005
  br i1 %68, label %middle.block999, label %vector.body1001, !llvm.loop !55

middle.block999:                                  ; preds = %vector.body1001
  %cmp.n1009 = icmp eq i64 %indvars.iv21.i91, %n.vec1005
  br i1 %cmp.n1009, label %for.inc6.i102, label %for.body3.i99.preheader1026

for.body3.i99.preheader1026:                      ; preds = %for.body3.i99.preheader, %middle.block999
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1005, %middle.block999 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1026, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1026 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !56

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block999, %for.cond1.preheader.i93
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !57
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !59

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !60

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1014 = phi i64 [ %indvar.next1015, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1014, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1016 = icmp ult i64 %88, 4
  br i1 %min.iters.check1016, label %polly.loop_header191.preheader, label %vector.ph1017

vector.ph1017:                                    ; preds = %polly.loop_header
  %n.vec1019 = and i64 %88, -4
  br label %vector.body1013

vector.body1013:                                  ; preds = %vector.body1013, %vector.ph1017
  %index1020 = phi i64 [ 0, %vector.ph1017 ], [ %index.next1021, %vector.body1013 ]
  %90 = shl nuw nsw i64 %index1020, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1024 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !61, !noalias !63
  %93 = fmul fast <4 x double> %wide.load1024, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !61, !noalias !63
  %index.next1021 = add i64 %index1020, 4
  %95 = icmp eq i64 %index.next1021, %n.vec1019
  br i1 %95, label %middle.block1011, label %vector.body1013, !llvm.loop !66

middle.block1011:                                 ; preds = %vector.body1013
  %cmp.n1023 = icmp eq i64 %88, %n.vec1019
  br i1 %cmp.n1023, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1011
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1019, %middle.block1011 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1011
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond793.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1015 = add i64 %indvar1014, 1
  br i1 %exitcond793.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond792.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond792.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !67

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %smin787 = call i64 @llvm.smin.i64(i64 %indvars.iv785, i64 -968)
  %97 = shl nsw i64 %polly.indvar202, 5
  %98 = add nsw i64 %smin787, 999
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next786 = add nsw i64 %indvars.iv785, -32
  %exitcond791.not = icmp eq i64 %polly.indvar_next203, 32
  br i1 %exitcond791.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = shl nsw i64 %polly.indvar208, 7
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next780 = add nsw i64 %indvars.iv779, -128
  %exitcond790.not = icmp eq i64 %polly.indvar_next209, 10
  br i1 %exitcond790.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %polly.loop_exit219 ], [ %indvars.iv779, %polly.loop_header205 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ %polly.indvar208, %polly.loop_header205 ]
  %smin783 = call i64 @llvm.smin.i64(i64 %indvars.iv781, i64 -1072)
  %100 = add nsw i64 %smin783, 1199
  %smax = call i64 @llvm.smax.i64(i64 %100, i64 0)
  %101 = mul nsw i64 %polly.indvar214, -128
  %polly.loop_guard872 = icmp sgt i64 %101, -1200
  %102 = shl nsw i64 %polly.indvar214, 7
  br i1 %polly.loop_guard872, label %polly.loop_header217.us, label %polly.loop_exit219

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit225.loopexit.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit225.loopexit.us ], [ 0, %polly.loop_header211 ]
  %103 = add nuw nsw i64 %polly.indvar220.us, %97
  %104 = shl i64 %103, 3
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_exit231.us
  %indvars.iv777 = phi i64 [ %indvars.iv, %polly.loop_header217.us ], [ %indvars.iv.next778, %polly.loop_exit231.us ]
  %polly.indvar226.us = phi i64 [ 0, %polly.loop_header217.us ], [ %polly.indvar_next227.us, %polly.loop_exit231.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv777, i64 127)
  %105 = add nuw nsw i64 %polly.indvar226.us, %102
  %106 = mul nuw nsw i64 %105, 8000
  %107 = add nuw nsw i64 %106, %104
  %scevgep238.us = getelementptr i8, i8* %call2, i64 %107
  %scevgep238239.us = bitcast i8* %scevgep238.us to double*
  %_p_scalar_240.us = load double, double* %scevgep238239.us, align 8, !alias.scope !65, !noalias !69
  %scevgep244.us = getelementptr i8, i8* %call1, i64 %107
  %scevgep244245.us = bitcast i8* %scevgep244.us to double*
  %_p_scalar_246.us = load double, double* %scevgep244245.us, align 8, !alias.scope !64, !noalias !70
  %108 = mul nuw nsw i64 %105, 9600
  br label %polly.loop_header229.us

polly.loop_header229.us:                          ; preds = %polly.loop_header229.us, %polly.loop_header223.us
  %polly.indvar232.us = phi i64 [ 0, %polly.loop_header223.us ], [ %polly.indvar_next233.us, %polly.loop_header229.us ]
  %109 = add nuw nsw i64 %polly.indvar232.us, %99
  %110 = mul nuw nsw i64 %109, 8000
  %111 = add nuw nsw i64 %110, %104
  %scevgep235.us = getelementptr i8, i8* %call1, i64 %111
  %scevgep235236.us = bitcast i8* %scevgep235.us to double*
  %_p_scalar_237.us = load double, double* %scevgep235236.us, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.us = fmul fast double %_p_scalar_240.us, %_p_scalar_237.us
  %scevgep241.us = getelementptr i8, i8* %call2, i64 %111
  %scevgep241242.us = bitcast i8* %scevgep241.us to double*
  %_p_scalar_243.us = load double, double* %scevgep241242.us, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.us = fmul fast double %_p_scalar_246.us, %_p_scalar_243.us
  %112 = shl i64 %109, 3
  %113 = add nuw nsw i64 %112, %108
  %scevgep247.us = getelementptr i8, i8* %call, i64 %113
  %scevgep247248.us = bitcast i8* %scevgep247.us to double*
  %_p_scalar_249.us = load double, double* %scevgep247248.us, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_249.us
  store double %p_add42.i118.us, double* %scevgep247248.us, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar232.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit231.us, label %polly.loop_header229.us

polly.loop_exit231.us:                            ; preds = %polly.loop_header229.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %indvars.iv.next778 = add nuw nsw i64 %indvars.iv777, 1
  %exitcond784.not = icmp eq i64 %polly.indvar226.us, %smax
  br i1 %exitcond784.not, label %polly.loop_exit225.loopexit.us, label %polly.loop_header223.us

polly.loop_exit225.loopexit.us:                   ; preds = %polly.loop_exit231.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond788.not = icmp eq i64 %polly.indvar220.us, %98
  br i1 %exitcond788.not, label %polly.loop_exit219, label %polly.loop_header217.us

polly.loop_exit219:                               ; preds = %polly.loop_exit225.loopexit.us, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 128
  %indvars.iv.next782 = add nsw i64 %indvars.iv781, -128
  %exitcond789.not = icmp eq i64 %polly.indvar_next215, 10
  br i1 %exitcond789.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar988 = phi i64 [ %indvar.next989, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %114 = add i64 %indvar988, 1
  %115 = mul nuw nsw i64 %polly.indvar339, 9600
  %scevgep348 = getelementptr i8, i8* %call, i64 %115
  %min.iters.check990 = icmp ult i64 %114, 4
  br i1 %min.iters.check990, label %polly.loop_header342.preheader, label %vector.ph991

vector.ph991:                                     ; preds = %polly.loop_header336
  %n.vec993 = and i64 %114, -4
  br label %vector.body987

vector.body987:                                   ; preds = %vector.body987, %vector.ph991
  %index994 = phi i64 [ 0, %vector.ph991 ], [ %index.next995, %vector.body987 ]
  %116 = shl nuw nsw i64 %index994, 3
  %117 = getelementptr i8, i8* %scevgep348, i64 %116
  %118 = bitcast i8* %117 to <4 x double>*
  %wide.load998 = load <4 x double>, <4 x double>* %118, align 8, !alias.scope !71, !noalias !73
  %119 = fmul fast <4 x double> %wide.load998, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %120 = bitcast i8* %117 to <4 x double>*
  store <4 x double> %119, <4 x double>* %120, align 8, !alias.scope !71, !noalias !73
  %index.next995 = add i64 %index994, 4
  %121 = icmp eq i64 %index.next995, %n.vec993
  br i1 %121, label %middle.block985, label %vector.body987, !llvm.loop !76

middle.block985:                                  ; preds = %vector.body987
  %cmp.n997 = icmp eq i64 %114, %n.vec993
  br i1 %cmp.n997, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block985
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec993, %middle.block985 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block985
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next340, 1200
  %indvar.next989 = add i64 %indvar988, 1
  br i1 %exitcond815.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %122 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %122
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !71, !noalias !73
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond814.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !77

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit360
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %smin809 = call i64 @llvm.smin.i64(i64 %indvars.iv807, i64 -968)
  %123 = shl nsw i64 %polly.indvar355, 5
  %124 = add nsw i64 %smin809, 999
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_exit366
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next808 = add nsw i64 %indvars.iv807, -32
  %exitcond813.not = icmp eq i64 %polly.indvar_next356, 32
  br i1 %exitcond813.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.loop_header352
  %indvars.iv800 = phi i64 [ %indvars.iv.next801, %polly.loop_exit366 ], [ 0, %polly.loop_header352 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 0, %polly.loop_header352 ]
  %125 = shl nsw i64 %polly.indvar361, 7
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_exit372
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %indvars.iv.next801 = add nsw i64 %indvars.iv800, -128
  %exitcond812.not = icmp eq i64 %polly.indvar_next362, 10
  br i1 %exitcond812.not, label %polly.loop_exit360, label %polly.loop_header358

polly.loop_header364:                             ; preds = %polly.loop_exit372, %polly.loop_header358
  %indvars.iv802 = phi i64 [ %indvars.iv.next803, %polly.loop_exit372 ], [ %indvars.iv800, %polly.loop_header358 ]
  %indvars.iv794 = phi i64 [ %indvars.iv.next795, %polly.loop_exit372 ], [ 0, %polly.loop_header358 ]
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_exit372 ], [ %polly.indvar361, %polly.loop_header358 ]
  %smin804 = call i64 @llvm.smin.i64(i64 %indvars.iv802, i64 -1072)
  %126 = add nsw i64 %smin804, 1199
  %smax805 = call i64 @llvm.smax.i64(i64 %126, i64 0)
  %127 = mul nsw i64 %polly.indvar367, -128
  %polly.loop_guard380873 = icmp sgt i64 %127, -1200
  %128 = shl nsw i64 %polly.indvar367, 7
  br i1 %polly.loop_guard380873, label %polly.loop_header370.us, label %polly.loop_exit372

polly.loop_header370.us:                          ; preds = %polly.loop_header364, %polly.loop_exit379.loopexit.us
  %polly.indvar373.us = phi i64 [ %polly.indvar_next374.us, %polly.loop_exit379.loopexit.us ], [ 0, %polly.loop_header364 ]
  %129 = add nuw nsw i64 %polly.indvar373.us, %123
  %130 = shl i64 %129, 3
  br label %polly.loop_header377.us

polly.loop_header377.us:                          ; preds = %polly.loop_header370.us, %polly.loop_exit386.us
  %indvars.iv796 = phi i64 [ %indvars.iv794, %polly.loop_header370.us ], [ %indvars.iv.next797, %polly.loop_exit386.us ]
  %polly.indvar381.us = phi i64 [ 0, %polly.loop_header370.us ], [ %polly.indvar_next382.us, %polly.loop_exit386.us ]
  %smin798 = call i64 @llvm.smin.i64(i64 %indvars.iv796, i64 127)
  %131 = add nuw nsw i64 %polly.indvar381.us, %128
  %132 = mul nuw nsw i64 %131, 8000
  %133 = add nuw nsw i64 %132, %130
  %scevgep393.us = getelementptr i8, i8* %call2, i64 %133
  %scevgep393394.us = bitcast i8* %scevgep393.us to double*
  %_p_scalar_395.us = load double, double* %scevgep393394.us, align 8, !alias.scope !75, !noalias !78
  %scevgep399.us = getelementptr i8, i8* %call1, i64 %133
  %scevgep399400.us = bitcast i8* %scevgep399.us to double*
  %_p_scalar_401.us = load double, double* %scevgep399400.us, align 8, !alias.scope !74, !noalias !79
  %134 = mul nuw nsw i64 %131, 9600
  br label %polly.loop_header384.us

polly.loop_header384.us:                          ; preds = %polly.loop_header384.us, %polly.loop_header377.us
  %polly.indvar387.us = phi i64 [ 0, %polly.loop_header377.us ], [ %polly.indvar_next388.us, %polly.loop_header384.us ]
  %135 = add nuw nsw i64 %polly.indvar387.us, %125
  %136 = mul nuw nsw i64 %135, 8000
  %137 = add nuw nsw i64 %136, %130
  %scevgep390.us = getelementptr i8, i8* %call1, i64 %137
  %scevgep390391.us = bitcast i8* %scevgep390.us to double*
  %_p_scalar_392.us = load double, double* %scevgep390391.us, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.us = fmul fast double %_p_scalar_395.us, %_p_scalar_392.us
  %scevgep396.us = getelementptr i8, i8* %call2, i64 %137
  %scevgep396397.us = bitcast i8* %scevgep396.us to double*
  %_p_scalar_398.us = load double, double* %scevgep396397.us, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.us = fmul fast double %_p_scalar_401.us, %_p_scalar_398.us
  %138 = shl i64 %135, 3
  %139 = add nuw nsw i64 %138, %134
  %scevgep402.us = getelementptr i8, i8* %call, i64 %139
  %scevgep402403.us = bitcast i8* %scevgep402.us to double*
  %_p_scalar_404.us = load double, double* %scevgep402403.us, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_404.us
  store double %p_add42.i79.us, double* %scevgep402403.us, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next388.us = add nuw nsw i64 %polly.indvar387.us, 1
  %exitcond799.not = icmp eq i64 %polly.indvar387.us, %smin798
  br i1 %exitcond799.not, label %polly.loop_exit386.us, label %polly.loop_header384.us

polly.loop_exit386.us:                            ; preds = %polly.loop_header384.us
  %polly.indvar_next382.us = add nuw nsw i64 %polly.indvar381.us, 1
  %indvars.iv.next797 = add nuw nsw i64 %indvars.iv796, 1
  %exitcond806.not = icmp eq i64 %polly.indvar381.us, %smax805
  br i1 %exitcond806.not, label %polly.loop_exit379.loopexit.us, label %polly.loop_header377.us

polly.loop_exit379.loopexit.us:                   ; preds = %polly.loop_exit386.us
  %polly.indvar_next374.us = add nuw nsw i64 %polly.indvar373.us, 1
  %exitcond810.not = icmp eq i64 %polly.indvar373.us, %124
  br i1 %exitcond810.not, label %polly.loop_exit372, label %polly.loop_header370.us

polly.loop_exit372:                               ; preds = %polly.loop_exit379.loopexit.us, %polly.loop_header364
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %indvars.iv.next795 = add nuw nsw i64 %indvars.iv794, 128
  %indvars.iv.next803 = add nsw i64 %indvars.iv802, -128
  %exitcond811.not = icmp eq i64 %polly.indvar_next368, 10
  br i1 %exitcond811.not, label %polly.loop_exit366, label %polly.loop_header364

polly.loop_header491:                             ; preds = %init_array.exit, %polly.loop_exit499
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit499 ], [ 0, %init_array.exit ]
  %polly.indvar494 = phi i64 [ %polly.indvar_next495, %polly.loop_exit499 ], [ 1, %init_array.exit ]
  %140 = add i64 %indvar, 1
  %141 = mul nuw nsw i64 %polly.indvar494, 9600
  %scevgep503 = getelementptr i8, i8* %call, i64 %141
  %min.iters.check964 = icmp ult i64 %140, 4
  br i1 %min.iters.check964, label %polly.loop_header497.preheader, label %vector.ph965

vector.ph965:                                     ; preds = %polly.loop_header491
  %n.vec967 = and i64 %140, -4
  br label %vector.body963

vector.body963:                                   ; preds = %vector.body963, %vector.ph965
  %index968 = phi i64 [ 0, %vector.ph965 ], [ %index.next969, %vector.body963 ]
  %142 = shl nuw nsw i64 %index968, 3
  %143 = getelementptr i8, i8* %scevgep503, i64 %142
  %144 = bitcast i8* %143 to <4 x double>*
  %wide.load972 = load <4 x double>, <4 x double>* %144, align 8, !alias.scope !80, !noalias !82
  %145 = fmul fast <4 x double> %wide.load972, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %146 = bitcast i8* %143 to <4 x double>*
  store <4 x double> %145, <4 x double>* %146, align 8, !alias.scope !80, !noalias !82
  %index.next969 = add i64 %index968, 4
  %147 = icmp eq i64 %index.next969, %n.vec967
  br i1 %147, label %middle.block961, label %vector.body963, !llvm.loop !85

middle.block961:                                  ; preds = %vector.body963
  %cmp.n971 = icmp eq i64 %140, %n.vec967
  br i1 %cmp.n971, label %polly.loop_exit499, label %polly.loop_header497.preheader

polly.loop_header497.preheader:                   ; preds = %polly.loop_header491, %middle.block961
  %polly.indvar500.ph = phi i64 [ 0, %polly.loop_header491 ], [ %n.vec967, %middle.block961 ]
  br label %polly.loop_header497

polly.loop_exit499:                               ; preds = %polly.loop_header497, %middle.block961
  %polly.indvar_next495 = add nuw nsw i64 %polly.indvar494, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next495, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond837.not, label %polly.loop_header507, label %polly.loop_header491

polly.loop_header497:                             ; preds = %polly.loop_header497.preheader, %polly.loop_header497
  %polly.indvar500 = phi i64 [ %polly.indvar_next501, %polly.loop_header497 ], [ %polly.indvar500.ph, %polly.loop_header497.preheader ]
  %148 = shl nuw nsw i64 %polly.indvar500, 3
  %scevgep504 = getelementptr i8, i8* %scevgep503, i64 %148
  %scevgep504505 = bitcast i8* %scevgep504 to double*
  %_p_scalar_506 = load double, double* %scevgep504505, align 8, !alias.scope !80, !noalias !82
  %p_mul.i = fmul fast double %_p_scalar_506, 1.200000e+00
  store double %p_mul.i, double* %scevgep504505, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next501 = add nuw nsw i64 %polly.indvar500, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next501, %polly.indvar494
  br i1 %exitcond836.not, label %polly.loop_exit499, label %polly.loop_header497, !llvm.loop !86

polly.loop_header507:                             ; preds = %polly.loop_exit499, %polly.loop_exit515
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit515 ], [ 0, %polly.loop_exit499 ]
  %polly.indvar510 = phi i64 [ %polly.indvar_next511, %polly.loop_exit515 ], [ 0, %polly.loop_exit499 ]
  %smin831 = call i64 @llvm.smin.i64(i64 %indvars.iv829, i64 -968)
  %149 = shl nsw i64 %polly.indvar510, 5
  %150 = add nsw i64 %smin831, 999
  br label %polly.loop_header513

polly.loop_exit515:                               ; preds = %polly.loop_exit521
  %polly.indvar_next511 = add nuw nsw i64 %polly.indvar510, 1
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, -32
  %exitcond835.not = icmp eq i64 %polly.indvar_next511, 32
  br i1 %exitcond835.not, label %kernel_syr2k.exit, label %polly.loop_header507

polly.loop_header513:                             ; preds = %polly.loop_exit521, %polly.loop_header507
  %indvars.iv822 = phi i64 [ %indvars.iv.next823, %polly.loop_exit521 ], [ 0, %polly.loop_header507 ]
  %polly.indvar516 = phi i64 [ %polly.indvar_next517, %polly.loop_exit521 ], [ 0, %polly.loop_header507 ]
  %151 = shl nsw i64 %polly.indvar516, 7
  br label %polly.loop_header519

polly.loop_exit521:                               ; preds = %polly.loop_exit527
  %polly.indvar_next517 = add nuw nsw i64 %polly.indvar516, 1
  %indvars.iv.next823 = add nsw i64 %indvars.iv822, -128
  %exitcond834.not = icmp eq i64 %polly.indvar_next517, 10
  br i1 %exitcond834.not, label %polly.loop_exit515, label %polly.loop_header513

polly.loop_header519:                             ; preds = %polly.loop_exit527, %polly.loop_header513
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %polly.loop_exit527 ], [ %indvars.iv822, %polly.loop_header513 ]
  %indvars.iv816 = phi i64 [ %indvars.iv.next817, %polly.loop_exit527 ], [ 0, %polly.loop_header513 ]
  %polly.indvar522 = phi i64 [ %polly.indvar_next523, %polly.loop_exit527 ], [ %polly.indvar516, %polly.loop_header513 ]
  %smin826 = call i64 @llvm.smin.i64(i64 %indvars.iv824, i64 -1072)
  %152 = add nsw i64 %smin826, 1199
  %smax827 = call i64 @llvm.smax.i64(i64 %152, i64 0)
  %153 = mul nsw i64 %polly.indvar522, -128
  %polly.loop_guard535874 = icmp sgt i64 %153, -1200
  %154 = shl nsw i64 %polly.indvar522, 7
  br i1 %polly.loop_guard535874, label %polly.loop_header525.us, label %polly.loop_exit527

polly.loop_header525.us:                          ; preds = %polly.loop_header519, %polly.loop_exit534.loopexit.us
  %polly.indvar528.us = phi i64 [ %polly.indvar_next529.us, %polly.loop_exit534.loopexit.us ], [ 0, %polly.loop_header519 ]
  %155 = add nuw nsw i64 %polly.indvar528.us, %149
  %156 = shl i64 %155, 3
  br label %polly.loop_header532.us

polly.loop_header532.us:                          ; preds = %polly.loop_header525.us, %polly.loop_exit541.us
  %indvars.iv818 = phi i64 [ %indvars.iv816, %polly.loop_header525.us ], [ %indvars.iv.next819, %polly.loop_exit541.us ]
  %polly.indvar536.us = phi i64 [ 0, %polly.loop_header525.us ], [ %polly.indvar_next537.us, %polly.loop_exit541.us ]
  %smin820 = call i64 @llvm.smin.i64(i64 %indvars.iv818, i64 127)
  %157 = add nuw nsw i64 %polly.indvar536.us, %154
  %158 = mul nuw nsw i64 %157, 8000
  %159 = add nuw nsw i64 %158, %156
  %scevgep548.us = getelementptr i8, i8* %call2, i64 %159
  %scevgep548549.us = bitcast i8* %scevgep548.us to double*
  %_p_scalar_550.us = load double, double* %scevgep548549.us, align 8, !alias.scope !84, !noalias !87
  %scevgep554.us = getelementptr i8, i8* %call1, i64 %159
  %scevgep554555.us = bitcast i8* %scevgep554.us to double*
  %_p_scalar_556.us = load double, double* %scevgep554555.us, align 8, !alias.scope !83, !noalias !88
  %160 = mul nuw nsw i64 %157, 9600
  br label %polly.loop_header539.us

polly.loop_header539.us:                          ; preds = %polly.loop_header539.us, %polly.loop_header532.us
  %polly.indvar542.us = phi i64 [ 0, %polly.loop_header532.us ], [ %polly.indvar_next543.us, %polly.loop_header539.us ]
  %161 = add nuw nsw i64 %polly.indvar542.us, %151
  %162 = mul nuw nsw i64 %161, 8000
  %163 = add nuw nsw i64 %162, %156
  %scevgep545.us = getelementptr i8, i8* %call1, i64 %163
  %scevgep545546.us = bitcast i8* %scevgep545.us to double*
  %_p_scalar_547.us = load double, double* %scevgep545546.us, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.us = fmul fast double %_p_scalar_550.us, %_p_scalar_547.us
  %scevgep551.us = getelementptr i8, i8* %call2, i64 %163
  %scevgep551552.us = bitcast i8* %scevgep551.us to double*
  %_p_scalar_553.us = load double, double* %scevgep551552.us, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.us = fmul fast double %_p_scalar_556.us, %_p_scalar_553.us
  %164 = shl i64 %161, 3
  %165 = add nuw nsw i64 %164, %160
  %scevgep557.us = getelementptr i8, i8* %call, i64 %165
  %scevgep557558.us = bitcast i8* %scevgep557.us to double*
  %_p_scalar_559.us = load double, double* %scevgep557558.us, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_559.us
  store double %p_add42.i.us, double* %scevgep557558.us, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next543.us = add nuw nsw i64 %polly.indvar542.us, 1
  %exitcond821.not = icmp eq i64 %polly.indvar542.us, %smin820
  br i1 %exitcond821.not, label %polly.loop_exit541.us, label %polly.loop_header539.us

polly.loop_exit541.us:                            ; preds = %polly.loop_header539.us
  %polly.indvar_next537.us = add nuw nsw i64 %polly.indvar536.us, 1
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 1
  %exitcond828.not = icmp eq i64 %polly.indvar536.us, %smax827
  br i1 %exitcond828.not, label %polly.loop_exit534.loopexit.us, label %polly.loop_header532.us

polly.loop_exit534.loopexit.us:                   ; preds = %polly.loop_exit541.us
  %polly.indvar_next529.us = add nuw nsw i64 %polly.indvar528.us, 1
  %exitcond832.not = icmp eq i64 %polly.indvar528.us, %150
  br i1 %exitcond832.not, label %polly.loop_exit527, label %polly.loop_header525.us

polly.loop_exit527:                               ; preds = %polly.loop_exit534.loopexit.us, %polly.loop_header519
  %polly.indvar_next523 = add nuw nsw i64 %polly.indvar522, 1
  %indvars.iv.next817 = add nuw nsw i64 %indvars.iv816, 128
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, -128
  %exitcond833.not = icmp eq i64 %polly.indvar_next523, 10
  br i1 %exitcond833.not, label %polly.loop_exit521, label %polly.loop_header519

polly.loop_header686:                             ; preds = %entry, %polly.loop_exit694
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %polly.loop_exit694 ], [ 0, %entry ]
  %polly.indvar689 = phi i64 [ %polly.indvar_next690, %polly.loop_exit694 ], [ 0, %entry ]
  %smin864 = call i64 @llvm.smin.i64(i64 %indvars.iv862, i64 -1168)
  %166 = shl nsw i64 %polly.indvar689, 5
  %167 = add nsw i64 %smin864, 1199
  br label %polly.loop_header692

polly.loop_exit694:                               ; preds = %polly.loop_exit700
  %polly.indvar_next690 = add nuw nsw i64 %polly.indvar689, 1
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, -32
  %exitcond867.not = icmp eq i64 %polly.indvar_next690, 38
  br i1 %exitcond867.not, label %polly.loop_header713, label %polly.loop_header686

polly.loop_header692:                             ; preds = %polly.loop_exit700, %polly.loop_header686
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit700 ], [ 0, %polly.loop_header686 ]
  %polly.indvar695 = phi i64 [ %polly.indvar_next696, %polly.loop_exit700 ], [ 0, %polly.loop_header686 ]
  %168 = mul nsw i64 %polly.indvar695, -32
  %smin902 = call i64 @llvm.smin.i64(i64 %168, i64 -1168)
  %169 = add nsw i64 %smin902, 1200
  %smin860 = call i64 @llvm.smin.i64(i64 %indvars.iv858, i64 -1168)
  %170 = shl nsw i64 %polly.indvar695, 5
  %171 = add nsw i64 %smin860, 1199
  br label %polly.loop_header698

polly.loop_exit700:                               ; preds = %polly.loop_exit706
  %polly.indvar_next696 = add nuw nsw i64 %polly.indvar695, 1
  %indvars.iv.next859 = add nsw i64 %indvars.iv858, -32
  %exitcond866.not = icmp eq i64 %polly.indvar_next696, 38
  br i1 %exitcond866.not, label %polly.loop_exit694, label %polly.loop_header692

polly.loop_header698:                             ; preds = %polly.loop_exit706, %polly.loop_header692
  %polly.indvar701 = phi i64 [ 0, %polly.loop_header692 ], [ %polly.indvar_next702, %polly.loop_exit706 ]
  %172 = add nuw nsw i64 %polly.indvar701, %166
  %173 = trunc i64 %172 to i32
  %174 = mul nuw nsw i64 %172, 9600
  %min.iters.check = icmp eq i64 %169, 0
  br i1 %min.iters.check, label %polly.loop_header704, label %vector.ph903

vector.ph903:                                     ; preds = %polly.loop_header698
  %broadcast.splatinsert910 = insertelement <4 x i64> poison, i64 %170, i32 0
  %broadcast.splat911 = shufflevector <4 x i64> %broadcast.splatinsert910, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert912 = insertelement <4 x i32> poison, i32 %173, i32 0
  %broadcast.splat913 = shufflevector <4 x i32> %broadcast.splatinsert912, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body901

vector.body901:                                   ; preds = %vector.body901, %vector.ph903
  %index904 = phi i64 [ 0, %vector.ph903 ], [ %index.next905, %vector.body901 ]
  %vec.ind908 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph903 ], [ %vec.ind.next909, %vector.body901 ]
  %175 = add nuw nsw <4 x i64> %vec.ind908, %broadcast.splat911
  %176 = trunc <4 x i64> %175 to <4 x i32>
  %177 = mul <4 x i32> %broadcast.splat913, %176
  %178 = add <4 x i32> %177, <i32 3, i32 3, i32 3, i32 3>
  %179 = urem <4 x i32> %178, <i32 1200, i32 1200, i32 1200, i32 1200>
  %180 = sitofp <4 x i32> %179 to <4 x double>
  %181 = fmul fast <4 x double> %180, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %182 = extractelement <4 x i64> %175, i32 0
  %183 = shl i64 %182, 3
  %184 = add nuw nsw i64 %183, %174
  %185 = getelementptr i8, i8* %call, i64 %184
  %186 = bitcast i8* %185 to <4 x double>*
  store <4 x double> %181, <4 x double>* %186, align 8, !alias.scope !89, !noalias !91
  %index.next905 = add i64 %index904, 4
  %vec.ind.next909 = add <4 x i64> %vec.ind908, <i64 4, i64 4, i64 4, i64 4>
  %187 = icmp eq i64 %index.next905, %169
  br i1 %187, label %polly.loop_exit706, label %vector.body901, !llvm.loop !94

polly.loop_exit706:                               ; preds = %vector.body901, %polly.loop_header704
  %polly.indvar_next702 = add nuw nsw i64 %polly.indvar701, 1
  %exitcond865.not = icmp eq i64 %polly.indvar701, %167
  br i1 %exitcond865.not, label %polly.loop_exit700, label %polly.loop_header698

polly.loop_header704:                             ; preds = %polly.loop_header698, %polly.loop_header704
  %polly.indvar707 = phi i64 [ %polly.indvar_next708, %polly.loop_header704 ], [ 0, %polly.loop_header698 ]
  %188 = add nuw nsw i64 %polly.indvar707, %170
  %189 = trunc i64 %188 to i32
  %190 = mul i32 %189, %173
  %191 = add i32 %190, 3
  %192 = urem i32 %191, 1200
  %p_conv31.i = sitofp i32 %192 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %193 = shl i64 %188, 3
  %194 = add nuw nsw i64 %193, %174
  %scevgep710 = getelementptr i8, i8* %call, i64 %194
  %scevgep710711 = bitcast i8* %scevgep710 to double*
  store double %p_div33.i, double* %scevgep710711, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next708 = add nuw nsw i64 %polly.indvar707, 1
  %exitcond861.not = icmp eq i64 %polly.indvar707, %171
  br i1 %exitcond861.not, label %polly.loop_exit706, label %polly.loop_header704, !llvm.loop !95

polly.loop_header713:                             ; preds = %polly.loop_exit694, %polly.loop_exit721
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %polly.loop_exit721 ], [ 0, %polly.loop_exit694 ]
  %polly.indvar716 = phi i64 [ %polly.indvar_next717, %polly.loop_exit721 ], [ 0, %polly.loop_exit694 ]
  %smin854 = call i64 @llvm.smin.i64(i64 %indvars.iv852, i64 -1168)
  %195 = shl nsw i64 %polly.indvar716, 5
  %196 = add nsw i64 %smin854, 1199
  br label %polly.loop_header719

polly.loop_exit721:                               ; preds = %polly.loop_exit727
  %polly.indvar_next717 = add nuw nsw i64 %polly.indvar716, 1
  %indvars.iv.next853 = add nsw i64 %indvars.iv852, -32
  %exitcond857.not = icmp eq i64 %polly.indvar_next717, 38
  br i1 %exitcond857.not, label %polly.loop_header739, label %polly.loop_header713

polly.loop_header719:                             ; preds = %polly.loop_exit727, %polly.loop_header713
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %polly.loop_exit727 ], [ 0, %polly.loop_header713 ]
  %polly.indvar722 = phi i64 [ %polly.indvar_next723, %polly.loop_exit727 ], [ 0, %polly.loop_header713 ]
  %197 = mul nsw i64 %polly.indvar722, -32
  %smin917 = call i64 @llvm.smin.i64(i64 %197, i64 -968)
  %198 = add nsw i64 %smin917, 1000
  %smin850 = call i64 @llvm.smin.i64(i64 %indvars.iv848, i64 -968)
  %199 = shl nsw i64 %polly.indvar722, 5
  %200 = add nsw i64 %smin850, 999
  br label %polly.loop_header725

polly.loop_exit727:                               ; preds = %polly.loop_exit733
  %polly.indvar_next723 = add nuw nsw i64 %polly.indvar722, 1
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, -32
  %exitcond856.not = icmp eq i64 %polly.indvar_next723, 32
  br i1 %exitcond856.not, label %polly.loop_exit721, label %polly.loop_header719

polly.loop_header725:                             ; preds = %polly.loop_exit733, %polly.loop_header719
  %polly.indvar728 = phi i64 [ 0, %polly.loop_header719 ], [ %polly.indvar_next729, %polly.loop_exit733 ]
  %201 = add nuw nsw i64 %polly.indvar728, %195
  %202 = trunc i64 %201 to i32
  %203 = mul nuw nsw i64 %201, 8000
  %min.iters.check918 = icmp eq i64 %198, 0
  br i1 %min.iters.check918, label %polly.loop_header731, label %vector.ph919

vector.ph919:                                     ; preds = %polly.loop_header725
  %broadcast.splatinsert928 = insertelement <4 x i64> poison, i64 %199, i32 0
  %broadcast.splat929 = shufflevector <4 x i64> %broadcast.splatinsert928, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert930 = insertelement <4 x i32> poison, i32 %202, i32 0
  %broadcast.splat931 = shufflevector <4 x i32> %broadcast.splatinsert930, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body916

vector.body916:                                   ; preds = %vector.body916, %vector.ph919
  %index922 = phi i64 [ 0, %vector.ph919 ], [ %index.next923, %vector.body916 ]
  %vec.ind926 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph919 ], [ %vec.ind.next927, %vector.body916 ]
  %204 = add nuw nsw <4 x i64> %vec.ind926, %broadcast.splat929
  %205 = trunc <4 x i64> %204 to <4 x i32>
  %206 = mul <4 x i32> %broadcast.splat931, %205
  %207 = add <4 x i32> %206, <i32 2, i32 2, i32 2, i32 2>
  %208 = urem <4 x i32> %207, <i32 1000, i32 1000, i32 1000, i32 1000>
  %209 = sitofp <4 x i32> %208 to <4 x double>
  %210 = fmul fast <4 x double> %209, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %211 = extractelement <4 x i64> %204, i32 0
  %212 = shl i64 %211, 3
  %213 = add nuw nsw i64 %212, %203
  %214 = getelementptr i8, i8* %call2, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %210, <4 x double>* %215, align 8, !alias.scope !93, !noalias !96
  %index.next923 = add i64 %index922, 4
  %vec.ind.next927 = add <4 x i64> %vec.ind926, <i64 4, i64 4, i64 4, i64 4>
  %216 = icmp eq i64 %index.next923, %198
  br i1 %216, label %polly.loop_exit733, label %vector.body916, !llvm.loop !97

polly.loop_exit733:                               ; preds = %vector.body916, %polly.loop_header731
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %exitcond855.not = icmp eq i64 %polly.indvar728, %196
  br i1 %exitcond855.not, label %polly.loop_exit727, label %polly.loop_header725

polly.loop_header731:                             ; preds = %polly.loop_header725, %polly.loop_header731
  %polly.indvar734 = phi i64 [ %polly.indvar_next735, %polly.loop_header731 ], [ 0, %polly.loop_header725 ]
  %217 = add nuw nsw i64 %polly.indvar734, %199
  %218 = trunc i64 %217 to i32
  %219 = mul i32 %218, %202
  %220 = add i32 %219, 2
  %221 = urem i32 %220, 1000
  %p_conv10.i = sitofp i32 %221 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %222 = shl i64 %217, 3
  %223 = add nuw nsw i64 %222, %203
  %scevgep737 = getelementptr i8, i8* %call2, i64 %223
  %scevgep737738 = bitcast i8* %scevgep737 to double*
  store double %p_div12.i, double* %scevgep737738, align 8, !alias.scope !93, !noalias !96
  %polly.indvar_next735 = add nuw nsw i64 %polly.indvar734, 1
  %exitcond851.not = icmp eq i64 %polly.indvar734, %200
  br i1 %exitcond851.not, label %polly.loop_exit733, label %polly.loop_header731, !llvm.loop !98

polly.loop_header739:                             ; preds = %polly.loop_exit721, %polly.loop_exit747
  %indvars.iv842 = phi i64 [ %indvars.iv.next843, %polly.loop_exit747 ], [ 0, %polly.loop_exit721 ]
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_exit747 ], [ 0, %polly.loop_exit721 ]
  %smin844 = call i64 @llvm.smin.i64(i64 %indvars.iv842, i64 -1168)
  %224 = shl nsw i64 %polly.indvar742, 5
  %225 = add nsw i64 %smin844, 1199
  br label %polly.loop_header745

polly.loop_exit747:                               ; preds = %polly.loop_exit753
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %indvars.iv.next843 = add nsw i64 %indvars.iv842, -32
  %exitcond847.not = icmp eq i64 %polly.indvar_next743, 38
  br i1 %exitcond847.not, label %init_array.exit, label %polly.loop_header739

polly.loop_header745:                             ; preds = %polly.loop_exit753, %polly.loop_header739
  %indvars.iv838 = phi i64 [ %indvars.iv.next839, %polly.loop_exit753 ], [ 0, %polly.loop_header739 ]
  %polly.indvar748 = phi i64 [ %polly.indvar_next749, %polly.loop_exit753 ], [ 0, %polly.loop_header739 ]
  %226 = mul nsw i64 %polly.indvar748, -32
  %smin935 = call i64 @llvm.smin.i64(i64 %226, i64 -968)
  %227 = add nsw i64 %smin935, 1000
  %smin840 = call i64 @llvm.smin.i64(i64 %indvars.iv838, i64 -968)
  %228 = shl nsw i64 %polly.indvar748, 5
  %229 = add nsw i64 %smin840, 999
  br label %polly.loop_header751

polly.loop_exit753:                               ; preds = %polly.loop_exit759
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %indvars.iv.next839 = add nsw i64 %indvars.iv838, -32
  %exitcond846.not = icmp eq i64 %polly.indvar_next749, 32
  br i1 %exitcond846.not, label %polly.loop_exit747, label %polly.loop_header745

polly.loop_header751:                             ; preds = %polly.loop_exit759, %polly.loop_header745
  %polly.indvar754 = phi i64 [ 0, %polly.loop_header745 ], [ %polly.indvar_next755, %polly.loop_exit759 ]
  %230 = add nuw nsw i64 %polly.indvar754, %224
  %231 = trunc i64 %230 to i32
  %232 = mul nuw nsw i64 %230, 8000
  %min.iters.check936 = icmp eq i64 %227, 0
  br i1 %min.iters.check936, label %polly.loop_header757, label %vector.ph937

vector.ph937:                                     ; preds = %polly.loop_header751
  %broadcast.splatinsert946 = insertelement <4 x i64> poison, i64 %228, i32 0
  %broadcast.splat947 = shufflevector <4 x i64> %broadcast.splatinsert946, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert948 = insertelement <4 x i32> poison, i32 %231, i32 0
  %broadcast.splat949 = shufflevector <4 x i32> %broadcast.splatinsert948, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body934

vector.body934:                                   ; preds = %vector.body934, %vector.ph937
  %index940 = phi i64 [ 0, %vector.ph937 ], [ %index.next941, %vector.body934 ]
  %vec.ind944 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph937 ], [ %vec.ind.next945, %vector.body934 ]
  %233 = add nuw nsw <4 x i64> %vec.ind944, %broadcast.splat947
  %234 = trunc <4 x i64> %233 to <4 x i32>
  %235 = mul <4 x i32> %broadcast.splat949, %234
  %236 = add <4 x i32> %235, <i32 1, i32 1, i32 1, i32 1>
  %237 = urem <4 x i32> %236, <i32 1200, i32 1200, i32 1200, i32 1200>
  %238 = sitofp <4 x i32> %237 to <4 x double>
  %239 = fmul fast <4 x double> %238, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %240 = extractelement <4 x i64> %233, i32 0
  %241 = shl i64 %240, 3
  %242 = add nuw nsw i64 %241, %232
  %243 = getelementptr i8, i8* %call1, i64 %242
  %244 = bitcast i8* %243 to <4 x double>*
  store <4 x double> %239, <4 x double>* %244, align 8, !alias.scope !92, !noalias !99
  %index.next941 = add i64 %index940, 4
  %vec.ind.next945 = add <4 x i64> %vec.ind944, <i64 4, i64 4, i64 4, i64 4>
  %245 = icmp eq i64 %index.next941, %227
  br i1 %245, label %polly.loop_exit759, label %vector.body934, !llvm.loop !100

polly.loop_exit759:                               ; preds = %vector.body934, %polly.loop_header757
  %polly.indvar_next755 = add nuw nsw i64 %polly.indvar754, 1
  %exitcond845.not = icmp eq i64 %polly.indvar754, %225
  br i1 %exitcond845.not, label %polly.loop_exit753, label %polly.loop_header751

polly.loop_header757:                             ; preds = %polly.loop_header751, %polly.loop_header757
  %polly.indvar760 = phi i64 [ %polly.indvar_next761, %polly.loop_header757 ], [ 0, %polly.loop_header751 ]
  %246 = add nuw nsw i64 %polly.indvar760, %228
  %247 = trunc i64 %246 to i32
  %248 = mul i32 %247, %231
  %249 = add i32 %248, 1
  %250 = urem i32 %249, 1200
  %p_conv.i = sitofp i32 %250 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %251 = shl i64 %246, 3
  %252 = add nuw nsw i64 %251, %232
  %scevgep764 = getelementptr i8, i8* %call1, i64 %252
  %scevgep764765 = bitcast i8* %scevgep764 to double*
  store double %p_div.i, double* %scevgep764765, align 8, !alias.scope !92, !noalias !99
  %polly.indvar_next761 = add nuw nsw i64 %polly.indvar760, 1
  %exitcond841.not = icmp eq i64 %polly.indvar760, %229
  br i1 %exitcond841.not, label %polly.loop_exit759, label %polly.loop_header757, !llvm.loop !101
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
!21 = distinct !{!21, !12, !22, !23, !24, !25, !28}
!22 = !{!"llvm.loop.disable_nonforced"}
!23 = !{!"llvm.loop.id", !"k"}
!24 = !{!"llvm.loop.tile.size", i32 128}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 32}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !22, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !22, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !24, !44, !50}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.followup_floor", !45}
!45 = distinct !{!45, !12, !22, !46, !47, !48, !49}
!46 = !{!"llvm.loop.id", !"i1"}
!47 = !{!"llvm.loop.interchange.enable", i1 true}
!48 = !{!"llvm.loop.interchange.depth", i32 5}
!49 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!50 = !{!"llvm.loop.tile.followup_tile", !51}
!51 = distinct !{!51, !12, !22, !52}
!52 = !{!"llvm.loop.id", !"i2"}
!53 = distinct !{!53, !12, !13}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = !{!58, !58, i64 0}
!58 = !{!"any pointer", !4, i64 0}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !62, !"polly.alias.scope.MemRef_call"}
!62 = distinct !{!62, !"polly.alias.scope.domain"}
!63 = !{!64, !65}
!64 = distinct !{!64, !62, !"polly.alias.scope.MemRef_call1"}
!65 = distinct !{!65, !62, !"polly.alias.scope.MemRef_call2"}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !68, !13}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = !{!61, !64}
!70 = !{!61, !65}
!71 = distinct !{!71, !72, !"polly.alias.scope.MemRef_call"}
!72 = distinct !{!72, !"polly.alias.scope.domain"}
!73 = !{!74, !75}
!74 = distinct !{!74, !72, !"polly.alias.scope.MemRef_call1"}
!75 = distinct !{!75, !72, !"polly.alias.scope.MemRef_call2"}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !68, !13}
!78 = !{!71, !74}
!79 = !{!71, !75}
!80 = distinct !{!80, !81, !"polly.alias.scope.MemRef_call"}
!81 = distinct !{!81, !"polly.alias.scope.domain"}
!82 = !{!83, !84}
!83 = distinct !{!83, !81, !"polly.alias.scope.MemRef_call1"}
!84 = distinct !{!84, !81, !"polly.alias.scope.MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !68, !13}
!87 = !{!80, !83}
!88 = !{!80, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !68, !13}
!96 = !{!92, !89}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !68, !13}
!99 = !{!93, !89}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !68, !13}
