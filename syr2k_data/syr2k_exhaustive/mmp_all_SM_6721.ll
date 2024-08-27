; ModuleID = 'syr2k_exhaustive/mmp_all_SM_6721.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_6721.c"
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
  %scevgep939 = getelementptr i8, i8* %call2, i64 %12
  %scevgep938 = getelementptr i8, i8* %call2, i64 %11
  %scevgep937 = getelementptr i8, i8* %call1, i64 %12
  %scevgep936 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep936, %scevgep939
  %bound1 = icmp ult i8* %scevgep938, %scevgep937
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
  br i1 %exitcond18.not.i, label %vector.ph943, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph943:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert950 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat951 = shufflevector <4 x i64> %broadcast.splatinsert950, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph943
  %index944 = phi i64 [ 0, %vector.ph943 ], [ %index.next945, %vector.body942 ]
  %vec.ind948 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph943 ], [ %vec.ind.next949, %vector.body942 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind948, %broadcast.splat951
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv7.i, i64 %index944
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next945 = add i64 %index944, 4
  %vec.ind.next949 = add <4 x i64> %vec.ind948, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next945, 1200
  br i1 %40, label %for.inc41.i, label %vector.body942, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body942
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph943, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit805
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start445, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1006 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1006, label %for.body3.i46.preheader1080, label %vector.ph1007

vector.ph1007:                                    ; preds = %for.body3.i46.preheader
  %n.vec1009 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1005

vector.body1005:                                  ; preds = %vector.body1005, %vector.ph1007
  %index1010 = phi i64 [ 0, %vector.ph1007 ], [ %index.next1011, %vector.body1005 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i, i64 %index1010
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1011 = add i64 %index1010, 4
  %46 = icmp eq i64 %index.next1011, %n.vec1009
  br i1 %46, label %middle.block1003, label %vector.body1005, !llvm.loop !18

middle.block1003:                                 ; preds = %vector.body1005
  %cmp.n1013 = icmp eq i64 %indvars.iv21.i, %n.vec1009
  br i1 %cmp.n1013, label %for.inc6.i, label %for.body3.i46.preheader1080

for.body3.i46.preheader1080:                      ; preds = %for.body3.i46.preheader, %middle.block1003
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1009, %middle.block1003 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1080, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1080 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1003, %for.cond1.preheader.i45
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
  %min.iters.check1029 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1029, label %for.body3.i60.preheader1079, label %vector.ph1030

vector.ph1030:                                    ; preds = %for.body3.i60.preheader
  %n.vec1032 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1028

vector.body1028:                                  ; preds = %vector.body1028, %vector.ph1030
  %index1033 = phi i64 [ 0, %vector.ph1030 ], [ %index.next1034, %vector.body1028 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i52, i64 %index1033
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1037 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1037, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1034 = add i64 %index1033, 4
  %57 = icmp eq i64 %index.next1034, %n.vec1032
  br i1 %57, label %middle.block1026, label %vector.body1028, !llvm.loop !54

middle.block1026:                                 ; preds = %vector.body1028
  %cmp.n1036 = icmp eq i64 %indvars.iv21.i52, %n.vec1032
  br i1 %cmp.n1036, label %for.inc6.i63, label %for.body3.i60.preheader1079

for.body3.i60.preheader1079:                      ; preds = %for.body3.i60.preheader, %middle.block1026
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1032, %middle.block1026 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1079, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1079 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1026, %for.cond1.preheader.i54
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
  %min.iters.check1055 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1055, label %for.body3.i99.preheader1078, label %vector.ph1056

vector.ph1056:                                    ; preds = %for.body3.i99.preheader
  %n.vec1058 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1054

vector.body1054:                                  ; preds = %vector.body1054, %vector.ph1056
  %index1059 = phi i64 [ 0, %vector.ph1056 ], [ %index.next1060, %vector.body1054 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i91, i64 %index1059
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1063 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1063, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1060 = add i64 %index1059, 4
  %68 = icmp eq i64 %index.next1060, %n.vec1058
  br i1 %68, label %middle.block1052, label %vector.body1054, !llvm.loop !56

middle.block1052:                                 ; preds = %vector.body1054
  %cmp.n1062 = icmp eq i64 %indvars.iv21.i91, %n.vec1058
  br i1 %cmp.n1062, label %for.inc6.i102, label %for.body3.i99.preheader1078

for.body3.i99.preheader1078:                      ; preds = %for.body3.i99.preheader, %middle.block1052
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1058, %middle.block1052 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1078, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1078 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1052, %for.cond1.preheader.i93
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit223
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1067 = phi i64 [ %indvar.next1068, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1067, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1069 = icmp ult i64 %88, 4
  br i1 %min.iters.check1069, label %polly.loop_header191.preheader, label %vector.ph1070

vector.ph1070:                                    ; preds = %polly.loop_header
  %n.vec1072 = and i64 %88, -4
  br label %vector.body1066

vector.body1066:                                  ; preds = %vector.body1066, %vector.ph1070
  %index1073 = phi i64 [ 0, %vector.ph1070 ], [ %index.next1074, %vector.body1066 ]
  %90 = shl nuw nsw i64 %index1073, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1077 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1077, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1074 = add i64 %index1073, 4
  %95 = icmp eq i64 %index.next1074, %n.vec1072
  br i1 %95, label %middle.block1064, label %vector.body1066, !llvm.loop !68

middle.block1064:                                 ; preds = %vector.body1066
  %cmp.n1076 = icmp eq i64 %88, %n.vec1072
  br i1 %cmp.n1076, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1064
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1072, %middle.block1064 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1064
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1068 = add i64 %indvar1067, 1
  br i1 %exitcond846.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond845.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 1200
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next203, 1000
  br i1 %exitcond844.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 1000
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !66, !noalias !71
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond843.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv838 = phi i64 [ %indvars.iv.next839, %polly.loop_exit223 ], [ 1, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = shl nsw i64 %polly.indvar218, 2
  %98 = mul nsw i64 %polly.indvar218, 32000
  %99 = mul nsw i64 %polly.indvar218, 38400
  %100 = or i64 %97, 1
  %101 = mul nuw nsw i64 %100, 8000
  %102 = mul nuw nsw i64 %100, 9600
  %103 = or i64 %97, 2
  %104 = mul nuw nsw i64 %103, 8000
  %105 = mul nuw nsw i64 %103, 9600
  %106 = or i64 %97, 3
  %107 = mul nuw nsw i64 %106, 8000
  %108 = mul nuw nsw i64 %106, 9600
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next219, 300
  br i1 %exitcond842.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %indvars.iv833 = phi i64 [ %indvars.iv.next834, %polly.loop_exit229 ], [ 0, %polly.loop_header215 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_header215 ]
  %smin835 = call i64 @llvm.smin.i64(i64 %indvars.iv833, i64 -936)
  %109 = add nsw i64 %smin835, 1000
  %110 = shl nsw i64 %polly.indvar224, 6
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit241.3
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next834 = add nsw i64 %indvars.iv833, -64
  %exitcond841.not = icmp eq i64 %polly.indvar_next225, 16
  br i1 %exitcond841.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit241.3, %polly.loop_header221
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit241.3 ], [ %indvars.iv, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit241.3 ], [ 0, %polly.loop_header221 ]
  %111 = shl nsw i64 %polly.indvar230, 2
  %112 = sub nsw i64 %97, %111
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv829, i64 3)
  %polly.loop_guard922 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard922, label %polly.loop_header239.us, label %polly.loop_exit241

polly.loop_header239.us:                          ; preds = %polly.loop_header227, %polly.loop_exit247.loopexit.us
  %polly.indvar242.us = phi i64 [ %polly.indvar_next243.us, %polly.loop_exit247.loopexit.us ], [ 0, %polly.loop_header227 ]
  %113 = add nuw nsw i64 %polly.indvar242.us, %110
  %114 = shl i64 %113, 3
  %polly.access.mul.Packed_MemRef_call2254.us = mul nuw nsw i64 %113, 1200
  %polly.access.add.Packed_MemRef_call2255.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us, %97
  %polly.access.Packed_MemRef_call2256.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us
  %_p_scalar_257.us = load double, double* %polly.access.Packed_MemRef_call2256.us, align 8
  %115 = add nuw nsw i64 %114, %98
  %scevgep262.us = getelementptr i8, i8* %call1, i64 %115
  %scevgep262263.us = bitcast i8* %scevgep262.us to double*
  %_p_scalar_264.us = load double, double* %scevgep262263.us, align 8, !alias.scope !65, !noalias !72
  br label %polly.loop_header245.us

polly.loop_header245.us:                          ; preds = %polly.loop_header239.us, %polly.loop_header245.us
  %polly.indvar248.us = phi i64 [ %polly.indvar_next249.us, %polly.loop_header245.us ], [ 0, %polly.loop_header239.us ]
  %116 = add nuw nsw i64 %polly.indvar248.us, %111
  %117 = mul nuw nsw i64 %116, 8000
  %118 = add nuw nsw i64 %117, %114
  %scevgep251.us = getelementptr i8, i8* %call1, i64 %118
  %scevgep251252.us = bitcast i8* %scevgep251.us to double*
  %_p_scalar_253.us = load double, double* %scevgep251252.us, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.us = fmul fast double %_p_scalar_257.us, %_p_scalar_253.us
  %polly.access.add.Packed_MemRef_call2259.us = add nuw nsw i64 %116, %polly.access.mul.Packed_MemRef_call2254.us
  %polly.access.Packed_MemRef_call2260.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us
  %_p_scalar_261.us = load double, double* %polly.access.Packed_MemRef_call2260.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_264.us, %_p_scalar_261.us
  %119 = shl i64 %116, 3
  %120 = add nuw nsw i64 %119, %99
  %scevgep265.us = getelementptr i8, i8* %call, i64 %120
  %scevgep265266.us = bitcast i8* %scevgep265.us to double*
  %_p_scalar_267.us = load double, double* %scevgep265266.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_267.us
  store double %p_add42.i118.us, double* %scevgep265266.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next249.us = add nuw nsw i64 %polly.indvar248.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar248.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit247.loopexit.us, label %polly.loop_header245.us

polly.loop_exit247.loopexit.us:                   ; preds = %polly.loop_header245.us
  %polly.indvar_next243.us = add nuw nsw i64 %polly.indvar242.us, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next243.us, %109
  br i1 %exitcond836.not, label %polly.loop_exit241, label %polly.loop_header239.us

polly.loop_exit241:                               ; preds = %polly.loop_exit247.loopexit.us, %polly.loop_header227
  %indvars.iv.next832 = or i64 %indvars.iv829, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next832, i64 3)
  %polly.loop_guard.1923 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard.1923, label %polly.loop_header239.us.1, label %polly.loop_exit241.1

polly.start270:                                   ; preds = %kernel_syr2k.exit
  %malloccall272 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header356

polly.exiting271:                                 ; preds = %polly.loop_exit396
  tail call void @free(i8* %malloccall272)
  br label %kernel_syr2k.exit90

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.start270
  %indvar1041 = phi i64 [ %indvar.next1042, %polly.loop_exit364 ], [ 0, %polly.start270 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 1, %polly.start270 ]
  %121 = add i64 %indvar1041, 1
  %122 = mul nuw nsw i64 %polly.indvar359, 9600
  %scevgep368 = getelementptr i8, i8* %call, i64 %122
  %min.iters.check1043 = icmp ult i64 %121, 4
  br i1 %min.iters.check1043, label %polly.loop_header362.preheader, label %vector.ph1044

vector.ph1044:                                    ; preds = %polly.loop_header356
  %n.vec1046 = and i64 %121, -4
  br label %vector.body1040

vector.body1040:                                  ; preds = %vector.body1040, %vector.ph1044
  %index1047 = phi i64 [ 0, %vector.ph1044 ], [ %index.next1048, %vector.body1040 ]
  %123 = shl nuw nsw i64 %index1047, 3
  %124 = getelementptr i8, i8* %scevgep368, i64 %123
  %125 = bitcast i8* %124 to <4 x double>*
  %wide.load1051 = load <4 x double>, <4 x double>* %125, align 8, !alias.scope !73, !noalias !75
  %126 = fmul fast <4 x double> %wide.load1051, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %127 = bitcast i8* %124 to <4 x double>*
  store <4 x double> %126, <4 x double>* %127, align 8, !alias.scope !73, !noalias !75
  %index.next1048 = add i64 %index1047, 4
  %128 = icmp eq i64 %index.next1048, %n.vec1046
  br i1 %128, label %middle.block1038, label %vector.body1040, !llvm.loop !79

middle.block1038:                                 ; preds = %vector.body1040
  %cmp.n1050 = icmp eq i64 %121, %n.vec1046
  br i1 %cmp.n1050, label %polly.loop_exit364, label %polly.loop_header362.preheader

polly.loop_header362.preheader:                   ; preds = %polly.loop_header356, %middle.block1038
  %polly.indvar365.ph = phi i64 [ 0, %polly.loop_header356 ], [ %n.vec1046, %middle.block1038 ]
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_header362, %middle.block1038
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond868.not = icmp eq i64 %polly.indvar_next360, 1200
  %indvar.next1042 = add i64 %indvar1041, 1
  br i1 %exitcond868.not, label %polly.loop_header372.preheader, label %polly.loop_header356

polly.loop_header372.preheader:                   ; preds = %polly.loop_exit364
  %Packed_MemRef_call2273 = bitcast i8* %malloccall272 to double*
  br label %polly.loop_header372

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_header362
  %polly.indvar365 = phi i64 [ %polly.indvar_next366, %polly.loop_header362 ], [ %polly.indvar365.ph, %polly.loop_header362.preheader ]
  %129 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep369 = getelementptr i8, i8* %scevgep368, i64 %129
  %scevgep369370 = bitcast i8* %scevgep369 to double*
  %_p_scalar_371 = load double, double* %scevgep369370, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_371, 1.200000e+00
  store double %p_mul.i57, double* %scevgep369370, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond867.not = icmp eq i64 %polly.indvar_next366, %polly.indvar359
  br i1 %exitcond867.not, label %polly.loop_exit364, label %polly.loop_header362, !llvm.loop !80

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_exit380
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_exit380 ], [ 0, %polly.loop_header372.preheader ]
  %polly.access.mul.Packed_MemRef_call2273 = mul nuw nsw i64 %polly.indvar375, 1200
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_header378
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond866.not = icmp eq i64 %polly.indvar_next376, 1000
  br i1 %exitcond866.not, label %polly.loop_header388, label %polly.loop_header372

polly.loop_header378:                             ; preds = %polly.loop_header378, %polly.loop_header372
  %polly.indvar381 = phi i64 [ 0, %polly.loop_header372 ], [ %polly.indvar_next382, %polly.loop_header378 ]
  %polly.access.mul.call2385 = mul nuw nsw i64 %polly.indvar381, 1000
  %polly.access.add.call2386 = add nuw nsw i64 %polly.access.mul.call2385, %polly.indvar375
  %polly.access.call2387 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2386
  %polly.access.call2387.load = load double, double* %polly.access.call2387, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call2273 = add nuw nsw i64 %polly.indvar381, %polly.access.mul.Packed_MemRef_call2273
  %polly.access.Packed_MemRef_call2273 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273
  store double %polly.access.call2387.load, double* %polly.access.Packed_MemRef_call2273, align 8
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next382, 1200
  br i1 %exitcond865.not, label %polly.loop_exit380, label %polly.loop_header378

polly.loop_header388:                             ; preds = %polly.loop_exit380, %polly.loop_exit396
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit396 ], [ 1, %polly.loop_exit380 ]
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit396 ], [ 0, %polly.loop_exit380 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 0, %polly.loop_exit380 ]
  %130 = shl nsw i64 %polly.indvar391, 2
  %131 = mul nsw i64 %polly.indvar391, 32000
  %132 = mul nsw i64 %polly.indvar391, 38400
  %133 = or i64 %130, 1
  %134 = mul nuw nsw i64 %133, 8000
  %135 = mul nuw nsw i64 %133, 9600
  %136 = or i64 %130, 2
  %137 = mul nuw nsw i64 %136, 8000
  %138 = mul nuw nsw i64 %136, 9600
  %139 = or i64 %130, 3
  %140 = mul nuw nsw i64 %139, 8000
  %141 = mul nuw nsw i64 %139, 9600
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_exit402
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %indvars.iv.next848 = add nuw nsw i64 %indvars.iv847, 4
  %indvars.iv.next861 = add nuw nsw i64 %indvars.iv860, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next392, 300
  br i1 %exitcond864.not, label %polly.exiting271, label %polly.loop_header388

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.loop_header388
  %indvars.iv855 = phi i64 [ %indvars.iv.next856, %polly.loop_exit402 ], [ 0, %polly.loop_header388 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 0, %polly.loop_header388 ]
  %smin857 = call i64 @llvm.smin.i64(i64 %indvars.iv855, i64 -936)
  %142 = add nsw i64 %smin857, 1000
  %143 = shl nsw i64 %polly.indvar397, 6
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_exit414.3
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %indvars.iv.next856 = add nsw i64 %indvars.iv855, -64
  %exitcond863.not = icmp eq i64 %polly.indvar_next398, 16
  br i1 %exitcond863.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header400:                             ; preds = %polly.loop_exit414.3, %polly.loop_header394
  %indvars.iv849 = phi i64 [ %indvars.iv.next850, %polly.loop_exit414.3 ], [ %indvars.iv847, %polly.loop_header394 ]
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit414.3 ], [ 0, %polly.loop_header394 ]
  %144 = shl nsw i64 %polly.indvar403, 2
  %145 = sub nsw i64 %130, %144
  %smin853 = call i64 @llvm.smin.i64(i64 %indvars.iv849, i64 3)
  %polly.loop_guard422926 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard422926, label %polly.loop_header412.us, label %polly.loop_exit414

polly.loop_header412.us:                          ; preds = %polly.loop_header400, %polly.loop_exit421.loopexit.us
  %polly.indvar415.us = phi i64 [ %polly.indvar_next416.us, %polly.loop_exit421.loopexit.us ], [ 0, %polly.loop_header400 ]
  %146 = add nuw nsw i64 %polly.indvar415.us, %143
  %147 = shl i64 %146, 3
  %polly.access.mul.Packed_MemRef_call2273429.us = mul nuw nsw i64 %146, 1200
  %polly.access.add.Packed_MemRef_call2273430.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273429.us, %130
  %polly.access.Packed_MemRef_call2273431.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273430.us
  %_p_scalar_432.us = load double, double* %polly.access.Packed_MemRef_call2273431.us, align 8
  %148 = add nuw nsw i64 %147, %131
  %scevgep437.us = getelementptr i8, i8* %call1, i64 %148
  %scevgep437438.us = bitcast i8* %scevgep437.us to double*
  %_p_scalar_439.us = load double, double* %scevgep437438.us, align 8, !alias.scope !76, !noalias !82
  br label %polly.loop_header419.us

polly.loop_header419.us:                          ; preds = %polly.loop_header412.us, %polly.loop_header419.us
  %polly.indvar423.us = phi i64 [ %polly.indvar_next424.us, %polly.loop_header419.us ], [ 0, %polly.loop_header412.us ]
  %149 = add nuw nsw i64 %polly.indvar423.us, %144
  %150 = mul nuw nsw i64 %149, 8000
  %151 = add nuw nsw i64 %150, %147
  %scevgep426.us = getelementptr i8, i8* %call1, i64 %151
  %scevgep426427.us = bitcast i8* %scevgep426.us to double*
  %_p_scalar_428.us = load double, double* %scevgep426427.us, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.us = fmul fast double %_p_scalar_432.us, %_p_scalar_428.us
  %polly.access.add.Packed_MemRef_call2273434.us = add nuw nsw i64 %149, %polly.access.mul.Packed_MemRef_call2273429.us
  %polly.access.Packed_MemRef_call2273435.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273434.us
  %_p_scalar_436.us = load double, double* %polly.access.Packed_MemRef_call2273435.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_439.us, %_p_scalar_436.us
  %152 = shl i64 %149, 3
  %153 = add nuw nsw i64 %152, %132
  %scevgep440.us = getelementptr i8, i8* %call, i64 %153
  %scevgep440441.us = bitcast i8* %scevgep440.us to double*
  %_p_scalar_442.us = load double, double* %scevgep440441.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_442.us
  store double %p_add42.i79.us, double* %scevgep440441.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next424.us = add nuw nsw i64 %polly.indvar423.us, 1
  %exitcond854.not = icmp eq i64 %polly.indvar423.us, %smin853
  br i1 %exitcond854.not, label %polly.loop_exit421.loopexit.us, label %polly.loop_header419.us

polly.loop_exit421.loopexit.us:                   ; preds = %polly.loop_header419.us
  %polly.indvar_next416.us = add nuw nsw i64 %polly.indvar415.us, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next416.us, %142
  br i1 %exitcond858.not, label %polly.loop_exit414, label %polly.loop_header412.us

polly.loop_exit414:                               ; preds = %polly.loop_exit421.loopexit.us, %polly.loop_header400
  %indvars.iv.next852 = or i64 %indvars.iv849, 1
  %smin853.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next852, i64 3)
  %polly.loop_guard422.1927 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard422.1927, label %polly.loop_header412.us.1, label %polly.loop_exit414.1

polly.start445:                                   ; preds = %init_array.exit
  %malloccall447 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header531

polly.exiting446:                                 ; preds = %polly.loop_exit571
  tail call void @free(i8* %malloccall447)
  br label %kernel_syr2k.exit

polly.loop_header531:                             ; preds = %polly.loop_exit539, %polly.start445
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit539 ], [ 0, %polly.start445 ]
  %polly.indvar534 = phi i64 [ %polly.indvar_next535, %polly.loop_exit539 ], [ 1, %polly.start445 ]
  %154 = add i64 %indvar, 1
  %155 = mul nuw nsw i64 %polly.indvar534, 9600
  %scevgep543 = getelementptr i8, i8* %call, i64 %155
  %min.iters.check1017 = icmp ult i64 %154, 4
  br i1 %min.iters.check1017, label %polly.loop_header537.preheader, label %vector.ph1018

vector.ph1018:                                    ; preds = %polly.loop_header531
  %n.vec1020 = and i64 %154, -4
  br label %vector.body1016

vector.body1016:                                  ; preds = %vector.body1016, %vector.ph1018
  %index1021 = phi i64 [ 0, %vector.ph1018 ], [ %index.next1022, %vector.body1016 ]
  %156 = shl nuw nsw i64 %index1021, 3
  %157 = getelementptr i8, i8* %scevgep543, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load1025 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !83, !noalias !85
  %159 = fmul fast <4 x double> %wide.load1025, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %160 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %159, <4 x double>* %160, align 8, !alias.scope !83, !noalias !85
  %index.next1022 = add i64 %index1021, 4
  %161 = icmp eq i64 %index.next1022, %n.vec1020
  br i1 %161, label %middle.block1014, label %vector.body1016, !llvm.loop !89

middle.block1014:                                 ; preds = %vector.body1016
  %cmp.n1024 = icmp eq i64 %154, %n.vec1020
  br i1 %cmp.n1024, label %polly.loop_exit539, label %polly.loop_header537.preheader

polly.loop_header537.preheader:                   ; preds = %polly.loop_header531, %middle.block1014
  %polly.indvar540.ph = phi i64 [ 0, %polly.loop_header531 ], [ %n.vec1020, %middle.block1014 ]
  br label %polly.loop_header537

polly.loop_exit539:                               ; preds = %polly.loop_header537, %middle.block1014
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %exitcond890.not = icmp eq i64 %polly.indvar_next535, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond890.not, label %polly.loop_header547.preheader, label %polly.loop_header531

polly.loop_header547.preheader:                   ; preds = %polly.loop_exit539
  %Packed_MemRef_call2448 = bitcast i8* %malloccall447 to double*
  br label %polly.loop_header547

polly.loop_header537:                             ; preds = %polly.loop_header537.preheader, %polly.loop_header537
  %polly.indvar540 = phi i64 [ %polly.indvar_next541, %polly.loop_header537 ], [ %polly.indvar540.ph, %polly.loop_header537.preheader ]
  %162 = shl nuw nsw i64 %polly.indvar540, 3
  %scevgep544 = getelementptr i8, i8* %scevgep543, i64 %162
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_546, 1.200000e+00
  store double %p_mul.i, double* %scevgep544545, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %exitcond889.not = icmp eq i64 %polly.indvar_next541, %polly.indvar534
  br i1 %exitcond889.not, label %polly.loop_exit539, label %polly.loop_header537, !llvm.loop !90

polly.loop_header547:                             ; preds = %polly.loop_header547.preheader, %polly.loop_exit555
  %polly.indvar550 = phi i64 [ %polly.indvar_next551, %polly.loop_exit555 ], [ 0, %polly.loop_header547.preheader ]
  %polly.access.mul.Packed_MemRef_call2448 = mul nuw nsw i64 %polly.indvar550, 1200
  br label %polly.loop_header553

polly.loop_exit555:                               ; preds = %polly.loop_header553
  %polly.indvar_next551 = add nuw nsw i64 %polly.indvar550, 1
  %exitcond888.not = icmp eq i64 %polly.indvar_next551, 1000
  br i1 %exitcond888.not, label %polly.loop_header563, label %polly.loop_header547

polly.loop_header553:                             ; preds = %polly.loop_header553, %polly.loop_header547
  %polly.indvar556 = phi i64 [ 0, %polly.loop_header547 ], [ %polly.indvar_next557, %polly.loop_header553 ]
  %polly.access.mul.call2560 = mul nuw nsw i64 %polly.indvar556, 1000
  %polly.access.add.call2561 = add nuw nsw i64 %polly.access.mul.call2560, %polly.indvar550
  %polly.access.call2562 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2561
  %polly.access.call2562.load = load double, double* %polly.access.call2562, align 8, !alias.scope !87, !noalias !91
  %polly.access.add.Packed_MemRef_call2448 = add nuw nsw i64 %polly.indvar556, %polly.access.mul.Packed_MemRef_call2448
  %polly.access.Packed_MemRef_call2448 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448
  store double %polly.access.call2562.load, double* %polly.access.Packed_MemRef_call2448, align 8
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %exitcond887.not = icmp eq i64 %polly.indvar_next557, 1200
  br i1 %exitcond887.not, label %polly.loop_exit555, label %polly.loop_header553

polly.loop_header563:                             ; preds = %polly.loop_exit555, %polly.loop_exit571
  %indvars.iv882 = phi i64 [ %indvars.iv.next883, %polly.loop_exit571 ], [ 1, %polly.loop_exit555 ]
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit571 ], [ 0, %polly.loop_exit555 ]
  %polly.indvar566 = phi i64 [ %polly.indvar_next567, %polly.loop_exit571 ], [ 0, %polly.loop_exit555 ]
  %163 = shl nsw i64 %polly.indvar566, 2
  %164 = mul nsw i64 %polly.indvar566, 32000
  %165 = mul nsw i64 %polly.indvar566, 38400
  %166 = or i64 %163, 1
  %167 = mul nuw nsw i64 %166, 8000
  %168 = mul nuw nsw i64 %166, 9600
  %169 = or i64 %163, 2
  %170 = mul nuw nsw i64 %169, 8000
  %171 = mul nuw nsw i64 %169, 9600
  %172 = or i64 %163, 3
  %173 = mul nuw nsw i64 %172, 8000
  %174 = mul nuw nsw i64 %172, 9600
  br label %polly.loop_header569

polly.loop_exit571:                               ; preds = %polly.loop_exit577
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %indvars.iv.next870 = add nuw nsw i64 %indvars.iv869, 4
  %indvars.iv.next883 = add nuw nsw i64 %indvars.iv882, 1
  %exitcond886.not = icmp eq i64 %polly.indvar_next567, 300
  br i1 %exitcond886.not, label %polly.exiting446, label %polly.loop_header563

polly.loop_header569:                             ; preds = %polly.loop_exit577, %polly.loop_header563
  %indvars.iv877 = phi i64 [ %indvars.iv.next878, %polly.loop_exit577 ], [ 0, %polly.loop_header563 ]
  %polly.indvar572 = phi i64 [ %polly.indvar_next573, %polly.loop_exit577 ], [ 0, %polly.loop_header563 ]
  %smin879 = call i64 @llvm.smin.i64(i64 %indvars.iv877, i64 -936)
  %175 = add nsw i64 %smin879, 1000
  %176 = shl nsw i64 %polly.indvar572, 6
  br label %polly.loop_header575

polly.loop_exit577:                               ; preds = %polly.loop_exit589.3
  %polly.indvar_next573 = add nuw nsw i64 %polly.indvar572, 1
  %indvars.iv.next878 = add nsw i64 %indvars.iv877, -64
  %exitcond885.not = icmp eq i64 %polly.indvar_next573, 16
  br i1 %exitcond885.not, label %polly.loop_exit571, label %polly.loop_header569

polly.loop_header575:                             ; preds = %polly.loop_exit589.3, %polly.loop_header569
  %indvars.iv871 = phi i64 [ %indvars.iv.next872, %polly.loop_exit589.3 ], [ %indvars.iv869, %polly.loop_header569 ]
  %polly.indvar578 = phi i64 [ %polly.indvar_next579, %polly.loop_exit589.3 ], [ 0, %polly.loop_header569 ]
  %177 = shl nsw i64 %polly.indvar578, 2
  %178 = sub nsw i64 %163, %177
  %smin875 = call i64 @llvm.smin.i64(i64 %indvars.iv871, i64 3)
  %polly.loop_guard597930 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard597930, label %polly.loop_header587.us, label %polly.loop_exit589

polly.loop_header587.us:                          ; preds = %polly.loop_header575, %polly.loop_exit596.loopexit.us
  %polly.indvar590.us = phi i64 [ %polly.indvar_next591.us, %polly.loop_exit596.loopexit.us ], [ 0, %polly.loop_header575 ]
  %179 = add nuw nsw i64 %polly.indvar590.us, %176
  %180 = shl i64 %179, 3
  %polly.access.mul.Packed_MemRef_call2448604.us = mul nuw nsw i64 %179, 1200
  %polly.access.add.Packed_MemRef_call2448605.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2448604.us, %163
  %polly.access.Packed_MemRef_call2448606.us = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448605.us
  %_p_scalar_607.us = load double, double* %polly.access.Packed_MemRef_call2448606.us, align 8
  %181 = add nuw nsw i64 %180, %164
  %scevgep612.us = getelementptr i8, i8* %call1, i64 %181
  %scevgep612613.us = bitcast i8* %scevgep612.us to double*
  %_p_scalar_614.us = load double, double* %scevgep612613.us, align 8, !alias.scope !86, !noalias !92
  br label %polly.loop_header594.us

polly.loop_header594.us:                          ; preds = %polly.loop_header587.us, %polly.loop_header594.us
  %polly.indvar598.us = phi i64 [ %polly.indvar_next599.us, %polly.loop_header594.us ], [ 0, %polly.loop_header587.us ]
  %182 = add nuw nsw i64 %polly.indvar598.us, %177
  %183 = mul nuw nsw i64 %182, 8000
  %184 = add nuw nsw i64 %183, %180
  %scevgep601.us = getelementptr i8, i8* %call1, i64 %184
  %scevgep601602.us = bitcast i8* %scevgep601.us to double*
  %_p_scalar_603.us = load double, double* %scevgep601602.us, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.us = fmul fast double %_p_scalar_607.us, %_p_scalar_603.us
  %polly.access.add.Packed_MemRef_call2448609.us = add nuw nsw i64 %182, %polly.access.mul.Packed_MemRef_call2448604.us
  %polly.access.Packed_MemRef_call2448610.us = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448609.us
  %_p_scalar_611.us = load double, double* %polly.access.Packed_MemRef_call2448610.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_614.us, %_p_scalar_611.us
  %185 = shl i64 %182, 3
  %186 = add nuw nsw i64 %185, %165
  %scevgep615.us = getelementptr i8, i8* %call, i64 %186
  %scevgep615616.us = bitcast i8* %scevgep615.us to double*
  %_p_scalar_617.us = load double, double* %scevgep615616.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_617.us
  store double %p_add42.i.us, double* %scevgep615616.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next599.us = add nuw nsw i64 %polly.indvar598.us, 1
  %exitcond876.not = icmp eq i64 %polly.indvar598.us, %smin875
  br i1 %exitcond876.not, label %polly.loop_exit596.loopexit.us, label %polly.loop_header594.us

polly.loop_exit596.loopexit.us:                   ; preds = %polly.loop_header594.us
  %polly.indvar_next591.us = add nuw nsw i64 %polly.indvar590.us, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next591.us, %175
  br i1 %exitcond880.not, label %polly.loop_exit589, label %polly.loop_header587.us

polly.loop_exit589:                               ; preds = %polly.loop_exit596.loopexit.us, %polly.loop_header575
  %indvars.iv.next874 = or i64 %indvars.iv871, 1
  %smin875.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next874, i64 3)
  %polly.loop_guard597.1931 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard597.1931, label %polly.loop_header587.us.1, label %polly.loop_exit589.1

polly.loop_header744:                             ; preds = %entry, %polly.loop_exit752
  %indvars.iv915 = phi i64 [ %indvars.iv.next916, %polly.loop_exit752 ], [ 0, %entry ]
  %polly.indvar747 = phi i64 [ %polly.indvar_next748, %polly.loop_exit752 ], [ 0, %entry ]
  %smin917 = call i64 @llvm.smin.i64(i64 %indvars.iv915, i64 -1168)
  %187 = shl nsw i64 %polly.indvar747, 5
  %188 = add nsw i64 %smin917, 1199
  br label %polly.loop_header750

polly.loop_exit752:                               ; preds = %polly.loop_exit758
  %polly.indvar_next748 = add nuw nsw i64 %polly.indvar747, 1
  %indvars.iv.next916 = add nsw i64 %indvars.iv915, -32
  %exitcond920.not = icmp eq i64 %polly.indvar_next748, 38
  br i1 %exitcond920.not, label %polly.loop_header771, label %polly.loop_header744

polly.loop_header750:                             ; preds = %polly.loop_exit758, %polly.loop_header744
  %indvars.iv911 = phi i64 [ %indvars.iv.next912, %polly.loop_exit758 ], [ 0, %polly.loop_header744 ]
  %polly.indvar753 = phi i64 [ %polly.indvar_next754, %polly.loop_exit758 ], [ 0, %polly.loop_header744 ]
  %189 = mul nsw i64 %polly.indvar753, -32
  %smin955 = call i64 @llvm.smin.i64(i64 %189, i64 -1168)
  %190 = add nsw i64 %smin955, 1200
  %smin913 = call i64 @llvm.smin.i64(i64 %indvars.iv911, i64 -1168)
  %191 = shl nsw i64 %polly.indvar753, 5
  %192 = add nsw i64 %smin913, 1199
  br label %polly.loop_header756

polly.loop_exit758:                               ; preds = %polly.loop_exit764
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %indvars.iv.next912 = add nsw i64 %indvars.iv911, -32
  %exitcond919.not = icmp eq i64 %polly.indvar_next754, 38
  br i1 %exitcond919.not, label %polly.loop_exit752, label %polly.loop_header750

polly.loop_header756:                             ; preds = %polly.loop_exit764, %polly.loop_header750
  %polly.indvar759 = phi i64 [ 0, %polly.loop_header750 ], [ %polly.indvar_next760, %polly.loop_exit764 ]
  %193 = add nuw nsw i64 %polly.indvar759, %187
  %194 = trunc i64 %193 to i32
  %195 = mul nuw nsw i64 %193, 9600
  %min.iters.check = icmp eq i64 %190, 0
  br i1 %min.iters.check, label %polly.loop_header762, label %vector.ph956

vector.ph956:                                     ; preds = %polly.loop_header756
  %broadcast.splatinsert963 = insertelement <4 x i64> poison, i64 %191, i32 0
  %broadcast.splat964 = shufflevector <4 x i64> %broadcast.splatinsert963, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert965 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat966 = shufflevector <4 x i32> %broadcast.splatinsert965, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body954

vector.body954:                                   ; preds = %vector.body954, %vector.ph956
  %index957 = phi i64 [ 0, %vector.ph956 ], [ %index.next958, %vector.body954 ]
  %vec.ind961 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph956 ], [ %vec.ind.next962, %vector.body954 ]
  %196 = add nuw nsw <4 x i64> %vec.ind961, %broadcast.splat964
  %197 = trunc <4 x i64> %196 to <4 x i32>
  %198 = mul <4 x i32> %broadcast.splat966, %197
  %199 = add <4 x i32> %198, <i32 3, i32 3, i32 3, i32 3>
  %200 = urem <4 x i32> %199, <i32 1200, i32 1200, i32 1200, i32 1200>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %203 = extractelement <4 x i64> %196, i32 0
  %204 = shl i64 %203, 3
  %205 = add nuw nsw i64 %204, %195
  %206 = getelementptr i8, i8* %call, i64 %205
  %207 = bitcast i8* %206 to <4 x double>*
  store <4 x double> %202, <4 x double>* %207, align 8, !alias.scope !93, !noalias !95
  %index.next958 = add i64 %index957, 4
  %vec.ind.next962 = add <4 x i64> %vec.ind961, <i64 4, i64 4, i64 4, i64 4>
  %208 = icmp eq i64 %index.next958, %190
  br i1 %208, label %polly.loop_exit764, label %vector.body954, !llvm.loop !98

polly.loop_exit764:                               ; preds = %vector.body954, %polly.loop_header762
  %polly.indvar_next760 = add nuw nsw i64 %polly.indvar759, 1
  %exitcond918.not = icmp eq i64 %polly.indvar759, %188
  br i1 %exitcond918.not, label %polly.loop_exit758, label %polly.loop_header756

polly.loop_header762:                             ; preds = %polly.loop_header756, %polly.loop_header762
  %polly.indvar765 = phi i64 [ %polly.indvar_next766, %polly.loop_header762 ], [ 0, %polly.loop_header756 ]
  %209 = add nuw nsw i64 %polly.indvar765, %191
  %210 = trunc i64 %209 to i32
  %211 = mul i32 %210, %194
  %212 = add i32 %211, 3
  %213 = urem i32 %212, 1200
  %p_conv31.i = sitofp i32 %213 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %214 = shl i64 %209, 3
  %215 = add nuw nsw i64 %214, %195
  %scevgep768 = getelementptr i8, i8* %call, i64 %215
  %scevgep768769 = bitcast i8* %scevgep768 to double*
  store double %p_div33.i, double* %scevgep768769, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next766 = add nuw nsw i64 %polly.indvar765, 1
  %exitcond914.not = icmp eq i64 %polly.indvar765, %192
  br i1 %exitcond914.not, label %polly.loop_exit764, label %polly.loop_header762, !llvm.loop !99

polly.loop_header771:                             ; preds = %polly.loop_exit752, %polly.loop_exit779
  %indvars.iv905 = phi i64 [ %indvars.iv.next906, %polly.loop_exit779 ], [ 0, %polly.loop_exit752 ]
  %polly.indvar774 = phi i64 [ %polly.indvar_next775, %polly.loop_exit779 ], [ 0, %polly.loop_exit752 ]
  %smin907 = call i64 @llvm.smin.i64(i64 %indvars.iv905, i64 -1168)
  %216 = shl nsw i64 %polly.indvar774, 5
  %217 = add nsw i64 %smin907, 1199
  br label %polly.loop_header777

polly.loop_exit779:                               ; preds = %polly.loop_exit785
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %indvars.iv.next906 = add nsw i64 %indvars.iv905, -32
  %exitcond910.not = icmp eq i64 %polly.indvar_next775, 38
  br i1 %exitcond910.not, label %polly.loop_header797, label %polly.loop_header771

polly.loop_header777:                             ; preds = %polly.loop_exit785, %polly.loop_header771
  %indvars.iv901 = phi i64 [ %indvars.iv.next902, %polly.loop_exit785 ], [ 0, %polly.loop_header771 ]
  %polly.indvar780 = phi i64 [ %polly.indvar_next781, %polly.loop_exit785 ], [ 0, %polly.loop_header771 ]
  %218 = mul nsw i64 %polly.indvar780, -32
  %smin970 = call i64 @llvm.smin.i64(i64 %218, i64 -968)
  %219 = add nsw i64 %smin970, 1000
  %smin903 = call i64 @llvm.smin.i64(i64 %indvars.iv901, i64 -968)
  %220 = shl nsw i64 %polly.indvar780, 5
  %221 = add nsw i64 %smin903, 999
  br label %polly.loop_header783

polly.loop_exit785:                               ; preds = %polly.loop_exit791
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %indvars.iv.next902 = add nsw i64 %indvars.iv901, -32
  %exitcond909.not = icmp eq i64 %polly.indvar_next781, 32
  br i1 %exitcond909.not, label %polly.loop_exit779, label %polly.loop_header777

polly.loop_header783:                             ; preds = %polly.loop_exit791, %polly.loop_header777
  %polly.indvar786 = phi i64 [ 0, %polly.loop_header777 ], [ %polly.indvar_next787, %polly.loop_exit791 ]
  %222 = add nuw nsw i64 %polly.indvar786, %216
  %223 = trunc i64 %222 to i32
  %224 = mul nuw nsw i64 %222, 8000
  %min.iters.check971 = icmp eq i64 %219, 0
  br i1 %min.iters.check971, label %polly.loop_header789, label %vector.ph972

vector.ph972:                                     ; preds = %polly.loop_header783
  %broadcast.splatinsert981 = insertelement <4 x i64> poison, i64 %220, i32 0
  %broadcast.splat982 = shufflevector <4 x i64> %broadcast.splatinsert981, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert983 = insertelement <4 x i32> poison, i32 %223, i32 0
  %broadcast.splat984 = shufflevector <4 x i32> %broadcast.splatinsert983, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body969

vector.body969:                                   ; preds = %vector.body969, %vector.ph972
  %index975 = phi i64 [ 0, %vector.ph972 ], [ %index.next976, %vector.body969 ]
  %vec.ind979 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph972 ], [ %vec.ind.next980, %vector.body969 ]
  %225 = add nuw nsw <4 x i64> %vec.ind979, %broadcast.splat982
  %226 = trunc <4 x i64> %225 to <4 x i32>
  %227 = mul <4 x i32> %broadcast.splat984, %226
  %228 = add <4 x i32> %227, <i32 2, i32 2, i32 2, i32 2>
  %229 = urem <4 x i32> %228, <i32 1000, i32 1000, i32 1000, i32 1000>
  %230 = sitofp <4 x i32> %229 to <4 x double>
  %231 = fmul fast <4 x double> %230, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %232 = extractelement <4 x i64> %225, i32 0
  %233 = shl i64 %232, 3
  %234 = add nuw nsw i64 %233, %224
  %235 = getelementptr i8, i8* %call2, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %231, <4 x double>* %236, align 8, !alias.scope !97, !noalias !100
  %index.next976 = add i64 %index975, 4
  %vec.ind.next980 = add <4 x i64> %vec.ind979, <i64 4, i64 4, i64 4, i64 4>
  %237 = icmp eq i64 %index.next976, %219
  br i1 %237, label %polly.loop_exit791, label %vector.body969, !llvm.loop !101

polly.loop_exit791:                               ; preds = %vector.body969, %polly.loop_header789
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %exitcond908.not = icmp eq i64 %polly.indvar786, %217
  br i1 %exitcond908.not, label %polly.loop_exit785, label %polly.loop_header783

polly.loop_header789:                             ; preds = %polly.loop_header783, %polly.loop_header789
  %polly.indvar792 = phi i64 [ %polly.indvar_next793, %polly.loop_header789 ], [ 0, %polly.loop_header783 ]
  %238 = add nuw nsw i64 %polly.indvar792, %220
  %239 = trunc i64 %238 to i32
  %240 = mul i32 %239, %223
  %241 = add i32 %240, 2
  %242 = urem i32 %241, 1000
  %p_conv10.i = sitofp i32 %242 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %243 = shl i64 %238, 3
  %244 = add nuw nsw i64 %243, %224
  %scevgep795 = getelementptr i8, i8* %call2, i64 %244
  %scevgep795796 = bitcast i8* %scevgep795 to double*
  store double %p_div12.i, double* %scevgep795796, align 8, !alias.scope !97, !noalias !100
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %exitcond904.not = icmp eq i64 %polly.indvar792, %221
  br i1 %exitcond904.not, label %polly.loop_exit791, label %polly.loop_header789, !llvm.loop !102

polly.loop_header797:                             ; preds = %polly.loop_exit779, %polly.loop_exit805
  %indvars.iv895 = phi i64 [ %indvars.iv.next896, %polly.loop_exit805 ], [ 0, %polly.loop_exit779 ]
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_exit805 ], [ 0, %polly.loop_exit779 ]
  %smin897 = call i64 @llvm.smin.i64(i64 %indvars.iv895, i64 -1168)
  %245 = shl nsw i64 %polly.indvar800, 5
  %246 = add nsw i64 %smin897, 1199
  br label %polly.loop_header803

polly.loop_exit805:                               ; preds = %polly.loop_exit811
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %indvars.iv.next896 = add nsw i64 %indvars.iv895, -32
  %exitcond900.not = icmp eq i64 %polly.indvar_next801, 38
  br i1 %exitcond900.not, label %init_array.exit, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_exit811, %polly.loop_header797
  %indvars.iv891 = phi i64 [ %indvars.iv.next892, %polly.loop_exit811 ], [ 0, %polly.loop_header797 ]
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_exit811 ], [ 0, %polly.loop_header797 ]
  %247 = mul nsw i64 %polly.indvar806, -32
  %smin988 = call i64 @llvm.smin.i64(i64 %247, i64 -968)
  %248 = add nsw i64 %smin988, 1000
  %smin893 = call i64 @llvm.smin.i64(i64 %indvars.iv891, i64 -968)
  %249 = shl nsw i64 %polly.indvar806, 5
  %250 = add nsw i64 %smin893, 999
  br label %polly.loop_header809

polly.loop_exit811:                               ; preds = %polly.loop_exit817
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %indvars.iv.next892 = add nsw i64 %indvars.iv891, -32
  %exitcond899.not = icmp eq i64 %polly.indvar_next807, 32
  br i1 %exitcond899.not, label %polly.loop_exit805, label %polly.loop_header803

polly.loop_header809:                             ; preds = %polly.loop_exit817, %polly.loop_header803
  %polly.indvar812 = phi i64 [ 0, %polly.loop_header803 ], [ %polly.indvar_next813, %polly.loop_exit817 ]
  %251 = add nuw nsw i64 %polly.indvar812, %245
  %252 = trunc i64 %251 to i32
  %253 = mul nuw nsw i64 %251, 8000
  %min.iters.check989 = icmp eq i64 %248, 0
  br i1 %min.iters.check989, label %polly.loop_header815, label %vector.ph990

vector.ph990:                                     ; preds = %polly.loop_header809
  %broadcast.splatinsert999 = insertelement <4 x i64> poison, i64 %249, i32 0
  %broadcast.splat1000 = shufflevector <4 x i64> %broadcast.splatinsert999, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1001 = insertelement <4 x i32> poison, i32 %252, i32 0
  %broadcast.splat1002 = shufflevector <4 x i32> %broadcast.splatinsert1001, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body987

vector.body987:                                   ; preds = %vector.body987, %vector.ph990
  %index993 = phi i64 [ 0, %vector.ph990 ], [ %index.next994, %vector.body987 ]
  %vec.ind997 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph990 ], [ %vec.ind.next998, %vector.body987 ]
  %254 = add nuw nsw <4 x i64> %vec.ind997, %broadcast.splat1000
  %255 = trunc <4 x i64> %254 to <4 x i32>
  %256 = mul <4 x i32> %broadcast.splat1002, %255
  %257 = add <4 x i32> %256, <i32 1, i32 1, i32 1, i32 1>
  %258 = urem <4 x i32> %257, <i32 1200, i32 1200, i32 1200, i32 1200>
  %259 = sitofp <4 x i32> %258 to <4 x double>
  %260 = fmul fast <4 x double> %259, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %261 = extractelement <4 x i64> %254, i32 0
  %262 = shl i64 %261, 3
  %263 = add nuw nsw i64 %262, %253
  %264 = getelementptr i8, i8* %call1, i64 %263
  %265 = bitcast i8* %264 to <4 x double>*
  store <4 x double> %260, <4 x double>* %265, align 8, !alias.scope !96, !noalias !103
  %index.next994 = add i64 %index993, 4
  %vec.ind.next998 = add <4 x i64> %vec.ind997, <i64 4, i64 4, i64 4, i64 4>
  %266 = icmp eq i64 %index.next994, %248
  br i1 %266, label %polly.loop_exit817, label %vector.body987, !llvm.loop !104

polly.loop_exit817:                               ; preds = %vector.body987, %polly.loop_header815
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %exitcond898.not = icmp eq i64 %polly.indvar812, %246
  br i1 %exitcond898.not, label %polly.loop_exit811, label %polly.loop_header809

polly.loop_header815:                             ; preds = %polly.loop_header809, %polly.loop_header815
  %polly.indvar818 = phi i64 [ %polly.indvar_next819, %polly.loop_header815 ], [ 0, %polly.loop_header809 ]
  %267 = add nuw nsw i64 %polly.indvar818, %249
  %268 = trunc i64 %267 to i32
  %269 = mul i32 %268, %252
  %270 = add i32 %269, 1
  %271 = urem i32 %270, 1200
  %p_conv.i = sitofp i32 %271 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %272 = shl i64 %267, 3
  %273 = add nuw nsw i64 %272, %253
  %scevgep822 = getelementptr i8, i8* %call1, i64 %273
  %scevgep822823 = bitcast i8* %scevgep822 to double*
  store double %p_div.i, double* %scevgep822823, align 8, !alias.scope !96, !noalias !103
  %polly.indvar_next819 = add nuw nsw i64 %polly.indvar818, 1
  %exitcond894.not = icmp eq i64 %polly.indvar818, %250
  br i1 %exitcond894.not, label %polly.loop_exit817, label %polly.loop_header815, !llvm.loop !105

polly.loop_header239.us.1:                        ; preds = %polly.loop_exit241, %polly.loop_exit247.loopexit.us.1
  %polly.indvar242.us.1 = phi i64 [ %polly.indvar_next243.us.1, %polly.loop_exit247.loopexit.us.1 ], [ 0, %polly.loop_exit241 ]
  %274 = add nuw nsw i64 %polly.indvar242.us.1, %110
  %275 = shl i64 %274, 3
  %polly.access.mul.Packed_MemRef_call2254.us.1 = mul nuw nsw i64 %274, 1200
  %polly.access.add.Packed_MemRef_call2255.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us.1, %100
  %polly.access.Packed_MemRef_call2256.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us.1
  %_p_scalar_257.us.1 = load double, double* %polly.access.Packed_MemRef_call2256.us.1, align 8
  %276 = add nuw nsw i64 %275, %101
  %scevgep262.us.1 = getelementptr i8, i8* %call1, i64 %276
  %scevgep262263.us.1 = bitcast i8* %scevgep262.us.1 to double*
  %_p_scalar_264.us.1 = load double, double* %scevgep262263.us.1, align 8, !alias.scope !65, !noalias !72
  br label %polly.loop_header245.us.1

polly.loop_header245.us.1:                        ; preds = %polly.loop_header245.us.1, %polly.loop_header239.us.1
  %polly.indvar248.us.1 = phi i64 [ %polly.indvar_next249.us.1, %polly.loop_header245.us.1 ], [ 0, %polly.loop_header239.us.1 ]
  %277 = add nuw nsw i64 %polly.indvar248.us.1, %111
  %278 = mul nuw nsw i64 %277, 8000
  %279 = add nuw nsw i64 %278, %275
  %scevgep251.us.1 = getelementptr i8, i8* %call1, i64 %279
  %scevgep251252.us.1 = bitcast i8* %scevgep251.us.1 to double*
  %_p_scalar_253.us.1 = load double, double* %scevgep251252.us.1, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_257.us.1, %_p_scalar_253.us.1
  %polly.access.add.Packed_MemRef_call2259.us.1 = add nuw nsw i64 %277, %polly.access.mul.Packed_MemRef_call2254.us.1
  %polly.access.Packed_MemRef_call2260.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us.1
  %_p_scalar_261.us.1 = load double, double* %polly.access.Packed_MemRef_call2260.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_264.us.1, %_p_scalar_261.us.1
  %280 = shl i64 %277, 3
  %281 = add nuw nsw i64 %280, %102
  %scevgep265.us.1 = getelementptr i8, i8* %call, i64 %281
  %scevgep265266.us.1 = bitcast i8* %scevgep265.us.1 to double*
  %_p_scalar_267.us.1 = load double, double* %scevgep265266.us.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_267.us.1
  store double %p_add42.i118.us.1, double* %scevgep265266.us.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next249.us.1 = add nuw nsw i64 %polly.indvar248.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar248.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit247.loopexit.us.1, label %polly.loop_header245.us.1

polly.loop_exit247.loopexit.us.1:                 ; preds = %polly.loop_header245.us.1
  %polly.indvar_next243.us.1 = add nuw nsw i64 %polly.indvar242.us.1, 1
  %exitcond836.1.not = icmp eq i64 %polly.indvar_next243.us.1, %109
  br i1 %exitcond836.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.us.1

polly.loop_exit241.1:                             ; preds = %polly.loop_exit247.loopexit.us.1, %polly.loop_exit241
  %indvars.iv.next832.1 = add nuw nsw i64 %indvars.iv.next832, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next832.1, i64 3)
  %polly.loop_guard.2924 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard.2924, label %polly.loop_header239.us.2, label %polly.loop_exit241.2

polly.loop_header239.us.2:                        ; preds = %polly.loop_exit241.1, %polly.loop_exit247.loopexit.us.2
  %polly.indvar242.us.2 = phi i64 [ %polly.indvar_next243.us.2, %polly.loop_exit247.loopexit.us.2 ], [ 0, %polly.loop_exit241.1 ]
  %282 = add nuw nsw i64 %polly.indvar242.us.2, %110
  %283 = shl i64 %282, 3
  %polly.access.mul.Packed_MemRef_call2254.us.2 = mul nuw nsw i64 %282, 1200
  %polly.access.add.Packed_MemRef_call2255.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us.2, %103
  %polly.access.Packed_MemRef_call2256.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us.2
  %_p_scalar_257.us.2 = load double, double* %polly.access.Packed_MemRef_call2256.us.2, align 8
  %284 = add nuw nsw i64 %283, %104
  %scevgep262.us.2 = getelementptr i8, i8* %call1, i64 %284
  %scevgep262263.us.2 = bitcast i8* %scevgep262.us.2 to double*
  %_p_scalar_264.us.2 = load double, double* %scevgep262263.us.2, align 8, !alias.scope !65, !noalias !72
  br label %polly.loop_header245.us.2

polly.loop_header245.us.2:                        ; preds = %polly.loop_header245.us.2, %polly.loop_header239.us.2
  %polly.indvar248.us.2 = phi i64 [ %polly.indvar_next249.us.2, %polly.loop_header245.us.2 ], [ 0, %polly.loop_header239.us.2 ]
  %285 = add nuw nsw i64 %polly.indvar248.us.2, %111
  %286 = mul nuw nsw i64 %285, 8000
  %287 = add nuw nsw i64 %286, %283
  %scevgep251.us.2 = getelementptr i8, i8* %call1, i64 %287
  %scevgep251252.us.2 = bitcast i8* %scevgep251.us.2 to double*
  %_p_scalar_253.us.2 = load double, double* %scevgep251252.us.2, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_257.us.2, %_p_scalar_253.us.2
  %polly.access.add.Packed_MemRef_call2259.us.2 = add nuw nsw i64 %285, %polly.access.mul.Packed_MemRef_call2254.us.2
  %polly.access.Packed_MemRef_call2260.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us.2
  %_p_scalar_261.us.2 = load double, double* %polly.access.Packed_MemRef_call2260.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_264.us.2, %_p_scalar_261.us.2
  %288 = shl i64 %285, 3
  %289 = add nuw nsw i64 %288, %105
  %scevgep265.us.2 = getelementptr i8, i8* %call, i64 %289
  %scevgep265266.us.2 = bitcast i8* %scevgep265.us.2 to double*
  %_p_scalar_267.us.2 = load double, double* %scevgep265266.us.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_267.us.2
  store double %p_add42.i118.us.2, double* %scevgep265266.us.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next249.us.2 = add nuw nsw i64 %polly.indvar248.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar248.us.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit247.loopexit.us.2, label %polly.loop_header245.us.2

polly.loop_exit247.loopexit.us.2:                 ; preds = %polly.loop_header245.us.2
  %polly.indvar_next243.us.2 = add nuw nsw i64 %polly.indvar242.us.2, 1
  %exitcond836.2.not = icmp eq i64 %polly.indvar_next243.us.2, %109
  br i1 %exitcond836.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.us.2

polly.loop_exit241.2:                             ; preds = %polly.loop_exit247.loopexit.us.2, %polly.loop_exit241.1
  %indvars.iv.next832.2 = or i64 %indvars.iv829, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next832.2, i64 3)
  %polly.loop_guard.3925 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard.3925, label %polly.loop_header239.us.3, label %polly.loop_exit241.3

polly.loop_header239.us.3:                        ; preds = %polly.loop_exit241.2, %polly.loop_exit247.loopexit.us.3
  %polly.indvar242.us.3 = phi i64 [ %polly.indvar_next243.us.3, %polly.loop_exit247.loopexit.us.3 ], [ 0, %polly.loop_exit241.2 ]
  %290 = add nuw nsw i64 %polly.indvar242.us.3, %110
  %291 = shl i64 %290, 3
  %polly.access.mul.Packed_MemRef_call2254.us.3 = mul nuw nsw i64 %290, 1200
  %polly.access.add.Packed_MemRef_call2255.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us.3, %106
  %polly.access.Packed_MemRef_call2256.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us.3
  %_p_scalar_257.us.3 = load double, double* %polly.access.Packed_MemRef_call2256.us.3, align 8
  %292 = add nuw nsw i64 %291, %107
  %scevgep262.us.3 = getelementptr i8, i8* %call1, i64 %292
  %scevgep262263.us.3 = bitcast i8* %scevgep262.us.3 to double*
  %_p_scalar_264.us.3 = load double, double* %scevgep262263.us.3, align 8, !alias.scope !65, !noalias !72
  br label %polly.loop_header245.us.3

polly.loop_header245.us.3:                        ; preds = %polly.loop_header245.us.3, %polly.loop_header239.us.3
  %polly.indvar248.us.3 = phi i64 [ %polly.indvar_next249.us.3, %polly.loop_header245.us.3 ], [ 0, %polly.loop_header239.us.3 ]
  %293 = add nuw nsw i64 %polly.indvar248.us.3, %111
  %294 = mul nuw nsw i64 %293, 8000
  %295 = add nuw nsw i64 %294, %291
  %scevgep251.us.3 = getelementptr i8, i8* %call1, i64 %295
  %scevgep251252.us.3 = bitcast i8* %scevgep251.us.3 to double*
  %_p_scalar_253.us.3 = load double, double* %scevgep251252.us.3, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_257.us.3, %_p_scalar_253.us.3
  %polly.access.add.Packed_MemRef_call2259.us.3 = add nuw nsw i64 %293, %polly.access.mul.Packed_MemRef_call2254.us.3
  %polly.access.Packed_MemRef_call2260.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us.3
  %_p_scalar_261.us.3 = load double, double* %polly.access.Packed_MemRef_call2260.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_264.us.3, %_p_scalar_261.us.3
  %296 = shl i64 %293, 3
  %297 = add nuw nsw i64 %296, %108
  %scevgep265.us.3 = getelementptr i8, i8* %call, i64 %297
  %scevgep265266.us.3 = bitcast i8* %scevgep265.us.3 to double*
  %_p_scalar_267.us.3 = load double, double* %scevgep265266.us.3, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_267.us.3
  store double %p_add42.i118.us.3, double* %scevgep265266.us.3, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next249.us.3 = add nuw nsw i64 %polly.indvar248.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar248.us.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit247.loopexit.us.3, label %polly.loop_header245.us.3

polly.loop_exit247.loopexit.us.3:                 ; preds = %polly.loop_header245.us.3
  %polly.indvar_next243.us.3 = add nuw nsw i64 %polly.indvar242.us.3, 1
  %exitcond836.3.not = icmp eq i64 %polly.indvar_next243.us.3, %109
  br i1 %exitcond836.3.not, label %polly.loop_exit241.3, label %polly.loop_header239.us.3

polly.loop_exit241.3:                             ; preds = %polly.loop_exit247.loopexit.us.3, %polly.loop_exit241.2
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, -4
  %exitcond840.not = icmp eq i64 %polly.indvar_next231, %indvars.iv838
  br i1 %exitcond840.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header412.us.1:                        ; preds = %polly.loop_exit414, %polly.loop_exit421.loopexit.us.1
  %polly.indvar415.us.1 = phi i64 [ %polly.indvar_next416.us.1, %polly.loop_exit421.loopexit.us.1 ], [ 0, %polly.loop_exit414 ]
  %298 = add nuw nsw i64 %polly.indvar415.us.1, %143
  %299 = shl i64 %298, 3
  %polly.access.mul.Packed_MemRef_call2273429.us.1 = mul nuw nsw i64 %298, 1200
  %polly.access.add.Packed_MemRef_call2273430.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273429.us.1, %133
  %polly.access.Packed_MemRef_call2273431.us.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273430.us.1
  %_p_scalar_432.us.1 = load double, double* %polly.access.Packed_MemRef_call2273431.us.1, align 8
  %300 = add nuw nsw i64 %299, %134
  %scevgep437.us.1 = getelementptr i8, i8* %call1, i64 %300
  %scevgep437438.us.1 = bitcast i8* %scevgep437.us.1 to double*
  %_p_scalar_439.us.1 = load double, double* %scevgep437438.us.1, align 8, !alias.scope !76, !noalias !82
  br label %polly.loop_header419.us.1

polly.loop_header419.us.1:                        ; preds = %polly.loop_header419.us.1, %polly.loop_header412.us.1
  %polly.indvar423.us.1 = phi i64 [ %polly.indvar_next424.us.1, %polly.loop_header419.us.1 ], [ 0, %polly.loop_header412.us.1 ]
  %301 = add nuw nsw i64 %polly.indvar423.us.1, %144
  %302 = mul nuw nsw i64 %301, 8000
  %303 = add nuw nsw i64 %302, %299
  %scevgep426.us.1 = getelementptr i8, i8* %call1, i64 %303
  %scevgep426427.us.1 = bitcast i8* %scevgep426.us.1 to double*
  %_p_scalar_428.us.1 = load double, double* %scevgep426427.us.1, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_432.us.1, %_p_scalar_428.us.1
  %polly.access.add.Packed_MemRef_call2273434.us.1 = add nuw nsw i64 %301, %polly.access.mul.Packed_MemRef_call2273429.us.1
  %polly.access.Packed_MemRef_call2273435.us.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273434.us.1
  %_p_scalar_436.us.1 = load double, double* %polly.access.Packed_MemRef_call2273435.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_439.us.1, %_p_scalar_436.us.1
  %304 = shl i64 %301, 3
  %305 = add nuw nsw i64 %304, %135
  %scevgep440.us.1 = getelementptr i8, i8* %call, i64 %305
  %scevgep440441.us.1 = bitcast i8* %scevgep440.us.1 to double*
  %_p_scalar_442.us.1 = load double, double* %scevgep440441.us.1, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_442.us.1
  store double %p_add42.i79.us.1, double* %scevgep440441.us.1, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next424.us.1 = add nuw nsw i64 %polly.indvar423.us.1, 1
  %exitcond854.1.not = icmp eq i64 %polly.indvar423.us.1, %smin853.1
  br i1 %exitcond854.1.not, label %polly.loop_exit421.loopexit.us.1, label %polly.loop_header419.us.1

polly.loop_exit421.loopexit.us.1:                 ; preds = %polly.loop_header419.us.1
  %polly.indvar_next416.us.1 = add nuw nsw i64 %polly.indvar415.us.1, 1
  %exitcond858.1.not = icmp eq i64 %polly.indvar_next416.us.1, %142
  br i1 %exitcond858.1.not, label %polly.loop_exit414.1, label %polly.loop_header412.us.1

polly.loop_exit414.1:                             ; preds = %polly.loop_exit421.loopexit.us.1, %polly.loop_exit414
  %indvars.iv.next852.1 = add nuw nsw i64 %indvars.iv.next852, 1
  %smin853.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next852.1, i64 3)
  %polly.loop_guard422.2928 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard422.2928, label %polly.loop_header412.us.2, label %polly.loop_exit414.2

polly.loop_header412.us.2:                        ; preds = %polly.loop_exit414.1, %polly.loop_exit421.loopexit.us.2
  %polly.indvar415.us.2 = phi i64 [ %polly.indvar_next416.us.2, %polly.loop_exit421.loopexit.us.2 ], [ 0, %polly.loop_exit414.1 ]
  %306 = add nuw nsw i64 %polly.indvar415.us.2, %143
  %307 = shl i64 %306, 3
  %polly.access.mul.Packed_MemRef_call2273429.us.2 = mul nuw nsw i64 %306, 1200
  %polly.access.add.Packed_MemRef_call2273430.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273429.us.2, %136
  %polly.access.Packed_MemRef_call2273431.us.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273430.us.2
  %_p_scalar_432.us.2 = load double, double* %polly.access.Packed_MemRef_call2273431.us.2, align 8
  %308 = add nuw nsw i64 %307, %137
  %scevgep437.us.2 = getelementptr i8, i8* %call1, i64 %308
  %scevgep437438.us.2 = bitcast i8* %scevgep437.us.2 to double*
  %_p_scalar_439.us.2 = load double, double* %scevgep437438.us.2, align 8, !alias.scope !76, !noalias !82
  br label %polly.loop_header419.us.2

polly.loop_header419.us.2:                        ; preds = %polly.loop_header419.us.2, %polly.loop_header412.us.2
  %polly.indvar423.us.2 = phi i64 [ %polly.indvar_next424.us.2, %polly.loop_header419.us.2 ], [ 0, %polly.loop_header412.us.2 ]
  %309 = add nuw nsw i64 %polly.indvar423.us.2, %144
  %310 = mul nuw nsw i64 %309, 8000
  %311 = add nuw nsw i64 %310, %307
  %scevgep426.us.2 = getelementptr i8, i8* %call1, i64 %311
  %scevgep426427.us.2 = bitcast i8* %scevgep426.us.2 to double*
  %_p_scalar_428.us.2 = load double, double* %scevgep426427.us.2, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_432.us.2, %_p_scalar_428.us.2
  %polly.access.add.Packed_MemRef_call2273434.us.2 = add nuw nsw i64 %309, %polly.access.mul.Packed_MemRef_call2273429.us.2
  %polly.access.Packed_MemRef_call2273435.us.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273434.us.2
  %_p_scalar_436.us.2 = load double, double* %polly.access.Packed_MemRef_call2273435.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_439.us.2, %_p_scalar_436.us.2
  %312 = shl i64 %309, 3
  %313 = add nuw nsw i64 %312, %138
  %scevgep440.us.2 = getelementptr i8, i8* %call, i64 %313
  %scevgep440441.us.2 = bitcast i8* %scevgep440.us.2 to double*
  %_p_scalar_442.us.2 = load double, double* %scevgep440441.us.2, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_442.us.2
  store double %p_add42.i79.us.2, double* %scevgep440441.us.2, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next424.us.2 = add nuw nsw i64 %polly.indvar423.us.2, 1
  %exitcond854.2.not = icmp eq i64 %polly.indvar423.us.2, %smin853.2
  br i1 %exitcond854.2.not, label %polly.loop_exit421.loopexit.us.2, label %polly.loop_header419.us.2

polly.loop_exit421.loopexit.us.2:                 ; preds = %polly.loop_header419.us.2
  %polly.indvar_next416.us.2 = add nuw nsw i64 %polly.indvar415.us.2, 1
  %exitcond858.2.not = icmp eq i64 %polly.indvar_next416.us.2, %142
  br i1 %exitcond858.2.not, label %polly.loop_exit414.2, label %polly.loop_header412.us.2

polly.loop_exit414.2:                             ; preds = %polly.loop_exit421.loopexit.us.2, %polly.loop_exit414.1
  %indvars.iv.next852.2 = or i64 %indvars.iv849, 3
  %smin853.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next852.2, i64 3)
  %polly.loop_guard422.3929 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard422.3929, label %polly.loop_header412.us.3, label %polly.loop_exit414.3

polly.loop_header412.us.3:                        ; preds = %polly.loop_exit414.2, %polly.loop_exit421.loopexit.us.3
  %polly.indvar415.us.3 = phi i64 [ %polly.indvar_next416.us.3, %polly.loop_exit421.loopexit.us.3 ], [ 0, %polly.loop_exit414.2 ]
  %314 = add nuw nsw i64 %polly.indvar415.us.3, %143
  %315 = shl i64 %314, 3
  %polly.access.mul.Packed_MemRef_call2273429.us.3 = mul nuw nsw i64 %314, 1200
  %polly.access.add.Packed_MemRef_call2273430.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273429.us.3, %139
  %polly.access.Packed_MemRef_call2273431.us.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273430.us.3
  %_p_scalar_432.us.3 = load double, double* %polly.access.Packed_MemRef_call2273431.us.3, align 8
  %316 = add nuw nsw i64 %315, %140
  %scevgep437.us.3 = getelementptr i8, i8* %call1, i64 %316
  %scevgep437438.us.3 = bitcast i8* %scevgep437.us.3 to double*
  %_p_scalar_439.us.3 = load double, double* %scevgep437438.us.3, align 8, !alias.scope !76, !noalias !82
  br label %polly.loop_header419.us.3

polly.loop_header419.us.3:                        ; preds = %polly.loop_header419.us.3, %polly.loop_header412.us.3
  %polly.indvar423.us.3 = phi i64 [ %polly.indvar_next424.us.3, %polly.loop_header419.us.3 ], [ 0, %polly.loop_header412.us.3 ]
  %317 = add nuw nsw i64 %polly.indvar423.us.3, %144
  %318 = mul nuw nsw i64 %317, 8000
  %319 = add nuw nsw i64 %318, %315
  %scevgep426.us.3 = getelementptr i8, i8* %call1, i64 %319
  %scevgep426427.us.3 = bitcast i8* %scevgep426.us.3 to double*
  %_p_scalar_428.us.3 = load double, double* %scevgep426427.us.3, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_432.us.3, %_p_scalar_428.us.3
  %polly.access.add.Packed_MemRef_call2273434.us.3 = add nuw nsw i64 %317, %polly.access.mul.Packed_MemRef_call2273429.us.3
  %polly.access.Packed_MemRef_call2273435.us.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273434.us.3
  %_p_scalar_436.us.3 = load double, double* %polly.access.Packed_MemRef_call2273435.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_439.us.3, %_p_scalar_436.us.3
  %320 = shl i64 %317, 3
  %321 = add nuw nsw i64 %320, %141
  %scevgep440.us.3 = getelementptr i8, i8* %call, i64 %321
  %scevgep440441.us.3 = bitcast i8* %scevgep440.us.3 to double*
  %_p_scalar_442.us.3 = load double, double* %scevgep440441.us.3, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_442.us.3
  store double %p_add42.i79.us.3, double* %scevgep440441.us.3, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next424.us.3 = add nuw nsw i64 %polly.indvar423.us.3, 1
  %exitcond854.3.not = icmp eq i64 %polly.indvar423.us.3, %smin853.3
  br i1 %exitcond854.3.not, label %polly.loop_exit421.loopexit.us.3, label %polly.loop_header419.us.3

polly.loop_exit421.loopexit.us.3:                 ; preds = %polly.loop_header419.us.3
  %polly.indvar_next416.us.3 = add nuw nsw i64 %polly.indvar415.us.3, 1
  %exitcond858.3.not = icmp eq i64 %polly.indvar_next416.us.3, %142
  br i1 %exitcond858.3.not, label %polly.loop_exit414.3, label %polly.loop_header412.us.3

polly.loop_exit414.3:                             ; preds = %polly.loop_exit421.loopexit.us.3, %polly.loop_exit414.2
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next850 = add nsw i64 %indvars.iv849, -4
  %exitcond862.not = icmp eq i64 %polly.indvar_next404, %indvars.iv860
  br i1 %exitcond862.not, label %polly.loop_exit402, label %polly.loop_header400

polly.loop_header587.us.1:                        ; preds = %polly.loop_exit589, %polly.loop_exit596.loopexit.us.1
  %polly.indvar590.us.1 = phi i64 [ %polly.indvar_next591.us.1, %polly.loop_exit596.loopexit.us.1 ], [ 0, %polly.loop_exit589 ]
  %322 = add nuw nsw i64 %polly.indvar590.us.1, %176
  %323 = shl i64 %322, 3
  %polly.access.mul.Packed_MemRef_call2448604.us.1 = mul nuw nsw i64 %322, 1200
  %polly.access.add.Packed_MemRef_call2448605.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2448604.us.1, %166
  %polly.access.Packed_MemRef_call2448606.us.1 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448605.us.1
  %_p_scalar_607.us.1 = load double, double* %polly.access.Packed_MemRef_call2448606.us.1, align 8
  %324 = add nuw nsw i64 %323, %167
  %scevgep612.us.1 = getelementptr i8, i8* %call1, i64 %324
  %scevgep612613.us.1 = bitcast i8* %scevgep612.us.1 to double*
  %_p_scalar_614.us.1 = load double, double* %scevgep612613.us.1, align 8, !alias.scope !86, !noalias !92
  br label %polly.loop_header594.us.1

polly.loop_header594.us.1:                        ; preds = %polly.loop_header594.us.1, %polly.loop_header587.us.1
  %polly.indvar598.us.1 = phi i64 [ %polly.indvar_next599.us.1, %polly.loop_header594.us.1 ], [ 0, %polly.loop_header587.us.1 ]
  %325 = add nuw nsw i64 %polly.indvar598.us.1, %177
  %326 = mul nuw nsw i64 %325, 8000
  %327 = add nuw nsw i64 %326, %323
  %scevgep601.us.1 = getelementptr i8, i8* %call1, i64 %327
  %scevgep601602.us.1 = bitcast i8* %scevgep601.us.1 to double*
  %_p_scalar_603.us.1 = load double, double* %scevgep601602.us.1, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_607.us.1, %_p_scalar_603.us.1
  %polly.access.add.Packed_MemRef_call2448609.us.1 = add nuw nsw i64 %325, %polly.access.mul.Packed_MemRef_call2448604.us.1
  %polly.access.Packed_MemRef_call2448610.us.1 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448609.us.1
  %_p_scalar_611.us.1 = load double, double* %polly.access.Packed_MemRef_call2448610.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_614.us.1, %_p_scalar_611.us.1
  %328 = shl i64 %325, 3
  %329 = add nuw nsw i64 %328, %168
  %scevgep615.us.1 = getelementptr i8, i8* %call, i64 %329
  %scevgep615616.us.1 = bitcast i8* %scevgep615.us.1 to double*
  %_p_scalar_617.us.1 = load double, double* %scevgep615616.us.1, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_617.us.1
  store double %p_add42.i.us.1, double* %scevgep615616.us.1, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next599.us.1 = add nuw nsw i64 %polly.indvar598.us.1, 1
  %exitcond876.1.not = icmp eq i64 %polly.indvar598.us.1, %smin875.1
  br i1 %exitcond876.1.not, label %polly.loop_exit596.loopexit.us.1, label %polly.loop_header594.us.1

polly.loop_exit596.loopexit.us.1:                 ; preds = %polly.loop_header594.us.1
  %polly.indvar_next591.us.1 = add nuw nsw i64 %polly.indvar590.us.1, 1
  %exitcond880.1.not = icmp eq i64 %polly.indvar_next591.us.1, %175
  br i1 %exitcond880.1.not, label %polly.loop_exit589.1, label %polly.loop_header587.us.1

polly.loop_exit589.1:                             ; preds = %polly.loop_exit596.loopexit.us.1, %polly.loop_exit589
  %indvars.iv.next874.1 = add nuw nsw i64 %indvars.iv.next874, 1
  %smin875.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next874.1, i64 3)
  %polly.loop_guard597.2932 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard597.2932, label %polly.loop_header587.us.2, label %polly.loop_exit589.2

polly.loop_header587.us.2:                        ; preds = %polly.loop_exit589.1, %polly.loop_exit596.loopexit.us.2
  %polly.indvar590.us.2 = phi i64 [ %polly.indvar_next591.us.2, %polly.loop_exit596.loopexit.us.2 ], [ 0, %polly.loop_exit589.1 ]
  %330 = add nuw nsw i64 %polly.indvar590.us.2, %176
  %331 = shl i64 %330, 3
  %polly.access.mul.Packed_MemRef_call2448604.us.2 = mul nuw nsw i64 %330, 1200
  %polly.access.add.Packed_MemRef_call2448605.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2448604.us.2, %169
  %polly.access.Packed_MemRef_call2448606.us.2 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448605.us.2
  %_p_scalar_607.us.2 = load double, double* %polly.access.Packed_MemRef_call2448606.us.2, align 8
  %332 = add nuw nsw i64 %331, %170
  %scevgep612.us.2 = getelementptr i8, i8* %call1, i64 %332
  %scevgep612613.us.2 = bitcast i8* %scevgep612.us.2 to double*
  %_p_scalar_614.us.2 = load double, double* %scevgep612613.us.2, align 8, !alias.scope !86, !noalias !92
  br label %polly.loop_header594.us.2

polly.loop_header594.us.2:                        ; preds = %polly.loop_header594.us.2, %polly.loop_header587.us.2
  %polly.indvar598.us.2 = phi i64 [ %polly.indvar_next599.us.2, %polly.loop_header594.us.2 ], [ 0, %polly.loop_header587.us.2 ]
  %333 = add nuw nsw i64 %polly.indvar598.us.2, %177
  %334 = mul nuw nsw i64 %333, 8000
  %335 = add nuw nsw i64 %334, %331
  %scevgep601.us.2 = getelementptr i8, i8* %call1, i64 %335
  %scevgep601602.us.2 = bitcast i8* %scevgep601.us.2 to double*
  %_p_scalar_603.us.2 = load double, double* %scevgep601602.us.2, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_607.us.2, %_p_scalar_603.us.2
  %polly.access.add.Packed_MemRef_call2448609.us.2 = add nuw nsw i64 %333, %polly.access.mul.Packed_MemRef_call2448604.us.2
  %polly.access.Packed_MemRef_call2448610.us.2 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448609.us.2
  %_p_scalar_611.us.2 = load double, double* %polly.access.Packed_MemRef_call2448610.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_614.us.2, %_p_scalar_611.us.2
  %336 = shl i64 %333, 3
  %337 = add nuw nsw i64 %336, %171
  %scevgep615.us.2 = getelementptr i8, i8* %call, i64 %337
  %scevgep615616.us.2 = bitcast i8* %scevgep615.us.2 to double*
  %_p_scalar_617.us.2 = load double, double* %scevgep615616.us.2, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_617.us.2
  store double %p_add42.i.us.2, double* %scevgep615616.us.2, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next599.us.2 = add nuw nsw i64 %polly.indvar598.us.2, 1
  %exitcond876.2.not = icmp eq i64 %polly.indvar598.us.2, %smin875.2
  br i1 %exitcond876.2.not, label %polly.loop_exit596.loopexit.us.2, label %polly.loop_header594.us.2

polly.loop_exit596.loopexit.us.2:                 ; preds = %polly.loop_header594.us.2
  %polly.indvar_next591.us.2 = add nuw nsw i64 %polly.indvar590.us.2, 1
  %exitcond880.2.not = icmp eq i64 %polly.indvar_next591.us.2, %175
  br i1 %exitcond880.2.not, label %polly.loop_exit589.2, label %polly.loop_header587.us.2

polly.loop_exit589.2:                             ; preds = %polly.loop_exit596.loopexit.us.2, %polly.loop_exit589.1
  %indvars.iv.next874.2 = or i64 %indvars.iv871, 3
  %smin875.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next874.2, i64 3)
  %polly.loop_guard597.3933 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard597.3933, label %polly.loop_header587.us.3, label %polly.loop_exit589.3

polly.loop_header587.us.3:                        ; preds = %polly.loop_exit589.2, %polly.loop_exit596.loopexit.us.3
  %polly.indvar590.us.3 = phi i64 [ %polly.indvar_next591.us.3, %polly.loop_exit596.loopexit.us.3 ], [ 0, %polly.loop_exit589.2 ]
  %338 = add nuw nsw i64 %polly.indvar590.us.3, %176
  %339 = shl i64 %338, 3
  %polly.access.mul.Packed_MemRef_call2448604.us.3 = mul nuw nsw i64 %338, 1200
  %polly.access.add.Packed_MemRef_call2448605.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2448604.us.3, %172
  %polly.access.Packed_MemRef_call2448606.us.3 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448605.us.3
  %_p_scalar_607.us.3 = load double, double* %polly.access.Packed_MemRef_call2448606.us.3, align 8
  %340 = add nuw nsw i64 %339, %173
  %scevgep612.us.3 = getelementptr i8, i8* %call1, i64 %340
  %scevgep612613.us.3 = bitcast i8* %scevgep612.us.3 to double*
  %_p_scalar_614.us.3 = load double, double* %scevgep612613.us.3, align 8, !alias.scope !86, !noalias !92
  br label %polly.loop_header594.us.3

polly.loop_header594.us.3:                        ; preds = %polly.loop_header594.us.3, %polly.loop_header587.us.3
  %polly.indvar598.us.3 = phi i64 [ %polly.indvar_next599.us.3, %polly.loop_header594.us.3 ], [ 0, %polly.loop_header587.us.3 ]
  %341 = add nuw nsw i64 %polly.indvar598.us.3, %177
  %342 = mul nuw nsw i64 %341, 8000
  %343 = add nuw nsw i64 %342, %339
  %scevgep601.us.3 = getelementptr i8, i8* %call1, i64 %343
  %scevgep601602.us.3 = bitcast i8* %scevgep601.us.3 to double*
  %_p_scalar_603.us.3 = load double, double* %scevgep601602.us.3, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_607.us.3, %_p_scalar_603.us.3
  %polly.access.add.Packed_MemRef_call2448609.us.3 = add nuw nsw i64 %341, %polly.access.mul.Packed_MemRef_call2448604.us.3
  %polly.access.Packed_MemRef_call2448610.us.3 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448609.us.3
  %_p_scalar_611.us.3 = load double, double* %polly.access.Packed_MemRef_call2448610.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_614.us.3, %_p_scalar_611.us.3
  %344 = shl i64 %341, 3
  %345 = add nuw nsw i64 %344, %174
  %scevgep615.us.3 = getelementptr i8, i8* %call, i64 %345
  %scevgep615616.us.3 = bitcast i8* %scevgep615.us.3 to double*
  %_p_scalar_617.us.3 = load double, double* %scevgep615616.us.3, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_617.us.3
  store double %p_add42.i.us.3, double* %scevgep615616.us.3, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next599.us.3 = add nuw nsw i64 %polly.indvar598.us.3, 1
  %exitcond876.3.not = icmp eq i64 %polly.indvar598.us.3, %smin875.3
  br i1 %exitcond876.3.not, label %polly.loop_exit596.loopexit.us.3, label %polly.loop_header594.us.3

polly.loop_exit596.loopexit.us.3:                 ; preds = %polly.loop_header594.us.3
  %polly.indvar_next591.us.3 = add nuw nsw i64 %polly.indvar590.us.3, 1
  %exitcond880.3.not = icmp eq i64 %polly.indvar_next591.us.3, %175
  br i1 %exitcond880.3.not, label %polly.loop_exit589.3, label %polly.loop_header587.us.3

polly.loop_exit589.3:                             ; preds = %polly.loop_exit596.loopexit.us.3, %polly.loop_exit589.2
  %polly.indvar_next579 = add nuw nsw i64 %polly.indvar578, 1
  %indvars.iv.next872 = add nsw i64 %indvars.iv871, -4
  %exitcond884.not = icmp eq i64 %polly.indvar_next579, %indvars.iv882
  br i1 %exitcond884.not, label %polly.loop_exit577, label %polly.loop_header575
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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 4}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 64}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !25, !45, !51}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.data.pack.enable", i1 true}
!49 = !{!"llvm.data.pack.array", !21}
!50 = !{!"llvm.data.pack.allocate", !"malloc"}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !53}
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
!64 = !{!65, !66, !67}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !63, !"polly.alias.scope.Packed_MemRef_call2"}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !70, !13}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!62, !65, !67}
!72 = !{!62, !66, !67}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call2"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !70, !13}
!81 = !{!73, !76, !78}
!82 = !{!73, !77, !78}
!83 = distinct !{!83, !84, !"polly.alias.scope.MemRef_call"}
!84 = distinct !{!84, !"polly.alias.scope.domain"}
!85 = !{!86, !87, !88}
!86 = distinct !{!86, !84, !"polly.alias.scope.MemRef_call1"}
!87 = distinct !{!87, !84, !"polly.alias.scope.MemRef_call2"}
!88 = distinct !{!88, !84, !"polly.alias.scope.Packed_MemRef_call2"}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !70, !13}
!91 = !{!83, !86, !88}
!92 = !{!83, !87, !88}
!93 = distinct !{!93, !94, !"polly.alias.scope.MemRef_call"}
!94 = distinct !{!94, !"polly.alias.scope.domain"}
!95 = !{!96, !97}
!96 = distinct !{!96, !94, !"polly.alias.scope.MemRef_call1"}
!97 = distinct !{!97, !94, !"polly.alias.scope.MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !70, !13}
!100 = !{!96, !93}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !70, !13}
!103 = !{!97, !93}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !70, !13}
