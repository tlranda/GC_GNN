; ModuleID = 'syr2k_exhaustive/mmp_all_XL_7456.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_7456.c"
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
  %call772 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1633 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2634 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1633, %call2
  %polly.access.call2653 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2653, %call1
  %2 = or i1 %0, %1
  %polly.access.call673 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call673, %call2
  %4 = icmp ule i8* %polly.access.call2653, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call673, %call1
  %8 = icmp ule i8* %polly.access.call1633, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header746, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep935 = getelementptr i8, i8* %call2, i64 %12
  %scevgep934 = getelementptr i8, i8* %call2, i64 %11
  %scevgep933 = getelementptr i8, i8* %call1, i64 %12
  %scevgep932 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep932, %scevgep935
  %bound1 = icmp ult i8* %scevgep934, %scevgep933
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
  br i1 %exitcond18.not.i, label %vector.ph939, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph939:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert946 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat947 = shufflevector <4 x i64> %broadcast.splatinsert946, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body938

vector.body938:                                   ; preds = %vector.body938, %vector.ph939
  %index940 = phi i64 [ 0, %vector.ph939 ], [ %index.next941, %vector.body938 ]
  %vec.ind944 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph939 ], [ %vec.ind.next945, %vector.body938 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind944, %broadcast.splat947
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv7.i, i64 %index940
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next941 = add i64 %index940, 4
  %vec.ind.next945 = add <4 x i64> %vec.ind944, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next941, 1200
  br i1 %40, label %for.inc41.i, label %vector.body938, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body938
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph939, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit807
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start446, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1002 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1002, label %for.body3.i46.preheader1076, label %vector.ph1003

vector.ph1003:                                    ; preds = %for.body3.i46.preheader
  %n.vec1005 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.body1001, %vector.ph1003
  %index1006 = phi i64 [ 0, %vector.ph1003 ], [ %index.next1007, %vector.body1001 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i, i64 %index1006
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1007 = add i64 %index1006, 4
  %46 = icmp eq i64 %index.next1007, %n.vec1005
  br i1 %46, label %middle.block999, label %vector.body1001, !llvm.loop !18

middle.block999:                                  ; preds = %vector.body1001
  %cmp.n1009 = icmp eq i64 %indvars.iv21.i, %n.vec1005
  br i1 %cmp.n1009, label %for.inc6.i, label %for.body3.i46.preheader1076

for.body3.i46.preheader1076:                      ; preds = %for.body3.i46.preheader, %middle.block999
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1005, %middle.block999 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1076, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1076 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block999, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting447
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start270, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1025 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1025, label %for.body3.i60.preheader1075, label %vector.ph1026

vector.ph1026:                                    ; preds = %for.body3.i60.preheader
  %n.vec1028 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1024

vector.body1024:                                  ; preds = %vector.body1024, %vector.ph1026
  %index1029 = phi i64 [ 0, %vector.ph1026 ], [ %index.next1030, %vector.body1024 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i52, i64 %index1029
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1033 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1033, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1030 = add i64 %index1029, 4
  %57 = icmp eq i64 %index.next1030, %n.vec1028
  br i1 %57, label %middle.block1022, label %vector.body1024, !llvm.loop !54

middle.block1022:                                 ; preds = %vector.body1024
  %cmp.n1032 = icmp eq i64 %indvars.iv21.i52, %n.vec1028
  br i1 %cmp.n1032, label %for.inc6.i63, label %for.body3.i60.preheader1075

for.body3.i60.preheader1075:                      ; preds = %for.body3.i60.preheader, %middle.block1022
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1028, %middle.block1022 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1075, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1075 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1022, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1051 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1051, label %for.body3.i99.preheader1074, label %vector.ph1052

vector.ph1052:                                    ; preds = %for.body3.i99.preheader
  %n.vec1054 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %vector.ph1052
  %index1055 = phi i64 [ 0, %vector.ph1052 ], [ %index.next1056, %vector.body1050 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i91, i64 %index1055
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1059 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1059, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1056 = add i64 %index1055, 4
  %68 = icmp eq i64 %index.next1056, %n.vec1054
  br i1 %68, label %middle.block1048, label %vector.body1050, !llvm.loop !56

middle.block1048:                                 ; preds = %vector.body1050
  %cmp.n1058 = icmp eq i64 %indvars.iv21.i91, %n.vec1054
  br i1 %cmp.n1058, label %for.inc6.i102, label %for.body3.i99.preheader1074

for.body3.i99.preheader1074:                      ; preds = %for.body3.i99.preheader, %middle.block1048
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1054, %middle.block1048 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1074, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1074 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1048, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1063 = phi i64 [ %indvar.next1064, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1063, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1065 = icmp ult i64 %88, 4
  br i1 %min.iters.check1065, label %polly.loop_header191.preheader, label %vector.ph1066

vector.ph1066:                                    ; preds = %polly.loop_header
  %n.vec1068 = and i64 %88, -4
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %vector.ph1066
  %index1069 = phi i64 [ 0, %vector.ph1066 ], [ %index.next1070, %vector.body1062 ]
  %90 = shl nuw nsw i64 %index1069, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1073 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1073, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1070 = add i64 %index1069, 4
  %95 = icmp eq i64 %index.next1070, %n.vec1068
  br i1 %95, label %middle.block1060, label %vector.body1062, !llvm.loop !68

middle.block1060:                                 ; preds = %vector.body1062
  %cmp.n1072 = icmp eq i64 %88, %n.vec1068
  br i1 %cmp.n1072, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1060
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1068, %middle.block1060 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1060
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1064 = add i64 %indvar1063, 1
  br i1 %exitcond849.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond848.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond848.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 1200
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next203, 1000
  br i1 %exitcond847.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 1000
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2634, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !66, !noalias !71
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond846.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv839 = phi i64 [ %indvars.iv.next840, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = lshr i64 %polly.indvar218, 1
  %smin841 = call i64 @llvm.smin.i64(i64 %indvars.iv839, i64 -1136)
  %98 = shl nsw i64 %polly.indvar218, 6
  %99 = add nsw i64 %smin841, 1199
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %indvars.iv.next840 = add nsw i64 %indvars.iv839, -64
  %exitcond845.not = icmp eq i64 %polly.indvar_next219, 19
  br i1 %exitcond845.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit229 ], [ 0, %polly.loop_header215 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_header215 ]
  %smin837 = call i64 @llvm.smin.i64(i64 %indvars.iv835, i64 -936)
  %100 = shl nsw i64 %polly.indvar224, 6
  %101 = add nsw i64 %smin837, 999
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next836 = add nsw i64 %indvars.iv835, -64
  %exitcond844.not = icmp eq i64 %polly.indvar_next225, 16
  br i1 %exitcond844.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv831 = phi i64 [ %indvars.iv.next832, %polly.loop_exit235 ], [ %indvars.iv, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %102 = shl nsw i64 %polly.indvar230, 7
  %103 = sub nsw i64 %98, %102
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next832 = add nsw i64 %indvars.iv831, -128
  %exitcond843.not = icmp eq i64 %polly.indvar230, %97
  br i1 %exitcond843.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %indvars.iv833 = phi i64 [ %indvars.iv.next834, %polly.loop_exit241 ], [ %indvars.iv831, %polly.loop_header227 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ 0, %polly.loop_header227 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv833, i64 127)
  %104 = add nsw i64 %polly.indvar236, %103
  %polly.loop_guard927 = icmp sgt i64 %104, -1
  %105 = add nuw nsw i64 %polly.indvar236, %98
  %106 = mul nuw nsw i64 %105, 8000
  %107 = mul nuw nsw i64 %105, 9600
  br i1 %polly.loop_guard927, label %polly.loop_header239.us, label %polly.loop_exit241

polly.loop_header239.us:                          ; preds = %polly.loop_header233, %polly.loop_exit247.loopexit.us
  %polly.indvar242.us = phi i64 [ %polly.indvar_next243.us, %polly.loop_exit247.loopexit.us ], [ 0, %polly.loop_header233 ]
  %108 = add nuw nsw i64 %polly.indvar242.us, %100
  %109 = shl i64 %108, 3
  %polly.access.mul.Packed_MemRef_call2254.us = mul nuw nsw i64 %108, 1200
  %polly.access.add.Packed_MemRef_call2255.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us, %105
  %polly.access.Packed_MemRef_call2256.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us
  %_p_scalar_257.us = load double, double* %polly.access.Packed_MemRef_call2256.us, align 8
  %110 = add nuw nsw i64 %109, %106
  %scevgep262.us = getelementptr i8, i8* %call1, i64 %110
  %scevgep262263.us = bitcast i8* %scevgep262.us to double*
  %_p_scalar_264.us = load double, double* %scevgep262263.us, align 8, !alias.scope !65, !noalias !72
  br label %polly.loop_header245.us

polly.loop_header245.us:                          ; preds = %polly.loop_header239.us, %polly.loop_header245.us
  %polly.indvar248.us = phi i64 [ %polly.indvar_next249.us, %polly.loop_header245.us ], [ 0, %polly.loop_header239.us ]
  %111 = add nuw nsw i64 %polly.indvar248.us, %102
  %112 = mul nuw nsw i64 %111, 8000
  %113 = add nuw nsw i64 %112, %109
  %scevgep251.us = getelementptr i8, i8* %call1, i64 %113
  %scevgep251252.us = bitcast i8* %scevgep251.us to double*
  %_p_scalar_253.us = load double, double* %scevgep251252.us, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.us = fmul fast double %_p_scalar_257.us, %_p_scalar_253.us
  %polly.access.add.Packed_MemRef_call2259.us = add nuw nsw i64 %111, %polly.access.mul.Packed_MemRef_call2254.us
  %polly.access.Packed_MemRef_call2260.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us
  %_p_scalar_261.us = load double, double* %polly.access.Packed_MemRef_call2260.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_264.us, %_p_scalar_261.us
  %114 = shl i64 %111, 3
  %115 = add nuw nsw i64 %114, %107
  %scevgep265.us = getelementptr i8, i8* %call, i64 %115
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
  %exitcond838.not = icmp eq i64 %polly.indvar242.us, %101
  br i1 %exitcond838.not, label %polly.loop_exit241, label %polly.loop_header239.us

polly.loop_exit241:                               ; preds = %polly.loop_exit247.loopexit.us, %polly.loop_header233
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %indvars.iv.next834 = add nsw i64 %indvars.iv833, 1
  %exitcond842.not = icmp eq i64 %polly.indvar236, %99
  br i1 %exitcond842.not, label %polly.loop_exit235, label %polly.loop_header233

polly.start270:                                   ; preds = %kernel_syr2k.exit
  %malloccall272 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header356

polly.exiting271:                                 ; preds = %polly.loop_exit396
  tail call void @free(i8* %malloccall272)
  br label %kernel_syr2k.exit90

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.start270
  %indvar1037 = phi i64 [ %indvar.next1038, %polly.loop_exit364 ], [ 0, %polly.start270 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 1, %polly.start270 ]
  %116 = add i64 %indvar1037, 1
  %117 = mul nuw nsw i64 %polly.indvar359, 9600
  %scevgep368 = getelementptr i8, i8* %call, i64 %117
  %min.iters.check1039 = icmp ult i64 %116, 4
  br i1 %min.iters.check1039, label %polly.loop_header362.preheader, label %vector.ph1040

vector.ph1040:                                    ; preds = %polly.loop_header356
  %n.vec1042 = and i64 %116, -4
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1040
  %index1043 = phi i64 [ 0, %vector.ph1040 ], [ %index.next1044, %vector.body1036 ]
  %118 = shl nuw nsw i64 %index1043, 3
  %119 = getelementptr i8, i8* %scevgep368, i64 %118
  %120 = bitcast i8* %119 to <4 x double>*
  %wide.load1047 = load <4 x double>, <4 x double>* %120, align 8, !alias.scope !73, !noalias !75
  %121 = fmul fast <4 x double> %wide.load1047, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %122 = bitcast i8* %119 to <4 x double>*
  store <4 x double> %121, <4 x double>* %122, align 8, !alias.scope !73, !noalias !75
  %index.next1044 = add i64 %index1043, 4
  %123 = icmp eq i64 %index.next1044, %n.vec1042
  br i1 %123, label %middle.block1034, label %vector.body1036, !llvm.loop !79

middle.block1034:                                 ; preds = %vector.body1036
  %cmp.n1046 = icmp eq i64 %116, %n.vec1042
  br i1 %cmp.n1046, label %polly.loop_exit364, label %polly.loop_header362.preheader

polly.loop_header362.preheader:                   ; preds = %polly.loop_header356, %middle.block1034
  %polly.indvar365.ph = phi i64 [ 0, %polly.loop_header356 ], [ %n.vec1042, %middle.block1034 ]
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_header362, %middle.block1034
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond872.not = icmp eq i64 %polly.indvar_next360, 1200
  %indvar.next1038 = add i64 %indvar1037, 1
  br i1 %exitcond872.not, label %polly.loop_header372.preheader, label %polly.loop_header356

polly.loop_header372.preheader:                   ; preds = %polly.loop_exit364
  %Packed_MemRef_call2273 = bitcast i8* %malloccall272 to double*
  br label %polly.loop_header372

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_header362
  %polly.indvar365 = phi i64 [ %polly.indvar_next366, %polly.loop_header362 ], [ %polly.indvar365.ph, %polly.loop_header362.preheader ]
  %124 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep369 = getelementptr i8, i8* %scevgep368, i64 %124
  %scevgep369370 = bitcast i8* %scevgep369 to double*
  %_p_scalar_371 = load double, double* %scevgep369370, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_371, 1.200000e+00
  store double %p_mul.i57, double* %scevgep369370, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond871.not = icmp eq i64 %polly.indvar_next366, %polly.indvar359
  br i1 %exitcond871.not, label %polly.loop_exit364, label %polly.loop_header362, !llvm.loop !80

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_exit380
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_exit380 ], [ 0, %polly.loop_header372.preheader ]
  %polly.access.mul.Packed_MemRef_call2273 = mul nuw nsw i64 %polly.indvar375, 1200
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_header378
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond870.not = icmp eq i64 %polly.indvar_next376, 1000
  br i1 %exitcond870.not, label %polly.loop_header388, label %polly.loop_header372

polly.loop_header378:                             ; preds = %polly.loop_header378, %polly.loop_header372
  %polly.indvar381 = phi i64 [ 0, %polly.loop_header372 ], [ %polly.indvar_next382, %polly.loop_header378 ]
  %polly.access.mul.call2385 = mul nuw nsw i64 %polly.indvar381, 1000
  %polly.access.add.call2386 = add nuw nsw i64 %polly.access.mul.call2385, %polly.indvar375
  %polly.access.call2387 = getelementptr double, double* %polly.access.cast.call2634, i64 %polly.access.add.call2386
  %polly.access.call2387.load = load double, double* %polly.access.call2387, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call2273 = add nuw nsw i64 %polly.indvar381, %polly.access.mul.Packed_MemRef_call2273
  %polly.access.Packed_MemRef_call2273 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273
  store double %polly.access.call2387.load, double* %polly.access.Packed_MemRef_call2273, align 8
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %exitcond869.not = icmp eq i64 %polly.indvar_next382, 1200
  br i1 %exitcond869.not, label %polly.loop_exit380, label %polly.loop_header378

polly.loop_header388:                             ; preds = %polly.loop_exit380, %polly.loop_exit396
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %polly.loop_exit396 ], [ 0, %polly.loop_exit380 ]
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %polly.loop_exit396 ], [ 0, %polly.loop_exit380 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 0, %polly.loop_exit380 ]
  %125 = lshr i64 %polly.indvar391, 1
  %smin864 = call i64 @llvm.smin.i64(i64 %indvars.iv862, i64 -1136)
  %126 = shl nsw i64 %polly.indvar391, 6
  %127 = add nsw i64 %smin864, 1199
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_exit403
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %indvars.iv.next851 = add nuw nsw i64 %indvars.iv850, 64
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, -64
  %exitcond868.not = icmp eq i64 %polly.indvar_next392, 19
  br i1 %exitcond868.not, label %polly.exiting271, label %polly.loop_header388

polly.loop_header394:                             ; preds = %polly.loop_exit403, %polly.loop_header388
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit403 ], [ 0, %polly.loop_header388 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit403 ], [ 0, %polly.loop_header388 ]
  %smin860 = call i64 @llvm.smin.i64(i64 %indvars.iv858, i64 -936)
  %128 = shl nsw i64 %polly.indvar397, 6
  %129 = add nsw i64 %smin860, 999
  br label %polly.loop_header401

polly.loop_exit403:                               ; preds = %polly.loop_exit409
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %indvars.iv.next859 = add nsw i64 %indvars.iv858, -64
  %exitcond867.not = icmp eq i64 %polly.indvar_next398, 16
  br i1 %exitcond867.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header401:                             ; preds = %polly.loop_exit409, %polly.loop_header394
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %polly.loop_exit409 ], [ %indvars.iv850, %polly.loop_header394 ]
  %polly.indvar404 = phi i64 [ %polly.indvar_next405, %polly.loop_exit409 ], [ 0, %polly.loop_header394 ]
  %130 = shl nsw i64 %polly.indvar404, 7
  %131 = sub nsw i64 %126, %130
  br label %polly.loop_header407

polly.loop_exit409:                               ; preds = %polly.loop_exit415
  %polly.indvar_next405 = add nuw nsw i64 %polly.indvar404, 1
  %indvars.iv.next853 = add nsw i64 %indvars.iv852, -128
  %exitcond866.not = icmp eq i64 %polly.indvar404, %125
  br i1 %exitcond866.not, label %polly.loop_exit403, label %polly.loop_header401

polly.loop_header407:                             ; preds = %polly.loop_exit415, %polly.loop_header401
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit415 ], [ %indvars.iv852, %polly.loop_header401 ]
  %polly.indvar410 = phi i64 [ %polly.indvar_next411, %polly.loop_exit415 ], [ 0, %polly.loop_header401 ]
  %smin856 = call i64 @llvm.smin.i64(i64 %indvars.iv854, i64 127)
  %132 = add nsw i64 %polly.indvar410, %131
  %polly.loop_guard423928 = icmp sgt i64 %132, -1
  %133 = add nuw nsw i64 %polly.indvar410, %126
  %134 = mul nuw nsw i64 %133, 8000
  %135 = mul nuw nsw i64 %133, 9600
  br i1 %polly.loop_guard423928, label %polly.loop_header413.us, label %polly.loop_exit415

polly.loop_header413.us:                          ; preds = %polly.loop_header407, %polly.loop_exit422.loopexit.us
  %polly.indvar416.us = phi i64 [ %polly.indvar_next417.us, %polly.loop_exit422.loopexit.us ], [ 0, %polly.loop_header407 ]
  %136 = add nuw nsw i64 %polly.indvar416.us, %128
  %137 = shl i64 %136, 3
  %polly.access.mul.Packed_MemRef_call2273430.us = mul nuw nsw i64 %136, 1200
  %polly.access.add.Packed_MemRef_call2273431.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us, %133
  %polly.access.Packed_MemRef_call2273432.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us
  %_p_scalar_433.us = load double, double* %polly.access.Packed_MemRef_call2273432.us, align 8
  %138 = add nuw nsw i64 %137, %134
  %scevgep438.us = getelementptr i8, i8* %call1, i64 %138
  %scevgep438439.us = bitcast i8* %scevgep438.us to double*
  %_p_scalar_440.us = load double, double* %scevgep438439.us, align 8, !alias.scope !76, !noalias !82
  br label %polly.loop_header420.us

polly.loop_header420.us:                          ; preds = %polly.loop_header413.us, %polly.loop_header420.us
  %polly.indvar424.us = phi i64 [ %polly.indvar_next425.us, %polly.loop_header420.us ], [ 0, %polly.loop_header413.us ]
  %139 = add nuw nsw i64 %polly.indvar424.us, %130
  %140 = mul nuw nsw i64 %139, 8000
  %141 = add nuw nsw i64 %140, %137
  %scevgep427.us = getelementptr i8, i8* %call1, i64 %141
  %scevgep427428.us = bitcast i8* %scevgep427.us to double*
  %_p_scalar_429.us = load double, double* %scevgep427428.us, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.us = fmul fast double %_p_scalar_433.us, %_p_scalar_429.us
  %polly.access.add.Packed_MemRef_call2273435.us = add nuw nsw i64 %139, %polly.access.mul.Packed_MemRef_call2273430.us
  %polly.access.Packed_MemRef_call2273436.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us
  %_p_scalar_437.us = load double, double* %polly.access.Packed_MemRef_call2273436.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_440.us, %_p_scalar_437.us
  %142 = shl i64 %139, 3
  %143 = add nuw nsw i64 %142, %135
  %scevgep441.us = getelementptr i8, i8* %call, i64 %143
  %scevgep441442.us = bitcast i8* %scevgep441.us to double*
  %_p_scalar_443.us = load double, double* %scevgep441442.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_443.us
  store double %p_add42.i79.us, double* %scevgep441442.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next425.us = add nuw nsw i64 %polly.indvar424.us, 1
  %exitcond857.not = icmp eq i64 %polly.indvar424.us, %smin856
  br i1 %exitcond857.not, label %polly.loop_exit422.loopexit.us, label %polly.loop_header420.us

polly.loop_exit422.loopexit.us:                   ; preds = %polly.loop_header420.us
  %polly.indvar_next417.us = add nuw nsw i64 %polly.indvar416.us, 1
  %exitcond861.not = icmp eq i64 %polly.indvar416.us, %129
  br i1 %exitcond861.not, label %polly.loop_exit415, label %polly.loop_header413.us

polly.loop_exit415:                               ; preds = %polly.loop_exit422.loopexit.us, %polly.loop_header407
  %polly.indvar_next411 = add nuw nsw i64 %polly.indvar410, 1
  %indvars.iv.next855 = add nsw i64 %indvars.iv854, 1
  %exitcond865.not = icmp eq i64 %polly.indvar410, %127
  br i1 %exitcond865.not, label %polly.loop_exit409, label %polly.loop_header407

polly.start446:                                   ; preds = %init_array.exit
  %malloccall448 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header532

polly.exiting447:                                 ; preds = %polly.loop_exit572
  tail call void @free(i8* %malloccall448)
  br label %kernel_syr2k.exit

polly.loop_header532:                             ; preds = %polly.loop_exit540, %polly.start446
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit540 ], [ 0, %polly.start446 ]
  %polly.indvar535 = phi i64 [ %polly.indvar_next536, %polly.loop_exit540 ], [ 1, %polly.start446 ]
  %144 = add i64 %indvar, 1
  %145 = mul nuw nsw i64 %polly.indvar535, 9600
  %scevgep544 = getelementptr i8, i8* %call, i64 %145
  %min.iters.check1013 = icmp ult i64 %144, 4
  br i1 %min.iters.check1013, label %polly.loop_header538.preheader, label %vector.ph1014

vector.ph1014:                                    ; preds = %polly.loop_header532
  %n.vec1016 = and i64 %144, -4
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %vector.ph1014
  %index1017 = phi i64 [ 0, %vector.ph1014 ], [ %index.next1018, %vector.body1012 ]
  %146 = shl nuw nsw i64 %index1017, 3
  %147 = getelementptr i8, i8* %scevgep544, i64 %146
  %148 = bitcast i8* %147 to <4 x double>*
  %wide.load1021 = load <4 x double>, <4 x double>* %148, align 8, !alias.scope !83, !noalias !85
  %149 = fmul fast <4 x double> %wide.load1021, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %150 = bitcast i8* %147 to <4 x double>*
  store <4 x double> %149, <4 x double>* %150, align 8, !alias.scope !83, !noalias !85
  %index.next1018 = add i64 %index1017, 4
  %151 = icmp eq i64 %index.next1018, %n.vec1016
  br i1 %151, label %middle.block1010, label %vector.body1012, !llvm.loop !89

middle.block1010:                                 ; preds = %vector.body1012
  %cmp.n1020 = icmp eq i64 %144, %n.vec1016
  br i1 %cmp.n1020, label %polly.loop_exit540, label %polly.loop_header538.preheader

polly.loop_header538.preheader:                   ; preds = %polly.loop_header532, %middle.block1010
  %polly.indvar541.ph = phi i64 [ 0, %polly.loop_header532 ], [ %n.vec1016, %middle.block1010 ]
  br label %polly.loop_header538

polly.loop_exit540:                               ; preds = %polly.loop_header538, %middle.block1010
  %polly.indvar_next536 = add nuw nsw i64 %polly.indvar535, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next536, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond895.not, label %polly.loop_header548.preheader, label %polly.loop_header532

polly.loop_header548.preheader:                   ; preds = %polly.loop_exit540
  %Packed_MemRef_call2449 = bitcast i8* %malloccall448 to double*
  br label %polly.loop_header548

polly.loop_header538:                             ; preds = %polly.loop_header538.preheader, %polly.loop_header538
  %polly.indvar541 = phi i64 [ %polly.indvar_next542, %polly.loop_header538 ], [ %polly.indvar541.ph, %polly.loop_header538.preheader ]
  %152 = shl nuw nsw i64 %polly.indvar541, 3
  %scevgep545 = getelementptr i8, i8* %scevgep544, i64 %152
  %scevgep545546 = bitcast i8* %scevgep545 to double*
  %_p_scalar_547 = load double, double* %scevgep545546, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_547, 1.200000e+00
  store double %p_mul.i, double* %scevgep545546, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next542 = add nuw nsw i64 %polly.indvar541, 1
  %exitcond894.not = icmp eq i64 %polly.indvar_next542, %polly.indvar535
  br i1 %exitcond894.not, label %polly.loop_exit540, label %polly.loop_header538, !llvm.loop !90

polly.loop_header548:                             ; preds = %polly.loop_header548.preheader, %polly.loop_exit556
  %polly.indvar551 = phi i64 [ %polly.indvar_next552, %polly.loop_exit556 ], [ 0, %polly.loop_header548.preheader ]
  %polly.access.mul.Packed_MemRef_call2449 = mul nuw nsw i64 %polly.indvar551, 1200
  br label %polly.loop_header554

polly.loop_exit556:                               ; preds = %polly.loop_header554
  %polly.indvar_next552 = add nuw nsw i64 %polly.indvar551, 1
  %exitcond893.not = icmp eq i64 %polly.indvar_next552, 1000
  br i1 %exitcond893.not, label %polly.loop_header564, label %polly.loop_header548

polly.loop_header554:                             ; preds = %polly.loop_header554, %polly.loop_header548
  %polly.indvar557 = phi i64 [ 0, %polly.loop_header548 ], [ %polly.indvar_next558, %polly.loop_header554 ]
  %polly.access.mul.call2561 = mul nuw nsw i64 %polly.indvar557, 1000
  %polly.access.add.call2562 = add nuw nsw i64 %polly.access.mul.call2561, %polly.indvar551
  %polly.access.call2563 = getelementptr double, double* %polly.access.cast.call2634, i64 %polly.access.add.call2562
  %polly.access.call2563.load = load double, double* %polly.access.call2563, align 8, !alias.scope !87, !noalias !91
  %polly.access.add.Packed_MemRef_call2449 = add nuw nsw i64 %polly.indvar557, %polly.access.mul.Packed_MemRef_call2449
  %polly.access.Packed_MemRef_call2449 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449
  store double %polly.access.call2563.load, double* %polly.access.Packed_MemRef_call2449, align 8
  %polly.indvar_next558 = add nuw nsw i64 %polly.indvar557, 1
  %exitcond892.not = icmp eq i64 %polly.indvar_next558, 1200
  br i1 %exitcond892.not, label %polly.loop_exit556, label %polly.loop_header554

polly.loop_header564:                             ; preds = %polly.loop_exit556, %polly.loop_exit572
  %indvars.iv885 = phi i64 [ %indvars.iv.next886, %polly.loop_exit572 ], [ 0, %polly.loop_exit556 ]
  %indvars.iv873 = phi i64 [ %indvars.iv.next874, %polly.loop_exit572 ], [ 0, %polly.loop_exit556 ]
  %polly.indvar567 = phi i64 [ %polly.indvar_next568, %polly.loop_exit572 ], [ 0, %polly.loop_exit556 ]
  %153 = lshr i64 %polly.indvar567, 1
  %smin887 = call i64 @llvm.smin.i64(i64 %indvars.iv885, i64 -1136)
  %154 = shl nsw i64 %polly.indvar567, 6
  %155 = add nsw i64 %smin887, 1199
  br label %polly.loop_header570

polly.loop_exit572:                               ; preds = %polly.loop_exit579
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %indvars.iv.next874 = add nuw nsw i64 %indvars.iv873, 64
  %indvars.iv.next886 = add nsw i64 %indvars.iv885, -64
  %exitcond891.not = icmp eq i64 %polly.indvar_next568, 19
  br i1 %exitcond891.not, label %polly.exiting447, label %polly.loop_header564

polly.loop_header570:                             ; preds = %polly.loop_exit579, %polly.loop_header564
  %indvars.iv881 = phi i64 [ %indvars.iv.next882, %polly.loop_exit579 ], [ 0, %polly.loop_header564 ]
  %polly.indvar573 = phi i64 [ %polly.indvar_next574, %polly.loop_exit579 ], [ 0, %polly.loop_header564 ]
  %smin883 = call i64 @llvm.smin.i64(i64 %indvars.iv881, i64 -936)
  %156 = shl nsw i64 %polly.indvar573, 6
  %157 = add nsw i64 %smin883, 999
  br label %polly.loop_header577

polly.loop_exit579:                               ; preds = %polly.loop_exit585
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %indvars.iv.next882 = add nsw i64 %indvars.iv881, -64
  %exitcond890.not = icmp eq i64 %polly.indvar_next574, 16
  br i1 %exitcond890.not, label %polly.loop_exit572, label %polly.loop_header570

polly.loop_header577:                             ; preds = %polly.loop_exit585, %polly.loop_header570
  %indvars.iv875 = phi i64 [ %indvars.iv.next876, %polly.loop_exit585 ], [ %indvars.iv873, %polly.loop_header570 ]
  %polly.indvar580 = phi i64 [ %polly.indvar_next581, %polly.loop_exit585 ], [ 0, %polly.loop_header570 ]
  %158 = shl nsw i64 %polly.indvar580, 7
  %159 = sub nsw i64 %154, %158
  br label %polly.loop_header583

polly.loop_exit585:                               ; preds = %polly.loop_exit591
  %polly.indvar_next581 = add nuw nsw i64 %polly.indvar580, 1
  %indvars.iv.next876 = add nsw i64 %indvars.iv875, -128
  %exitcond889.not = icmp eq i64 %polly.indvar580, %153
  br i1 %exitcond889.not, label %polly.loop_exit579, label %polly.loop_header577

polly.loop_header583:                             ; preds = %polly.loop_exit591, %polly.loop_header577
  %indvars.iv877 = phi i64 [ %indvars.iv.next878, %polly.loop_exit591 ], [ %indvars.iv875, %polly.loop_header577 ]
  %polly.indvar586 = phi i64 [ %polly.indvar_next587, %polly.loop_exit591 ], [ 0, %polly.loop_header577 ]
  %smin879 = call i64 @llvm.smin.i64(i64 %indvars.iv877, i64 127)
  %160 = add nsw i64 %polly.indvar586, %159
  %polly.loop_guard599929 = icmp sgt i64 %160, -1
  %161 = add nuw nsw i64 %polly.indvar586, %154
  %162 = mul nuw nsw i64 %161, 8000
  %163 = mul nuw nsw i64 %161, 9600
  br i1 %polly.loop_guard599929, label %polly.loop_header589.us, label %polly.loop_exit591

polly.loop_header589.us:                          ; preds = %polly.loop_header583, %polly.loop_exit598.loopexit.us
  %polly.indvar592.us = phi i64 [ %polly.indvar_next593.us, %polly.loop_exit598.loopexit.us ], [ 0, %polly.loop_header583 ]
  %164 = add nuw nsw i64 %polly.indvar592.us, %156
  %165 = shl i64 %164, 3
  %polly.access.mul.Packed_MemRef_call2449606.us = mul nuw nsw i64 %164, 1200
  %polly.access.add.Packed_MemRef_call2449607.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us, %161
  %polly.access.Packed_MemRef_call2449608.us = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us
  %_p_scalar_609.us = load double, double* %polly.access.Packed_MemRef_call2449608.us, align 8
  %166 = add nuw nsw i64 %165, %162
  %scevgep614.us = getelementptr i8, i8* %call1, i64 %166
  %scevgep614615.us = bitcast i8* %scevgep614.us to double*
  %_p_scalar_616.us = load double, double* %scevgep614615.us, align 8, !alias.scope !86, !noalias !92
  br label %polly.loop_header596.us

polly.loop_header596.us:                          ; preds = %polly.loop_header589.us, %polly.loop_header596.us
  %polly.indvar600.us = phi i64 [ %polly.indvar_next601.us, %polly.loop_header596.us ], [ 0, %polly.loop_header589.us ]
  %167 = add nuw nsw i64 %polly.indvar600.us, %158
  %168 = mul nuw nsw i64 %167, 8000
  %169 = add nuw nsw i64 %168, %165
  %scevgep603.us = getelementptr i8, i8* %call1, i64 %169
  %scevgep603604.us = bitcast i8* %scevgep603.us to double*
  %_p_scalar_605.us = load double, double* %scevgep603604.us, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.us = fmul fast double %_p_scalar_609.us, %_p_scalar_605.us
  %polly.access.add.Packed_MemRef_call2449611.us = add nuw nsw i64 %167, %polly.access.mul.Packed_MemRef_call2449606.us
  %polly.access.Packed_MemRef_call2449612.us = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us
  %_p_scalar_613.us = load double, double* %polly.access.Packed_MemRef_call2449612.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_616.us, %_p_scalar_613.us
  %170 = shl i64 %167, 3
  %171 = add nuw nsw i64 %170, %163
  %scevgep617.us = getelementptr i8, i8* %call, i64 %171
  %scevgep617618.us = bitcast i8* %scevgep617.us to double*
  %_p_scalar_619.us = load double, double* %scevgep617618.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_619.us
  store double %p_add42.i.us, double* %scevgep617618.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next601.us = add nuw nsw i64 %polly.indvar600.us, 1
  %exitcond880.not = icmp eq i64 %polly.indvar600.us, %smin879
  br i1 %exitcond880.not, label %polly.loop_exit598.loopexit.us, label %polly.loop_header596.us

polly.loop_exit598.loopexit.us:                   ; preds = %polly.loop_header596.us
  %polly.indvar_next593.us = add nuw nsw i64 %polly.indvar592.us, 1
  %exitcond884.not = icmp eq i64 %polly.indvar592.us, %157
  br i1 %exitcond884.not, label %polly.loop_exit591, label %polly.loop_header589.us

polly.loop_exit591:                               ; preds = %polly.loop_exit598.loopexit.us, %polly.loop_header583
  %polly.indvar_next587 = add nuw nsw i64 %polly.indvar586, 1
  %indvars.iv.next878 = add nsw i64 %indvars.iv877, 1
  %exitcond888.not = icmp eq i64 %polly.indvar586, %155
  br i1 %exitcond888.not, label %polly.loop_exit585, label %polly.loop_header583

polly.loop_header746:                             ; preds = %entry, %polly.loop_exit754
  %indvars.iv920 = phi i64 [ %indvars.iv.next921, %polly.loop_exit754 ], [ 0, %entry ]
  %polly.indvar749 = phi i64 [ %polly.indvar_next750, %polly.loop_exit754 ], [ 0, %entry ]
  %smin922 = call i64 @llvm.smin.i64(i64 %indvars.iv920, i64 -1168)
  %172 = shl nsw i64 %polly.indvar749, 5
  %173 = add nsw i64 %smin922, 1199
  br label %polly.loop_header752

polly.loop_exit754:                               ; preds = %polly.loop_exit760
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %indvars.iv.next921 = add nsw i64 %indvars.iv920, -32
  %exitcond925.not = icmp eq i64 %polly.indvar_next750, 38
  br i1 %exitcond925.not, label %polly.loop_header773, label %polly.loop_header746

polly.loop_header752:                             ; preds = %polly.loop_exit760, %polly.loop_header746
  %indvars.iv916 = phi i64 [ %indvars.iv.next917, %polly.loop_exit760 ], [ 0, %polly.loop_header746 ]
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %polly.loop_header746 ]
  %174 = mul nsw i64 %polly.indvar755, -32
  %smin951 = call i64 @llvm.smin.i64(i64 %174, i64 -1168)
  %175 = add nsw i64 %smin951, 1200
  %smin918 = call i64 @llvm.smin.i64(i64 %indvars.iv916, i64 -1168)
  %176 = shl nsw i64 %polly.indvar755, 5
  %177 = add nsw i64 %smin918, 1199
  br label %polly.loop_header758

polly.loop_exit760:                               ; preds = %polly.loop_exit766
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %indvars.iv.next917 = add nsw i64 %indvars.iv916, -32
  %exitcond924.not = icmp eq i64 %polly.indvar_next756, 38
  br i1 %exitcond924.not, label %polly.loop_exit754, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_exit766, %polly.loop_header752
  %polly.indvar761 = phi i64 [ 0, %polly.loop_header752 ], [ %polly.indvar_next762, %polly.loop_exit766 ]
  %178 = add nuw nsw i64 %polly.indvar761, %172
  %179 = trunc i64 %178 to i32
  %180 = mul nuw nsw i64 %178, 9600
  %min.iters.check = icmp eq i64 %175, 0
  br i1 %min.iters.check, label %polly.loop_header764, label %vector.ph952

vector.ph952:                                     ; preds = %polly.loop_header758
  %broadcast.splatinsert959 = insertelement <4 x i64> poison, i64 %176, i32 0
  %broadcast.splat960 = shufflevector <4 x i64> %broadcast.splatinsert959, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert961 = insertelement <4 x i32> poison, i32 %179, i32 0
  %broadcast.splat962 = shufflevector <4 x i32> %broadcast.splatinsert961, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body950

vector.body950:                                   ; preds = %vector.body950, %vector.ph952
  %index953 = phi i64 [ 0, %vector.ph952 ], [ %index.next954, %vector.body950 ]
  %vec.ind957 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph952 ], [ %vec.ind.next958, %vector.body950 ]
  %181 = add nuw nsw <4 x i64> %vec.ind957, %broadcast.splat960
  %182 = trunc <4 x i64> %181 to <4 x i32>
  %183 = mul <4 x i32> %broadcast.splat962, %182
  %184 = add <4 x i32> %183, <i32 3, i32 3, i32 3, i32 3>
  %185 = urem <4 x i32> %184, <i32 1200, i32 1200, i32 1200, i32 1200>
  %186 = sitofp <4 x i32> %185 to <4 x double>
  %187 = fmul fast <4 x double> %186, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %188 = extractelement <4 x i64> %181, i32 0
  %189 = shl i64 %188, 3
  %190 = add nuw nsw i64 %189, %180
  %191 = getelementptr i8, i8* %call, i64 %190
  %192 = bitcast i8* %191 to <4 x double>*
  store <4 x double> %187, <4 x double>* %192, align 8, !alias.scope !93, !noalias !95
  %index.next954 = add i64 %index953, 4
  %vec.ind.next958 = add <4 x i64> %vec.ind957, <i64 4, i64 4, i64 4, i64 4>
  %193 = icmp eq i64 %index.next954, %175
  br i1 %193, label %polly.loop_exit766, label %vector.body950, !llvm.loop !98

polly.loop_exit766:                               ; preds = %vector.body950, %polly.loop_header764
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %exitcond923.not = icmp eq i64 %polly.indvar761, %173
  br i1 %exitcond923.not, label %polly.loop_exit760, label %polly.loop_header758

polly.loop_header764:                             ; preds = %polly.loop_header758, %polly.loop_header764
  %polly.indvar767 = phi i64 [ %polly.indvar_next768, %polly.loop_header764 ], [ 0, %polly.loop_header758 ]
  %194 = add nuw nsw i64 %polly.indvar767, %176
  %195 = trunc i64 %194 to i32
  %196 = mul i32 %195, %179
  %197 = add i32 %196, 3
  %198 = urem i32 %197, 1200
  %p_conv31.i = sitofp i32 %198 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %199 = shl i64 %194, 3
  %200 = add nuw nsw i64 %199, %180
  %scevgep770 = getelementptr i8, i8* %call, i64 %200
  %scevgep770771 = bitcast i8* %scevgep770 to double*
  store double %p_div33.i, double* %scevgep770771, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next768 = add nuw nsw i64 %polly.indvar767, 1
  %exitcond919.not = icmp eq i64 %polly.indvar767, %177
  br i1 %exitcond919.not, label %polly.loop_exit766, label %polly.loop_header764, !llvm.loop !99

polly.loop_header773:                             ; preds = %polly.loop_exit754, %polly.loop_exit781
  %indvars.iv910 = phi i64 [ %indvars.iv.next911, %polly.loop_exit781 ], [ 0, %polly.loop_exit754 ]
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_exit754 ]
  %smin912 = call i64 @llvm.smin.i64(i64 %indvars.iv910, i64 -1168)
  %201 = shl nsw i64 %polly.indvar776, 5
  %202 = add nsw i64 %smin912, 1199
  br label %polly.loop_header779

polly.loop_exit781:                               ; preds = %polly.loop_exit787
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %indvars.iv.next911 = add nsw i64 %indvars.iv910, -32
  %exitcond915.not = icmp eq i64 %polly.indvar_next777, 38
  br i1 %exitcond915.not, label %polly.loop_header799, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_exit787, %polly.loop_header773
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %polly.loop_exit787 ], [ 0, %polly.loop_header773 ]
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %polly.loop_header773 ]
  %203 = mul nsw i64 %polly.indvar782, -32
  %smin966 = call i64 @llvm.smin.i64(i64 %203, i64 -968)
  %204 = add nsw i64 %smin966, 1000
  %smin908 = call i64 @llvm.smin.i64(i64 %indvars.iv906, i64 -968)
  %205 = shl nsw i64 %polly.indvar782, 5
  %206 = add nsw i64 %smin908, 999
  br label %polly.loop_header785

polly.loop_exit787:                               ; preds = %polly.loop_exit793
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %indvars.iv.next907 = add nsw i64 %indvars.iv906, -32
  %exitcond914.not = icmp eq i64 %polly.indvar_next783, 32
  br i1 %exitcond914.not, label %polly.loop_exit781, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_exit793, %polly.loop_header779
  %polly.indvar788 = phi i64 [ 0, %polly.loop_header779 ], [ %polly.indvar_next789, %polly.loop_exit793 ]
  %207 = add nuw nsw i64 %polly.indvar788, %201
  %208 = trunc i64 %207 to i32
  %209 = mul nuw nsw i64 %207, 8000
  %min.iters.check967 = icmp eq i64 %204, 0
  br i1 %min.iters.check967, label %polly.loop_header791, label %vector.ph968

vector.ph968:                                     ; preds = %polly.loop_header785
  %broadcast.splatinsert977 = insertelement <4 x i64> poison, i64 %205, i32 0
  %broadcast.splat978 = shufflevector <4 x i64> %broadcast.splatinsert977, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert979 = insertelement <4 x i32> poison, i32 %208, i32 0
  %broadcast.splat980 = shufflevector <4 x i32> %broadcast.splatinsert979, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %vector.ph968
  %index971 = phi i64 [ 0, %vector.ph968 ], [ %index.next972, %vector.body965 ]
  %vec.ind975 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph968 ], [ %vec.ind.next976, %vector.body965 ]
  %210 = add nuw nsw <4 x i64> %vec.ind975, %broadcast.splat978
  %211 = trunc <4 x i64> %210 to <4 x i32>
  %212 = mul <4 x i32> %broadcast.splat980, %211
  %213 = add <4 x i32> %212, <i32 2, i32 2, i32 2, i32 2>
  %214 = urem <4 x i32> %213, <i32 1000, i32 1000, i32 1000, i32 1000>
  %215 = sitofp <4 x i32> %214 to <4 x double>
  %216 = fmul fast <4 x double> %215, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %217 = extractelement <4 x i64> %210, i32 0
  %218 = shl i64 %217, 3
  %219 = add nuw nsw i64 %218, %209
  %220 = getelementptr i8, i8* %call2, i64 %219
  %221 = bitcast i8* %220 to <4 x double>*
  store <4 x double> %216, <4 x double>* %221, align 8, !alias.scope !97, !noalias !100
  %index.next972 = add i64 %index971, 4
  %vec.ind.next976 = add <4 x i64> %vec.ind975, <i64 4, i64 4, i64 4, i64 4>
  %222 = icmp eq i64 %index.next972, %204
  br i1 %222, label %polly.loop_exit793, label %vector.body965, !llvm.loop !101

polly.loop_exit793:                               ; preds = %vector.body965, %polly.loop_header791
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond913.not = icmp eq i64 %polly.indvar788, %202
  br i1 %exitcond913.not, label %polly.loop_exit787, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_header785, %polly.loop_header791
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_header791 ], [ 0, %polly.loop_header785 ]
  %223 = add nuw nsw i64 %polly.indvar794, %205
  %224 = trunc i64 %223 to i32
  %225 = mul i32 %224, %208
  %226 = add i32 %225, 2
  %227 = urem i32 %226, 1000
  %p_conv10.i = sitofp i32 %227 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %228 = shl i64 %223, 3
  %229 = add nuw nsw i64 %228, %209
  %scevgep797 = getelementptr i8, i8* %call2, i64 %229
  %scevgep797798 = bitcast i8* %scevgep797 to double*
  store double %p_div12.i, double* %scevgep797798, align 8, !alias.scope !97, !noalias !100
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond909.not = icmp eq i64 %polly.indvar794, %206
  br i1 %exitcond909.not, label %polly.loop_exit793, label %polly.loop_header791, !llvm.loop !102

polly.loop_header799:                             ; preds = %polly.loop_exit781, %polly.loop_exit807
  %indvars.iv900 = phi i64 [ %indvars.iv.next901, %polly.loop_exit807 ], [ 0, %polly.loop_exit781 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_exit781 ]
  %smin902 = call i64 @llvm.smin.i64(i64 %indvars.iv900, i64 -1168)
  %230 = shl nsw i64 %polly.indvar802, 5
  %231 = add nsw i64 %smin902, 1199
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next901 = add nsw i64 %indvars.iv900, -32
  %exitcond905.not = icmp eq i64 %polly.indvar_next803, 38
  br i1 %exitcond905.not, label %init_array.exit, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %indvars.iv896 = phi i64 [ %indvars.iv.next897, %polly.loop_exit813 ], [ 0, %polly.loop_header799 ]
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_header799 ]
  %232 = mul nsw i64 %polly.indvar808, -32
  %smin984 = call i64 @llvm.smin.i64(i64 %232, i64 -968)
  %233 = add nsw i64 %smin984, 1000
  %smin898 = call i64 @llvm.smin.i64(i64 %indvars.iv896, i64 -968)
  %234 = shl nsw i64 %polly.indvar808, 5
  %235 = add nsw i64 %smin898, 999
  br label %polly.loop_header811

polly.loop_exit813:                               ; preds = %polly.loop_exit819
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %indvars.iv.next897 = add nsw i64 %indvars.iv896, -32
  %exitcond904.not = icmp eq i64 %polly.indvar_next809, 32
  br i1 %exitcond904.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_exit819, %polly.loop_header805
  %polly.indvar814 = phi i64 [ 0, %polly.loop_header805 ], [ %polly.indvar_next815, %polly.loop_exit819 ]
  %236 = add nuw nsw i64 %polly.indvar814, %230
  %237 = trunc i64 %236 to i32
  %238 = mul nuw nsw i64 %236, 8000
  %min.iters.check985 = icmp eq i64 %233, 0
  br i1 %min.iters.check985, label %polly.loop_header817, label %vector.ph986

vector.ph986:                                     ; preds = %polly.loop_header811
  %broadcast.splatinsert995 = insertelement <4 x i64> poison, i64 %234, i32 0
  %broadcast.splat996 = shufflevector <4 x i64> %broadcast.splatinsert995, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert997 = insertelement <4 x i32> poison, i32 %237, i32 0
  %broadcast.splat998 = shufflevector <4 x i32> %broadcast.splatinsert997, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %vector.ph986
  %index989 = phi i64 [ 0, %vector.ph986 ], [ %index.next990, %vector.body983 ]
  %vec.ind993 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph986 ], [ %vec.ind.next994, %vector.body983 ]
  %239 = add nuw nsw <4 x i64> %vec.ind993, %broadcast.splat996
  %240 = trunc <4 x i64> %239 to <4 x i32>
  %241 = mul <4 x i32> %broadcast.splat998, %240
  %242 = add <4 x i32> %241, <i32 1, i32 1, i32 1, i32 1>
  %243 = urem <4 x i32> %242, <i32 1200, i32 1200, i32 1200, i32 1200>
  %244 = sitofp <4 x i32> %243 to <4 x double>
  %245 = fmul fast <4 x double> %244, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %246 = extractelement <4 x i64> %239, i32 0
  %247 = shl i64 %246, 3
  %248 = add nuw nsw i64 %247, %238
  %249 = getelementptr i8, i8* %call1, i64 %248
  %250 = bitcast i8* %249 to <4 x double>*
  store <4 x double> %245, <4 x double>* %250, align 8, !alias.scope !96, !noalias !103
  %index.next990 = add i64 %index989, 4
  %vec.ind.next994 = add <4 x i64> %vec.ind993, <i64 4, i64 4, i64 4, i64 4>
  %251 = icmp eq i64 %index.next990, %233
  br i1 %251, label %polly.loop_exit819, label %vector.body983, !llvm.loop !104

polly.loop_exit819:                               ; preds = %vector.body983, %polly.loop_header817
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond903.not = icmp eq i64 %polly.indvar814, %231
  br i1 %exitcond903.not, label %polly.loop_exit813, label %polly.loop_header811

polly.loop_header817:                             ; preds = %polly.loop_header811, %polly.loop_header817
  %polly.indvar820 = phi i64 [ %polly.indvar_next821, %polly.loop_header817 ], [ 0, %polly.loop_header811 ]
  %252 = add nuw nsw i64 %polly.indvar820, %234
  %253 = trunc i64 %252 to i32
  %254 = mul i32 %253, %237
  %255 = add i32 %254, 1
  %256 = urem i32 %255, 1200
  %p_conv.i = sitofp i32 %256 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %257 = shl i64 %252, 3
  %258 = add nuw nsw i64 %257, %238
  %scevgep824 = getelementptr i8, i8* %call1, i64 %258
  %scevgep824825 = bitcast i8* %scevgep824 to double*
  store double %p_div.i, double* %scevgep824825, align 8, !alias.scope !96, !noalias !103
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond899.not = icmp eq i64 %polly.indvar820, %235
  br i1 %exitcond899.not, label %polly.loop_exit819, label %polly.loop_header817, !llvm.loop !105
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
!25 = !{!"llvm.loop.tile.size", i32 128}
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
!41 = distinct !{!41, !12, !23, !42, !43, !44, !34, !45, !51}
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
