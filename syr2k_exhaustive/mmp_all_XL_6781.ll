; ModuleID = 'syr2k_exhaustive/mmp_all_XL_6781.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_6781.c"
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
  %call778 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1639 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2640 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1639, %call2
  %polly.access.call2659 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2659, %call1
  %2 = or i1 %0, %1
  %polly.access.call679 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call679, %call2
  %4 = icmp ule i8* %polly.access.call2659, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call679, %call1
  %8 = icmp ule i8* %polly.access.call1639, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header752, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep940 = getelementptr i8, i8* %call2, i64 %12
  %scevgep939 = getelementptr i8, i8* %call2, i64 %11
  %scevgep938 = getelementptr i8, i8* %call1, i64 %12
  %scevgep937 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep937, %scevgep940
  %bound1 = icmp ult i8* %scevgep939, %scevgep938
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
  br i1 %exitcond18.not.i, label %vector.ph944, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph944:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert951 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat952 = shufflevector <4 x i64> %broadcast.splatinsert951, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body943

vector.body943:                                   ; preds = %vector.body943, %vector.ph944
  %index945 = phi i64 [ 0, %vector.ph944 ], [ %index.next946, %vector.body943 ]
  %vec.ind949 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph944 ], [ %vec.ind.next950, %vector.body943 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind949, %broadcast.splat952
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv7.i, i64 %index945
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next946 = add i64 %index945, 4
  %vec.ind.next950 = add <4 x i64> %vec.ind949, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next946, 1200
  br i1 %40, label %for.inc41.i, label %vector.body943, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body943
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph944, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit813
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start450, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1007 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1007, label %for.body3.i46.preheader1081, label %vector.ph1008

vector.ph1008:                                    ; preds = %for.body3.i46.preheader
  %n.vec1010 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1006

vector.body1006:                                  ; preds = %vector.body1006, %vector.ph1008
  %index1011 = phi i64 [ 0, %vector.ph1008 ], [ %index.next1012, %vector.body1006 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i, i64 %index1011
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1012 = add i64 %index1011, 4
  %46 = icmp eq i64 %index.next1012, %n.vec1010
  br i1 %46, label %middle.block1004, label %vector.body1006, !llvm.loop !18

middle.block1004:                                 ; preds = %vector.body1006
  %cmp.n1014 = icmp eq i64 %indvars.iv21.i, %n.vec1010
  br i1 %cmp.n1014, label %for.inc6.i, label %for.body3.i46.preheader1081

for.body3.i46.preheader1081:                      ; preds = %for.body3.i46.preheader, %middle.block1004
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1010, %middle.block1004 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1081, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1081 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1004, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting451
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start272, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1030 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1030, label %for.body3.i60.preheader1080, label %vector.ph1031

vector.ph1031:                                    ; preds = %for.body3.i60.preheader
  %n.vec1033 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %vector.ph1031
  %index1034 = phi i64 [ 0, %vector.ph1031 ], [ %index.next1035, %vector.body1029 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i52, i64 %index1034
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1038 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1038, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1035 = add i64 %index1034, 4
  %57 = icmp eq i64 %index.next1035, %n.vec1033
  br i1 %57, label %middle.block1027, label %vector.body1029, !llvm.loop !55

middle.block1027:                                 ; preds = %vector.body1029
  %cmp.n1037 = icmp eq i64 %indvars.iv21.i52, %n.vec1033
  br i1 %cmp.n1037, label %for.inc6.i63, label %for.body3.i60.preheader1080

for.body3.i60.preheader1080:                      ; preds = %for.body3.i60.preheader, %middle.block1027
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1033, %middle.block1027 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1080, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1080 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1027, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting273
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1056 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1056, label %for.body3.i99.preheader1079, label %vector.ph1057

vector.ph1057:                                    ; preds = %for.body3.i99.preheader
  %n.vec1059 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %vector.ph1057
  %index1060 = phi i64 [ 0, %vector.ph1057 ], [ %index.next1061, %vector.body1055 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i91, i64 %index1060
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1064 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1064, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1061 = add i64 %index1060, 4
  %68 = icmp eq i64 %index.next1061, %n.vec1059
  br i1 %68, label %middle.block1053, label %vector.body1055, !llvm.loop !57

middle.block1053:                                 ; preds = %vector.body1055
  %cmp.n1063 = icmp eq i64 %indvars.iv21.i91, %n.vec1059
  br i1 %cmp.n1063, label %for.inc6.i102, label %for.body3.i99.preheader1079

for.body3.i99.preheader1079:                      ; preds = %for.body3.i99.preheader, %middle.block1053
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1059, %middle.block1053 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1079, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1079 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1053, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1068 = phi i64 [ %indvar.next1069, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1068, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1070 = icmp ult i64 %88, 4
  br i1 %min.iters.check1070, label %polly.loop_header191.preheader, label %vector.ph1071

vector.ph1071:                                    ; preds = %polly.loop_header
  %n.vec1073 = and i64 %88, -4
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %vector.ph1071
  %index1074 = phi i64 [ 0, %vector.ph1071 ], [ %index.next1075, %vector.body1067 ]
  %90 = shl nuw nsw i64 %index1074, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1078 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1078, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1075 = add i64 %index1074, 4
  %95 = icmp eq i64 %index.next1075, %n.vec1073
  br i1 %95, label %middle.block1065, label %vector.body1067, !llvm.loop !69

middle.block1065:                                 ; preds = %vector.body1067
  %cmp.n1077 = icmp eq i64 %88, %n.vec1073
  br i1 %cmp.n1077, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1065
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1073, %middle.block1065 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1065
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond854.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1069 = add i64 %indvar1068, 1
  br i1 %exitcond854.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond853.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond853.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 1200
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next203, 1000
  br i1 %exitcond852.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 1000
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond851.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond851.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %polly.loop_exit223 ], [ 3, %polly.loop_exit207 ]
  %indvars.iv839 = phi i64 [ %indvars.iv.next840, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = udiv i64 %indvars.iv846, 25
  %98 = mul nsw i64 %polly.indvar218, -8
  %99 = shl nsw i64 %polly.indvar218, 3
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %indvars.iv.next840 = add nuw nsw i64 %indvars.iv839, 8
  %indvars.iv.next847 = add nuw nsw i64 %indvars.iv846, 4
  %exitcond850.not = icmp eq i64 %polly.indvar_next219, 150
  br i1 %exitcond850.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %polly.indvar224 = phi i64 [ 0, %polly.loop_header215 ], [ %polly.indvar_next225, %polly.loop_exit229 ]
  %100 = shl nsw i64 %polly.indvar224, 2
  %101 = shl i64 %polly.indvar224, 5
  %polly.access.mul.Packed_MemRef_call2256.us = mul nsw i64 %polly.indvar224, 4800
  %102 = or i64 %100, 1
  %103 = shl i64 %102, 3
  %polly.access.mul.Packed_MemRef_call2256.us.1 = mul nuw nsw i64 %102, 1200
  %104 = or i64 %100, 2
  %105 = shl i64 %104, 3
  %polly.access.mul.Packed_MemRef_call2256.us.2 = mul nuw nsw i64 %104, 1200
  %106 = or i64 %100, 3
  %107 = shl i64 %106, 3
  %polly.access.mul.Packed_MemRef_call2256.us.3 = mul nuw nsw i64 %106, 1200
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next225, 250
  br i1 %exitcond849.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv841 = phi i64 [ %indvars.iv.next842, %polly.loop_exit235 ], [ %indvars.iv839, %polly.loop_header221 ]
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %polly.loop_exit235 ], [ %indvars.iv, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %108 = mul nuw nsw i64 %polly.indvar230, 50
  %109 = add nsw i64 %108, %98
  %110 = icmp sgt i64 %109, 0
  %111 = select i1 %110, i64 %109, i64 0
  %polly.loop_guard = icmp slt i64 %111, 8
  br i1 %polly.loop_guard, label %polly.loop_header233.preheader, label %polly.loop_exit235

polly.loop_header233.preheader:                   ; preds = %polly.loop_header227
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv837, i64 0)
  %112 = add i64 %smax, %indvars.iv841
  %113 = sub nsw i64 %99, %108
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next838 = add nsw i64 %indvars.iv837, 50
  %indvars.iv.next842 = add nsw i64 %indvars.iv841, -50
  %exitcond848.not = icmp eq i64 %polly.indvar230, %97
  br i1 %exitcond848.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header233.preheader, %polly.loop_exit241
  %indvars.iv843 = phi i64 [ %112, %polly.loop_header233.preheader ], [ %indvars.iv.next844, %polly.loop_exit241 ]
  %polly.indvar236 = phi i64 [ %111, %polly.loop_header233.preheader ], [ %polly.indvar_next237, %polly.loop_exit241 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv843, i64 49)
  %114 = add nsw i64 %polly.indvar236, %113
  %polly.loop_guard249932 = icmp sgt i64 %114, -1
  %115 = add nuw nsw i64 %polly.indvar236, %99
  %116 = mul i64 %115, 8000
  %117 = mul i64 %115, 9600
  br i1 %polly.loop_guard249932, label %polly.loop_header239.us.preheader, label %polly.loop_exit241

polly.loop_header239.us.preheader:                ; preds = %polly.loop_header233
  %polly.access.add.Packed_MemRef_call2257.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2256.us, %115
  %polly.access.Packed_MemRef_call2258.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us
  %_p_scalar_259.us = load double, double* %polly.access.Packed_MemRef_call2258.us, align 8
  %118 = add i64 %101, %116
  %scevgep264.us = getelementptr i8, i8* %call1, i64 %118
  %scevgep264265.us = bitcast i8* %scevgep264.us to double*
  %_p_scalar_266.us = load double, double* %scevgep264265.us, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header246.us

polly.loop_header246.us:                          ; preds = %polly.loop_header239.us.preheader, %polly.loop_header246.us
  %polly.indvar250.us = phi i64 [ %polly.indvar_next251.us, %polly.loop_header246.us ], [ 0, %polly.loop_header239.us.preheader ]
  %119 = add nuw nsw i64 %polly.indvar250.us, %108
  %120 = mul nuw nsw i64 %119, 8000
  %121 = add nuw nsw i64 %120, %101
  %scevgep253.us = getelementptr i8, i8* %call1, i64 %121
  %scevgep253254.us = bitcast i8* %scevgep253.us to double*
  %_p_scalar_255.us = load double, double* %scevgep253254.us, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us = fmul fast double %_p_scalar_259.us, %_p_scalar_255.us
  %polly.access.add.Packed_MemRef_call2261.us = add nuw nsw i64 %119, %polly.access.mul.Packed_MemRef_call2256.us
  %polly.access.Packed_MemRef_call2262.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us
  %_p_scalar_263.us = load double, double* %polly.access.Packed_MemRef_call2262.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_266.us, %_p_scalar_263.us
  %122 = shl i64 %119, 3
  %123 = add i64 %122, %117
  %scevgep267.us = getelementptr i8, i8* %call, i64 %123
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_269.us
  store double %p_add42.i118.us, double* %scevgep267268.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next251.us = add nuw nsw i64 %polly.indvar250.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar250.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit248.loopexit.us, label %polly.loop_header246.us

polly.loop_exit248.loopexit.us:                   ; preds = %polly.loop_header246.us
  %polly.access.add.Packed_MemRef_call2257.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2256.us.1, %115
  %polly.access.Packed_MemRef_call2258.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us.1
  %_p_scalar_259.us.1 = load double, double* %polly.access.Packed_MemRef_call2258.us.1, align 8
  %124 = add i64 %103, %116
  %scevgep264.us.1 = getelementptr i8, i8* %call1, i64 %124
  %scevgep264265.us.1 = bitcast i8* %scevgep264.us.1 to double*
  %_p_scalar_266.us.1 = load double, double* %scevgep264265.us.1, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header246.us.1

polly.loop_exit241:                               ; preds = %polly.loop_header246.us.3, %polly.loop_header233
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238 = icmp ult i64 %polly.indvar236, 7
  %indvars.iv.next844 = add i64 %indvars.iv843, 1
  br i1 %polly.loop_cond238, label %polly.loop_header233, label %polly.loop_exit235

polly.start272:                                   ; preds = %kernel_syr2k.exit
  %malloccall274 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header358

polly.exiting273:                                 ; preds = %polly.loop_exit398
  tail call void @free(i8* %malloccall274)
  br label %kernel_syr2k.exit90

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.start272
  %indvar1042 = phi i64 [ %indvar.next1043, %polly.loop_exit366 ], [ 0, %polly.start272 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 1, %polly.start272 ]
  %125 = add i64 %indvar1042, 1
  %126 = mul nuw nsw i64 %polly.indvar361, 9600
  %scevgep370 = getelementptr i8, i8* %call, i64 %126
  %min.iters.check1044 = icmp ult i64 %125, 4
  br i1 %min.iters.check1044, label %polly.loop_header364.preheader, label %vector.ph1045

vector.ph1045:                                    ; preds = %polly.loop_header358
  %n.vec1047 = and i64 %125, -4
  br label %vector.body1041

vector.body1041:                                  ; preds = %vector.body1041, %vector.ph1045
  %index1048 = phi i64 [ 0, %vector.ph1045 ], [ %index.next1049, %vector.body1041 ]
  %127 = shl nuw nsw i64 %index1048, 3
  %128 = getelementptr i8, i8* %scevgep370, i64 %127
  %129 = bitcast i8* %128 to <4 x double>*
  %wide.load1052 = load <4 x double>, <4 x double>* %129, align 8, !alias.scope !74, !noalias !76
  %130 = fmul fast <4 x double> %wide.load1052, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %131 = bitcast i8* %128 to <4 x double>*
  store <4 x double> %130, <4 x double>* %131, align 8, !alias.scope !74, !noalias !76
  %index.next1049 = add i64 %index1048, 4
  %132 = icmp eq i64 %index.next1049, %n.vec1047
  br i1 %132, label %middle.block1039, label %vector.body1041, !llvm.loop !80

middle.block1039:                                 ; preds = %vector.body1041
  %cmp.n1051 = icmp eq i64 %125, %n.vec1047
  br i1 %cmp.n1051, label %polly.loop_exit366, label %polly.loop_header364.preheader

polly.loop_header364.preheader:                   ; preds = %polly.loop_header358, %middle.block1039
  %polly.indvar367.ph = phi i64 [ 0, %polly.loop_header358 ], [ %n.vec1047, %middle.block1039 ]
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_header364, %middle.block1039
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next362, 1200
  %indvar.next1043 = add i64 %indvar1042, 1
  br i1 %exitcond877.not, label %polly.loop_header374.preheader, label %polly.loop_header358

polly.loop_header374.preheader:                   ; preds = %polly.loop_exit366
  %Packed_MemRef_call2275 = bitcast i8* %malloccall274 to double*
  br label %polly.loop_header374

polly.loop_header364:                             ; preds = %polly.loop_header364.preheader, %polly.loop_header364
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_header364 ], [ %polly.indvar367.ph, %polly.loop_header364.preheader ]
  %133 = shl nuw nsw i64 %polly.indvar367, 3
  %scevgep371 = getelementptr i8, i8* %scevgep370, i64 %133
  %scevgep371372 = bitcast i8* %scevgep371 to double*
  %_p_scalar_373 = load double, double* %scevgep371372, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_373, 1.200000e+00
  store double %p_mul.i57, double* %scevgep371372, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond876.not = icmp eq i64 %polly.indvar_next368, %polly.indvar361
  br i1 %exitcond876.not, label %polly.loop_exit366, label %polly.loop_header364, !llvm.loop !81

polly.loop_header374:                             ; preds = %polly.loop_header374.preheader, %polly.loop_exit382
  %polly.indvar377 = phi i64 [ %polly.indvar_next378, %polly.loop_exit382 ], [ 0, %polly.loop_header374.preheader ]
  %polly.access.mul.Packed_MemRef_call2275 = mul nuw nsw i64 %polly.indvar377, 1200
  br label %polly.loop_header380

polly.loop_exit382:                               ; preds = %polly.loop_header380
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond875.not = icmp eq i64 %polly.indvar_next378, 1000
  br i1 %exitcond875.not, label %polly.loop_header390, label %polly.loop_header374

polly.loop_header380:                             ; preds = %polly.loop_header380, %polly.loop_header374
  %polly.indvar383 = phi i64 [ 0, %polly.loop_header374 ], [ %polly.indvar_next384, %polly.loop_header380 ]
  %polly.access.mul.call2387 = mul nuw nsw i64 %polly.indvar383, 1000
  %polly.access.add.call2388 = add nuw nsw i64 %polly.access.mul.call2387, %polly.indvar377
  %polly.access.call2389 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2388
  %polly.access.call2389.load = load double, double* %polly.access.call2389, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2275 = add nuw nsw i64 %polly.indvar383, %polly.access.mul.Packed_MemRef_call2275
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275
  store double %polly.access.call2389.load, double* %polly.access.Packed_MemRef_call2275, align 8
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next384, 1200
  br i1 %exitcond874.not, label %polly.loop_exit382, label %polly.loop_header380

polly.loop_header390:                             ; preds = %polly.loop_exit382, %polly.loop_exit398
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit398 ], [ 3, %polly.loop_exit382 ]
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit398 ], [ 0, %polly.loop_exit382 ]
  %indvars.iv855 = phi i64 [ %indvars.iv.next856, %polly.loop_exit398 ], [ 0, %polly.loop_exit382 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 0, %polly.loop_exit382 ]
  %134 = udiv i64 %indvars.iv869, 25
  %135 = mul nsw i64 %polly.indvar393, -8
  %136 = shl nsw i64 %polly.indvar393, 3
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_exit405
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %indvars.iv.next856 = add nsw i64 %indvars.iv855, -8
  %indvars.iv.next861 = add nuw nsw i64 %indvars.iv860, 8
  %indvars.iv.next870 = add nuw nsw i64 %indvars.iv869, 4
  %exitcond873.not = icmp eq i64 %polly.indvar_next394, 150
  br i1 %exitcond873.not, label %polly.exiting273, label %polly.loop_header390

polly.loop_header396:                             ; preds = %polly.loop_exit405, %polly.loop_header390
  %polly.indvar399 = phi i64 [ 0, %polly.loop_header390 ], [ %polly.indvar_next400, %polly.loop_exit405 ]
  %137 = shl nsw i64 %polly.indvar399, 2
  %138 = shl i64 %polly.indvar399, 5
  %polly.access.mul.Packed_MemRef_call2275434.us = mul nsw i64 %polly.indvar399, 4800
  %139 = or i64 %137, 1
  %140 = shl i64 %139, 3
  %polly.access.mul.Packed_MemRef_call2275434.us.1 = mul nuw nsw i64 %139, 1200
  %141 = or i64 %137, 2
  %142 = shl i64 %141, 3
  %polly.access.mul.Packed_MemRef_call2275434.us.2 = mul nuw nsw i64 %141, 1200
  %143 = or i64 %137, 3
  %144 = shl i64 %143, 3
  %polly.access.mul.Packed_MemRef_call2275434.us.3 = mul nuw nsw i64 %143, 1200
  br label %polly.loop_header403

polly.loop_exit405:                               ; preds = %polly.loop_exit412
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond872.not = icmp eq i64 %polly.indvar_next400, 250
  br i1 %exitcond872.not, label %polly.loop_exit398, label %polly.loop_header396

polly.loop_header403:                             ; preds = %polly.loop_exit412, %polly.loop_header396
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %polly.loop_exit412 ], [ %indvars.iv860, %polly.loop_header396 ]
  %indvars.iv857 = phi i64 [ %indvars.iv.next858, %polly.loop_exit412 ], [ %indvars.iv855, %polly.loop_header396 ]
  %polly.indvar406 = phi i64 [ %polly.indvar_next407, %polly.loop_exit412 ], [ 0, %polly.loop_header396 ]
  %145 = mul nuw nsw i64 %polly.indvar406, 50
  %146 = add nsw i64 %145, %135
  %147 = icmp sgt i64 %146, 0
  %148 = select i1 %147, i64 %146, i64 0
  %polly.loop_guard413 = icmp slt i64 %148, 8
  br i1 %polly.loop_guard413, label %polly.loop_header410.preheader, label %polly.loop_exit412

polly.loop_header410.preheader:                   ; preds = %polly.loop_header403
  %smax859 = call i64 @llvm.smax.i64(i64 %indvars.iv857, i64 0)
  %149 = add i64 %smax859, %indvars.iv862
  %150 = sub nsw i64 %136, %145
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_exit419, %polly.loop_header403
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %indvars.iv.next858 = add nsw i64 %indvars.iv857, 50
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, -50
  %exitcond871.not = icmp eq i64 %polly.indvar406, %134
  br i1 %exitcond871.not, label %polly.loop_exit405, label %polly.loop_header403

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit419
  %indvars.iv864 = phi i64 [ %149, %polly.loop_header410.preheader ], [ %indvars.iv.next865, %polly.loop_exit419 ]
  %polly.indvar414 = phi i64 [ %148, %polly.loop_header410.preheader ], [ %polly.indvar_next415, %polly.loop_exit419 ]
  %smin866 = call i64 @llvm.smin.i64(i64 %indvars.iv864, i64 49)
  %151 = add nsw i64 %polly.indvar414, %150
  %polly.loop_guard427933 = icmp sgt i64 %151, -1
  %152 = add nuw nsw i64 %polly.indvar414, %136
  %153 = mul i64 %152, 8000
  %154 = mul i64 %152, 9600
  br i1 %polly.loop_guard427933, label %polly.loop_header417.us.preheader, label %polly.loop_exit419

polly.loop_header417.us.preheader:                ; preds = %polly.loop_header410
  %polly.access.add.Packed_MemRef_call2275435.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2275434.us, %152
  %polly.access.Packed_MemRef_call2275436.us = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275435.us
  %_p_scalar_437.us = load double, double* %polly.access.Packed_MemRef_call2275436.us, align 8
  %155 = add i64 %138, %153
  %scevgep442.us = getelementptr i8, i8* %call1, i64 %155
  %scevgep442443.us = bitcast i8* %scevgep442.us to double*
  %_p_scalar_444.us = load double, double* %scevgep442443.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header424.us

polly.loop_header424.us:                          ; preds = %polly.loop_header417.us.preheader, %polly.loop_header424.us
  %polly.indvar428.us = phi i64 [ %polly.indvar_next429.us, %polly.loop_header424.us ], [ 0, %polly.loop_header417.us.preheader ]
  %156 = add nuw nsw i64 %polly.indvar428.us, %145
  %157 = mul nuw nsw i64 %156, 8000
  %158 = add nuw nsw i64 %157, %138
  %scevgep431.us = getelementptr i8, i8* %call1, i64 %158
  %scevgep431432.us = bitcast i8* %scevgep431.us to double*
  %_p_scalar_433.us = load double, double* %scevgep431432.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_437.us, %_p_scalar_433.us
  %polly.access.add.Packed_MemRef_call2275439.us = add nuw nsw i64 %156, %polly.access.mul.Packed_MemRef_call2275434.us
  %polly.access.Packed_MemRef_call2275440.us = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275439.us
  %_p_scalar_441.us = load double, double* %polly.access.Packed_MemRef_call2275440.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_444.us, %_p_scalar_441.us
  %159 = shl i64 %156, 3
  %160 = add i64 %159, %154
  %scevgep445.us = getelementptr i8, i8* %call, i64 %160
  %scevgep445446.us = bitcast i8* %scevgep445.us to double*
  %_p_scalar_447.us = load double, double* %scevgep445446.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_447.us
  store double %p_add42.i79.us, double* %scevgep445446.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next429.us = add nuw nsw i64 %polly.indvar428.us, 1
  %exitcond867.not = icmp eq i64 %polly.indvar428.us, %smin866
  br i1 %exitcond867.not, label %polly.loop_exit426.loopexit.us, label %polly.loop_header424.us

polly.loop_exit426.loopexit.us:                   ; preds = %polly.loop_header424.us
  %polly.access.add.Packed_MemRef_call2275435.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2275434.us.1, %152
  %polly.access.Packed_MemRef_call2275436.us.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275435.us.1
  %_p_scalar_437.us.1 = load double, double* %polly.access.Packed_MemRef_call2275436.us.1, align 8
  %161 = add i64 %140, %153
  %scevgep442.us.1 = getelementptr i8, i8* %call1, i64 %161
  %scevgep442443.us.1 = bitcast i8* %scevgep442.us.1 to double*
  %_p_scalar_444.us.1 = load double, double* %scevgep442443.us.1, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header424.us.1

polly.loop_exit419:                               ; preds = %polly.loop_header424.us.3, %polly.loop_header410
  %polly.indvar_next415 = add nuw nsw i64 %polly.indvar414, 1
  %polly.loop_cond416 = icmp ult i64 %polly.indvar414, 7
  %indvars.iv.next865 = add i64 %indvars.iv864, 1
  br i1 %polly.loop_cond416, label %polly.loop_header410, label %polly.loop_exit412

polly.start450:                                   ; preds = %init_array.exit
  %malloccall452 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header536

polly.exiting451:                                 ; preds = %polly.loop_exit576
  tail call void @free(i8* %malloccall452)
  br label %kernel_syr2k.exit

polly.loop_header536:                             ; preds = %polly.loop_exit544, %polly.start450
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit544 ], [ 0, %polly.start450 ]
  %polly.indvar539 = phi i64 [ %polly.indvar_next540, %polly.loop_exit544 ], [ 1, %polly.start450 ]
  %162 = add i64 %indvar, 1
  %163 = mul nuw nsw i64 %polly.indvar539, 9600
  %scevgep548 = getelementptr i8, i8* %call, i64 %163
  %min.iters.check1018 = icmp ult i64 %162, 4
  br i1 %min.iters.check1018, label %polly.loop_header542.preheader, label %vector.ph1019

vector.ph1019:                                    ; preds = %polly.loop_header536
  %n.vec1021 = and i64 %162, -4
  br label %vector.body1017

vector.body1017:                                  ; preds = %vector.body1017, %vector.ph1019
  %index1022 = phi i64 [ 0, %vector.ph1019 ], [ %index.next1023, %vector.body1017 ]
  %164 = shl nuw nsw i64 %index1022, 3
  %165 = getelementptr i8, i8* %scevgep548, i64 %164
  %166 = bitcast i8* %165 to <4 x double>*
  %wide.load1026 = load <4 x double>, <4 x double>* %166, align 8, !alias.scope !84, !noalias !86
  %167 = fmul fast <4 x double> %wide.load1026, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %168 = bitcast i8* %165 to <4 x double>*
  store <4 x double> %167, <4 x double>* %168, align 8, !alias.scope !84, !noalias !86
  %index.next1023 = add i64 %index1022, 4
  %169 = icmp eq i64 %index.next1023, %n.vec1021
  br i1 %169, label %middle.block1015, label %vector.body1017, !llvm.loop !90

middle.block1015:                                 ; preds = %vector.body1017
  %cmp.n1025 = icmp eq i64 %162, %n.vec1021
  br i1 %cmp.n1025, label %polly.loop_exit544, label %polly.loop_header542.preheader

polly.loop_header542.preheader:                   ; preds = %polly.loop_header536, %middle.block1015
  %polly.indvar545.ph = phi i64 [ 0, %polly.loop_header536 ], [ %n.vec1021, %middle.block1015 ]
  br label %polly.loop_header542

polly.loop_exit544:                               ; preds = %polly.loop_header542, %middle.block1015
  %polly.indvar_next540 = add nuw nsw i64 %polly.indvar539, 1
  %exitcond900.not = icmp eq i64 %polly.indvar_next540, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond900.not, label %polly.loop_header552.preheader, label %polly.loop_header536

polly.loop_header552.preheader:                   ; preds = %polly.loop_exit544
  %Packed_MemRef_call2453 = bitcast i8* %malloccall452 to double*
  br label %polly.loop_header552

polly.loop_header542:                             ; preds = %polly.loop_header542.preheader, %polly.loop_header542
  %polly.indvar545 = phi i64 [ %polly.indvar_next546, %polly.loop_header542 ], [ %polly.indvar545.ph, %polly.loop_header542.preheader ]
  %170 = shl nuw nsw i64 %polly.indvar545, 3
  %scevgep549 = getelementptr i8, i8* %scevgep548, i64 %170
  %scevgep549550 = bitcast i8* %scevgep549 to double*
  %_p_scalar_551 = load double, double* %scevgep549550, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_551, 1.200000e+00
  store double %p_mul.i, double* %scevgep549550, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next546 = add nuw nsw i64 %polly.indvar545, 1
  %exitcond899.not = icmp eq i64 %polly.indvar_next546, %polly.indvar539
  br i1 %exitcond899.not, label %polly.loop_exit544, label %polly.loop_header542, !llvm.loop !91

polly.loop_header552:                             ; preds = %polly.loop_header552.preheader, %polly.loop_exit560
  %polly.indvar555 = phi i64 [ %polly.indvar_next556, %polly.loop_exit560 ], [ 0, %polly.loop_header552.preheader ]
  %polly.access.mul.Packed_MemRef_call2453 = mul nuw nsw i64 %polly.indvar555, 1200
  br label %polly.loop_header558

polly.loop_exit560:                               ; preds = %polly.loop_header558
  %polly.indvar_next556 = add nuw nsw i64 %polly.indvar555, 1
  %exitcond898.not = icmp eq i64 %polly.indvar_next556, 1000
  br i1 %exitcond898.not, label %polly.loop_header568, label %polly.loop_header552

polly.loop_header558:                             ; preds = %polly.loop_header558, %polly.loop_header552
  %polly.indvar561 = phi i64 [ 0, %polly.loop_header552 ], [ %polly.indvar_next562, %polly.loop_header558 ]
  %polly.access.mul.call2565 = mul nuw nsw i64 %polly.indvar561, 1000
  %polly.access.add.call2566 = add nuw nsw i64 %polly.access.mul.call2565, %polly.indvar555
  %polly.access.call2567 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2566
  %polly.access.call2567.load = load double, double* %polly.access.call2567, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2453 = add nuw nsw i64 %polly.indvar561, %polly.access.mul.Packed_MemRef_call2453
  %polly.access.Packed_MemRef_call2453 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453
  store double %polly.access.call2567.load, double* %polly.access.Packed_MemRef_call2453, align 8
  %polly.indvar_next562 = add nuw nsw i64 %polly.indvar561, 1
  %exitcond897.not = icmp eq i64 %polly.indvar_next562, 1200
  br i1 %exitcond897.not, label %polly.loop_exit560, label %polly.loop_header558

polly.loop_header568:                             ; preds = %polly.loop_exit560, %polly.loop_exit576
  %indvars.iv892 = phi i64 [ %indvars.iv.next893, %polly.loop_exit576 ], [ 3, %polly.loop_exit560 ]
  %indvars.iv883 = phi i64 [ %indvars.iv.next884, %polly.loop_exit576 ], [ 0, %polly.loop_exit560 ]
  %indvars.iv878 = phi i64 [ %indvars.iv.next879, %polly.loop_exit576 ], [ 0, %polly.loop_exit560 ]
  %polly.indvar571 = phi i64 [ %polly.indvar_next572, %polly.loop_exit576 ], [ 0, %polly.loop_exit560 ]
  %171 = udiv i64 %indvars.iv892, 25
  %172 = mul nsw i64 %polly.indvar571, -8
  %173 = shl nsw i64 %polly.indvar571, 3
  br label %polly.loop_header574

polly.loop_exit576:                               ; preds = %polly.loop_exit583
  %polly.indvar_next572 = add nuw nsw i64 %polly.indvar571, 1
  %indvars.iv.next879 = add nsw i64 %indvars.iv878, -8
  %indvars.iv.next884 = add nuw nsw i64 %indvars.iv883, 8
  %indvars.iv.next893 = add nuw nsw i64 %indvars.iv892, 4
  %exitcond896.not = icmp eq i64 %polly.indvar_next572, 150
  br i1 %exitcond896.not, label %polly.exiting451, label %polly.loop_header568

polly.loop_header574:                             ; preds = %polly.loop_exit583, %polly.loop_header568
  %polly.indvar577 = phi i64 [ 0, %polly.loop_header568 ], [ %polly.indvar_next578, %polly.loop_exit583 ]
  %174 = shl nsw i64 %polly.indvar577, 2
  %175 = shl i64 %polly.indvar577, 5
  %polly.access.mul.Packed_MemRef_call2453612.us = mul nsw i64 %polly.indvar577, 4800
  %176 = or i64 %174, 1
  %177 = shl i64 %176, 3
  %polly.access.mul.Packed_MemRef_call2453612.us.1 = mul nuw nsw i64 %176, 1200
  %178 = or i64 %174, 2
  %179 = shl i64 %178, 3
  %polly.access.mul.Packed_MemRef_call2453612.us.2 = mul nuw nsw i64 %178, 1200
  %180 = or i64 %174, 3
  %181 = shl i64 %180, 3
  %polly.access.mul.Packed_MemRef_call2453612.us.3 = mul nuw nsw i64 %180, 1200
  br label %polly.loop_header581

polly.loop_exit583:                               ; preds = %polly.loop_exit590
  %polly.indvar_next578 = add nuw nsw i64 %polly.indvar577, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next578, 250
  br i1 %exitcond895.not, label %polly.loop_exit576, label %polly.loop_header574

polly.loop_header581:                             ; preds = %polly.loop_exit590, %polly.loop_header574
  %indvars.iv885 = phi i64 [ %indvars.iv.next886, %polly.loop_exit590 ], [ %indvars.iv883, %polly.loop_header574 ]
  %indvars.iv880 = phi i64 [ %indvars.iv.next881, %polly.loop_exit590 ], [ %indvars.iv878, %polly.loop_header574 ]
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit590 ], [ 0, %polly.loop_header574 ]
  %182 = mul nuw nsw i64 %polly.indvar584, 50
  %183 = add nsw i64 %182, %172
  %184 = icmp sgt i64 %183, 0
  %185 = select i1 %184, i64 %183, i64 0
  %polly.loop_guard591 = icmp slt i64 %185, 8
  br i1 %polly.loop_guard591, label %polly.loop_header588.preheader, label %polly.loop_exit590

polly.loop_header588.preheader:                   ; preds = %polly.loop_header581
  %smax882 = call i64 @llvm.smax.i64(i64 %indvars.iv880, i64 0)
  %186 = add i64 %smax882, %indvars.iv885
  %187 = sub nsw i64 %173, %182
  br label %polly.loop_header588

polly.loop_exit590:                               ; preds = %polly.loop_exit597, %polly.loop_header581
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %indvars.iv.next881 = add nsw i64 %indvars.iv880, 50
  %indvars.iv.next886 = add nsw i64 %indvars.iv885, -50
  %exitcond894.not = icmp eq i64 %polly.indvar584, %171
  br i1 %exitcond894.not, label %polly.loop_exit583, label %polly.loop_header581

polly.loop_header588:                             ; preds = %polly.loop_header588.preheader, %polly.loop_exit597
  %indvars.iv887 = phi i64 [ %186, %polly.loop_header588.preheader ], [ %indvars.iv.next888, %polly.loop_exit597 ]
  %polly.indvar592 = phi i64 [ %185, %polly.loop_header588.preheader ], [ %polly.indvar_next593, %polly.loop_exit597 ]
  %smin889 = call i64 @llvm.smin.i64(i64 %indvars.iv887, i64 49)
  %188 = add nsw i64 %polly.indvar592, %187
  %polly.loop_guard605934 = icmp sgt i64 %188, -1
  %189 = add nuw nsw i64 %polly.indvar592, %173
  %190 = mul i64 %189, 8000
  %191 = mul i64 %189, 9600
  br i1 %polly.loop_guard605934, label %polly.loop_header595.us.preheader, label %polly.loop_exit597

polly.loop_header595.us.preheader:                ; preds = %polly.loop_header588
  %polly.access.add.Packed_MemRef_call2453613.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2453612.us, %189
  %polly.access.Packed_MemRef_call2453614.us = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453613.us
  %_p_scalar_615.us = load double, double* %polly.access.Packed_MemRef_call2453614.us, align 8
  %192 = add i64 %175, %190
  %scevgep620.us = getelementptr i8, i8* %call1, i64 %192
  %scevgep620621.us = bitcast i8* %scevgep620.us to double*
  %_p_scalar_622.us = load double, double* %scevgep620621.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header602.us

polly.loop_header602.us:                          ; preds = %polly.loop_header595.us.preheader, %polly.loop_header602.us
  %polly.indvar606.us = phi i64 [ %polly.indvar_next607.us, %polly.loop_header602.us ], [ 0, %polly.loop_header595.us.preheader ]
  %193 = add nuw nsw i64 %polly.indvar606.us, %182
  %194 = mul nuw nsw i64 %193, 8000
  %195 = add nuw nsw i64 %194, %175
  %scevgep609.us = getelementptr i8, i8* %call1, i64 %195
  %scevgep609610.us = bitcast i8* %scevgep609.us to double*
  %_p_scalar_611.us = load double, double* %scevgep609610.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_615.us, %_p_scalar_611.us
  %polly.access.add.Packed_MemRef_call2453617.us = add nuw nsw i64 %193, %polly.access.mul.Packed_MemRef_call2453612.us
  %polly.access.Packed_MemRef_call2453618.us = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453617.us
  %_p_scalar_619.us = load double, double* %polly.access.Packed_MemRef_call2453618.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_622.us, %_p_scalar_619.us
  %196 = shl i64 %193, 3
  %197 = add i64 %196, %191
  %scevgep623.us = getelementptr i8, i8* %call, i64 %197
  %scevgep623624.us = bitcast i8* %scevgep623.us to double*
  %_p_scalar_625.us = load double, double* %scevgep623624.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_625.us
  store double %p_add42.i.us, double* %scevgep623624.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next607.us = add nuw nsw i64 %polly.indvar606.us, 1
  %exitcond890.not = icmp eq i64 %polly.indvar606.us, %smin889
  br i1 %exitcond890.not, label %polly.loop_exit604.loopexit.us, label %polly.loop_header602.us

polly.loop_exit604.loopexit.us:                   ; preds = %polly.loop_header602.us
  %polly.access.add.Packed_MemRef_call2453613.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2453612.us.1, %189
  %polly.access.Packed_MemRef_call2453614.us.1 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453613.us.1
  %_p_scalar_615.us.1 = load double, double* %polly.access.Packed_MemRef_call2453614.us.1, align 8
  %198 = add i64 %177, %190
  %scevgep620.us.1 = getelementptr i8, i8* %call1, i64 %198
  %scevgep620621.us.1 = bitcast i8* %scevgep620.us.1 to double*
  %_p_scalar_622.us.1 = load double, double* %scevgep620621.us.1, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header602.us.1

polly.loop_exit597:                               ; preds = %polly.loop_header602.us.3, %polly.loop_header588
  %polly.indvar_next593 = add nuw nsw i64 %polly.indvar592, 1
  %polly.loop_cond594 = icmp ult i64 %polly.indvar592, 7
  %indvars.iv.next888 = add i64 %indvars.iv887, 1
  br i1 %polly.loop_cond594, label %polly.loop_header588, label %polly.loop_exit590

polly.loop_header752:                             ; preds = %entry, %polly.loop_exit760
  %indvars.iv925 = phi i64 [ %indvars.iv.next926, %polly.loop_exit760 ], [ 0, %entry ]
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %entry ]
  %smin927 = call i64 @llvm.smin.i64(i64 %indvars.iv925, i64 -1168)
  %199 = shl nsw i64 %polly.indvar755, 5
  %200 = add nsw i64 %smin927, 1199
  br label %polly.loop_header758

polly.loop_exit760:                               ; preds = %polly.loop_exit766
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %indvars.iv.next926 = add nsw i64 %indvars.iv925, -32
  %exitcond930.not = icmp eq i64 %polly.indvar_next756, 38
  br i1 %exitcond930.not, label %polly.loop_header779, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_exit766, %polly.loop_header752
  %indvars.iv921 = phi i64 [ %indvars.iv.next922, %polly.loop_exit766 ], [ 0, %polly.loop_header752 ]
  %polly.indvar761 = phi i64 [ %polly.indvar_next762, %polly.loop_exit766 ], [ 0, %polly.loop_header752 ]
  %201 = mul nsw i64 %polly.indvar761, -32
  %smin956 = call i64 @llvm.smin.i64(i64 %201, i64 -1168)
  %202 = add nsw i64 %smin956, 1200
  %smin923 = call i64 @llvm.smin.i64(i64 %indvars.iv921, i64 -1168)
  %203 = shl nsw i64 %polly.indvar761, 5
  %204 = add nsw i64 %smin923, 1199
  br label %polly.loop_header764

polly.loop_exit766:                               ; preds = %polly.loop_exit772
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %indvars.iv.next922 = add nsw i64 %indvars.iv921, -32
  %exitcond929.not = icmp eq i64 %polly.indvar_next762, 38
  br i1 %exitcond929.not, label %polly.loop_exit760, label %polly.loop_header758

polly.loop_header764:                             ; preds = %polly.loop_exit772, %polly.loop_header758
  %polly.indvar767 = phi i64 [ 0, %polly.loop_header758 ], [ %polly.indvar_next768, %polly.loop_exit772 ]
  %205 = add nuw nsw i64 %polly.indvar767, %199
  %206 = trunc i64 %205 to i32
  %207 = mul nuw nsw i64 %205, 9600
  %min.iters.check = icmp eq i64 %202, 0
  br i1 %min.iters.check, label %polly.loop_header770, label %vector.ph957

vector.ph957:                                     ; preds = %polly.loop_header764
  %broadcast.splatinsert964 = insertelement <4 x i64> poison, i64 %203, i32 0
  %broadcast.splat965 = shufflevector <4 x i64> %broadcast.splatinsert964, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert966 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat967 = shufflevector <4 x i32> %broadcast.splatinsert966, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body955

vector.body955:                                   ; preds = %vector.body955, %vector.ph957
  %index958 = phi i64 [ 0, %vector.ph957 ], [ %index.next959, %vector.body955 ]
  %vec.ind962 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph957 ], [ %vec.ind.next963, %vector.body955 ]
  %208 = add nuw nsw <4 x i64> %vec.ind962, %broadcast.splat965
  %209 = trunc <4 x i64> %208 to <4 x i32>
  %210 = mul <4 x i32> %broadcast.splat967, %209
  %211 = add <4 x i32> %210, <i32 3, i32 3, i32 3, i32 3>
  %212 = urem <4 x i32> %211, <i32 1200, i32 1200, i32 1200, i32 1200>
  %213 = sitofp <4 x i32> %212 to <4 x double>
  %214 = fmul fast <4 x double> %213, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %215 = extractelement <4 x i64> %208, i32 0
  %216 = shl i64 %215, 3
  %217 = add nuw nsw i64 %216, %207
  %218 = getelementptr i8, i8* %call, i64 %217
  %219 = bitcast i8* %218 to <4 x double>*
  store <4 x double> %214, <4 x double>* %219, align 8, !alias.scope !94, !noalias !96
  %index.next959 = add i64 %index958, 4
  %vec.ind.next963 = add <4 x i64> %vec.ind962, <i64 4, i64 4, i64 4, i64 4>
  %220 = icmp eq i64 %index.next959, %202
  br i1 %220, label %polly.loop_exit772, label %vector.body955, !llvm.loop !99

polly.loop_exit772:                               ; preds = %vector.body955, %polly.loop_header770
  %polly.indvar_next768 = add nuw nsw i64 %polly.indvar767, 1
  %exitcond928.not = icmp eq i64 %polly.indvar767, %200
  br i1 %exitcond928.not, label %polly.loop_exit766, label %polly.loop_header764

polly.loop_header770:                             ; preds = %polly.loop_header764, %polly.loop_header770
  %polly.indvar773 = phi i64 [ %polly.indvar_next774, %polly.loop_header770 ], [ 0, %polly.loop_header764 ]
  %221 = add nuw nsw i64 %polly.indvar773, %203
  %222 = trunc i64 %221 to i32
  %223 = mul i32 %222, %206
  %224 = add i32 %223, 3
  %225 = urem i32 %224, 1200
  %p_conv31.i = sitofp i32 %225 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %226 = shl i64 %221, 3
  %227 = add nuw nsw i64 %226, %207
  %scevgep776 = getelementptr i8, i8* %call, i64 %227
  %scevgep776777 = bitcast i8* %scevgep776 to double*
  store double %p_div33.i, double* %scevgep776777, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next774 = add nuw nsw i64 %polly.indvar773, 1
  %exitcond924.not = icmp eq i64 %polly.indvar773, %204
  br i1 %exitcond924.not, label %polly.loop_exit772, label %polly.loop_header770, !llvm.loop !100

polly.loop_header779:                             ; preds = %polly.loop_exit760, %polly.loop_exit787
  %indvars.iv915 = phi i64 [ %indvars.iv.next916, %polly.loop_exit787 ], [ 0, %polly.loop_exit760 ]
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %polly.loop_exit760 ]
  %smin917 = call i64 @llvm.smin.i64(i64 %indvars.iv915, i64 -1168)
  %228 = shl nsw i64 %polly.indvar782, 5
  %229 = add nsw i64 %smin917, 1199
  br label %polly.loop_header785

polly.loop_exit787:                               ; preds = %polly.loop_exit793
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %indvars.iv.next916 = add nsw i64 %indvars.iv915, -32
  %exitcond920.not = icmp eq i64 %polly.indvar_next783, 38
  br i1 %exitcond920.not, label %polly.loop_header805, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_exit793, %polly.loop_header779
  %indvars.iv911 = phi i64 [ %indvars.iv.next912, %polly.loop_exit793 ], [ 0, %polly.loop_header779 ]
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_exit793 ], [ 0, %polly.loop_header779 ]
  %230 = mul nsw i64 %polly.indvar788, -32
  %smin971 = call i64 @llvm.smin.i64(i64 %230, i64 -968)
  %231 = add nsw i64 %smin971, 1000
  %smin913 = call i64 @llvm.smin.i64(i64 %indvars.iv911, i64 -968)
  %232 = shl nsw i64 %polly.indvar788, 5
  %233 = add nsw i64 %smin913, 999
  br label %polly.loop_header791

polly.loop_exit793:                               ; preds = %polly.loop_exit799
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %indvars.iv.next912 = add nsw i64 %indvars.iv911, -32
  %exitcond919.not = icmp eq i64 %polly.indvar_next789, 32
  br i1 %exitcond919.not, label %polly.loop_exit787, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_exit799, %polly.loop_header785
  %polly.indvar794 = phi i64 [ 0, %polly.loop_header785 ], [ %polly.indvar_next795, %polly.loop_exit799 ]
  %234 = add nuw nsw i64 %polly.indvar794, %228
  %235 = trunc i64 %234 to i32
  %236 = mul nuw nsw i64 %234, 8000
  %min.iters.check972 = icmp eq i64 %231, 0
  br i1 %min.iters.check972, label %polly.loop_header797, label %vector.ph973

vector.ph973:                                     ; preds = %polly.loop_header791
  %broadcast.splatinsert982 = insertelement <4 x i64> poison, i64 %232, i32 0
  %broadcast.splat983 = shufflevector <4 x i64> %broadcast.splatinsert982, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert984 = insertelement <4 x i32> poison, i32 %235, i32 0
  %broadcast.splat985 = shufflevector <4 x i32> %broadcast.splatinsert984, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body970

vector.body970:                                   ; preds = %vector.body970, %vector.ph973
  %index976 = phi i64 [ 0, %vector.ph973 ], [ %index.next977, %vector.body970 ]
  %vec.ind980 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph973 ], [ %vec.ind.next981, %vector.body970 ]
  %237 = add nuw nsw <4 x i64> %vec.ind980, %broadcast.splat983
  %238 = trunc <4 x i64> %237 to <4 x i32>
  %239 = mul <4 x i32> %broadcast.splat985, %238
  %240 = add <4 x i32> %239, <i32 2, i32 2, i32 2, i32 2>
  %241 = urem <4 x i32> %240, <i32 1000, i32 1000, i32 1000, i32 1000>
  %242 = sitofp <4 x i32> %241 to <4 x double>
  %243 = fmul fast <4 x double> %242, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %244 = extractelement <4 x i64> %237, i32 0
  %245 = shl i64 %244, 3
  %246 = add nuw nsw i64 %245, %236
  %247 = getelementptr i8, i8* %call2, i64 %246
  %248 = bitcast i8* %247 to <4 x double>*
  store <4 x double> %243, <4 x double>* %248, align 8, !alias.scope !98, !noalias !101
  %index.next977 = add i64 %index976, 4
  %vec.ind.next981 = add <4 x i64> %vec.ind980, <i64 4, i64 4, i64 4, i64 4>
  %249 = icmp eq i64 %index.next977, %231
  br i1 %249, label %polly.loop_exit799, label %vector.body970, !llvm.loop !102

polly.loop_exit799:                               ; preds = %vector.body970, %polly.loop_header797
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond918.not = icmp eq i64 %polly.indvar794, %229
  br i1 %exitcond918.not, label %polly.loop_exit793, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_header791, %polly.loop_header797
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_header797 ], [ 0, %polly.loop_header791 ]
  %250 = add nuw nsw i64 %polly.indvar800, %232
  %251 = trunc i64 %250 to i32
  %252 = mul i32 %251, %235
  %253 = add i32 %252, 2
  %254 = urem i32 %253, 1000
  %p_conv10.i = sitofp i32 %254 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %255 = shl i64 %250, 3
  %256 = add nuw nsw i64 %255, %236
  %scevgep803 = getelementptr i8, i8* %call2, i64 %256
  %scevgep803804 = bitcast i8* %scevgep803 to double*
  store double %p_div12.i, double* %scevgep803804, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond914.not = icmp eq i64 %polly.indvar800, %233
  br i1 %exitcond914.not, label %polly.loop_exit799, label %polly.loop_header797, !llvm.loop !103

polly.loop_header805:                             ; preds = %polly.loop_exit787, %polly.loop_exit813
  %indvars.iv905 = phi i64 [ %indvars.iv.next906, %polly.loop_exit813 ], [ 0, %polly.loop_exit787 ]
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_exit787 ]
  %smin907 = call i64 @llvm.smin.i64(i64 %indvars.iv905, i64 -1168)
  %257 = shl nsw i64 %polly.indvar808, 5
  %258 = add nsw i64 %smin907, 1199
  br label %polly.loop_header811

polly.loop_exit813:                               ; preds = %polly.loop_exit819
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %indvars.iv.next906 = add nsw i64 %indvars.iv905, -32
  %exitcond910.not = icmp eq i64 %polly.indvar_next809, 38
  br i1 %exitcond910.not, label %init_array.exit, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_exit819, %polly.loop_header805
  %indvars.iv901 = phi i64 [ %indvars.iv.next902, %polly.loop_exit819 ], [ 0, %polly.loop_header805 ]
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_exit819 ], [ 0, %polly.loop_header805 ]
  %259 = mul nsw i64 %polly.indvar814, -32
  %smin989 = call i64 @llvm.smin.i64(i64 %259, i64 -968)
  %260 = add nsw i64 %smin989, 1000
  %smin903 = call i64 @llvm.smin.i64(i64 %indvars.iv901, i64 -968)
  %261 = shl nsw i64 %polly.indvar814, 5
  %262 = add nsw i64 %smin903, 999
  br label %polly.loop_header817

polly.loop_exit819:                               ; preds = %polly.loop_exit825
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %indvars.iv.next902 = add nsw i64 %indvars.iv901, -32
  %exitcond909.not = icmp eq i64 %polly.indvar_next815, 32
  br i1 %exitcond909.not, label %polly.loop_exit813, label %polly.loop_header811

polly.loop_header817:                             ; preds = %polly.loop_exit825, %polly.loop_header811
  %polly.indvar820 = phi i64 [ 0, %polly.loop_header811 ], [ %polly.indvar_next821, %polly.loop_exit825 ]
  %263 = add nuw nsw i64 %polly.indvar820, %257
  %264 = trunc i64 %263 to i32
  %265 = mul nuw nsw i64 %263, 8000
  %min.iters.check990 = icmp eq i64 %260, 0
  br i1 %min.iters.check990, label %polly.loop_header823, label %vector.ph991

vector.ph991:                                     ; preds = %polly.loop_header817
  %broadcast.splatinsert1000 = insertelement <4 x i64> poison, i64 %261, i32 0
  %broadcast.splat1001 = shufflevector <4 x i64> %broadcast.splatinsert1000, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1002 = insertelement <4 x i32> poison, i32 %264, i32 0
  %broadcast.splat1003 = shufflevector <4 x i32> %broadcast.splatinsert1002, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body988

vector.body988:                                   ; preds = %vector.body988, %vector.ph991
  %index994 = phi i64 [ 0, %vector.ph991 ], [ %index.next995, %vector.body988 ]
  %vec.ind998 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph991 ], [ %vec.ind.next999, %vector.body988 ]
  %266 = add nuw nsw <4 x i64> %vec.ind998, %broadcast.splat1001
  %267 = trunc <4 x i64> %266 to <4 x i32>
  %268 = mul <4 x i32> %broadcast.splat1003, %267
  %269 = add <4 x i32> %268, <i32 1, i32 1, i32 1, i32 1>
  %270 = urem <4 x i32> %269, <i32 1200, i32 1200, i32 1200, i32 1200>
  %271 = sitofp <4 x i32> %270 to <4 x double>
  %272 = fmul fast <4 x double> %271, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %273 = extractelement <4 x i64> %266, i32 0
  %274 = shl i64 %273, 3
  %275 = add nuw nsw i64 %274, %265
  %276 = getelementptr i8, i8* %call1, i64 %275
  %277 = bitcast i8* %276 to <4 x double>*
  store <4 x double> %272, <4 x double>* %277, align 8, !alias.scope !97, !noalias !104
  %index.next995 = add i64 %index994, 4
  %vec.ind.next999 = add <4 x i64> %vec.ind998, <i64 4, i64 4, i64 4, i64 4>
  %278 = icmp eq i64 %index.next995, %260
  br i1 %278, label %polly.loop_exit825, label %vector.body988, !llvm.loop !105

polly.loop_exit825:                               ; preds = %vector.body988, %polly.loop_header823
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond908.not = icmp eq i64 %polly.indvar820, %258
  br i1 %exitcond908.not, label %polly.loop_exit819, label %polly.loop_header817

polly.loop_header823:                             ; preds = %polly.loop_header817, %polly.loop_header823
  %polly.indvar826 = phi i64 [ %polly.indvar_next827, %polly.loop_header823 ], [ 0, %polly.loop_header817 ]
  %279 = add nuw nsw i64 %polly.indvar826, %261
  %280 = trunc i64 %279 to i32
  %281 = mul i32 %280, %264
  %282 = add i32 %281, 1
  %283 = urem i32 %282, 1200
  %p_conv.i = sitofp i32 %283 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %284 = shl i64 %279, 3
  %285 = add nuw nsw i64 %284, %265
  %scevgep830 = getelementptr i8, i8* %call1, i64 %285
  %scevgep830831 = bitcast i8* %scevgep830 to double*
  store double %p_div.i, double* %scevgep830831, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next827 = add nuw nsw i64 %polly.indvar826, 1
  %exitcond904.not = icmp eq i64 %polly.indvar826, %262
  br i1 %exitcond904.not, label %polly.loop_exit825, label %polly.loop_header823, !llvm.loop !106

polly.loop_header246.us.1:                        ; preds = %polly.loop_header246.us.1, %polly.loop_exit248.loopexit.us
  %polly.indvar250.us.1 = phi i64 [ %polly.indvar_next251.us.1, %polly.loop_header246.us.1 ], [ 0, %polly.loop_exit248.loopexit.us ]
  %286 = add nuw nsw i64 %polly.indvar250.us.1, %108
  %287 = mul nuw nsw i64 %286, 8000
  %288 = add nuw nsw i64 %287, %103
  %scevgep253.us.1 = getelementptr i8, i8* %call1, i64 %288
  %scevgep253254.us.1 = bitcast i8* %scevgep253.us.1 to double*
  %_p_scalar_255.us.1 = load double, double* %scevgep253254.us.1, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_259.us.1, %_p_scalar_255.us.1
  %polly.access.add.Packed_MemRef_call2261.us.1 = add nuw nsw i64 %286, %polly.access.mul.Packed_MemRef_call2256.us.1
  %polly.access.Packed_MemRef_call2262.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us.1
  %_p_scalar_263.us.1 = load double, double* %polly.access.Packed_MemRef_call2262.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_266.us.1, %_p_scalar_263.us.1
  %289 = shl i64 %286, 3
  %290 = add i64 %289, %117
  %scevgep267.us.1 = getelementptr i8, i8* %call, i64 %290
  %scevgep267268.us.1 = bitcast i8* %scevgep267.us.1 to double*
  %_p_scalar_269.us.1 = load double, double* %scevgep267268.us.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_269.us.1
  store double %p_add42.i118.us.1, double* %scevgep267268.us.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next251.us.1 = add nuw nsw i64 %polly.indvar250.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar250.us.1, %smin
  br i1 %exitcond.1.not, label %polly.loop_exit248.loopexit.us.1, label %polly.loop_header246.us.1

polly.loop_exit248.loopexit.us.1:                 ; preds = %polly.loop_header246.us.1
  %polly.access.add.Packed_MemRef_call2257.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2256.us.2, %115
  %polly.access.Packed_MemRef_call2258.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us.2
  %_p_scalar_259.us.2 = load double, double* %polly.access.Packed_MemRef_call2258.us.2, align 8
  %291 = add i64 %105, %116
  %scevgep264.us.2 = getelementptr i8, i8* %call1, i64 %291
  %scevgep264265.us.2 = bitcast i8* %scevgep264.us.2 to double*
  %_p_scalar_266.us.2 = load double, double* %scevgep264265.us.2, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header246.us.2

polly.loop_header246.us.2:                        ; preds = %polly.loop_header246.us.2, %polly.loop_exit248.loopexit.us.1
  %polly.indvar250.us.2 = phi i64 [ %polly.indvar_next251.us.2, %polly.loop_header246.us.2 ], [ 0, %polly.loop_exit248.loopexit.us.1 ]
  %292 = add nuw nsw i64 %polly.indvar250.us.2, %108
  %293 = mul nuw nsw i64 %292, 8000
  %294 = add nuw nsw i64 %293, %105
  %scevgep253.us.2 = getelementptr i8, i8* %call1, i64 %294
  %scevgep253254.us.2 = bitcast i8* %scevgep253.us.2 to double*
  %_p_scalar_255.us.2 = load double, double* %scevgep253254.us.2, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_259.us.2, %_p_scalar_255.us.2
  %polly.access.add.Packed_MemRef_call2261.us.2 = add nuw nsw i64 %292, %polly.access.mul.Packed_MemRef_call2256.us.2
  %polly.access.Packed_MemRef_call2262.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us.2
  %_p_scalar_263.us.2 = load double, double* %polly.access.Packed_MemRef_call2262.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_266.us.2, %_p_scalar_263.us.2
  %295 = shl i64 %292, 3
  %296 = add i64 %295, %117
  %scevgep267.us.2 = getelementptr i8, i8* %call, i64 %296
  %scevgep267268.us.2 = bitcast i8* %scevgep267.us.2 to double*
  %_p_scalar_269.us.2 = load double, double* %scevgep267268.us.2, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_269.us.2
  store double %p_add42.i118.us.2, double* %scevgep267268.us.2, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next251.us.2 = add nuw nsw i64 %polly.indvar250.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar250.us.2, %smin
  br i1 %exitcond.2.not, label %polly.loop_exit248.loopexit.us.2, label %polly.loop_header246.us.2

polly.loop_exit248.loopexit.us.2:                 ; preds = %polly.loop_header246.us.2
  %polly.access.add.Packed_MemRef_call2257.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2256.us.3, %115
  %polly.access.Packed_MemRef_call2258.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us.3
  %_p_scalar_259.us.3 = load double, double* %polly.access.Packed_MemRef_call2258.us.3, align 8
  %297 = add i64 %107, %116
  %scevgep264.us.3 = getelementptr i8, i8* %call1, i64 %297
  %scevgep264265.us.3 = bitcast i8* %scevgep264.us.3 to double*
  %_p_scalar_266.us.3 = load double, double* %scevgep264265.us.3, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header246.us.3

polly.loop_header246.us.3:                        ; preds = %polly.loop_header246.us.3, %polly.loop_exit248.loopexit.us.2
  %polly.indvar250.us.3 = phi i64 [ %polly.indvar_next251.us.3, %polly.loop_header246.us.3 ], [ 0, %polly.loop_exit248.loopexit.us.2 ]
  %298 = add nuw nsw i64 %polly.indvar250.us.3, %108
  %299 = mul nuw nsw i64 %298, 8000
  %300 = add nuw nsw i64 %299, %107
  %scevgep253.us.3 = getelementptr i8, i8* %call1, i64 %300
  %scevgep253254.us.3 = bitcast i8* %scevgep253.us.3 to double*
  %_p_scalar_255.us.3 = load double, double* %scevgep253254.us.3, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_259.us.3, %_p_scalar_255.us.3
  %polly.access.add.Packed_MemRef_call2261.us.3 = add nuw nsw i64 %298, %polly.access.mul.Packed_MemRef_call2256.us.3
  %polly.access.Packed_MemRef_call2262.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us.3
  %_p_scalar_263.us.3 = load double, double* %polly.access.Packed_MemRef_call2262.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_266.us.3, %_p_scalar_263.us.3
  %301 = shl i64 %298, 3
  %302 = add i64 %301, %117
  %scevgep267.us.3 = getelementptr i8, i8* %call, i64 %302
  %scevgep267268.us.3 = bitcast i8* %scevgep267.us.3 to double*
  %_p_scalar_269.us.3 = load double, double* %scevgep267268.us.3, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_269.us.3
  store double %p_add42.i118.us.3, double* %scevgep267268.us.3, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next251.us.3 = add nuw nsw i64 %polly.indvar250.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar250.us.3, %smin
  br i1 %exitcond.3.not, label %polly.loop_exit241, label %polly.loop_header246.us.3

polly.loop_header424.us.1:                        ; preds = %polly.loop_header424.us.1, %polly.loop_exit426.loopexit.us
  %polly.indvar428.us.1 = phi i64 [ %polly.indvar_next429.us.1, %polly.loop_header424.us.1 ], [ 0, %polly.loop_exit426.loopexit.us ]
  %303 = add nuw nsw i64 %polly.indvar428.us.1, %145
  %304 = mul nuw nsw i64 %303, 8000
  %305 = add nuw nsw i64 %304, %140
  %scevgep431.us.1 = getelementptr i8, i8* %call1, i64 %305
  %scevgep431432.us.1 = bitcast i8* %scevgep431.us.1 to double*
  %_p_scalar_433.us.1 = load double, double* %scevgep431432.us.1, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_437.us.1, %_p_scalar_433.us.1
  %polly.access.add.Packed_MemRef_call2275439.us.1 = add nuw nsw i64 %303, %polly.access.mul.Packed_MemRef_call2275434.us.1
  %polly.access.Packed_MemRef_call2275440.us.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275439.us.1
  %_p_scalar_441.us.1 = load double, double* %polly.access.Packed_MemRef_call2275440.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_444.us.1, %_p_scalar_441.us.1
  %306 = shl i64 %303, 3
  %307 = add i64 %306, %154
  %scevgep445.us.1 = getelementptr i8, i8* %call, i64 %307
  %scevgep445446.us.1 = bitcast i8* %scevgep445.us.1 to double*
  %_p_scalar_447.us.1 = load double, double* %scevgep445446.us.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_447.us.1
  store double %p_add42.i79.us.1, double* %scevgep445446.us.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next429.us.1 = add nuw nsw i64 %polly.indvar428.us.1, 1
  %exitcond867.1.not = icmp eq i64 %polly.indvar428.us.1, %smin866
  br i1 %exitcond867.1.not, label %polly.loop_exit426.loopexit.us.1, label %polly.loop_header424.us.1

polly.loop_exit426.loopexit.us.1:                 ; preds = %polly.loop_header424.us.1
  %polly.access.add.Packed_MemRef_call2275435.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2275434.us.2, %152
  %polly.access.Packed_MemRef_call2275436.us.2 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275435.us.2
  %_p_scalar_437.us.2 = load double, double* %polly.access.Packed_MemRef_call2275436.us.2, align 8
  %308 = add i64 %142, %153
  %scevgep442.us.2 = getelementptr i8, i8* %call1, i64 %308
  %scevgep442443.us.2 = bitcast i8* %scevgep442.us.2 to double*
  %_p_scalar_444.us.2 = load double, double* %scevgep442443.us.2, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header424.us.2

polly.loop_header424.us.2:                        ; preds = %polly.loop_header424.us.2, %polly.loop_exit426.loopexit.us.1
  %polly.indvar428.us.2 = phi i64 [ %polly.indvar_next429.us.2, %polly.loop_header424.us.2 ], [ 0, %polly.loop_exit426.loopexit.us.1 ]
  %309 = add nuw nsw i64 %polly.indvar428.us.2, %145
  %310 = mul nuw nsw i64 %309, 8000
  %311 = add nuw nsw i64 %310, %142
  %scevgep431.us.2 = getelementptr i8, i8* %call1, i64 %311
  %scevgep431432.us.2 = bitcast i8* %scevgep431.us.2 to double*
  %_p_scalar_433.us.2 = load double, double* %scevgep431432.us.2, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_437.us.2, %_p_scalar_433.us.2
  %polly.access.add.Packed_MemRef_call2275439.us.2 = add nuw nsw i64 %309, %polly.access.mul.Packed_MemRef_call2275434.us.2
  %polly.access.Packed_MemRef_call2275440.us.2 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275439.us.2
  %_p_scalar_441.us.2 = load double, double* %polly.access.Packed_MemRef_call2275440.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_444.us.2, %_p_scalar_441.us.2
  %312 = shl i64 %309, 3
  %313 = add i64 %312, %154
  %scevgep445.us.2 = getelementptr i8, i8* %call, i64 %313
  %scevgep445446.us.2 = bitcast i8* %scevgep445.us.2 to double*
  %_p_scalar_447.us.2 = load double, double* %scevgep445446.us.2, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_447.us.2
  store double %p_add42.i79.us.2, double* %scevgep445446.us.2, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next429.us.2 = add nuw nsw i64 %polly.indvar428.us.2, 1
  %exitcond867.2.not = icmp eq i64 %polly.indvar428.us.2, %smin866
  br i1 %exitcond867.2.not, label %polly.loop_exit426.loopexit.us.2, label %polly.loop_header424.us.2

polly.loop_exit426.loopexit.us.2:                 ; preds = %polly.loop_header424.us.2
  %polly.access.add.Packed_MemRef_call2275435.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2275434.us.3, %152
  %polly.access.Packed_MemRef_call2275436.us.3 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275435.us.3
  %_p_scalar_437.us.3 = load double, double* %polly.access.Packed_MemRef_call2275436.us.3, align 8
  %314 = add i64 %144, %153
  %scevgep442.us.3 = getelementptr i8, i8* %call1, i64 %314
  %scevgep442443.us.3 = bitcast i8* %scevgep442.us.3 to double*
  %_p_scalar_444.us.3 = load double, double* %scevgep442443.us.3, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header424.us.3

polly.loop_header424.us.3:                        ; preds = %polly.loop_header424.us.3, %polly.loop_exit426.loopexit.us.2
  %polly.indvar428.us.3 = phi i64 [ %polly.indvar_next429.us.3, %polly.loop_header424.us.3 ], [ 0, %polly.loop_exit426.loopexit.us.2 ]
  %315 = add nuw nsw i64 %polly.indvar428.us.3, %145
  %316 = mul nuw nsw i64 %315, 8000
  %317 = add nuw nsw i64 %316, %144
  %scevgep431.us.3 = getelementptr i8, i8* %call1, i64 %317
  %scevgep431432.us.3 = bitcast i8* %scevgep431.us.3 to double*
  %_p_scalar_433.us.3 = load double, double* %scevgep431432.us.3, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_437.us.3, %_p_scalar_433.us.3
  %polly.access.add.Packed_MemRef_call2275439.us.3 = add nuw nsw i64 %315, %polly.access.mul.Packed_MemRef_call2275434.us.3
  %polly.access.Packed_MemRef_call2275440.us.3 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275439.us.3
  %_p_scalar_441.us.3 = load double, double* %polly.access.Packed_MemRef_call2275440.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_444.us.3, %_p_scalar_441.us.3
  %318 = shl i64 %315, 3
  %319 = add i64 %318, %154
  %scevgep445.us.3 = getelementptr i8, i8* %call, i64 %319
  %scevgep445446.us.3 = bitcast i8* %scevgep445.us.3 to double*
  %_p_scalar_447.us.3 = load double, double* %scevgep445446.us.3, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_447.us.3
  store double %p_add42.i79.us.3, double* %scevgep445446.us.3, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next429.us.3 = add nuw nsw i64 %polly.indvar428.us.3, 1
  %exitcond867.3.not = icmp eq i64 %polly.indvar428.us.3, %smin866
  br i1 %exitcond867.3.not, label %polly.loop_exit419, label %polly.loop_header424.us.3

polly.loop_header602.us.1:                        ; preds = %polly.loop_header602.us.1, %polly.loop_exit604.loopexit.us
  %polly.indvar606.us.1 = phi i64 [ %polly.indvar_next607.us.1, %polly.loop_header602.us.1 ], [ 0, %polly.loop_exit604.loopexit.us ]
  %320 = add nuw nsw i64 %polly.indvar606.us.1, %182
  %321 = mul nuw nsw i64 %320, 8000
  %322 = add nuw nsw i64 %321, %177
  %scevgep609.us.1 = getelementptr i8, i8* %call1, i64 %322
  %scevgep609610.us.1 = bitcast i8* %scevgep609.us.1 to double*
  %_p_scalar_611.us.1 = load double, double* %scevgep609610.us.1, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_615.us.1, %_p_scalar_611.us.1
  %polly.access.add.Packed_MemRef_call2453617.us.1 = add nuw nsw i64 %320, %polly.access.mul.Packed_MemRef_call2453612.us.1
  %polly.access.Packed_MemRef_call2453618.us.1 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453617.us.1
  %_p_scalar_619.us.1 = load double, double* %polly.access.Packed_MemRef_call2453618.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_622.us.1, %_p_scalar_619.us.1
  %323 = shl i64 %320, 3
  %324 = add i64 %323, %191
  %scevgep623.us.1 = getelementptr i8, i8* %call, i64 %324
  %scevgep623624.us.1 = bitcast i8* %scevgep623.us.1 to double*
  %_p_scalar_625.us.1 = load double, double* %scevgep623624.us.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_625.us.1
  store double %p_add42.i.us.1, double* %scevgep623624.us.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next607.us.1 = add nuw nsw i64 %polly.indvar606.us.1, 1
  %exitcond890.1.not = icmp eq i64 %polly.indvar606.us.1, %smin889
  br i1 %exitcond890.1.not, label %polly.loop_exit604.loopexit.us.1, label %polly.loop_header602.us.1

polly.loop_exit604.loopexit.us.1:                 ; preds = %polly.loop_header602.us.1
  %polly.access.add.Packed_MemRef_call2453613.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2453612.us.2, %189
  %polly.access.Packed_MemRef_call2453614.us.2 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453613.us.2
  %_p_scalar_615.us.2 = load double, double* %polly.access.Packed_MemRef_call2453614.us.2, align 8
  %325 = add i64 %179, %190
  %scevgep620.us.2 = getelementptr i8, i8* %call1, i64 %325
  %scevgep620621.us.2 = bitcast i8* %scevgep620.us.2 to double*
  %_p_scalar_622.us.2 = load double, double* %scevgep620621.us.2, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header602.us.2

polly.loop_header602.us.2:                        ; preds = %polly.loop_header602.us.2, %polly.loop_exit604.loopexit.us.1
  %polly.indvar606.us.2 = phi i64 [ %polly.indvar_next607.us.2, %polly.loop_header602.us.2 ], [ 0, %polly.loop_exit604.loopexit.us.1 ]
  %326 = add nuw nsw i64 %polly.indvar606.us.2, %182
  %327 = mul nuw nsw i64 %326, 8000
  %328 = add nuw nsw i64 %327, %179
  %scevgep609.us.2 = getelementptr i8, i8* %call1, i64 %328
  %scevgep609610.us.2 = bitcast i8* %scevgep609.us.2 to double*
  %_p_scalar_611.us.2 = load double, double* %scevgep609610.us.2, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_615.us.2, %_p_scalar_611.us.2
  %polly.access.add.Packed_MemRef_call2453617.us.2 = add nuw nsw i64 %326, %polly.access.mul.Packed_MemRef_call2453612.us.2
  %polly.access.Packed_MemRef_call2453618.us.2 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453617.us.2
  %_p_scalar_619.us.2 = load double, double* %polly.access.Packed_MemRef_call2453618.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_622.us.2, %_p_scalar_619.us.2
  %329 = shl i64 %326, 3
  %330 = add i64 %329, %191
  %scevgep623.us.2 = getelementptr i8, i8* %call, i64 %330
  %scevgep623624.us.2 = bitcast i8* %scevgep623.us.2 to double*
  %_p_scalar_625.us.2 = load double, double* %scevgep623624.us.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_625.us.2
  store double %p_add42.i.us.2, double* %scevgep623624.us.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next607.us.2 = add nuw nsw i64 %polly.indvar606.us.2, 1
  %exitcond890.2.not = icmp eq i64 %polly.indvar606.us.2, %smin889
  br i1 %exitcond890.2.not, label %polly.loop_exit604.loopexit.us.2, label %polly.loop_header602.us.2

polly.loop_exit604.loopexit.us.2:                 ; preds = %polly.loop_header602.us.2
  %polly.access.add.Packed_MemRef_call2453613.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2453612.us.3, %189
  %polly.access.Packed_MemRef_call2453614.us.3 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453613.us.3
  %_p_scalar_615.us.3 = load double, double* %polly.access.Packed_MemRef_call2453614.us.3, align 8
  %331 = add i64 %181, %190
  %scevgep620.us.3 = getelementptr i8, i8* %call1, i64 %331
  %scevgep620621.us.3 = bitcast i8* %scevgep620.us.3 to double*
  %_p_scalar_622.us.3 = load double, double* %scevgep620621.us.3, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header602.us.3

polly.loop_header602.us.3:                        ; preds = %polly.loop_header602.us.3, %polly.loop_exit604.loopexit.us.2
  %polly.indvar606.us.3 = phi i64 [ %polly.indvar_next607.us.3, %polly.loop_header602.us.3 ], [ 0, %polly.loop_exit604.loopexit.us.2 ]
  %332 = add nuw nsw i64 %polly.indvar606.us.3, %182
  %333 = mul nuw nsw i64 %332, 8000
  %334 = add nuw nsw i64 %333, %181
  %scevgep609.us.3 = getelementptr i8, i8* %call1, i64 %334
  %scevgep609610.us.3 = bitcast i8* %scevgep609.us.3 to double*
  %_p_scalar_611.us.3 = load double, double* %scevgep609610.us.3, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_615.us.3, %_p_scalar_611.us.3
  %polly.access.add.Packed_MemRef_call2453617.us.3 = add nuw nsw i64 %332, %polly.access.mul.Packed_MemRef_call2453612.us.3
  %polly.access.Packed_MemRef_call2453618.us.3 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453617.us.3
  %_p_scalar_619.us.3 = load double, double* %polly.access.Packed_MemRef_call2453618.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_622.us.3, %_p_scalar_619.us.3
  %335 = shl i64 %332, 3
  %336 = add i64 %335, %191
  %scevgep623.us.3 = getelementptr i8, i8* %call, i64 %336
  %scevgep623624.us.3 = bitcast i8* %scevgep623.us.3 to double*
  %_p_scalar_625.us.3 = load double, double* %scevgep623624.us.3, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_625.us.3
  store double %p_add42.i.us.3, double* %scevgep623624.us.3, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next607.us.3 = add nuw nsw i64 %polly.indvar606.us.3, 1
  %exitcond890.3.not = icmp eq i64 %polly.indvar606.us.3, %smin889
  br i1 %exitcond890.3.not, label %polly.loop_exit597, label %polly.loop_header602.us.3
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
!34 = !{!"llvm.loop.tile.size", i32 4}
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
