; ModuleID = 'syr2k_exhaustive/mmp_all_SM_6797.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_6797.c"
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
  %scevgep917 = getelementptr i8, i8* %call2, i64 %12
  %scevgep916 = getelementptr i8, i8* %call2, i64 %11
  %scevgep915 = getelementptr i8, i8* %call1, i64 %12
  %scevgep914 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep914, %scevgep917
  %bound1 = icmp ult i8* %scevgep916, %scevgep915
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
  br i1 %exitcond18.not.i, label %vector.ph921, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph921:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert928 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat929 = shufflevector <4 x i64> %broadcast.splatinsert928, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body920

vector.body920:                                   ; preds = %vector.body920, %vector.ph921
  %index922 = phi i64 [ 0, %vector.ph921 ], [ %index.next923, %vector.body920 ]
  %vec.ind926 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph921 ], [ %vec.ind.next927, %vector.body920 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind926, %broadcast.splat929
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv7.i, i64 %index922
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next923 = add i64 %index922, 4
  %vec.ind.next927 = add <4 x i64> %vec.ind926, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next923, 1200
  br i1 %40, label %for.inc41.i, label %vector.body920, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body920
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph921, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit807
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start446, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check984 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check984, label %for.body3.i46.preheader1058, label %vector.ph985

vector.ph985:                                     ; preds = %for.body3.i46.preheader
  %n.vec987 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %vector.ph985
  %index988 = phi i64 [ 0, %vector.ph985 ], [ %index.next989, %vector.body983 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i, i64 %index988
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next989 = add i64 %index988, 4
  %46 = icmp eq i64 %index.next989, %n.vec987
  br i1 %46, label %middle.block981, label %vector.body983, !llvm.loop !18

middle.block981:                                  ; preds = %vector.body983
  %cmp.n991 = icmp eq i64 %indvars.iv21.i, %n.vec987
  br i1 %cmp.n991, label %for.inc6.i, label %for.body3.i46.preheader1058

for.body3.i46.preheader1058:                      ; preds = %for.body3.i46.preheader, %middle.block981
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec987, %middle.block981 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1058, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1058 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block981, %for.cond1.preheader.i45
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
  %min.iters.check1007 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1007, label %for.body3.i60.preheader1057, label %vector.ph1008

vector.ph1008:                                    ; preds = %for.body3.i60.preheader
  %n.vec1010 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1006

vector.body1006:                                  ; preds = %vector.body1006, %vector.ph1008
  %index1011 = phi i64 [ 0, %vector.ph1008 ], [ %index.next1012, %vector.body1006 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i52, i64 %index1011
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1015 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1015, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1012 = add i64 %index1011, 4
  %57 = icmp eq i64 %index.next1012, %n.vec1010
  br i1 %57, label %middle.block1004, label %vector.body1006, !llvm.loop !54

middle.block1004:                                 ; preds = %vector.body1006
  %cmp.n1014 = icmp eq i64 %indvars.iv21.i52, %n.vec1010
  br i1 %cmp.n1014, label %for.inc6.i63, label %for.body3.i60.preheader1057

for.body3.i60.preheader1057:                      ; preds = %for.body3.i60.preheader, %middle.block1004
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1010, %middle.block1004 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1057, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1057 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1004, %for.cond1.preheader.i54
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
  %min.iters.check1033 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1033, label %for.body3.i99.preheader1056, label %vector.ph1034

vector.ph1034:                                    ; preds = %for.body3.i99.preheader
  %n.vec1036 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1032

vector.body1032:                                  ; preds = %vector.body1032, %vector.ph1034
  %index1037 = phi i64 [ 0, %vector.ph1034 ], [ %index.next1038, %vector.body1032 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i91, i64 %index1037
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1041 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1041, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1038 = add i64 %index1037, 4
  %68 = icmp eq i64 %index.next1038, %n.vec1036
  br i1 %68, label %middle.block1030, label %vector.body1032, !llvm.loop !56

middle.block1030:                                 ; preds = %vector.body1032
  %cmp.n1040 = icmp eq i64 %indvars.iv21.i91, %n.vec1036
  br i1 %cmp.n1040, label %for.inc6.i102, label %for.body3.i99.preheader1056

for.body3.i99.preheader1056:                      ; preds = %for.body3.i99.preheader, %middle.block1030
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1036, %middle.block1030 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1056, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1056 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1030, %for.cond1.preheader.i93
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
  %indvar1045 = phi i64 [ %indvar.next1046, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1045, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1047 = icmp ult i64 %88, 4
  br i1 %min.iters.check1047, label %polly.loop_header191.preheader, label %vector.ph1048

vector.ph1048:                                    ; preds = %polly.loop_header
  %n.vec1050 = and i64 %88, -4
  br label %vector.body1044

vector.body1044:                                  ; preds = %vector.body1044, %vector.ph1048
  %index1051 = phi i64 [ 0, %vector.ph1048 ], [ %index.next1052, %vector.body1044 ]
  %90 = shl nuw nsw i64 %index1051, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1055 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1055, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1052 = add i64 %index1051, 4
  %95 = icmp eq i64 %index.next1052, %n.vec1050
  br i1 %95, label %middle.block1042, label %vector.body1044, !llvm.loop !68

middle.block1042:                                 ; preds = %vector.body1044
  %cmp.n1054 = icmp eq i64 %88, %n.vec1050
  br i1 %cmp.n1054, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1042
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1050, %middle.block1042 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1042
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1046 = add i64 %indvar1045, 1
  br i1 %exitcond843.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond842.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond842.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 1200
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next203, 1000
  br i1 %exitcond841.not, label %polly.loop_header215, label %polly.loop_header199

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
  %exitcond840.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond840.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = lshr i64 %polly.indvar218, 5
  %98 = shl nsw i64 %polly.indvar218, 3
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond839.not = icmp eq i64 %polly.indvar_next219, 150
  br i1 %exitcond839.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %polly.indvar224 = phi i64 [ 0, %polly.loop_header215 ], [ %polly.indvar_next225, %polly.loop_exit229 ]
  %99 = shl nsw i64 %polly.indvar224, 3
  %100 = shl i64 %polly.indvar224, 6
  %polly.access.mul.Packed_MemRef_call2254.us = mul nsw i64 %polly.indvar224, 9600
  %101 = or i64 %99, 1
  %102 = shl i64 %101, 3
  %polly.access.mul.Packed_MemRef_call2254.us.1 = mul nuw nsw i64 %101, 1200
  %103 = or i64 %99, 2
  %104 = shl i64 %103, 3
  %polly.access.mul.Packed_MemRef_call2254.us.2 = mul nuw nsw i64 %103, 1200
  %105 = or i64 %99, 3
  %106 = shl i64 %105, 3
  %polly.access.mul.Packed_MemRef_call2254.us.3 = mul nuw nsw i64 %105, 1200
  %107 = or i64 %99, 4
  %108 = shl i64 %107, 3
  %polly.access.mul.Packed_MemRef_call2254.us.4 = mul nuw nsw i64 %107, 1200
  %109 = or i64 %99, 5
  %110 = shl i64 %109, 3
  %polly.access.mul.Packed_MemRef_call2254.us.5 = mul nuw nsw i64 %109, 1200
  %111 = or i64 %99, 6
  %112 = shl i64 %111, 3
  %polly.access.mul.Packed_MemRef_call2254.us.6 = mul nuw nsw i64 %111, 1200
  %113 = or i64 %99, 7
  %114 = shl i64 %113, 3
  %polly.access.mul.Packed_MemRef_call2254.us.7 = mul nuw nsw i64 %113, 1200
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next225, 125
  br i1 %exitcond838.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv831 = phi i64 [ %indvars.iv.next832, %polly.loop_exit235 ], [ %indvars.iv, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %115 = shl nsw i64 %polly.indvar230, 8
  %116 = sub nsw i64 %98, %115
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next832 = add nsw i64 %indvars.iv831, -256
  %exitcond837.not = icmp eq i64 %polly.indvar230, %97
  br i1 %exitcond837.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %indvars.iv833 = phi i64 [ %indvars.iv.next834, %polly.loop_exit241 ], [ %indvars.iv831, %polly.loop_header227 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ 0, %polly.loop_header227 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv833, i64 255)
  %117 = add nsw i64 %polly.indvar236, %116
  %polly.loop_guard909 = icmp sgt i64 %117, -1
  %118 = add nuw nsw i64 %polly.indvar236, %98
  %119 = mul nuw nsw i64 %118, 8000
  %120 = mul nuw nsw i64 %118, 9600
  br i1 %polly.loop_guard909, label %polly.loop_header239.us.preheader, label %polly.loop_exit241

polly.loop_header239.us.preheader:                ; preds = %polly.loop_header233
  %polly.access.add.Packed_MemRef_call2255.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us, %118
  %polly.access.Packed_MemRef_call2256.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us
  %_p_scalar_257.us = load double, double* %polly.access.Packed_MemRef_call2256.us, align 8
  %121 = add nuw nsw i64 %100, %119
  %scevgep262.us = getelementptr i8, i8* %call1, i64 %121
  %scevgep262263.us = bitcast i8* %scevgep262.us to double*
  %_p_scalar_264.us = load double, double* %scevgep262263.us, align 8, !alias.scope !65, !noalias !72
  br label %polly.loop_header245.us

polly.loop_header245.us:                          ; preds = %polly.loop_header239.us.preheader, %polly.loop_header245.us
  %polly.indvar248.us = phi i64 [ %polly.indvar_next249.us, %polly.loop_header245.us ], [ 0, %polly.loop_header239.us.preheader ]
  %122 = add nuw nsw i64 %polly.indvar248.us, %115
  %123 = mul nuw nsw i64 %122, 8000
  %124 = add nuw nsw i64 %123, %100
  %scevgep251.us = getelementptr i8, i8* %call1, i64 %124
  %scevgep251252.us = bitcast i8* %scevgep251.us to double*
  %_p_scalar_253.us = load double, double* %scevgep251252.us, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.us = fmul fast double %_p_scalar_257.us, %_p_scalar_253.us
  %polly.access.add.Packed_MemRef_call2259.us = add nuw nsw i64 %122, %polly.access.mul.Packed_MemRef_call2254.us
  %polly.access.Packed_MemRef_call2260.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us
  %_p_scalar_261.us = load double, double* %polly.access.Packed_MemRef_call2260.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_264.us, %_p_scalar_261.us
  %125 = shl i64 %122, 3
  %126 = add nuw nsw i64 %125, %120
  %scevgep265.us = getelementptr i8, i8* %call, i64 %126
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
  %polly.access.add.Packed_MemRef_call2255.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us.1, %118
  %polly.access.Packed_MemRef_call2256.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us.1
  %_p_scalar_257.us.1 = load double, double* %polly.access.Packed_MemRef_call2256.us.1, align 8
  %127 = add nuw nsw i64 %102, %119
  %scevgep262.us.1 = getelementptr i8, i8* %call1, i64 %127
  %scevgep262263.us.1 = bitcast i8* %scevgep262.us.1 to double*
  %_p_scalar_264.us.1 = load double, double* %scevgep262263.us.1, align 8, !alias.scope !65, !noalias !72
  br label %polly.loop_header245.us.1

polly.loop_exit241:                               ; preds = %polly.loop_header245.us.7, %polly.loop_header233
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %indvars.iv.next834 = add nsw i64 %indvars.iv833, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next237, 8
  br i1 %exitcond836.not, label %polly.loop_exit235, label %polly.loop_header233

polly.start270:                                   ; preds = %kernel_syr2k.exit
  %malloccall272 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header356

polly.exiting271:                                 ; preds = %polly.loop_exit396
  tail call void @free(i8* %malloccall272)
  br label %kernel_syr2k.exit90

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.start270
  %indvar1019 = phi i64 [ %indvar.next1020, %polly.loop_exit364 ], [ 0, %polly.start270 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 1, %polly.start270 ]
  %128 = add i64 %indvar1019, 1
  %129 = mul nuw nsw i64 %polly.indvar359, 9600
  %scevgep368 = getelementptr i8, i8* %call, i64 %129
  %min.iters.check1021 = icmp ult i64 %128, 4
  br i1 %min.iters.check1021, label %polly.loop_header362.preheader, label %vector.ph1022

vector.ph1022:                                    ; preds = %polly.loop_header356
  %n.vec1024 = and i64 %128, -4
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %vector.ph1022
  %index1025 = phi i64 [ 0, %vector.ph1022 ], [ %index.next1026, %vector.body1018 ]
  %130 = shl nuw nsw i64 %index1025, 3
  %131 = getelementptr i8, i8* %scevgep368, i64 %130
  %132 = bitcast i8* %131 to <4 x double>*
  %wide.load1029 = load <4 x double>, <4 x double>* %132, align 8, !alias.scope !73, !noalias !75
  %133 = fmul fast <4 x double> %wide.load1029, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %134 = bitcast i8* %131 to <4 x double>*
  store <4 x double> %133, <4 x double>* %134, align 8, !alias.scope !73, !noalias !75
  %index.next1026 = add i64 %index1025, 4
  %135 = icmp eq i64 %index.next1026, %n.vec1024
  br i1 %135, label %middle.block1016, label %vector.body1018, !llvm.loop !79

middle.block1016:                                 ; preds = %vector.body1018
  %cmp.n1028 = icmp eq i64 %128, %n.vec1024
  br i1 %cmp.n1028, label %polly.loop_exit364, label %polly.loop_header362.preheader

polly.loop_header362.preheader:                   ; preds = %polly.loop_header356, %middle.block1016
  %polly.indvar365.ph = phi i64 [ 0, %polly.loop_header356 ], [ %n.vec1024, %middle.block1016 ]
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_header362, %middle.block1016
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond860.not = icmp eq i64 %polly.indvar_next360, 1200
  %indvar.next1020 = add i64 %indvar1019, 1
  br i1 %exitcond860.not, label %polly.loop_header372.preheader, label %polly.loop_header356

polly.loop_header372.preheader:                   ; preds = %polly.loop_exit364
  %Packed_MemRef_call2273 = bitcast i8* %malloccall272 to double*
  br label %polly.loop_header372

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_header362
  %polly.indvar365 = phi i64 [ %polly.indvar_next366, %polly.loop_header362 ], [ %polly.indvar365.ph, %polly.loop_header362.preheader ]
  %136 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep369 = getelementptr i8, i8* %scevgep368, i64 %136
  %scevgep369370 = bitcast i8* %scevgep369 to double*
  %_p_scalar_371 = load double, double* %scevgep369370, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_371, 1.200000e+00
  store double %p_mul.i57, double* %scevgep369370, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next366, %polly.indvar359
  br i1 %exitcond859.not, label %polly.loop_exit364, label %polly.loop_header362, !llvm.loop !80

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_exit380
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_exit380 ], [ 0, %polly.loop_header372.preheader ]
  %polly.access.mul.Packed_MemRef_call2273 = mul nuw nsw i64 %polly.indvar375, 1200
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_header378
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next376, 1000
  br i1 %exitcond858.not, label %polly.loop_header388, label %polly.loop_header372

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
  %exitcond857.not = icmp eq i64 %polly.indvar_next382, 1200
  br i1 %exitcond857.not, label %polly.loop_exit380, label %polly.loop_header378

polly.loop_header388:                             ; preds = %polly.loop_exit380, %polly.loop_exit396
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit396 ], [ 0, %polly.loop_exit380 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 0, %polly.loop_exit380 ]
  %137 = lshr i64 %polly.indvar391, 5
  %138 = shl nsw i64 %polly.indvar391, 3
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_exit403
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %indvars.iv.next845 = add nuw nsw i64 %indvars.iv844, 8
  %exitcond856.not = icmp eq i64 %polly.indvar_next392, 150
  br i1 %exitcond856.not, label %polly.exiting271, label %polly.loop_header388

polly.loop_header394:                             ; preds = %polly.loop_exit403, %polly.loop_header388
  %polly.indvar397 = phi i64 [ 0, %polly.loop_header388 ], [ %polly.indvar_next398, %polly.loop_exit403 ]
  %139 = shl nsw i64 %polly.indvar397, 3
  %140 = shl i64 %polly.indvar397, 6
  %polly.access.mul.Packed_MemRef_call2273430.us = mul nsw i64 %polly.indvar397, 9600
  %141 = or i64 %139, 1
  %142 = shl i64 %141, 3
  %polly.access.mul.Packed_MemRef_call2273430.us.1 = mul nuw nsw i64 %141, 1200
  %143 = or i64 %139, 2
  %144 = shl i64 %143, 3
  %polly.access.mul.Packed_MemRef_call2273430.us.2 = mul nuw nsw i64 %143, 1200
  %145 = or i64 %139, 3
  %146 = shl i64 %145, 3
  %polly.access.mul.Packed_MemRef_call2273430.us.3 = mul nuw nsw i64 %145, 1200
  %147 = or i64 %139, 4
  %148 = shl i64 %147, 3
  %polly.access.mul.Packed_MemRef_call2273430.us.4 = mul nuw nsw i64 %147, 1200
  %149 = or i64 %139, 5
  %150 = shl i64 %149, 3
  %polly.access.mul.Packed_MemRef_call2273430.us.5 = mul nuw nsw i64 %149, 1200
  %151 = or i64 %139, 6
  %152 = shl i64 %151, 3
  %polly.access.mul.Packed_MemRef_call2273430.us.6 = mul nuw nsw i64 %151, 1200
  %153 = or i64 %139, 7
  %154 = shl i64 %153, 3
  %polly.access.mul.Packed_MemRef_call2273430.us.7 = mul nuw nsw i64 %153, 1200
  br label %polly.loop_header401

polly.loop_exit403:                               ; preds = %polly.loop_exit409
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next398, 125
  br i1 %exitcond855.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header401:                             ; preds = %polly.loop_exit409, %polly.loop_header394
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %polly.loop_exit409 ], [ %indvars.iv844, %polly.loop_header394 ]
  %polly.indvar404 = phi i64 [ %polly.indvar_next405, %polly.loop_exit409 ], [ 0, %polly.loop_header394 ]
  %155 = shl nsw i64 %polly.indvar404, 8
  %156 = sub nsw i64 %138, %155
  br label %polly.loop_header407

polly.loop_exit409:                               ; preds = %polly.loop_exit415
  %polly.indvar_next405 = add nuw nsw i64 %polly.indvar404, 1
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, -256
  %exitcond854.not = icmp eq i64 %polly.indvar404, %137
  br i1 %exitcond854.not, label %polly.loop_exit403, label %polly.loop_header401

polly.loop_header407:                             ; preds = %polly.loop_exit415, %polly.loop_header401
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %polly.loop_exit415 ], [ %indvars.iv846, %polly.loop_header401 ]
  %polly.indvar410 = phi i64 [ %polly.indvar_next411, %polly.loop_exit415 ], [ 0, %polly.loop_header401 ]
  %smin850 = call i64 @llvm.smin.i64(i64 %indvars.iv848, i64 255)
  %157 = add nsw i64 %polly.indvar410, %156
  %polly.loop_guard423910 = icmp sgt i64 %157, -1
  %158 = add nuw nsw i64 %polly.indvar410, %138
  %159 = mul nuw nsw i64 %158, 8000
  %160 = mul nuw nsw i64 %158, 9600
  br i1 %polly.loop_guard423910, label %polly.loop_header413.us.preheader, label %polly.loop_exit415

polly.loop_header413.us.preheader:                ; preds = %polly.loop_header407
  %polly.access.add.Packed_MemRef_call2273431.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us, %158
  %polly.access.Packed_MemRef_call2273432.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us
  %_p_scalar_433.us = load double, double* %polly.access.Packed_MemRef_call2273432.us, align 8
  %161 = add nuw nsw i64 %140, %159
  %scevgep438.us = getelementptr i8, i8* %call1, i64 %161
  %scevgep438439.us = bitcast i8* %scevgep438.us to double*
  %_p_scalar_440.us = load double, double* %scevgep438439.us, align 8, !alias.scope !76, !noalias !82
  br label %polly.loop_header420.us

polly.loop_header420.us:                          ; preds = %polly.loop_header413.us.preheader, %polly.loop_header420.us
  %polly.indvar424.us = phi i64 [ %polly.indvar_next425.us, %polly.loop_header420.us ], [ 0, %polly.loop_header413.us.preheader ]
  %162 = add nuw nsw i64 %polly.indvar424.us, %155
  %163 = mul nuw nsw i64 %162, 8000
  %164 = add nuw nsw i64 %163, %140
  %scevgep427.us = getelementptr i8, i8* %call1, i64 %164
  %scevgep427428.us = bitcast i8* %scevgep427.us to double*
  %_p_scalar_429.us = load double, double* %scevgep427428.us, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.us = fmul fast double %_p_scalar_433.us, %_p_scalar_429.us
  %polly.access.add.Packed_MemRef_call2273435.us = add nuw nsw i64 %162, %polly.access.mul.Packed_MemRef_call2273430.us
  %polly.access.Packed_MemRef_call2273436.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us
  %_p_scalar_437.us = load double, double* %polly.access.Packed_MemRef_call2273436.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_440.us, %_p_scalar_437.us
  %165 = shl i64 %162, 3
  %166 = add nuw nsw i64 %165, %160
  %scevgep441.us = getelementptr i8, i8* %call, i64 %166
  %scevgep441442.us = bitcast i8* %scevgep441.us to double*
  %_p_scalar_443.us = load double, double* %scevgep441442.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_443.us
  store double %p_add42.i79.us, double* %scevgep441442.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next425.us = add nuw nsw i64 %polly.indvar424.us, 1
  %exitcond851.not = icmp eq i64 %polly.indvar424.us, %smin850
  br i1 %exitcond851.not, label %polly.loop_exit422.loopexit.us, label %polly.loop_header420.us

polly.loop_exit422.loopexit.us:                   ; preds = %polly.loop_header420.us
  %polly.access.add.Packed_MemRef_call2273431.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us.1, %158
  %polly.access.Packed_MemRef_call2273432.us.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us.1
  %_p_scalar_433.us.1 = load double, double* %polly.access.Packed_MemRef_call2273432.us.1, align 8
  %167 = add nuw nsw i64 %142, %159
  %scevgep438.us.1 = getelementptr i8, i8* %call1, i64 %167
  %scevgep438439.us.1 = bitcast i8* %scevgep438.us.1 to double*
  %_p_scalar_440.us.1 = load double, double* %scevgep438439.us.1, align 8, !alias.scope !76, !noalias !82
  br label %polly.loop_header420.us.1

polly.loop_exit415:                               ; preds = %polly.loop_header420.us.7, %polly.loop_header407
  %polly.indvar_next411 = add nuw nsw i64 %polly.indvar410, 1
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next411, 8
  br i1 %exitcond853.not, label %polly.loop_exit409, label %polly.loop_header407

polly.start446:                                   ; preds = %init_array.exit
  %malloccall448 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header532

polly.exiting447:                                 ; preds = %polly.loop_exit572
  tail call void @free(i8* %malloccall448)
  br label %kernel_syr2k.exit

polly.loop_header532:                             ; preds = %polly.loop_exit540, %polly.start446
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit540 ], [ 0, %polly.start446 ]
  %polly.indvar535 = phi i64 [ %polly.indvar_next536, %polly.loop_exit540 ], [ 1, %polly.start446 ]
  %168 = add i64 %indvar, 1
  %169 = mul nuw nsw i64 %polly.indvar535, 9600
  %scevgep544 = getelementptr i8, i8* %call, i64 %169
  %min.iters.check995 = icmp ult i64 %168, 4
  br i1 %min.iters.check995, label %polly.loop_header538.preheader, label %vector.ph996

vector.ph996:                                     ; preds = %polly.loop_header532
  %n.vec998 = and i64 %168, -4
  br label %vector.body994

vector.body994:                                   ; preds = %vector.body994, %vector.ph996
  %index999 = phi i64 [ 0, %vector.ph996 ], [ %index.next1000, %vector.body994 ]
  %170 = shl nuw nsw i64 %index999, 3
  %171 = getelementptr i8, i8* %scevgep544, i64 %170
  %172 = bitcast i8* %171 to <4 x double>*
  %wide.load1003 = load <4 x double>, <4 x double>* %172, align 8, !alias.scope !83, !noalias !85
  %173 = fmul fast <4 x double> %wide.load1003, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %174 = bitcast i8* %171 to <4 x double>*
  store <4 x double> %173, <4 x double>* %174, align 8, !alias.scope !83, !noalias !85
  %index.next1000 = add i64 %index999, 4
  %175 = icmp eq i64 %index.next1000, %n.vec998
  br i1 %175, label %middle.block992, label %vector.body994, !llvm.loop !89

middle.block992:                                  ; preds = %vector.body994
  %cmp.n1002 = icmp eq i64 %168, %n.vec998
  br i1 %cmp.n1002, label %polly.loop_exit540, label %polly.loop_header538.preheader

polly.loop_header538.preheader:                   ; preds = %polly.loop_header532, %middle.block992
  %polly.indvar541.ph = phi i64 [ 0, %polly.loop_header532 ], [ %n.vec998, %middle.block992 ]
  br label %polly.loop_header538

polly.loop_exit540:                               ; preds = %polly.loop_header538, %middle.block992
  %polly.indvar_next536 = add nuw nsw i64 %polly.indvar535, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next536, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond877.not, label %polly.loop_header548.preheader, label %polly.loop_header532

polly.loop_header548.preheader:                   ; preds = %polly.loop_exit540
  %Packed_MemRef_call2449 = bitcast i8* %malloccall448 to double*
  br label %polly.loop_header548

polly.loop_header538:                             ; preds = %polly.loop_header538.preheader, %polly.loop_header538
  %polly.indvar541 = phi i64 [ %polly.indvar_next542, %polly.loop_header538 ], [ %polly.indvar541.ph, %polly.loop_header538.preheader ]
  %176 = shl nuw nsw i64 %polly.indvar541, 3
  %scevgep545 = getelementptr i8, i8* %scevgep544, i64 %176
  %scevgep545546 = bitcast i8* %scevgep545 to double*
  %_p_scalar_547 = load double, double* %scevgep545546, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_547, 1.200000e+00
  store double %p_mul.i, double* %scevgep545546, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next542 = add nuw nsw i64 %polly.indvar541, 1
  %exitcond876.not = icmp eq i64 %polly.indvar_next542, %polly.indvar535
  br i1 %exitcond876.not, label %polly.loop_exit540, label %polly.loop_header538, !llvm.loop !90

polly.loop_header548:                             ; preds = %polly.loop_header548.preheader, %polly.loop_exit556
  %polly.indvar551 = phi i64 [ %polly.indvar_next552, %polly.loop_exit556 ], [ 0, %polly.loop_header548.preheader ]
  %polly.access.mul.Packed_MemRef_call2449 = mul nuw nsw i64 %polly.indvar551, 1200
  br label %polly.loop_header554

polly.loop_exit556:                               ; preds = %polly.loop_header554
  %polly.indvar_next552 = add nuw nsw i64 %polly.indvar551, 1
  %exitcond875.not = icmp eq i64 %polly.indvar_next552, 1000
  br i1 %exitcond875.not, label %polly.loop_header564, label %polly.loop_header548

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
  %exitcond874.not = icmp eq i64 %polly.indvar_next558, 1200
  br i1 %exitcond874.not, label %polly.loop_exit556, label %polly.loop_header554

polly.loop_header564:                             ; preds = %polly.loop_exit556, %polly.loop_exit572
  %indvars.iv861 = phi i64 [ %indvars.iv.next862, %polly.loop_exit572 ], [ 0, %polly.loop_exit556 ]
  %polly.indvar567 = phi i64 [ %polly.indvar_next568, %polly.loop_exit572 ], [ 0, %polly.loop_exit556 ]
  %177 = lshr i64 %polly.indvar567, 5
  %178 = shl nsw i64 %polly.indvar567, 3
  br label %polly.loop_header570

polly.loop_exit572:                               ; preds = %polly.loop_exit579
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %indvars.iv.next862 = add nuw nsw i64 %indvars.iv861, 8
  %exitcond873.not = icmp eq i64 %polly.indvar_next568, 150
  br i1 %exitcond873.not, label %polly.exiting447, label %polly.loop_header564

polly.loop_header570:                             ; preds = %polly.loop_exit579, %polly.loop_header564
  %polly.indvar573 = phi i64 [ 0, %polly.loop_header564 ], [ %polly.indvar_next574, %polly.loop_exit579 ]
  %179 = shl nsw i64 %polly.indvar573, 3
  %180 = shl i64 %polly.indvar573, 6
  %polly.access.mul.Packed_MemRef_call2449606.us = mul nsw i64 %polly.indvar573, 9600
  %181 = or i64 %179, 1
  %182 = shl i64 %181, 3
  %polly.access.mul.Packed_MemRef_call2449606.us.1 = mul nuw nsw i64 %181, 1200
  %183 = or i64 %179, 2
  %184 = shl i64 %183, 3
  %polly.access.mul.Packed_MemRef_call2449606.us.2 = mul nuw nsw i64 %183, 1200
  %185 = or i64 %179, 3
  %186 = shl i64 %185, 3
  %polly.access.mul.Packed_MemRef_call2449606.us.3 = mul nuw nsw i64 %185, 1200
  %187 = or i64 %179, 4
  %188 = shl i64 %187, 3
  %polly.access.mul.Packed_MemRef_call2449606.us.4 = mul nuw nsw i64 %187, 1200
  %189 = or i64 %179, 5
  %190 = shl i64 %189, 3
  %polly.access.mul.Packed_MemRef_call2449606.us.5 = mul nuw nsw i64 %189, 1200
  %191 = or i64 %179, 6
  %192 = shl i64 %191, 3
  %polly.access.mul.Packed_MemRef_call2449606.us.6 = mul nuw nsw i64 %191, 1200
  %193 = or i64 %179, 7
  %194 = shl i64 %193, 3
  %polly.access.mul.Packed_MemRef_call2449606.us.7 = mul nuw nsw i64 %193, 1200
  br label %polly.loop_header577

polly.loop_exit579:                               ; preds = %polly.loop_exit585
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond872.not = icmp eq i64 %polly.indvar_next574, 125
  br i1 %exitcond872.not, label %polly.loop_exit572, label %polly.loop_header570

polly.loop_header577:                             ; preds = %polly.loop_exit585, %polly.loop_header570
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit585 ], [ %indvars.iv861, %polly.loop_header570 ]
  %polly.indvar580 = phi i64 [ %polly.indvar_next581, %polly.loop_exit585 ], [ 0, %polly.loop_header570 ]
  %195 = shl nsw i64 %polly.indvar580, 8
  %196 = sub nsw i64 %178, %195
  br label %polly.loop_header583

polly.loop_exit585:                               ; preds = %polly.loop_exit591
  %polly.indvar_next581 = add nuw nsw i64 %polly.indvar580, 1
  %indvars.iv.next864 = add nsw i64 %indvars.iv863, -256
  %exitcond871.not = icmp eq i64 %polly.indvar580, %177
  br i1 %exitcond871.not, label %polly.loop_exit579, label %polly.loop_header577

polly.loop_header583:                             ; preds = %polly.loop_exit591, %polly.loop_header577
  %indvars.iv865 = phi i64 [ %indvars.iv.next866, %polly.loop_exit591 ], [ %indvars.iv863, %polly.loop_header577 ]
  %polly.indvar586 = phi i64 [ %polly.indvar_next587, %polly.loop_exit591 ], [ 0, %polly.loop_header577 ]
  %smin867 = call i64 @llvm.smin.i64(i64 %indvars.iv865, i64 255)
  %197 = add nsw i64 %polly.indvar586, %196
  %polly.loop_guard599911 = icmp sgt i64 %197, -1
  %198 = add nuw nsw i64 %polly.indvar586, %178
  %199 = mul nuw nsw i64 %198, 8000
  %200 = mul nuw nsw i64 %198, 9600
  br i1 %polly.loop_guard599911, label %polly.loop_header589.us.preheader, label %polly.loop_exit591

polly.loop_header589.us.preheader:                ; preds = %polly.loop_header583
  %polly.access.add.Packed_MemRef_call2449607.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us, %198
  %polly.access.Packed_MemRef_call2449608.us = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us
  %_p_scalar_609.us = load double, double* %polly.access.Packed_MemRef_call2449608.us, align 8
  %201 = add nuw nsw i64 %180, %199
  %scevgep614.us = getelementptr i8, i8* %call1, i64 %201
  %scevgep614615.us = bitcast i8* %scevgep614.us to double*
  %_p_scalar_616.us = load double, double* %scevgep614615.us, align 8, !alias.scope !86, !noalias !92
  br label %polly.loop_header596.us

polly.loop_header596.us:                          ; preds = %polly.loop_header589.us.preheader, %polly.loop_header596.us
  %polly.indvar600.us = phi i64 [ %polly.indvar_next601.us, %polly.loop_header596.us ], [ 0, %polly.loop_header589.us.preheader ]
  %202 = add nuw nsw i64 %polly.indvar600.us, %195
  %203 = mul nuw nsw i64 %202, 8000
  %204 = add nuw nsw i64 %203, %180
  %scevgep603.us = getelementptr i8, i8* %call1, i64 %204
  %scevgep603604.us = bitcast i8* %scevgep603.us to double*
  %_p_scalar_605.us = load double, double* %scevgep603604.us, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.us = fmul fast double %_p_scalar_609.us, %_p_scalar_605.us
  %polly.access.add.Packed_MemRef_call2449611.us = add nuw nsw i64 %202, %polly.access.mul.Packed_MemRef_call2449606.us
  %polly.access.Packed_MemRef_call2449612.us = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us
  %_p_scalar_613.us = load double, double* %polly.access.Packed_MemRef_call2449612.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_616.us, %_p_scalar_613.us
  %205 = shl i64 %202, 3
  %206 = add nuw nsw i64 %205, %200
  %scevgep617.us = getelementptr i8, i8* %call, i64 %206
  %scevgep617618.us = bitcast i8* %scevgep617.us to double*
  %_p_scalar_619.us = load double, double* %scevgep617618.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_619.us
  store double %p_add42.i.us, double* %scevgep617618.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next601.us = add nuw nsw i64 %polly.indvar600.us, 1
  %exitcond868.not = icmp eq i64 %polly.indvar600.us, %smin867
  br i1 %exitcond868.not, label %polly.loop_exit598.loopexit.us, label %polly.loop_header596.us

polly.loop_exit598.loopexit.us:                   ; preds = %polly.loop_header596.us
  %polly.access.add.Packed_MemRef_call2449607.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us.1, %198
  %polly.access.Packed_MemRef_call2449608.us.1 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us.1
  %_p_scalar_609.us.1 = load double, double* %polly.access.Packed_MemRef_call2449608.us.1, align 8
  %207 = add nuw nsw i64 %182, %199
  %scevgep614.us.1 = getelementptr i8, i8* %call1, i64 %207
  %scevgep614615.us.1 = bitcast i8* %scevgep614.us.1 to double*
  %_p_scalar_616.us.1 = load double, double* %scevgep614615.us.1, align 8, !alias.scope !86, !noalias !92
  br label %polly.loop_header596.us.1

polly.loop_exit591:                               ; preds = %polly.loop_header596.us.7, %polly.loop_header583
  %polly.indvar_next587 = add nuw nsw i64 %polly.indvar586, 1
  %indvars.iv.next866 = add nsw i64 %indvars.iv865, 1
  %exitcond870.not = icmp eq i64 %polly.indvar_next587, 8
  br i1 %exitcond870.not, label %polly.loop_exit585, label %polly.loop_header583

polly.loop_header746:                             ; preds = %entry, %polly.loop_exit754
  %indvars.iv902 = phi i64 [ %indvars.iv.next903, %polly.loop_exit754 ], [ 0, %entry ]
  %polly.indvar749 = phi i64 [ %polly.indvar_next750, %polly.loop_exit754 ], [ 0, %entry ]
  %smin904 = call i64 @llvm.smin.i64(i64 %indvars.iv902, i64 -1168)
  %208 = shl nsw i64 %polly.indvar749, 5
  %209 = add nsw i64 %smin904, 1199
  br label %polly.loop_header752

polly.loop_exit754:                               ; preds = %polly.loop_exit760
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %indvars.iv.next903 = add nsw i64 %indvars.iv902, -32
  %exitcond907.not = icmp eq i64 %polly.indvar_next750, 38
  br i1 %exitcond907.not, label %polly.loop_header773, label %polly.loop_header746

polly.loop_header752:                             ; preds = %polly.loop_exit760, %polly.loop_header746
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %polly.loop_exit760 ], [ 0, %polly.loop_header746 ]
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %polly.loop_header746 ]
  %210 = mul nsw i64 %polly.indvar755, -32
  %smin933 = call i64 @llvm.smin.i64(i64 %210, i64 -1168)
  %211 = add nsw i64 %smin933, 1200
  %smin900 = call i64 @llvm.smin.i64(i64 %indvars.iv898, i64 -1168)
  %212 = shl nsw i64 %polly.indvar755, 5
  %213 = add nsw i64 %smin900, 1199
  br label %polly.loop_header758

polly.loop_exit760:                               ; preds = %polly.loop_exit766
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %indvars.iv.next899 = add nsw i64 %indvars.iv898, -32
  %exitcond906.not = icmp eq i64 %polly.indvar_next756, 38
  br i1 %exitcond906.not, label %polly.loop_exit754, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_exit766, %polly.loop_header752
  %polly.indvar761 = phi i64 [ 0, %polly.loop_header752 ], [ %polly.indvar_next762, %polly.loop_exit766 ]
  %214 = add nuw nsw i64 %polly.indvar761, %208
  %215 = trunc i64 %214 to i32
  %216 = mul nuw nsw i64 %214, 9600
  %min.iters.check = icmp eq i64 %211, 0
  br i1 %min.iters.check, label %polly.loop_header764, label %vector.ph934

vector.ph934:                                     ; preds = %polly.loop_header758
  %broadcast.splatinsert941 = insertelement <4 x i64> poison, i64 %212, i32 0
  %broadcast.splat942 = shufflevector <4 x i64> %broadcast.splatinsert941, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert943 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat944 = shufflevector <4 x i32> %broadcast.splatinsert943, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body932

vector.body932:                                   ; preds = %vector.body932, %vector.ph934
  %index935 = phi i64 [ 0, %vector.ph934 ], [ %index.next936, %vector.body932 ]
  %vec.ind939 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph934 ], [ %vec.ind.next940, %vector.body932 ]
  %217 = add nuw nsw <4 x i64> %vec.ind939, %broadcast.splat942
  %218 = trunc <4 x i64> %217 to <4 x i32>
  %219 = mul <4 x i32> %broadcast.splat944, %218
  %220 = add <4 x i32> %219, <i32 3, i32 3, i32 3, i32 3>
  %221 = urem <4 x i32> %220, <i32 1200, i32 1200, i32 1200, i32 1200>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %224 = extractelement <4 x i64> %217, i32 0
  %225 = shl i64 %224, 3
  %226 = add nuw nsw i64 %225, %216
  %227 = getelementptr i8, i8* %call, i64 %226
  %228 = bitcast i8* %227 to <4 x double>*
  store <4 x double> %223, <4 x double>* %228, align 8, !alias.scope !93, !noalias !95
  %index.next936 = add i64 %index935, 4
  %vec.ind.next940 = add <4 x i64> %vec.ind939, <i64 4, i64 4, i64 4, i64 4>
  %229 = icmp eq i64 %index.next936, %211
  br i1 %229, label %polly.loop_exit766, label %vector.body932, !llvm.loop !98

polly.loop_exit766:                               ; preds = %vector.body932, %polly.loop_header764
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %exitcond905.not = icmp eq i64 %polly.indvar761, %209
  br i1 %exitcond905.not, label %polly.loop_exit760, label %polly.loop_header758

polly.loop_header764:                             ; preds = %polly.loop_header758, %polly.loop_header764
  %polly.indvar767 = phi i64 [ %polly.indvar_next768, %polly.loop_header764 ], [ 0, %polly.loop_header758 ]
  %230 = add nuw nsw i64 %polly.indvar767, %212
  %231 = trunc i64 %230 to i32
  %232 = mul i32 %231, %215
  %233 = add i32 %232, 3
  %234 = urem i32 %233, 1200
  %p_conv31.i = sitofp i32 %234 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %235 = shl i64 %230, 3
  %236 = add nuw nsw i64 %235, %216
  %scevgep770 = getelementptr i8, i8* %call, i64 %236
  %scevgep770771 = bitcast i8* %scevgep770 to double*
  store double %p_div33.i, double* %scevgep770771, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next768 = add nuw nsw i64 %polly.indvar767, 1
  %exitcond901.not = icmp eq i64 %polly.indvar767, %213
  br i1 %exitcond901.not, label %polly.loop_exit766, label %polly.loop_header764, !llvm.loop !99

polly.loop_header773:                             ; preds = %polly.loop_exit754, %polly.loop_exit781
  %indvars.iv892 = phi i64 [ %indvars.iv.next893, %polly.loop_exit781 ], [ 0, %polly.loop_exit754 ]
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_exit754 ]
  %smin894 = call i64 @llvm.smin.i64(i64 %indvars.iv892, i64 -1168)
  %237 = shl nsw i64 %polly.indvar776, 5
  %238 = add nsw i64 %smin894, 1199
  br label %polly.loop_header779

polly.loop_exit781:                               ; preds = %polly.loop_exit787
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %indvars.iv.next893 = add nsw i64 %indvars.iv892, -32
  %exitcond897.not = icmp eq i64 %polly.indvar_next777, 38
  br i1 %exitcond897.not, label %polly.loop_header799, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_exit787, %polly.loop_header773
  %indvars.iv888 = phi i64 [ %indvars.iv.next889, %polly.loop_exit787 ], [ 0, %polly.loop_header773 ]
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %polly.loop_header773 ]
  %239 = mul nsw i64 %polly.indvar782, -32
  %smin948 = call i64 @llvm.smin.i64(i64 %239, i64 -968)
  %240 = add nsw i64 %smin948, 1000
  %smin890 = call i64 @llvm.smin.i64(i64 %indvars.iv888, i64 -968)
  %241 = shl nsw i64 %polly.indvar782, 5
  %242 = add nsw i64 %smin890, 999
  br label %polly.loop_header785

polly.loop_exit787:                               ; preds = %polly.loop_exit793
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %indvars.iv.next889 = add nsw i64 %indvars.iv888, -32
  %exitcond896.not = icmp eq i64 %polly.indvar_next783, 32
  br i1 %exitcond896.not, label %polly.loop_exit781, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_exit793, %polly.loop_header779
  %polly.indvar788 = phi i64 [ 0, %polly.loop_header779 ], [ %polly.indvar_next789, %polly.loop_exit793 ]
  %243 = add nuw nsw i64 %polly.indvar788, %237
  %244 = trunc i64 %243 to i32
  %245 = mul nuw nsw i64 %243, 8000
  %min.iters.check949 = icmp eq i64 %240, 0
  br i1 %min.iters.check949, label %polly.loop_header791, label %vector.ph950

vector.ph950:                                     ; preds = %polly.loop_header785
  %broadcast.splatinsert959 = insertelement <4 x i64> poison, i64 %241, i32 0
  %broadcast.splat960 = shufflevector <4 x i64> %broadcast.splatinsert959, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert961 = insertelement <4 x i32> poison, i32 %244, i32 0
  %broadcast.splat962 = shufflevector <4 x i32> %broadcast.splatinsert961, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body947

vector.body947:                                   ; preds = %vector.body947, %vector.ph950
  %index953 = phi i64 [ 0, %vector.ph950 ], [ %index.next954, %vector.body947 ]
  %vec.ind957 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph950 ], [ %vec.ind.next958, %vector.body947 ]
  %246 = add nuw nsw <4 x i64> %vec.ind957, %broadcast.splat960
  %247 = trunc <4 x i64> %246 to <4 x i32>
  %248 = mul <4 x i32> %broadcast.splat962, %247
  %249 = add <4 x i32> %248, <i32 2, i32 2, i32 2, i32 2>
  %250 = urem <4 x i32> %249, <i32 1000, i32 1000, i32 1000, i32 1000>
  %251 = sitofp <4 x i32> %250 to <4 x double>
  %252 = fmul fast <4 x double> %251, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %253 = extractelement <4 x i64> %246, i32 0
  %254 = shl i64 %253, 3
  %255 = add nuw nsw i64 %254, %245
  %256 = getelementptr i8, i8* %call2, i64 %255
  %257 = bitcast i8* %256 to <4 x double>*
  store <4 x double> %252, <4 x double>* %257, align 8, !alias.scope !97, !noalias !100
  %index.next954 = add i64 %index953, 4
  %vec.ind.next958 = add <4 x i64> %vec.ind957, <i64 4, i64 4, i64 4, i64 4>
  %258 = icmp eq i64 %index.next954, %240
  br i1 %258, label %polly.loop_exit793, label %vector.body947, !llvm.loop !101

polly.loop_exit793:                               ; preds = %vector.body947, %polly.loop_header791
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond895.not = icmp eq i64 %polly.indvar788, %238
  br i1 %exitcond895.not, label %polly.loop_exit787, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_header785, %polly.loop_header791
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_header791 ], [ 0, %polly.loop_header785 ]
  %259 = add nuw nsw i64 %polly.indvar794, %241
  %260 = trunc i64 %259 to i32
  %261 = mul i32 %260, %244
  %262 = add i32 %261, 2
  %263 = urem i32 %262, 1000
  %p_conv10.i = sitofp i32 %263 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %264 = shl i64 %259, 3
  %265 = add nuw nsw i64 %264, %245
  %scevgep797 = getelementptr i8, i8* %call2, i64 %265
  %scevgep797798 = bitcast i8* %scevgep797 to double*
  store double %p_div12.i, double* %scevgep797798, align 8, !alias.scope !97, !noalias !100
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond891.not = icmp eq i64 %polly.indvar794, %242
  br i1 %exitcond891.not, label %polly.loop_exit793, label %polly.loop_header791, !llvm.loop !102

polly.loop_header799:                             ; preds = %polly.loop_exit781, %polly.loop_exit807
  %indvars.iv882 = phi i64 [ %indvars.iv.next883, %polly.loop_exit807 ], [ 0, %polly.loop_exit781 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_exit781 ]
  %smin884 = call i64 @llvm.smin.i64(i64 %indvars.iv882, i64 -1168)
  %266 = shl nsw i64 %polly.indvar802, 5
  %267 = add nsw i64 %smin884, 1199
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next883 = add nsw i64 %indvars.iv882, -32
  %exitcond887.not = icmp eq i64 %polly.indvar_next803, 38
  br i1 %exitcond887.not, label %init_array.exit, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %indvars.iv878 = phi i64 [ %indvars.iv.next879, %polly.loop_exit813 ], [ 0, %polly.loop_header799 ]
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_header799 ]
  %268 = mul nsw i64 %polly.indvar808, -32
  %smin966 = call i64 @llvm.smin.i64(i64 %268, i64 -968)
  %269 = add nsw i64 %smin966, 1000
  %smin880 = call i64 @llvm.smin.i64(i64 %indvars.iv878, i64 -968)
  %270 = shl nsw i64 %polly.indvar808, 5
  %271 = add nsw i64 %smin880, 999
  br label %polly.loop_header811

polly.loop_exit813:                               ; preds = %polly.loop_exit819
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %indvars.iv.next879 = add nsw i64 %indvars.iv878, -32
  %exitcond886.not = icmp eq i64 %polly.indvar_next809, 32
  br i1 %exitcond886.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_exit819, %polly.loop_header805
  %polly.indvar814 = phi i64 [ 0, %polly.loop_header805 ], [ %polly.indvar_next815, %polly.loop_exit819 ]
  %272 = add nuw nsw i64 %polly.indvar814, %266
  %273 = trunc i64 %272 to i32
  %274 = mul nuw nsw i64 %272, 8000
  %min.iters.check967 = icmp eq i64 %269, 0
  br i1 %min.iters.check967, label %polly.loop_header817, label %vector.ph968

vector.ph968:                                     ; preds = %polly.loop_header811
  %broadcast.splatinsert977 = insertelement <4 x i64> poison, i64 %270, i32 0
  %broadcast.splat978 = shufflevector <4 x i64> %broadcast.splatinsert977, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert979 = insertelement <4 x i32> poison, i32 %273, i32 0
  %broadcast.splat980 = shufflevector <4 x i32> %broadcast.splatinsert979, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %vector.ph968
  %index971 = phi i64 [ 0, %vector.ph968 ], [ %index.next972, %vector.body965 ]
  %vec.ind975 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph968 ], [ %vec.ind.next976, %vector.body965 ]
  %275 = add nuw nsw <4 x i64> %vec.ind975, %broadcast.splat978
  %276 = trunc <4 x i64> %275 to <4 x i32>
  %277 = mul <4 x i32> %broadcast.splat980, %276
  %278 = add <4 x i32> %277, <i32 1, i32 1, i32 1, i32 1>
  %279 = urem <4 x i32> %278, <i32 1200, i32 1200, i32 1200, i32 1200>
  %280 = sitofp <4 x i32> %279 to <4 x double>
  %281 = fmul fast <4 x double> %280, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %282 = extractelement <4 x i64> %275, i32 0
  %283 = shl i64 %282, 3
  %284 = add nuw nsw i64 %283, %274
  %285 = getelementptr i8, i8* %call1, i64 %284
  %286 = bitcast i8* %285 to <4 x double>*
  store <4 x double> %281, <4 x double>* %286, align 8, !alias.scope !96, !noalias !103
  %index.next972 = add i64 %index971, 4
  %vec.ind.next976 = add <4 x i64> %vec.ind975, <i64 4, i64 4, i64 4, i64 4>
  %287 = icmp eq i64 %index.next972, %269
  br i1 %287, label %polly.loop_exit819, label %vector.body965, !llvm.loop !104

polly.loop_exit819:                               ; preds = %vector.body965, %polly.loop_header817
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond885.not = icmp eq i64 %polly.indvar814, %267
  br i1 %exitcond885.not, label %polly.loop_exit813, label %polly.loop_header811

polly.loop_header817:                             ; preds = %polly.loop_header811, %polly.loop_header817
  %polly.indvar820 = phi i64 [ %polly.indvar_next821, %polly.loop_header817 ], [ 0, %polly.loop_header811 ]
  %288 = add nuw nsw i64 %polly.indvar820, %270
  %289 = trunc i64 %288 to i32
  %290 = mul i32 %289, %273
  %291 = add i32 %290, 1
  %292 = urem i32 %291, 1200
  %p_conv.i = sitofp i32 %292 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %293 = shl i64 %288, 3
  %294 = add nuw nsw i64 %293, %274
  %scevgep824 = getelementptr i8, i8* %call1, i64 %294
  %scevgep824825 = bitcast i8* %scevgep824 to double*
  store double %p_div.i, double* %scevgep824825, align 8, !alias.scope !96, !noalias !103
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond881.not = icmp eq i64 %polly.indvar820, %271
  br i1 %exitcond881.not, label %polly.loop_exit819, label %polly.loop_header817, !llvm.loop !105

polly.loop_header245.us.1:                        ; preds = %polly.loop_header245.us.1, %polly.loop_exit247.loopexit.us
  %polly.indvar248.us.1 = phi i64 [ %polly.indvar_next249.us.1, %polly.loop_header245.us.1 ], [ 0, %polly.loop_exit247.loopexit.us ]
  %295 = add nuw nsw i64 %polly.indvar248.us.1, %115
  %296 = mul nuw nsw i64 %295, 8000
  %297 = add nuw nsw i64 %296, %102
  %scevgep251.us.1 = getelementptr i8, i8* %call1, i64 %297
  %scevgep251252.us.1 = bitcast i8* %scevgep251.us.1 to double*
  %_p_scalar_253.us.1 = load double, double* %scevgep251252.us.1, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_257.us.1, %_p_scalar_253.us.1
  %polly.access.add.Packed_MemRef_call2259.us.1 = add nuw nsw i64 %295, %polly.access.mul.Packed_MemRef_call2254.us.1
  %polly.access.Packed_MemRef_call2260.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us.1
  %_p_scalar_261.us.1 = load double, double* %polly.access.Packed_MemRef_call2260.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_264.us.1, %_p_scalar_261.us.1
  %298 = shl i64 %295, 3
  %299 = add nuw nsw i64 %298, %120
  %scevgep265.us.1 = getelementptr i8, i8* %call, i64 %299
  %scevgep265266.us.1 = bitcast i8* %scevgep265.us.1 to double*
  %_p_scalar_267.us.1 = load double, double* %scevgep265266.us.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_267.us.1
  store double %p_add42.i118.us.1, double* %scevgep265266.us.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next249.us.1 = add nuw nsw i64 %polly.indvar248.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar248.us.1, %smin
  br i1 %exitcond.1.not, label %polly.loop_exit247.loopexit.us.1, label %polly.loop_header245.us.1

polly.loop_exit247.loopexit.us.1:                 ; preds = %polly.loop_header245.us.1
  %polly.access.add.Packed_MemRef_call2255.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us.2, %118
  %polly.access.Packed_MemRef_call2256.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us.2
  %_p_scalar_257.us.2 = load double, double* %polly.access.Packed_MemRef_call2256.us.2, align 8
  %300 = add nuw nsw i64 %104, %119
  %scevgep262.us.2 = getelementptr i8, i8* %call1, i64 %300
  %scevgep262263.us.2 = bitcast i8* %scevgep262.us.2 to double*
  %_p_scalar_264.us.2 = load double, double* %scevgep262263.us.2, align 8, !alias.scope !65, !noalias !72
  br label %polly.loop_header245.us.2

polly.loop_header245.us.2:                        ; preds = %polly.loop_header245.us.2, %polly.loop_exit247.loopexit.us.1
  %polly.indvar248.us.2 = phi i64 [ %polly.indvar_next249.us.2, %polly.loop_header245.us.2 ], [ 0, %polly.loop_exit247.loopexit.us.1 ]
  %301 = add nuw nsw i64 %polly.indvar248.us.2, %115
  %302 = mul nuw nsw i64 %301, 8000
  %303 = add nuw nsw i64 %302, %104
  %scevgep251.us.2 = getelementptr i8, i8* %call1, i64 %303
  %scevgep251252.us.2 = bitcast i8* %scevgep251.us.2 to double*
  %_p_scalar_253.us.2 = load double, double* %scevgep251252.us.2, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_257.us.2, %_p_scalar_253.us.2
  %polly.access.add.Packed_MemRef_call2259.us.2 = add nuw nsw i64 %301, %polly.access.mul.Packed_MemRef_call2254.us.2
  %polly.access.Packed_MemRef_call2260.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us.2
  %_p_scalar_261.us.2 = load double, double* %polly.access.Packed_MemRef_call2260.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_264.us.2, %_p_scalar_261.us.2
  %304 = shl i64 %301, 3
  %305 = add nuw nsw i64 %304, %120
  %scevgep265.us.2 = getelementptr i8, i8* %call, i64 %305
  %scevgep265266.us.2 = bitcast i8* %scevgep265.us.2 to double*
  %_p_scalar_267.us.2 = load double, double* %scevgep265266.us.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_267.us.2
  store double %p_add42.i118.us.2, double* %scevgep265266.us.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next249.us.2 = add nuw nsw i64 %polly.indvar248.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar248.us.2, %smin
  br i1 %exitcond.2.not, label %polly.loop_exit247.loopexit.us.2, label %polly.loop_header245.us.2

polly.loop_exit247.loopexit.us.2:                 ; preds = %polly.loop_header245.us.2
  %polly.access.add.Packed_MemRef_call2255.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us.3, %118
  %polly.access.Packed_MemRef_call2256.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us.3
  %_p_scalar_257.us.3 = load double, double* %polly.access.Packed_MemRef_call2256.us.3, align 8
  %306 = add nuw nsw i64 %106, %119
  %scevgep262.us.3 = getelementptr i8, i8* %call1, i64 %306
  %scevgep262263.us.3 = bitcast i8* %scevgep262.us.3 to double*
  %_p_scalar_264.us.3 = load double, double* %scevgep262263.us.3, align 8, !alias.scope !65, !noalias !72
  br label %polly.loop_header245.us.3

polly.loop_header245.us.3:                        ; preds = %polly.loop_header245.us.3, %polly.loop_exit247.loopexit.us.2
  %polly.indvar248.us.3 = phi i64 [ %polly.indvar_next249.us.3, %polly.loop_header245.us.3 ], [ 0, %polly.loop_exit247.loopexit.us.2 ]
  %307 = add nuw nsw i64 %polly.indvar248.us.3, %115
  %308 = mul nuw nsw i64 %307, 8000
  %309 = add nuw nsw i64 %308, %106
  %scevgep251.us.3 = getelementptr i8, i8* %call1, i64 %309
  %scevgep251252.us.3 = bitcast i8* %scevgep251.us.3 to double*
  %_p_scalar_253.us.3 = load double, double* %scevgep251252.us.3, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_257.us.3, %_p_scalar_253.us.3
  %polly.access.add.Packed_MemRef_call2259.us.3 = add nuw nsw i64 %307, %polly.access.mul.Packed_MemRef_call2254.us.3
  %polly.access.Packed_MemRef_call2260.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us.3
  %_p_scalar_261.us.3 = load double, double* %polly.access.Packed_MemRef_call2260.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_264.us.3, %_p_scalar_261.us.3
  %310 = shl i64 %307, 3
  %311 = add nuw nsw i64 %310, %120
  %scevgep265.us.3 = getelementptr i8, i8* %call, i64 %311
  %scevgep265266.us.3 = bitcast i8* %scevgep265.us.3 to double*
  %_p_scalar_267.us.3 = load double, double* %scevgep265266.us.3, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_267.us.3
  store double %p_add42.i118.us.3, double* %scevgep265266.us.3, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next249.us.3 = add nuw nsw i64 %polly.indvar248.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar248.us.3, %smin
  br i1 %exitcond.3.not, label %polly.loop_exit247.loopexit.us.3, label %polly.loop_header245.us.3

polly.loop_exit247.loopexit.us.3:                 ; preds = %polly.loop_header245.us.3
  %polly.access.add.Packed_MemRef_call2255.us.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us.4, %118
  %polly.access.Packed_MemRef_call2256.us.4 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us.4
  %_p_scalar_257.us.4 = load double, double* %polly.access.Packed_MemRef_call2256.us.4, align 8
  %312 = add nuw nsw i64 %108, %119
  %scevgep262.us.4 = getelementptr i8, i8* %call1, i64 %312
  %scevgep262263.us.4 = bitcast i8* %scevgep262.us.4 to double*
  %_p_scalar_264.us.4 = load double, double* %scevgep262263.us.4, align 8, !alias.scope !65, !noalias !72
  br label %polly.loop_header245.us.4

polly.loop_header245.us.4:                        ; preds = %polly.loop_header245.us.4, %polly.loop_exit247.loopexit.us.3
  %polly.indvar248.us.4 = phi i64 [ %polly.indvar_next249.us.4, %polly.loop_header245.us.4 ], [ 0, %polly.loop_exit247.loopexit.us.3 ]
  %313 = add nuw nsw i64 %polly.indvar248.us.4, %115
  %314 = mul nuw nsw i64 %313, 8000
  %315 = add nuw nsw i64 %314, %108
  %scevgep251.us.4 = getelementptr i8, i8* %call1, i64 %315
  %scevgep251252.us.4 = bitcast i8* %scevgep251.us.4 to double*
  %_p_scalar_253.us.4 = load double, double* %scevgep251252.us.4, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.us.4 = fmul fast double %_p_scalar_257.us.4, %_p_scalar_253.us.4
  %polly.access.add.Packed_MemRef_call2259.us.4 = add nuw nsw i64 %313, %polly.access.mul.Packed_MemRef_call2254.us.4
  %polly.access.Packed_MemRef_call2260.us.4 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us.4
  %_p_scalar_261.us.4 = load double, double* %polly.access.Packed_MemRef_call2260.us.4, align 8
  %p_mul37.i114.us.4 = fmul fast double %_p_scalar_264.us.4, %_p_scalar_261.us.4
  %316 = shl i64 %313, 3
  %317 = add nuw nsw i64 %316, %120
  %scevgep265.us.4 = getelementptr i8, i8* %call, i64 %317
  %scevgep265266.us.4 = bitcast i8* %scevgep265.us.4 to double*
  %_p_scalar_267.us.4 = load double, double* %scevgep265266.us.4, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.4 = fadd fast double %p_mul37.i114.us.4, %p_mul27.i112.us.4
  %p_reass.mul.i117.us.4 = fmul fast double %p_reass.add.i116.us.4, 1.500000e+00
  %p_add42.i118.us.4 = fadd fast double %p_reass.mul.i117.us.4, %_p_scalar_267.us.4
  store double %p_add42.i118.us.4, double* %scevgep265266.us.4, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next249.us.4 = add nuw nsw i64 %polly.indvar248.us.4, 1
  %exitcond.4.not = icmp eq i64 %polly.indvar248.us.4, %smin
  br i1 %exitcond.4.not, label %polly.loop_exit247.loopexit.us.4, label %polly.loop_header245.us.4

polly.loop_exit247.loopexit.us.4:                 ; preds = %polly.loop_header245.us.4
  %polly.access.add.Packed_MemRef_call2255.us.5 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us.5, %118
  %polly.access.Packed_MemRef_call2256.us.5 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us.5
  %_p_scalar_257.us.5 = load double, double* %polly.access.Packed_MemRef_call2256.us.5, align 8
  %318 = add nuw nsw i64 %110, %119
  %scevgep262.us.5 = getelementptr i8, i8* %call1, i64 %318
  %scevgep262263.us.5 = bitcast i8* %scevgep262.us.5 to double*
  %_p_scalar_264.us.5 = load double, double* %scevgep262263.us.5, align 8, !alias.scope !65, !noalias !72
  br label %polly.loop_header245.us.5

polly.loop_header245.us.5:                        ; preds = %polly.loop_header245.us.5, %polly.loop_exit247.loopexit.us.4
  %polly.indvar248.us.5 = phi i64 [ %polly.indvar_next249.us.5, %polly.loop_header245.us.5 ], [ 0, %polly.loop_exit247.loopexit.us.4 ]
  %319 = add nuw nsw i64 %polly.indvar248.us.5, %115
  %320 = mul nuw nsw i64 %319, 8000
  %321 = add nuw nsw i64 %320, %110
  %scevgep251.us.5 = getelementptr i8, i8* %call1, i64 %321
  %scevgep251252.us.5 = bitcast i8* %scevgep251.us.5 to double*
  %_p_scalar_253.us.5 = load double, double* %scevgep251252.us.5, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.us.5 = fmul fast double %_p_scalar_257.us.5, %_p_scalar_253.us.5
  %polly.access.add.Packed_MemRef_call2259.us.5 = add nuw nsw i64 %319, %polly.access.mul.Packed_MemRef_call2254.us.5
  %polly.access.Packed_MemRef_call2260.us.5 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us.5
  %_p_scalar_261.us.5 = load double, double* %polly.access.Packed_MemRef_call2260.us.5, align 8
  %p_mul37.i114.us.5 = fmul fast double %_p_scalar_264.us.5, %_p_scalar_261.us.5
  %322 = shl i64 %319, 3
  %323 = add nuw nsw i64 %322, %120
  %scevgep265.us.5 = getelementptr i8, i8* %call, i64 %323
  %scevgep265266.us.5 = bitcast i8* %scevgep265.us.5 to double*
  %_p_scalar_267.us.5 = load double, double* %scevgep265266.us.5, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.5 = fadd fast double %p_mul37.i114.us.5, %p_mul27.i112.us.5
  %p_reass.mul.i117.us.5 = fmul fast double %p_reass.add.i116.us.5, 1.500000e+00
  %p_add42.i118.us.5 = fadd fast double %p_reass.mul.i117.us.5, %_p_scalar_267.us.5
  store double %p_add42.i118.us.5, double* %scevgep265266.us.5, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next249.us.5 = add nuw nsw i64 %polly.indvar248.us.5, 1
  %exitcond.5.not = icmp eq i64 %polly.indvar248.us.5, %smin
  br i1 %exitcond.5.not, label %polly.loop_exit247.loopexit.us.5, label %polly.loop_header245.us.5

polly.loop_exit247.loopexit.us.5:                 ; preds = %polly.loop_header245.us.5
  %polly.access.add.Packed_MemRef_call2255.us.6 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us.6, %118
  %polly.access.Packed_MemRef_call2256.us.6 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us.6
  %_p_scalar_257.us.6 = load double, double* %polly.access.Packed_MemRef_call2256.us.6, align 8
  %324 = add nuw nsw i64 %112, %119
  %scevgep262.us.6 = getelementptr i8, i8* %call1, i64 %324
  %scevgep262263.us.6 = bitcast i8* %scevgep262.us.6 to double*
  %_p_scalar_264.us.6 = load double, double* %scevgep262263.us.6, align 8, !alias.scope !65, !noalias !72
  br label %polly.loop_header245.us.6

polly.loop_header245.us.6:                        ; preds = %polly.loop_header245.us.6, %polly.loop_exit247.loopexit.us.5
  %polly.indvar248.us.6 = phi i64 [ %polly.indvar_next249.us.6, %polly.loop_header245.us.6 ], [ 0, %polly.loop_exit247.loopexit.us.5 ]
  %325 = add nuw nsw i64 %polly.indvar248.us.6, %115
  %326 = mul nuw nsw i64 %325, 8000
  %327 = add nuw nsw i64 %326, %112
  %scevgep251.us.6 = getelementptr i8, i8* %call1, i64 %327
  %scevgep251252.us.6 = bitcast i8* %scevgep251.us.6 to double*
  %_p_scalar_253.us.6 = load double, double* %scevgep251252.us.6, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.us.6 = fmul fast double %_p_scalar_257.us.6, %_p_scalar_253.us.6
  %polly.access.add.Packed_MemRef_call2259.us.6 = add nuw nsw i64 %325, %polly.access.mul.Packed_MemRef_call2254.us.6
  %polly.access.Packed_MemRef_call2260.us.6 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us.6
  %_p_scalar_261.us.6 = load double, double* %polly.access.Packed_MemRef_call2260.us.6, align 8
  %p_mul37.i114.us.6 = fmul fast double %_p_scalar_264.us.6, %_p_scalar_261.us.6
  %328 = shl i64 %325, 3
  %329 = add nuw nsw i64 %328, %120
  %scevgep265.us.6 = getelementptr i8, i8* %call, i64 %329
  %scevgep265266.us.6 = bitcast i8* %scevgep265.us.6 to double*
  %_p_scalar_267.us.6 = load double, double* %scevgep265266.us.6, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.6 = fadd fast double %p_mul37.i114.us.6, %p_mul27.i112.us.6
  %p_reass.mul.i117.us.6 = fmul fast double %p_reass.add.i116.us.6, 1.500000e+00
  %p_add42.i118.us.6 = fadd fast double %p_reass.mul.i117.us.6, %_p_scalar_267.us.6
  store double %p_add42.i118.us.6, double* %scevgep265266.us.6, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next249.us.6 = add nuw nsw i64 %polly.indvar248.us.6, 1
  %exitcond.6.not = icmp eq i64 %polly.indvar248.us.6, %smin
  br i1 %exitcond.6.not, label %polly.loop_exit247.loopexit.us.6, label %polly.loop_header245.us.6

polly.loop_exit247.loopexit.us.6:                 ; preds = %polly.loop_header245.us.6
  %polly.access.add.Packed_MemRef_call2255.us.7 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us.7, %118
  %polly.access.Packed_MemRef_call2256.us.7 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us.7
  %_p_scalar_257.us.7 = load double, double* %polly.access.Packed_MemRef_call2256.us.7, align 8
  %330 = add nuw nsw i64 %114, %119
  %scevgep262.us.7 = getelementptr i8, i8* %call1, i64 %330
  %scevgep262263.us.7 = bitcast i8* %scevgep262.us.7 to double*
  %_p_scalar_264.us.7 = load double, double* %scevgep262263.us.7, align 8, !alias.scope !65, !noalias !72
  br label %polly.loop_header245.us.7

polly.loop_header245.us.7:                        ; preds = %polly.loop_header245.us.7, %polly.loop_exit247.loopexit.us.6
  %polly.indvar248.us.7 = phi i64 [ %polly.indvar_next249.us.7, %polly.loop_header245.us.7 ], [ 0, %polly.loop_exit247.loopexit.us.6 ]
  %331 = add nuw nsw i64 %polly.indvar248.us.7, %115
  %332 = mul nuw nsw i64 %331, 8000
  %333 = add nuw nsw i64 %332, %114
  %scevgep251.us.7 = getelementptr i8, i8* %call1, i64 %333
  %scevgep251252.us.7 = bitcast i8* %scevgep251.us.7 to double*
  %_p_scalar_253.us.7 = load double, double* %scevgep251252.us.7, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.us.7 = fmul fast double %_p_scalar_257.us.7, %_p_scalar_253.us.7
  %polly.access.add.Packed_MemRef_call2259.us.7 = add nuw nsw i64 %331, %polly.access.mul.Packed_MemRef_call2254.us.7
  %polly.access.Packed_MemRef_call2260.us.7 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us.7
  %_p_scalar_261.us.7 = load double, double* %polly.access.Packed_MemRef_call2260.us.7, align 8
  %p_mul37.i114.us.7 = fmul fast double %_p_scalar_264.us.7, %_p_scalar_261.us.7
  %334 = shl i64 %331, 3
  %335 = add nuw nsw i64 %334, %120
  %scevgep265.us.7 = getelementptr i8, i8* %call, i64 %335
  %scevgep265266.us.7 = bitcast i8* %scevgep265.us.7 to double*
  %_p_scalar_267.us.7 = load double, double* %scevgep265266.us.7, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.7 = fadd fast double %p_mul37.i114.us.7, %p_mul27.i112.us.7
  %p_reass.mul.i117.us.7 = fmul fast double %p_reass.add.i116.us.7, 1.500000e+00
  %p_add42.i118.us.7 = fadd fast double %p_reass.mul.i117.us.7, %_p_scalar_267.us.7
  store double %p_add42.i118.us.7, double* %scevgep265266.us.7, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next249.us.7 = add nuw nsw i64 %polly.indvar248.us.7, 1
  %exitcond.7.not = icmp eq i64 %polly.indvar248.us.7, %smin
  br i1 %exitcond.7.not, label %polly.loop_exit241, label %polly.loop_header245.us.7

polly.loop_header420.us.1:                        ; preds = %polly.loop_header420.us.1, %polly.loop_exit422.loopexit.us
  %polly.indvar424.us.1 = phi i64 [ %polly.indvar_next425.us.1, %polly.loop_header420.us.1 ], [ 0, %polly.loop_exit422.loopexit.us ]
  %336 = add nuw nsw i64 %polly.indvar424.us.1, %155
  %337 = mul nuw nsw i64 %336, 8000
  %338 = add nuw nsw i64 %337, %142
  %scevgep427.us.1 = getelementptr i8, i8* %call1, i64 %338
  %scevgep427428.us.1 = bitcast i8* %scevgep427.us.1 to double*
  %_p_scalar_429.us.1 = load double, double* %scevgep427428.us.1, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_433.us.1, %_p_scalar_429.us.1
  %polly.access.add.Packed_MemRef_call2273435.us.1 = add nuw nsw i64 %336, %polly.access.mul.Packed_MemRef_call2273430.us.1
  %polly.access.Packed_MemRef_call2273436.us.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us.1
  %_p_scalar_437.us.1 = load double, double* %polly.access.Packed_MemRef_call2273436.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_440.us.1, %_p_scalar_437.us.1
  %339 = shl i64 %336, 3
  %340 = add nuw nsw i64 %339, %160
  %scevgep441.us.1 = getelementptr i8, i8* %call, i64 %340
  %scevgep441442.us.1 = bitcast i8* %scevgep441.us.1 to double*
  %_p_scalar_443.us.1 = load double, double* %scevgep441442.us.1, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_443.us.1
  store double %p_add42.i79.us.1, double* %scevgep441442.us.1, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next425.us.1 = add nuw nsw i64 %polly.indvar424.us.1, 1
  %exitcond851.1.not = icmp eq i64 %polly.indvar424.us.1, %smin850
  br i1 %exitcond851.1.not, label %polly.loop_exit422.loopexit.us.1, label %polly.loop_header420.us.1

polly.loop_exit422.loopexit.us.1:                 ; preds = %polly.loop_header420.us.1
  %polly.access.add.Packed_MemRef_call2273431.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us.2, %158
  %polly.access.Packed_MemRef_call2273432.us.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us.2
  %_p_scalar_433.us.2 = load double, double* %polly.access.Packed_MemRef_call2273432.us.2, align 8
  %341 = add nuw nsw i64 %144, %159
  %scevgep438.us.2 = getelementptr i8, i8* %call1, i64 %341
  %scevgep438439.us.2 = bitcast i8* %scevgep438.us.2 to double*
  %_p_scalar_440.us.2 = load double, double* %scevgep438439.us.2, align 8, !alias.scope !76, !noalias !82
  br label %polly.loop_header420.us.2

polly.loop_header420.us.2:                        ; preds = %polly.loop_header420.us.2, %polly.loop_exit422.loopexit.us.1
  %polly.indvar424.us.2 = phi i64 [ %polly.indvar_next425.us.2, %polly.loop_header420.us.2 ], [ 0, %polly.loop_exit422.loopexit.us.1 ]
  %342 = add nuw nsw i64 %polly.indvar424.us.2, %155
  %343 = mul nuw nsw i64 %342, 8000
  %344 = add nuw nsw i64 %343, %144
  %scevgep427.us.2 = getelementptr i8, i8* %call1, i64 %344
  %scevgep427428.us.2 = bitcast i8* %scevgep427.us.2 to double*
  %_p_scalar_429.us.2 = load double, double* %scevgep427428.us.2, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_433.us.2, %_p_scalar_429.us.2
  %polly.access.add.Packed_MemRef_call2273435.us.2 = add nuw nsw i64 %342, %polly.access.mul.Packed_MemRef_call2273430.us.2
  %polly.access.Packed_MemRef_call2273436.us.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us.2
  %_p_scalar_437.us.2 = load double, double* %polly.access.Packed_MemRef_call2273436.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_440.us.2, %_p_scalar_437.us.2
  %345 = shl i64 %342, 3
  %346 = add nuw nsw i64 %345, %160
  %scevgep441.us.2 = getelementptr i8, i8* %call, i64 %346
  %scevgep441442.us.2 = bitcast i8* %scevgep441.us.2 to double*
  %_p_scalar_443.us.2 = load double, double* %scevgep441442.us.2, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_443.us.2
  store double %p_add42.i79.us.2, double* %scevgep441442.us.2, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next425.us.2 = add nuw nsw i64 %polly.indvar424.us.2, 1
  %exitcond851.2.not = icmp eq i64 %polly.indvar424.us.2, %smin850
  br i1 %exitcond851.2.not, label %polly.loop_exit422.loopexit.us.2, label %polly.loop_header420.us.2

polly.loop_exit422.loopexit.us.2:                 ; preds = %polly.loop_header420.us.2
  %polly.access.add.Packed_MemRef_call2273431.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us.3, %158
  %polly.access.Packed_MemRef_call2273432.us.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us.3
  %_p_scalar_433.us.3 = load double, double* %polly.access.Packed_MemRef_call2273432.us.3, align 8
  %347 = add nuw nsw i64 %146, %159
  %scevgep438.us.3 = getelementptr i8, i8* %call1, i64 %347
  %scevgep438439.us.3 = bitcast i8* %scevgep438.us.3 to double*
  %_p_scalar_440.us.3 = load double, double* %scevgep438439.us.3, align 8, !alias.scope !76, !noalias !82
  br label %polly.loop_header420.us.3

polly.loop_header420.us.3:                        ; preds = %polly.loop_header420.us.3, %polly.loop_exit422.loopexit.us.2
  %polly.indvar424.us.3 = phi i64 [ %polly.indvar_next425.us.3, %polly.loop_header420.us.3 ], [ 0, %polly.loop_exit422.loopexit.us.2 ]
  %348 = add nuw nsw i64 %polly.indvar424.us.3, %155
  %349 = mul nuw nsw i64 %348, 8000
  %350 = add nuw nsw i64 %349, %146
  %scevgep427.us.3 = getelementptr i8, i8* %call1, i64 %350
  %scevgep427428.us.3 = bitcast i8* %scevgep427.us.3 to double*
  %_p_scalar_429.us.3 = load double, double* %scevgep427428.us.3, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_433.us.3, %_p_scalar_429.us.3
  %polly.access.add.Packed_MemRef_call2273435.us.3 = add nuw nsw i64 %348, %polly.access.mul.Packed_MemRef_call2273430.us.3
  %polly.access.Packed_MemRef_call2273436.us.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us.3
  %_p_scalar_437.us.3 = load double, double* %polly.access.Packed_MemRef_call2273436.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_440.us.3, %_p_scalar_437.us.3
  %351 = shl i64 %348, 3
  %352 = add nuw nsw i64 %351, %160
  %scevgep441.us.3 = getelementptr i8, i8* %call, i64 %352
  %scevgep441442.us.3 = bitcast i8* %scevgep441.us.3 to double*
  %_p_scalar_443.us.3 = load double, double* %scevgep441442.us.3, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_443.us.3
  store double %p_add42.i79.us.3, double* %scevgep441442.us.3, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next425.us.3 = add nuw nsw i64 %polly.indvar424.us.3, 1
  %exitcond851.3.not = icmp eq i64 %polly.indvar424.us.3, %smin850
  br i1 %exitcond851.3.not, label %polly.loop_exit422.loopexit.us.3, label %polly.loop_header420.us.3

polly.loop_exit422.loopexit.us.3:                 ; preds = %polly.loop_header420.us.3
  %polly.access.add.Packed_MemRef_call2273431.us.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us.4, %158
  %polly.access.Packed_MemRef_call2273432.us.4 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us.4
  %_p_scalar_433.us.4 = load double, double* %polly.access.Packed_MemRef_call2273432.us.4, align 8
  %353 = add nuw nsw i64 %148, %159
  %scevgep438.us.4 = getelementptr i8, i8* %call1, i64 %353
  %scevgep438439.us.4 = bitcast i8* %scevgep438.us.4 to double*
  %_p_scalar_440.us.4 = load double, double* %scevgep438439.us.4, align 8, !alias.scope !76, !noalias !82
  br label %polly.loop_header420.us.4

polly.loop_header420.us.4:                        ; preds = %polly.loop_header420.us.4, %polly.loop_exit422.loopexit.us.3
  %polly.indvar424.us.4 = phi i64 [ %polly.indvar_next425.us.4, %polly.loop_header420.us.4 ], [ 0, %polly.loop_exit422.loopexit.us.3 ]
  %354 = add nuw nsw i64 %polly.indvar424.us.4, %155
  %355 = mul nuw nsw i64 %354, 8000
  %356 = add nuw nsw i64 %355, %148
  %scevgep427.us.4 = getelementptr i8, i8* %call1, i64 %356
  %scevgep427428.us.4 = bitcast i8* %scevgep427.us.4 to double*
  %_p_scalar_429.us.4 = load double, double* %scevgep427428.us.4, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.us.4 = fmul fast double %_p_scalar_433.us.4, %_p_scalar_429.us.4
  %polly.access.add.Packed_MemRef_call2273435.us.4 = add nuw nsw i64 %354, %polly.access.mul.Packed_MemRef_call2273430.us.4
  %polly.access.Packed_MemRef_call2273436.us.4 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us.4
  %_p_scalar_437.us.4 = load double, double* %polly.access.Packed_MemRef_call2273436.us.4, align 8
  %p_mul37.i75.us.4 = fmul fast double %_p_scalar_440.us.4, %_p_scalar_437.us.4
  %357 = shl i64 %354, 3
  %358 = add nuw nsw i64 %357, %160
  %scevgep441.us.4 = getelementptr i8, i8* %call, i64 %358
  %scevgep441442.us.4 = bitcast i8* %scevgep441.us.4 to double*
  %_p_scalar_443.us.4 = load double, double* %scevgep441442.us.4, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us.4 = fadd fast double %p_mul37.i75.us.4, %p_mul27.i73.us.4
  %p_reass.mul.i78.us.4 = fmul fast double %p_reass.add.i77.us.4, 1.500000e+00
  %p_add42.i79.us.4 = fadd fast double %p_reass.mul.i78.us.4, %_p_scalar_443.us.4
  store double %p_add42.i79.us.4, double* %scevgep441442.us.4, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next425.us.4 = add nuw nsw i64 %polly.indvar424.us.4, 1
  %exitcond851.4.not = icmp eq i64 %polly.indvar424.us.4, %smin850
  br i1 %exitcond851.4.not, label %polly.loop_exit422.loopexit.us.4, label %polly.loop_header420.us.4

polly.loop_exit422.loopexit.us.4:                 ; preds = %polly.loop_header420.us.4
  %polly.access.add.Packed_MemRef_call2273431.us.5 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us.5, %158
  %polly.access.Packed_MemRef_call2273432.us.5 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us.5
  %_p_scalar_433.us.5 = load double, double* %polly.access.Packed_MemRef_call2273432.us.5, align 8
  %359 = add nuw nsw i64 %150, %159
  %scevgep438.us.5 = getelementptr i8, i8* %call1, i64 %359
  %scevgep438439.us.5 = bitcast i8* %scevgep438.us.5 to double*
  %_p_scalar_440.us.5 = load double, double* %scevgep438439.us.5, align 8, !alias.scope !76, !noalias !82
  br label %polly.loop_header420.us.5

polly.loop_header420.us.5:                        ; preds = %polly.loop_header420.us.5, %polly.loop_exit422.loopexit.us.4
  %polly.indvar424.us.5 = phi i64 [ %polly.indvar_next425.us.5, %polly.loop_header420.us.5 ], [ 0, %polly.loop_exit422.loopexit.us.4 ]
  %360 = add nuw nsw i64 %polly.indvar424.us.5, %155
  %361 = mul nuw nsw i64 %360, 8000
  %362 = add nuw nsw i64 %361, %150
  %scevgep427.us.5 = getelementptr i8, i8* %call1, i64 %362
  %scevgep427428.us.5 = bitcast i8* %scevgep427.us.5 to double*
  %_p_scalar_429.us.5 = load double, double* %scevgep427428.us.5, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.us.5 = fmul fast double %_p_scalar_433.us.5, %_p_scalar_429.us.5
  %polly.access.add.Packed_MemRef_call2273435.us.5 = add nuw nsw i64 %360, %polly.access.mul.Packed_MemRef_call2273430.us.5
  %polly.access.Packed_MemRef_call2273436.us.5 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us.5
  %_p_scalar_437.us.5 = load double, double* %polly.access.Packed_MemRef_call2273436.us.5, align 8
  %p_mul37.i75.us.5 = fmul fast double %_p_scalar_440.us.5, %_p_scalar_437.us.5
  %363 = shl i64 %360, 3
  %364 = add nuw nsw i64 %363, %160
  %scevgep441.us.5 = getelementptr i8, i8* %call, i64 %364
  %scevgep441442.us.5 = bitcast i8* %scevgep441.us.5 to double*
  %_p_scalar_443.us.5 = load double, double* %scevgep441442.us.5, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us.5 = fadd fast double %p_mul37.i75.us.5, %p_mul27.i73.us.5
  %p_reass.mul.i78.us.5 = fmul fast double %p_reass.add.i77.us.5, 1.500000e+00
  %p_add42.i79.us.5 = fadd fast double %p_reass.mul.i78.us.5, %_p_scalar_443.us.5
  store double %p_add42.i79.us.5, double* %scevgep441442.us.5, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next425.us.5 = add nuw nsw i64 %polly.indvar424.us.5, 1
  %exitcond851.5.not = icmp eq i64 %polly.indvar424.us.5, %smin850
  br i1 %exitcond851.5.not, label %polly.loop_exit422.loopexit.us.5, label %polly.loop_header420.us.5

polly.loop_exit422.loopexit.us.5:                 ; preds = %polly.loop_header420.us.5
  %polly.access.add.Packed_MemRef_call2273431.us.6 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us.6, %158
  %polly.access.Packed_MemRef_call2273432.us.6 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us.6
  %_p_scalar_433.us.6 = load double, double* %polly.access.Packed_MemRef_call2273432.us.6, align 8
  %365 = add nuw nsw i64 %152, %159
  %scevgep438.us.6 = getelementptr i8, i8* %call1, i64 %365
  %scevgep438439.us.6 = bitcast i8* %scevgep438.us.6 to double*
  %_p_scalar_440.us.6 = load double, double* %scevgep438439.us.6, align 8, !alias.scope !76, !noalias !82
  br label %polly.loop_header420.us.6

polly.loop_header420.us.6:                        ; preds = %polly.loop_header420.us.6, %polly.loop_exit422.loopexit.us.5
  %polly.indvar424.us.6 = phi i64 [ %polly.indvar_next425.us.6, %polly.loop_header420.us.6 ], [ 0, %polly.loop_exit422.loopexit.us.5 ]
  %366 = add nuw nsw i64 %polly.indvar424.us.6, %155
  %367 = mul nuw nsw i64 %366, 8000
  %368 = add nuw nsw i64 %367, %152
  %scevgep427.us.6 = getelementptr i8, i8* %call1, i64 %368
  %scevgep427428.us.6 = bitcast i8* %scevgep427.us.6 to double*
  %_p_scalar_429.us.6 = load double, double* %scevgep427428.us.6, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.us.6 = fmul fast double %_p_scalar_433.us.6, %_p_scalar_429.us.6
  %polly.access.add.Packed_MemRef_call2273435.us.6 = add nuw nsw i64 %366, %polly.access.mul.Packed_MemRef_call2273430.us.6
  %polly.access.Packed_MemRef_call2273436.us.6 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us.6
  %_p_scalar_437.us.6 = load double, double* %polly.access.Packed_MemRef_call2273436.us.6, align 8
  %p_mul37.i75.us.6 = fmul fast double %_p_scalar_440.us.6, %_p_scalar_437.us.6
  %369 = shl i64 %366, 3
  %370 = add nuw nsw i64 %369, %160
  %scevgep441.us.6 = getelementptr i8, i8* %call, i64 %370
  %scevgep441442.us.6 = bitcast i8* %scevgep441.us.6 to double*
  %_p_scalar_443.us.6 = load double, double* %scevgep441442.us.6, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us.6 = fadd fast double %p_mul37.i75.us.6, %p_mul27.i73.us.6
  %p_reass.mul.i78.us.6 = fmul fast double %p_reass.add.i77.us.6, 1.500000e+00
  %p_add42.i79.us.6 = fadd fast double %p_reass.mul.i78.us.6, %_p_scalar_443.us.6
  store double %p_add42.i79.us.6, double* %scevgep441442.us.6, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next425.us.6 = add nuw nsw i64 %polly.indvar424.us.6, 1
  %exitcond851.6.not = icmp eq i64 %polly.indvar424.us.6, %smin850
  br i1 %exitcond851.6.not, label %polly.loop_exit422.loopexit.us.6, label %polly.loop_header420.us.6

polly.loop_exit422.loopexit.us.6:                 ; preds = %polly.loop_header420.us.6
  %polly.access.add.Packed_MemRef_call2273431.us.7 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us.7, %158
  %polly.access.Packed_MemRef_call2273432.us.7 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us.7
  %_p_scalar_433.us.7 = load double, double* %polly.access.Packed_MemRef_call2273432.us.7, align 8
  %371 = add nuw nsw i64 %154, %159
  %scevgep438.us.7 = getelementptr i8, i8* %call1, i64 %371
  %scevgep438439.us.7 = bitcast i8* %scevgep438.us.7 to double*
  %_p_scalar_440.us.7 = load double, double* %scevgep438439.us.7, align 8, !alias.scope !76, !noalias !82
  br label %polly.loop_header420.us.7

polly.loop_header420.us.7:                        ; preds = %polly.loop_header420.us.7, %polly.loop_exit422.loopexit.us.6
  %polly.indvar424.us.7 = phi i64 [ %polly.indvar_next425.us.7, %polly.loop_header420.us.7 ], [ 0, %polly.loop_exit422.loopexit.us.6 ]
  %372 = add nuw nsw i64 %polly.indvar424.us.7, %155
  %373 = mul nuw nsw i64 %372, 8000
  %374 = add nuw nsw i64 %373, %154
  %scevgep427.us.7 = getelementptr i8, i8* %call1, i64 %374
  %scevgep427428.us.7 = bitcast i8* %scevgep427.us.7 to double*
  %_p_scalar_429.us.7 = load double, double* %scevgep427428.us.7, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.us.7 = fmul fast double %_p_scalar_433.us.7, %_p_scalar_429.us.7
  %polly.access.add.Packed_MemRef_call2273435.us.7 = add nuw nsw i64 %372, %polly.access.mul.Packed_MemRef_call2273430.us.7
  %polly.access.Packed_MemRef_call2273436.us.7 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us.7
  %_p_scalar_437.us.7 = load double, double* %polly.access.Packed_MemRef_call2273436.us.7, align 8
  %p_mul37.i75.us.7 = fmul fast double %_p_scalar_440.us.7, %_p_scalar_437.us.7
  %375 = shl i64 %372, 3
  %376 = add nuw nsw i64 %375, %160
  %scevgep441.us.7 = getelementptr i8, i8* %call, i64 %376
  %scevgep441442.us.7 = bitcast i8* %scevgep441.us.7 to double*
  %_p_scalar_443.us.7 = load double, double* %scevgep441442.us.7, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us.7 = fadd fast double %p_mul37.i75.us.7, %p_mul27.i73.us.7
  %p_reass.mul.i78.us.7 = fmul fast double %p_reass.add.i77.us.7, 1.500000e+00
  %p_add42.i79.us.7 = fadd fast double %p_reass.mul.i78.us.7, %_p_scalar_443.us.7
  store double %p_add42.i79.us.7, double* %scevgep441442.us.7, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next425.us.7 = add nuw nsw i64 %polly.indvar424.us.7, 1
  %exitcond851.7.not = icmp eq i64 %polly.indvar424.us.7, %smin850
  br i1 %exitcond851.7.not, label %polly.loop_exit415, label %polly.loop_header420.us.7

polly.loop_header596.us.1:                        ; preds = %polly.loop_header596.us.1, %polly.loop_exit598.loopexit.us
  %polly.indvar600.us.1 = phi i64 [ %polly.indvar_next601.us.1, %polly.loop_header596.us.1 ], [ 0, %polly.loop_exit598.loopexit.us ]
  %377 = add nuw nsw i64 %polly.indvar600.us.1, %195
  %378 = mul nuw nsw i64 %377, 8000
  %379 = add nuw nsw i64 %378, %182
  %scevgep603.us.1 = getelementptr i8, i8* %call1, i64 %379
  %scevgep603604.us.1 = bitcast i8* %scevgep603.us.1 to double*
  %_p_scalar_605.us.1 = load double, double* %scevgep603604.us.1, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_609.us.1, %_p_scalar_605.us.1
  %polly.access.add.Packed_MemRef_call2449611.us.1 = add nuw nsw i64 %377, %polly.access.mul.Packed_MemRef_call2449606.us.1
  %polly.access.Packed_MemRef_call2449612.us.1 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us.1
  %_p_scalar_613.us.1 = load double, double* %polly.access.Packed_MemRef_call2449612.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_616.us.1, %_p_scalar_613.us.1
  %380 = shl i64 %377, 3
  %381 = add nuw nsw i64 %380, %200
  %scevgep617.us.1 = getelementptr i8, i8* %call, i64 %381
  %scevgep617618.us.1 = bitcast i8* %scevgep617.us.1 to double*
  %_p_scalar_619.us.1 = load double, double* %scevgep617618.us.1, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_619.us.1
  store double %p_add42.i.us.1, double* %scevgep617618.us.1, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next601.us.1 = add nuw nsw i64 %polly.indvar600.us.1, 1
  %exitcond868.1.not = icmp eq i64 %polly.indvar600.us.1, %smin867
  br i1 %exitcond868.1.not, label %polly.loop_exit598.loopexit.us.1, label %polly.loop_header596.us.1

polly.loop_exit598.loopexit.us.1:                 ; preds = %polly.loop_header596.us.1
  %polly.access.add.Packed_MemRef_call2449607.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us.2, %198
  %polly.access.Packed_MemRef_call2449608.us.2 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us.2
  %_p_scalar_609.us.2 = load double, double* %polly.access.Packed_MemRef_call2449608.us.2, align 8
  %382 = add nuw nsw i64 %184, %199
  %scevgep614.us.2 = getelementptr i8, i8* %call1, i64 %382
  %scevgep614615.us.2 = bitcast i8* %scevgep614.us.2 to double*
  %_p_scalar_616.us.2 = load double, double* %scevgep614615.us.2, align 8, !alias.scope !86, !noalias !92
  br label %polly.loop_header596.us.2

polly.loop_header596.us.2:                        ; preds = %polly.loop_header596.us.2, %polly.loop_exit598.loopexit.us.1
  %polly.indvar600.us.2 = phi i64 [ %polly.indvar_next601.us.2, %polly.loop_header596.us.2 ], [ 0, %polly.loop_exit598.loopexit.us.1 ]
  %383 = add nuw nsw i64 %polly.indvar600.us.2, %195
  %384 = mul nuw nsw i64 %383, 8000
  %385 = add nuw nsw i64 %384, %184
  %scevgep603.us.2 = getelementptr i8, i8* %call1, i64 %385
  %scevgep603604.us.2 = bitcast i8* %scevgep603.us.2 to double*
  %_p_scalar_605.us.2 = load double, double* %scevgep603604.us.2, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_609.us.2, %_p_scalar_605.us.2
  %polly.access.add.Packed_MemRef_call2449611.us.2 = add nuw nsw i64 %383, %polly.access.mul.Packed_MemRef_call2449606.us.2
  %polly.access.Packed_MemRef_call2449612.us.2 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us.2
  %_p_scalar_613.us.2 = load double, double* %polly.access.Packed_MemRef_call2449612.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_616.us.2, %_p_scalar_613.us.2
  %386 = shl i64 %383, 3
  %387 = add nuw nsw i64 %386, %200
  %scevgep617.us.2 = getelementptr i8, i8* %call, i64 %387
  %scevgep617618.us.2 = bitcast i8* %scevgep617.us.2 to double*
  %_p_scalar_619.us.2 = load double, double* %scevgep617618.us.2, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_619.us.2
  store double %p_add42.i.us.2, double* %scevgep617618.us.2, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next601.us.2 = add nuw nsw i64 %polly.indvar600.us.2, 1
  %exitcond868.2.not = icmp eq i64 %polly.indvar600.us.2, %smin867
  br i1 %exitcond868.2.not, label %polly.loop_exit598.loopexit.us.2, label %polly.loop_header596.us.2

polly.loop_exit598.loopexit.us.2:                 ; preds = %polly.loop_header596.us.2
  %polly.access.add.Packed_MemRef_call2449607.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us.3, %198
  %polly.access.Packed_MemRef_call2449608.us.3 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us.3
  %_p_scalar_609.us.3 = load double, double* %polly.access.Packed_MemRef_call2449608.us.3, align 8
  %388 = add nuw nsw i64 %186, %199
  %scevgep614.us.3 = getelementptr i8, i8* %call1, i64 %388
  %scevgep614615.us.3 = bitcast i8* %scevgep614.us.3 to double*
  %_p_scalar_616.us.3 = load double, double* %scevgep614615.us.3, align 8, !alias.scope !86, !noalias !92
  br label %polly.loop_header596.us.3

polly.loop_header596.us.3:                        ; preds = %polly.loop_header596.us.3, %polly.loop_exit598.loopexit.us.2
  %polly.indvar600.us.3 = phi i64 [ %polly.indvar_next601.us.3, %polly.loop_header596.us.3 ], [ 0, %polly.loop_exit598.loopexit.us.2 ]
  %389 = add nuw nsw i64 %polly.indvar600.us.3, %195
  %390 = mul nuw nsw i64 %389, 8000
  %391 = add nuw nsw i64 %390, %186
  %scevgep603.us.3 = getelementptr i8, i8* %call1, i64 %391
  %scevgep603604.us.3 = bitcast i8* %scevgep603.us.3 to double*
  %_p_scalar_605.us.3 = load double, double* %scevgep603604.us.3, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_609.us.3, %_p_scalar_605.us.3
  %polly.access.add.Packed_MemRef_call2449611.us.3 = add nuw nsw i64 %389, %polly.access.mul.Packed_MemRef_call2449606.us.3
  %polly.access.Packed_MemRef_call2449612.us.3 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us.3
  %_p_scalar_613.us.3 = load double, double* %polly.access.Packed_MemRef_call2449612.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_616.us.3, %_p_scalar_613.us.3
  %392 = shl i64 %389, 3
  %393 = add nuw nsw i64 %392, %200
  %scevgep617.us.3 = getelementptr i8, i8* %call, i64 %393
  %scevgep617618.us.3 = bitcast i8* %scevgep617.us.3 to double*
  %_p_scalar_619.us.3 = load double, double* %scevgep617618.us.3, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_619.us.3
  store double %p_add42.i.us.3, double* %scevgep617618.us.3, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next601.us.3 = add nuw nsw i64 %polly.indvar600.us.3, 1
  %exitcond868.3.not = icmp eq i64 %polly.indvar600.us.3, %smin867
  br i1 %exitcond868.3.not, label %polly.loop_exit598.loopexit.us.3, label %polly.loop_header596.us.3

polly.loop_exit598.loopexit.us.3:                 ; preds = %polly.loop_header596.us.3
  %polly.access.add.Packed_MemRef_call2449607.us.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us.4, %198
  %polly.access.Packed_MemRef_call2449608.us.4 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us.4
  %_p_scalar_609.us.4 = load double, double* %polly.access.Packed_MemRef_call2449608.us.4, align 8
  %394 = add nuw nsw i64 %188, %199
  %scevgep614.us.4 = getelementptr i8, i8* %call1, i64 %394
  %scevgep614615.us.4 = bitcast i8* %scevgep614.us.4 to double*
  %_p_scalar_616.us.4 = load double, double* %scevgep614615.us.4, align 8, !alias.scope !86, !noalias !92
  br label %polly.loop_header596.us.4

polly.loop_header596.us.4:                        ; preds = %polly.loop_header596.us.4, %polly.loop_exit598.loopexit.us.3
  %polly.indvar600.us.4 = phi i64 [ %polly.indvar_next601.us.4, %polly.loop_header596.us.4 ], [ 0, %polly.loop_exit598.loopexit.us.3 ]
  %395 = add nuw nsw i64 %polly.indvar600.us.4, %195
  %396 = mul nuw nsw i64 %395, 8000
  %397 = add nuw nsw i64 %396, %188
  %scevgep603.us.4 = getelementptr i8, i8* %call1, i64 %397
  %scevgep603604.us.4 = bitcast i8* %scevgep603.us.4 to double*
  %_p_scalar_605.us.4 = load double, double* %scevgep603604.us.4, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.us.4 = fmul fast double %_p_scalar_609.us.4, %_p_scalar_605.us.4
  %polly.access.add.Packed_MemRef_call2449611.us.4 = add nuw nsw i64 %395, %polly.access.mul.Packed_MemRef_call2449606.us.4
  %polly.access.Packed_MemRef_call2449612.us.4 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us.4
  %_p_scalar_613.us.4 = load double, double* %polly.access.Packed_MemRef_call2449612.us.4, align 8
  %p_mul37.i.us.4 = fmul fast double %_p_scalar_616.us.4, %_p_scalar_613.us.4
  %398 = shl i64 %395, 3
  %399 = add nuw nsw i64 %398, %200
  %scevgep617.us.4 = getelementptr i8, i8* %call, i64 %399
  %scevgep617618.us.4 = bitcast i8* %scevgep617.us.4 to double*
  %_p_scalar_619.us.4 = load double, double* %scevgep617618.us.4, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us.4 = fadd fast double %p_mul37.i.us.4, %p_mul27.i.us.4
  %p_reass.mul.i.us.4 = fmul fast double %p_reass.add.i.us.4, 1.500000e+00
  %p_add42.i.us.4 = fadd fast double %p_reass.mul.i.us.4, %_p_scalar_619.us.4
  store double %p_add42.i.us.4, double* %scevgep617618.us.4, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next601.us.4 = add nuw nsw i64 %polly.indvar600.us.4, 1
  %exitcond868.4.not = icmp eq i64 %polly.indvar600.us.4, %smin867
  br i1 %exitcond868.4.not, label %polly.loop_exit598.loopexit.us.4, label %polly.loop_header596.us.4

polly.loop_exit598.loopexit.us.4:                 ; preds = %polly.loop_header596.us.4
  %polly.access.add.Packed_MemRef_call2449607.us.5 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us.5, %198
  %polly.access.Packed_MemRef_call2449608.us.5 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us.5
  %_p_scalar_609.us.5 = load double, double* %polly.access.Packed_MemRef_call2449608.us.5, align 8
  %400 = add nuw nsw i64 %190, %199
  %scevgep614.us.5 = getelementptr i8, i8* %call1, i64 %400
  %scevgep614615.us.5 = bitcast i8* %scevgep614.us.5 to double*
  %_p_scalar_616.us.5 = load double, double* %scevgep614615.us.5, align 8, !alias.scope !86, !noalias !92
  br label %polly.loop_header596.us.5

polly.loop_header596.us.5:                        ; preds = %polly.loop_header596.us.5, %polly.loop_exit598.loopexit.us.4
  %polly.indvar600.us.5 = phi i64 [ %polly.indvar_next601.us.5, %polly.loop_header596.us.5 ], [ 0, %polly.loop_exit598.loopexit.us.4 ]
  %401 = add nuw nsw i64 %polly.indvar600.us.5, %195
  %402 = mul nuw nsw i64 %401, 8000
  %403 = add nuw nsw i64 %402, %190
  %scevgep603.us.5 = getelementptr i8, i8* %call1, i64 %403
  %scevgep603604.us.5 = bitcast i8* %scevgep603.us.5 to double*
  %_p_scalar_605.us.5 = load double, double* %scevgep603604.us.5, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.us.5 = fmul fast double %_p_scalar_609.us.5, %_p_scalar_605.us.5
  %polly.access.add.Packed_MemRef_call2449611.us.5 = add nuw nsw i64 %401, %polly.access.mul.Packed_MemRef_call2449606.us.5
  %polly.access.Packed_MemRef_call2449612.us.5 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us.5
  %_p_scalar_613.us.5 = load double, double* %polly.access.Packed_MemRef_call2449612.us.5, align 8
  %p_mul37.i.us.5 = fmul fast double %_p_scalar_616.us.5, %_p_scalar_613.us.5
  %404 = shl i64 %401, 3
  %405 = add nuw nsw i64 %404, %200
  %scevgep617.us.5 = getelementptr i8, i8* %call, i64 %405
  %scevgep617618.us.5 = bitcast i8* %scevgep617.us.5 to double*
  %_p_scalar_619.us.5 = load double, double* %scevgep617618.us.5, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us.5 = fadd fast double %p_mul37.i.us.5, %p_mul27.i.us.5
  %p_reass.mul.i.us.5 = fmul fast double %p_reass.add.i.us.5, 1.500000e+00
  %p_add42.i.us.5 = fadd fast double %p_reass.mul.i.us.5, %_p_scalar_619.us.5
  store double %p_add42.i.us.5, double* %scevgep617618.us.5, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next601.us.5 = add nuw nsw i64 %polly.indvar600.us.5, 1
  %exitcond868.5.not = icmp eq i64 %polly.indvar600.us.5, %smin867
  br i1 %exitcond868.5.not, label %polly.loop_exit598.loopexit.us.5, label %polly.loop_header596.us.5

polly.loop_exit598.loopexit.us.5:                 ; preds = %polly.loop_header596.us.5
  %polly.access.add.Packed_MemRef_call2449607.us.6 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us.6, %198
  %polly.access.Packed_MemRef_call2449608.us.6 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us.6
  %_p_scalar_609.us.6 = load double, double* %polly.access.Packed_MemRef_call2449608.us.6, align 8
  %406 = add nuw nsw i64 %192, %199
  %scevgep614.us.6 = getelementptr i8, i8* %call1, i64 %406
  %scevgep614615.us.6 = bitcast i8* %scevgep614.us.6 to double*
  %_p_scalar_616.us.6 = load double, double* %scevgep614615.us.6, align 8, !alias.scope !86, !noalias !92
  br label %polly.loop_header596.us.6

polly.loop_header596.us.6:                        ; preds = %polly.loop_header596.us.6, %polly.loop_exit598.loopexit.us.5
  %polly.indvar600.us.6 = phi i64 [ %polly.indvar_next601.us.6, %polly.loop_header596.us.6 ], [ 0, %polly.loop_exit598.loopexit.us.5 ]
  %407 = add nuw nsw i64 %polly.indvar600.us.6, %195
  %408 = mul nuw nsw i64 %407, 8000
  %409 = add nuw nsw i64 %408, %192
  %scevgep603.us.6 = getelementptr i8, i8* %call1, i64 %409
  %scevgep603604.us.6 = bitcast i8* %scevgep603.us.6 to double*
  %_p_scalar_605.us.6 = load double, double* %scevgep603604.us.6, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.us.6 = fmul fast double %_p_scalar_609.us.6, %_p_scalar_605.us.6
  %polly.access.add.Packed_MemRef_call2449611.us.6 = add nuw nsw i64 %407, %polly.access.mul.Packed_MemRef_call2449606.us.6
  %polly.access.Packed_MemRef_call2449612.us.6 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us.6
  %_p_scalar_613.us.6 = load double, double* %polly.access.Packed_MemRef_call2449612.us.6, align 8
  %p_mul37.i.us.6 = fmul fast double %_p_scalar_616.us.6, %_p_scalar_613.us.6
  %410 = shl i64 %407, 3
  %411 = add nuw nsw i64 %410, %200
  %scevgep617.us.6 = getelementptr i8, i8* %call, i64 %411
  %scevgep617618.us.6 = bitcast i8* %scevgep617.us.6 to double*
  %_p_scalar_619.us.6 = load double, double* %scevgep617618.us.6, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us.6 = fadd fast double %p_mul37.i.us.6, %p_mul27.i.us.6
  %p_reass.mul.i.us.6 = fmul fast double %p_reass.add.i.us.6, 1.500000e+00
  %p_add42.i.us.6 = fadd fast double %p_reass.mul.i.us.6, %_p_scalar_619.us.6
  store double %p_add42.i.us.6, double* %scevgep617618.us.6, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next601.us.6 = add nuw nsw i64 %polly.indvar600.us.6, 1
  %exitcond868.6.not = icmp eq i64 %polly.indvar600.us.6, %smin867
  br i1 %exitcond868.6.not, label %polly.loop_exit598.loopexit.us.6, label %polly.loop_header596.us.6

polly.loop_exit598.loopexit.us.6:                 ; preds = %polly.loop_header596.us.6
  %polly.access.add.Packed_MemRef_call2449607.us.7 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us.7, %198
  %polly.access.Packed_MemRef_call2449608.us.7 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us.7
  %_p_scalar_609.us.7 = load double, double* %polly.access.Packed_MemRef_call2449608.us.7, align 8
  %412 = add nuw nsw i64 %194, %199
  %scevgep614.us.7 = getelementptr i8, i8* %call1, i64 %412
  %scevgep614615.us.7 = bitcast i8* %scevgep614.us.7 to double*
  %_p_scalar_616.us.7 = load double, double* %scevgep614615.us.7, align 8, !alias.scope !86, !noalias !92
  br label %polly.loop_header596.us.7

polly.loop_header596.us.7:                        ; preds = %polly.loop_header596.us.7, %polly.loop_exit598.loopexit.us.6
  %polly.indvar600.us.7 = phi i64 [ %polly.indvar_next601.us.7, %polly.loop_header596.us.7 ], [ 0, %polly.loop_exit598.loopexit.us.6 ]
  %413 = add nuw nsw i64 %polly.indvar600.us.7, %195
  %414 = mul nuw nsw i64 %413, 8000
  %415 = add nuw nsw i64 %414, %194
  %scevgep603.us.7 = getelementptr i8, i8* %call1, i64 %415
  %scevgep603604.us.7 = bitcast i8* %scevgep603.us.7 to double*
  %_p_scalar_605.us.7 = load double, double* %scevgep603604.us.7, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.us.7 = fmul fast double %_p_scalar_609.us.7, %_p_scalar_605.us.7
  %polly.access.add.Packed_MemRef_call2449611.us.7 = add nuw nsw i64 %413, %polly.access.mul.Packed_MemRef_call2449606.us.7
  %polly.access.Packed_MemRef_call2449612.us.7 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us.7
  %_p_scalar_613.us.7 = load double, double* %polly.access.Packed_MemRef_call2449612.us.7, align 8
  %p_mul37.i.us.7 = fmul fast double %_p_scalar_616.us.7, %_p_scalar_613.us.7
  %416 = shl i64 %413, 3
  %417 = add nuw nsw i64 %416, %200
  %scevgep617.us.7 = getelementptr i8, i8* %call, i64 %417
  %scevgep617618.us.7 = bitcast i8* %scevgep617.us.7 to double*
  %_p_scalar_619.us.7 = load double, double* %scevgep617618.us.7, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us.7 = fadd fast double %p_mul37.i.us.7, %p_mul27.i.us.7
  %p_reass.mul.i.us.7 = fmul fast double %p_reass.add.i.us.7, 1.500000e+00
  %p_add42.i.us.7 = fadd fast double %p_reass.mul.i.us.7, %_p_scalar_619.us.7
  store double %p_add42.i.us.7, double* %scevgep617618.us.7, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next601.us.7 = add nuw nsw i64 %polly.indvar600.us.7, 1
  %exitcond868.7.not = icmp eq i64 %polly.indvar600.us.7, %smin867
  br i1 %exitcond868.7.not, label %polly.loop_exit591, label %polly.loop_header596.us.7
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
!25 = !{!"llvm.loop.tile.size", i32 256}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 8}
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
