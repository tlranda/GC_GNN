; ModuleID = 'syr2k_exhaustive/mmp_all_SM_5889.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_5889.c"
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
  %call770 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1631 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2632 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1631, %call2
  %polly.access.call2651 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2651, %call1
  %2 = or i1 %0, %1
  %polly.access.call671 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call671, %call2
  %4 = icmp ule i8* %polly.access.call2651, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call671, %call1
  %8 = icmp ule i8* %polly.access.call1631, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header744, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep960 = getelementptr i8, i8* %call2, i64 %12
  %scevgep959 = getelementptr i8, i8* %call2, i64 %11
  %scevgep958 = getelementptr i8, i8* %call1, i64 %12
  %scevgep957 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep957, %scevgep960
  %bound1 = icmp ult i8* %scevgep959, %scevgep958
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
  br i1 %exitcond18.not.i, label %vector.ph964, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph964:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert971 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat972 = shufflevector <4 x i64> %broadcast.splatinsert971, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body963

vector.body963:                                   ; preds = %vector.body963, %vector.ph964
  %index965 = phi i64 [ 0, %vector.ph964 ], [ %index.next966, %vector.body963 ]
  %vec.ind969 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph964 ], [ %vec.ind.next970, %vector.body963 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind969, %broadcast.splat972
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv7.i, i64 %index965
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next966 = add i64 %index965, 4
  %vec.ind.next970 = add <4 x i64> %vec.ind969, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next966, 1200
  br i1 %40, label %for.inc41.i, label %vector.body963, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body963
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph964, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit805
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start445, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1026 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1026, label %for.body3.i46.preheader1100, label %vector.ph1027

vector.ph1027:                                    ; preds = %for.body3.i46.preheader
  %n.vec1029 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1025

vector.body1025:                                  ; preds = %vector.body1025, %vector.ph1027
  %index1030 = phi i64 [ 0, %vector.ph1027 ], [ %index.next1031, %vector.body1025 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i, i64 %index1030
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1031 = add i64 %index1030, 4
  %46 = icmp eq i64 %index.next1031, %n.vec1029
  br i1 %46, label %middle.block1023, label %vector.body1025, !llvm.loop !18

middle.block1023:                                 ; preds = %vector.body1025
  %cmp.n1033 = icmp eq i64 %indvars.iv21.i, %n.vec1029
  br i1 %cmp.n1033, label %for.inc6.i, label %for.body3.i46.preheader1100

for.body3.i46.preheader1100:                      ; preds = %for.body3.i46.preheader, %middle.block1023
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1029, %middle.block1023 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1100, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1100 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1023, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting446
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start270, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1049 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1049, label %for.body3.i60.preheader1099, label %vector.ph1050

vector.ph1050:                                    ; preds = %for.body3.i60.preheader
  %n.vec1052 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1048

vector.body1048:                                  ; preds = %vector.body1048, %vector.ph1050
  %index1053 = phi i64 [ 0, %vector.ph1050 ], [ %index.next1054, %vector.body1048 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i52, i64 %index1053
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1057 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1057, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1054 = add i64 %index1053, 4
  %57 = icmp eq i64 %index.next1054, %n.vec1052
  br i1 %57, label %middle.block1046, label %vector.body1048, !llvm.loop !59

middle.block1046:                                 ; preds = %vector.body1048
  %cmp.n1056 = icmp eq i64 %indvars.iv21.i52, %n.vec1052
  br i1 %cmp.n1056, label %for.inc6.i63, label %for.body3.i60.preheader1099

for.body3.i60.preheader1099:                      ; preds = %for.body3.i60.preheader, %middle.block1046
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1052, %middle.block1046 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1099, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1099 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1046, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting271
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1075 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1075, label %for.body3.i99.preheader1098, label %vector.ph1076

vector.ph1076:                                    ; preds = %for.body3.i99.preheader
  %n.vec1078 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %vector.ph1076
  %index1079 = phi i64 [ 0, %vector.ph1076 ], [ %index.next1080, %vector.body1074 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i91, i64 %index1079
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1083 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1083, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1080 = add i64 %index1079, 4
  %68 = icmp eq i64 %index.next1080, %n.vec1078
  br i1 %68, label %middle.block1072, label %vector.body1074, !llvm.loop !61

middle.block1072:                                 ; preds = %vector.body1074
  %cmp.n1082 = icmp eq i64 %indvars.iv21.i91, %n.vec1078
  br i1 %cmp.n1082, label %for.inc6.i102, label %for.body3.i99.preheader1098

for.body3.i99.preheader1098:                      ; preds = %for.body3.i99.preheader, %middle.block1072
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1078, %middle.block1072 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1098, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1098 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1072, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1087 = phi i64 [ %indvar.next1088, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1087, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1089 = icmp ult i64 %88, 4
  br i1 %min.iters.check1089, label %polly.loop_header191.preheader, label %vector.ph1090

vector.ph1090:                                    ; preds = %polly.loop_header
  %n.vec1092 = and i64 %88, -4
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.body1086, %vector.ph1090
  %index1093 = phi i64 [ 0, %vector.ph1090 ], [ %index.next1094, %vector.body1086 ]
  %90 = shl nuw nsw i64 %index1093, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1097 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1097, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1094 = add i64 %index1093, 4
  %95 = icmp eq i64 %index.next1094, %n.vec1092
  br i1 %95, label %middle.block1084, label %vector.body1086, !llvm.loop !73

middle.block1084:                                 ; preds = %vector.body1086
  %cmp.n1096 = icmp eq i64 %88, %n.vec1092
  br i1 %cmp.n1096, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1084
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1092, %middle.block1084 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1084
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond866.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1088 = add i64 %indvar1087, 1
  br i1 %exitcond866.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
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
  %exitcond865.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond865.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv845 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next846, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin860 = call i64 @llvm.smin.i64(i64 %indvars.iv845, i64 -920)
  %97 = add nsw i64 %smin860, 1000
  %98 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next846 = add nsw i64 %indvars.iv845, -80
  %exitcond864.not = icmp eq i64 %polly.indvar_next203, 13
  br i1 %exitcond864.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 1200, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %99 = shl nsw i64 %polly.indvar208, 5
  br label %polly.loop_header211

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %indvars.iv.next855 = add nsw i64 %indvars.iv854, -32
  %exitcond863.not = icmp eq i64 %polly.indvar_next209, 38
  br i1 %exitcond863.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %100 = add nuw nsw i64 %polly.indvar214, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar214, 1200
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next215, %97
  br i1 %exitcond847.not, label %polly.loop_header227.preheader, label %polly.loop_header211

polly.loop_header227.preheader:                   ; preds = %polly.loop_exit219
  %101 = mul nsw i64 %polly.indvar208, -32
  br label %polly.loop_header227

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %102 = add nuw nsw i64 %polly.indvar220, %99
  %polly.access.mul.call2224 = mul nuw nsw i64 %102, 1000
  %polly.access.add.call2225 = add nuw nsw i64 %100, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !71, !noalias !76
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit235
  %indvars.iv856 = phi i64 [ %indvars.iv854, %polly.loop_header227.preheader ], [ %indvars.iv.next857, %polly.loop_exit235 ]
  %indvars.iv848 = phi i64 [ 0, %polly.loop_header227.preheader ], [ %indvars.iv.next849, %polly.loop_exit235 ]
  %polly.indvar230 = phi i64 [ %polly.indvar208, %polly.loop_header227.preheader ], [ %polly.indvar_next231, %polly.loop_exit235 ]
  %smin858 = call i64 @llvm.smin.i64(i64 %indvars.iv856, i64 -1168)
  %103 = add nsw i64 %smin858, 1199
  %smax = call i64 @llvm.smax.i64(i64 %103, i64 0)
  %104 = mul nsw i64 %polly.indvar230, -32
  %polly.loop_guard952 = icmp sgt i64 %104, -1200
  %105 = shl nsw i64 %polly.indvar230, 5
  br i1 %polly.loop_guard952, label %polly.loop_header233.us, label %polly.loop_exit235

polly.loop_header233.us:                          ; preds = %polly.loop_header227, %polly.loop_exit241.loopexit.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_exit241.loopexit.us ], [ 0, %polly.loop_header227 ]
  %106 = add nuw nsw i64 %polly.indvar236.us, %98
  %107 = shl i64 %106, 3
  %polly.access.mul.Packed_MemRef_call2254.us = mul nuw nsw i64 %polly.indvar236.us, 1200
  br label %polly.loop_header239.us

polly.loop_header239.us:                          ; preds = %polly.loop_header233.us, %polly.loop_exit247.us
  %indvars.iv850 = phi i64 [ %indvars.iv848, %polly.loop_header233.us ], [ %indvars.iv.next851, %polly.loop_exit247.us ]
  %polly.indvar242.us = phi i64 [ 0, %polly.loop_header233.us ], [ %polly.indvar_next243.us, %polly.loop_exit247.us ]
  %smin852 = call i64 @llvm.smin.i64(i64 %indvars.iv850, i64 31)
  %108 = add nuw nsw i64 %polly.indvar242.us, %105
  %109 = add nsw i64 %108, %101
  %polly.access.add.Packed_MemRef_call2255.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us, %109
  %polly.access.Packed_MemRef_call2256.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us
  %_p_scalar_257.us = load double, double* %polly.access.Packed_MemRef_call2256.us, align 8
  %110 = mul nuw nsw i64 %108, 8000
  %111 = add nuw nsw i64 %110, %107
  %scevgep262.us = getelementptr i8, i8* %call1, i64 %111
  %scevgep262263.us = bitcast i8* %scevgep262.us to double*
  %_p_scalar_264.us = load double, double* %scevgep262263.us, align 8, !alias.scope !70, !noalias !77
  %112 = mul nuw nsw i64 %108, 9600
  br label %polly.loop_header245.us

polly.loop_header245.us:                          ; preds = %polly.loop_header245.us, %polly.loop_header239.us
  %polly.indvar248.us = phi i64 [ 0, %polly.loop_header239.us ], [ %polly.indvar_next249.us, %polly.loop_header245.us ]
  %113 = add nuw nsw i64 %polly.indvar248.us, %99
  %114 = mul nuw nsw i64 %113, 8000
  %115 = add nuw nsw i64 %114, %107
  %scevgep251.us = getelementptr i8, i8* %call1, i64 %115
  %scevgep251252.us = bitcast i8* %scevgep251.us to double*
  %_p_scalar_253.us = load double, double* %scevgep251252.us, align 8, !alias.scope !70, !noalias !77
  %p_mul27.i112.us = fmul fast double %_p_scalar_257.us, %_p_scalar_253.us
  %polly.access.add.Packed_MemRef_call2259.us = add nuw nsw i64 %polly.indvar248.us, %polly.access.mul.Packed_MemRef_call2254.us
  %polly.access.Packed_MemRef_call2260.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us
  %_p_scalar_261.us = load double, double* %polly.access.Packed_MemRef_call2260.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_264.us, %_p_scalar_261.us
  %116 = shl i64 %113, 3
  %117 = add nuw nsw i64 %116, %112
  %scevgep265.us = getelementptr i8, i8* %call, i64 %117
  %scevgep265266.us = bitcast i8* %scevgep265.us to double*
  %_p_scalar_267.us = load double, double* %scevgep265266.us, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_267.us
  store double %p_add42.i118.us, double* %scevgep265266.us, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next249.us = add nuw nsw i64 %polly.indvar248.us, 1
  %exitcond853.not = icmp eq i64 %polly.indvar248.us, %smin852
  br i1 %exitcond853.not, label %polly.loop_exit247.us, label %polly.loop_header245.us

polly.loop_exit247.us:                            ; preds = %polly.loop_header245.us
  %polly.indvar_next243.us = add nuw nsw i64 %polly.indvar242.us, 1
  %indvars.iv.next851 = add nuw nsw i64 %indvars.iv850, 1
  %exitcond859.not = icmp eq i64 %polly.indvar242.us, %smax
  br i1 %exitcond859.not, label %polly.loop_exit241.loopexit.us, label %polly.loop_header239.us

polly.loop_exit241.loopexit.us:                   ; preds = %polly.loop_exit247.us
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next237.us, %97
  br i1 %exitcond861.not, label %polly.loop_exit235, label %polly.loop_header233.us

polly.loop_exit235:                               ; preds = %polly.loop_exit241.loopexit.us, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 32
  %indvars.iv.next857 = add nsw i64 %indvars.iv856, -32
  %exitcond862.not = icmp eq i64 %polly.indvar_next231, 38
  br i1 %exitcond862.not, label %polly.loop_exit229, label %polly.loop_header227

polly.start270:                                   ; preds = %kernel_syr2k.exit
  %malloccall272 = tail call dereferenceable_or_null(768000) i8* @malloc(i64 768000) #6
  br label %polly.loop_header356

polly.exiting271:                                 ; preds = %polly.loop_exit380
  tail call void @free(i8* %malloccall272)
  br label %kernel_syr2k.exit90

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.start270
  %indvar1061 = phi i64 [ %indvar.next1062, %polly.loop_exit364 ], [ 0, %polly.start270 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 1, %polly.start270 ]
  %118 = add i64 %indvar1061, 1
  %119 = mul nuw nsw i64 %polly.indvar359, 9600
  %scevgep368 = getelementptr i8, i8* %call, i64 %119
  %min.iters.check1063 = icmp ult i64 %118, 4
  br i1 %min.iters.check1063, label %polly.loop_header362.preheader, label %vector.ph1064

vector.ph1064:                                    ; preds = %polly.loop_header356
  %n.vec1066 = and i64 %118, -4
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %vector.ph1064
  %index1067 = phi i64 [ 0, %vector.ph1064 ], [ %index.next1068, %vector.body1060 ]
  %120 = shl nuw nsw i64 %index1067, 3
  %121 = getelementptr i8, i8* %scevgep368, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load1071 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !78, !noalias !80
  %123 = fmul fast <4 x double> %wide.load1071, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %124 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %123, <4 x double>* %124, align 8, !alias.scope !78, !noalias !80
  %index.next1068 = add i64 %index1067, 4
  %125 = icmp eq i64 %index.next1068, %n.vec1066
  br i1 %125, label %middle.block1058, label %vector.body1060, !llvm.loop !84

middle.block1058:                                 ; preds = %vector.body1060
  %cmp.n1070 = icmp eq i64 %118, %n.vec1066
  br i1 %cmp.n1070, label %polly.loop_exit364, label %polly.loop_header362.preheader

polly.loop_header362.preheader:                   ; preds = %polly.loop_header356, %middle.block1058
  %polly.indvar365.ph = phi i64 [ 0, %polly.loop_header356 ], [ %n.vec1066, %middle.block1058 ]
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_header362, %middle.block1058
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond893.not = icmp eq i64 %polly.indvar_next360, 1200
  %indvar.next1062 = add i64 %indvar1061, 1
  br i1 %exitcond893.not, label %polly.loop_header372.preheader, label %polly.loop_header356

polly.loop_header372.preheader:                   ; preds = %polly.loop_exit364
  %Packed_MemRef_call2273 = bitcast i8* %malloccall272 to double*
  br label %polly.loop_header372

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_header362
  %polly.indvar365 = phi i64 [ %polly.indvar_next366, %polly.loop_header362 ], [ %polly.indvar365.ph, %polly.loop_header362.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep369 = getelementptr i8, i8* %scevgep368, i64 %126
  %scevgep369370 = bitcast i8* %scevgep369 to double*
  %_p_scalar_371 = load double, double* %scevgep369370, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_371, 1.200000e+00
  store double %p_mul.i57, double* %scevgep369370, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond892.not = icmp eq i64 %polly.indvar_next366, %polly.indvar359
  br i1 %exitcond892.not, label %polly.loop_exit364, label %polly.loop_header362, !llvm.loop !85

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_exit380
  %indvars.iv870 = phi i64 [ 0, %polly.loop_header372.preheader ], [ %indvars.iv.next871, %polly.loop_exit380 ]
  %polly.indvar375 = phi i64 [ 0, %polly.loop_header372.preheader ], [ %polly.indvar_next376, %polly.loop_exit380 ]
  %smin887 = call i64 @llvm.smin.i64(i64 %indvars.iv870, i64 -920)
  %127 = add nsw i64 %smin887, 1000
  %128 = mul nuw nsw i64 %polly.indvar375, 80
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_exit402
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %indvars.iv.next871 = add nsw i64 %indvars.iv870, -80
  %exitcond891.not = icmp eq i64 %polly.indvar_next376, 13
  br i1 %exitcond891.not, label %polly.exiting271, label %polly.loop_header372

polly.loop_header378:                             ; preds = %polly.loop_exit402, %polly.loop_header372
  %indvars.iv880 = phi i64 [ %indvars.iv.next881, %polly.loop_exit402 ], [ 0, %polly.loop_header372 ]
  %indvars.iv867 = phi i64 [ %indvars.iv.next868, %polly.loop_exit402 ], [ 1200, %polly.loop_header372 ]
  %polly.indvar381 = phi i64 [ %polly.indvar_next382, %polly.loop_exit402 ], [ 0, %polly.loop_header372 ]
  %129 = shl nsw i64 %polly.indvar381, 5
  br label %polly.loop_header384

polly.loop_exit402:                               ; preds = %polly.loop_exit408
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %indvars.iv.next868 = add nsw i64 %indvars.iv867, -32
  %indvars.iv.next881 = add nsw i64 %indvars.iv880, -32
  %exitcond890.not = icmp eq i64 %polly.indvar_next382, 38
  br i1 %exitcond890.not, label %polly.loop_exit380, label %polly.loop_header378

polly.loop_header384:                             ; preds = %polly.loop_exit392, %polly.loop_header378
  %polly.indvar387 = phi i64 [ 0, %polly.loop_header378 ], [ %polly.indvar_next388, %polly.loop_exit392 ]
  %130 = add nuw nsw i64 %polly.indvar387, %128
  %polly.access.mul.Packed_MemRef_call2273 = mul nuw nsw i64 %polly.indvar387, 1200
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_header390
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond873.not = icmp eq i64 %polly.indvar_next388, %127
  br i1 %exitcond873.not, label %polly.loop_header400.preheader, label %polly.loop_header384

polly.loop_header400.preheader:                   ; preds = %polly.loop_exit392
  %131 = mul nsw i64 %polly.indvar381, -32
  br label %polly.loop_header400

polly.loop_header390:                             ; preds = %polly.loop_header390, %polly.loop_header384
  %polly.indvar393 = phi i64 [ 0, %polly.loop_header384 ], [ %polly.indvar_next394, %polly.loop_header390 ]
  %132 = add nuw nsw i64 %polly.indvar393, %129
  %polly.access.mul.call2397 = mul nuw nsw i64 %132, 1000
  %polly.access.add.call2398 = add nuw nsw i64 %130, %polly.access.mul.call2397
  %polly.access.call2399 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2398
  %polly.access.call2399.load = load double, double* %polly.access.call2399, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call2273 = add nuw nsw i64 %polly.indvar393, %polly.access.mul.Packed_MemRef_call2273
  %polly.access.Packed_MemRef_call2273 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273
  store double %polly.access.call2399.load, double* %polly.access.Packed_MemRef_call2273, align 8
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond869.not = icmp eq i64 %polly.indvar_next394, %indvars.iv867
  br i1 %exitcond869.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_exit408
  %indvars.iv882 = phi i64 [ %indvars.iv880, %polly.loop_header400.preheader ], [ %indvars.iv.next883, %polly.loop_exit408 ]
  %indvars.iv874 = phi i64 [ 0, %polly.loop_header400.preheader ], [ %indvars.iv.next875, %polly.loop_exit408 ]
  %polly.indvar403 = phi i64 [ %polly.indvar381, %polly.loop_header400.preheader ], [ %polly.indvar_next404, %polly.loop_exit408 ]
  %smin884 = call i64 @llvm.smin.i64(i64 %indvars.iv882, i64 -1168)
  %133 = add nsw i64 %smin884, 1199
  %smax885 = call i64 @llvm.smax.i64(i64 %133, i64 0)
  %134 = mul nsw i64 %polly.indvar403, -32
  %polly.loop_guard416953 = icmp sgt i64 %134, -1200
  %135 = shl nsw i64 %polly.indvar403, 5
  br i1 %polly.loop_guard416953, label %polly.loop_header406.us, label %polly.loop_exit408

polly.loop_header406.us:                          ; preds = %polly.loop_header400, %polly.loop_exit415.loopexit.us
  %polly.indvar409.us = phi i64 [ %polly.indvar_next410.us, %polly.loop_exit415.loopexit.us ], [ 0, %polly.loop_header400 ]
  %136 = add nuw nsw i64 %polly.indvar409.us, %128
  %137 = shl i64 %136, 3
  %polly.access.mul.Packed_MemRef_call2273429.us = mul nuw nsw i64 %polly.indvar409.us, 1200
  br label %polly.loop_header413.us

polly.loop_header413.us:                          ; preds = %polly.loop_header406.us, %polly.loop_exit422.us
  %indvars.iv876 = phi i64 [ %indvars.iv874, %polly.loop_header406.us ], [ %indvars.iv.next877, %polly.loop_exit422.us ]
  %polly.indvar417.us = phi i64 [ 0, %polly.loop_header406.us ], [ %polly.indvar_next418.us, %polly.loop_exit422.us ]
  %smin878 = call i64 @llvm.smin.i64(i64 %indvars.iv876, i64 31)
  %138 = add nuw nsw i64 %polly.indvar417.us, %135
  %139 = add nsw i64 %138, %131
  %polly.access.add.Packed_MemRef_call2273430.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273429.us, %139
  %polly.access.Packed_MemRef_call2273431.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273430.us
  %_p_scalar_432.us = load double, double* %polly.access.Packed_MemRef_call2273431.us, align 8
  %140 = mul nuw nsw i64 %138, 8000
  %141 = add nuw nsw i64 %140, %137
  %scevgep437.us = getelementptr i8, i8* %call1, i64 %141
  %scevgep437438.us = bitcast i8* %scevgep437.us to double*
  %_p_scalar_439.us = load double, double* %scevgep437438.us, align 8, !alias.scope !81, !noalias !87
  %142 = mul nuw nsw i64 %138, 9600
  br label %polly.loop_header420.us

polly.loop_header420.us:                          ; preds = %polly.loop_header420.us, %polly.loop_header413.us
  %polly.indvar423.us = phi i64 [ 0, %polly.loop_header413.us ], [ %polly.indvar_next424.us, %polly.loop_header420.us ]
  %143 = add nuw nsw i64 %polly.indvar423.us, %129
  %144 = mul nuw nsw i64 %143, 8000
  %145 = add nuw nsw i64 %144, %137
  %scevgep426.us = getelementptr i8, i8* %call1, i64 %145
  %scevgep426427.us = bitcast i8* %scevgep426.us to double*
  %_p_scalar_428.us = load double, double* %scevgep426427.us, align 8, !alias.scope !81, !noalias !87
  %p_mul27.i73.us = fmul fast double %_p_scalar_432.us, %_p_scalar_428.us
  %polly.access.add.Packed_MemRef_call2273434.us = add nuw nsw i64 %polly.indvar423.us, %polly.access.mul.Packed_MemRef_call2273429.us
  %polly.access.Packed_MemRef_call2273435.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273434.us
  %_p_scalar_436.us = load double, double* %polly.access.Packed_MemRef_call2273435.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_439.us, %_p_scalar_436.us
  %146 = shl i64 %143, 3
  %147 = add nuw nsw i64 %146, %142
  %scevgep440.us = getelementptr i8, i8* %call, i64 %147
  %scevgep440441.us = bitcast i8* %scevgep440.us to double*
  %_p_scalar_442.us = load double, double* %scevgep440441.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_442.us
  store double %p_add42.i79.us, double* %scevgep440441.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next424.us = add nuw nsw i64 %polly.indvar423.us, 1
  %exitcond879.not = icmp eq i64 %polly.indvar423.us, %smin878
  br i1 %exitcond879.not, label %polly.loop_exit422.us, label %polly.loop_header420.us

polly.loop_exit422.us:                            ; preds = %polly.loop_header420.us
  %polly.indvar_next418.us = add nuw nsw i64 %polly.indvar417.us, 1
  %indvars.iv.next877 = add nuw nsw i64 %indvars.iv876, 1
  %exitcond886.not = icmp eq i64 %polly.indvar417.us, %smax885
  br i1 %exitcond886.not, label %polly.loop_exit415.loopexit.us, label %polly.loop_header413.us

polly.loop_exit415.loopexit.us:                   ; preds = %polly.loop_exit422.us
  %polly.indvar_next410.us = add nuw nsw i64 %polly.indvar409.us, 1
  %exitcond888.not = icmp eq i64 %polly.indvar_next410.us, %127
  br i1 %exitcond888.not, label %polly.loop_exit408, label %polly.loop_header406.us

polly.loop_exit408:                               ; preds = %polly.loop_exit415.loopexit.us, %polly.loop_header400
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next875 = add nuw nsw i64 %indvars.iv874, 32
  %indvars.iv.next883 = add nsw i64 %indvars.iv882, -32
  %exitcond889.not = icmp eq i64 %polly.indvar_next404, 38
  br i1 %exitcond889.not, label %polly.loop_exit402, label %polly.loop_header400

polly.start445:                                   ; preds = %init_array.exit
  %malloccall447 = tail call dereferenceable_or_null(768000) i8* @malloc(i64 768000) #6
  br label %polly.loop_header531

polly.exiting446:                                 ; preds = %polly.loop_exit555
  tail call void @free(i8* %malloccall447)
  br label %kernel_syr2k.exit

polly.loop_header531:                             ; preds = %polly.loop_exit539, %polly.start445
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit539 ], [ 0, %polly.start445 ]
  %polly.indvar534 = phi i64 [ %polly.indvar_next535, %polly.loop_exit539 ], [ 1, %polly.start445 ]
  %148 = add i64 %indvar, 1
  %149 = mul nuw nsw i64 %polly.indvar534, 9600
  %scevgep543 = getelementptr i8, i8* %call, i64 %149
  %min.iters.check1037 = icmp ult i64 %148, 4
  br i1 %min.iters.check1037, label %polly.loop_header537.preheader, label %vector.ph1038

vector.ph1038:                                    ; preds = %polly.loop_header531
  %n.vec1040 = and i64 %148, -4
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1038
  %index1041 = phi i64 [ 0, %vector.ph1038 ], [ %index.next1042, %vector.body1036 ]
  %150 = shl nuw nsw i64 %index1041, 3
  %151 = getelementptr i8, i8* %scevgep543, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  %wide.load1045 = load <4 x double>, <4 x double>* %152, align 8, !alias.scope !88, !noalias !90
  %153 = fmul fast <4 x double> %wide.load1045, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %154 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %153, <4 x double>* %154, align 8, !alias.scope !88, !noalias !90
  %index.next1042 = add i64 %index1041, 4
  %155 = icmp eq i64 %index.next1042, %n.vec1040
  br i1 %155, label %middle.block1034, label %vector.body1036, !llvm.loop !94

middle.block1034:                                 ; preds = %vector.body1036
  %cmp.n1044 = icmp eq i64 %148, %n.vec1040
  br i1 %cmp.n1044, label %polly.loop_exit539, label %polly.loop_header537.preheader

polly.loop_header537.preheader:                   ; preds = %polly.loop_header531, %middle.block1034
  %polly.indvar540.ph = phi i64 [ 0, %polly.loop_header531 ], [ %n.vec1040, %middle.block1034 ]
  br label %polly.loop_header537

polly.loop_exit539:                               ; preds = %polly.loop_header537, %middle.block1034
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %exitcond920.not = icmp eq i64 %polly.indvar_next535, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond920.not, label %polly.loop_header547.preheader, label %polly.loop_header531

polly.loop_header547.preheader:                   ; preds = %polly.loop_exit539
  %Packed_MemRef_call2448 = bitcast i8* %malloccall447 to double*
  br label %polly.loop_header547

polly.loop_header537:                             ; preds = %polly.loop_header537.preheader, %polly.loop_header537
  %polly.indvar540 = phi i64 [ %polly.indvar_next541, %polly.loop_header537 ], [ %polly.indvar540.ph, %polly.loop_header537.preheader ]
  %156 = shl nuw nsw i64 %polly.indvar540, 3
  %scevgep544 = getelementptr i8, i8* %scevgep543, i64 %156
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_546, 1.200000e+00
  store double %p_mul.i, double* %scevgep544545, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %exitcond919.not = icmp eq i64 %polly.indvar_next541, %polly.indvar534
  br i1 %exitcond919.not, label %polly.loop_exit539, label %polly.loop_header537, !llvm.loop !95

polly.loop_header547:                             ; preds = %polly.loop_header547.preheader, %polly.loop_exit555
  %indvars.iv897 = phi i64 [ 0, %polly.loop_header547.preheader ], [ %indvars.iv.next898, %polly.loop_exit555 ]
  %polly.indvar550 = phi i64 [ 0, %polly.loop_header547.preheader ], [ %polly.indvar_next551, %polly.loop_exit555 ]
  %smin914 = call i64 @llvm.smin.i64(i64 %indvars.iv897, i64 -920)
  %157 = add nsw i64 %smin914, 1000
  %158 = mul nuw nsw i64 %polly.indvar550, 80
  br label %polly.loop_header553

polly.loop_exit555:                               ; preds = %polly.loop_exit577
  %polly.indvar_next551 = add nuw nsw i64 %polly.indvar550, 1
  %indvars.iv.next898 = add nsw i64 %indvars.iv897, -80
  %exitcond918.not = icmp eq i64 %polly.indvar_next551, 13
  br i1 %exitcond918.not, label %polly.exiting446, label %polly.loop_header547

polly.loop_header553:                             ; preds = %polly.loop_exit577, %polly.loop_header547
  %indvars.iv907 = phi i64 [ %indvars.iv.next908, %polly.loop_exit577 ], [ 0, %polly.loop_header547 ]
  %indvars.iv894 = phi i64 [ %indvars.iv.next895, %polly.loop_exit577 ], [ 1200, %polly.loop_header547 ]
  %polly.indvar556 = phi i64 [ %polly.indvar_next557, %polly.loop_exit577 ], [ 0, %polly.loop_header547 ]
  %159 = shl nsw i64 %polly.indvar556, 5
  br label %polly.loop_header559

polly.loop_exit577:                               ; preds = %polly.loop_exit583
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %indvars.iv.next895 = add nsw i64 %indvars.iv894, -32
  %indvars.iv.next908 = add nsw i64 %indvars.iv907, -32
  %exitcond917.not = icmp eq i64 %polly.indvar_next557, 38
  br i1 %exitcond917.not, label %polly.loop_exit555, label %polly.loop_header553

polly.loop_header559:                             ; preds = %polly.loop_exit567, %polly.loop_header553
  %polly.indvar562 = phi i64 [ 0, %polly.loop_header553 ], [ %polly.indvar_next563, %polly.loop_exit567 ]
  %160 = add nuw nsw i64 %polly.indvar562, %158
  %polly.access.mul.Packed_MemRef_call2448 = mul nuw nsw i64 %polly.indvar562, 1200
  br label %polly.loop_header565

polly.loop_exit567:                               ; preds = %polly.loop_header565
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %exitcond900.not = icmp eq i64 %polly.indvar_next563, %157
  br i1 %exitcond900.not, label %polly.loop_header575.preheader, label %polly.loop_header559

polly.loop_header575.preheader:                   ; preds = %polly.loop_exit567
  %161 = mul nsw i64 %polly.indvar556, -32
  br label %polly.loop_header575

polly.loop_header565:                             ; preds = %polly.loop_header565, %polly.loop_header559
  %polly.indvar568 = phi i64 [ 0, %polly.loop_header559 ], [ %polly.indvar_next569, %polly.loop_header565 ]
  %162 = add nuw nsw i64 %polly.indvar568, %159
  %polly.access.mul.call2572 = mul nuw nsw i64 %162, 1000
  %polly.access.add.call2573 = add nuw nsw i64 %160, %polly.access.mul.call2572
  %polly.access.call2574 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2573
  %polly.access.call2574.load = load double, double* %polly.access.call2574, align 8, !alias.scope !92, !noalias !96
  %polly.access.add.Packed_MemRef_call2448 = add nuw nsw i64 %polly.indvar568, %polly.access.mul.Packed_MemRef_call2448
  %polly.access.Packed_MemRef_call2448 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448
  store double %polly.access.call2574.load, double* %polly.access.Packed_MemRef_call2448, align 8
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %exitcond896.not = icmp eq i64 %polly.indvar_next569, %indvars.iv894
  br i1 %exitcond896.not, label %polly.loop_exit567, label %polly.loop_header565

polly.loop_header575:                             ; preds = %polly.loop_header575.preheader, %polly.loop_exit583
  %indvars.iv909 = phi i64 [ %indvars.iv907, %polly.loop_header575.preheader ], [ %indvars.iv.next910, %polly.loop_exit583 ]
  %indvars.iv901 = phi i64 [ 0, %polly.loop_header575.preheader ], [ %indvars.iv.next902, %polly.loop_exit583 ]
  %polly.indvar578 = phi i64 [ %polly.indvar556, %polly.loop_header575.preheader ], [ %polly.indvar_next579, %polly.loop_exit583 ]
  %smin911 = call i64 @llvm.smin.i64(i64 %indvars.iv909, i64 -1168)
  %163 = add nsw i64 %smin911, 1199
  %smax912 = call i64 @llvm.smax.i64(i64 %163, i64 0)
  %164 = mul nsw i64 %polly.indvar578, -32
  %polly.loop_guard591954 = icmp sgt i64 %164, -1200
  %165 = shl nsw i64 %polly.indvar578, 5
  br i1 %polly.loop_guard591954, label %polly.loop_header581.us, label %polly.loop_exit583

polly.loop_header581.us:                          ; preds = %polly.loop_header575, %polly.loop_exit590.loopexit.us
  %polly.indvar584.us = phi i64 [ %polly.indvar_next585.us, %polly.loop_exit590.loopexit.us ], [ 0, %polly.loop_header575 ]
  %166 = add nuw nsw i64 %polly.indvar584.us, %158
  %167 = shl i64 %166, 3
  %polly.access.mul.Packed_MemRef_call2448604.us = mul nuw nsw i64 %polly.indvar584.us, 1200
  br label %polly.loop_header588.us

polly.loop_header588.us:                          ; preds = %polly.loop_header581.us, %polly.loop_exit597.us
  %indvars.iv903 = phi i64 [ %indvars.iv901, %polly.loop_header581.us ], [ %indvars.iv.next904, %polly.loop_exit597.us ]
  %polly.indvar592.us = phi i64 [ 0, %polly.loop_header581.us ], [ %polly.indvar_next593.us, %polly.loop_exit597.us ]
  %smin905 = call i64 @llvm.smin.i64(i64 %indvars.iv903, i64 31)
  %168 = add nuw nsw i64 %polly.indvar592.us, %165
  %169 = add nsw i64 %168, %161
  %polly.access.add.Packed_MemRef_call2448605.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2448604.us, %169
  %polly.access.Packed_MemRef_call2448606.us = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448605.us
  %_p_scalar_607.us = load double, double* %polly.access.Packed_MemRef_call2448606.us, align 8
  %170 = mul nuw nsw i64 %168, 8000
  %171 = add nuw nsw i64 %170, %167
  %scevgep612.us = getelementptr i8, i8* %call1, i64 %171
  %scevgep612613.us = bitcast i8* %scevgep612.us to double*
  %_p_scalar_614.us = load double, double* %scevgep612613.us, align 8, !alias.scope !91, !noalias !97
  %172 = mul nuw nsw i64 %168, 9600
  br label %polly.loop_header595.us

polly.loop_header595.us:                          ; preds = %polly.loop_header595.us, %polly.loop_header588.us
  %polly.indvar598.us = phi i64 [ 0, %polly.loop_header588.us ], [ %polly.indvar_next599.us, %polly.loop_header595.us ]
  %173 = add nuw nsw i64 %polly.indvar598.us, %159
  %174 = mul nuw nsw i64 %173, 8000
  %175 = add nuw nsw i64 %174, %167
  %scevgep601.us = getelementptr i8, i8* %call1, i64 %175
  %scevgep601602.us = bitcast i8* %scevgep601.us to double*
  %_p_scalar_603.us = load double, double* %scevgep601602.us, align 8, !alias.scope !91, !noalias !97
  %p_mul27.i.us = fmul fast double %_p_scalar_607.us, %_p_scalar_603.us
  %polly.access.add.Packed_MemRef_call2448609.us = add nuw nsw i64 %polly.indvar598.us, %polly.access.mul.Packed_MemRef_call2448604.us
  %polly.access.Packed_MemRef_call2448610.us = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448609.us
  %_p_scalar_611.us = load double, double* %polly.access.Packed_MemRef_call2448610.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_614.us, %_p_scalar_611.us
  %176 = shl i64 %173, 3
  %177 = add nuw nsw i64 %176, %172
  %scevgep615.us = getelementptr i8, i8* %call, i64 %177
  %scevgep615616.us = bitcast i8* %scevgep615.us to double*
  %_p_scalar_617.us = load double, double* %scevgep615616.us, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_617.us
  store double %p_add42.i.us, double* %scevgep615616.us, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next599.us = add nuw nsw i64 %polly.indvar598.us, 1
  %exitcond906.not = icmp eq i64 %polly.indvar598.us, %smin905
  br i1 %exitcond906.not, label %polly.loop_exit597.us, label %polly.loop_header595.us

polly.loop_exit597.us:                            ; preds = %polly.loop_header595.us
  %polly.indvar_next593.us = add nuw nsw i64 %polly.indvar592.us, 1
  %indvars.iv.next904 = add nuw nsw i64 %indvars.iv903, 1
  %exitcond913.not = icmp eq i64 %polly.indvar592.us, %smax912
  br i1 %exitcond913.not, label %polly.loop_exit590.loopexit.us, label %polly.loop_header588.us

polly.loop_exit590.loopexit.us:                   ; preds = %polly.loop_exit597.us
  %polly.indvar_next585.us = add nuw nsw i64 %polly.indvar584.us, 1
  %exitcond915.not = icmp eq i64 %polly.indvar_next585.us, %157
  br i1 %exitcond915.not, label %polly.loop_exit583, label %polly.loop_header581.us

polly.loop_exit583:                               ; preds = %polly.loop_exit590.loopexit.us, %polly.loop_header575
  %polly.indvar_next579 = add nuw nsw i64 %polly.indvar578, 1
  %indvars.iv.next902 = add nuw nsw i64 %indvars.iv901, 32
  %indvars.iv.next910 = add nsw i64 %indvars.iv909, -32
  %exitcond916.not = icmp eq i64 %polly.indvar_next579, 38
  br i1 %exitcond916.not, label %polly.loop_exit577, label %polly.loop_header575

polly.loop_header744:                             ; preds = %entry, %polly.loop_exit752
  %indvars.iv945 = phi i64 [ %indvars.iv.next946, %polly.loop_exit752 ], [ 0, %entry ]
  %polly.indvar747 = phi i64 [ %polly.indvar_next748, %polly.loop_exit752 ], [ 0, %entry ]
  %smin947 = call i64 @llvm.smin.i64(i64 %indvars.iv945, i64 -1168)
  %178 = shl nsw i64 %polly.indvar747, 5
  %179 = add nsw i64 %smin947, 1199
  br label %polly.loop_header750

polly.loop_exit752:                               ; preds = %polly.loop_exit758
  %polly.indvar_next748 = add nuw nsw i64 %polly.indvar747, 1
  %indvars.iv.next946 = add nsw i64 %indvars.iv945, -32
  %exitcond950.not = icmp eq i64 %polly.indvar_next748, 38
  br i1 %exitcond950.not, label %polly.loop_header771, label %polly.loop_header744

polly.loop_header750:                             ; preds = %polly.loop_exit758, %polly.loop_header744
  %indvars.iv941 = phi i64 [ %indvars.iv.next942, %polly.loop_exit758 ], [ 0, %polly.loop_header744 ]
  %polly.indvar753 = phi i64 [ %polly.indvar_next754, %polly.loop_exit758 ], [ 0, %polly.loop_header744 ]
  %180 = mul nsw i64 %polly.indvar753, -32
  %smin = call i64 @llvm.smin.i64(i64 %180, i64 -1168)
  %181 = add nsw i64 %smin, 1200
  %smin943 = call i64 @llvm.smin.i64(i64 %indvars.iv941, i64 -1168)
  %182 = shl nsw i64 %polly.indvar753, 5
  %183 = add nsw i64 %smin943, 1199
  br label %polly.loop_header756

polly.loop_exit758:                               ; preds = %polly.loop_exit764
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %indvars.iv.next942 = add nsw i64 %indvars.iv941, -32
  %exitcond949.not = icmp eq i64 %polly.indvar_next754, 38
  br i1 %exitcond949.not, label %polly.loop_exit752, label %polly.loop_header750

polly.loop_header756:                             ; preds = %polly.loop_exit764, %polly.loop_header750
  %polly.indvar759 = phi i64 [ 0, %polly.loop_header750 ], [ %polly.indvar_next760, %polly.loop_exit764 ]
  %184 = add nuw nsw i64 %polly.indvar759, %178
  %185 = trunc i64 %184 to i32
  %186 = mul nuw nsw i64 %184, 9600
  %min.iters.check = icmp eq i64 %181, 0
  br i1 %min.iters.check, label %polly.loop_header762, label %vector.ph976

vector.ph976:                                     ; preds = %polly.loop_header756
  %broadcast.splatinsert983 = insertelement <4 x i64> poison, i64 %182, i32 0
  %broadcast.splat984 = shufflevector <4 x i64> %broadcast.splatinsert983, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert985 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat986 = shufflevector <4 x i32> %broadcast.splatinsert985, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body975

vector.body975:                                   ; preds = %vector.body975, %vector.ph976
  %index977 = phi i64 [ 0, %vector.ph976 ], [ %index.next978, %vector.body975 ]
  %vec.ind981 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph976 ], [ %vec.ind.next982, %vector.body975 ]
  %187 = add nuw nsw <4 x i64> %vec.ind981, %broadcast.splat984
  %188 = trunc <4 x i64> %187 to <4 x i32>
  %189 = mul <4 x i32> %broadcast.splat986, %188
  %190 = add <4 x i32> %189, <i32 3, i32 3, i32 3, i32 3>
  %191 = urem <4 x i32> %190, <i32 1200, i32 1200, i32 1200, i32 1200>
  %192 = sitofp <4 x i32> %191 to <4 x double>
  %193 = fmul fast <4 x double> %192, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %194 = extractelement <4 x i64> %187, i32 0
  %195 = shl i64 %194, 3
  %196 = add nuw nsw i64 %195, %186
  %197 = getelementptr i8, i8* %call, i64 %196
  %198 = bitcast i8* %197 to <4 x double>*
  store <4 x double> %193, <4 x double>* %198, align 8, !alias.scope !98, !noalias !100
  %index.next978 = add i64 %index977, 4
  %vec.ind.next982 = add <4 x i64> %vec.ind981, <i64 4, i64 4, i64 4, i64 4>
  %199 = icmp eq i64 %index.next978, %181
  br i1 %199, label %polly.loop_exit764, label %vector.body975, !llvm.loop !103

polly.loop_exit764:                               ; preds = %vector.body975, %polly.loop_header762
  %polly.indvar_next760 = add nuw nsw i64 %polly.indvar759, 1
  %exitcond948.not = icmp eq i64 %polly.indvar759, %179
  br i1 %exitcond948.not, label %polly.loop_exit758, label %polly.loop_header756

polly.loop_header762:                             ; preds = %polly.loop_header756, %polly.loop_header762
  %polly.indvar765 = phi i64 [ %polly.indvar_next766, %polly.loop_header762 ], [ 0, %polly.loop_header756 ]
  %200 = add nuw nsw i64 %polly.indvar765, %182
  %201 = trunc i64 %200 to i32
  %202 = mul i32 %201, %185
  %203 = add i32 %202, 3
  %204 = urem i32 %203, 1200
  %p_conv31.i = sitofp i32 %204 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %205 = shl i64 %200, 3
  %206 = add nuw nsw i64 %205, %186
  %scevgep768 = getelementptr i8, i8* %call, i64 %206
  %scevgep768769 = bitcast i8* %scevgep768 to double*
  store double %p_div33.i, double* %scevgep768769, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next766 = add nuw nsw i64 %polly.indvar765, 1
  %exitcond944.not = icmp eq i64 %polly.indvar765, %183
  br i1 %exitcond944.not, label %polly.loop_exit764, label %polly.loop_header762, !llvm.loop !104

polly.loop_header771:                             ; preds = %polly.loop_exit752, %polly.loop_exit779
  %indvars.iv935 = phi i64 [ %indvars.iv.next936, %polly.loop_exit779 ], [ 0, %polly.loop_exit752 ]
  %polly.indvar774 = phi i64 [ %polly.indvar_next775, %polly.loop_exit779 ], [ 0, %polly.loop_exit752 ]
  %smin937 = call i64 @llvm.smin.i64(i64 %indvars.iv935, i64 -1168)
  %207 = shl nsw i64 %polly.indvar774, 5
  %208 = add nsw i64 %smin937, 1199
  br label %polly.loop_header777

polly.loop_exit779:                               ; preds = %polly.loop_exit785
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %indvars.iv.next936 = add nsw i64 %indvars.iv935, -32
  %exitcond940.not = icmp eq i64 %polly.indvar_next775, 38
  br i1 %exitcond940.not, label %polly.loop_header797, label %polly.loop_header771

polly.loop_header777:                             ; preds = %polly.loop_exit785, %polly.loop_header771
  %indvars.iv931 = phi i64 [ %indvars.iv.next932, %polly.loop_exit785 ], [ 0, %polly.loop_header771 ]
  %polly.indvar780 = phi i64 [ %polly.indvar_next781, %polly.loop_exit785 ], [ 0, %polly.loop_header771 ]
  %209 = mul nsw i64 %polly.indvar780, -32
  %smin990 = call i64 @llvm.smin.i64(i64 %209, i64 -968)
  %210 = add nsw i64 %smin990, 1000
  %smin933 = call i64 @llvm.smin.i64(i64 %indvars.iv931, i64 -968)
  %211 = shl nsw i64 %polly.indvar780, 5
  %212 = add nsw i64 %smin933, 999
  br label %polly.loop_header783

polly.loop_exit785:                               ; preds = %polly.loop_exit791
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %indvars.iv.next932 = add nsw i64 %indvars.iv931, -32
  %exitcond939.not = icmp eq i64 %polly.indvar_next781, 32
  br i1 %exitcond939.not, label %polly.loop_exit779, label %polly.loop_header777

polly.loop_header783:                             ; preds = %polly.loop_exit791, %polly.loop_header777
  %polly.indvar786 = phi i64 [ 0, %polly.loop_header777 ], [ %polly.indvar_next787, %polly.loop_exit791 ]
  %213 = add nuw nsw i64 %polly.indvar786, %207
  %214 = trunc i64 %213 to i32
  %215 = mul nuw nsw i64 %213, 8000
  %min.iters.check991 = icmp eq i64 %210, 0
  br i1 %min.iters.check991, label %polly.loop_header789, label %vector.ph992

vector.ph992:                                     ; preds = %polly.loop_header783
  %broadcast.splatinsert1001 = insertelement <4 x i64> poison, i64 %211, i32 0
  %broadcast.splat1002 = shufflevector <4 x i64> %broadcast.splatinsert1001, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1003 = insertelement <4 x i32> poison, i32 %214, i32 0
  %broadcast.splat1004 = shufflevector <4 x i32> %broadcast.splatinsert1003, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body989

vector.body989:                                   ; preds = %vector.body989, %vector.ph992
  %index995 = phi i64 [ 0, %vector.ph992 ], [ %index.next996, %vector.body989 ]
  %vec.ind999 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph992 ], [ %vec.ind.next1000, %vector.body989 ]
  %216 = add nuw nsw <4 x i64> %vec.ind999, %broadcast.splat1002
  %217 = trunc <4 x i64> %216 to <4 x i32>
  %218 = mul <4 x i32> %broadcast.splat1004, %217
  %219 = add <4 x i32> %218, <i32 2, i32 2, i32 2, i32 2>
  %220 = urem <4 x i32> %219, <i32 1000, i32 1000, i32 1000, i32 1000>
  %221 = sitofp <4 x i32> %220 to <4 x double>
  %222 = fmul fast <4 x double> %221, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %223 = extractelement <4 x i64> %216, i32 0
  %224 = shl i64 %223, 3
  %225 = add nuw nsw i64 %224, %215
  %226 = getelementptr i8, i8* %call2, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %222, <4 x double>* %227, align 8, !alias.scope !102, !noalias !105
  %index.next996 = add i64 %index995, 4
  %vec.ind.next1000 = add <4 x i64> %vec.ind999, <i64 4, i64 4, i64 4, i64 4>
  %228 = icmp eq i64 %index.next996, %210
  br i1 %228, label %polly.loop_exit791, label %vector.body989, !llvm.loop !106

polly.loop_exit791:                               ; preds = %vector.body989, %polly.loop_header789
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %exitcond938.not = icmp eq i64 %polly.indvar786, %208
  br i1 %exitcond938.not, label %polly.loop_exit785, label %polly.loop_header783

polly.loop_header789:                             ; preds = %polly.loop_header783, %polly.loop_header789
  %polly.indvar792 = phi i64 [ %polly.indvar_next793, %polly.loop_header789 ], [ 0, %polly.loop_header783 ]
  %229 = add nuw nsw i64 %polly.indvar792, %211
  %230 = trunc i64 %229 to i32
  %231 = mul i32 %230, %214
  %232 = add i32 %231, 2
  %233 = urem i32 %232, 1000
  %p_conv10.i = sitofp i32 %233 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %234 = shl i64 %229, 3
  %235 = add nuw nsw i64 %234, %215
  %scevgep795 = getelementptr i8, i8* %call2, i64 %235
  %scevgep795796 = bitcast i8* %scevgep795 to double*
  store double %p_div12.i, double* %scevgep795796, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %exitcond934.not = icmp eq i64 %polly.indvar792, %212
  br i1 %exitcond934.not, label %polly.loop_exit791, label %polly.loop_header789, !llvm.loop !107

polly.loop_header797:                             ; preds = %polly.loop_exit779, %polly.loop_exit805
  %indvars.iv925 = phi i64 [ %indvars.iv.next926, %polly.loop_exit805 ], [ 0, %polly.loop_exit779 ]
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_exit805 ], [ 0, %polly.loop_exit779 ]
  %smin927 = call i64 @llvm.smin.i64(i64 %indvars.iv925, i64 -1168)
  %236 = shl nsw i64 %polly.indvar800, 5
  %237 = add nsw i64 %smin927, 1199
  br label %polly.loop_header803

polly.loop_exit805:                               ; preds = %polly.loop_exit811
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %indvars.iv.next926 = add nsw i64 %indvars.iv925, -32
  %exitcond930.not = icmp eq i64 %polly.indvar_next801, 38
  br i1 %exitcond930.not, label %init_array.exit, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_exit811, %polly.loop_header797
  %indvars.iv921 = phi i64 [ %indvars.iv.next922, %polly.loop_exit811 ], [ 0, %polly.loop_header797 ]
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_exit811 ], [ 0, %polly.loop_header797 ]
  %238 = mul nsw i64 %polly.indvar806, -32
  %smin1008 = call i64 @llvm.smin.i64(i64 %238, i64 -968)
  %239 = add nsw i64 %smin1008, 1000
  %smin923 = call i64 @llvm.smin.i64(i64 %indvars.iv921, i64 -968)
  %240 = shl nsw i64 %polly.indvar806, 5
  %241 = add nsw i64 %smin923, 999
  br label %polly.loop_header809

polly.loop_exit811:                               ; preds = %polly.loop_exit817
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %indvars.iv.next922 = add nsw i64 %indvars.iv921, -32
  %exitcond929.not = icmp eq i64 %polly.indvar_next807, 32
  br i1 %exitcond929.not, label %polly.loop_exit805, label %polly.loop_header803

polly.loop_header809:                             ; preds = %polly.loop_exit817, %polly.loop_header803
  %polly.indvar812 = phi i64 [ 0, %polly.loop_header803 ], [ %polly.indvar_next813, %polly.loop_exit817 ]
  %242 = add nuw nsw i64 %polly.indvar812, %236
  %243 = trunc i64 %242 to i32
  %244 = mul nuw nsw i64 %242, 8000
  %min.iters.check1009 = icmp eq i64 %239, 0
  br i1 %min.iters.check1009, label %polly.loop_header815, label %vector.ph1010

vector.ph1010:                                    ; preds = %polly.loop_header809
  %broadcast.splatinsert1019 = insertelement <4 x i64> poison, i64 %240, i32 0
  %broadcast.splat1020 = shufflevector <4 x i64> %broadcast.splatinsert1019, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1021 = insertelement <4 x i32> poison, i32 %243, i32 0
  %broadcast.splat1022 = shufflevector <4 x i32> %broadcast.splatinsert1021, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1007

vector.body1007:                                  ; preds = %vector.body1007, %vector.ph1010
  %index1013 = phi i64 [ 0, %vector.ph1010 ], [ %index.next1014, %vector.body1007 ]
  %vec.ind1017 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1010 ], [ %vec.ind.next1018, %vector.body1007 ]
  %245 = add nuw nsw <4 x i64> %vec.ind1017, %broadcast.splat1020
  %246 = trunc <4 x i64> %245 to <4 x i32>
  %247 = mul <4 x i32> %broadcast.splat1022, %246
  %248 = add <4 x i32> %247, <i32 1, i32 1, i32 1, i32 1>
  %249 = urem <4 x i32> %248, <i32 1200, i32 1200, i32 1200, i32 1200>
  %250 = sitofp <4 x i32> %249 to <4 x double>
  %251 = fmul fast <4 x double> %250, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %252 = extractelement <4 x i64> %245, i32 0
  %253 = shl i64 %252, 3
  %254 = add nuw nsw i64 %253, %244
  %255 = getelementptr i8, i8* %call1, i64 %254
  %256 = bitcast i8* %255 to <4 x double>*
  store <4 x double> %251, <4 x double>* %256, align 8, !alias.scope !101, !noalias !108
  %index.next1014 = add i64 %index1013, 4
  %vec.ind.next1018 = add <4 x i64> %vec.ind1017, <i64 4, i64 4, i64 4, i64 4>
  %257 = icmp eq i64 %index.next1014, %239
  br i1 %257, label %polly.loop_exit817, label %vector.body1007, !llvm.loop !109

polly.loop_exit817:                               ; preds = %vector.body1007, %polly.loop_header815
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %exitcond928.not = icmp eq i64 %polly.indvar812, %237
  br i1 %exitcond928.not, label %polly.loop_exit811, label %polly.loop_header809

polly.loop_header815:                             ; preds = %polly.loop_header809, %polly.loop_header815
  %polly.indvar818 = phi i64 [ %polly.indvar_next819, %polly.loop_header815 ], [ 0, %polly.loop_header809 ]
  %258 = add nuw nsw i64 %polly.indvar818, %240
  %259 = trunc i64 %258 to i32
  %260 = mul i32 %259, %243
  %261 = add i32 %260, 1
  %262 = urem i32 %261, 1200
  %p_conv.i = sitofp i32 %262 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %263 = shl i64 %258, 3
  %264 = add nuw nsw i64 %263, %244
  %scevgep822 = getelementptr i8, i8* %call1, i64 %264
  %scevgep822823 = bitcast i8* %scevgep822 to double*
  store double %p_div.i, double* %scevgep822823, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next819 = add nuw nsw i64 %polly.indvar818, 1
  %exitcond924.not = icmp eq i64 %polly.indvar818, %241
  br i1 %exitcond924.not, label %polly.loop_exit817, label %polly.loop_header815, !llvm.loop !110
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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 32}
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
!39 = distinct !{!39, !12, !23, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !25, !45, !56}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50, !51}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.interchange.enable", i1 true}
!49 = !{!"llvm.loop.interchange.depth", i32 5}
!50 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!51 = !{!"llvm.loop.interchange.followup_interchanged", !52}
!52 = distinct !{!52, !12, !23, !47, !53, !54, !55}
!53 = !{!"llvm.data.pack.enable", i1 true}
!54 = !{!"llvm.data.pack.array", !21}
!55 = !{!"llvm.data.pack.allocate", !"malloc"}
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
!72 = distinct !{!72, !68, !"polly.alias.scope.Packed_MemRef_call2"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !75, !13}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!67, !70, !72}
!77 = !{!67, !71, !72}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call2"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !75, !13}
!86 = !{!78, !81, !83}
!87 = !{!78, !82, !83}
!88 = distinct !{!88, !89, !"polly.alias.scope.MemRef_call"}
!89 = distinct !{!89, !"polly.alias.scope.domain"}
!90 = !{!91, !92, !93}
!91 = distinct !{!91, !89, !"polly.alias.scope.MemRef_call1"}
!92 = distinct !{!92, !89, !"polly.alias.scope.MemRef_call2"}
!93 = distinct !{!93, !89, !"polly.alias.scope.Packed_MemRef_call2"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !75, !13}
!96 = !{!88, !91, !93}
!97 = !{!88, !92, !93}
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
