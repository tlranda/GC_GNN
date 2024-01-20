; ModuleID = 'syr2k_exhaustive/mmp_all_XL_7857.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_7857.c"
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
  %call764 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1625 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2626 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1625, %call2
  %polly.access.call2645 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2645, %call1
  %2 = or i1 %0, %1
  %polly.access.call665 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call665, %call2
  %4 = icmp ule i8* %polly.access.call2645, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call665, %call1
  %8 = icmp ule i8* %polly.access.call1625, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header738, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep923 = getelementptr i8, i8* %call2, i64 %12
  %scevgep922 = getelementptr i8, i8* %call2, i64 %11
  %scevgep921 = getelementptr i8, i8* %call1, i64 %12
  %scevgep920 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep920, %scevgep923
  %bound1 = icmp ult i8* %scevgep922, %scevgep921
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
  br i1 %exitcond18.not.i, label %vector.ph927, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph927:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert934 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat935 = shufflevector <4 x i64> %broadcast.splatinsert934, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body926

vector.body926:                                   ; preds = %vector.body926, %vector.ph927
  %index928 = phi i64 [ 0, %vector.ph927 ], [ %index.next929, %vector.body926 ]
  %vec.ind932 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph927 ], [ %vec.ind.next933, %vector.body926 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind932, %broadcast.splat935
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv7.i, i64 %index928
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next929 = add i64 %index928, 4
  %vec.ind.next933 = add <4 x i64> %vec.ind932, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next929, 1200
  br i1 %40, label %for.inc41.i, label %vector.body926, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body926
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph927, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit799
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start441, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check990 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check990, label %for.body3.i46.preheader1064, label %vector.ph991

vector.ph991:                                     ; preds = %for.body3.i46.preheader
  %n.vec993 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body989

vector.body989:                                   ; preds = %vector.body989, %vector.ph991
  %index994 = phi i64 [ 0, %vector.ph991 ], [ %index.next995, %vector.body989 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i, i64 %index994
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next995 = add i64 %index994, 4
  %46 = icmp eq i64 %index.next995, %n.vec993
  br i1 %46, label %middle.block987, label %vector.body989, !llvm.loop !18

middle.block987:                                  ; preds = %vector.body989
  %cmp.n997 = icmp eq i64 %indvars.iv21.i, %n.vec993
  br i1 %cmp.n997, label %for.inc6.i, label %for.body3.i46.preheader1064

for.body3.i46.preheader1064:                      ; preds = %for.body3.i46.preheader, %middle.block987
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec993, %middle.block987 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1064, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1064 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block987, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting442
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start268, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1013 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1013, label %for.body3.i60.preheader1063, label %vector.ph1014

vector.ph1014:                                    ; preds = %for.body3.i60.preheader
  %n.vec1016 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %vector.ph1014
  %index1017 = phi i64 [ 0, %vector.ph1014 ], [ %index.next1018, %vector.body1012 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i52, i64 %index1017
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1021 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1021, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1018 = add i64 %index1017, 4
  %57 = icmp eq i64 %index.next1018, %n.vec1016
  br i1 %57, label %middle.block1010, label %vector.body1012, !llvm.loop !55

middle.block1010:                                 ; preds = %vector.body1012
  %cmp.n1020 = icmp eq i64 %indvars.iv21.i52, %n.vec1016
  br i1 %cmp.n1020, label %for.inc6.i63, label %for.body3.i60.preheader1063

for.body3.i60.preheader1063:                      ; preds = %for.body3.i60.preheader, %middle.block1010
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1016, %middle.block1010 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1063, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1063 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1010, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting269
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1039 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1039, label %for.body3.i99.preheader1062, label %vector.ph1040

vector.ph1040:                                    ; preds = %for.body3.i99.preheader
  %n.vec1042 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.body1038, %vector.ph1040
  %index1043 = phi i64 [ 0, %vector.ph1040 ], [ %index.next1044, %vector.body1038 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i91, i64 %index1043
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1047 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1047, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1044 = add i64 %index1043, 4
  %68 = icmp eq i64 %index.next1044, %n.vec1042
  br i1 %68, label %middle.block1036, label %vector.body1038, !llvm.loop !57

middle.block1036:                                 ; preds = %vector.body1038
  %cmp.n1046 = icmp eq i64 %indvars.iv21.i91, %n.vec1042
  br i1 %cmp.n1046, label %for.inc6.i102, label %for.body3.i99.preheader1062

for.body3.i99.preheader1062:                      ; preds = %for.body3.i99.preheader, %middle.block1036
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1042, %middle.block1036 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1062, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1062 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1036, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !59
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !62

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %indvar1051 = phi i64 [ %indvar.next1052, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1051, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1053 = icmp ult i64 %88, 4
  br i1 %min.iters.check1053, label %polly.loop_header191.preheader, label %vector.ph1054

vector.ph1054:                                    ; preds = %polly.loop_header
  %n.vec1056 = and i64 %88, -4
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %vector.ph1054
  %index1057 = phi i64 [ 0, %vector.ph1054 ], [ %index.next1058, %vector.body1050 ]
  %90 = shl nuw nsw i64 %index1057, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1061 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1061, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1058 = add i64 %index1057, 4
  %95 = icmp eq i64 %index.next1058, %n.vec1056
  br i1 %95, label %middle.block1048, label %vector.body1050, !llvm.loop !69

middle.block1048:                                 ; preds = %vector.body1050
  %cmp.n1060 = icmp eq i64 %88, %n.vec1056
  br i1 %cmp.n1060, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1048
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1056, %middle.block1048 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1048
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1052 = add i64 %indvar1051, 1
  br i1 %exitcond839.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond838.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 1200
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next203, 1000
  br i1 %exitcond837.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 1000
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond836.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv832 = phi i64 [ %indvars.iv.next833, %polly.loop_exit223 ], [ 2, %polly.loop_exit207 ]
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = mul nsw i64 %polly.indvar218, -100
  %98 = mul nuw nsw i64 %polly.indvar218, 100
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next826 = add nuw nsw i64 %indvars.iv825, 100
  %indvars.iv.next833 = add nuw nsw i64 %indvars.iv832, 2
  %exitcond835.not = icmp eq i64 %polly.indvar_next219, 12
  br i1 %exitcond835.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit229 ], [ %indvars.iv825, %polly.loop_header215 ]
  %indvars.iv823 = phi i64 [ %indvars.iv.next824, %polly.loop_exit229 ], [ %indvars.iv, %polly.loop_header215 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_header215 ]
  %99 = mul nuw nsw i64 %polly.indvar224, 50
  %100 = add nsw i64 %99, %97
  %101 = icmp sgt i64 %100, 0
  %102 = select i1 %101, i64 %100, i64 0
  %polly.loop_guard = icmp slt i64 %102, 100
  br i1 %polly.loop_guard, label %polly.loop_header227.preheader, label %polly.loop_exit229

polly.loop_header227.preheader:                   ; preds = %polly.loop_header221
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv823, i64 0)
  %103 = add i64 %smax, %indvars.iv827
  %104 = sub nsw i64 %98, %99
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235, %polly.loop_header221
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next824 = add nsw i64 %indvars.iv823, 50
  %indvars.iv.next828 = add nsw i64 %indvars.iv827, -50
  %exitcond834.not = icmp eq i64 %polly.indvar_next225, %indvars.iv832
  br i1 %exitcond834.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit235
  %indvars.iv829 = phi i64 [ %103, %polly.loop_header227.preheader ], [ %indvars.iv.next830, %polly.loop_exit235 ]
  %polly.indvar230 = phi i64 [ %102, %polly.loop_header227.preheader ], [ %polly.indvar_next231, %polly.loop_exit235 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv829, i64 49)
  %105 = add nsw i64 %polly.indvar230, %104
  %polly.loop_guard243915 = icmp sgt i64 %105, -1
  %106 = add nuw nsw i64 %polly.indvar230, %98
  %107 = mul i64 %106, 8000
  %108 = mul i64 %106, 9600
  br i1 %polly.loop_guard243915, label %polly.loop_header233.us, label %polly.loop_exit235

polly.loop_header233.us:                          ; preds = %polly.loop_header227, %polly.loop_exit242.loopexit.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_exit242.loopexit.us ], [ 0, %polly.loop_header227 ]
  %109 = shl nuw nsw i64 %polly.indvar236.us, 3
  %scevgep247.us = getelementptr i8, i8* %call1, i64 %109
  %polly.access.mul.Packed_MemRef_call2251.us = mul nuw nsw i64 %polly.indvar236.us, 1200
  %polly.access.add.Packed_MemRef_call2252.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2251.us, %106
  %polly.access.Packed_MemRef_call2253.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252.us
  %_p_scalar_254.us = load double, double* %polly.access.Packed_MemRef_call2253.us, align 8
  %scevgep260.us = getelementptr i8, i8* %scevgep247.us, i64 %107
  %scevgep260261.us = bitcast i8* %scevgep260.us to double*
  %_p_scalar_262.us = load double, double* %scevgep260261.us, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header233.us
  %polly.indvar244.us = phi i64 [ 0, %polly.loop_header233.us ], [ %polly.indvar_next245.us, %polly.loop_header240.us ]
  %110 = add nuw nsw i64 %polly.indvar244.us, %99
  %111 = mul nuw nsw i64 %110, 8000
  %scevgep248.us = getelementptr i8, i8* %scevgep247.us, i64 %111
  %scevgep248249.us = bitcast i8* %scevgep248.us to double*
  %_p_scalar_250.us = load double, double* %scevgep248249.us, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us = fmul fast double %_p_scalar_254.us, %_p_scalar_250.us
  %polly.access.add.Packed_MemRef_call2256.us = add nuw nsw i64 %110, %polly.access.mul.Packed_MemRef_call2251.us
  %polly.access.Packed_MemRef_call2257.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256.us
  %_p_scalar_258.us = load double, double* %polly.access.Packed_MemRef_call2257.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_262.us, %_p_scalar_258.us
  %112 = shl i64 %110, 3
  %113 = add i64 %112, %108
  %scevgep263.us = getelementptr i8, i8* %call, i64 %113
  %scevgep263264.us = bitcast i8* %scevgep263.us to double*
  %_p_scalar_265.us = load double, double* %scevgep263264.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_265.us
  store double %p_add42.i118.us, double* %scevgep263264.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next245.us = add nuw nsw i64 %polly.indvar244.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar244.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next237.us, 1000
  br i1 %exitcond831.not, label %polly.loop_exit235, label %polly.loop_header233.us

polly.loop_exit235:                               ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %polly.loop_cond232 = icmp ult i64 %polly.indvar230, 99
  %indvars.iv.next830 = add i64 %indvars.iv829, 1
  br i1 %polly.loop_cond232, label %polly.loop_header227, label %polly.loop_exit229

polly.start268:                                   ; preds = %kernel_syr2k.exit
  %malloccall270 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header354

polly.exiting269:                                 ; preds = %polly.loop_exit394
  tail call void @free(i8* %malloccall270)
  br label %kernel_syr2k.exit90

polly.loop_header354:                             ; preds = %polly.loop_exit362, %polly.start268
  %indvar1025 = phi i64 [ %indvar.next1026, %polly.loop_exit362 ], [ 0, %polly.start268 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 1, %polly.start268 ]
  %114 = add i64 %indvar1025, 1
  %115 = mul nuw nsw i64 %polly.indvar357, 9600
  %scevgep366 = getelementptr i8, i8* %call, i64 %115
  %min.iters.check1027 = icmp ult i64 %114, 4
  br i1 %min.iters.check1027, label %polly.loop_header360.preheader, label %vector.ph1028

vector.ph1028:                                    ; preds = %polly.loop_header354
  %n.vec1030 = and i64 %114, -4
  br label %vector.body1024

vector.body1024:                                  ; preds = %vector.body1024, %vector.ph1028
  %index1031 = phi i64 [ 0, %vector.ph1028 ], [ %index.next1032, %vector.body1024 ]
  %116 = shl nuw nsw i64 %index1031, 3
  %117 = getelementptr i8, i8* %scevgep366, i64 %116
  %118 = bitcast i8* %117 to <4 x double>*
  %wide.load1035 = load <4 x double>, <4 x double>* %118, align 8, !alias.scope !74, !noalias !76
  %119 = fmul fast <4 x double> %wide.load1035, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %120 = bitcast i8* %117 to <4 x double>*
  store <4 x double> %119, <4 x double>* %120, align 8, !alias.scope !74, !noalias !76
  %index.next1032 = add i64 %index1031, 4
  %121 = icmp eq i64 %index.next1032, %n.vec1030
  br i1 %121, label %middle.block1022, label %vector.body1024, !llvm.loop !80

middle.block1022:                                 ; preds = %vector.body1024
  %cmp.n1034 = icmp eq i64 %114, %n.vec1030
  br i1 %cmp.n1034, label %polly.loop_exit362, label %polly.loop_header360.preheader

polly.loop_header360.preheader:                   ; preds = %polly.loop_header354, %middle.block1022
  %polly.indvar363.ph = phi i64 [ 0, %polly.loop_header354 ], [ %n.vec1030, %middle.block1022 ]
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_header360, %middle.block1022
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next358, 1200
  %indvar.next1026 = add i64 %indvar1025, 1
  br i1 %exitcond861.not, label %polly.loop_header370.preheader, label %polly.loop_header354

polly.loop_header370.preheader:                   ; preds = %polly.loop_exit362
  %Packed_MemRef_call2271 = bitcast i8* %malloccall270 to double*
  br label %polly.loop_header370

polly.loop_header360:                             ; preds = %polly.loop_header360.preheader, %polly.loop_header360
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_header360 ], [ %polly.indvar363.ph, %polly.loop_header360.preheader ]
  %122 = shl nuw nsw i64 %polly.indvar363, 3
  %scevgep367 = getelementptr i8, i8* %scevgep366, i64 %122
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_369, 1.200000e+00
  store double %p_mul.i57, double* %scevgep367368, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond860.not = icmp eq i64 %polly.indvar_next364, %polly.indvar357
  br i1 %exitcond860.not, label %polly.loop_exit362, label %polly.loop_header360, !llvm.loop !81

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit378
  %polly.indvar373 = phi i64 [ %polly.indvar_next374, %polly.loop_exit378 ], [ 0, %polly.loop_header370.preheader ]
  %polly.access.mul.Packed_MemRef_call2271 = mul nuw nsw i64 %polly.indvar373, 1200
  br label %polly.loop_header376

polly.loop_exit378:                               ; preds = %polly.loop_header376
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next374, 1000
  br i1 %exitcond859.not, label %polly.loop_header386, label %polly.loop_header370

polly.loop_header376:                             ; preds = %polly.loop_header376, %polly.loop_header370
  %polly.indvar379 = phi i64 [ 0, %polly.loop_header370 ], [ %polly.indvar_next380, %polly.loop_header376 ]
  %polly.access.mul.call2383 = mul nuw nsw i64 %polly.indvar379, 1000
  %polly.access.add.call2384 = add nuw nsw i64 %polly.access.mul.call2383, %polly.indvar373
  %polly.access.call2385 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2384
  %polly.access.call2385.load = load double, double* %polly.access.call2385, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2271 = add nuw nsw i64 %polly.indvar379, %polly.access.mul.Packed_MemRef_call2271
  %polly.access.Packed_MemRef_call2271 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271
  store double %polly.access.call2385.load, double* %polly.access.Packed_MemRef_call2271, align 8
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next380, 1200
  br i1 %exitcond858.not, label %polly.loop_exit378, label %polly.loop_header376

polly.loop_header386:                             ; preds = %polly.loop_exit378, %polly.loop_exit394
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit394 ], [ 2, %polly.loop_exit378 ]
  %indvars.iv845 = phi i64 [ %indvars.iv.next846, %polly.loop_exit394 ], [ 0, %polly.loop_exit378 ]
  %indvars.iv840 = phi i64 [ %indvars.iv.next841, %polly.loop_exit394 ], [ 0, %polly.loop_exit378 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 0, %polly.loop_exit378 ]
  %123 = mul nsw i64 %polly.indvar389, -100
  %124 = mul nuw nsw i64 %polly.indvar389, 100
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_exit401
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %indvars.iv.next841 = add nsw i64 %indvars.iv840, -100
  %indvars.iv.next846 = add nuw nsw i64 %indvars.iv845, 100
  %indvars.iv.next855 = add nuw nsw i64 %indvars.iv854, 2
  %exitcond857.not = icmp eq i64 %polly.indvar_next390, 12
  br i1 %exitcond857.not, label %polly.exiting269, label %polly.loop_header386

polly.loop_header392:                             ; preds = %polly.loop_exit401, %polly.loop_header386
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit401 ], [ %indvars.iv845, %polly.loop_header386 ]
  %indvars.iv842 = phi i64 [ %indvars.iv.next843, %polly.loop_exit401 ], [ %indvars.iv840, %polly.loop_header386 ]
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_exit401 ], [ 0, %polly.loop_header386 ]
  %125 = mul nuw nsw i64 %polly.indvar395, 50
  %126 = add nsw i64 %125, %123
  %127 = icmp sgt i64 %126, 0
  %128 = select i1 %127, i64 %126, i64 0
  %polly.loop_guard402 = icmp slt i64 %128, 100
  br i1 %polly.loop_guard402, label %polly.loop_header399.preheader, label %polly.loop_exit401

polly.loop_header399.preheader:                   ; preds = %polly.loop_header392
  %smax844 = call i64 @llvm.smax.i64(i64 %indvars.iv842, i64 0)
  %129 = add i64 %smax844, %indvars.iv847
  %130 = sub nsw i64 %124, %125
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit408, %polly.loop_header392
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %indvars.iv.next843 = add nsw i64 %indvars.iv842, 50
  %indvars.iv.next848 = add nsw i64 %indvars.iv847, -50
  %exitcond856.not = icmp eq i64 %polly.indvar_next396, %indvars.iv854
  br i1 %exitcond856.not, label %polly.loop_exit394, label %polly.loop_header392

polly.loop_header399:                             ; preds = %polly.loop_header399.preheader, %polly.loop_exit408
  %indvars.iv849 = phi i64 [ %129, %polly.loop_header399.preheader ], [ %indvars.iv.next850, %polly.loop_exit408 ]
  %polly.indvar403 = phi i64 [ %128, %polly.loop_header399.preheader ], [ %polly.indvar_next404, %polly.loop_exit408 ]
  %smin851 = call i64 @llvm.smin.i64(i64 %indvars.iv849, i64 49)
  %131 = add nsw i64 %polly.indvar403, %130
  %polly.loop_guard416916 = icmp sgt i64 %131, -1
  %132 = add nuw nsw i64 %polly.indvar403, %124
  %133 = mul i64 %132, 8000
  %134 = mul i64 %132, 9600
  br i1 %polly.loop_guard416916, label %polly.loop_header406.us, label %polly.loop_exit408

polly.loop_header406.us:                          ; preds = %polly.loop_header399, %polly.loop_exit415.loopexit.us
  %polly.indvar409.us = phi i64 [ %polly.indvar_next410.us, %polly.loop_exit415.loopexit.us ], [ 0, %polly.loop_header399 ]
  %135 = shl nuw nsw i64 %polly.indvar409.us, 3
  %scevgep420.us = getelementptr i8, i8* %call1, i64 %135
  %polly.access.mul.Packed_MemRef_call2271424.us = mul nuw nsw i64 %polly.indvar409.us, 1200
  %polly.access.add.Packed_MemRef_call2271425.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2271424.us, %132
  %polly.access.Packed_MemRef_call2271426.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271425.us
  %_p_scalar_427.us = load double, double* %polly.access.Packed_MemRef_call2271426.us, align 8
  %scevgep433.us = getelementptr i8, i8* %scevgep420.us, i64 %133
  %scevgep433434.us = bitcast i8* %scevgep433.us to double*
  %_p_scalar_435.us = load double, double* %scevgep433434.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header413.us

polly.loop_header413.us:                          ; preds = %polly.loop_header413.us, %polly.loop_header406.us
  %polly.indvar417.us = phi i64 [ 0, %polly.loop_header406.us ], [ %polly.indvar_next418.us, %polly.loop_header413.us ]
  %136 = add nuw nsw i64 %polly.indvar417.us, %125
  %137 = mul nuw nsw i64 %136, 8000
  %scevgep421.us = getelementptr i8, i8* %scevgep420.us, i64 %137
  %scevgep421422.us = bitcast i8* %scevgep421.us to double*
  %_p_scalar_423.us = load double, double* %scevgep421422.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_427.us, %_p_scalar_423.us
  %polly.access.add.Packed_MemRef_call2271429.us = add nuw nsw i64 %136, %polly.access.mul.Packed_MemRef_call2271424.us
  %polly.access.Packed_MemRef_call2271430.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271429.us
  %_p_scalar_431.us = load double, double* %polly.access.Packed_MemRef_call2271430.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_435.us, %_p_scalar_431.us
  %138 = shl i64 %136, 3
  %139 = add i64 %138, %134
  %scevgep436.us = getelementptr i8, i8* %call, i64 %139
  %scevgep436437.us = bitcast i8* %scevgep436.us to double*
  %_p_scalar_438.us = load double, double* %scevgep436437.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_438.us
  store double %p_add42.i79.us, double* %scevgep436437.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next418.us = add nuw nsw i64 %polly.indvar417.us, 1
  %exitcond852.not = icmp eq i64 %polly.indvar417.us, %smin851
  br i1 %exitcond852.not, label %polly.loop_exit415.loopexit.us, label %polly.loop_header413.us

polly.loop_exit415.loopexit.us:                   ; preds = %polly.loop_header413.us
  %polly.indvar_next410.us = add nuw nsw i64 %polly.indvar409.us, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next410.us, 1000
  br i1 %exitcond853.not, label %polly.loop_exit408, label %polly.loop_header406.us

polly.loop_exit408:                               ; preds = %polly.loop_exit415.loopexit.us, %polly.loop_header399
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %polly.loop_cond405 = icmp ult i64 %polly.indvar403, 99
  %indvars.iv.next850 = add i64 %indvars.iv849, 1
  br i1 %polly.loop_cond405, label %polly.loop_header399, label %polly.loop_exit401

polly.start441:                                   ; preds = %init_array.exit
  %malloccall443 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header527

polly.exiting442:                                 ; preds = %polly.loop_exit567
  tail call void @free(i8* %malloccall443)
  br label %kernel_syr2k.exit

polly.loop_header527:                             ; preds = %polly.loop_exit535, %polly.start441
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit535 ], [ 0, %polly.start441 ]
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_exit535 ], [ 1, %polly.start441 ]
  %140 = add i64 %indvar, 1
  %141 = mul nuw nsw i64 %polly.indvar530, 9600
  %scevgep539 = getelementptr i8, i8* %call, i64 %141
  %min.iters.check1001 = icmp ult i64 %140, 4
  br i1 %min.iters.check1001, label %polly.loop_header533.preheader, label %vector.ph1002

vector.ph1002:                                    ; preds = %polly.loop_header527
  %n.vec1004 = and i64 %140, -4
  br label %vector.body1000

vector.body1000:                                  ; preds = %vector.body1000, %vector.ph1002
  %index1005 = phi i64 [ 0, %vector.ph1002 ], [ %index.next1006, %vector.body1000 ]
  %142 = shl nuw nsw i64 %index1005, 3
  %143 = getelementptr i8, i8* %scevgep539, i64 %142
  %144 = bitcast i8* %143 to <4 x double>*
  %wide.load1009 = load <4 x double>, <4 x double>* %144, align 8, !alias.scope !84, !noalias !86
  %145 = fmul fast <4 x double> %wide.load1009, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %146 = bitcast i8* %143 to <4 x double>*
  store <4 x double> %145, <4 x double>* %146, align 8, !alias.scope !84, !noalias !86
  %index.next1006 = add i64 %index1005, 4
  %147 = icmp eq i64 %index.next1006, %n.vec1004
  br i1 %147, label %middle.block998, label %vector.body1000, !llvm.loop !90

middle.block998:                                  ; preds = %vector.body1000
  %cmp.n1008 = icmp eq i64 %140, %n.vec1004
  br i1 %cmp.n1008, label %polly.loop_exit535, label %polly.loop_header533.preheader

polly.loop_header533.preheader:                   ; preds = %polly.loop_header527, %middle.block998
  %polly.indvar536.ph = phi i64 [ 0, %polly.loop_header527 ], [ %n.vec1004, %middle.block998 ]
  br label %polly.loop_header533

polly.loop_exit535:                               ; preds = %polly.loop_header533, %middle.block998
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next531, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond883.not, label %polly.loop_header543.preheader, label %polly.loop_header527

polly.loop_header543.preheader:                   ; preds = %polly.loop_exit535
  %Packed_MemRef_call2444 = bitcast i8* %malloccall443 to double*
  br label %polly.loop_header543

polly.loop_header533:                             ; preds = %polly.loop_header533.preheader, %polly.loop_header533
  %polly.indvar536 = phi i64 [ %polly.indvar_next537, %polly.loop_header533 ], [ %polly.indvar536.ph, %polly.loop_header533.preheader ]
  %148 = shl nuw nsw i64 %polly.indvar536, 3
  %scevgep540 = getelementptr i8, i8* %scevgep539, i64 %148
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_542, 1.200000e+00
  store double %p_mul.i, double* %scevgep540541, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next537, %polly.indvar530
  br i1 %exitcond882.not, label %polly.loop_exit535, label %polly.loop_header533, !llvm.loop !91

polly.loop_header543:                             ; preds = %polly.loop_header543.preheader, %polly.loop_exit551
  %polly.indvar546 = phi i64 [ %polly.indvar_next547, %polly.loop_exit551 ], [ 0, %polly.loop_header543.preheader ]
  %polly.access.mul.Packed_MemRef_call2444 = mul nuw nsw i64 %polly.indvar546, 1200
  br label %polly.loop_header549

polly.loop_exit551:                               ; preds = %polly.loop_header549
  %polly.indvar_next547 = add nuw nsw i64 %polly.indvar546, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next547, 1000
  br i1 %exitcond881.not, label %polly.loop_header559, label %polly.loop_header543

polly.loop_header549:                             ; preds = %polly.loop_header549, %polly.loop_header543
  %polly.indvar552 = phi i64 [ 0, %polly.loop_header543 ], [ %polly.indvar_next553, %polly.loop_header549 ]
  %polly.access.mul.call2556 = mul nuw nsw i64 %polly.indvar552, 1000
  %polly.access.add.call2557 = add nuw nsw i64 %polly.access.mul.call2556, %polly.indvar546
  %polly.access.call2558 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2557
  %polly.access.call2558.load = load double, double* %polly.access.call2558, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2444 = add nuw nsw i64 %polly.indvar552, %polly.access.mul.Packed_MemRef_call2444
  %polly.access.Packed_MemRef_call2444 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444
  store double %polly.access.call2558.load, double* %polly.access.Packed_MemRef_call2444, align 8
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next553, 1200
  br i1 %exitcond880.not, label %polly.loop_exit551, label %polly.loop_header549

polly.loop_header559:                             ; preds = %polly.loop_exit551, %polly.loop_exit567
  %indvars.iv876 = phi i64 [ %indvars.iv.next877, %polly.loop_exit567 ], [ 2, %polly.loop_exit551 ]
  %indvars.iv867 = phi i64 [ %indvars.iv.next868, %polly.loop_exit567 ], [ 0, %polly.loop_exit551 ]
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %polly.loop_exit567 ], [ 0, %polly.loop_exit551 ]
  %polly.indvar562 = phi i64 [ %polly.indvar_next563, %polly.loop_exit567 ], [ 0, %polly.loop_exit551 ]
  %149 = mul nsw i64 %polly.indvar562, -100
  %150 = mul nuw nsw i64 %polly.indvar562, 100
  br label %polly.loop_header565

polly.loop_exit567:                               ; preds = %polly.loop_exit574
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, -100
  %indvars.iv.next868 = add nuw nsw i64 %indvars.iv867, 100
  %indvars.iv.next877 = add nuw nsw i64 %indvars.iv876, 2
  %exitcond879.not = icmp eq i64 %polly.indvar_next563, 12
  br i1 %exitcond879.not, label %polly.exiting442, label %polly.loop_header559

polly.loop_header565:                             ; preds = %polly.loop_exit574, %polly.loop_header559
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit574 ], [ %indvars.iv867, %polly.loop_header559 ]
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %polly.loop_exit574 ], [ %indvars.iv862, %polly.loop_header559 ]
  %polly.indvar568 = phi i64 [ %polly.indvar_next569, %polly.loop_exit574 ], [ 0, %polly.loop_header559 ]
  %151 = mul nuw nsw i64 %polly.indvar568, 50
  %152 = add nsw i64 %151, %149
  %153 = icmp sgt i64 %152, 0
  %154 = select i1 %153, i64 %152, i64 0
  %polly.loop_guard575 = icmp slt i64 %154, 100
  br i1 %polly.loop_guard575, label %polly.loop_header572.preheader, label %polly.loop_exit574

polly.loop_header572.preheader:                   ; preds = %polly.loop_header565
  %smax866 = call i64 @llvm.smax.i64(i64 %indvars.iv864, i64 0)
  %155 = add i64 %smax866, %indvars.iv869
  %156 = sub nsw i64 %150, %151
  br label %polly.loop_header572

polly.loop_exit574:                               ; preds = %polly.loop_exit581, %polly.loop_header565
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %indvars.iv.next865 = add nsw i64 %indvars.iv864, 50
  %indvars.iv.next870 = add nsw i64 %indvars.iv869, -50
  %exitcond878.not = icmp eq i64 %polly.indvar_next569, %indvars.iv876
  br i1 %exitcond878.not, label %polly.loop_exit567, label %polly.loop_header565

polly.loop_header572:                             ; preds = %polly.loop_header572.preheader, %polly.loop_exit581
  %indvars.iv871 = phi i64 [ %155, %polly.loop_header572.preheader ], [ %indvars.iv.next872, %polly.loop_exit581 ]
  %polly.indvar576 = phi i64 [ %154, %polly.loop_header572.preheader ], [ %polly.indvar_next577, %polly.loop_exit581 ]
  %smin873 = call i64 @llvm.smin.i64(i64 %indvars.iv871, i64 49)
  %157 = add nsw i64 %polly.indvar576, %156
  %polly.loop_guard589917 = icmp sgt i64 %157, -1
  %158 = add nuw nsw i64 %polly.indvar576, %150
  %159 = mul i64 %158, 8000
  %160 = mul i64 %158, 9600
  br i1 %polly.loop_guard589917, label %polly.loop_header579.us, label %polly.loop_exit581

polly.loop_header579.us:                          ; preds = %polly.loop_header572, %polly.loop_exit588.loopexit.us
  %polly.indvar582.us = phi i64 [ %polly.indvar_next583.us, %polly.loop_exit588.loopexit.us ], [ 0, %polly.loop_header572 ]
  %161 = shl nuw nsw i64 %polly.indvar582.us, 3
  %scevgep593.us = getelementptr i8, i8* %call1, i64 %161
  %polly.access.mul.Packed_MemRef_call2444597.us = mul nuw nsw i64 %polly.indvar582.us, 1200
  %polly.access.add.Packed_MemRef_call2444598.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2444597.us, %158
  %polly.access.Packed_MemRef_call2444599.us = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444598.us
  %_p_scalar_600.us = load double, double* %polly.access.Packed_MemRef_call2444599.us, align 8
  %scevgep606.us = getelementptr i8, i8* %scevgep593.us, i64 %159
  %scevgep606607.us = bitcast i8* %scevgep606.us to double*
  %_p_scalar_608.us = load double, double* %scevgep606607.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header586.us

polly.loop_header586.us:                          ; preds = %polly.loop_header586.us, %polly.loop_header579.us
  %polly.indvar590.us = phi i64 [ 0, %polly.loop_header579.us ], [ %polly.indvar_next591.us, %polly.loop_header586.us ]
  %162 = add nuw nsw i64 %polly.indvar590.us, %151
  %163 = mul nuw nsw i64 %162, 8000
  %scevgep594.us = getelementptr i8, i8* %scevgep593.us, i64 %163
  %scevgep594595.us = bitcast i8* %scevgep594.us to double*
  %_p_scalar_596.us = load double, double* %scevgep594595.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_600.us, %_p_scalar_596.us
  %polly.access.add.Packed_MemRef_call2444602.us = add nuw nsw i64 %162, %polly.access.mul.Packed_MemRef_call2444597.us
  %polly.access.Packed_MemRef_call2444603.us = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444602.us
  %_p_scalar_604.us = load double, double* %polly.access.Packed_MemRef_call2444603.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_608.us, %_p_scalar_604.us
  %164 = shl i64 %162, 3
  %165 = add i64 %164, %160
  %scevgep609.us = getelementptr i8, i8* %call, i64 %165
  %scevgep609610.us = bitcast i8* %scevgep609.us to double*
  %_p_scalar_611.us = load double, double* %scevgep609610.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_611.us
  store double %p_add42.i.us, double* %scevgep609610.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next591.us = add nuw nsw i64 %polly.indvar590.us, 1
  %exitcond874.not = icmp eq i64 %polly.indvar590.us, %smin873
  br i1 %exitcond874.not, label %polly.loop_exit588.loopexit.us, label %polly.loop_header586.us

polly.loop_exit588.loopexit.us:                   ; preds = %polly.loop_header586.us
  %polly.indvar_next583.us = add nuw nsw i64 %polly.indvar582.us, 1
  %exitcond875.not = icmp eq i64 %polly.indvar_next583.us, 1000
  br i1 %exitcond875.not, label %polly.loop_exit581, label %polly.loop_header579.us

polly.loop_exit581:                               ; preds = %polly.loop_exit588.loopexit.us, %polly.loop_header572
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %polly.loop_cond578 = icmp ult i64 %polly.indvar576, 99
  %indvars.iv.next872 = add i64 %indvars.iv871, 1
  br i1 %polly.loop_cond578, label %polly.loop_header572, label %polly.loop_exit574

polly.loop_header738:                             ; preds = %entry, %polly.loop_exit746
  %indvars.iv908 = phi i64 [ %indvars.iv.next909, %polly.loop_exit746 ], [ 0, %entry ]
  %polly.indvar741 = phi i64 [ %polly.indvar_next742, %polly.loop_exit746 ], [ 0, %entry ]
  %smin910 = call i64 @llvm.smin.i64(i64 %indvars.iv908, i64 -1168)
  %166 = shl nsw i64 %polly.indvar741, 5
  %167 = add nsw i64 %smin910, 1199
  br label %polly.loop_header744

polly.loop_exit746:                               ; preds = %polly.loop_exit752
  %polly.indvar_next742 = add nuw nsw i64 %polly.indvar741, 1
  %indvars.iv.next909 = add nsw i64 %indvars.iv908, -32
  %exitcond913.not = icmp eq i64 %polly.indvar_next742, 38
  br i1 %exitcond913.not, label %polly.loop_header765, label %polly.loop_header738

polly.loop_header744:                             ; preds = %polly.loop_exit752, %polly.loop_header738
  %indvars.iv904 = phi i64 [ %indvars.iv.next905, %polly.loop_exit752 ], [ 0, %polly.loop_header738 ]
  %polly.indvar747 = phi i64 [ %polly.indvar_next748, %polly.loop_exit752 ], [ 0, %polly.loop_header738 ]
  %168 = mul nsw i64 %polly.indvar747, -32
  %smin939 = call i64 @llvm.smin.i64(i64 %168, i64 -1168)
  %169 = add nsw i64 %smin939, 1200
  %smin906 = call i64 @llvm.smin.i64(i64 %indvars.iv904, i64 -1168)
  %170 = shl nsw i64 %polly.indvar747, 5
  %171 = add nsw i64 %smin906, 1199
  br label %polly.loop_header750

polly.loop_exit752:                               ; preds = %polly.loop_exit758
  %polly.indvar_next748 = add nuw nsw i64 %polly.indvar747, 1
  %indvars.iv.next905 = add nsw i64 %indvars.iv904, -32
  %exitcond912.not = icmp eq i64 %polly.indvar_next748, 38
  br i1 %exitcond912.not, label %polly.loop_exit746, label %polly.loop_header744

polly.loop_header750:                             ; preds = %polly.loop_exit758, %polly.loop_header744
  %polly.indvar753 = phi i64 [ 0, %polly.loop_header744 ], [ %polly.indvar_next754, %polly.loop_exit758 ]
  %172 = add nuw nsw i64 %polly.indvar753, %166
  %173 = trunc i64 %172 to i32
  %174 = mul nuw nsw i64 %172, 9600
  %min.iters.check = icmp eq i64 %169, 0
  br i1 %min.iters.check, label %polly.loop_header756, label %vector.ph940

vector.ph940:                                     ; preds = %polly.loop_header750
  %broadcast.splatinsert947 = insertelement <4 x i64> poison, i64 %170, i32 0
  %broadcast.splat948 = shufflevector <4 x i64> %broadcast.splatinsert947, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert949 = insertelement <4 x i32> poison, i32 %173, i32 0
  %broadcast.splat950 = shufflevector <4 x i32> %broadcast.splatinsert949, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body938

vector.body938:                                   ; preds = %vector.body938, %vector.ph940
  %index941 = phi i64 [ 0, %vector.ph940 ], [ %index.next942, %vector.body938 ]
  %vec.ind945 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph940 ], [ %vec.ind.next946, %vector.body938 ]
  %175 = add nuw nsw <4 x i64> %vec.ind945, %broadcast.splat948
  %176 = trunc <4 x i64> %175 to <4 x i32>
  %177 = mul <4 x i32> %broadcast.splat950, %176
  %178 = add <4 x i32> %177, <i32 3, i32 3, i32 3, i32 3>
  %179 = urem <4 x i32> %178, <i32 1200, i32 1200, i32 1200, i32 1200>
  %180 = sitofp <4 x i32> %179 to <4 x double>
  %181 = fmul fast <4 x double> %180, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %182 = extractelement <4 x i64> %175, i32 0
  %183 = shl i64 %182, 3
  %184 = add nuw nsw i64 %183, %174
  %185 = getelementptr i8, i8* %call, i64 %184
  %186 = bitcast i8* %185 to <4 x double>*
  store <4 x double> %181, <4 x double>* %186, align 8, !alias.scope !94, !noalias !96
  %index.next942 = add i64 %index941, 4
  %vec.ind.next946 = add <4 x i64> %vec.ind945, <i64 4, i64 4, i64 4, i64 4>
  %187 = icmp eq i64 %index.next942, %169
  br i1 %187, label %polly.loop_exit758, label %vector.body938, !llvm.loop !99

polly.loop_exit758:                               ; preds = %vector.body938, %polly.loop_header756
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %exitcond911.not = icmp eq i64 %polly.indvar753, %167
  br i1 %exitcond911.not, label %polly.loop_exit752, label %polly.loop_header750

polly.loop_header756:                             ; preds = %polly.loop_header750, %polly.loop_header756
  %polly.indvar759 = phi i64 [ %polly.indvar_next760, %polly.loop_header756 ], [ 0, %polly.loop_header750 ]
  %188 = add nuw nsw i64 %polly.indvar759, %170
  %189 = trunc i64 %188 to i32
  %190 = mul i32 %189, %173
  %191 = add i32 %190, 3
  %192 = urem i32 %191, 1200
  %p_conv31.i = sitofp i32 %192 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %193 = shl i64 %188, 3
  %194 = add nuw nsw i64 %193, %174
  %scevgep762 = getelementptr i8, i8* %call, i64 %194
  %scevgep762763 = bitcast i8* %scevgep762 to double*
  store double %p_div33.i, double* %scevgep762763, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next760 = add nuw nsw i64 %polly.indvar759, 1
  %exitcond907.not = icmp eq i64 %polly.indvar759, %171
  br i1 %exitcond907.not, label %polly.loop_exit758, label %polly.loop_header756, !llvm.loop !100

polly.loop_header765:                             ; preds = %polly.loop_exit746, %polly.loop_exit773
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %polly.loop_exit773 ], [ 0, %polly.loop_exit746 ]
  %polly.indvar768 = phi i64 [ %polly.indvar_next769, %polly.loop_exit773 ], [ 0, %polly.loop_exit746 ]
  %smin900 = call i64 @llvm.smin.i64(i64 %indvars.iv898, i64 -1168)
  %195 = shl nsw i64 %polly.indvar768, 5
  %196 = add nsw i64 %smin900, 1199
  br label %polly.loop_header771

polly.loop_exit773:                               ; preds = %polly.loop_exit779
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %indvars.iv.next899 = add nsw i64 %indvars.iv898, -32
  %exitcond903.not = icmp eq i64 %polly.indvar_next769, 38
  br i1 %exitcond903.not, label %polly.loop_header791, label %polly.loop_header765

polly.loop_header771:                             ; preds = %polly.loop_exit779, %polly.loop_header765
  %indvars.iv894 = phi i64 [ %indvars.iv.next895, %polly.loop_exit779 ], [ 0, %polly.loop_header765 ]
  %polly.indvar774 = phi i64 [ %polly.indvar_next775, %polly.loop_exit779 ], [ 0, %polly.loop_header765 ]
  %197 = mul nsw i64 %polly.indvar774, -32
  %smin954 = call i64 @llvm.smin.i64(i64 %197, i64 -968)
  %198 = add nsw i64 %smin954, 1000
  %smin896 = call i64 @llvm.smin.i64(i64 %indvars.iv894, i64 -968)
  %199 = shl nsw i64 %polly.indvar774, 5
  %200 = add nsw i64 %smin896, 999
  br label %polly.loop_header777

polly.loop_exit779:                               ; preds = %polly.loop_exit785
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %indvars.iv.next895 = add nsw i64 %indvars.iv894, -32
  %exitcond902.not = icmp eq i64 %polly.indvar_next775, 32
  br i1 %exitcond902.not, label %polly.loop_exit773, label %polly.loop_header771

polly.loop_header777:                             ; preds = %polly.loop_exit785, %polly.loop_header771
  %polly.indvar780 = phi i64 [ 0, %polly.loop_header771 ], [ %polly.indvar_next781, %polly.loop_exit785 ]
  %201 = add nuw nsw i64 %polly.indvar780, %195
  %202 = trunc i64 %201 to i32
  %203 = mul nuw nsw i64 %201, 8000
  %min.iters.check955 = icmp eq i64 %198, 0
  br i1 %min.iters.check955, label %polly.loop_header783, label %vector.ph956

vector.ph956:                                     ; preds = %polly.loop_header777
  %broadcast.splatinsert965 = insertelement <4 x i64> poison, i64 %199, i32 0
  %broadcast.splat966 = shufflevector <4 x i64> %broadcast.splatinsert965, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert967 = insertelement <4 x i32> poison, i32 %202, i32 0
  %broadcast.splat968 = shufflevector <4 x i32> %broadcast.splatinsert967, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body953

vector.body953:                                   ; preds = %vector.body953, %vector.ph956
  %index959 = phi i64 [ 0, %vector.ph956 ], [ %index.next960, %vector.body953 ]
  %vec.ind963 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph956 ], [ %vec.ind.next964, %vector.body953 ]
  %204 = add nuw nsw <4 x i64> %vec.ind963, %broadcast.splat966
  %205 = trunc <4 x i64> %204 to <4 x i32>
  %206 = mul <4 x i32> %broadcast.splat968, %205
  %207 = add <4 x i32> %206, <i32 2, i32 2, i32 2, i32 2>
  %208 = urem <4 x i32> %207, <i32 1000, i32 1000, i32 1000, i32 1000>
  %209 = sitofp <4 x i32> %208 to <4 x double>
  %210 = fmul fast <4 x double> %209, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %211 = extractelement <4 x i64> %204, i32 0
  %212 = shl i64 %211, 3
  %213 = add nuw nsw i64 %212, %203
  %214 = getelementptr i8, i8* %call2, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %210, <4 x double>* %215, align 8, !alias.scope !98, !noalias !101
  %index.next960 = add i64 %index959, 4
  %vec.ind.next964 = add <4 x i64> %vec.ind963, <i64 4, i64 4, i64 4, i64 4>
  %216 = icmp eq i64 %index.next960, %198
  br i1 %216, label %polly.loop_exit785, label %vector.body953, !llvm.loop !102

polly.loop_exit785:                               ; preds = %vector.body953, %polly.loop_header783
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %exitcond901.not = icmp eq i64 %polly.indvar780, %196
  br i1 %exitcond901.not, label %polly.loop_exit779, label %polly.loop_header777

polly.loop_header783:                             ; preds = %polly.loop_header777, %polly.loop_header783
  %polly.indvar786 = phi i64 [ %polly.indvar_next787, %polly.loop_header783 ], [ 0, %polly.loop_header777 ]
  %217 = add nuw nsw i64 %polly.indvar786, %199
  %218 = trunc i64 %217 to i32
  %219 = mul i32 %218, %202
  %220 = add i32 %219, 2
  %221 = urem i32 %220, 1000
  %p_conv10.i = sitofp i32 %221 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %222 = shl i64 %217, 3
  %223 = add nuw nsw i64 %222, %203
  %scevgep789 = getelementptr i8, i8* %call2, i64 %223
  %scevgep789790 = bitcast i8* %scevgep789 to double*
  store double %p_div12.i, double* %scevgep789790, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %exitcond897.not = icmp eq i64 %polly.indvar786, %200
  br i1 %exitcond897.not, label %polly.loop_exit785, label %polly.loop_header783, !llvm.loop !103

polly.loop_header791:                             ; preds = %polly.loop_exit773, %polly.loop_exit799
  %indvars.iv888 = phi i64 [ %indvars.iv.next889, %polly.loop_exit799 ], [ 0, %polly.loop_exit773 ]
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %polly.loop_exit773 ]
  %smin890 = call i64 @llvm.smin.i64(i64 %indvars.iv888, i64 -1168)
  %224 = shl nsw i64 %polly.indvar794, 5
  %225 = add nsw i64 %smin890, 1199
  br label %polly.loop_header797

polly.loop_exit799:                               ; preds = %polly.loop_exit805
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %indvars.iv.next889 = add nsw i64 %indvars.iv888, -32
  %exitcond893.not = icmp eq i64 %polly.indvar_next795, 38
  br i1 %exitcond893.not, label %init_array.exit, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_exit805, %polly.loop_header791
  %indvars.iv884 = phi i64 [ %indvars.iv.next885, %polly.loop_exit805 ], [ 0, %polly.loop_header791 ]
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_exit805 ], [ 0, %polly.loop_header791 ]
  %226 = mul nsw i64 %polly.indvar800, -32
  %smin972 = call i64 @llvm.smin.i64(i64 %226, i64 -968)
  %227 = add nsw i64 %smin972, 1000
  %smin886 = call i64 @llvm.smin.i64(i64 %indvars.iv884, i64 -968)
  %228 = shl nsw i64 %polly.indvar800, 5
  %229 = add nsw i64 %smin886, 999
  br label %polly.loop_header803

polly.loop_exit805:                               ; preds = %polly.loop_exit811
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %indvars.iv.next885 = add nsw i64 %indvars.iv884, -32
  %exitcond892.not = icmp eq i64 %polly.indvar_next801, 32
  br i1 %exitcond892.not, label %polly.loop_exit799, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_exit811, %polly.loop_header797
  %polly.indvar806 = phi i64 [ 0, %polly.loop_header797 ], [ %polly.indvar_next807, %polly.loop_exit811 ]
  %230 = add nuw nsw i64 %polly.indvar806, %224
  %231 = trunc i64 %230 to i32
  %232 = mul nuw nsw i64 %230, 8000
  %min.iters.check973 = icmp eq i64 %227, 0
  br i1 %min.iters.check973, label %polly.loop_header809, label %vector.ph974

vector.ph974:                                     ; preds = %polly.loop_header803
  %broadcast.splatinsert983 = insertelement <4 x i64> poison, i64 %228, i32 0
  %broadcast.splat984 = shufflevector <4 x i64> %broadcast.splatinsert983, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert985 = insertelement <4 x i32> poison, i32 %231, i32 0
  %broadcast.splat986 = shufflevector <4 x i32> %broadcast.splatinsert985, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body971

vector.body971:                                   ; preds = %vector.body971, %vector.ph974
  %index977 = phi i64 [ 0, %vector.ph974 ], [ %index.next978, %vector.body971 ]
  %vec.ind981 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph974 ], [ %vec.ind.next982, %vector.body971 ]
  %233 = add nuw nsw <4 x i64> %vec.ind981, %broadcast.splat984
  %234 = trunc <4 x i64> %233 to <4 x i32>
  %235 = mul <4 x i32> %broadcast.splat986, %234
  %236 = add <4 x i32> %235, <i32 1, i32 1, i32 1, i32 1>
  %237 = urem <4 x i32> %236, <i32 1200, i32 1200, i32 1200, i32 1200>
  %238 = sitofp <4 x i32> %237 to <4 x double>
  %239 = fmul fast <4 x double> %238, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %240 = extractelement <4 x i64> %233, i32 0
  %241 = shl i64 %240, 3
  %242 = add nuw nsw i64 %241, %232
  %243 = getelementptr i8, i8* %call1, i64 %242
  %244 = bitcast i8* %243 to <4 x double>*
  store <4 x double> %239, <4 x double>* %244, align 8, !alias.scope !97, !noalias !104
  %index.next978 = add i64 %index977, 4
  %vec.ind.next982 = add <4 x i64> %vec.ind981, <i64 4, i64 4, i64 4, i64 4>
  %245 = icmp eq i64 %index.next978, %227
  br i1 %245, label %polly.loop_exit811, label %vector.body971, !llvm.loop !105

polly.loop_exit811:                               ; preds = %vector.body971, %polly.loop_header809
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond891.not = icmp eq i64 %polly.indvar806, %225
  br i1 %exitcond891.not, label %polly.loop_exit805, label %polly.loop_header803

polly.loop_header809:                             ; preds = %polly.loop_header803, %polly.loop_header809
  %polly.indvar812 = phi i64 [ %polly.indvar_next813, %polly.loop_header809 ], [ 0, %polly.loop_header803 ]
  %246 = add nuw nsw i64 %polly.indvar812, %228
  %247 = trunc i64 %246 to i32
  %248 = mul i32 %247, %231
  %249 = add i32 %248, 1
  %250 = urem i32 %249, 1200
  %p_conv.i = sitofp i32 %250 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %251 = shl i64 %246, 3
  %252 = add nuw nsw i64 %251, %232
  %scevgep816 = getelementptr i8, i8* %call1, i64 %252
  %scevgep816817 = bitcast i8* %scevgep816 to double*
  store double %p_div.i, double* %scevgep816817, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %exitcond887.not = icmp eq i64 %polly.indvar812, %229
  br i1 %exitcond887.not, label %polly.loop_exit811, label %polly.loop_header809, !llvm.loop !106
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
!25 = !{!"llvm.loop.tile.size", i32 50}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !52}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 100}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.data.pack.enable", i1 true}
!50 = !{!"llvm.data.pack.array", !21}
!51 = !{!"llvm.data.pack.allocate", !"malloc"}
!52 = !{!"llvm.loop.tile.followup_tile", !53}
!53 = distinct !{!53, !12, !54}
!54 = !{!"llvm.loop.id", !"i2"}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !4, i64 0}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !64, !"polly.alias.scope.MemRef_call"}
!64 = distinct !{!64, !"polly.alias.scope.domain"}
!65 = !{!66, !67, !68}
!66 = distinct !{!66, !64, !"polly.alias.scope.MemRef_call1"}
!67 = distinct !{!67, !64, !"polly.alias.scope.MemRef_call2"}
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call2"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !66, !68}
!73 = !{!63, !67, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call2"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !77, !79}
!83 = !{!74, !78, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call2"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !87, !89}
!93 = !{!84, !88, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !71, !13}
!101 = !{!97, !94}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !71, !13}
!104 = !{!98, !94}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !71, !13}
