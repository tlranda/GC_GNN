; ModuleID = 'syr2k_exhaustive/mmp_all_SM_6049.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_6049.c"
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
  %call758 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1619 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2620 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1619, %call2
  %polly.access.call2639 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2639, %call1
  %2 = or i1 %0, %1
  %polly.access.call659 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call659, %call2
  %4 = icmp ule i8* %polly.access.call2639, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call659, %call1
  %8 = icmp ule i8* %polly.access.call1619, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header732, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep924 = getelementptr i8, i8* %call2, i64 %12
  %scevgep923 = getelementptr i8, i8* %call2, i64 %11
  %scevgep922 = getelementptr i8, i8* %call1, i64 %12
  %scevgep921 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep921, %scevgep924
  %bound1 = icmp ult i8* %scevgep923, %scevgep922
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
  br i1 %exitcond18.not.i, label %vector.ph928, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph928:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert935 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat936 = shufflevector <4 x i64> %broadcast.splatinsert935, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %vector.ph928
  %index929 = phi i64 [ 0, %vector.ph928 ], [ %index.next930, %vector.body927 ]
  %vec.ind933 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph928 ], [ %vec.ind.next934, %vector.body927 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind933, %broadcast.splat936
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv7.i, i64 %index929
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next930 = add i64 %index929, 4
  %vec.ind.next934 = add <4 x i64> %vec.ind933, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next930, 1200
  br i1 %40, label %for.inc41.i, label %vector.body927, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body927
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph928, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit793
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start437, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check991 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check991, label %for.body3.i46.preheader1065, label %vector.ph992

vector.ph992:                                     ; preds = %for.body3.i46.preheader
  %n.vec994 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body990

vector.body990:                                   ; preds = %vector.body990, %vector.ph992
  %index995 = phi i64 [ 0, %vector.ph992 ], [ %index.next996, %vector.body990 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i, i64 %index995
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next996 = add i64 %index995, 4
  %46 = icmp eq i64 %index.next996, %n.vec994
  br i1 %46, label %middle.block988, label %vector.body990, !llvm.loop !18

middle.block988:                                  ; preds = %vector.body990
  %cmp.n998 = icmp eq i64 %indvars.iv21.i, %n.vec994
  br i1 %cmp.n998, label %for.inc6.i, label %for.body3.i46.preheader1065

for.body3.i46.preheader1065:                      ; preds = %for.body3.i46.preheader, %middle.block988
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec994, %middle.block988 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1065, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1065 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block988, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !21
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !21
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !41

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting438
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start266, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1014 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1014, label %for.body3.i60.preheader1064, label %vector.ph1015

vector.ph1015:                                    ; preds = %for.body3.i60.preheader
  %n.vec1017 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1013

vector.body1013:                                  ; preds = %vector.body1013, %vector.ph1015
  %index1018 = phi i64 [ 0, %vector.ph1015 ], [ %index.next1019, %vector.body1013 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i52, i64 %index1018
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1022 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1022, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1019 = add i64 %index1018, 4
  %57 = icmp eq i64 %index.next1019, %n.vec1017
  br i1 %57, label %middle.block1011, label %vector.body1013, !llvm.loop !60

middle.block1011:                                 ; preds = %vector.body1013
  %cmp.n1021 = icmp eq i64 %indvars.iv21.i52, %n.vec1017
  br i1 %cmp.n1021, label %for.inc6.i63, label %for.body3.i60.preheader1064

for.body3.i60.preheader1064:                      ; preds = %for.body3.i60.preheader, %middle.block1011
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1017, %middle.block1011 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1064, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1064 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1011, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !21
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !21
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !41

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting267
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1040 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1040, label %for.body3.i99.preheader1063, label %vector.ph1041

vector.ph1041:                                    ; preds = %for.body3.i99.preheader
  %n.vec1043 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1039

vector.body1039:                                  ; preds = %vector.body1039, %vector.ph1041
  %index1044 = phi i64 [ 0, %vector.ph1041 ], [ %index.next1045, %vector.body1039 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i91, i64 %index1044
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1048 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1048, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1045 = add i64 %index1044, 4
  %68 = icmp eq i64 %index.next1045, %n.vec1043
  br i1 %68, label %middle.block1037, label %vector.body1039, !llvm.loop !62

middle.block1037:                                 ; preds = %vector.body1039
  %cmp.n1047 = icmp eq i64 %indvars.iv21.i91, %n.vec1043
  br i1 %cmp.n1047, label %for.inc6.i102, label %for.body3.i99.preheader1063

for.body3.i99.preheader1063:                      ; preds = %for.body3.i99.preheader, %middle.block1037
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1043, %middle.block1037 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1063, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1063 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1037, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !21
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !21
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !41

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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit223
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1052 = phi i64 [ %indvar.next1053, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1052, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1054 = icmp ult i64 %88, 4
  br i1 %min.iters.check1054, label %polly.loop_header191.preheader, label %vector.ph1055

vector.ph1055:                                    ; preds = %polly.loop_header
  %n.vec1057 = and i64 %88, -4
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %vector.ph1055
  %index1058 = phi i64 [ 0, %vector.ph1055 ], [ %index.next1059, %vector.body1051 ]
  %90 = shl nuw nsw i64 %index1058, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1062 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1062, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1059 = add i64 %index1058, 4
  %95 = icmp eq i64 %index.next1059, %n.vec1057
  br i1 %95, label %middle.block1049, label %vector.body1051, !llvm.loop !74

middle.block1049:                                 ; preds = %vector.body1051
  %cmp.n1061 = icmp eq i64 %88, %n.vec1057
  br i1 %cmp.n1061, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1049
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1057, %middle.block1049 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1049
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1053 = add i64 %indvar1052, 1
  br i1 %exitcond840.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
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
  %exitcond839.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond839.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit223
  %indvars.iv829 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next830, %polly.loop_exit223 ]
  %indvars.iv825 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next826, %polly.loop_exit223 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit223 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit223 ]
  %97 = shl nsw i64 %polly.indvar202, 8
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %98 = mul nsw i64 %polly.indvar202, -256
  %99 = mul nuw nsw i64 %polly.indvar202, 5
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  %indvars.iv.next826 = add nuw nsw i64 %indvars.iv825, 6
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, -6
  %exitcond838.not = icmp eq i64 %polly.indvar_next203, 5
  br i1 %exitcond838.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar208, 1200
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_header211
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next209, 1000
  br i1 %exitcond824.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_header211 ]
  %100 = add nuw nsw i64 %polly.indvar214, %97
  %polly.access.mul.call2218 = mul nuw nsw i64 %100, 1000
  %polly.access.add.call2219 = add nuw nsw i64 %polly.access.mul.call2218, %polly.indvar208
  %polly.access.call2220 = getelementptr double, double* %polly.access.cast.call2620, i64 %polly.access.add.call2219
  %polly.access.call2220.load = load double, double* %polly.access.call2220, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar214, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2220.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_exit207
  %indvars.iv831 = phi i64 [ %indvars.iv.next832, %polly.loop_exit229 ], [ %indvars.iv829, %polly.loop_exit207 ]
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit229 ], [ %indvars.iv825, %polly.loop_exit207 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ %99, %polly.loop_exit207 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv827, i64 0)
  %101 = add i64 %smax, %indvars.iv831
  %102 = mul nuw nsw i64 %polly.indvar224, 50
  %103 = sub nsw i64 %97, %102
  %104 = icmp sgt i64 %103, 0
  %105 = select i1 %104, i64 %103, i64 0
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next828 = add nsw i64 %indvars.iv827, -50
  %indvars.iv.next832 = add nsw i64 %indvars.iv831, 50
  %exitcond837.not = icmp eq i64 %polly.indvar_next225, 24
  br i1 %exitcond837.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %polly.indvar230 = phi i64 [ 0, %polly.loop_header221 ], [ %polly.indvar_next231, %polly.loop_exit235 ]
  %106 = shl nuw nsw i64 %polly.indvar230, 3
  %scevgep245 = getelementptr i8, i8* %call1, i64 %106
  %polly.access.mul.Packed_MemRef_call2249 = mul nuw nsw i64 %polly.indvar230, 1200
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next231, 1000
  br i1 %exitcond836.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %indvars.iv833 = phi i64 [ %indvars.iv.next834, %polly.loop_exit241 ], [ %101, %polly.loop_header227 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ %105, %polly.loop_header227 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv833, i64 255)
  %107 = add nuw i64 %polly.indvar236, %102
  %108 = add i64 %107, %98
  %polly.loop_guard916 = icmp sgt i64 %108, -1
  br i1 %polly.loop_guard916, label %polly.loop_header239.preheader, label %polly.loop_exit241

polly.loop_header239.preheader:                   ; preds = %polly.loop_header233
  %polly.access.add.Packed_MemRef_call2250 = add nsw i64 %polly.access.mul.Packed_MemRef_call2249, %108
  %polly.access.Packed_MemRef_call2251 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250
  %_p_scalar_252 = load double, double* %polly.access.Packed_MemRef_call2251, align 8
  %109 = mul i64 %107, 8000
  %scevgep258 = getelementptr i8, i8* %scevgep245, i64 %109
  %scevgep258259 = bitcast i8* %scevgep258 to double*
  %_p_scalar_260 = load double, double* %scevgep258259, align 8, !alias.scope !71, !noalias !78
  %110 = mul i64 %107, 9600
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239, %polly.loop_header233
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238 = icmp ult i64 %polly.indvar236, 49
  %indvars.iv.next834 = add i64 %indvars.iv833, 1
  br i1 %polly.loop_cond238, label %polly.loop_header233, label %polly.loop_exit235

polly.loop_header239:                             ; preds = %polly.loop_header239.preheader, %polly.loop_header239
  %polly.indvar242 = phi i64 [ %polly.indvar_next243, %polly.loop_header239 ], [ 0, %polly.loop_header239.preheader ]
  %111 = add nuw nsw i64 %polly.indvar242, %97
  %112 = mul nuw nsw i64 %111, 8000
  %scevgep246 = getelementptr i8, i8* %scevgep245, i64 %112
  %scevgep246247 = bitcast i8* %scevgep246 to double*
  %_p_scalar_248 = load double, double* %scevgep246247, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_252, %_p_scalar_248
  %polly.access.add.Packed_MemRef_call2254 = add nuw nsw i64 %polly.indvar242, %polly.access.mul.Packed_MemRef_call2249
  %polly.access.Packed_MemRef_call2255 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254
  %_p_scalar_256 = load double, double* %polly.access.Packed_MemRef_call2255, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_260, %_p_scalar_256
  %113 = shl i64 %111, 3
  %114 = add i64 %113, %110
  %scevgep261 = getelementptr i8, i8* %call, i64 %114
  %scevgep261262 = bitcast i8* %scevgep261 to double*
  %_p_scalar_263 = load double, double* %scevgep261262, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_263
  store double %p_add42.i118, double* %scevgep261262, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond835.not = icmp eq i64 %polly.indvar242, %smin
  br i1 %exitcond835.not, label %polly.loop_exit241, label %polly.loop_header239

polly.start266:                                   ; preds = %kernel_syr2k.exit
  %malloccall268 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header352

polly.exiting267:                                 ; preds = %polly.loop_exit392
  tail call void @free(i8* %malloccall268)
  br label %kernel_syr2k.exit90

polly.loop_header352:                             ; preds = %polly.loop_exit360, %polly.start266
  %indvar1026 = phi i64 [ %indvar.next1027, %polly.loop_exit360 ], [ 0, %polly.start266 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 1, %polly.start266 ]
  %115 = add i64 %indvar1026, 1
  %116 = mul nuw nsw i64 %polly.indvar355, 9600
  %scevgep364 = getelementptr i8, i8* %call, i64 %116
  %min.iters.check1028 = icmp ult i64 %115, 4
  br i1 %min.iters.check1028, label %polly.loop_header358.preheader, label %vector.ph1029

vector.ph1029:                                    ; preds = %polly.loop_header352
  %n.vec1031 = and i64 %115, -4
  br label %vector.body1025

vector.body1025:                                  ; preds = %vector.body1025, %vector.ph1029
  %index1032 = phi i64 [ 0, %vector.ph1029 ], [ %index.next1033, %vector.body1025 ]
  %117 = shl nuw nsw i64 %index1032, 3
  %118 = getelementptr i8, i8* %scevgep364, i64 %117
  %119 = bitcast i8* %118 to <4 x double>*
  %wide.load1036 = load <4 x double>, <4 x double>* %119, align 8, !alias.scope !79, !noalias !81
  %120 = fmul fast <4 x double> %wide.load1036, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %121 = bitcast i8* %118 to <4 x double>*
  store <4 x double> %120, <4 x double>* %121, align 8, !alias.scope !79, !noalias !81
  %index.next1033 = add i64 %index1032, 4
  %122 = icmp eq i64 %index.next1033, %n.vec1031
  br i1 %122, label %middle.block1023, label %vector.body1025, !llvm.loop !85

middle.block1023:                                 ; preds = %vector.body1025
  %cmp.n1035 = icmp eq i64 %115, %n.vec1031
  br i1 %cmp.n1035, label %polly.loop_exit360, label %polly.loop_header358.preheader

polly.loop_header358.preheader:                   ; preds = %polly.loop_header352, %middle.block1023
  %polly.indvar361.ph = phi i64 [ 0, %polly.loop_header352 ], [ %n.vec1031, %middle.block1023 ]
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_header358, %middle.block1023
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next356, 1200
  %indvar.next1027 = add i64 %indvar1026, 1
  br i1 %exitcond862.not, label %polly.loop_header368.preheader, label %polly.loop_header352

polly.loop_header368.preheader:                   ; preds = %polly.loop_exit360
  %Packed_MemRef_call2269 = bitcast i8* %malloccall268 to double*
  br label %polly.loop_header368

polly.loop_header358:                             ; preds = %polly.loop_header358.preheader, %polly.loop_header358
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_header358 ], [ %polly.indvar361.ph, %polly.loop_header358.preheader ]
  %123 = shl nuw nsw i64 %polly.indvar361, 3
  %scevgep365 = getelementptr i8, i8* %scevgep364, i64 %123
  %scevgep365366 = bitcast i8* %scevgep365 to double*
  %_p_scalar_367 = load double, double* %scevgep365366, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_367, 1.200000e+00
  store double %p_mul.i57, double* %scevgep365366, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next362, %polly.indvar355
  br i1 %exitcond861.not, label %polly.loop_exit360, label %polly.loop_header358, !llvm.loop !86

polly.loop_header368:                             ; preds = %polly.loop_header368.preheader, %polly.loop_exit392
  %indvars.iv850 = phi i64 [ 0, %polly.loop_header368.preheader ], [ %indvars.iv.next851, %polly.loop_exit392 ]
  %indvars.iv845 = phi i64 [ 0, %polly.loop_header368.preheader ], [ %indvars.iv.next846, %polly.loop_exit392 ]
  %indvars.iv841 = phi i64 [ 1200, %polly.loop_header368.preheader ], [ %indvars.iv.next842, %polly.loop_exit392 ]
  %polly.indvar371 = phi i64 [ 0, %polly.loop_header368.preheader ], [ %polly.indvar_next372, %polly.loop_exit392 ]
  %124 = shl nsw i64 %polly.indvar371, 8
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_exit382
  %125 = mul nsw i64 %polly.indvar371, -256
  %126 = mul nuw nsw i64 %polly.indvar371, 5
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_exit398
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %indvars.iv.next842 = add nsw i64 %indvars.iv841, -256
  %indvars.iv.next846 = add nuw nsw i64 %indvars.iv845, 6
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, -6
  %exitcond860.not = icmp eq i64 %polly.indvar_next372, 5
  br i1 %exitcond860.not, label %polly.exiting267, label %polly.loop_header368

polly.loop_header374:                             ; preds = %polly.loop_exit382, %polly.loop_header368
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header368 ], [ %polly.indvar_next378, %polly.loop_exit382 ]
  %polly.access.mul.Packed_MemRef_call2269 = mul nuw nsw i64 %polly.indvar377, 1200
  br label %polly.loop_header380

polly.loop_exit382:                               ; preds = %polly.loop_header380
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next378, 1000
  br i1 %exitcond844.not, label %polly.loop_exit376, label %polly.loop_header374

polly.loop_header380:                             ; preds = %polly.loop_header380, %polly.loop_header374
  %polly.indvar383 = phi i64 [ 0, %polly.loop_header374 ], [ %polly.indvar_next384, %polly.loop_header380 ]
  %127 = add nuw nsw i64 %polly.indvar383, %124
  %polly.access.mul.call2387 = mul nuw nsw i64 %127, 1000
  %polly.access.add.call2388 = add nuw nsw i64 %polly.access.mul.call2387, %polly.indvar377
  %polly.access.call2389 = getelementptr double, double* %polly.access.cast.call2620, i64 %polly.access.add.call2388
  %polly.access.call2389.load = load double, double* %polly.access.call2389, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2269 = add nuw nsw i64 %polly.indvar383, %polly.access.mul.Packed_MemRef_call2269
  %polly.access.Packed_MemRef_call2269 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269
  store double %polly.access.call2389.load, double* %polly.access.Packed_MemRef_call2269, align 8
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next384, %indvars.iv841
  br i1 %exitcond843.not, label %polly.loop_exit382, label %polly.loop_header380

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.loop_exit376
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %polly.loop_exit398 ], [ %indvars.iv850, %polly.loop_exit376 ]
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit398 ], [ %indvars.iv845, %polly.loop_exit376 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ %126, %polly.loop_exit376 ]
  %smax849 = call i64 @llvm.smax.i64(i64 %indvars.iv847, i64 0)
  %128 = add i64 %smax849, %indvars.iv852
  %129 = mul nuw nsw i64 %polly.indvar393, 50
  %130 = sub nsw i64 %124, %129
  %131 = icmp sgt i64 %130, 0
  %132 = select i1 %131, i64 %130, i64 0
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_exit404
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %indvars.iv.next848 = add nsw i64 %indvars.iv847, -50
  %indvars.iv.next853 = add nsw i64 %indvars.iv852, 50
  %exitcond859.not = icmp eq i64 %polly.indvar_next394, 24
  br i1 %exitcond859.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header396:                             ; preds = %polly.loop_exit404, %polly.loop_header390
  %polly.indvar399 = phi i64 [ 0, %polly.loop_header390 ], [ %polly.indvar_next400, %polly.loop_exit404 ]
  %133 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep416 = getelementptr i8, i8* %call1, i64 %133
  %polly.access.mul.Packed_MemRef_call2269420 = mul nuw nsw i64 %polly.indvar399, 1200
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit411
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next400, 1000
  br i1 %exitcond858.not, label %polly.loop_exit398, label %polly.loop_header396

polly.loop_header402:                             ; preds = %polly.loop_exit411, %polly.loop_header396
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit411 ], [ %128, %polly.loop_header396 ]
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit411 ], [ %132, %polly.loop_header396 ]
  %smin856 = call i64 @llvm.smin.i64(i64 %indvars.iv854, i64 255)
  %134 = add nuw i64 %polly.indvar405, %129
  %135 = add i64 %134, %125
  %polly.loop_guard412917 = icmp sgt i64 %135, -1
  br i1 %polly.loop_guard412917, label %polly.loop_header409.preheader, label %polly.loop_exit411

polly.loop_header409.preheader:                   ; preds = %polly.loop_header402
  %polly.access.add.Packed_MemRef_call2269421 = add nsw i64 %polly.access.mul.Packed_MemRef_call2269420, %135
  %polly.access.Packed_MemRef_call2269422 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269421
  %_p_scalar_423 = load double, double* %polly.access.Packed_MemRef_call2269422, align 8
  %136 = mul i64 %134, 8000
  %scevgep429 = getelementptr i8, i8* %scevgep416, i64 %136
  %scevgep429430 = bitcast i8* %scevgep429 to double*
  %_p_scalar_431 = load double, double* %scevgep429430, align 8, !alias.scope !82, !noalias !88
  %137 = mul i64 %134, 9600
  br label %polly.loop_header409

polly.loop_exit411:                               ; preds = %polly.loop_header409, %polly.loop_header402
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %polly.loop_cond407 = icmp ult i64 %polly.indvar405, 49
  %indvars.iv.next855 = add i64 %indvars.iv854, 1
  br i1 %polly.loop_cond407, label %polly.loop_header402, label %polly.loop_exit404

polly.loop_header409:                             ; preds = %polly.loop_header409.preheader, %polly.loop_header409
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_header409 ], [ 0, %polly.loop_header409.preheader ]
  %138 = add nuw nsw i64 %polly.indvar413, %124
  %139 = mul nuw nsw i64 %138, 8000
  %scevgep417 = getelementptr i8, i8* %scevgep416, i64 %139
  %scevgep417418 = bitcast i8* %scevgep417 to double*
  %_p_scalar_419 = load double, double* %scevgep417418, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_423, %_p_scalar_419
  %polly.access.add.Packed_MemRef_call2269425 = add nuw nsw i64 %polly.indvar413, %polly.access.mul.Packed_MemRef_call2269420
  %polly.access.Packed_MemRef_call2269426 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269425
  %_p_scalar_427 = load double, double* %polly.access.Packed_MemRef_call2269426, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_431, %_p_scalar_427
  %140 = shl i64 %138, 3
  %141 = add i64 %140, %137
  %scevgep432 = getelementptr i8, i8* %call, i64 %141
  %scevgep432433 = bitcast i8* %scevgep432 to double*
  %_p_scalar_434 = load double, double* %scevgep432433, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_434
  store double %p_add42.i79, double* %scevgep432433, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond857.not = icmp eq i64 %polly.indvar413, %smin856
  br i1 %exitcond857.not, label %polly.loop_exit411, label %polly.loop_header409

polly.start437:                                   ; preds = %init_array.exit
  %malloccall439 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header523

polly.exiting438:                                 ; preds = %polly.loop_exit563
  tail call void @free(i8* %malloccall439)
  br label %kernel_syr2k.exit

polly.loop_header523:                             ; preds = %polly.loop_exit531, %polly.start437
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit531 ], [ 0, %polly.start437 ]
  %polly.indvar526 = phi i64 [ %polly.indvar_next527, %polly.loop_exit531 ], [ 1, %polly.start437 ]
  %142 = add i64 %indvar, 1
  %143 = mul nuw nsw i64 %polly.indvar526, 9600
  %scevgep535 = getelementptr i8, i8* %call, i64 %143
  %min.iters.check1002 = icmp ult i64 %142, 4
  br i1 %min.iters.check1002, label %polly.loop_header529.preheader, label %vector.ph1003

vector.ph1003:                                    ; preds = %polly.loop_header523
  %n.vec1005 = and i64 %142, -4
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.body1001, %vector.ph1003
  %index1006 = phi i64 [ 0, %vector.ph1003 ], [ %index.next1007, %vector.body1001 ]
  %144 = shl nuw nsw i64 %index1006, 3
  %145 = getelementptr i8, i8* %scevgep535, i64 %144
  %146 = bitcast i8* %145 to <4 x double>*
  %wide.load1010 = load <4 x double>, <4 x double>* %146, align 8, !alias.scope !89, !noalias !91
  %147 = fmul fast <4 x double> %wide.load1010, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %148 = bitcast i8* %145 to <4 x double>*
  store <4 x double> %147, <4 x double>* %148, align 8, !alias.scope !89, !noalias !91
  %index.next1007 = add i64 %index1006, 4
  %149 = icmp eq i64 %index.next1007, %n.vec1005
  br i1 %149, label %middle.block999, label %vector.body1001, !llvm.loop !95

middle.block999:                                  ; preds = %vector.body1001
  %cmp.n1009 = icmp eq i64 %142, %n.vec1005
  br i1 %cmp.n1009, label %polly.loop_exit531, label %polly.loop_header529.preheader

polly.loop_header529.preheader:                   ; preds = %polly.loop_header523, %middle.block999
  %polly.indvar532.ph = phi i64 [ 0, %polly.loop_header523 ], [ %n.vec1005, %middle.block999 ]
  br label %polly.loop_header529

polly.loop_exit531:                               ; preds = %polly.loop_header529, %middle.block999
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond884.not = icmp eq i64 %polly.indvar_next527, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond884.not, label %polly.loop_header539.preheader, label %polly.loop_header523

polly.loop_header539.preheader:                   ; preds = %polly.loop_exit531
  %Packed_MemRef_call2440 = bitcast i8* %malloccall439 to double*
  br label %polly.loop_header539

polly.loop_header529:                             ; preds = %polly.loop_header529.preheader, %polly.loop_header529
  %polly.indvar532 = phi i64 [ %polly.indvar_next533, %polly.loop_header529 ], [ %polly.indvar532.ph, %polly.loop_header529.preheader ]
  %150 = shl nuw nsw i64 %polly.indvar532, 3
  %scevgep536 = getelementptr i8, i8* %scevgep535, i64 %150
  %scevgep536537 = bitcast i8* %scevgep536 to double*
  %_p_scalar_538 = load double, double* %scevgep536537, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_538, 1.200000e+00
  store double %p_mul.i, double* %scevgep536537, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next533 = add nuw nsw i64 %polly.indvar532, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next533, %polly.indvar526
  br i1 %exitcond883.not, label %polly.loop_exit531, label %polly.loop_header529, !llvm.loop !96

polly.loop_header539:                             ; preds = %polly.loop_header539.preheader, %polly.loop_exit563
  %indvars.iv872 = phi i64 [ 0, %polly.loop_header539.preheader ], [ %indvars.iv.next873, %polly.loop_exit563 ]
  %indvars.iv867 = phi i64 [ 0, %polly.loop_header539.preheader ], [ %indvars.iv.next868, %polly.loop_exit563 ]
  %indvars.iv863 = phi i64 [ 1200, %polly.loop_header539.preheader ], [ %indvars.iv.next864, %polly.loop_exit563 ]
  %polly.indvar542 = phi i64 [ 0, %polly.loop_header539.preheader ], [ %polly.indvar_next543, %polly.loop_exit563 ]
  %151 = shl nsw i64 %polly.indvar542, 8
  br label %polly.loop_header545

polly.loop_exit547:                               ; preds = %polly.loop_exit553
  %152 = mul nsw i64 %polly.indvar542, -256
  %153 = mul nuw nsw i64 %polly.indvar542, 5
  br label %polly.loop_header561

polly.loop_exit563:                               ; preds = %polly.loop_exit569
  %polly.indvar_next543 = add nuw nsw i64 %polly.indvar542, 1
  %indvars.iv.next864 = add nsw i64 %indvars.iv863, -256
  %indvars.iv.next868 = add nuw nsw i64 %indvars.iv867, 6
  %indvars.iv.next873 = add nsw i64 %indvars.iv872, -6
  %exitcond882.not = icmp eq i64 %polly.indvar_next543, 5
  br i1 %exitcond882.not, label %polly.exiting438, label %polly.loop_header539

polly.loop_header545:                             ; preds = %polly.loop_exit553, %polly.loop_header539
  %polly.indvar548 = phi i64 [ 0, %polly.loop_header539 ], [ %polly.indvar_next549, %polly.loop_exit553 ]
  %polly.access.mul.Packed_MemRef_call2440 = mul nuw nsw i64 %polly.indvar548, 1200
  br label %polly.loop_header551

polly.loop_exit553:                               ; preds = %polly.loop_header551
  %polly.indvar_next549 = add nuw nsw i64 %polly.indvar548, 1
  %exitcond866.not = icmp eq i64 %polly.indvar_next549, 1000
  br i1 %exitcond866.not, label %polly.loop_exit547, label %polly.loop_header545

polly.loop_header551:                             ; preds = %polly.loop_header551, %polly.loop_header545
  %polly.indvar554 = phi i64 [ 0, %polly.loop_header545 ], [ %polly.indvar_next555, %polly.loop_header551 ]
  %154 = add nuw nsw i64 %polly.indvar554, %151
  %polly.access.mul.call2558 = mul nuw nsw i64 %154, 1000
  %polly.access.add.call2559 = add nuw nsw i64 %polly.access.mul.call2558, %polly.indvar548
  %polly.access.call2560 = getelementptr double, double* %polly.access.cast.call2620, i64 %polly.access.add.call2559
  %polly.access.call2560.load = load double, double* %polly.access.call2560, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2440 = add nuw nsw i64 %polly.indvar554, %polly.access.mul.Packed_MemRef_call2440
  %polly.access.Packed_MemRef_call2440 = getelementptr double, double* %Packed_MemRef_call2440, i64 %polly.access.add.Packed_MemRef_call2440
  store double %polly.access.call2560.load, double* %polly.access.Packed_MemRef_call2440, align 8
  %polly.indvar_next555 = add nuw nsw i64 %polly.indvar554, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next555, %indvars.iv863
  br i1 %exitcond865.not, label %polly.loop_exit553, label %polly.loop_header551

polly.loop_header561:                             ; preds = %polly.loop_exit569, %polly.loop_exit547
  %indvars.iv874 = phi i64 [ %indvars.iv.next875, %polly.loop_exit569 ], [ %indvars.iv872, %polly.loop_exit547 ]
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit569 ], [ %indvars.iv867, %polly.loop_exit547 ]
  %polly.indvar564 = phi i64 [ %polly.indvar_next565, %polly.loop_exit569 ], [ %153, %polly.loop_exit547 ]
  %smax871 = call i64 @llvm.smax.i64(i64 %indvars.iv869, i64 0)
  %155 = add i64 %smax871, %indvars.iv874
  %156 = mul nuw nsw i64 %polly.indvar564, 50
  %157 = sub nsw i64 %151, %156
  %158 = icmp sgt i64 %157, 0
  %159 = select i1 %158, i64 %157, i64 0
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_exit575
  %polly.indvar_next565 = add nuw nsw i64 %polly.indvar564, 1
  %indvars.iv.next870 = add nsw i64 %indvars.iv869, -50
  %indvars.iv.next875 = add nsw i64 %indvars.iv874, 50
  %exitcond881.not = icmp eq i64 %polly.indvar_next565, 24
  br i1 %exitcond881.not, label %polly.loop_exit563, label %polly.loop_header561

polly.loop_header567:                             ; preds = %polly.loop_exit575, %polly.loop_header561
  %polly.indvar570 = phi i64 [ 0, %polly.loop_header561 ], [ %polly.indvar_next571, %polly.loop_exit575 ]
  %160 = shl nuw nsw i64 %polly.indvar570, 3
  %scevgep587 = getelementptr i8, i8* %call1, i64 %160
  %polly.access.mul.Packed_MemRef_call2440591 = mul nuw nsw i64 %polly.indvar570, 1200
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_exit582
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next571, 1000
  br i1 %exitcond880.not, label %polly.loop_exit569, label %polly.loop_header567

polly.loop_header573:                             ; preds = %polly.loop_exit582, %polly.loop_header567
  %indvars.iv876 = phi i64 [ %indvars.iv.next877, %polly.loop_exit582 ], [ %155, %polly.loop_header567 ]
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit582 ], [ %159, %polly.loop_header567 ]
  %smin878 = call i64 @llvm.smin.i64(i64 %indvars.iv876, i64 255)
  %161 = add nuw i64 %polly.indvar576, %156
  %162 = add i64 %161, %152
  %polly.loop_guard583918 = icmp sgt i64 %162, -1
  br i1 %polly.loop_guard583918, label %polly.loop_header580.preheader, label %polly.loop_exit582

polly.loop_header580.preheader:                   ; preds = %polly.loop_header573
  %polly.access.add.Packed_MemRef_call2440592 = add nsw i64 %polly.access.mul.Packed_MemRef_call2440591, %162
  %polly.access.Packed_MemRef_call2440593 = getelementptr double, double* %Packed_MemRef_call2440, i64 %polly.access.add.Packed_MemRef_call2440592
  %_p_scalar_594 = load double, double* %polly.access.Packed_MemRef_call2440593, align 8
  %163 = mul i64 %161, 8000
  %scevgep600 = getelementptr i8, i8* %scevgep587, i64 %163
  %scevgep600601 = bitcast i8* %scevgep600 to double*
  %_p_scalar_602 = load double, double* %scevgep600601, align 8, !alias.scope !92, !noalias !98
  %164 = mul i64 %161, 9600
  br label %polly.loop_header580

polly.loop_exit582:                               ; preds = %polly.loop_header580, %polly.loop_header573
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %polly.loop_cond578 = icmp ult i64 %polly.indvar576, 49
  %indvars.iv.next877 = add i64 %indvars.iv876, 1
  br i1 %polly.loop_cond578, label %polly.loop_header573, label %polly.loop_exit575

polly.loop_header580:                             ; preds = %polly.loop_header580.preheader, %polly.loop_header580
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_header580 ], [ 0, %polly.loop_header580.preheader ]
  %165 = add nuw nsw i64 %polly.indvar584, %151
  %166 = mul nuw nsw i64 %165, 8000
  %scevgep588 = getelementptr i8, i8* %scevgep587, i64 %166
  %scevgep588589 = bitcast i8* %scevgep588 to double*
  %_p_scalar_590 = load double, double* %scevgep588589, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_594, %_p_scalar_590
  %polly.access.add.Packed_MemRef_call2440596 = add nuw nsw i64 %polly.indvar584, %polly.access.mul.Packed_MemRef_call2440591
  %polly.access.Packed_MemRef_call2440597 = getelementptr double, double* %Packed_MemRef_call2440, i64 %polly.access.add.Packed_MemRef_call2440596
  %_p_scalar_598 = load double, double* %polly.access.Packed_MemRef_call2440597, align 8
  %p_mul37.i = fmul fast double %_p_scalar_602, %_p_scalar_598
  %167 = shl i64 %165, 3
  %168 = add i64 %167, %164
  %scevgep603 = getelementptr i8, i8* %call, i64 %168
  %scevgep603604 = bitcast i8* %scevgep603 to double*
  %_p_scalar_605 = load double, double* %scevgep603604, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_605
  store double %p_add42.i, double* %scevgep603604, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %exitcond879.not = icmp eq i64 %polly.indvar584, %smin878
  br i1 %exitcond879.not, label %polly.loop_exit582, label %polly.loop_header580

polly.loop_header732:                             ; preds = %entry, %polly.loop_exit740
  %indvars.iv909 = phi i64 [ %indvars.iv.next910, %polly.loop_exit740 ], [ 0, %entry ]
  %polly.indvar735 = phi i64 [ %polly.indvar_next736, %polly.loop_exit740 ], [ 0, %entry ]
  %smin911 = call i64 @llvm.smin.i64(i64 %indvars.iv909, i64 -1168)
  %169 = shl nsw i64 %polly.indvar735, 5
  %170 = add nsw i64 %smin911, 1199
  br label %polly.loop_header738

polly.loop_exit740:                               ; preds = %polly.loop_exit746
  %polly.indvar_next736 = add nuw nsw i64 %polly.indvar735, 1
  %indvars.iv.next910 = add nsw i64 %indvars.iv909, -32
  %exitcond914.not = icmp eq i64 %polly.indvar_next736, 38
  br i1 %exitcond914.not, label %polly.loop_header759, label %polly.loop_header732

polly.loop_header738:                             ; preds = %polly.loop_exit746, %polly.loop_header732
  %indvars.iv905 = phi i64 [ %indvars.iv.next906, %polly.loop_exit746 ], [ 0, %polly.loop_header732 ]
  %polly.indvar741 = phi i64 [ %polly.indvar_next742, %polly.loop_exit746 ], [ 0, %polly.loop_header732 ]
  %171 = mul nsw i64 %polly.indvar741, -32
  %smin940 = call i64 @llvm.smin.i64(i64 %171, i64 -1168)
  %172 = add nsw i64 %smin940, 1200
  %smin907 = call i64 @llvm.smin.i64(i64 %indvars.iv905, i64 -1168)
  %173 = shl nsw i64 %polly.indvar741, 5
  %174 = add nsw i64 %smin907, 1199
  br label %polly.loop_header744

polly.loop_exit746:                               ; preds = %polly.loop_exit752
  %polly.indvar_next742 = add nuw nsw i64 %polly.indvar741, 1
  %indvars.iv.next906 = add nsw i64 %indvars.iv905, -32
  %exitcond913.not = icmp eq i64 %polly.indvar_next742, 38
  br i1 %exitcond913.not, label %polly.loop_exit740, label %polly.loop_header738

polly.loop_header744:                             ; preds = %polly.loop_exit752, %polly.loop_header738
  %polly.indvar747 = phi i64 [ 0, %polly.loop_header738 ], [ %polly.indvar_next748, %polly.loop_exit752 ]
  %175 = add nuw nsw i64 %polly.indvar747, %169
  %176 = trunc i64 %175 to i32
  %177 = mul nuw nsw i64 %175, 9600
  %min.iters.check = icmp eq i64 %172, 0
  br i1 %min.iters.check, label %polly.loop_header750, label %vector.ph941

vector.ph941:                                     ; preds = %polly.loop_header744
  %broadcast.splatinsert948 = insertelement <4 x i64> poison, i64 %173, i32 0
  %broadcast.splat949 = shufflevector <4 x i64> %broadcast.splatinsert948, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert950 = insertelement <4 x i32> poison, i32 %176, i32 0
  %broadcast.splat951 = shufflevector <4 x i32> %broadcast.splatinsert950, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body939

vector.body939:                                   ; preds = %vector.body939, %vector.ph941
  %index942 = phi i64 [ 0, %vector.ph941 ], [ %index.next943, %vector.body939 ]
  %vec.ind946 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph941 ], [ %vec.ind.next947, %vector.body939 ]
  %178 = add nuw nsw <4 x i64> %vec.ind946, %broadcast.splat949
  %179 = trunc <4 x i64> %178 to <4 x i32>
  %180 = mul <4 x i32> %broadcast.splat951, %179
  %181 = add <4 x i32> %180, <i32 3, i32 3, i32 3, i32 3>
  %182 = urem <4 x i32> %181, <i32 1200, i32 1200, i32 1200, i32 1200>
  %183 = sitofp <4 x i32> %182 to <4 x double>
  %184 = fmul fast <4 x double> %183, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %185 = extractelement <4 x i64> %178, i32 0
  %186 = shl i64 %185, 3
  %187 = add nuw nsw i64 %186, %177
  %188 = getelementptr i8, i8* %call, i64 %187
  %189 = bitcast i8* %188 to <4 x double>*
  store <4 x double> %184, <4 x double>* %189, align 8, !alias.scope !99, !noalias !101
  %index.next943 = add i64 %index942, 4
  %vec.ind.next947 = add <4 x i64> %vec.ind946, <i64 4, i64 4, i64 4, i64 4>
  %190 = icmp eq i64 %index.next943, %172
  br i1 %190, label %polly.loop_exit752, label %vector.body939, !llvm.loop !104

polly.loop_exit752:                               ; preds = %vector.body939, %polly.loop_header750
  %polly.indvar_next748 = add nuw nsw i64 %polly.indvar747, 1
  %exitcond912.not = icmp eq i64 %polly.indvar747, %170
  br i1 %exitcond912.not, label %polly.loop_exit746, label %polly.loop_header744

polly.loop_header750:                             ; preds = %polly.loop_header744, %polly.loop_header750
  %polly.indvar753 = phi i64 [ %polly.indvar_next754, %polly.loop_header750 ], [ 0, %polly.loop_header744 ]
  %191 = add nuw nsw i64 %polly.indvar753, %173
  %192 = trunc i64 %191 to i32
  %193 = mul i32 %192, %176
  %194 = add i32 %193, 3
  %195 = urem i32 %194, 1200
  %p_conv31.i = sitofp i32 %195 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %196 = shl i64 %191, 3
  %197 = add nuw nsw i64 %196, %177
  %scevgep756 = getelementptr i8, i8* %call, i64 %197
  %scevgep756757 = bitcast i8* %scevgep756 to double*
  store double %p_div33.i, double* %scevgep756757, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %exitcond908.not = icmp eq i64 %polly.indvar753, %174
  br i1 %exitcond908.not, label %polly.loop_exit752, label %polly.loop_header750, !llvm.loop !105

polly.loop_header759:                             ; preds = %polly.loop_exit740, %polly.loop_exit767
  %indvars.iv899 = phi i64 [ %indvars.iv.next900, %polly.loop_exit767 ], [ 0, %polly.loop_exit740 ]
  %polly.indvar762 = phi i64 [ %polly.indvar_next763, %polly.loop_exit767 ], [ 0, %polly.loop_exit740 ]
  %smin901 = call i64 @llvm.smin.i64(i64 %indvars.iv899, i64 -1168)
  %198 = shl nsw i64 %polly.indvar762, 5
  %199 = add nsw i64 %smin901, 1199
  br label %polly.loop_header765

polly.loop_exit767:                               ; preds = %polly.loop_exit773
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %indvars.iv.next900 = add nsw i64 %indvars.iv899, -32
  %exitcond904.not = icmp eq i64 %polly.indvar_next763, 38
  br i1 %exitcond904.not, label %polly.loop_header785, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_exit773, %polly.loop_header759
  %indvars.iv895 = phi i64 [ %indvars.iv.next896, %polly.loop_exit773 ], [ 0, %polly.loop_header759 ]
  %polly.indvar768 = phi i64 [ %polly.indvar_next769, %polly.loop_exit773 ], [ 0, %polly.loop_header759 ]
  %200 = mul nsw i64 %polly.indvar768, -32
  %smin955 = call i64 @llvm.smin.i64(i64 %200, i64 -968)
  %201 = add nsw i64 %smin955, 1000
  %smin897 = call i64 @llvm.smin.i64(i64 %indvars.iv895, i64 -968)
  %202 = shl nsw i64 %polly.indvar768, 5
  %203 = add nsw i64 %smin897, 999
  br label %polly.loop_header771

polly.loop_exit773:                               ; preds = %polly.loop_exit779
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %indvars.iv.next896 = add nsw i64 %indvars.iv895, -32
  %exitcond903.not = icmp eq i64 %polly.indvar_next769, 32
  br i1 %exitcond903.not, label %polly.loop_exit767, label %polly.loop_header765

polly.loop_header771:                             ; preds = %polly.loop_exit779, %polly.loop_header765
  %polly.indvar774 = phi i64 [ 0, %polly.loop_header765 ], [ %polly.indvar_next775, %polly.loop_exit779 ]
  %204 = add nuw nsw i64 %polly.indvar774, %198
  %205 = trunc i64 %204 to i32
  %206 = mul nuw nsw i64 %204, 8000
  %min.iters.check956 = icmp eq i64 %201, 0
  br i1 %min.iters.check956, label %polly.loop_header777, label %vector.ph957

vector.ph957:                                     ; preds = %polly.loop_header771
  %broadcast.splatinsert966 = insertelement <4 x i64> poison, i64 %202, i32 0
  %broadcast.splat967 = shufflevector <4 x i64> %broadcast.splatinsert966, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert968 = insertelement <4 x i32> poison, i32 %205, i32 0
  %broadcast.splat969 = shufflevector <4 x i32> %broadcast.splatinsert968, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body954

vector.body954:                                   ; preds = %vector.body954, %vector.ph957
  %index960 = phi i64 [ 0, %vector.ph957 ], [ %index.next961, %vector.body954 ]
  %vec.ind964 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph957 ], [ %vec.ind.next965, %vector.body954 ]
  %207 = add nuw nsw <4 x i64> %vec.ind964, %broadcast.splat967
  %208 = trunc <4 x i64> %207 to <4 x i32>
  %209 = mul <4 x i32> %broadcast.splat969, %208
  %210 = add <4 x i32> %209, <i32 2, i32 2, i32 2, i32 2>
  %211 = urem <4 x i32> %210, <i32 1000, i32 1000, i32 1000, i32 1000>
  %212 = sitofp <4 x i32> %211 to <4 x double>
  %213 = fmul fast <4 x double> %212, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %214 = extractelement <4 x i64> %207, i32 0
  %215 = shl i64 %214, 3
  %216 = add nuw nsw i64 %215, %206
  %217 = getelementptr i8, i8* %call2, i64 %216
  %218 = bitcast i8* %217 to <4 x double>*
  store <4 x double> %213, <4 x double>* %218, align 8, !alias.scope !103, !noalias !106
  %index.next961 = add i64 %index960, 4
  %vec.ind.next965 = add <4 x i64> %vec.ind964, <i64 4, i64 4, i64 4, i64 4>
  %219 = icmp eq i64 %index.next961, %201
  br i1 %219, label %polly.loop_exit779, label %vector.body954, !llvm.loop !107

polly.loop_exit779:                               ; preds = %vector.body954, %polly.loop_header777
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %exitcond902.not = icmp eq i64 %polly.indvar774, %199
  br i1 %exitcond902.not, label %polly.loop_exit773, label %polly.loop_header771

polly.loop_header777:                             ; preds = %polly.loop_header771, %polly.loop_header777
  %polly.indvar780 = phi i64 [ %polly.indvar_next781, %polly.loop_header777 ], [ 0, %polly.loop_header771 ]
  %220 = add nuw nsw i64 %polly.indvar780, %202
  %221 = trunc i64 %220 to i32
  %222 = mul i32 %221, %205
  %223 = add i32 %222, 2
  %224 = urem i32 %223, 1000
  %p_conv10.i = sitofp i32 %224 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %225 = shl i64 %220, 3
  %226 = add nuw nsw i64 %225, %206
  %scevgep783 = getelementptr i8, i8* %call2, i64 %226
  %scevgep783784 = bitcast i8* %scevgep783 to double*
  store double %p_div12.i, double* %scevgep783784, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %exitcond898.not = icmp eq i64 %polly.indvar780, %203
  br i1 %exitcond898.not, label %polly.loop_exit779, label %polly.loop_header777, !llvm.loop !108

polly.loop_header785:                             ; preds = %polly.loop_exit767, %polly.loop_exit793
  %indvars.iv889 = phi i64 [ %indvars.iv.next890, %polly.loop_exit793 ], [ 0, %polly.loop_exit767 ]
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_exit793 ], [ 0, %polly.loop_exit767 ]
  %smin891 = call i64 @llvm.smin.i64(i64 %indvars.iv889, i64 -1168)
  %227 = shl nsw i64 %polly.indvar788, 5
  %228 = add nsw i64 %smin891, 1199
  br label %polly.loop_header791

polly.loop_exit793:                               ; preds = %polly.loop_exit799
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %indvars.iv.next890 = add nsw i64 %indvars.iv889, -32
  %exitcond894.not = icmp eq i64 %polly.indvar_next789, 38
  br i1 %exitcond894.not, label %init_array.exit, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_exit799, %polly.loop_header785
  %indvars.iv885 = phi i64 [ %indvars.iv.next886, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %229 = mul nsw i64 %polly.indvar794, -32
  %smin973 = call i64 @llvm.smin.i64(i64 %229, i64 -968)
  %230 = add nsw i64 %smin973, 1000
  %smin887 = call i64 @llvm.smin.i64(i64 %indvars.iv885, i64 -968)
  %231 = shl nsw i64 %polly.indvar794, 5
  %232 = add nsw i64 %smin887, 999
  br label %polly.loop_header797

polly.loop_exit799:                               ; preds = %polly.loop_exit805
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %indvars.iv.next886 = add nsw i64 %indvars.iv885, -32
  %exitcond893.not = icmp eq i64 %polly.indvar_next795, 32
  br i1 %exitcond893.not, label %polly.loop_exit793, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_exit805, %polly.loop_header791
  %polly.indvar800 = phi i64 [ 0, %polly.loop_header791 ], [ %polly.indvar_next801, %polly.loop_exit805 ]
  %233 = add nuw nsw i64 %polly.indvar800, %227
  %234 = trunc i64 %233 to i32
  %235 = mul nuw nsw i64 %233, 8000
  %min.iters.check974 = icmp eq i64 %230, 0
  br i1 %min.iters.check974, label %polly.loop_header803, label %vector.ph975

vector.ph975:                                     ; preds = %polly.loop_header797
  %broadcast.splatinsert984 = insertelement <4 x i64> poison, i64 %231, i32 0
  %broadcast.splat985 = shufflevector <4 x i64> %broadcast.splatinsert984, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert986 = insertelement <4 x i32> poison, i32 %234, i32 0
  %broadcast.splat987 = shufflevector <4 x i32> %broadcast.splatinsert986, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body972

vector.body972:                                   ; preds = %vector.body972, %vector.ph975
  %index978 = phi i64 [ 0, %vector.ph975 ], [ %index.next979, %vector.body972 ]
  %vec.ind982 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph975 ], [ %vec.ind.next983, %vector.body972 ]
  %236 = add nuw nsw <4 x i64> %vec.ind982, %broadcast.splat985
  %237 = trunc <4 x i64> %236 to <4 x i32>
  %238 = mul <4 x i32> %broadcast.splat987, %237
  %239 = add <4 x i32> %238, <i32 1, i32 1, i32 1, i32 1>
  %240 = urem <4 x i32> %239, <i32 1200, i32 1200, i32 1200, i32 1200>
  %241 = sitofp <4 x i32> %240 to <4 x double>
  %242 = fmul fast <4 x double> %241, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %243 = extractelement <4 x i64> %236, i32 0
  %244 = shl i64 %243, 3
  %245 = add nuw nsw i64 %244, %235
  %246 = getelementptr i8, i8* %call1, i64 %245
  %247 = bitcast i8* %246 to <4 x double>*
  store <4 x double> %242, <4 x double>* %247, align 8, !alias.scope !102, !noalias !109
  %index.next979 = add i64 %index978, 4
  %vec.ind.next983 = add <4 x i64> %vec.ind982, <i64 4, i64 4, i64 4, i64 4>
  %248 = icmp eq i64 %index.next979, %230
  br i1 %248, label %polly.loop_exit805, label %vector.body972, !llvm.loop !110

polly.loop_exit805:                               ; preds = %vector.body972, %polly.loop_header803
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond892.not = icmp eq i64 %polly.indvar800, %228
  br i1 %exitcond892.not, label %polly.loop_exit799, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_header797, %polly.loop_header803
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_header803 ], [ 0, %polly.loop_header797 ]
  %249 = add nuw nsw i64 %polly.indvar806, %231
  %250 = trunc i64 %249 to i32
  %251 = mul i32 %250, %234
  %252 = add i32 %251, 1
  %253 = urem i32 %252, 1200
  %p_conv.i = sitofp i32 %253 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %254 = shl i64 %249, 3
  %255 = add nuw nsw i64 %254, %235
  %scevgep810 = getelementptr i8, i8* %call1, i64 %255
  %scevgep810811 = bitcast i8* %scevgep810 to double*
  store double %p_div.i, double* %scevgep810811, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond888.not = icmp eq i64 %polly.indvar806, %232
  br i1 %exitcond888.not, label %polly.loop_exit805, label %polly.loop_header803, !llvm.loop !111
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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 256}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !57}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 50}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51, !52}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.loop.interchange.enable", i1 true}
!50 = !{!"llvm.loop.interchange.depth", i32 5}
!51 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!52 = !{!"llvm.loop.interchange.followup_interchanged", !53}
!53 = distinct !{!53, !12, !23, !48, !54, !55, !56}
!54 = !{!"llvm.data.pack.enable", i1 true}
!55 = !{!"llvm.data.pack.array", !21}
!56 = !{!"llvm.data.pack.allocate", !"malloc"}
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
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call2"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !71, !73}
!78 = !{!68, !72, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !82, !84}
!88 = !{!79, !83, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !92, !94}
!98 = !{!89, !93, !94}
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
