; ModuleID = 'syr2k_exhaustive/mmp_all_XL_6685.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_6685.c"
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
  br i1 %57, label %middle.block1022, label %vector.body1024, !llvm.loop !55

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

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
  br i1 %68, label %middle.block1048, label %vector.body1050, !llvm.loop !57

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %wide.load1073 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1073, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1070 = add i64 %index1069, 4
  %95 = icmp eq i64 %index.next1070, %n.vec1068
  br i1 %95, label %middle.block1060, label %vector.body1062, !llvm.loop !69

middle.block1060:                                 ; preds = %vector.body1062
  %cmp.n1072 = icmp eq i64 %88, %n.vec1068
  br i1 %cmp.n1072, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1060
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1068, %middle.block1060 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1060
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1064 = add i64 %indvar1063, 1
  br i1 %exitcond846.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond845.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond845.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

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
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2634, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond843.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = udiv i64 %polly.indvar218, 25
  %98 = shl nsw i64 %polly.indvar218, 2
  %99 = mul nsw i64 %polly.indvar218, 32000
  %100 = mul nsw i64 %polly.indvar218, 38400
  %101 = or i64 %98, 1
  %102 = mul nuw nsw i64 %101, 8000
  %103 = mul nuw nsw i64 %101, 9600
  %104 = or i64 %98, 2
  %105 = mul nuw nsw i64 %104, 8000
  %106 = mul nuw nsw i64 %104, 9600
  %107 = or i64 %98, 3
  %108 = mul nuw nsw i64 %107, 8000
  %109 = mul nuw nsw i64 %107, 9600
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond842.not = icmp eq i64 %polly.indvar_next219, 300
  br i1 %exitcond842.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit229 ], [ 0, %polly.loop_header215 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_header215 ]
  %smin837 = call i64 @llvm.smin.i64(i64 %indvars.iv835, i64 -984)
  %110 = add nsw i64 %smin837, 1000
  %111 = shl nsw i64 %polly.indvar224, 4
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit241.3
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next836 = add nsw i64 %indvars.iv835, -16
  %exitcond841.not = icmp eq i64 %polly.indvar_next225, 63
  br i1 %exitcond841.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit241.3, %polly.loop_header221
  %indvars.iv831 = phi i64 [ %indvars.iv.next832, %polly.loop_exit241.3 ], [ %indvars.iv, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit241.3 ], [ 0, %polly.loop_header221 ]
  %112 = mul nuw nsw i64 %polly.indvar230, 100
  %113 = sub nsw i64 %98, %112
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv831, i64 99)
  %polly.loop_guard918 = icmp sgt i64 %113, -1
  br i1 %polly.loop_guard918, label %polly.loop_header239.us, label %polly.loop_exit241

polly.loop_header239.us:                          ; preds = %polly.loop_header227, %polly.loop_exit247.loopexit.us
  %polly.indvar242.us = phi i64 [ %polly.indvar_next243.us, %polly.loop_exit247.loopexit.us ], [ 0, %polly.loop_header227 ]
  %114 = add nuw nsw i64 %polly.indvar242.us, %111
  %115 = shl i64 %114, 3
  %polly.access.mul.Packed_MemRef_call2254.us = mul nuw nsw i64 %114, 1200
  %polly.access.add.Packed_MemRef_call2255.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us, %98
  %polly.access.Packed_MemRef_call2256.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us
  %_p_scalar_257.us = load double, double* %polly.access.Packed_MemRef_call2256.us, align 8
  %116 = add nuw nsw i64 %115, %99
  %scevgep262.us = getelementptr i8, i8* %call1, i64 %116
  %scevgep262263.us = bitcast i8* %scevgep262.us to double*
  %_p_scalar_264.us = load double, double* %scevgep262263.us, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header245.us

polly.loop_header245.us:                          ; preds = %polly.loop_header239.us, %polly.loop_header245.us
  %polly.indvar248.us = phi i64 [ %polly.indvar_next249.us, %polly.loop_header245.us ], [ 0, %polly.loop_header239.us ]
  %117 = add nuw nsw i64 %polly.indvar248.us, %112
  %118 = mul nuw nsw i64 %117, 8000
  %119 = add nuw nsw i64 %118, %115
  %scevgep251.us = getelementptr i8, i8* %call1, i64 %119
  %scevgep251252.us = bitcast i8* %scevgep251.us to double*
  %_p_scalar_253.us = load double, double* %scevgep251252.us, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us = fmul fast double %_p_scalar_257.us, %_p_scalar_253.us
  %polly.access.add.Packed_MemRef_call2259.us = add nuw nsw i64 %117, %polly.access.mul.Packed_MemRef_call2254.us
  %polly.access.Packed_MemRef_call2260.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us
  %_p_scalar_261.us = load double, double* %polly.access.Packed_MemRef_call2260.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_264.us, %_p_scalar_261.us
  %120 = shl i64 %117, 3
  %121 = add nuw nsw i64 %120, %100
  %scevgep265.us = getelementptr i8, i8* %call, i64 %121
  %scevgep265266.us = bitcast i8* %scevgep265.us to double*
  %_p_scalar_267.us = load double, double* %scevgep265266.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_267.us
  store double %p_add42.i118.us, double* %scevgep265266.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next249.us = add nuw nsw i64 %polly.indvar248.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar248.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit247.loopexit.us, label %polly.loop_header245.us

polly.loop_exit247.loopexit.us:                   ; preds = %polly.loop_header245.us
  %polly.indvar_next243.us = add nuw nsw i64 %polly.indvar242.us, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next243.us, %110
  br i1 %exitcond838.not, label %polly.loop_exit241, label %polly.loop_header239.us

polly.loop_exit241:                               ; preds = %polly.loop_exit247.loopexit.us, %polly.loop_header227
  %indvars.iv.next834 = or i64 %indvars.iv831, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next834, i64 99)
  %polly.loop_guard.1919 = icmp sgt i64 %113, -1
  br i1 %polly.loop_guard.1919, label %polly.loop_header239.us.1, label %polly.loop_exit241.1

polly.start270:                                   ; preds = %kernel_syr2k.exit
  %malloccall272 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header356

polly.exiting271:                                 ; preds = %polly.loop_exit396
  tail call void @free(i8* %malloccall272)
  br label %kernel_syr2k.exit90

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.start270
  %indvar1037 = phi i64 [ %indvar.next1038, %polly.loop_exit364 ], [ 0, %polly.start270 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 1, %polly.start270 ]
  %122 = add i64 %indvar1037, 1
  %123 = mul nuw nsw i64 %polly.indvar359, 9600
  %scevgep368 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check1039 = icmp ult i64 %122, 4
  br i1 %min.iters.check1039, label %polly.loop_header362.preheader, label %vector.ph1040

vector.ph1040:                                    ; preds = %polly.loop_header356
  %n.vec1042 = and i64 %122, -4
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1040
  %index1043 = phi i64 [ 0, %vector.ph1040 ], [ %index.next1044, %vector.body1036 ]
  %124 = shl nuw nsw i64 %index1043, 3
  %125 = getelementptr i8, i8* %scevgep368, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1047 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !74, !noalias !76
  %127 = fmul fast <4 x double> %wide.load1047, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !74, !noalias !76
  %index.next1044 = add i64 %index1043, 4
  %129 = icmp eq i64 %index.next1044, %n.vec1042
  br i1 %129, label %middle.block1034, label %vector.body1036, !llvm.loop !80

middle.block1034:                                 ; preds = %vector.body1036
  %cmp.n1046 = icmp eq i64 %122, %n.vec1042
  br i1 %cmp.n1046, label %polly.loop_exit364, label %polly.loop_header362.preheader

polly.loop_header362.preheader:                   ; preds = %polly.loop_header356, %middle.block1034
  %polly.indvar365.ph = phi i64 [ 0, %polly.loop_header356 ], [ %n.vec1042, %middle.block1034 ]
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_header362, %middle.block1034
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond866.not = icmp eq i64 %polly.indvar_next360, 1200
  %indvar.next1038 = add i64 %indvar1037, 1
  br i1 %exitcond866.not, label %polly.loop_header372.preheader, label %polly.loop_header356

polly.loop_header372.preheader:                   ; preds = %polly.loop_exit364
  %Packed_MemRef_call2273 = bitcast i8* %malloccall272 to double*
  br label %polly.loop_header372

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_header362
  %polly.indvar365 = phi i64 [ %polly.indvar_next366, %polly.loop_header362 ], [ %polly.indvar365.ph, %polly.loop_header362.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep369 = getelementptr i8, i8* %scevgep368, i64 %130
  %scevgep369370 = bitcast i8* %scevgep369 to double*
  %_p_scalar_371 = load double, double* %scevgep369370, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_371, 1.200000e+00
  store double %p_mul.i57, double* %scevgep369370, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next366, %polly.indvar359
  br i1 %exitcond865.not, label %polly.loop_exit364, label %polly.loop_header362, !llvm.loop !81

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_exit380
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_exit380 ], [ 0, %polly.loop_header372.preheader ]
  %polly.access.mul.Packed_MemRef_call2273 = mul nuw nsw i64 %polly.indvar375, 1200
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_header378
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next376, 1000
  br i1 %exitcond864.not, label %polly.loop_header388, label %polly.loop_header372

polly.loop_header378:                             ; preds = %polly.loop_header378, %polly.loop_header372
  %polly.indvar381 = phi i64 [ 0, %polly.loop_header372 ], [ %polly.indvar_next382, %polly.loop_header378 ]
  %polly.access.mul.call2385 = mul nuw nsw i64 %polly.indvar381, 1000
  %polly.access.add.call2386 = add nuw nsw i64 %polly.access.mul.call2385, %polly.indvar375
  %polly.access.call2387 = getelementptr double, double* %polly.access.cast.call2634, i64 %polly.access.add.call2386
  %polly.access.call2387.load = load double, double* %polly.access.call2387, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2273 = add nuw nsw i64 %polly.indvar381, %polly.access.mul.Packed_MemRef_call2273
  %polly.access.Packed_MemRef_call2273 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273
  store double %polly.access.call2387.load, double* %polly.access.Packed_MemRef_call2273, align 8
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %exitcond863.not = icmp eq i64 %polly.indvar_next382, 1200
  br i1 %exitcond863.not, label %polly.loop_exit380, label %polly.loop_header378

polly.loop_header388:                             ; preds = %polly.loop_exit380, %polly.loop_exit396
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit396 ], [ 0, %polly.loop_exit380 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 0, %polly.loop_exit380 ]
  %131 = udiv i64 %polly.indvar391, 25
  %132 = shl nsw i64 %polly.indvar391, 2
  %133 = mul nsw i64 %polly.indvar391, 32000
  %134 = mul nsw i64 %polly.indvar391, 38400
  %135 = or i64 %132, 1
  %136 = mul nuw nsw i64 %135, 8000
  %137 = mul nuw nsw i64 %135, 9600
  %138 = or i64 %132, 2
  %139 = mul nuw nsw i64 %138, 8000
  %140 = mul nuw nsw i64 %138, 9600
  %141 = or i64 %132, 3
  %142 = mul nuw nsw i64 %141, 8000
  %143 = mul nuw nsw i64 %141, 9600
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_exit403
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %indvars.iv.next848 = add nuw nsw i64 %indvars.iv847, 4
  %exitcond862.not = icmp eq i64 %polly.indvar_next392, 300
  br i1 %exitcond862.not, label %polly.exiting271, label %polly.loop_header388

polly.loop_header394:                             ; preds = %polly.loop_exit403, %polly.loop_header388
  %indvars.iv855 = phi i64 [ %indvars.iv.next856, %polly.loop_exit403 ], [ 0, %polly.loop_header388 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit403 ], [ 0, %polly.loop_header388 ]
  %smin857 = call i64 @llvm.smin.i64(i64 %indvars.iv855, i64 -984)
  %144 = add nsw i64 %smin857, 1000
  %145 = shl nsw i64 %polly.indvar397, 4
  br label %polly.loop_header401

polly.loop_exit403:                               ; preds = %polly.loop_exit415.3
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %indvars.iv.next856 = add nsw i64 %indvars.iv855, -16
  %exitcond861.not = icmp eq i64 %polly.indvar_next398, 63
  br i1 %exitcond861.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header401:                             ; preds = %polly.loop_exit415.3, %polly.loop_header394
  %indvars.iv849 = phi i64 [ %indvars.iv.next850, %polly.loop_exit415.3 ], [ %indvars.iv847, %polly.loop_header394 ]
  %polly.indvar404 = phi i64 [ %polly.indvar_next405, %polly.loop_exit415.3 ], [ 0, %polly.loop_header394 ]
  %146 = mul nuw nsw i64 %polly.indvar404, 100
  %147 = sub nsw i64 %132, %146
  %smin853 = call i64 @llvm.smin.i64(i64 %indvars.iv849, i64 99)
  %polly.loop_guard423922 = icmp sgt i64 %147, -1
  br i1 %polly.loop_guard423922, label %polly.loop_header413.us, label %polly.loop_exit415

polly.loop_header413.us:                          ; preds = %polly.loop_header401, %polly.loop_exit422.loopexit.us
  %polly.indvar416.us = phi i64 [ %polly.indvar_next417.us, %polly.loop_exit422.loopexit.us ], [ 0, %polly.loop_header401 ]
  %148 = add nuw nsw i64 %polly.indvar416.us, %145
  %149 = shl i64 %148, 3
  %polly.access.mul.Packed_MemRef_call2273430.us = mul nuw nsw i64 %148, 1200
  %polly.access.add.Packed_MemRef_call2273431.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us, %132
  %polly.access.Packed_MemRef_call2273432.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us
  %_p_scalar_433.us = load double, double* %polly.access.Packed_MemRef_call2273432.us, align 8
  %150 = add nuw nsw i64 %149, %133
  %scevgep438.us = getelementptr i8, i8* %call1, i64 %150
  %scevgep438439.us = bitcast i8* %scevgep438.us to double*
  %_p_scalar_440.us = load double, double* %scevgep438439.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header420.us

polly.loop_header420.us:                          ; preds = %polly.loop_header413.us, %polly.loop_header420.us
  %polly.indvar424.us = phi i64 [ %polly.indvar_next425.us, %polly.loop_header420.us ], [ 0, %polly.loop_header413.us ]
  %151 = add nuw nsw i64 %polly.indvar424.us, %146
  %152 = mul nuw nsw i64 %151, 8000
  %153 = add nuw nsw i64 %152, %149
  %scevgep427.us = getelementptr i8, i8* %call1, i64 %153
  %scevgep427428.us = bitcast i8* %scevgep427.us to double*
  %_p_scalar_429.us = load double, double* %scevgep427428.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_433.us, %_p_scalar_429.us
  %polly.access.add.Packed_MemRef_call2273435.us = add nuw nsw i64 %151, %polly.access.mul.Packed_MemRef_call2273430.us
  %polly.access.Packed_MemRef_call2273436.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us
  %_p_scalar_437.us = load double, double* %polly.access.Packed_MemRef_call2273436.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_440.us, %_p_scalar_437.us
  %154 = shl i64 %151, 3
  %155 = add nuw nsw i64 %154, %134
  %scevgep441.us = getelementptr i8, i8* %call, i64 %155
  %scevgep441442.us = bitcast i8* %scevgep441.us to double*
  %_p_scalar_443.us = load double, double* %scevgep441442.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_443.us
  store double %p_add42.i79.us, double* %scevgep441442.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next425.us = add nuw nsw i64 %polly.indvar424.us, 1
  %exitcond854.not = icmp eq i64 %polly.indvar424.us, %smin853
  br i1 %exitcond854.not, label %polly.loop_exit422.loopexit.us, label %polly.loop_header420.us

polly.loop_exit422.loopexit.us:                   ; preds = %polly.loop_header420.us
  %polly.indvar_next417.us = add nuw nsw i64 %polly.indvar416.us, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next417.us, %144
  br i1 %exitcond858.not, label %polly.loop_exit415, label %polly.loop_header413.us

polly.loop_exit415:                               ; preds = %polly.loop_exit422.loopexit.us, %polly.loop_header401
  %indvars.iv.next852 = or i64 %indvars.iv849, 1
  %smin853.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next852, i64 99)
  %polly.loop_guard423.1923 = icmp sgt i64 %147, -1
  br i1 %polly.loop_guard423.1923, label %polly.loop_header413.us.1, label %polly.loop_exit415.1

polly.start446:                                   ; preds = %init_array.exit
  %malloccall448 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header532

polly.exiting447:                                 ; preds = %polly.loop_exit572
  tail call void @free(i8* %malloccall448)
  br label %kernel_syr2k.exit

polly.loop_header532:                             ; preds = %polly.loop_exit540, %polly.start446
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit540 ], [ 0, %polly.start446 ]
  %polly.indvar535 = phi i64 [ %polly.indvar_next536, %polly.loop_exit540 ], [ 1, %polly.start446 ]
  %156 = add i64 %indvar, 1
  %157 = mul nuw nsw i64 %polly.indvar535, 9600
  %scevgep544 = getelementptr i8, i8* %call, i64 %157
  %min.iters.check1013 = icmp ult i64 %156, 4
  br i1 %min.iters.check1013, label %polly.loop_header538.preheader, label %vector.ph1014

vector.ph1014:                                    ; preds = %polly.loop_header532
  %n.vec1016 = and i64 %156, -4
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %vector.ph1014
  %index1017 = phi i64 [ 0, %vector.ph1014 ], [ %index.next1018, %vector.body1012 ]
  %158 = shl nuw nsw i64 %index1017, 3
  %159 = getelementptr i8, i8* %scevgep544, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load1021 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !84, !noalias !86
  %161 = fmul fast <4 x double> %wide.load1021, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %162 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !84, !noalias !86
  %index.next1018 = add i64 %index1017, 4
  %163 = icmp eq i64 %index.next1018, %n.vec1016
  br i1 %163, label %middle.block1010, label %vector.body1012, !llvm.loop !90

middle.block1010:                                 ; preds = %vector.body1012
  %cmp.n1020 = icmp eq i64 %156, %n.vec1016
  br i1 %cmp.n1020, label %polly.loop_exit540, label %polly.loop_header538.preheader

polly.loop_header538.preheader:                   ; preds = %polly.loop_header532, %middle.block1010
  %polly.indvar541.ph = phi i64 [ 0, %polly.loop_header532 ], [ %n.vec1016, %middle.block1010 ]
  br label %polly.loop_header538

polly.loop_exit540:                               ; preds = %polly.loop_header538, %middle.block1010
  %polly.indvar_next536 = add nuw nsw i64 %polly.indvar535, 1
  %exitcond886.not = icmp eq i64 %polly.indvar_next536, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond886.not, label %polly.loop_header548.preheader, label %polly.loop_header532

polly.loop_header548.preheader:                   ; preds = %polly.loop_exit540
  %Packed_MemRef_call2449 = bitcast i8* %malloccall448 to double*
  br label %polly.loop_header548

polly.loop_header538:                             ; preds = %polly.loop_header538.preheader, %polly.loop_header538
  %polly.indvar541 = phi i64 [ %polly.indvar_next542, %polly.loop_header538 ], [ %polly.indvar541.ph, %polly.loop_header538.preheader ]
  %164 = shl nuw nsw i64 %polly.indvar541, 3
  %scevgep545 = getelementptr i8, i8* %scevgep544, i64 %164
  %scevgep545546 = bitcast i8* %scevgep545 to double*
  %_p_scalar_547 = load double, double* %scevgep545546, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_547, 1.200000e+00
  store double %p_mul.i, double* %scevgep545546, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next542 = add nuw nsw i64 %polly.indvar541, 1
  %exitcond885.not = icmp eq i64 %polly.indvar_next542, %polly.indvar535
  br i1 %exitcond885.not, label %polly.loop_exit540, label %polly.loop_header538, !llvm.loop !91

polly.loop_header548:                             ; preds = %polly.loop_header548.preheader, %polly.loop_exit556
  %polly.indvar551 = phi i64 [ %polly.indvar_next552, %polly.loop_exit556 ], [ 0, %polly.loop_header548.preheader ]
  %polly.access.mul.Packed_MemRef_call2449 = mul nuw nsw i64 %polly.indvar551, 1200
  br label %polly.loop_header554

polly.loop_exit556:                               ; preds = %polly.loop_header554
  %polly.indvar_next552 = add nuw nsw i64 %polly.indvar551, 1
  %exitcond884.not = icmp eq i64 %polly.indvar_next552, 1000
  br i1 %exitcond884.not, label %polly.loop_header564, label %polly.loop_header548

polly.loop_header554:                             ; preds = %polly.loop_header554, %polly.loop_header548
  %polly.indvar557 = phi i64 [ 0, %polly.loop_header548 ], [ %polly.indvar_next558, %polly.loop_header554 ]
  %polly.access.mul.call2561 = mul nuw nsw i64 %polly.indvar557, 1000
  %polly.access.add.call2562 = add nuw nsw i64 %polly.access.mul.call2561, %polly.indvar551
  %polly.access.call2563 = getelementptr double, double* %polly.access.cast.call2634, i64 %polly.access.add.call2562
  %polly.access.call2563.load = load double, double* %polly.access.call2563, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2449 = add nuw nsw i64 %polly.indvar557, %polly.access.mul.Packed_MemRef_call2449
  %polly.access.Packed_MemRef_call2449 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449
  store double %polly.access.call2563.load, double* %polly.access.Packed_MemRef_call2449, align 8
  %polly.indvar_next558 = add nuw nsw i64 %polly.indvar557, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next558, 1200
  br i1 %exitcond883.not, label %polly.loop_exit556, label %polly.loop_header554

polly.loop_header564:                             ; preds = %polly.loop_exit556, %polly.loop_exit572
  %indvars.iv867 = phi i64 [ %indvars.iv.next868, %polly.loop_exit572 ], [ 0, %polly.loop_exit556 ]
  %polly.indvar567 = phi i64 [ %polly.indvar_next568, %polly.loop_exit572 ], [ 0, %polly.loop_exit556 ]
  %165 = udiv i64 %polly.indvar567, 25
  %166 = shl nsw i64 %polly.indvar567, 2
  %167 = mul nsw i64 %polly.indvar567, 32000
  %168 = mul nsw i64 %polly.indvar567, 38400
  %169 = or i64 %166, 1
  %170 = mul nuw nsw i64 %169, 8000
  %171 = mul nuw nsw i64 %169, 9600
  %172 = or i64 %166, 2
  %173 = mul nuw nsw i64 %172, 8000
  %174 = mul nuw nsw i64 %172, 9600
  %175 = or i64 %166, 3
  %176 = mul nuw nsw i64 %175, 8000
  %177 = mul nuw nsw i64 %175, 9600
  br label %polly.loop_header570

polly.loop_exit572:                               ; preds = %polly.loop_exit579
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %indvars.iv.next868 = add nuw nsw i64 %indvars.iv867, 4
  %exitcond882.not = icmp eq i64 %polly.indvar_next568, 300
  br i1 %exitcond882.not, label %polly.exiting447, label %polly.loop_header564

polly.loop_header570:                             ; preds = %polly.loop_exit579, %polly.loop_header564
  %indvars.iv875 = phi i64 [ %indvars.iv.next876, %polly.loop_exit579 ], [ 0, %polly.loop_header564 ]
  %polly.indvar573 = phi i64 [ %polly.indvar_next574, %polly.loop_exit579 ], [ 0, %polly.loop_header564 ]
  %smin877 = call i64 @llvm.smin.i64(i64 %indvars.iv875, i64 -984)
  %178 = add nsw i64 %smin877, 1000
  %179 = shl nsw i64 %polly.indvar573, 4
  br label %polly.loop_header577

polly.loop_exit579:                               ; preds = %polly.loop_exit591.3
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %indvars.iv.next876 = add nsw i64 %indvars.iv875, -16
  %exitcond881.not = icmp eq i64 %polly.indvar_next574, 63
  br i1 %exitcond881.not, label %polly.loop_exit572, label %polly.loop_header570

polly.loop_header577:                             ; preds = %polly.loop_exit591.3, %polly.loop_header570
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit591.3 ], [ %indvars.iv867, %polly.loop_header570 ]
  %polly.indvar580 = phi i64 [ %polly.indvar_next581, %polly.loop_exit591.3 ], [ 0, %polly.loop_header570 ]
  %180 = mul nuw nsw i64 %polly.indvar580, 100
  %181 = sub nsw i64 %166, %180
  %smin873 = call i64 @llvm.smin.i64(i64 %indvars.iv869, i64 99)
  %polly.loop_guard599926 = icmp sgt i64 %181, -1
  br i1 %polly.loop_guard599926, label %polly.loop_header589.us, label %polly.loop_exit591

polly.loop_header589.us:                          ; preds = %polly.loop_header577, %polly.loop_exit598.loopexit.us
  %polly.indvar592.us = phi i64 [ %polly.indvar_next593.us, %polly.loop_exit598.loopexit.us ], [ 0, %polly.loop_header577 ]
  %182 = add nuw nsw i64 %polly.indvar592.us, %179
  %183 = shl i64 %182, 3
  %polly.access.mul.Packed_MemRef_call2449606.us = mul nuw nsw i64 %182, 1200
  %polly.access.add.Packed_MemRef_call2449607.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us, %166
  %polly.access.Packed_MemRef_call2449608.us = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us
  %_p_scalar_609.us = load double, double* %polly.access.Packed_MemRef_call2449608.us, align 8
  %184 = add nuw nsw i64 %183, %167
  %scevgep614.us = getelementptr i8, i8* %call1, i64 %184
  %scevgep614615.us = bitcast i8* %scevgep614.us to double*
  %_p_scalar_616.us = load double, double* %scevgep614615.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header596.us

polly.loop_header596.us:                          ; preds = %polly.loop_header589.us, %polly.loop_header596.us
  %polly.indvar600.us = phi i64 [ %polly.indvar_next601.us, %polly.loop_header596.us ], [ 0, %polly.loop_header589.us ]
  %185 = add nuw nsw i64 %polly.indvar600.us, %180
  %186 = mul nuw nsw i64 %185, 8000
  %187 = add nuw nsw i64 %186, %183
  %scevgep603.us = getelementptr i8, i8* %call1, i64 %187
  %scevgep603604.us = bitcast i8* %scevgep603.us to double*
  %_p_scalar_605.us = load double, double* %scevgep603604.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_609.us, %_p_scalar_605.us
  %polly.access.add.Packed_MemRef_call2449611.us = add nuw nsw i64 %185, %polly.access.mul.Packed_MemRef_call2449606.us
  %polly.access.Packed_MemRef_call2449612.us = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us
  %_p_scalar_613.us = load double, double* %polly.access.Packed_MemRef_call2449612.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_616.us, %_p_scalar_613.us
  %188 = shl i64 %185, 3
  %189 = add nuw nsw i64 %188, %168
  %scevgep617.us = getelementptr i8, i8* %call, i64 %189
  %scevgep617618.us = bitcast i8* %scevgep617.us to double*
  %_p_scalar_619.us = load double, double* %scevgep617618.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_619.us
  store double %p_add42.i.us, double* %scevgep617618.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next601.us = add nuw nsw i64 %polly.indvar600.us, 1
  %exitcond874.not = icmp eq i64 %polly.indvar600.us, %smin873
  br i1 %exitcond874.not, label %polly.loop_exit598.loopexit.us, label %polly.loop_header596.us

polly.loop_exit598.loopexit.us:                   ; preds = %polly.loop_header596.us
  %polly.indvar_next593.us = add nuw nsw i64 %polly.indvar592.us, 1
  %exitcond878.not = icmp eq i64 %polly.indvar_next593.us, %178
  br i1 %exitcond878.not, label %polly.loop_exit591, label %polly.loop_header589.us

polly.loop_exit591:                               ; preds = %polly.loop_exit598.loopexit.us, %polly.loop_header577
  %indvars.iv.next872 = or i64 %indvars.iv869, 1
  %smin873.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next872, i64 99)
  %polly.loop_guard599.1927 = icmp sgt i64 %181, -1
  br i1 %polly.loop_guard599.1927, label %polly.loop_header589.us.1, label %polly.loop_exit591.1

polly.loop_header746:                             ; preds = %entry, %polly.loop_exit754
  %indvars.iv911 = phi i64 [ %indvars.iv.next912, %polly.loop_exit754 ], [ 0, %entry ]
  %polly.indvar749 = phi i64 [ %polly.indvar_next750, %polly.loop_exit754 ], [ 0, %entry ]
  %smin913 = call i64 @llvm.smin.i64(i64 %indvars.iv911, i64 -1168)
  %190 = shl nsw i64 %polly.indvar749, 5
  %191 = add nsw i64 %smin913, 1199
  br label %polly.loop_header752

polly.loop_exit754:                               ; preds = %polly.loop_exit760
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %indvars.iv.next912 = add nsw i64 %indvars.iv911, -32
  %exitcond916.not = icmp eq i64 %polly.indvar_next750, 38
  br i1 %exitcond916.not, label %polly.loop_header773, label %polly.loop_header746

polly.loop_header752:                             ; preds = %polly.loop_exit760, %polly.loop_header746
  %indvars.iv907 = phi i64 [ %indvars.iv.next908, %polly.loop_exit760 ], [ 0, %polly.loop_header746 ]
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %polly.loop_header746 ]
  %192 = mul nsw i64 %polly.indvar755, -32
  %smin951 = call i64 @llvm.smin.i64(i64 %192, i64 -1168)
  %193 = add nsw i64 %smin951, 1200
  %smin909 = call i64 @llvm.smin.i64(i64 %indvars.iv907, i64 -1168)
  %194 = shl nsw i64 %polly.indvar755, 5
  %195 = add nsw i64 %smin909, 1199
  br label %polly.loop_header758

polly.loop_exit760:                               ; preds = %polly.loop_exit766
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %indvars.iv.next908 = add nsw i64 %indvars.iv907, -32
  %exitcond915.not = icmp eq i64 %polly.indvar_next756, 38
  br i1 %exitcond915.not, label %polly.loop_exit754, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_exit766, %polly.loop_header752
  %polly.indvar761 = phi i64 [ 0, %polly.loop_header752 ], [ %polly.indvar_next762, %polly.loop_exit766 ]
  %196 = add nuw nsw i64 %polly.indvar761, %190
  %197 = trunc i64 %196 to i32
  %198 = mul nuw nsw i64 %196, 9600
  %min.iters.check = icmp eq i64 %193, 0
  br i1 %min.iters.check, label %polly.loop_header764, label %vector.ph952

vector.ph952:                                     ; preds = %polly.loop_header758
  %broadcast.splatinsert959 = insertelement <4 x i64> poison, i64 %194, i32 0
  %broadcast.splat960 = shufflevector <4 x i64> %broadcast.splatinsert959, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert961 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat962 = shufflevector <4 x i32> %broadcast.splatinsert961, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body950

vector.body950:                                   ; preds = %vector.body950, %vector.ph952
  %index953 = phi i64 [ 0, %vector.ph952 ], [ %index.next954, %vector.body950 ]
  %vec.ind957 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph952 ], [ %vec.ind.next958, %vector.body950 ]
  %199 = add nuw nsw <4 x i64> %vec.ind957, %broadcast.splat960
  %200 = trunc <4 x i64> %199 to <4 x i32>
  %201 = mul <4 x i32> %broadcast.splat962, %200
  %202 = add <4 x i32> %201, <i32 3, i32 3, i32 3, i32 3>
  %203 = urem <4 x i32> %202, <i32 1200, i32 1200, i32 1200, i32 1200>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %206 = extractelement <4 x i64> %199, i32 0
  %207 = shl i64 %206, 3
  %208 = add nuw nsw i64 %207, %198
  %209 = getelementptr i8, i8* %call, i64 %208
  %210 = bitcast i8* %209 to <4 x double>*
  store <4 x double> %205, <4 x double>* %210, align 8, !alias.scope !94, !noalias !96
  %index.next954 = add i64 %index953, 4
  %vec.ind.next958 = add <4 x i64> %vec.ind957, <i64 4, i64 4, i64 4, i64 4>
  %211 = icmp eq i64 %index.next954, %193
  br i1 %211, label %polly.loop_exit766, label %vector.body950, !llvm.loop !99

polly.loop_exit766:                               ; preds = %vector.body950, %polly.loop_header764
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %exitcond914.not = icmp eq i64 %polly.indvar761, %191
  br i1 %exitcond914.not, label %polly.loop_exit760, label %polly.loop_header758

polly.loop_header764:                             ; preds = %polly.loop_header758, %polly.loop_header764
  %polly.indvar767 = phi i64 [ %polly.indvar_next768, %polly.loop_header764 ], [ 0, %polly.loop_header758 ]
  %212 = add nuw nsw i64 %polly.indvar767, %194
  %213 = trunc i64 %212 to i32
  %214 = mul i32 %213, %197
  %215 = add i32 %214, 3
  %216 = urem i32 %215, 1200
  %p_conv31.i = sitofp i32 %216 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %217 = shl i64 %212, 3
  %218 = add nuw nsw i64 %217, %198
  %scevgep770 = getelementptr i8, i8* %call, i64 %218
  %scevgep770771 = bitcast i8* %scevgep770 to double*
  store double %p_div33.i, double* %scevgep770771, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next768 = add nuw nsw i64 %polly.indvar767, 1
  %exitcond910.not = icmp eq i64 %polly.indvar767, %195
  br i1 %exitcond910.not, label %polly.loop_exit766, label %polly.loop_header764, !llvm.loop !100

polly.loop_header773:                             ; preds = %polly.loop_exit754, %polly.loop_exit781
  %indvars.iv901 = phi i64 [ %indvars.iv.next902, %polly.loop_exit781 ], [ 0, %polly.loop_exit754 ]
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_exit754 ]
  %smin903 = call i64 @llvm.smin.i64(i64 %indvars.iv901, i64 -1168)
  %219 = shl nsw i64 %polly.indvar776, 5
  %220 = add nsw i64 %smin903, 1199
  br label %polly.loop_header779

polly.loop_exit781:                               ; preds = %polly.loop_exit787
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %indvars.iv.next902 = add nsw i64 %indvars.iv901, -32
  %exitcond906.not = icmp eq i64 %polly.indvar_next777, 38
  br i1 %exitcond906.not, label %polly.loop_header799, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_exit787, %polly.loop_header773
  %indvars.iv897 = phi i64 [ %indvars.iv.next898, %polly.loop_exit787 ], [ 0, %polly.loop_header773 ]
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %polly.loop_header773 ]
  %221 = mul nsw i64 %polly.indvar782, -32
  %smin966 = call i64 @llvm.smin.i64(i64 %221, i64 -968)
  %222 = add nsw i64 %smin966, 1000
  %smin899 = call i64 @llvm.smin.i64(i64 %indvars.iv897, i64 -968)
  %223 = shl nsw i64 %polly.indvar782, 5
  %224 = add nsw i64 %smin899, 999
  br label %polly.loop_header785

polly.loop_exit787:                               ; preds = %polly.loop_exit793
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %indvars.iv.next898 = add nsw i64 %indvars.iv897, -32
  %exitcond905.not = icmp eq i64 %polly.indvar_next783, 32
  br i1 %exitcond905.not, label %polly.loop_exit781, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_exit793, %polly.loop_header779
  %polly.indvar788 = phi i64 [ 0, %polly.loop_header779 ], [ %polly.indvar_next789, %polly.loop_exit793 ]
  %225 = add nuw nsw i64 %polly.indvar788, %219
  %226 = trunc i64 %225 to i32
  %227 = mul nuw nsw i64 %225, 8000
  %min.iters.check967 = icmp eq i64 %222, 0
  br i1 %min.iters.check967, label %polly.loop_header791, label %vector.ph968

vector.ph968:                                     ; preds = %polly.loop_header785
  %broadcast.splatinsert977 = insertelement <4 x i64> poison, i64 %223, i32 0
  %broadcast.splat978 = shufflevector <4 x i64> %broadcast.splatinsert977, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert979 = insertelement <4 x i32> poison, i32 %226, i32 0
  %broadcast.splat980 = shufflevector <4 x i32> %broadcast.splatinsert979, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %vector.ph968
  %index971 = phi i64 [ 0, %vector.ph968 ], [ %index.next972, %vector.body965 ]
  %vec.ind975 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph968 ], [ %vec.ind.next976, %vector.body965 ]
  %228 = add nuw nsw <4 x i64> %vec.ind975, %broadcast.splat978
  %229 = trunc <4 x i64> %228 to <4 x i32>
  %230 = mul <4 x i32> %broadcast.splat980, %229
  %231 = add <4 x i32> %230, <i32 2, i32 2, i32 2, i32 2>
  %232 = urem <4 x i32> %231, <i32 1000, i32 1000, i32 1000, i32 1000>
  %233 = sitofp <4 x i32> %232 to <4 x double>
  %234 = fmul fast <4 x double> %233, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %235 = extractelement <4 x i64> %228, i32 0
  %236 = shl i64 %235, 3
  %237 = add nuw nsw i64 %236, %227
  %238 = getelementptr i8, i8* %call2, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %234, <4 x double>* %239, align 8, !alias.scope !98, !noalias !101
  %index.next972 = add i64 %index971, 4
  %vec.ind.next976 = add <4 x i64> %vec.ind975, <i64 4, i64 4, i64 4, i64 4>
  %240 = icmp eq i64 %index.next972, %222
  br i1 %240, label %polly.loop_exit793, label %vector.body965, !llvm.loop !102

polly.loop_exit793:                               ; preds = %vector.body965, %polly.loop_header791
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond904.not = icmp eq i64 %polly.indvar788, %220
  br i1 %exitcond904.not, label %polly.loop_exit787, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_header785, %polly.loop_header791
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_header791 ], [ 0, %polly.loop_header785 ]
  %241 = add nuw nsw i64 %polly.indvar794, %223
  %242 = trunc i64 %241 to i32
  %243 = mul i32 %242, %226
  %244 = add i32 %243, 2
  %245 = urem i32 %244, 1000
  %p_conv10.i = sitofp i32 %245 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %246 = shl i64 %241, 3
  %247 = add nuw nsw i64 %246, %227
  %scevgep797 = getelementptr i8, i8* %call2, i64 %247
  %scevgep797798 = bitcast i8* %scevgep797 to double*
  store double %p_div12.i, double* %scevgep797798, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond900.not = icmp eq i64 %polly.indvar794, %224
  br i1 %exitcond900.not, label %polly.loop_exit793, label %polly.loop_header791, !llvm.loop !103

polly.loop_header799:                             ; preds = %polly.loop_exit781, %polly.loop_exit807
  %indvars.iv891 = phi i64 [ %indvars.iv.next892, %polly.loop_exit807 ], [ 0, %polly.loop_exit781 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_exit781 ]
  %smin893 = call i64 @llvm.smin.i64(i64 %indvars.iv891, i64 -1168)
  %248 = shl nsw i64 %polly.indvar802, 5
  %249 = add nsw i64 %smin893, 1199
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next892 = add nsw i64 %indvars.iv891, -32
  %exitcond896.not = icmp eq i64 %polly.indvar_next803, 38
  br i1 %exitcond896.not, label %init_array.exit, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %indvars.iv887 = phi i64 [ %indvars.iv.next888, %polly.loop_exit813 ], [ 0, %polly.loop_header799 ]
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_header799 ]
  %250 = mul nsw i64 %polly.indvar808, -32
  %smin984 = call i64 @llvm.smin.i64(i64 %250, i64 -968)
  %251 = add nsw i64 %smin984, 1000
  %smin889 = call i64 @llvm.smin.i64(i64 %indvars.iv887, i64 -968)
  %252 = shl nsw i64 %polly.indvar808, 5
  %253 = add nsw i64 %smin889, 999
  br label %polly.loop_header811

polly.loop_exit813:                               ; preds = %polly.loop_exit819
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %indvars.iv.next888 = add nsw i64 %indvars.iv887, -32
  %exitcond895.not = icmp eq i64 %polly.indvar_next809, 32
  br i1 %exitcond895.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_exit819, %polly.loop_header805
  %polly.indvar814 = phi i64 [ 0, %polly.loop_header805 ], [ %polly.indvar_next815, %polly.loop_exit819 ]
  %254 = add nuw nsw i64 %polly.indvar814, %248
  %255 = trunc i64 %254 to i32
  %256 = mul nuw nsw i64 %254, 8000
  %min.iters.check985 = icmp eq i64 %251, 0
  br i1 %min.iters.check985, label %polly.loop_header817, label %vector.ph986

vector.ph986:                                     ; preds = %polly.loop_header811
  %broadcast.splatinsert995 = insertelement <4 x i64> poison, i64 %252, i32 0
  %broadcast.splat996 = shufflevector <4 x i64> %broadcast.splatinsert995, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert997 = insertelement <4 x i32> poison, i32 %255, i32 0
  %broadcast.splat998 = shufflevector <4 x i32> %broadcast.splatinsert997, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %vector.ph986
  %index989 = phi i64 [ 0, %vector.ph986 ], [ %index.next990, %vector.body983 ]
  %vec.ind993 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph986 ], [ %vec.ind.next994, %vector.body983 ]
  %257 = add nuw nsw <4 x i64> %vec.ind993, %broadcast.splat996
  %258 = trunc <4 x i64> %257 to <4 x i32>
  %259 = mul <4 x i32> %broadcast.splat998, %258
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 1200, i32 1200, i32 1200, i32 1200>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %264 = extractelement <4 x i64> %257, i32 0
  %265 = shl i64 %264, 3
  %266 = add nuw nsw i64 %265, %256
  %267 = getelementptr i8, i8* %call1, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %263, <4 x double>* %268, align 8, !alias.scope !97, !noalias !104
  %index.next990 = add i64 %index989, 4
  %vec.ind.next994 = add <4 x i64> %vec.ind993, <i64 4, i64 4, i64 4, i64 4>
  %269 = icmp eq i64 %index.next990, %251
  br i1 %269, label %polly.loop_exit819, label %vector.body983, !llvm.loop !105

polly.loop_exit819:                               ; preds = %vector.body983, %polly.loop_header817
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond894.not = icmp eq i64 %polly.indvar814, %249
  br i1 %exitcond894.not, label %polly.loop_exit813, label %polly.loop_header811

polly.loop_header817:                             ; preds = %polly.loop_header811, %polly.loop_header817
  %polly.indvar820 = phi i64 [ %polly.indvar_next821, %polly.loop_header817 ], [ 0, %polly.loop_header811 ]
  %270 = add nuw nsw i64 %polly.indvar820, %252
  %271 = trunc i64 %270 to i32
  %272 = mul i32 %271, %255
  %273 = add i32 %272, 1
  %274 = urem i32 %273, 1200
  %p_conv.i = sitofp i32 %274 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %275 = shl i64 %270, 3
  %276 = add nuw nsw i64 %275, %256
  %scevgep824 = getelementptr i8, i8* %call1, i64 %276
  %scevgep824825 = bitcast i8* %scevgep824 to double*
  store double %p_div.i, double* %scevgep824825, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond890.not = icmp eq i64 %polly.indvar820, %253
  br i1 %exitcond890.not, label %polly.loop_exit819, label %polly.loop_header817, !llvm.loop !106

polly.loop_header239.us.1:                        ; preds = %polly.loop_exit241, %polly.loop_exit247.loopexit.us.1
  %polly.indvar242.us.1 = phi i64 [ %polly.indvar_next243.us.1, %polly.loop_exit247.loopexit.us.1 ], [ 0, %polly.loop_exit241 ]
  %277 = add nuw nsw i64 %polly.indvar242.us.1, %111
  %278 = shl i64 %277, 3
  %polly.access.mul.Packed_MemRef_call2254.us.1 = mul nuw nsw i64 %277, 1200
  %polly.access.add.Packed_MemRef_call2255.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us.1, %101
  %polly.access.Packed_MemRef_call2256.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us.1
  %_p_scalar_257.us.1 = load double, double* %polly.access.Packed_MemRef_call2256.us.1, align 8
  %279 = add nuw nsw i64 %278, %102
  %scevgep262.us.1 = getelementptr i8, i8* %call1, i64 %279
  %scevgep262263.us.1 = bitcast i8* %scevgep262.us.1 to double*
  %_p_scalar_264.us.1 = load double, double* %scevgep262263.us.1, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header245.us.1

polly.loop_header245.us.1:                        ; preds = %polly.loop_header245.us.1, %polly.loop_header239.us.1
  %polly.indvar248.us.1 = phi i64 [ %polly.indvar_next249.us.1, %polly.loop_header245.us.1 ], [ 0, %polly.loop_header239.us.1 ]
  %280 = add nuw nsw i64 %polly.indvar248.us.1, %112
  %281 = mul nuw nsw i64 %280, 8000
  %282 = add nuw nsw i64 %281, %278
  %scevgep251.us.1 = getelementptr i8, i8* %call1, i64 %282
  %scevgep251252.us.1 = bitcast i8* %scevgep251.us.1 to double*
  %_p_scalar_253.us.1 = load double, double* %scevgep251252.us.1, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_257.us.1, %_p_scalar_253.us.1
  %polly.access.add.Packed_MemRef_call2259.us.1 = add nuw nsw i64 %280, %polly.access.mul.Packed_MemRef_call2254.us.1
  %polly.access.Packed_MemRef_call2260.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us.1
  %_p_scalar_261.us.1 = load double, double* %polly.access.Packed_MemRef_call2260.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_264.us.1, %_p_scalar_261.us.1
  %283 = shl i64 %280, 3
  %284 = add nuw nsw i64 %283, %103
  %scevgep265.us.1 = getelementptr i8, i8* %call, i64 %284
  %scevgep265266.us.1 = bitcast i8* %scevgep265.us.1 to double*
  %_p_scalar_267.us.1 = load double, double* %scevgep265266.us.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_267.us.1
  store double %p_add42.i118.us.1, double* %scevgep265266.us.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next249.us.1 = add nuw nsw i64 %polly.indvar248.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar248.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit247.loopexit.us.1, label %polly.loop_header245.us.1

polly.loop_exit247.loopexit.us.1:                 ; preds = %polly.loop_header245.us.1
  %polly.indvar_next243.us.1 = add nuw nsw i64 %polly.indvar242.us.1, 1
  %exitcond838.1.not = icmp eq i64 %polly.indvar_next243.us.1, %110
  br i1 %exitcond838.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.us.1

polly.loop_exit241.1:                             ; preds = %polly.loop_exit247.loopexit.us.1, %polly.loop_exit241
  %indvars.iv.next834.1 = add nuw nsw i64 %indvars.iv.next834, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next834.1, i64 99)
  %polly.loop_guard.2920 = icmp sgt i64 %113, -1
  br i1 %polly.loop_guard.2920, label %polly.loop_header239.us.2, label %polly.loop_exit241.2

polly.loop_header239.us.2:                        ; preds = %polly.loop_exit241.1, %polly.loop_exit247.loopexit.us.2
  %polly.indvar242.us.2 = phi i64 [ %polly.indvar_next243.us.2, %polly.loop_exit247.loopexit.us.2 ], [ 0, %polly.loop_exit241.1 ]
  %285 = add nuw nsw i64 %polly.indvar242.us.2, %111
  %286 = shl i64 %285, 3
  %polly.access.mul.Packed_MemRef_call2254.us.2 = mul nuw nsw i64 %285, 1200
  %polly.access.add.Packed_MemRef_call2255.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us.2, %104
  %polly.access.Packed_MemRef_call2256.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us.2
  %_p_scalar_257.us.2 = load double, double* %polly.access.Packed_MemRef_call2256.us.2, align 8
  %287 = add nuw nsw i64 %286, %105
  %scevgep262.us.2 = getelementptr i8, i8* %call1, i64 %287
  %scevgep262263.us.2 = bitcast i8* %scevgep262.us.2 to double*
  %_p_scalar_264.us.2 = load double, double* %scevgep262263.us.2, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header245.us.2

polly.loop_header245.us.2:                        ; preds = %polly.loop_header245.us.2, %polly.loop_header239.us.2
  %polly.indvar248.us.2 = phi i64 [ %polly.indvar_next249.us.2, %polly.loop_header245.us.2 ], [ 0, %polly.loop_header239.us.2 ]
  %288 = add nuw nsw i64 %polly.indvar248.us.2, %112
  %289 = mul nuw nsw i64 %288, 8000
  %290 = add nuw nsw i64 %289, %286
  %scevgep251.us.2 = getelementptr i8, i8* %call1, i64 %290
  %scevgep251252.us.2 = bitcast i8* %scevgep251.us.2 to double*
  %_p_scalar_253.us.2 = load double, double* %scevgep251252.us.2, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_257.us.2, %_p_scalar_253.us.2
  %polly.access.add.Packed_MemRef_call2259.us.2 = add nuw nsw i64 %288, %polly.access.mul.Packed_MemRef_call2254.us.2
  %polly.access.Packed_MemRef_call2260.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us.2
  %_p_scalar_261.us.2 = load double, double* %polly.access.Packed_MemRef_call2260.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_264.us.2, %_p_scalar_261.us.2
  %291 = shl i64 %288, 3
  %292 = add nuw nsw i64 %291, %106
  %scevgep265.us.2 = getelementptr i8, i8* %call, i64 %292
  %scevgep265266.us.2 = bitcast i8* %scevgep265.us.2 to double*
  %_p_scalar_267.us.2 = load double, double* %scevgep265266.us.2, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_267.us.2
  store double %p_add42.i118.us.2, double* %scevgep265266.us.2, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next249.us.2 = add nuw nsw i64 %polly.indvar248.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar248.us.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit247.loopexit.us.2, label %polly.loop_header245.us.2

polly.loop_exit247.loopexit.us.2:                 ; preds = %polly.loop_header245.us.2
  %polly.indvar_next243.us.2 = add nuw nsw i64 %polly.indvar242.us.2, 1
  %exitcond838.2.not = icmp eq i64 %polly.indvar_next243.us.2, %110
  br i1 %exitcond838.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.us.2

polly.loop_exit241.2:                             ; preds = %polly.loop_exit247.loopexit.us.2, %polly.loop_exit241.1
  %indvars.iv.next834.2 = or i64 %indvars.iv831, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next834.2, i64 99)
  %polly.loop_guard.3921 = icmp sgt i64 %113, -1
  br i1 %polly.loop_guard.3921, label %polly.loop_header239.us.3, label %polly.loop_exit241.3

polly.loop_header239.us.3:                        ; preds = %polly.loop_exit241.2, %polly.loop_exit247.loopexit.us.3
  %polly.indvar242.us.3 = phi i64 [ %polly.indvar_next243.us.3, %polly.loop_exit247.loopexit.us.3 ], [ 0, %polly.loop_exit241.2 ]
  %293 = add nuw nsw i64 %polly.indvar242.us.3, %111
  %294 = shl i64 %293, 3
  %polly.access.mul.Packed_MemRef_call2254.us.3 = mul nuw nsw i64 %293, 1200
  %polly.access.add.Packed_MemRef_call2255.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us.3, %107
  %polly.access.Packed_MemRef_call2256.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us.3
  %_p_scalar_257.us.3 = load double, double* %polly.access.Packed_MemRef_call2256.us.3, align 8
  %295 = add nuw nsw i64 %294, %108
  %scevgep262.us.3 = getelementptr i8, i8* %call1, i64 %295
  %scevgep262263.us.3 = bitcast i8* %scevgep262.us.3 to double*
  %_p_scalar_264.us.3 = load double, double* %scevgep262263.us.3, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header245.us.3

polly.loop_header245.us.3:                        ; preds = %polly.loop_header245.us.3, %polly.loop_header239.us.3
  %polly.indvar248.us.3 = phi i64 [ %polly.indvar_next249.us.3, %polly.loop_header245.us.3 ], [ 0, %polly.loop_header239.us.3 ]
  %296 = add nuw nsw i64 %polly.indvar248.us.3, %112
  %297 = mul nuw nsw i64 %296, 8000
  %298 = add nuw nsw i64 %297, %294
  %scevgep251.us.3 = getelementptr i8, i8* %call1, i64 %298
  %scevgep251252.us.3 = bitcast i8* %scevgep251.us.3 to double*
  %_p_scalar_253.us.3 = load double, double* %scevgep251252.us.3, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_257.us.3, %_p_scalar_253.us.3
  %polly.access.add.Packed_MemRef_call2259.us.3 = add nuw nsw i64 %296, %polly.access.mul.Packed_MemRef_call2254.us.3
  %polly.access.Packed_MemRef_call2260.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us.3
  %_p_scalar_261.us.3 = load double, double* %polly.access.Packed_MemRef_call2260.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_264.us.3, %_p_scalar_261.us.3
  %299 = shl i64 %296, 3
  %300 = add nuw nsw i64 %299, %109
  %scevgep265.us.3 = getelementptr i8, i8* %call, i64 %300
  %scevgep265266.us.3 = bitcast i8* %scevgep265.us.3 to double*
  %_p_scalar_267.us.3 = load double, double* %scevgep265266.us.3, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_267.us.3
  store double %p_add42.i118.us.3, double* %scevgep265266.us.3, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next249.us.3 = add nuw nsw i64 %polly.indvar248.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar248.us.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit247.loopexit.us.3, label %polly.loop_header245.us.3

polly.loop_exit247.loopexit.us.3:                 ; preds = %polly.loop_header245.us.3
  %polly.indvar_next243.us.3 = add nuw nsw i64 %polly.indvar242.us.3, 1
  %exitcond838.3.not = icmp eq i64 %polly.indvar_next243.us.3, %110
  br i1 %exitcond838.3.not, label %polly.loop_exit241.3, label %polly.loop_header239.us.3

polly.loop_exit241.3:                             ; preds = %polly.loop_exit247.loopexit.us.3, %polly.loop_exit241.2
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next832 = add nsw i64 %indvars.iv831, -100
  %exitcond840.not = icmp eq i64 %polly.indvar230, %97
  br i1 %exitcond840.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header413.us.1:                        ; preds = %polly.loop_exit415, %polly.loop_exit422.loopexit.us.1
  %polly.indvar416.us.1 = phi i64 [ %polly.indvar_next417.us.1, %polly.loop_exit422.loopexit.us.1 ], [ 0, %polly.loop_exit415 ]
  %301 = add nuw nsw i64 %polly.indvar416.us.1, %145
  %302 = shl i64 %301, 3
  %polly.access.mul.Packed_MemRef_call2273430.us.1 = mul nuw nsw i64 %301, 1200
  %polly.access.add.Packed_MemRef_call2273431.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us.1, %135
  %polly.access.Packed_MemRef_call2273432.us.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us.1
  %_p_scalar_433.us.1 = load double, double* %polly.access.Packed_MemRef_call2273432.us.1, align 8
  %303 = add nuw nsw i64 %302, %136
  %scevgep438.us.1 = getelementptr i8, i8* %call1, i64 %303
  %scevgep438439.us.1 = bitcast i8* %scevgep438.us.1 to double*
  %_p_scalar_440.us.1 = load double, double* %scevgep438439.us.1, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header420.us.1

polly.loop_header420.us.1:                        ; preds = %polly.loop_header420.us.1, %polly.loop_header413.us.1
  %polly.indvar424.us.1 = phi i64 [ %polly.indvar_next425.us.1, %polly.loop_header420.us.1 ], [ 0, %polly.loop_header413.us.1 ]
  %304 = add nuw nsw i64 %polly.indvar424.us.1, %146
  %305 = mul nuw nsw i64 %304, 8000
  %306 = add nuw nsw i64 %305, %302
  %scevgep427.us.1 = getelementptr i8, i8* %call1, i64 %306
  %scevgep427428.us.1 = bitcast i8* %scevgep427.us.1 to double*
  %_p_scalar_429.us.1 = load double, double* %scevgep427428.us.1, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_433.us.1, %_p_scalar_429.us.1
  %polly.access.add.Packed_MemRef_call2273435.us.1 = add nuw nsw i64 %304, %polly.access.mul.Packed_MemRef_call2273430.us.1
  %polly.access.Packed_MemRef_call2273436.us.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us.1
  %_p_scalar_437.us.1 = load double, double* %polly.access.Packed_MemRef_call2273436.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_440.us.1, %_p_scalar_437.us.1
  %307 = shl i64 %304, 3
  %308 = add nuw nsw i64 %307, %137
  %scevgep441.us.1 = getelementptr i8, i8* %call, i64 %308
  %scevgep441442.us.1 = bitcast i8* %scevgep441.us.1 to double*
  %_p_scalar_443.us.1 = load double, double* %scevgep441442.us.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_443.us.1
  store double %p_add42.i79.us.1, double* %scevgep441442.us.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next425.us.1 = add nuw nsw i64 %polly.indvar424.us.1, 1
  %exitcond854.1.not = icmp eq i64 %polly.indvar424.us.1, %smin853.1
  br i1 %exitcond854.1.not, label %polly.loop_exit422.loopexit.us.1, label %polly.loop_header420.us.1

polly.loop_exit422.loopexit.us.1:                 ; preds = %polly.loop_header420.us.1
  %polly.indvar_next417.us.1 = add nuw nsw i64 %polly.indvar416.us.1, 1
  %exitcond858.1.not = icmp eq i64 %polly.indvar_next417.us.1, %144
  br i1 %exitcond858.1.not, label %polly.loop_exit415.1, label %polly.loop_header413.us.1

polly.loop_exit415.1:                             ; preds = %polly.loop_exit422.loopexit.us.1, %polly.loop_exit415
  %indvars.iv.next852.1 = add nuw nsw i64 %indvars.iv.next852, 1
  %smin853.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next852.1, i64 99)
  %polly.loop_guard423.2924 = icmp sgt i64 %147, -1
  br i1 %polly.loop_guard423.2924, label %polly.loop_header413.us.2, label %polly.loop_exit415.2

polly.loop_header413.us.2:                        ; preds = %polly.loop_exit415.1, %polly.loop_exit422.loopexit.us.2
  %polly.indvar416.us.2 = phi i64 [ %polly.indvar_next417.us.2, %polly.loop_exit422.loopexit.us.2 ], [ 0, %polly.loop_exit415.1 ]
  %309 = add nuw nsw i64 %polly.indvar416.us.2, %145
  %310 = shl i64 %309, 3
  %polly.access.mul.Packed_MemRef_call2273430.us.2 = mul nuw nsw i64 %309, 1200
  %polly.access.add.Packed_MemRef_call2273431.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us.2, %138
  %polly.access.Packed_MemRef_call2273432.us.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us.2
  %_p_scalar_433.us.2 = load double, double* %polly.access.Packed_MemRef_call2273432.us.2, align 8
  %311 = add nuw nsw i64 %310, %139
  %scevgep438.us.2 = getelementptr i8, i8* %call1, i64 %311
  %scevgep438439.us.2 = bitcast i8* %scevgep438.us.2 to double*
  %_p_scalar_440.us.2 = load double, double* %scevgep438439.us.2, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header420.us.2

polly.loop_header420.us.2:                        ; preds = %polly.loop_header420.us.2, %polly.loop_header413.us.2
  %polly.indvar424.us.2 = phi i64 [ %polly.indvar_next425.us.2, %polly.loop_header420.us.2 ], [ 0, %polly.loop_header413.us.2 ]
  %312 = add nuw nsw i64 %polly.indvar424.us.2, %146
  %313 = mul nuw nsw i64 %312, 8000
  %314 = add nuw nsw i64 %313, %310
  %scevgep427.us.2 = getelementptr i8, i8* %call1, i64 %314
  %scevgep427428.us.2 = bitcast i8* %scevgep427.us.2 to double*
  %_p_scalar_429.us.2 = load double, double* %scevgep427428.us.2, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_433.us.2, %_p_scalar_429.us.2
  %polly.access.add.Packed_MemRef_call2273435.us.2 = add nuw nsw i64 %312, %polly.access.mul.Packed_MemRef_call2273430.us.2
  %polly.access.Packed_MemRef_call2273436.us.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us.2
  %_p_scalar_437.us.2 = load double, double* %polly.access.Packed_MemRef_call2273436.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_440.us.2, %_p_scalar_437.us.2
  %315 = shl i64 %312, 3
  %316 = add nuw nsw i64 %315, %140
  %scevgep441.us.2 = getelementptr i8, i8* %call, i64 %316
  %scevgep441442.us.2 = bitcast i8* %scevgep441.us.2 to double*
  %_p_scalar_443.us.2 = load double, double* %scevgep441442.us.2, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_443.us.2
  store double %p_add42.i79.us.2, double* %scevgep441442.us.2, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next425.us.2 = add nuw nsw i64 %polly.indvar424.us.2, 1
  %exitcond854.2.not = icmp eq i64 %polly.indvar424.us.2, %smin853.2
  br i1 %exitcond854.2.not, label %polly.loop_exit422.loopexit.us.2, label %polly.loop_header420.us.2

polly.loop_exit422.loopexit.us.2:                 ; preds = %polly.loop_header420.us.2
  %polly.indvar_next417.us.2 = add nuw nsw i64 %polly.indvar416.us.2, 1
  %exitcond858.2.not = icmp eq i64 %polly.indvar_next417.us.2, %144
  br i1 %exitcond858.2.not, label %polly.loop_exit415.2, label %polly.loop_header413.us.2

polly.loop_exit415.2:                             ; preds = %polly.loop_exit422.loopexit.us.2, %polly.loop_exit415.1
  %indvars.iv.next852.2 = or i64 %indvars.iv849, 3
  %smin853.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next852.2, i64 99)
  %polly.loop_guard423.3925 = icmp sgt i64 %147, -1
  br i1 %polly.loop_guard423.3925, label %polly.loop_header413.us.3, label %polly.loop_exit415.3

polly.loop_header413.us.3:                        ; preds = %polly.loop_exit415.2, %polly.loop_exit422.loopexit.us.3
  %polly.indvar416.us.3 = phi i64 [ %polly.indvar_next417.us.3, %polly.loop_exit422.loopexit.us.3 ], [ 0, %polly.loop_exit415.2 ]
  %317 = add nuw nsw i64 %polly.indvar416.us.3, %145
  %318 = shl i64 %317, 3
  %polly.access.mul.Packed_MemRef_call2273430.us.3 = mul nuw nsw i64 %317, 1200
  %polly.access.add.Packed_MemRef_call2273431.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us.3, %141
  %polly.access.Packed_MemRef_call2273432.us.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us.3
  %_p_scalar_433.us.3 = load double, double* %polly.access.Packed_MemRef_call2273432.us.3, align 8
  %319 = add nuw nsw i64 %318, %142
  %scevgep438.us.3 = getelementptr i8, i8* %call1, i64 %319
  %scevgep438439.us.3 = bitcast i8* %scevgep438.us.3 to double*
  %_p_scalar_440.us.3 = load double, double* %scevgep438439.us.3, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header420.us.3

polly.loop_header420.us.3:                        ; preds = %polly.loop_header420.us.3, %polly.loop_header413.us.3
  %polly.indvar424.us.3 = phi i64 [ %polly.indvar_next425.us.3, %polly.loop_header420.us.3 ], [ 0, %polly.loop_header413.us.3 ]
  %320 = add nuw nsw i64 %polly.indvar424.us.3, %146
  %321 = mul nuw nsw i64 %320, 8000
  %322 = add nuw nsw i64 %321, %318
  %scevgep427.us.3 = getelementptr i8, i8* %call1, i64 %322
  %scevgep427428.us.3 = bitcast i8* %scevgep427.us.3 to double*
  %_p_scalar_429.us.3 = load double, double* %scevgep427428.us.3, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_433.us.3, %_p_scalar_429.us.3
  %polly.access.add.Packed_MemRef_call2273435.us.3 = add nuw nsw i64 %320, %polly.access.mul.Packed_MemRef_call2273430.us.3
  %polly.access.Packed_MemRef_call2273436.us.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us.3
  %_p_scalar_437.us.3 = load double, double* %polly.access.Packed_MemRef_call2273436.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_440.us.3, %_p_scalar_437.us.3
  %323 = shl i64 %320, 3
  %324 = add nuw nsw i64 %323, %143
  %scevgep441.us.3 = getelementptr i8, i8* %call, i64 %324
  %scevgep441442.us.3 = bitcast i8* %scevgep441.us.3 to double*
  %_p_scalar_443.us.3 = load double, double* %scevgep441442.us.3, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_443.us.3
  store double %p_add42.i79.us.3, double* %scevgep441442.us.3, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next425.us.3 = add nuw nsw i64 %polly.indvar424.us.3, 1
  %exitcond854.3.not = icmp eq i64 %polly.indvar424.us.3, %smin853.3
  br i1 %exitcond854.3.not, label %polly.loop_exit422.loopexit.us.3, label %polly.loop_header420.us.3

polly.loop_exit422.loopexit.us.3:                 ; preds = %polly.loop_header420.us.3
  %polly.indvar_next417.us.3 = add nuw nsw i64 %polly.indvar416.us.3, 1
  %exitcond858.3.not = icmp eq i64 %polly.indvar_next417.us.3, %144
  br i1 %exitcond858.3.not, label %polly.loop_exit415.3, label %polly.loop_header413.us.3

polly.loop_exit415.3:                             ; preds = %polly.loop_exit422.loopexit.us.3, %polly.loop_exit415.2
  %polly.indvar_next405 = add nuw nsw i64 %polly.indvar404, 1
  %indvars.iv.next850 = add nsw i64 %indvars.iv849, -100
  %exitcond860.not = icmp eq i64 %polly.indvar404, %131
  br i1 %exitcond860.not, label %polly.loop_exit403, label %polly.loop_header401

polly.loop_header589.us.1:                        ; preds = %polly.loop_exit591, %polly.loop_exit598.loopexit.us.1
  %polly.indvar592.us.1 = phi i64 [ %polly.indvar_next593.us.1, %polly.loop_exit598.loopexit.us.1 ], [ 0, %polly.loop_exit591 ]
  %325 = add nuw nsw i64 %polly.indvar592.us.1, %179
  %326 = shl i64 %325, 3
  %polly.access.mul.Packed_MemRef_call2449606.us.1 = mul nuw nsw i64 %325, 1200
  %polly.access.add.Packed_MemRef_call2449607.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us.1, %169
  %polly.access.Packed_MemRef_call2449608.us.1 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us.1
  %_p_scalar_609.us.1 = load double, double* %polly.access.Packed_MemRef_call2449608.us.1, align 8
  %327 = add nuw nsw i64 %326, %170
  %scevgep614.us.1 = getelementptr i8, i8* %call1, i64 %327
  %scevgep614615.us.1 = bitcast i8* %scevgep614.us.1 to double*
  %_p_scalar_616.us.1 = load double, double* %scevgep614615.us.1, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header596.us.1

polly.loop_header596.us.1:                        ; preds = %polly.loop_header596.us.1, %polly.loop_header589.us.1
  %polly.indvar600.us.1 = phi i64 [ %polly.indvar_next601.us.1, %polly.loop_header596.us.1 ], [ 0, %polly.loop_header589.us.1 ]
  %328 = add nuw nsw i64 %polly.indvar600.us.1, %180
  %329 = mul nuw nsw i64 %328, 8000
  %330 = add nuw nsw i64 %329, %326
  %scevgep603.us.1 = getelementptr i8, i8* %call1, i64 %330
  %scevgep603604.us.1 = bitcast i8* %scevgep603.us.1 to double*
  %_p_scalar_605.us.1 = load double, double* %scevgep603604.us.1, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_609.us.1, %_p_scalar_605.us.1
  %polly.access.add.Packed_MemRef_call2449611.us.1 = add nuw nsw i64 %328, %polly.access.mul.Packed_MemRef_call2449606.us.1
  %polly.access.Packed_MemRef_call2449612.us.1 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us.1
  %_p_scalar_613.us.1 = load double, double* %polly.access.Packed_MemRef_call2449612.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_616.us.1, %_p_scalar_613.us.1
  %331 = shl i64 %328, 3
  %332 = add nuw nsw i64 %331, %171
  %scevgep617.us.1 = getelementptr i8, i8* %call, i64 %332
  %scevgep617618.us.1 = bitcast i8* %scevgep617.us.1 to double*
  %_p_scalar_619.us.1 = load double, double* %scevgep617618.us.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_619.us.1
  store double %p_add42.i.us.1, double* %scevgep617618.us.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next601.us.1 = add nuw nsw i64 %polly.indvar600.us.1, 1
  %exitcond874.1.not = icmp eq i64 %polly.indvar600.us.1, %smin873.1
  br i1 %exitcond874.1.not, label %polly.loop_exit598.loopexit.us.1, label %polly.loop_header596.us.1

polly.loop_exit598.loopexit.us.1:                 ; preds = %polly.loop_header596.us.1
  %polly.indvar_next593.us.1 = add nuw nsw i64 %polly.indvar592.us.1, 1
  %exitcond878.1.not = icmp eq i64 %polly.indvar_next593.us.1, %178
  br i1 %exitcond878.1.not, label %polly.loop_exit591.1, label %polly.loop_header589.us.1

polly.loop_exit591.1:                             ; preds = %polly.loop_exit598.loopexit.us.1, %polly.loop_exit591
  %indvars.iv.next872.1 = add nuw nsw i64 %indvars.iv.next872, 1
  %smin873.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next872.1, i64 99)
  %polly.loop_guard599.2928 = icmp sgt i64 %181, -1
  br i1 %polly.loop_guard599.2928, label %polly.loop_header589.us.2, label %polly.loop_exit591.2

polly.loop_header589.us.2:                        ; preds = %polly.loop_exit591.1, %polly.loop_exit598.loopexit.us.2
  %polly.indvar592.us.2 = phi i64 [ %polly.indvar_next593.us.2, %polly.loop_exit598.loopexit.us.2 ], [ 0, %polly.loop_exit591.1 ]
  %333 = add nuw nsw i64 %polly.indvar592.us.2, %179
  %334 = shl i64 %333, 3
  %polly.access.mul.Packed_MemRef_call2449606.us.2 = mul nuw nsw i64 %333, 1200
  %polly.access.add.Packed_MemRef_call2449607.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us.2, %172
  %polly.access.Packed_MemRef_call2449608.us.2 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us.2
  %_p_scalar_609.us.2 = load double, double* %polly.access.Packed_MemRef_call2449608.us.2, align 8
  %335 = add nuw nsw i64 %334, %173
  %scevgep614.us.2 = getelementptr i8, i8* %call1, i64 %335
  %scevgep614615.us.2 = bitcast i8* %scevgep614.us.2 to double*
  %_p_scalar_616.us.2 = load double, double* %scevgep614615.us.2, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header596.us.2

polly.loop_header596.us.2:                        ; preds = %polly.loop_header596.us.2, %polly.loop_header589.us.2
  %polly.indvar600.us.2 = phi i64 [ %polly.indvar_next601.us.2, %polly.loop_header596.us.2 ], [ 0, %polly.loop_header589.us.2 ]
  %336 = add nuw nsw i64 %polly.indvar600.us.2, %180
  %337 = mul nuw nsw i64 %336, 8000
  %338 = add nuw nsw i64 %337, %334
  %scevgep603.us.2 = getelementptr i8, i8* %call1, i64 %338
  %scevgep603604.us.2 = bitcast i8* %scevgep603.us.2 to double*
  %_p_scalar_605.us.2 = load double, double* %scevgep603604.us.2, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_609.us.2, %_p_scalar_605.us.2
  %polly.access.add.Packed_MemRef_call2449611.us.2 = add nuw nsw i64 %336, %polly.access.mul.Packed_MemRef_call2449606.us.2
  %polly.access.Packed_MemRef_call2449612.us.2 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us.2
  %_p_scalar_613.us.2 = load double, double* %polly.access.Packed_MemRef_call2449612.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_616.us.2, %_p_scalar_613.us.2
  %339 = shl i64 %336, 3
  %340 = add nuw nsw i64 %339, %174
  %scevgep617.us.2 = getelementptr i8, i8* %call, i64 %340
  %scevgep617618.us.2 = bitcast i8* %scevgep617.us.2 to double*
  %_p_scalar_619.us.2 = load double, double* %scevgep617618.us.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_619.us.2
  store double %p_add42.i.us.2, double* %scevgep617618.us.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next601.us.2 = add nuw nsw i64 %polly.indvar600.us.2, 1
  %exitcond874.2.not = icmp eq i64 %polly.indvar600.us.2, %smin873.2
  br i1 %exitcond874.2.not, label %polly.loop_exit598.loopexit.us.2, label %polly.loop_header596.us.2

polly.loop_exit598.loopexit.us.2:                 ; preds = %polly.loop_header596.us.2
  %polly.indvar_next593.us.2 = add nuw nsw i64 %polly.indvar592.us.2, 1
  %exitcond878.2.not = icmp eq i64 %polly.indvar_next593.us.2, %178
  br i1 %exitcond878.2.not, label %polly.loop_exit591.2, label %polly.loop_header589.us.2

polly.loop_exit591.2:                             ; preds = %polly.loop_exit598.loopexit.us.2, %polly.loop_exit591.1
  %indvars.iv.next872.2 = or i64 %indvars.iv869, 3
  %smin873.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next872.2, i64 99)
  %polly.loop_guard599.3929 = icmp sgt i64 %181, -1
  br i1 %polly.loop_guard599.3929, label %polly.loop_header589.us.3, label %polly.loop_exit591.3

polly.loop_header589.us.3:                        ; preds = %polly.loop_exit591.2, %polly.loop_exit598.loopexit.us.3
  %polly.indvar592.us.3 = phi i64 [ %polly.indvar_next593.us.3, %polly.loop_exit598.loopexit.us.3 ], [ 0, %polly.loop_exit591.2 ]
  %341 = add nuw nsw i64 %polly.indvar592.us.3, %179
  %342 = shl i64 %341, 3
  %polly.access.mul.Packed_MemRef_call2449606.us.3 = mul nuw nsw i64 %341, 1200
  %polly.access.add.Packed_MemRef_call2449607.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us.3, %175
  %polly.access.Packed_MemRef_call2449608.us.3 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us.3
  %_p_scalar_609.us.3 = load double, double* %polly.access.Packed_MemRef_call2449608.us.3, align 8
  %343 = add nuw nsw i64 %342, %176
  %scevgep614.us.3 = getelementptr i8, i8* %call1, i64 %343
  %scevgep614615.us.3 = bitcast i8* %scevgep614.us.3 to double*
  %_p_scalar_616.us.3 = load double, double* %scevgep614615.us.3, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header596.us.3

polly.loop_header596.us.3:                        ; preds = %polly.loop_header596.us.3, %polly.loop_header589.us.3
  %polly.indvar600.us.3 = phi i64 [ %polly.indvar_next601.us.3, %polly.loop_header596.us.3 ], [ 0, %polly.loop_header589.us.3 ]
  %344 = add nuw nsw i64 %polly.indvar600.us.3, %180
  %345 = mul nuw nsw i64 %344, 8000
  %346 = add nuw nsw i64 %345, %342
  %scevgep603.us.3 = getelementptr i8, i8* %call1, i64 %346
  %scevgep603604.us.3 = bitcast i8* %scevgep603.us.3 to double*
  %_p_scalar_605.us.3 = load double, double* %scevgep603604.us.3, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_609.us.3, %_p_scalar_605.us.3
  %polly.access.add.Packed_MemRef_call2449611.us.3 = add nuw nsw i64 %344, %polly.access.mul.Packed_MemRef_call2449606.us.3
  %polly.access.Packed_MemRef_call2449612.us.3 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us.3
  %_p_scalar_613.us.3 = load double, double* %polly.access.Packed_MemRef_call2449612.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_616.us.3, %_p_scalar_613.us.3
  %347 = shl i64 %344, 3
  %348 = add nuw nsw i64 %347, %177
  %scevgep617.us.3 = getelementptr i8, i8* %call, i64 %348
  %scevgep617618.us.3 = bitcast i8* %scevgep617.us.3 to double*
  %_p_scalar_619.us.3 = load double, double* %scevgep617618.us.3, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_619.us.3
  store double %p_add42.i.us.3, double* %scevgep617618.us.3, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next601.us.3 = add nuw nsw i64 %polly.indvar600.us.3, 1
  %exitcond874.3.not = icmp eq i64 %polly.indvar600.us.3, %smin873.3
  br i1 %exitcond874.3.not, label %polly.loop_exit598.loopexit.us.3, label %polly.loop_header596.us.3

polly.loop_exit598.loopexit.us.3:                 ; preds = %polly.loop_header596.us.3
  %polly.indvar_next593.us.3 = add nuw nsw i64 %polly.indvar592.us.3, 1
  %exitcond878.3.not = icmp eq i64 %polly.indvar_next593.us.3, %178
  br i1 %exitcond878.3.not, label %polly.loop_exit591.3, label %polly.loop_header589.us.3

polly.loop_exit591.3:                             ; preds = %polly.loop_exit598.loopexit.us.3, %polly.loop_exit591.2
  %polly.indvar_next581 = add nuw nsw i64 %polly.indvar580, 1
  %indvars.iv.next870 = add nsw i64 %indvars.iv869, -100
  %exitcond880.not = icmp eq i64 %polly.indvar580, %165
  br i1 %exitcond880.not, label %polly.loop_exit579, label %polly.loop_header577
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
!25 = !{!"llvm.loop.tile.size", i32 100}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 16}
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
!45 = !{!"llvm.loop.tile.size", i32 4}
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
