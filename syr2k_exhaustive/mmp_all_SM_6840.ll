; ModuleID = 'syr2k_exhaustive/mmp_all_SM_6840.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_6840.c"
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
  br i1 %57, label %middle.block1004, label %vector.body1006, !llvm.loop !55

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

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
  br i1 %68, label %middle.block1030, label %vector.body1032, !llvm.loop !57

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

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
  %wide.load1055 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1055, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1052 = add i64 %index1051, 4
  %95 = icmp eq i64 %index.next1052, %n.vec1050
  br i1 %95, label %middle.block1042, label %vector.body1044, !llvm.loop !69

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
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond842.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

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
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond840.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = lshr i64 %polly.indvar218, 4
  %98 = shl nsw i64 %polly.indvar218, 3
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond839.not = icmp eq i64 %polly.indvar_next219, 150
  br i1 %exitcond839.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %polly.indvar224 = phi i64 [ 0, %polly.loop_header215 ], [ %polly.indvar_next225, %polly.loop_exit229 ]
  %99 = mul nuw nsw i64 %polly.indvar224, 50
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next225, 20
  br i1 %exitcond838.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv831 = phi i64 [ %indvars.iv.next832, %polly.loop_exit235 ], [ %indvars.iv, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %100 = shl nsw i64 %polly.indvar230, 7
  %101 = sub nsw i64 %98, %100
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next832 = add nsw i64 %indvars.iv831, -128
  %exitcond837.not = icmp eq i64 %polly.indvar230, %97
  br i1 %exitcond837.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %indvars.iv833 = phi i64 [ %indvars.iv.next834, %polly.loop_exit241 ], [ %indvars.iv831, %polly.loop_header227 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ 0, %polly.loop_header227 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv833, i64 127)
  %102 = add nsw i64 %polly.indvar236, %101
  %polly.loop_guard909 = icmp sgt i64 %102, -1
  %103 = add nuw nsw i64 %polly.indvar236, %98
  %104 = mul nuw nsw i64 %103, 8000
  %105 = mul nuw nsw i64 %103, 9600
  br i1 %polly.loop_guard909, label %polly.loop_header239.us, label %polly.loop_exit241

polly.loop_header239.us:                          ; preds = %polly.loop_header233, %polly.loop_exit247.loopexit.us
  %polly.indvar242.us = phi i64 [ %polly.indvar_next243.us, %polly.loop_exit247.loopexit.us ], [ 0, %polly.loop_header233 ]
  %106 = add nuw nsw i64 %polly.indvar242.us, %99
  %107 = shl i64 %106, 3
  %polly.access.mul.Packed_MemRef_call2254.us = mul nuw nsw i64 %106, 1200
  %polly.access.add.Packed_MemRef_call2255.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us, %103
  %polly.access.Packed_MemRef_call2256.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us
  %_p_scalar_257.us = load double, double* %polly.access.Packed_MemRef_call2256.us, align 8
  %108 = add nuw nsw i64 %107, %104
  %scevgep262.us = getelementptr i8, i8* %call1, i64 %108
  %scevgep262263.us = bitcast i8* %scevgep262.us to double*
  %_p_scalar_264.us = load double, double* %scevgep262263.us, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header245.us

polly.loop_header245.us:                          ; preds = %polly.loop_header239.us, %polly.loop_header245.us
  %polly.indvar248.us = phi i64 [ %polly.indvar_next249.us, %polly.loop_header245.us ], [ 0, %polly.loop_header239.us ]
  %109 = add nuw nsw i64 %polly.indvar248.us, %100
  %110 = mul nuw nsw i64 %109, 8000
  %111 = add nuw nsw i64 %110, %107
  %scevgep251.us = getelementptr i8, i8* %call1, i64 %111
  %scevgep251252.us = bitcast i8* %scevgep251.us to double*
  %_p_scalar_253.us = load double, double* %scevgep251252.us, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us = fmul fast double %_p_scalar_257.us, %_p_scalar_253.us
  %polly.access.add.Packed_MemRef_call2259.us = add nuw nsw i64 %109, %polly.access.mul.Packed_MemRef_call2254.us
  %polly.access.Packed_MemRef_call2260.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us
  %_p_scalar_261.us = load double, double* %polly.access.Packed_MemRef_call2260.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_264.us, %_p_scalar_261.us
  %112 = shl i64 %109, 3
  %113 = add nuw nsw i64 %112, %105
  %scevgep265.us = getelementptr i8, i8* %call, i64 %113
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
  %exitcond835.not = icmp eq i64 %polly.indvar_next243.us, 50
  br i1 %exitcond835.not, label %polly.loop_exit241, label %polly.loop_header239.us

polly.loop_exit241:                               ; preds = %polly.loop_exit247.loopexit.us, %polly.loop_header233
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
  %114 = add i64 %indvar1019, 1
  %115 = mul nuw nsw i64 %polly.indvar359, 9600
  %scevgep368 = getelementptr i8, i8* %call, i64 %115
  %min.iters.check1021 = icmp ult i64 %114, 4
  br i1 %min.iters.check1021, label %polly.loop_header362.preheader, label %vector.ph1022

vector.ph1022:                                    ; preds = %polly.loop_header356
  %n.vec1024 = and i64 %114, -4
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %vector.ph1022
  %index1025 = phi i64 [ 0, %vector.ph1022 ], [ %index.next1026, %vector.body1018 ]
  %116 = shl nuw nsw i64 %index1025, 3
  %117 = getelementptr i8, i8* %scevgep368, i64 %116
  %118 = bitcast i8* %117 to <4 x double>*
  %wide.load1029 = load <4 x double>, <4 x double>* %118, align 8, !alias.scope !74, !noalias !76
  %119 = fmul fast <4 x double> %wide.load1029, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %120 = bitcast i8* %117 to <4 x double>*
  store <4 x double> %119, <4 x double>* %120, align 8, !alias.scope !74, !noalias !76
  %index.next1026 = add i64 %index1025, 4
  %121 = icmp eq i64 %index.next1026, %n.vec1024
  br i1 %121, label %middle.block1016, label %vector.body1018, !llvm.loop !80

middle.block1016:                                 ; preds = %vector.body1018
  %cmp.n1028 = icmp eq i64 %114, %n.vec1024
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
  %122 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep369 = getelementptr i8, i8* %scevgep368, i64 %122
  %scevgep369370 = bitcast i8* %scevgep369 to double*
  %_p_scalar_371 = load double, double* %scevgep369370, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_371, 1.200000e+00
  store double %p_mul.i57, double* %scevgep369370, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next366, %polly.indvar359
  br i1 %exitcond859.not, label %polly.loop_exit364, label %polly.loop_header362, !llvm.loop !81

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
  %polly.access.call2387.load = load double, double* %polly.access.call2387, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2273 = add nuw nsw i64 %polly.indvar381, %polly.access.mul.Packed_MemRef_call2273
  %polly.access.Packed_MemRef_call2273 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273
  store double %polly.access.call2387.load, double* %polly.access.Packed_MemRef_call2273, align 8
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next382, 1200
  br i1 %exitcond857.not, label %polly.loop_exit380, label %polly.loop_header378

polly.loop_header388:                             ; preds = %polly.loop_exit380, %polly.loop_exit396
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit396 ], [ 0, %polly.loop_exit380 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 0, %polly.loop_exit380 ]
  %123 = lshr i64 %polly.indvar391, 4
  %124 = shl nsw i64 %polly.indvar391, 3
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_exit403
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %indvars.iv.next845 = add nuw nsw i64 %indvars.iv844, 8
  %exitcond856.not = icmp eq i64 %polly.indvar_next392, 150
  br i1 %exitcond856.not, label %polly.exiting271, label %polly.loop_header388

polly.loop_header394:                             ; preds = %polly.loop_exit403, %polly.loop_header388
  %polly.indvar397 = phi i64 [ 0, %polly.loop_header388 ], [ %polly.indvar_next398, %polly.loop_exit403 ]
  %125 = mul nuw nsw i64 %polly.indvar397, 50
  br label %polly.loop_header401

polly.loop_exit403:                               ; preds = %polly.loop_exit409
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next398, 20
  br i1 %exitcond855.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header401:                             ; preds = %polly.loop_exit409, %polly.loop_header394
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %polly.loop_exit409 ], [ %indvars.iv844, %polly.loop_header394 ]
  %polly.indvar404 = phi i64 [ %polly.indvar_next405, %polly.loop_exit409 ], [ 0, %polly.loop_header394 ]
  %126 = shl nsw i64 %polly.indvar404, 7
  %127 = sub nsw i64 %124, %126
  br label %polly.loop_header407

polly.loop_exit409:                               ; preds = %polly.loop_exit415
  %polly.indvar_next405 = add nuw nsw i64 %polly.indvar404, 1
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, -128
  %exitcond854.not = icmp eq i64 %polly.indvar404, %123
  br i1 %exitcond854.not, label %polly.loop_exit403, label %polly.loop_header401

polly.loop_header407:                             ; preds = %polly.loop_exit415, %polly.loop_header401
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %polly.loop_exit415 ], [ %indvars.iv846, %polly.loop_header401 ]
  %polly.indvar410 = phi i64 [ %polly.indvar_next411, %polly.loop_exit415 ], [ 0, %polly.loop_header401 ]
  %smin850 = call i64 @llvm.smin.i64(i64 %indvars.iv848, i64 127)
  %128 = add nsw i64 %polly.indvar410, %127
  %polly.loop_guard423910 = icmp sgt i64 %128, -1
  %129 = add nuw nsw i64 %polly.indvar410, %124
  %130 = mul nuw nsw i64 %129, 8000
  %131 = mul nuw nsw i64 %129, 9600
  br i1 %polly.loop_guard423910, label %polly.loop_header413.us, label %polly.loop_exit415

polly.loop_header413.us:                          ; preds = %polly.loop_header407, %polly.loop_exit422.loopexit.us
  %polly.indvar416.us = phi i64 [ %polly.indvar_next417.us, %polly.loop_exit422.loopexit.us ], [ 0, %polly.loop_header407 ]
  %132 = add nuw nsw i64 %polly.indvar416.us, %125
  %133 = shl i64 %132, 3
  %polly.access.mul.Packed_MemRef_call2273430.us = mul nuw nsw i64 %132, 1200
  %polly.access.add.Packed_MemRef_call2273431.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us, %129
  %polly.access.Packed_MemRef_call2273432.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us
  %_p_scalar_433.us = load double, double* %polly.access.Packed_MemRef_call2273432.us, align 8
  %134 = add nuw nsw i64 %133, %130
  %scevgep438.us = getelementptr i8, i8* %call1, i64 %134
  %scevgep438439.us = bitcast i8* %scevgep438.us to double*
  %_p_scalar_440.us = load double, double* %scevgep438439.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header420.us

polly.loop_header420.us:                          ; preds = %polly.loop_header413.us, %polly.loop_header420.us
  %polly.indvar424.us = phi i64 [ %polly.indvar_next425.us, %polly.loop_header420.us ], [ 0, %polly.loop_header413.us ]
  %135 = add nuw nsw i64 %polly.indvar424.us, %126
  %136 = mul nuw nsw i64 %135, 8000
  %137 = add nuw nsw i64 %136, %133
  %scevgep427.us = getelementptr i8, i8* %call1, i64 %137
  %scevgep427428.us = bitcast i8* %scevgep427.us to double*
  %_p_scalar_429.us = load double, double* %scevgep427428.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_433.us, %_p_scalar_429.us
  %polly.access.add.Packed_MemRef_call2273435.us = add nuw nsw i64 %135, %polly.access.mul.Packed_MemRef_call2273430.us
  %polly.access.Packed_MemRef_call2273436.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us
  %_p_scalar_437.us = load double, double* %polly.access.Packed_MemRef_call2273436.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_440.us, %_p_scalar_437.us
  %138 = shl i64 %135, 3
  %139 = add nuw nsw i64 %138, %131
  %scevgep441.us = getelementptr i8, i8* %call, i64 %139
  %scevgep441442.us = bitcast i8* %scevgep441.us to double*
  %_p_scalar_443.us = load double, double* %scevgep441442.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_443.us
  store double %p_add42.i79.us, double* %scevgep441442.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next425.us = add nuw nsw i64 %polly.indvar424.us, 1
  %exitcond851.not = icmp eq i64 %polly.indvar424.us, %smin850
  br i1 %exitcond851.not, label %polly.loop_exit422.loopexit.us, label %polly.loop_header420.us

polly.loop_exit422.loopexit.us:                   ; preds = %polly.loop_header420.us
  %polly.indvar_next417.us = add nuw nsw i64 %polly.indvar416.us, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next417.us, 50
  br i1 %exitcond852.not, label %polly.loop_exit415, label %polly.loop_header413.us

polly.loop_exit415:                               ; preds = %polly.loop_exit422.loopexit.us, %polly.loop_header407
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
  %140 = add i64 %indvar, 1
  %141 = mul nuw nsw i64 %polly.indvar535, 9600
  %scevgep544 = getelementptr i8, i8* %call, i64 %141
  %min.iters.check995 = icmp ult i64 %140, 4
  br i1 %min.iters.check995, label %polly.loop_header538.preheader, label %vector.ph996

vector.ph996:                                     ; preds = %polly.loop_header532
  %n.vec998 = and i64 %140, -4
  br label %vector.body994

vector.body994:                                   ; preds = %vector.body994, %vector.ph996
  %index999 = phi i64 [ 0, %vector.ph996 ], [ %index.next1000, %vector.body994 ]
  %142 = shl nuw nsw i64 %index999, 3
  %143 = getelementptr i8, i8* %scevgep544, i64 %142
  %144 = bitcast i8* %143 to <4 x double>*
  %wide.load1003 = load <4 x double>, <4 x double>* %144, align 8, !alias.scope !84, !noalias !86
  %145 = fmul fast <4 x double> %wide.load1003, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %146 = bitcast i8* %143 to <4 x double>*
  store <4 x double> %145, <4 x double>* %146, align 8, !alias.scope !84, !noalias !86
  %index.next1000 = add i64 %index999, 4
  %147 = icmp eq i64 %index.next1000, %n.vec998
  br i1 %147, label %middle.block992, label %vector.body994, !llvm.loop !90

middle.block992:                                  ; preds = %vector.body994
  %cmp.n1002 = icmp eq i64 %140, %n.vec998
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
  %148 = shl nuw nsw i64 %polly.indvar541, 3
  %scevgep545 = getelementptr i8, i8* %scevgep544, i64 %148
  %scevgep545546 = bitcast i8* %scevgep545 to double*
  %_p_scalar_547 = load double, double* %scevgep545546, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_547, 1.200000e+00
  store double %p_mul.i, double* %scevgep545546, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next542 = add nuw nsw i64 %polly.indvar541, 1
  %exitcond876.not = icmp eq i64 %polly.indvar_next542, %polly.indvar535
  br i1 %exitcond876.not, label %polly.loop_exit540, label %polly.loop_header538, !llvm.loop !91

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
  %polly.access.call2563.load = load double, double* %polly.access.call2563, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2449 = add nuw nsw i64 %polly.indvar557, %polly.access.mul.Packed_MemRef_call2449
  %polly.access.Packed_MemRef_call2449 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449
  store double %polly.access.call2563.load, double* %polly.access.Packed_MemRef_call2449, align 8
  %polly.indvar_next558 = add nuw nsw i64 %polly.indvar557, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next558, 1200
  br i1 %exitcond874.not, label %polly.loop_exit556, label %polly.loop_header554

polly.loop_header564:                             ; preds = %polly.loop_exit556, %polly.loop_exit572
  %indvars.iv861 = phi i64 [ %indvars.iv.next862, %polly.loop_exit572 ], [ 0, %polly.loop_exit556 ]
  %polly.indvar567 = phi i64 [ %polly.indvar_next568, %polly.loop_exit572 ], [ 0, %polly.loop_exit556 ]
  %149 = lshr i64 %polly.indvar567, 4
  %150 = shl nsw i64 %polly.indvar567, 3
  br label %polly.loop_header570

polly.loop_exit572:                               ; preds = %polly.loop_exit579
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %indvars.iv.next862 = add nuw nsw i64 %indvars.iv861, 8
  %exitcond873.not = icmp eq i64 %polly.indvar_next568, 150
  br i1 %exitcond873.not, label %polly.exiting447, label %polly.loop_header564

polly.loop_header570:                             ; preds = %polly.loop_exit579, %polly.loop_header564
  %polly.indvar573 = phi i64 [ 0, %polly.loop_header564 ], [ %polly.indvar_next574, %polly.loop_exit579 ]
  %151 = mul nuw nsw i64 %polly.indvar573, 50
  br label %polly.loop_header577

polly.loop_exit579:                               ; preds = %polly.loop_exit585
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond872.not = icmp eq i64 %polly.indvar_next574, 20
  br i1 %exitcond872.not, label %polly.loop_exit572, label %polly.loop_header570

polly.loop_header577:                             ; preds = %polly.loop_exit585, %polly.loop_header570
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit585 ], [ %indvars.iv861, %polly.loop_header570 ]
  %polly.indvar580 = phi i64 [ %polly.indvar_next581, %polly.loop_exit585 ], [ 0, %polly.loop_header570 ]
  %152 = shl nsw i64 %polly.indvar580, 7
  %153 = sub nsw i64 %150, %152
  br label %polly.loop_header583

polly.loop_exit585:                               ; preds = %polly.loop_exit591
  %polly.indvar_next581 = add nuw nsw i64 %polly.indvar580, 1
  %indvars.iv.next864 = add nsw i64 %indvars.iv863, -128
  %exitcond871.not = icmp eq i64 %polly.indvar580, %149
  br i1 %exitcond871.not, label %polly.loop_exit579, label %polly.loop_header577

polly.loop_header583:                             ; preds = %polly.loop_exit591, %polly.loop_header577
  %indvars.iv865 = phi i64 [ %indvars.iv.next866, %polly.loop_exit591 ], [ %indvars.iv863, %polly.loop_header577 ]
  %polly.indvar586 = phi i64 [ %polly.indvar_next587, %polly.loop_exit591 ], [ 0, %polly.loop_header577 ]
  %smin867 = call i64 @llvm.smin.i64(i64 %indvars.iv865, i64 127)
  %154 = add nsw i64 %polly.indvar586, %153
  %polly.loop_guard599911 = icmp sgt i64 %154, -1
  %155 = add nuw nsw i64 %polly.indvar586, %150
  %156 = mul nuw nsw i64 %155, 8000
  %157 = mul nuw nsw i64 %155, 9600
  br i1 %polly.loop_guard599911, label %polly.loop_header589.us, label %polly.loop_exit591

polly.loop_header589.us:                          ; preds = %polly.loop_header583, %polly.loop_exit598.loopexit.us
  %polly.indvar592.us = phi i64 [ %polly.indvar_next593.us, %polly.loop_exit598.loopexit.us ], [ 0, %polly.loop_header583 ]
  %158 = add nuw nsw i64 %polly.indvar592.us, %151
  %159 = shl i64 %158, 3
  %polly.access.mul.Packed_MemRef_call2449606.us = mul nuw nsw i64 %158, 1200
  %polly.access.add.Packed_MemRef_call2449607.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us, %155
  %polly.access.Packed_MemRef_call2449608.us = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us
  %_p_scalar_609.us = load double, double* %polly.access.Packed_MemRef_call2449608.us, align 8
  %160 = add nuw nsw i64 %159, %156
  %scevgep614.us = getelementptr i8, i8* %call1, i64 %160
  %scevgep614615.us = bitcast i8* %scevgep614.us to double*
  %_p_scalar_616.us = load double, double* %scevgep614615.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header596.us

polly.loop_header596.us:                          ; preds = %polly.loop_header589.us, %polly.loop_header596.us
  %polly.indvar600.us = phi i64 [ %polly.indvar_next601.us, %polly.loop_header596.us ], [ 0, %polly.loop_header589.us ]
  %161 = add nuw nsw i64 %polly.indvar600.us, %152
  %162 = mul nuw nsw i64 %161, 8000
  %163 = add nuw nsw i64 %162, %159
  %scevgep603.us = getelementptr i8, i8* %call1, i64 %163
  %scevgep603604.us = bitcast i8* %scevgep603.us to double*
  %_p_scalar_605.us = load double, double* %scevgep603604.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_609.us, %_p_scalar_605.us
  %polly.access.add.Packed_MemRef_call2449611.us = add nuw nsw i64 %161, %polly.access.mul.Packed_MemRef_call2449606.us
  %polly.access.Packed_MemRef_call2449612.us = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us
  %_p_scalar_613.us = load double, double* %polly.access.Packed_MemRef_call2449612.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_616.us, %_p_scalar_613.us
  %164 = shl i64 %161, 3
  %165 = add nuw nsw i64 %164, %157
  %scevgep617.us = getelementptr i8, i8* %call, i64 %165
  %scevgep617618.us = bitcast i8* %scevgep617.us to double*
  %_p_scalar_619.us = load double, double* %scevgep617618.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_619.us
  store double %p_add42.i.us, double* %scevgep617618.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next601.us = add nuw nsw i64 %polly.indvar600.us, 1
  %exitcond868.not = icmp eq i64 %polly.indvar600.us, %smin867
  br i1 %exitcond868.not, label %polly.loop_exit598.loopexit.us, label %polly.loop_header596.us

polly.loop_exit598.loopexit.us:                   ; preds = %polly.loop_header596.us
  %polly.indvar_next593.us = add nuw nsw i64 %polly.indvar592.us, 1
  %exitcond869.not = icmp eq i64 %polly.indvar_next593.us, 50
  br i1 %exitcond869.not, label %polly.loop_exit591, label %polly.loop_header589.us

polly.loop_exit591:                               ; preds = %polly.loop_exit598.loopexit.us, %polly.loop_header583
  %polly.indvar_next587 = add nuw nsw i64 %polly.indvar586, 1
  %indvars.iv.next866 = add nsw i64 %indvars.iv865, 1
  %exitcond870.not = icmp eq i64 %polly.indvar_next587, 8
  br i1 %exitcond870.not, label %polly.loop_exit585, label %polly.loop_header583

polly.loop_header746:                             ; preds = %entry, %polly.loop_exit754
  %indvars.iv902 = phi i64 [ %indvars.iv.next903, %polly.loop_exit754 ], [ 0, %entry ]
  %polly.indvar749 = phi i64 [ %polly.indvar_next750, %polly.loop_exit754 ], [ 0, %entry ]
  %smin904 = call i64 @llvm.smin.i64(i64 %indvars.iv902, i64 -1168)
  %166 = shl nsw i64 %polly.indvar749, 5
  %167 = add nsw i64 %smin904, 1199
  br label %polly.loop_header752

polly.loop_exit754:                               ; preds = %polly.loop_exit760
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %indvars.iv.next903 = add nsw i64 %indvars.iv902, -32
  %exitcond907.not = icmp eq i64 %polly.indvar_next750, 38
  br i1 %exitcond907.not, label %polly.loop_header773, label %polly.loop_header746

polly.loop_header752:                             ; preds = %polly.loop_exit760, %polly.loop_header746
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %polly.loop_exit760 ], [ 0, %polly.loop_header746 ]
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %polly.loop_header746 ]
  %168 = mul nsw i64 %polly.indvar755, -32
  %smin933 = call i64 @llvm.smin.i64(i64 %168, i64 -1168)
  %169 = add nsw i64 %smin933, 1200
  %smin900 = call i64 @llvm.smin.i64(i64 %indvars.iv898, i64 -1168)
  %170 = shl nsw i64 %polly.indvar755, 5
  %171 = add nsw i64 %smin900, 1199
  br label %polly.loop_header758

polly.loop_exit760:                               ; preds = %polly.loop_exit766
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %indvars.iv.next899 = add nsw i64 %indvars.iv898, -32
  %exitcond906.not = icmp eq i64 %polly.indvar_next756, 38
  br i1 %exitcond906.not, label %polly.loop_exit754, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_exit766, %polly.loop_header752
  %polly.indvar761 = phi i64 [ 0, %polly.loop_header752 ], [ %polly.indvar_next762, %polly.loop_exit766 ]
  %172 = add nuw nsw i64 %polly.indvar761, %166
  %173 = trunc i64 %172 to i32
  %174 = mul nuw nsw i64 %172, 9600
  %min.iters.check = icmp eq i64 %169, 0
  br i1 %min.iters.check, label %polly.loop_header764, label %vector.ph934

vector.ph934:                                     ; preds = %polly.loop_header758
  %broadcast.splatinsert941 = insertelement <4 x i64> poison, i64 %170, i32 0
  %broadcast.splat942 = shufflevector <4 x i64> %broadcast.splatinsert941, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert943 = insertelement <4 x i32> poison, i32 %173, i32 0
  %broadcast.splat944 = shufflevector <4 x i32> %broadcast.splatinsert943, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body932

vector.body932:                                   ; preds = %vector.body932, %vector.ph934
  %index935 = phi i64 [ 0, %vector.ph934 ], [ %index.next936, %vector.body932 ]
  %vec.ind939 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph934 ], [ %vec.ind.next940, %vector.body932 ]
  %175 = add nuw nsw <4 x i64> %vec.ind939, %broadcast.splat942
  %176 = trunc <4 x i64> %175 to <4 x i32>
  %177 = mul <4 x i32> %broadcast.splat944, %176
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
  %index.next936 = add i64 %index935, 4
  %vec.ind.next940 = add <4 x i64> %vec.ind939, <i64 4, i64 4, i64 4, i64 4>
  %187 = icmp eq i64 %index.next936, %169
  br i1 %187, label %polly.loop_exit766, label %vector.body932, !llvm.loop !99

polly.loop_exit766:                               ; preds = %vector.body932, %polly.loop_header764
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %exitcond905.not = icmp eq i64 %polly.indvar761, %167
  br i1 %exitcond905.not, label %polly.loop_exit760, label %polly.loop_header758

polly.loop_header764:                             ; preds = %polly.loop_header758, %polly.loop_header764
  %polly.indvar767 = phi i64 [ %polly.indvar_next768, %polly.loop_header764 ], [ 0, %polly.loop_header758 ]
  %188 = add nuw nsw i64 %polly.indvar767, %170
  %189 = trunc i64 %188 to i32
  %190 = mul i32 %189, %173
  %191 = add i32 %190, 3
  %192 = urem i32 %191, 1200
  %p_conv31.i = sitofp i32 %192 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %193 = shl i64 %188, 3
  %194 = add nuw nsw i64 %193, %174
  %scevgep770 = getelementptr i8, i8* %call, i64 %194
  %scevgep770771 = bitcast i8* %scevgep770 to double*
  store double %p_div33.i, double* %scevgep770771, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next768 = add nuw nsw i64 %polly.indvar767, 1
  %exitcond901.not = icmp eq i64 %polly.indvar767, %171
  br i1 %exitcond901.not, label %polly.loop_exit766, label %polly.loop_header764, !llvm.loop !100

polly.loop_header773:                             ; preds = %polly.loop_exit754, %polly.loop_exit781
  %indvars.iv892 = phi i64 [ %indvars.iv.next893, %polly.loop_exit781 ], [ 0, %polly.loop_exit754 ]
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_exit754 ]
  %smin894 = call i64 @llvm.smin.i64(i64 %indvars.iv892, i64 -1168)
  %195 = shl nsw i64 %polly.indvar776, 5
  %196 = add nsw i64 %smin894, 1199
  br label %polly.loop_header779

polly.loop_exit781:                               ; preds = %polly.loop_exit787
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %indvars.iv.next893 = add nsw i64 %indvars.iv892, -32
  %exitcond897.not = icmp eq i64 %polly.indvar_next777, 38
  br i1 %exitcond897.not, label %polly.loop_header799, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_exit787, %polly.loop_header773
  %indvars.iv888 = phi i64 [ %indvars.iv.next889, %polly.loop_exit787 ], [ 0, %polly.loop_header773 ]
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %polly.loop_header773 ]
  %197 = mul nsw i64 %polly.indvar782, -32
  %smin948 = call i64 @llvm.smin.i64(i64 %197, i64 -968)
  %198 = add nsw i64 %smin948, 1000
  %smin890 = call i64 @llvm.smin.i64(i64 %indvars.iv888, i64 -968)
  %199 = shl nsw i64 %polly.indvar782, 5
  %200 = add nsw i64 %smin890, 999
  br label %polly.loop_header785

polly.loop_exit787:                               ; preds = %polly.loop_exit793
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %indvars.iv.next889 = add nsw i64 %indvars.iv888, -32
  %exitcond896.not = icmp eq i64 %polly.indvar_next783, 32
  br i1 %exitcond896.not, label %polly.loop_exit781, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_exit793, %polly.loop_header779
  %polly.indvar788 = phi i64 [ 0, %polly.loop_header779 ], [ %polly.indvar_next789, %polly.loop_exit793 ]
  %201 = add nuw nsw i64 %polly.indvar788, %195
  %202 = trunc i64 %201 to i32
  %203 = mul nuw nsw i64 %201, 8000
  %min.iters.check949 = icmp eq i64 %198, 0
  br i1 %min.iters.check949, label %polly.loop_header791, label %vector.ph950

vector.ph950:                                     ; preds = %polly.loop_header785
  %broadcast.splatinsert959 = insertelement <4 x i64> poison, i64 %199, i32 0
  %broadcast.splat960 = shufflevector <4 x i64> %broadcast.splatinsert959, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert961 = insertelement <4 x i32> poison, i32 %202, i32 0
  %broadcast.splat962 = shufflevector <4 x i32> %broadcast.splatinsert961, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body947

vector.body947:                                   ; preds = %vector.body947, %vector.ph950
  %index953 = phi i64 [ 0, %vector.ph950 ], [ %index.next954, %vector.body947 ]
  %vec.ind957 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph950 ], [ %vec.ind.next958, %vector.body947 ]
  %204 = add nuw nsw <4 x i64> %vec.ind957, %broadcast.splat960
  %205 = trunc <4 x i64> %204 to <4 x i32>
  %206 = mul <4 x i32> %broadcast.splat962, %205
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
  %index.next954 = add i64 %index953, 4
  %vec.ind.next958 = add <4 x i64> %vec.ind957, <i64 4, i64 4, i64 4, i64 4>
  %216 = icmp eq i64 %index.next954, %198
  br i1 %216, label %polly.loop_exit793, label %vector.body947, !llvm.loop !102

polly.loop_exit793:                               ; preds = %vector.body947, %polly.loop_header791
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond895.not = icmp eq i64 %polly.indvar788, %196
  br i1 %exitcond895.not, label %polly.loop_exit787, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_header785, %polly.loop_header791
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_header791 ], [ 0, %polly.loop_header785 ]
  %217 = add nuw nsw i64 %polly.indvar794, %199
  %218 = trunc i64 %217 to i32
  %219 = mul i32 %218, %202
  %220 = add i32 %219, 2
  %221 = urem i32 %220, 1000
  %p_conv10.i = sitofp i32 %221 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %222 = shl i64 %217, 3
  %223 = add nuw nsw i64 %222, %203
  %scevgep797 = getelementptr i8, i8* %call2, i64 %223
  %scevgep797798 = bitcast i8* %scevgep797 to double*
  store double %p_div12.i, double* %scevgep797798, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond891.not = icmp eq i64 %polly.indvar794, %200
  br i1 %exitcond891.not, label %polly.loop_exit793, label %polly.loop_header791, !llvm.loop !103

polly.loop_header799:                             ; preds = %polly.loop_exit781, %polly.loop_exit807
  %indvars.iv882 = phi i64 [ %indvars.iv.next883, %polly.loop_exit807 ], [ 0, %polly.loop_exit781 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_exit781 ]
  %smin884 = call i64 @llvm.smin.i64(i64 %indvars.iv882, i64 -1168)
  %224 = shl nsw i64 %polly.indvar802, 5
  %225 = add nsw i64 %smin884, 1199
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next883 = add nsw i64 %indvars.iv882, -32
  %exitcond887.not = icmp eq i64 %polly.indvar_next803, 38
  br i1 %exitcond887.not, label %init_array.exit, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %indvars.iv878 = phi i64 [ %indvars.iv.next879, %polly.loop_exit813 ], [ 0, %polly.loop_header799 ]
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_header799 ]
  %226 = mul nsw i64 %polly.indvar808, -32
  %smin966 = call i64 @llvm.smin.i64(i64 %226, i64 -968)
  %227 = add nsw i64 %smin966, 1000
  %smin880 = call i64 @llvm.smin.i64(i64 %indvars.iv878, i64 -968)
  %228 = shl nsw i64 %polly.indvar808, 5
  %229 = add nsw i64 %smin880, 999
  br label %polly.loop_header811

polly.loop_exit813:                               ; preds = %polly.loop_exit819
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %indvars.iv.next879 = add nsw i64 %indvars.iv878, -32
  %exitcond886.not = icmp eq i64 %polly.indvar_next809, 32
  br i1 %exitcond886.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_exit819, %polly.loop_header805
  %polly.indvar814 = phi i64 [ 0, %polly.loop_header805 ], [ %polly.indvar_next815, %polly.loop_exit819 ]
  %230 = add nuw nsw i64 %polly.indvar814, %224
  %231 = trunc i64 %230 to i32
  %232 = mul nuw nsw i64 %230, 8000
  %min.iters.check967 = icmp eq i64 %227, 0
  br i1 %min.iters.check967, label %polly.loop_header817, label %vector.ph968

vector.ph968:                                     ; preds = %polly.loop_header811
  %broadcast.splatinsert977 = insertelement <4 x i64> poison, i64 %228, i32 0
  %broadcast.splat978 = shufflevector <4 x i64> %broadcast.splatinsert977, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert979 = insertelement <4 x i32> poison, i32 %231, i32 0
  %broadcast.splat980 = shufflevector <4 x i32> %broadcast.splatinsert979, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %vector.ph968
  %index971 = phi i64 [ 0, %vector.ph968 ], [ %index.next972, %vector.body965 ]
  %vec.ind975 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph968 ], [ %vec.ind.next976, %vector.body965 ]
  %233 = add nuw nsw <4 x i64> %vec.ind975, %broadcast.splat978
  %234 = trunc <4 x i64> %233 to <4 x i32>
  %235 = mul <4 x i32> %broadcast.splat980, %234
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
  %index.next972 = add i64 %index971, 4
  %vec.ind.next976 = add <4 x i64> %vec.ind975, <i64 4, i64 4, i64 4, i64 4>
  %245 = icmp eq i64 %index.next972, %227
  br i1 %245, label %polly.loop_exit819, label %vector.body965, !llvm.loop !105

polly.loop_exit819:                               ; preds = %vector.body965, %polly.loop_header817
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond885.not = icmp eq i64 %polly.indvar814, %225
  br i1 %exitcond885.not, label %polly.loop_exit813, label %polly.loop_header811

polly.loop_header817:                             ; preds = %polly.loop_header811, %polly.loop_header817
  %polly.indvar820 = phi i64 [ %polly.indvar_next821, %polly.loop_header817 ], [ 0, %polly.loop_header811 ]
  %246 = add nuw nsw i64 %polly.indvar820, %228
  %247 = trunc i64 %246 to i32
  %248 = mul i32 %247, %231
  %249 = add i32 %248, 1
  %250 = urem i32 %249, 1200
  %p_conv.i = sitofp i32 %250 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %251 = shl i64 %246, 3
  %252 = add nuw nsw i64 %251, %232
  %scevgep824 = getelementptr i8, i8* %call1, i64 %252
  %scevgep824825 = bitcast i8* %scevgep824 to double*
  store double %p_div.i, double* %scevgep824825, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond881.not = icmp eq i64 %polly.indvar820, %229
  br i1 %exitcond881.not, label %polly.loop_exit819, label %polly.loop_header817, !llvm.loop !106
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
!34 = !{!"llvm.loop.tile.size", i32 50}
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
!45 = !{!"llvm.loop.tile.size", i32 8}
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
