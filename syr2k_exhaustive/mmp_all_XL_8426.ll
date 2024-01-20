; ModuleID = 'syr2k_exhaustive/mmp_all_XL_8426.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_8426.c"
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
  %call726 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1587 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1587, %call2
  %polly.access.call2607 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2607, %call1
  %2 = or i1 %0, %1
  %polly.access.call627 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call627, %call2
  %4 = icmp ule i8* %polly.access.call2607, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call627, %call1
  %8 = icmp ule i8* %polly.access.call1587, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header700, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep906 = getelementptr i8, i8* %call2, i64 %12
  %scevgep905 = getelementptr i8, i8* %call2, i64 %11
  %scevgep904 = getelementptr i8, i8* %call1, i64 %12
  %scevgep903 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep903, %scevgep906
  %bound1 = icmp ult i8* %scevgep905, %scevgep904
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
  br i1 %exitcond18.not.i, label %vector.ph910, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph910:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert917 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat918 = shufflevector <4 x i64> %broadcast.splatinsert917, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body909

vector.body909:                                   ; preds = %vector.body909, %vector.ph910
  %index911 = phi i64 [ 0, %vector.ph910 ], [ %index.next912, %vector.body909 ]
  %vec.ind915 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph910 ], [ %vec.ind.next916, %vector.body909 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind915, %broadcast.splat918
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv7.i, i64 %index911
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next912 = add i64 %index911, 4
  %vec.ind.next916 = add <4 x i64> %vec.ind915, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next912, 1200
  br i1 %40, label %for.inc41.i, label %vector.body909, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body909
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph910, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit761
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header500, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check973 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check973, label %for.body3.i46.preheader1050, label %vector.ph974

vector.ph974:                                     ; preds = %for.body3.i46.preheader
  %n.vec976 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body972

vector.body972:                                   ; preds = %vector.body972, %vector.ph974
  %index977 = phi i64 [ 0, %vector.ph974 ], [ %index.next978, %vector.body972 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i, i64 %index977
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next978 = add i64 %index977, 4
  %46 = icmp eq i64 %index.next978, %n.vec976
  br i1 %46, label %middle.block970, label %vector.body972, !llvm.loop !18

middle.block970:                                  ; preds = %vector.body972
  %cmp.n980 = icmp eq i64 %indvars.iv21.i, %n.vec976
  br i1 %cmp.n980, label %for.inc6.i, label %for.body3.i46.preheader1050

for.body3.i46.preheader1050:                      ; preds = %for.body3.i46.preheader, %middle.block970
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec976, %middle.block970 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1050, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1050 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block970, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit524
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header340, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check996 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check996, label %for.body3.i60.preheader1048, label %vector.ph997

vector.ph997:                                     ; preds = %for.body3.i60.preheader
  %n.vec999 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body995

vector.body995:                                   ; preds = %vector.body995, %vector.ph997
  %index1000 = phi i64 [ 0, %vector.ph997 ], [ %index.next1001, %vector.body995 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i52, i64 %index1000
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1004 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1004, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1001 = add i64 %index1000, 4
  %57 = icmp eq i64 %index.next1001, %n.vec999
  br i1 %57, label %middle.block993, label %vector.body995, !llvm.loop !54

middle.block993:                                  ; preds = %vector.body995
  %cmp.n1003 = icmp eq i64 %indvars.iv21.i52, %n.vec999
  br i1 %cmp.n1003, label %for.inc6.i63, label %for.body3.i60.preheader1048

for.body3.i60.preheader1048:                      ; preds = %for.body3.i60.preheader, %middle.block993
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec999, %middle.block993 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1048, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1048 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block993, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit364
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1022 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1022, label %for.body3.i99.preheader1046, label %vector.ph1023

vector.ph1023:                                    ; preds = %for.body3.i99.preheader
  %n.vec1025 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1021

vector.body1021:                                  ; preds = %vector.body1021, %vector.ph1023
  %index1026 = phi i64 [ 0, %vector.ph1023 ], [ %index.next1027, %vector.body1021 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i91, i64 %index1026
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1030 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1030, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1027 = add i64 %index1026, 4
  %68 = icmp eq i64 %index.next1027, %n.vec1025
  br i1 %68, label %middle.block1019, label %vector.body1021, !llvm.loop !56

middle.block1019:                                 ; preds = %vector.body1021
  %cmp.n1029 = icmp eq i64 %indvars.iv21.i91, %n.vec1025
  br i1 %cmp.n1029, label %for.inc6.i102, label %for.body3.i99.preheader1046

for.body3.i99.preheader1046:                      ; preds = %for.body3.i99.preheader, %middle.block1019
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1025, %middle.block1019 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1046, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1046 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1019, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1034 = phi i64 [ %indvar.next1035, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1034, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1036 = icmp ult i64 %88, 4
  br i1 %min.iters.check1036, label %polly.loop_header191.preheader, label %vector.ph1037

vector.ph1037:                                    ; preds = %polly.loop_header
  %n.vec1039 = and i64 %88, -4
  br label %vector.body1033

vector.body1033:                                  ; preds = %vector.body1033, %vector.ph1037
  %index1040 = phi i64 [ 0, %vector.ph1037 ], [ %index.next1041, %vector.body1033 ]
  %90 = shl nuw nsw i64 %index1040, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1044 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1044, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1041 = add i64 %index1040, 4
  %95 = icmp eq i64 %index.next1041, %n.vec1039
  br i1 %95, label %middle.block1031, label %vector.body1033, !llvm.loop !67

middle.block1031:                                 ; preds = %vector.body1033
  %cmp.n1043 = icmp eq i64 %88, %n.vec1039
  br i1 %cmp.n1043, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1031
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1039, %middle.block1031 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1031
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond811.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1035 = add i64 %indvar1034, 1
  br i1 %exitcond811.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond810.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv804 = phi i64 [ %indvars.iv.next805, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %smin806 = call i64 @llvm.smin.i64(i64 %indvars.iv804, i64 -920)
  %97 = mul nuw nsw i64 %polly.indvar202, 80
  %98 = add nsw i64 %smin806, 999
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next805 = add nsw i64 %indvars.iv804, -80
  %exitcond809.not = icmp eq i64 %polly.indvar_next203, 13
  br i1 %exitcond809.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv798 = phi i64 [ %indvars.iv.next799, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv794 = phi i64 [ %indvars.iv.next795, %polly.loop_exit213 ], [ 4, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = udiv i64 %indvars.iv794, 5
  %100 = mul nuw nsw i64 %99, 20
  %101 = trunc i64 %polly.indvar208 to i8
  %pexp.p_div_q.lhs.trunc = add i8 %101, 4
  %pexp.p_div_q782 = udiv i8 %pexp.p_div_q.lhs.trunc, 5
  %pexp.p_div_q.zext = zext i8 %pexp.p_div_q782 to i64
  %102 = sub nsw i64 %polly.indvar208, %pexp.p_div_q.zext
  %polly.loop_guard = icmp slt i64 %102, 60
  br i1 %polly.loop_guard, label %polly.loop_header211.preheader, label %polly.loop_exit213

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %103 = sub nsw i64 %indvars.iv798, %100
  %104 = add i64 %indvars.iv, %100
  %105 = shl nsw i64 %polly.indvar208, 4
  %106 = mul nsw i64 %polly.indvar208, -16
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %indvars.iv.next795 = add nuw nsw i64 %indvars.iv794, 1
  %indvars.iv.next799 = add nuw nsw i64 %indvars.iv798, 4
  %exitcond808.not = icmp eq i64 %polly.indvar_next209, 75
  br i1 %exitcond808.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit219
  %indvars.iv800 = phi i64 [ %103, %polly.loop_header211.preheader ], [ %indvars.iv.next801, %polly.loop_exit219 ]
  %indvars.iv796 = phi i64 [ %104, %polly.loop_header211.preheader ], [ %indvars.iv.next797, %polly.loop_exit219 ]
  %polly.indvar214 = phi i64 [ %102, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv796, i64 0)
  %107 = add i64 %smax, %indvars.iv800
  %108 = mul nsw i64 %polly.indvar214, 20
  %109 = sub nsw i64 %105, %108
  %110 = icmp sgt i64 %109, 0
  %111 = select i1 %110, i64 %109, i64 0
  %polly.loop_guard227 = icmp slt i64 %111, 20
  br i1 %polly.loop_guard227, label %polly.loop_header217.us, label %polly.loop_exit219

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit226.loopexit.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit226.loopexit.us ], [ 0, %polly.loop_header211 ]
  %112 = add nuw nsw i64 %polly.indvar220.us, %97
  %113 = shl i64 %112, 3
  br label %polly.loop_header224.us

polly.loop_header224.us:                          ; preds = %polly.loop_header217.us, %polly.loop_exit234.us
  %indvars.iv802 = phi i64 [ %107, %polly.loop_header217.us ], [ %indvars.iv.next803, %polly.loop_exit234.us ]
  %polly.indvar228.us = phi i64 [ %111, %polly.loop_header217.us ], [ %polly.indvar_next229.us, %polly.loop_exit234.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv802, i64 15)
  %114 = add i64 %polly.indvar228.us, %108
  %115 = add i64 %114, %106
  %polly.loop_guard235.us892 = icmp sgt i64 %115, -1
  br i1 %polly.loop_guard235.us892, label %polly.loop_header232.preheader.us, label %polly.loop_exit234.us

polly.loop_header232.us:                          ; preds = %polly.loop_header232.preheader.us, %polly.loop_header232.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_header232.us ], [ 0, %polly.loop_header232.preheader.us ]
  %116 = add nuw nsw i64 %polly.indvar236.us, %105
  %117 = mul nuw nsw i64 %116, 8000
  %118 = add nuw nsw i64 %117, %113
  %scevgep239.us = getelementptr i8, i8* %call1, i64 %118
  %scevgep239240.us = bitcast i8* %scevgep239.us to double*
  %_p_scalar_241.us = load double, double* %scevgep239240.us, align 8, !alias.scope !65, !noalias !70
  %p_mul27.i112.us = fmul fast double %_p_scalar_244.us, %_p_scalar_241.us
  %scevgep245.us = getelementptr i8, i8* %call2, i64 %118
  %scevgep245246.us = bitcast i8* %scevgep245.us to double*
  %_p_scalar_247.us = load double, double* %scevgep245246.us, align 8, !alias.scope !66, !noalias !71
  %p_mul37.i114.us = fmul fast double %_p_scalar_250.us, %_p_scalar_247.us
  %119 = shl i64 %116, 3
  %120 = add i64 %119, %123
  %scevgep251.us = getelementptr i8, i8* %call, i64 %120
  %scevgep251252.us = bitcast i8* %scevgep251.us to double*
  %_p_scalar_253.us = load double, double* %scevgep251252.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_253.us
  store double %p_add42.i118.us, double* %scevgep251252.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar236.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit234.us, label %polly.loop_header232.us

polly.loop_exit234.us:                            ; preds = %polly.loop_header232.us, %polly.loop_header224.us
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %polly.loop_cond230.us = icmp ult i64 %polly.indvar228.us, 19
  %indvars.iv.next803 = add i64 %indvars.iv802, 1
  br i1 %polly.loop_cond230.us, label %polly.loop_header224.us, label %polly.loop_exit226.loopexit.us

polly.loop_header232.preheader.us:                ; preds = %polly.loop_header224.us
  %121 = mul i64 %114, 8000
  %122 = add i64 %121, %113
  %scevgep242.us = getelementptr i8, i8* %call2, i64 %122
  %scevgep242243.us = bitcast i8* %scevgep242.us to double*
  %_p_scalar_244.us = load double, double* %scevgep242243.us, align 8, !alias.scope !66, !noalias !71
  %scevgep248.us = getelementptr i8, i8* %call1, i64 %122
  %scevgep248249.us = bitcast i8* %scevgep248.us to double*
  %_p_scalar_250.us = load double, double* %scevgep248249.us, align 8, !alias.scope !65, !noalias !70
  %123 = mul i64 %114, 9600
  br label %polly.loop_header232.us

polly.loop_exit226.loopexit.us:                   ; preds = %polly.loop_exit234.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond807.not = icmp eq i64 %polly.indvar220.us, %98
  br i1 %exitcond807.not, label %polly.loop_exit219, label %polly.loop_header217.us

polly.loop_exit219:                               ; preds = %polly.loop_exit226.loopexit.us, %polly.loop_header211
  %polly.indvar_next215 = add nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp slt i64 %polly.indvar214, 59
  %indvars.iv.next797 = add i64 %indvars.iv796, -20
  %indvars.iv.next801 = add i64 %indvars.iv800, 20
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header340:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit348
  %indvar1008 = phi i64 [ %indvar.next1009, %polly.loop_exit348 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar343 = phi i64 [ %polly.indvar_next344, %polly.loop_exit348 ], [ 1, %kernel_syr2k.exit ]
  %124 = add i64 %indvar1008, 1
  %125 = mul nuw nsw i64 %polly.indvar343, 9600
  %scevgep352 = getelementptr i8, i8* %call, i64 %125
  %min.iters.check1010 = icmp ult i64 %124, 4
  br i1 %min.iters.check1010, label %polly.loop_header346.preheader, label %vector.ph1011

vector.ph1011:                                    ; preds = %polly.loop_header340
  %n.vec1013 = and i64 %124, -4
  br label %vector.body1007

vector.body1007:                                  ; preds = %vector.body1007, %vector.ph1011
  %index1014 = phi i64 [ 0, %vector.ph1011 ], [ %index.next1015, %vector.body1007 ]
  %126 = shl nuw nsw i64 %index1014, 3
  %127 = getelementptr i8, i8* %scevgep352, i64 %126
  %128 = bitcast i8* %127 to <4 x double>*
  %wide.load1018 = load <4 x double>, <4 x double>* %128, align 8, !alias.scope !72, !noalias !74
  %129 = fmul fast <4 x double> %wide.load1018, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %130 = bitcast i8* %127 to <4 x double>*
  store <4 x double> %129, <4 x double>* %130, align 8, !alias.scope !72, !noalias !74
  %index.next1015 = add i64 %index1014, 4
  %131 = icmp eq i64 %index.next1015, %n.vec1013
  br i1 %131, label %middle.block1005, label %vector.body1007, !llvm.loop !77

middle.block1005:                                 ; preds = %vector.body1007
  %cmp.n1017 = icmp eq i64 %124, %n.vec1013
  br i1 %cmp.n1017, label %polly.loop_exit348, label %polly.loop_header346.preheader

polly.loop_header346.preheader:                   ; preds = %polly.loop_header340, %middle.block1005
  %polly.indvar349.ph = phi i64 [ 0, %polly.loop_header340 ], [ %n.vec1013, %middle.block1005 ]
  br label %polly.loop_header346

polly.loop_exit348:                               ; preds = %polly.loop_header346, %middle.block1005
  %polly.indvar_next344 = add nuw nsw i64 %polly.indvar343, 1
  %exitcond834.not = icmp eq i64 %polly.indvar_next344, 1200
  %indvar.next1009 = add i64 %indvar1008, 1
  br i1 %exitcond834.not, label %polly.loop_header356, label %polly.loop_header340

polly.loop_header346:                             ; preds = %polly.loop_header346.preheader, %polly.loop_header346
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_header346 ], [ %polly.indvar349.ph, %polly.loop_header346.preheader ]
  %132 = shl nuw nsw i64 %polly.indvar349, 3
  %scevgep353 = getelementptr i8, i8* %scevgep352, i64 %132
  %scevgep353354 = bitcast i8* %scevgep353 to double*
  %_p_scalar_355 = load double, double* %scevgep353354, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_355, 1.200000e+00
  store double %p_mul.i57, double* %scevgep353354, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next350, %polly.indvar343
  br i1 %exitcond833.not, label %polly.loop_exit348, label %polly.loop_header346, !llvm.loop !78

polly.loop_header356:                             ; preds = %polly.loop_exit348, %polly.loop_exit364
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit364 ], [ 0, %polly.loop_exit348 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 0, %polly.loop_exit348 ]
  %smin829 = call i64 @llvm.smin.i64(i64 %indvars.iv827, i64 -920)
  %133 = mul nuw nsw i64 %polly.indvar359, 80
  %134 = add nsw i64 %smin829, 999
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_exit372
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %indvars.iv.next828 = add nsw i64 %indvars.iv827, -80
  %exitcond832.not = icmp eq i64 %polly.indvar_next360, 13
  br i1 %exitcond832.not, label %kernel_syr2k.exit90, label %polly.loop_header356

polly.loop_header362:                             ; preds = %polly.loop_exit372, %polly.loop_header356
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit372 ], [ 0, %polly.loop_header356 ]
  %indvars.iv814 = phi i64 [ %indvars.iv.next815, %polly.loop_exit372 ], [ 4, %polly.loop_header356 ]
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %polly.loop_exit372 ], [ 0, %polly.loop_header356 ]
  %polly.indvar365 = phi i64 [ %polly.indvar_next366, %polly.loop_exit372 ], [ 0, %polly.loop_header356 ]
  %135 = udiv i64 %indvars.iv814, 5
  %136 = mul nuw nsw i64 %135, 20
  %137 = trunc i64 %polly.indvar365 to i8
  %pexp.p_div_q368.lhs.trunc = add i8 %137, 4
  %pexp.p_div_q368781 = udiv i8 %pexp.p_div_q368.lhs.trunc, 5
  %pexp.p_div_q368.zext = zext i8 %pexp.p_div_q368781 to i64
  %138 = sub nsw i64 %polly.indvar365, %pexp.p_div_q368.zext
  %polly.loop_guard373 = icmp slt i64 %138, 60
  br i1 %polly.loop_guard373, label %polly.loop_header370.preheader, label %polly.loop_exit372

polly.loop_header370.preheader:                   ; preds = %polly.loop_header362
  %139 = sub nsw i64 %indvars.iv819, %136
  %140 = add i64 %indvars.iv812, %136
  %141 = shl nsw i64 %polly.indvar365, 4
  %142 = mul nsw i64 %polly.indvar365, -16
  br label %polly.loop_header370

polly.loop_exit372:                               ; preds = %polly.loop_exit379, %polly.loop_header362
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %indvars.iv.next813 = add nsw i64 %indvars.iv812, -4
  %indvars.iv.next815 = add nuw nsw i64 %indvars.iv814, 1
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 4
  %exitcond831.not = icmp eq i64 %polly.indvar_next366, 75
  br i1 %exitcond831.not, label %polly.loop_exit364, label %polly.loop_header362

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit379
  %indvars.iv821 = phi i64 [ %139, %polly.loop_header370.preheader ], [ %indvars.iv.next822, %polly.loop_exit379 ]
  %indvars.iv816 = phi i64 [ %140, %polly.loop_header370.preheader ], [ %indvars.iv.next817, %polly.loop_exit379 ]
  %polly.indvar374 = phi i64 [ %138, %polly.loop_header370.preheader ], [ %polly.indvar_next375, %polly.loop_exit379 ]
  %smax818 = call i64 @llvm.smax.i64(i64 %indvars.iv816, i64 0)
  %143 = add i64 %smax818, %indvars.iv821
  %144 = mul nsw i64 %polly.indvar374, 20
  %145 = sub nsw i64 %141, %144
  %146 = icmp sgt i64 %145, 0
  %147 = select i1 %146, i64 %145, i64 0
  %polly.loop_guard387 = icmp slt i64 %147, 20
  br i1 %polly.loop_guard387, label %polly.loop_header377.us, label %polly.loop_exit379

polly.loop_header377.us:                          ; preds = %polly.loop_header370, %polly.loop_exit386.loopexit.us
  %polly.indvar380.us = phi i64 [ %polly.indvar_next381.us, %polly.loop_exit386.loopexit.us ], [ 0, %polly.loop_header370 ]
  %148 = add nuw nsw i64 %polly.indvar380.us, %133
  %149 = shl i64 %148, 3
  br label %polly.loop_header384.us

polly.loop_header384.us:                          ; preds = %polly.loop_header377.us, %polly.loop_exit394.us
  %indvars.iv823 = phi i64 [ %143, %polly.loop_header377.us ], [ %indvars.iv.next824, %polly.loop_exit394.us ]
  %polly.indvar388.us = phi i64 [ %147, %polly.loop_header377.us ], [ %polly.indvar_next389.us, %polly.loop_exit394.us ]
  %smin825 = call i64 @llvm.smin.i64(i64 %indvars.iv823, i64 15)
  %150 = add i64 %polly.indvar388.us, %144
  %151 = add i64 %150, %142
  %polly.loop_guard395.us893 = icmp sgt i64 %151, -1
  br i1 %polly.loop_guard395.us893, label %polly.loop_header392.preheader.us, label %polly.loop_exit394.us

polly.loop_header392.us:                          ; preds = %polly.loop_header392.preheader.us, %polly.loop_header392.us
  %polly.indvar396.us = phi i64 [ %polly.indvar_next397.us, %polly.loop_header392.us ], [ 0, %polly.loop_header392.preheader.us ]
  %152 = add nuw nsw i64 %polly.indvar396.us, %141
  %153 = mul nuw nsw i64 %152, 8000
  %154 = add nuw nsw i64 %153, %149
  %scevgep399.us = getelementptr i8, i8* %call1, i64 %154
  %scevgep399400.us = bitcast i8* %scevgep399.us to double*
  %_p_scalar_401.us = load double, double* %scevgep399400.us, align 8, !alias.scope !75, !noalias !79
  %p_mul27.i73.us = fmul fast double %_p_scalar_404.us, %_p_scalar_401.us
  %scevgep405.us = getelementptr i8, i8* %call2, i64 %154
  %scevgep405406.us = bitcast i8* %scevgep405.us to double*
  %_p_scalar_407.us = load double, double* %scevgep405406.us, align 8, !alias.scope !76, !noalias !80
  %p_mul37.i75.us = fmul fast double %_p_scalar_410.us, %_p_scalar_407.us
  %155 = shl i64 %152, 3
  %156 = add i64 %155, %159
  %scevgep411.us = getelementptr i8, i8* %call, i64 %156
  %scevgep411412.us = bitcast i8* %scevgep411.us to double*
  %_p_scalar_413.us = load double, double* %scevgep411412.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_413.us
  store double %p_add42.i79.us, double* %scevgep411412.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next397.us = add nuw nsw i64 %polly.indvar396.us, 1
  %exitcond826.not = icmp eq i64 %polly.indvar396.us, %smin825
  br i1 %exitcond826.not, label %polly.loop_exit394.us, label %polly.loop_header392.us

polly.loop_exit394.us:                            ; preds = %polly.loop_header392.us, %polly.loop_header384.us
  %polly.indvar_next389.us = add nuw nsw i64 %polly.indvar388.us, 1
  %polly.loop_cond390.us = icmp ult i64 %polly.indvar388.us, 19
  %indvars.iv.next824 = add i64 %indvars.iv823, 1
  br i1 %polly.loop_cond390.us, label %polly.loop_header384.us, label %polly.loop_exit386.loopexit.us

polly.loop_header392.preheader.us:                ; preds = %polly.loop_header384.us
  %157 = mul i64 %150, 8000
  %158 = add i64 %157, %149
  %scevgep402.us = getelementptr i8, i8* %call2, i64 %158
  %scevgep402403.us = bitcast i8* %scevgep402.us to double*
  %_p_scalar_404.us = load double, double* %scevgep402403.us, align 8, !alias.scope !76, !noalias !80
  %scevgep408.us = getelementptr i8, i8* %call1, i64 %158
  %scevgep408409.us = bitcast i8* %scevgep408.us to double*
  %_p_scalar_410.us = load double, double* %scevgep408409.us, align 8, !alias.scope !75, !noalias !79
  %159 = mul i64 %150, 9600
  br label %polly.loop_header392.us

polly.loop_exit386.loopexit.us:                   ; preds = %polly.loop_exit394.us
  %polly.indvar_next381.us = add nuw nsw i64 %polly.indvar380.us, 1
  %exitcond830.not = icmp eq i64 %polly.indvar380.us, %134
  br i1 %exitcond830.not, label %polly.loop_exit379, label %polly.loop_header377.us

polly.loop_exit379:                               ; preds = %polly.loop_exit386.loopexit.us, %polly.loop_header370
  %polly.indvar_next375 = add nsw i64 %polly.indvar374, 1
  %polly.loop_cond376 = icmp slt i64 %polly.indvar374, 59
  %indvars.iv.next817 = add i64 %indvars.iv816, -20
  %indvars.iv.next822 = add i64 %indvars.iv821, 20
  br i1 %polly.loop_cond376, label %polly.loop_header370, label %polly.loop_exit372

polly.loop_header500:                             ; preds = %init_array.exit, %polly.loop_exit508
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit508 ], [ 0, %init_array.exit ]
  %polly.indvar503 = phi i64 [ %polly.indvar_next504, %polly.loop_exit508 ], [ 1, %init_array.exit ]
  %160 = add i64 %indvar, 1
  %161 = mul nuw nsw i64 %polly.indvar503, 9600
  %scevgep512 = getelementptr i8, i8* %call, i64 %161
  %min.iters.check984 = icmp ult i64 %160, 4
  br i1 %min.iters.check984, label %polly.loop_header506.preheader, label %vector.ph985

vector.ph985:                                     ; preds = %polly.loop_header500
  %n.vec987 = and i64 %160, -4
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %vector.ph985
  %index988 = phi i64 [ 0, %vector.ph985 ], [ %index.next989, %vector.body983 ]
  %162 = shl nuw nsw i64 %index988, 3
  %163 = getelementptr i8, i8* %scevgep512, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  %wide.load992 = load <4 x double>, <4 x double>* %164, align 8, !alias.scope !81, !noalias !83
  %165 = fmul fast <4 x double> %wide.load992, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %166 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %165, <4 x double>* %166, align 8, !alias.scope !81, !noalias !83
  %index.next989 = add i64 %index988, 4
  %167 = icmp eq i64 %index.next989, %n.vec987
  br i1 %167, label %middle.block981, label %vector.body983, !llvm.loop !86

middle.block981:                                  ; preds = %vector.body983
  %cmp.n991 = icmp eq i64 %160, %n.vec987
  br i1 %cmp.n991, label %polly.loop_exit508, label %polly.loop_header506.preheader

polly.loop_header506.preheader:                   ; preds = %polly.loop_header500, %middle.block981
  %polly.indvar509.ph = phi i64 [ 0, %polly.loop_header500 ], [ %n.vec987, %middle.block981 ]
  br label %polly.loop_header506

polly.loop_exit508:                               ; preds = %polly.loop_header506, %middle.block981
  %polly.indvar_next504 = add nuw nsw i64 %polly.indvar503, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next504, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond857.not, label %polly.loop_header516, label %polly.loop_header500

polly.loop_header506:                             ; preds = %polly.loop_header506.preheader, %polly.loop_header506
  %polly.indvar509 = phi i64 [ %polly.indvar_next510, %polly.loop_header506 ], [ %polly.indvar509.ph, %polly.loop_header506.preheader ]
  %168 = shl nuw nsw i64 %polly.indvar509, 3
  %scevgep513 = getelementptr i8, i8* %scevgep512, i64 %168
  %scevgep513514 = bitcast i8* %scevgep513 to double*
  %_p_scalar_515 = load double, double* %scevgep513514, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_515, 1.200000e+00
  store double %p_mul.i, double* %scevgep513514, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next510 = add nuw nsw i64 %polly.indvar509, 1
  %exitcond856.not = icmp eq i64 %polly.indvar_next510, %polly.indvar503
  br i1 %exitcond856.not, label %polly.loop_exit508, label %polly.loop_header506, !llvm.loop !87

polly.loop_header516:                             ; preds = %polly.loop_exit508, %polly.loop_exit524
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %polly.loop_exit524 ], [ 0, %polly.loop_exit508 ]
  %polly.indvar519 = phi i64 [ %polly.indvar_next520, %polly.loop_exit524 ], [ 0, %polly.loop_exit508 ]
  %smin852 = call i64 @llvm.smin.i64(i64 %indvars.iv850, i64 -920)
  %169 = mul nuw nsw i64 %polly.indvar519, 80
  %170 = add nsw i64 %smin852, 999
  br label %polly.loop_header522

polly.loop_exit524:                               ; preds = %polly.loop_exit532
  %polly.indvar_next520 = add nuw nsw i64 %polly.indvar519, 1
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, -80
  %exitcond855.not = icmp eq i64 %polly.indvar_next520, 13
  br i1 %exitcond855.not, label %kernel_syr2k.exit, label %polly.loop_header516

polly.loop_header522:                             ; preds = %polly.loop_exit532, %polly.loop_header516
  %indvars.iv842 = phi i64 [ %indvars.iv.next843, %polly.loop_exit532 ], [ 0, %polly.loop_header516 ]
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %polly.loop_exit532 ], [ 4, %polly.loop_header516 ]
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit532 ], [ 0, %polly.loop_header516 ]
  %polly.indvar525 = phi i64 [ %polly.indvar_next526, %polly.loop_exit532 ], [ 0, %polly.loop_header516 ]
  %171 = udiv i64 %indvars.iv837, 5
  %172 = mul nuw nsw i64 %171, 20
  %173 = trunc i64 %polly.indvar525 to i8
  %pexp.p_div_q528.lhs.trunc = add i8 %173, 4
  %pexp.p_div_q528780 = udiv i8 %pexp.p_div_q528.lhs.trunc, 5
  %pexp.p_div_q528.zext = zext i8 %pexp.p_div_q528780 to i64
  %174 = sub nsw i64 %polly.indvar525, %pexp.p_div_q528.zext
  %polly.loop_guard533 = icmp slt i64 %174, 60
  br i1 %polly.loop_guard533, label %polly.loop_header530.preheader, label %polly.loop_exit532

polly.loop_header530.preheader:                   ; preds = %polly.loop_header522
  %175 = sub nsw i64 %indvars.iv842, %172
  %176 = add i64 %indvars.iv835, %172
  %177 = shl nsw i64 %polly.indvar525, 4
  %178 = mul nsw i64 %polly.indvar525, -16
  br label %polly.loop_header530

polly.loop_exit532:                               ; preds = %polly.loop_exit539, %polly.loop_header522
  %polly.indvar_next526 = add nuw nsw i64 %polly.indvar525, 1
  %indvars.iv.next836 = add nsw i64 %indvars.iv835, -4
  %indvars.iv.next838 = add nuw nsw i64 %indvars.iv837, 1
  %indvars.iv.next843 = add nuw nsw i64 %indvars.iv842, 4
  %exitcond854.not = icmp eq i64 %polly.indvar_next526, 75
  br i1 %exitcond854.not, label %polly.loop_exit524, label %polly.loop_header522

polly.loop_header530:                             ; preds = %polly.loop_header530.preheader, %polly.loop_exit539
  %indvars.iv844 = phi i64 [ %175, %polly.loop_header530.preheader ], [ %indvars.iv.next845, %polly.loop_exit539 ]
  %indvars.iv839 = phi i64 [ %176, %polly.loop_header530.preheader ], [ %indvars.iv.next840, %polly.loop_exit539 ]
  %polly.indvar534 = phi i64 [ %174, %polly.loop_header530.preheader ], [ %polly.indvar_next535, %polly.loop_exit539 ]
  %smax841 = call i64 @llvm.smax.i64(i64 %indvars.iv839, i64 0)
  %179 = add i64 %smax841, %indvars.iv844
  %180 = mul nsw i64 %polly.indvar534, 20
  %181 = sub nsw i64 %177, %180
  %182 = icmp sgt i64 %181, 0
  %183 = select i1 %182, i64 %181, i64 0
  %polly.loop_guard547 = icmp slt i64 %183, 20
  br i1 %polly.loop_guard547, label %polly.loop_header537.us, label %polly.loop_exit539

polly.loop_header537.us:                          ; preds = %polly.loop_header530, %polly.loop_exit546.loopexit.us
  %polly.indvar540.us = phi i64 [ %polly.indvar_next541.us, %polly.loop_exit546.loopexit.us ], [ 0, %polly.loop_header530 ]
  %184 = add nuw nsw i64 %polly.indvar540.us, %169
  %185 = shl i64 %184, 3
  br label %polly.loop_header544.us

polly.loop_header544.us:                          ; preds = %polly.loop_header537.us, %polly.loop_exit554.us
  %indvars.iv846 = phi i64 [ %179, %polly.loop_header537.us ], [ %indvars.iv.next847, %polly.loop_exit554.us ]
  %polly.indvar548.us = phi i64 [ %183, %polly.loop_header537.us ], [ %polly.indvar_next549.us, %polly.loop_exit554.us ]
  %smin848 = call i64 @llvm.smin.i64(i64 %indvars.iv846, i64 15)
  %186 = add i64 %polly.indvar548.us, %180
  %187 = add i64 %186, %178
  %polly.loop_guard555.us894 = icmp sgt i64 %187, -1
  br i1 %polly.loop_guard555.us894, label %polly.loop_header552.preheader.us, label %polly.loop_exit554.us

polly.loop_header552.us:                          ; preds = %polly.loop_header552.preheader.us, %polly.loop_header552.us
  %polly.indvar556.us = phi i64 [ %polly.indvar_next557.us, %polly.loop_header552.us ], [ 0, %polly.loop_header552.preheader.us ]
  %188 = add nuw nsw i64 %polly.indvar556.us, %177
  %189 = mul nuw nsw i64 %188, 8000
  %190 = add nuw nsw i64 %189, %185
  %scevgep559.us = getelementptr i8, i8* %call1, i64 %190
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !84, !noalias !88
  %p_mul27.i.us = fmul fast double %_p_scalar_564.us, %_p_scalar_561.us
  %scevgep565.us = getelementptr i8, i8* %call2, i64 %190
  %scevgep565566.us = bitcast i8* %scevgep565.us to double*
  %_p_scalar_567.us = load double, double* %scevgep565566.us, align 8, !alias.scope !85, !noalias !89
  %p_mul37.i.us = fmul fast double %_p_scalar_570.us, %_p_scalar_567.us
  %191 = shl i64 %188, 3
  %192 = add i64 %191, %195
  %scevgep571.us = getelementptr i8, i8* %call, i64 %192
  %scevgep571572.us = bitcast i8* %scevgep571.us to double*
  %_p_scalar_573.us = load double, double* %scevgep571572.us, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_573.us
  store double %p_add42.i.us, double* %scevgep571572.us, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next557.us = add nuw nsw i64 %polly.indvar556.us, 1
  %exitcond849.not = icmp eq i64 %polly.indvar556.us, %smin848
  br i1 %exitcond849.not, label %polly.loop_exit554.us, label %polly.loop_header552.us

polly.loop_exit554.us:                            ; preds = %polly.loop_header552.us, %polly.loop_header544.us
  %polly.indvar_next549.us = add nuw nsw i64 %polly.indvar548.us, 1
  %polly.loop_cond550.us = icmp ult i64 %polly.indvar548.us, 19
  %indvars.iv.next847 = add i64 %indvars.iv846, 1
  br i1 %polly.loop_cond550.us, label %polly.loop_header544.us, label %polly.loop_exit546.loopexit.us

polly.loop_header552.preheader.us:                ; preds = %polly.loop_header544.us
  %193 = mul i64 %186, 8000
  %194 = add i64 %193, %185
  %scevgep562.us = getelementptr i8, i8* %call2, i64 %194
  %scevgep562563.us = bitcast i8* %scevgep562.us to double*
  %_p_scalar_564.us = load double, double* %scevgep562563.us, align 8, !alias.scope !85, !noalias !89
  %scevgep568.us = getelementptr i8, i8* %call1, i64 %194
  %scevgep568569.us = bitcast i8* %scevgep568.us to double*
  %_p_scalar_570.us = load double, double* %scevgep568569.us, align 8, !alias.scope !84, !noalias !88
  %195 = mul i64 %186, 9600
  br label %polly.loop_header552.us

polly.loop_exit546.loopexit.us:                   ; preds = %polly.loop_exit554.us
  %polly.indvar_next541.us = add nuw nsw i64 %polly.indvar540.us, 1
  %exitcond853.not = icmp eq i64 %polly.indvar540.us, %170
  br i1 %exitcond853.not, label %polly.loop_exit539, label %polly.loop_header537.us

polly.loop_exit539:                               ; preds = %polly.loop_exit546.loopexit.us, %polly.loop_header530
  %polly.indvar_next535 = add nsw i64 %polly.indvar534, 1
  %polly.loop_cond536 = icmp slt i64 %polly.indvar534, 59
  %indvars.iv.next840 = add i64 %indvars.iv839, -20
  %indvars.iv.next845 = add i64 %indvars.iv844, 20
  br i1 %polly.loop_cond536, label %polly.loop_header530, label %polly.loop_exit532

polly.loop_header700:                             ; preds = %entry, %polly.loop_exit708
  %indvars.iv882 = phi i64 [ %indvars.iv.next883, %polly.loop_exit708 ], [ 0, %entry ]
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %entry ]
  %smin884 = call i64 @llvm.smin.i64(i64 %indvars.iv882, i64 -1168)
  %196 = shl nsw i64 %polly.indvar703, 5
  %197 = add nsw i64 %smin884, 1199
  br label %polly.loop_header706

polly.loop_exit708:                               ; preds = %polly.loop_exit714
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %indvars.iv.next883 = add nsw i64 %indvars.iv882, -32
  %exitcond887.not = icmp eq i64 %polly.indvar_next704, 38
  br i1 %exitcond887.not, label %polly.loop_header727, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_exit714, %polly.loop_header700
  %indvars.iv878 = phi i64 [ %indvars.iv.next879, %polly.loop_exit714 ], [ 0, %polly.loop_header700 ]
  %polly.indvar709 = phi i64 [ %polly.indvar_next710, %polly.loop_exit714 ], [ 0, %polly.loop_header700 ]
  %198 = mul nsw i64 %polly.indvar709, -32
  %smin922 = call i64 @llvm.smin.i64(i64 %198, i64 -1168)
  %199 = add nsw i64 %smin922, 1200
  %smin880 = call i64 @llvm.smin.i64(i64 %indvars.iv878, i64 -1168)
  %200 = shl nsw i64 %polly.indvar709, 5
  %201 = add nsw i64 %smin880, 1199
  br label %polly.loop_header712

polly.loop_exit714:                               ; preds = %polly.loop_exit720
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %indvars.iv.next879 = add nsw i64 %indvars.iv878, -32
  %exitcond886.not = icmp eq i64 %polly.indvar_next710, 38
  br i1 %exitcond886.not, label %polly.loop_exit708, label %polly.loop_header706

polly.loop_header712:                             ; preds = %polly.loop_exit720, %polly.loop_header706
  %polly.indvar715 = phi i64 [ 0, %polly.loop_header706 ], [ %polly.indvar_next716, %polly.loop_exit720 ]
  %202 = add nuw nsw i64 %polly.indvar715, %196
  %203 = trunc i64 %202 to i32
  %204 = mul nuw nsw i64 %202, 9600
  %min.iters.check = icmp eq i64 %199, 0
  br i1 %min.iters.check, label %polly.loop_header718, label %vector.ph923

vector.ph923:                                     ; preds = %polly.loop_header712
  %broadcast.splatinsert930 = insertelement <4 x i64> poison, i64 %200, i32 0
  %broadcast.splat931 = shufflevector <4 x i64> %broadcast.splatinsert930, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert932 = insertelement <4 x i32> poison, i32 %203, i32 0
  %broadcast.splat933 = shufflevector <4 x i32> %broadcast.splatinsert932, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body921

vector.body921:                                   ; preds = %vector.body921, %vector.ph923
  %index924 = phi i64 [ 0, %vector.ph923 ], [ %index.next925, %vector.body921 ]
  %vec.ind928 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph923 ], [ %vec.ind.next929, %vector.body921 ]
  %205 = add nuw nsw <4 x i64> %vec.ind928, %broadcast.splat931
  %206 = trunc <4 x i64> %205 to <4 x i32>
  %207 = mul <4 x i32> %broadcast.splat933, %206
  %208 = add <4 x i32> %207, <i32 3, i32 3, i32 3, i32 3>
  %209 = urem <4 x i32> %208, <i32 1200, i32 1200, i32 1200, i32 1200>
  %210 = sitofp <4 x i32> %209 to <4 x double>
  %211 = fmul fast <4 x double> %210, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %212 = extractelement <4 x i64> %205, i32 0
  %213 = shl i64 %212, 3
  %214 = add nuw nsw i64 %213, %204
  %215 = getelementptr i8, i8* %call, i64 %214
  %216 = bitcast i8* %215 to <4 x double>*
  store <4 x double> %211, <4 x double>* %216, align 8, !alias.scope !90, !noalias !92
  %index.next925 = add i64 %index924, 4
  %vec.ind.next929 = add <4 x i64> %vec.ind928, <i64 4, i64 4, i64 4, i64 4>
  %217 = icmp eq i64 %index.next925, %199
  br i1 %217, label %polly.loop_exit720, label %vector.body921, !llvm.loop !95

polly.loop_exit720:                               ; preds = %vector.body921, %polly.loop_header718
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond885.not = icmp eq i64 %polly.indvar715, %197
  br i1 %exitcond885.not, label %polly.loop_exit714, label %polly.loop_header712

polly.loop_header718:                             ; preds = %polly.loop_header712, %polly.loop_header718
  %polly.indvar721 = phi i64 [ %polly.indvar_next722, %polly.loop_header718 ], [ 0, %polly.loop_header712 ]
  %218 = add nuw nsw i64 %polly.indvar721, %200
  %219 = trunc i64 %218 to i32
  %220 = mul i32 %219, %203
  %221 = add i32 %220, 3
  %222 = urem i32 %221, 1200
  %p_conv31.i = sitofp i32 %222 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %223 = shl i64 %218, 3
  %224 = add nuw nsw i64 %223, %204
  %scevgep724 = getelementptr i8, i8* %call, i64 %224
  %scevgep724725 = bitcast i8* %scevgep724 to double*
  store double %p_div33.i, double* %scevgep724725, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next722 = add nuw nsw i64 %polly.indvar721, 1
  %exitcond881.not = icmp eq i64 %polly.indvar721, %201
  br i1 %exitcond881.not, label %polly.loop_exit720, label %polly.loop_header718, !llvm.loop !96

polly.loop_header727:                             ; preds = %polly.loop_exit708, %polly.loop_exit735
  %indvars.iv872 = phi i64 [ %indvars.iv.next873, %polly.loop_exit735 ], [ 0, %polly.loop_exit708 ]
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_exit708 ]
  %smin874 = call i64 @llvm.smin.i64(i64 %indvars.iv872, i64 -1168)
  %225 = shl nsw i64 %polly.indvar730, 5
  %226 = add nsw i64 %smin874, 1199
  br label %polly.loop_header733

polly.loop_exit735:                               ; preds = %polly.loop_exit741
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %indvars.iv.next873 = add nsw i64 %indvars.iv872, -32
  %exitcond877.not = icmp eq i64 %polly.indvar_next731, 38
  br i1 %exitcond877.not, label %polly.loop_header753, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_exit741, %polly.loop_header727
  %indvars.iv868 = phi i64 [ %indvars.iv.next869, %polly.loop_exit741 ], [ 0, %polly.loop_header727 ]
  %polly.indvar736 = phi i64 [ %polly.indvar_next737, %polly.loop_exit741 ], [ 0, %polly.loop_header727 ]
  %227 = mul nsw i64 %polly.indvar736, -32
  %smin937 = call i64 @llvm.smin.i64(i64 %227, i64 -968)
  %228 = add nsw i64 %smin937, 1000
  %smin870 = call i64 @llvm.smin.i64(i64 %indvars.iv868, i64 -968)
  %229 = shl nsw i64 %polly.indvar736, 5
  %230 = add nsw i64 %smin870, 999
  br label %polly.loop_header739

polly.loop_exit741:                               ; preds = %polly.loop_exit747
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %indvars.iv.next869 = add nsw i64 %indvars.iv868, -32
  %exitcond876.not = icmp eq i64 %polly.indvar_next737, 32
  br i1 %exitcond876.not, label %polly.loop_exit735, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_exit747, %polly.loop_header733
  %polly.indvar742 = phi i64 [ 0, %polly.loop_header733 ], [ %polly.indvar_next743, %polly.loop_exit747 ]
  %231 = add nuw nsw i64 %polly.indvar742, %225
  %232 = trunc i64 %231 to i32
  %233 = mul nuw nsw i64 %231, 8000
  %min.iters.check938 = icmp eq i64 %228, 0
  br i1 %min.iters.check938, label %polly.loop_header745, label %vector.ph939

vector.ph939:                                     ; preds = %polly.loop_header739
  %broadcast.splatinsert948 = insertelement <4 x i64> poison, i64 %229, i32 0
  %broadcast.splat949 = shufflevector <4 x i64> %broadcast.splatinsert948, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert950 = insertelement <4 x i32> poison, i32 %232, i32 0
  %broadcast.splat951 = shufflevector <4 x i32> %broadcast.splatinsert950, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body936

vector.body936:                                   ; preds = %vector.body936, %vector.ph939
  %index942 = phi i64 [ 0, %vector.ph939 ], [ %index.next943, %vector.body936 ]
  %vec.ind946 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph939 ], [ %vec.ind.next947, %vector.body936 ]
  %234 = add nuw nsw <4 x i64> %vec.ind946, %broadcast.splat949
  %235 = trunc <4 x i64> %234 to <4 x i32>
  %236 = mul <4 x i32> %broadcast.splat951, %235
  %237 = add <4 x i32> %236, <i32 2, i32 2, i32 2, i32 2>
  %238 = urem <4 x i32> %237, <i32 1000, i32 1000, i32 1000, i32 1000>
  %239 = sitofp <4 x i32> %238 to <4 x double>
  %240 = fmul fast <4 x double> %239, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %241 = extractelement <4 x i64> %234, i32 0
  %242 = shl i64 %241, 3
  %243 = add nuw nsw i64 %242, %233
  %244 = getelementptr i8, i8* %call2, i64 %243
  %245 = bitcast i8* %244 to <4 x double>*
  store <4 x double> %240, <4 x double>* %245, align 8, !alias.scope !94, !noalias !97
  %index.next943 = add i64 %index942, 4
  %vec.ind.next947 = add <4 x i64> %vec.ind946, <i64 4, i64 4, i64 4, i64 4>
  %246 = icmp eq i64 %index.next943, %228
  br i1 %246, label %polly.loop_exit747, label %vector.body936, !llvm.loop !98

polly.loop_exit747:                               ; preds = %vector.body936, %polly.loop_header745
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %exitcond875.not = icmp eq i64 %polly.indvar742, %226
  br i1 %exitcond875.not, label %polly.loop_exit741, label %polly.loop_header739

polly.loop_header745:                             ; preds = %polly.loop_header739, %polly.loop_header745
  %polly.indvar748 = phi i64 [ %polly.indvar_next749, %polly.loop_header745 ], [ 0, %polly.loop_header739 ]
  %247 = add nuw nsw i64 %polly.indvar748, %229
  %248 = trunc i64 %247 to i32
  %249 = mul i32 %248, %232
  %250 = add i32 %249, 2
  %251 = urem i32 %250, 1000
  %p_conv10.i = sitofp i32 %251 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %252 = shl i64 %247, 3
  %253 = add nuw nsw i64 %252, %233
  %scevgep751 = getelementptr i8, i8* %call2, i64 %253
  %scevgep751752 = bitcast i8* %scevgep751 to double*
  store double %p_div12.i, double* %scevgep751752, align 8, !alias.scope !94, !noalias !97
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %exitcond871.not = icmp eq i64 %polly.indvar748, %230
  br i1 %exitcond871.not, label %polly.loop_exit747, label %polly.loop_header745, !llvm.loop !99

polly.loop_header753:                             ; preds = %polly.loop_exit735, %polly.loop_exit761
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %polly.loop_exit761 ], [ 0, %polly.loop_exit735 ]
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_exit735 ]
  %smin864 = call i64 @llvm.smin.i64(i64 %indvars.iv862, i64 -1168)
  %254 = shl nsw i64 %polly.indvar756, 5
  %255 = add nsw i64 %smin864, 1199
  br label %polly.loop_header759

polly.loop_exit761:                               ; preds = %polly.loop_exit767
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, -32
  %exitcond867.not = icmp eq i64 %polly.indvar_next757, 38
  br i1 %exitcond867.not, label %init_array.exit, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_exit767, %polly.loop_header753
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit767 ], [ 0, %polly.loop_header753 ]
  %polly.indvar762 = phi i64 [ %polly.indvar_next763, %polly.loop_exit767 ], [ 0, %polly.loop_header753 ]
  %256 = mul nsw i64 %polly.indvar762, -32
  %smin955 = call i64 @llvm.smin.i64(i64 %256, i64 -968)
  %257 = add nsw i64 %smin955, 1000
  %smin860 = call i64 @llvm.smin.i64(i64 %indvars.iv858, i64 -968)
  %258 = shl nsw i64 %polly.indvar762, 5
  %259 = add nsw i64 %smin860, 999
  br label %polly.loop_header765

polly.loop_exit767:                               ; preds = %polly.loop_exit773
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %indvars.iv.next859 = add nsw i64 %indvars.iv858, -32
  %exitcond866.not = icmp eq i64 %polly.indvar_next763, 32
  br i1 %exitcond866.not, label %polly.loop_exit761, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_exit773, %polly.loop_header759
  %polly.indvar768 = phi i64 [ 0, %polly.loop_header759 ], [ %polly.indvar_next769, %polly.loop_exit773 ]
  %260 = add nuw nsw i64 %polly.indvar768, %254
  %261 = trunc i64 %260 to i32
  %262 = mul nuw nsw i64 %260, 8000
  %min.iters.check956 = icmp eq i64 %257, 0
  br i1 %min.iters.check956, label %polly.loop_header771, label %vector.ph957

vector.ph957:                                     ; preds = %polly.loop_header765
  %broadcast.splatinsert966 = insertelement <4 x i64> poison, i64 %258, i32 0
  %broadcast.splat967 = shufflevector <4 x i64> %broadcast.splatinsert966, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert968 = insertelement <4 x i32> poison, i32 %261, i32 0
  %broadcast.splat969 = shufflevector <4 x i32> %broadcast.splatinsert968, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body954

vector.body954:                                   ; preds = %vector.body954, %vector.ph957
  %index960 = phi i64 [ 0, %vector.ph957 ], [ %index.next961, %vector.body954 ]
  %vec.ind964 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph957 ], [ %vec.ind.next965, %vector.body954 ]
  %263 = add nuw nsw <4 x i64> %vec.ind964, %broadcast.splat967
  %264 = trunc <4 x i64> %263 to <4 x i32>
  %265 = mul <4 x i32> %broadcast.splat969, %264
  %266 = add <4 x i32> %265, <i32 1, i32 1, i32 1, i32 1>
  %267 = urem <4 x i32> %266, <i32 1200, i32 1200, i32 1200, i32 1200>
  %268 = sitofp <4 x i32> %267 to <4 x double>
  %269 = fmul fast <4 x double> %268, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %270 = extractelement <4 x i64> %263, i32 0
  %271 = shl i64 %270, 3
  %272 = add nuw nsw i64 %271, %262
  %273 = getelementptr i8, i8* %call1, i64 %272
  %274 = bitcast i8* %273 to <4 x double>*
  store <4 x double> %269, <4 x double>* %274, align 8, !alias.scope !93, !noalias !100
  %index.next961 = add i64 %index960, 4
  %vec.ind.next965 = add <4 x i64> %vec.ind964, <i64 4, i64 4, i64 4, i64 4>
  %275 = icmp eq i64 %index.next961, %257
  br i1 %275, label %polly.loop_exit773, label %vector.body954, !llvm.loop !101

polly.loop_exit773:                               ; preds = %vector.body954, %polly.loop_header771
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %exitcond865.not = icmp eq i64 %polly.indvar768, %255
  br i1 %exitcond865.not, label %polly.loop_exit767, label %polly.loop_header765

polly.loop_header771:                             ; preds = %polly.loop_header765, %polly.loop_header771
  %polly.indvar774 = phi i64 [ %polly.indvar_next775, %polly.loop_header771 ], [ 0, %polly.loop_header765 ]
  %276 = add nuw nsw i64 %polly.indvar774, %258
  %277 = trunc i64 %276 to i32
  %278 = mul i32 %277, %261
  %279 = add i32 %278, 1
  %280 = urem i32 %279, 1200
  %p_conv.i = sitofp i32 %280 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %281 = shl i64 %276, 3
  %282 = add nuw nsw i64 %281, %262
  %scevgep778 = getelementptr i8, i8* %call1, i64 %282
  %scevgep778779 = bitcast i8* %scevgep778 to double*
  store double %p_div.i, double* %scevgep778779, align 8, !alias.scope !93, !noalias !100
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %exitcond861.not = icmp eq i64 %polly.indvar774, %259
  br i1 %exitcond861.not, label %polly.loop_exit773, label %polly.loop_header771, !llvm.loop !102
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
!24 = !{!"llvm.loop.tile.size", i32 16}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 80}
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
!44 = !{!"llvm.loop.tile.size", i32 20}
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
!70 = !{!62, !66}
!71 = !{!62, !65}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !69, !13}
!79 = !{!72, !76}
!80 = !{!72, !75}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !69, !13}
!88 = !{!81, !85}
!89 = !{!81, !84}
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
