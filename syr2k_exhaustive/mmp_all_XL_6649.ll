; ModuleID = 'syr2k_exhaustive/mmp_all_XL_6649.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_6649.c"
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
  %call766 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1627 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2628 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1627, %call2
  %polly.access.call2647 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2647, %call1
  %2 = or i1 %0, %1
  %polly.access.call667 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call667, %call2
  %4 = icmp ule i8* %polly.access.call2647, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call667, %call1
  %8 = icmp ule i8* %polly.access.call1627, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header740, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep941 = getelementptr i8, i8* %call2, i64 %12
  %scevgep940 = getelementptr i8, i8* %call2, i64 %11
  %scevgep939 = getelementptr i8, i8* %call1, i64 %12
  %scevgep938 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep938, %scevgep941
  %bound1 = icmp ult i8* %scevgep940, %scevgep939
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
  br i1 %exitcond18.not.i, label %vector.ph945, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph945:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert952 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat953 = shufflevector <4 x i64> %broadcast.splatinsert952, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body944

vector.body944:                                   ; preds = %vector.body944, %vector.ph945
  %index946 = phi i64 [ 0, %vector.ph945 ], [ %index.next947, %vector.body944 ]
  %vec.ind950 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph945 ], [ %vec.ind.next951, %vector.body944 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind950, %broadcast.splat953
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv7.i, i64 %index946
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next947 = add i64 %index946, 4
  %vec.ind.next951 = add <4 x i64> %vec.ind950, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next947, 1200
  br i1 %40, label %for.inc41.i, label %vector.body944, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body944
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph945, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit801
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start442, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1008 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1008, label %for.body3.i46.preheader1082, label %vector.ph1009

vector.ph1009:                                    ; preds = %for.body3.i46.preheader
  %n.vec1011 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1007

vector.body1007:                                  ; preds = %vector.body1007, %vector.ph1009
  %index1012 = phi i64 [ 0, %vector.ph1009 ], [ %index.next1013, %vector.body1007 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i, i64 %index1012
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1013 = add i64 %index1012, 4
  %46 = icmp eq i64 %index.next1013, %n.vec1011
  br i1 %46, label %middle.block1005, label %vector.body1007, !llvm.loop !18

middle.block1005:                                 ; preds = %vector.body1007
  %cmp.n1015 = icmp eq i64 %indvars.iv21.i, %n.vec1011
  br i1 %cmp.n1015, label %for.inc6.i, label %for.body3.i46.preheader1082

for.body3.i46.preheader1082:                      ; preds = %for.body3.i46.preheader, %middle.block1005
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1011, %middle.block1005 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1082, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1082 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1005, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting443
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start268, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1031 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1031, label %for.body3.i60.preheader1081, label %vector.ph1032

vector.ph1032:                                    ; preds = %for.body3.i60.preheader
  %n.vec1034 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1030

vector.body1030:                                  ; preds = %vector.body1030, %vector.ph1032
  %index1035 = phi i64 [ 0, %vector.ph1032 ], [ %index.next1036, %vector.body1030 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i52, i64 %index1035
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1039 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1039, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1036 = add i64 %index1035, 4
  %57 = icmp eq i64 %index.next1036, %n.vec1034
  br i1 %57, label %middle.block1028, label %vector.body1030, !llvm.loop !60

middle.block1028:                                 ; preds = %vector.body1030
  %cmp.n1038 = icmp eq i64 %indvars.iv21.i52, %n.vec1034
  br i1 %cmp.n1038, label %for.inc6.i63, label %for.body3.i60.preheader1081

for.body3.i60.preheader1081:                      ; preds = %for.body3.i60.preheader, %middle.block1028
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1034, %middle.block1028 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1081, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1081 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1028, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1057 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1057, label %for.body3.i99.preheader1080, label %vector.ph1058

vector.ph1058:                                    ; preds = %for.body3.i99.preheader
  %n.vec1060 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1056

vector.body1056:                                  ; preds = %vector.body1056, %vector.ph1058
  %index1061 = phi i64 [ 0, %vector.ph1058 ], [ %index.next1062, %vector.body1056 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i91, i64 %index1061
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1065 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1065, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1062 = add i64 %index1061, 4
  %68 = icmp eq i64 %index.next1062, %n.vec1060
  br i1 %68, label %middle.block1054, label %vector.body1056, !llvm.loop !62

middle.block1054:                                 ; preds = %vector.body1056
  %cmp.n1064 = icmp eq i64 %indvars.iv21.i91, %n.vec1060
  br i1 %cmp.n1064, label %for.inc6.i102, label %for.body3.i99.preheader1080

for.body3.i99.preheader1080:                      ; preds = %for.body3.i99.preheader, %middle.block1054
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1060, %middle.block1054 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1080, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1080 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1054, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1069 = phi i64 [ %indvar.next1070, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1069, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1071 = icmp ult i64 %88, 4
  br i1 %min.iters.check1071, label %polly.loop_header191.preheader, label %vector.ph1072

vector.ph1072:                                    ; preds = %polly.loop_header
  %n.vec1074 = and i64 %88, -4
  br label %vector.body1068

vector.body1068:                                  ; preds = %vector.body1068, %vector.ph1072
  %index1075 = phi i64 [ 0, %vector.ph1072 ], [ %index.next1076, %vector.body1068 ]
  %90 = shl nuw nsw i64 %index1075, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1079 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1079, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1076 = add i64 %index1075, 4
  %95 = icmp eq i64 %index.next1076, %n.vec1074
  br i1 %95, label %middle.block1066, label %vector.body1068, !llvm.loop !74

middle.block1066:                                 ; preds = %vector.body1068
  %cmp.n1078 = icmp eq i64 %88, %n.vec1074
  br i1 %cmp.n1078, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1066
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1074, %middle.block1066 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1066
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1070 = add i64 %indvar1069, 1
  br i1 %exitcond853.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond852.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond852.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit223
  %indvars.iv842 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next843, %polly.loop_exit223 ]
  %indvars.iv838 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next839, %polly.loop_exit223 ]
  %indvars.iv836 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next837, %polly.loop_exit223 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit223 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit223 ]
  %97 = shl nuw nsw i64 %indvars.iv838, 1
  %98 = and i64 %97, 9223372036854775680
  %99 = sub nsw i64 %indvars.iv836, %98
  %100 = add i64 %indvars.iv842, %98
  %101 = mul nuw nsw i64 %polly.indvar202, 50
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %102 = mul nsw i64 %polly.indvar202, -50
  %103 = mul nuw nsw i64 %polly.indvar202, 25
  %pexp.p_div_q = lshr i64 %103, 6
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -50
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 50
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 25
  %indvars.iv.next843 = add nsw i64 %indvars.iv842, -50
  %exitcond851.not = icmp eq i64 %polly.indvar_next203, 24
  br i1 %exitcond851.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar208, 1200
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_header211
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond835.not = icmp eq i64 %polly.indvar_next209, 1000
  br i1 %exitcond835.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_header211 ]
  %104 = add nuw nsw i64 %polly.indvar214, %101
  %polly.access.mul.call2218 = mul nuw nsw i64 %104, 1000
  %polly.access.add.call2219 = add nuw nsw i64 %polly.access.mul.call2218, %polly.indvar208
  %polly.access.call2220 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2219
  %polly.access.call2220.load = load double, double* %polly.access.call2220, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar214, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2220.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_exit207
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit229 ], [ %100, %polly.loop_exit207 ]
  %indvars.iv840 = phi i64 [ %indvars.iv.next841, %polly.loop_exit229 ], [ %99, %polly.loop_exit207 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ %pexp.p_div_q, %polly.loop_exit207 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv840, i64 0)
  %105 = add i64 %smax, %indvars.iv844
  %106 = shl nsw i64 %polly.indvar224, 7
  %107 = sub nsw i64 %101, %106
  %108 = icmp sgt i64 %107, 0
  %109 = select i1 %108, i64 %107, i64 0
  %110 = mul nsw i64 %polly.indvar224, -128
  %111 = icmp slt i64 %110, -1072
  %112 = select i1 %111, i64 %110, i64 -1072
  %113 = add nsw i64 %112, 1199
  %polly.loop_guard.not = icmp sgt i64 %109, %113
  br i1 %polly.loop_guard.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235, %polly.loop_header221
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next841 = add i64 %indvars.iv840, -128
  %indvars.iv.next845 = add i64 %indvars.iv844, 128
  %exitcond850.not = icmp eq i64 %polly.indvar_next225, 10
  br i1 %exitcond850.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_header221, %polly.loop_exit235
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %114 = shl nuw nsw i64 %polly.indvar230, 3
  %scevgep247 = getelementptr i8, i8* %call1, i64 %114
  %polly.access.mul.Packed_MemRef_call2251 = mul nuw nsw i64 %polly.indvar230, 1200
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit242
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next231, 1000
  br i1 %exitcond849.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit242, %polly.loop_header227
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %polly.loop_exit242 ], [ %105, %polly.loop_header227 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit242 ], [ %109, %polly.loop_header227 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv846, i64 49)
  %115 = add nuw i64 %polly.indvar236, %106
  %116 = add i64 %115, %102
  %polly.loop_guard243933 = icmp sgt i64 %116, -1
  br i1 %polly.loop_guard243933, label %polly.loop_header240.preheader, label %polly.loop_exit242

polly.loop_header240.preheader:                   ; preds = %polly.loop_header233
  %polly.access.add.Packed_MemRef_call2252 = add nsw i64 %polly.access.mul.Packed_MemRef_call2251, %116
  %polly.access.Packed_MemRef_call2253 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252
  %_p_scalar_254 = load double, double* %polly.access.Packed_MemRef_call2253, align 8
  %117 = mul i64 %115, 8000
  %scevgep260 = getelementptr i8, i8* %scevgep247, i64 %117
  %scevgep260261 = bitcast i8* %scevgep260 to double*
  %_p_scalar_262 = load double, double* %scevgep260261, align 8, !alias.scope !71, !noalias !78
  %118 = mul i64 %115, 9600
  br label %polly.loop_header240

polly.loop_exit242:                               ; preds = %polly.loop_header240, %polly.loop_header233
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp slt i64 %polly.indvar236, %113
  %indvars.iv.next847 = add i64 %indvars.iv846, 1
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.loop_header240:                             ; preds = %polly.loop_header240.preheader, %polly.loop_header240
  %polly.indvar244 = phi i64 [ %polly.indvar_next245, %polly.loop_header240 ], [ 0, %polly.loop_header240.preheader ]
  %119 = add nuw nsw i64 %polly.indvar244, %101
  %120 = mul nuw nsw i64 %119, 8000
  %scevgep248 = getelementptr i8, i8* %scevgep247, i64 %120
  %scevgep248249 = bitcast i8* %scevgep248 to double*
  %_p_scalar_250 = load double, double* %scevgep248249, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_254, %_p_scalar_250
  %polly.access.add.Packed_MemRef_call2256 = add nuw nsw i64 %polly.indvar244, %polly.access.mul.Packed_MemRef_call2251
  %polly.access.Packed_MemRef_call2257 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256
  %_p_scalar_258 = load double, double* %polly.access.Packed_MemRef_call2257, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_262, %_p_scalar_258
  %121 = shl i64 %119, 3
  %122 = add i64 %121, %118
  %scevgep263 = getelementptr i8, i8* %call, i64 %122
  %scevgep263264 = bitcast i8* %scevgep263 to double*
  %_p_scalar_265 = load double, double* %scevgep263264, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_265
  store double %p_add42.i118, double* %scevgep263264, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next245 = add nuw nsw i64 %polly.indvar244, 1
  %exitcond848.not = icmp eq i64 %polly.indvar244, %smin
  br i1 %exitcond848.not, label %polly.loop_exit242, label %polly.loop_header240

polly.start268:                                   ; preds = %kernel_syr2k.exit
  %malloccall270 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header354

polly.exiting269:                                 ; preds = %polly.loop_exit395
  tail call void @free(i8* %malloccall270)
  br label %kernel_syr2k.exit90

polly.loop_header354:                             ; preds = %polly.loop_exit362, %polly.start268
  %indvar1043 = phi i64 [ %indvar.next1044, %polly.loop_exit362 ], [ 0, %polly.start268 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 1, %polly.start268 ]
  %123 = add i64 %indvar1043, 1
  %124 = mul nuw nsw i64 %polly.indvar357, 9600
  %scevgep366 = getelementptr i8, i8* %call, i64 %124
  %min.iters.check1045 = icmp ult i64 %123, 4
  br i1 %min.iters.check1045, label %polly.loop_header360.preheader, label %vector.ph1046

vector.ph1046:                                    ; preds = %polly.loop_header354
  %n.vec1048 = and i64 %123, -4
  br label %vector.body1042

vector.body1042:                                  ; preds = %vector.body1042, %vector.ph1046
  %index1049 = phi i64 [ 0, %vector.ph1046 ], [ %index.next1050, %vector.body1042 ]
  %125 = shl nuw nsw i64 %index1049, 3
  %126 = getelementptr i8, i8* %scevgep366, i64 %125
  %127 = bitcast i8* %126 to <4 x double>*
  %wide.load1053 = load <4 x double>, <4 x double>* %127, align 8, !alias.scope !79, !noalias !81
  %128 = fmul fast <4 x double> %wide.load1053, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %129 = bitcast i8* %126 to <4 x double>*
  store <4 x double> %128, <4 x double>* %129, align 8, !alias.scope !79, !noalias !81
  %index.next1050 = add i64 %index1049, 4
  %130 = icmp eq i64 %index.next1050, %n.vec1048
  br i1 %130, label %middle.block1040, label %vector.body1042, !llvm.loop !85

middle.block1040:                                 ; preds = %vector.body1042
  %cmp.n1052 = icmp eq i64 %123, %n.vec1048
  br i1 %cmp.n1052, label %polly.loop_exit362, label %polly.loop_header360.preheader

polly.loop_header360.preheader:                   ; preds = %polly.loop_header354, %middle.block1040
  %polly.indvar363.ph = phi i64 [ 0, %polly.loop_header354 ], [ %n.vec1048, %middle.block1040 ]
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_header360, %middle.block1040
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next358, 1200
  %indvar.next1044 = add i64 %indvar1043, 1
  br i1 %exitcond877.not, label %polly.loop_header370.preheader, label %polly.loop_header354

polly.loop_header370.preheader:                   ; preds = %polly.loop_exit362
  %Packed_MemRef_call2271 = bitcast i8* %malloccall270 to double*
  br label %polly.loop_header370

polly.loop_header360:                             ; preds = %polly.loop_header360.preheader, %polly.loop_header360
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_header360 ], [ %polly.indvar363.ph, %polly.loop_header360.preheader ]
  %131 = shl nuw nsw i64 %polly.indvar363, 3
  %scevgep367 = getelementptr i8, i8* %scevgep366, i64 %131
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_369, 1.200000e+00
  store double %p_mul.i57, double* %scevgep367368, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond876.not = icmp eq i64 %polly.indvar_next364, %polly.indvar357
  br i1 %exitcond876.not, label %polly.loop_exit362, label %polly.loop_header360, !llvm.loop !86

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit395
  %indvars.iv865 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %indvars.iv.next866, %polly.loop_exit395 ]
  %indvars.iv860 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %indvars.iv.next861, %polly.loop_exit395 ]
  %indvars.iv858 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %indvars.iv.next859, %polly.loop_exit395 ]
  %indvars.iv854 = phi i64 [ 1200, %polly.loop_header370.preheader ], [ %indvars.iv.next855, %polly.loop_exit395 ]
  %polly.indvar373 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %polly.indvar_next374, %polly.loop_exit395 ]
  %132 = shl nuw nsw i64 %indvars.iv860, 1
  %133 = and i64 %132, 9223372036854775680
  %134 = sub nsw i64 %indvars.iv858, %133
  %135 = add i64 %indvars.iv865, %133
  %136 = mul nuw nsw i64 %polly.indvar373, 50
  br label %polly.loop_header376

polly.loop_exit378:                               ; preds = %polly.loop_exit384
  %137 = mul nsw i64 %polly.indvar373, -50
  %138 = mul nuw nsw i64 %polly.indvar373, 25
  %pexp.p_div_q392 = lshr i64 %138, 6
  br label %polly.loop_header393

polly.loop_exit395:                               ; preds = %polly.loop_exit401
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %indvars.iv.next855 = add nsw i64 %indvars.iv854, -50
  %indvars.iv.next859 = add nuw nsw i64 %indvars.iv858, 50
  %indvars.iv.next861 = add nuw nsw i64 %indvars.iv860, 25
  %indvars.iv.next866 = add nsw i64 %indvars.iv865, -50
  %exitcond875.not = icmp eq i64 %polly.indvar_next374, 24
  br i1 %exitcond875.not, label %polly.exiting269, label %polly.loop_header370

polly.loop_header376:                             ; preds = %polly.loop_exit384, %polly.loop_header370
  %polly.indvar379 = phi i64 [ 0, %polly.loop_header370 ], [ %polly.indvar_next380, %polly.loop_exit384 ]
  %polly.access.mul.Packed_MemRef_call2271 = mul nuw nsw i64 %polly.indvar379, 1200
  br label %polly.loop_header382

polly.loop_exit384:                               ; preds = %polly.loop_header382
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next380, 1000
  br i1 %exitcond857.not, label %polly.loop_exit378, label %polly.loop_header376

polly.loop_header382:                             ; preds = %polly.loop_header382, %polly.loop_header376
  %polly.indvar385 = phi i64 [ 0, %polly.loop_header376 ], [ %polly.indvar_next386, %polly.loop_header382 ]
  %139 = add nuw nsw i64 %polly.indvar385, %136
  %polly.access.mul.call2389 = mul nuw nsw i64 %139, 1000
  %polly.access.add.call2390 = add nuw nsw i64 %polly.access.mul.call2389, %polly.indvar379
  %polly.access.call2391 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2390
  %polly.access.call2391.load = load double, double* %polly.access.call2391, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2271 = add nuw nsw i64 %polly.indvar385, %polly.access.mul.Packed_MemRef_call2271
  %polly.access.Packed_MemRef_call2271 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271
  store double %polly.access.call2391.load, double* %polly.access.Packed_MemRef_call2271, align 8
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond856.not = icmp eq i64 %polly.indvar_next386, %indvars.iv854
  br i1 %exitcond856.not, label %polly.loop_exit384, label %polly.loop_header382

polly.loop_header393:                             ; preds = %polly.loop_exit401, %polly.loop_exit378
  %indvars.iv867 = phi i64 [ %indvars.iv.next868, %polly.loop_exit401 ], [ %135, %polly.loop_exit378 ]
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %polly.loop_exit401 ], [ %134, %polly.loop_exit378 ]
  %polly.indvar396 = phi i64 [ %polly.indvar_next397, %polly.loop_exit401 ], [ %pexp.p_div_q392, %polly.loop_exit378 ]
  %smax864 = call i64 @llvm.smax.i64(i64 %indvars.iv862, i64 0)
  %140 = add i64 %smax864, %indvars.iv867
  %141 = shl nsw i64 %polly.indvar396, 7
  %142 = sub nsw i64 %136, %141
  %143 = icmp sgt i64 %142, 0
  %144 = select i1 %143, i64 %142, i64 0
  %145 = mul nsw i64 %polly.indvar396, -128
  %146 = icmp slt i64 %145, -1072
  %147 = select i1 %146, i64 %145, i64 -1072
  %148 = add nsw i64 %147, 1199
  %polly.loop_guard409.not = icmp sgt i64 %144, %148
  br i1 %polly.loop_guard409.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit408, %polly.loop_header393
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %indvars.iv.next863 = add i64 %indvars.iv862, -128
  %indvars.iv.next868 = add i64 %indvars.iv867, 128
  %exitcond874.not = icmp eq i64 %polly.indvar_next397, 10
  br i1 %exitcond874.not, label %polly.loop_exit395, label %polly.loop_header393

polly.loop_header399:                             ; preds = %polly.loop_header393, %polly.loop_exit408
  %polly.indvar402 = phi i64 [ %polly.indvar_next403, %polly.loop_exit408 ], [ 0, %polly.loop_header393 ]
  %149 = shl nuw nsw i64 %polly.indvar402, 3
  %scevgep421 = getelementptr i8, i8* %call1, i64 %149
  %polly.access.mul.Packed_MemRef_call2271425 = mul nuw nsw i64 %polly.indvar402, 1200
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_exit416
  %polly.indvar_next403 = add nuw nsw i64 %polly.indvar402, 1
  %exitcond873.not = icmp eq i64 %polly.indvar_next403, 1000
  br i1 %exitcond873.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header406:                             ; preds = %polly.loop_exit416, %polly.loop_header399
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit416 ], [ %140, %polly.loop_header399 ]
  %polly.indvar410 = phi i64 [ %polly.indvar_next411, %polly.loop_exit416 ], [ %144, %polly.loop_header399 ]
  %smin871 = call i64 @llvm.smin.i64(i64 %indvars.iv869, i64 49)
  %150 = add nuw i64 %polly.indvar410, %141
  %151 = add i64 %150, %137
  %polly.loop_guard417934 = icmp sgt i64 %151, -1
  br i1 %polly.loop_guard417934, label %polly.loop_header414.preheader, label %polly.loop_exit416

polly.loop_header414.preheader:                   ; preds = %polly.loop_header406
  %polly.access.add.Packed_MemRef_call2271426 = add nsw i64 %polly.access.mul.Packed_MemRef_call2271425, %151
  %polly.access.Packed_MemRef_call2271427 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271426
  %_p_scalar_428 = load double, double* %polly.access.Packed_MemRef_call2271427, align 8
  %152 = mul i64 %150, 8000
  %scevgep434 = getelementptr i8, i8* %scevgep421, i64 %152
  %scevgep434435 = bitcast i8* %scevgep434 to double*
  %_p_scalar_436 = load double, double* %scevgep434435, align 8, !alias.scope !82, !noalias !88
  %153 = mul i64 %150, 9600
  br label %polly.loop_header414

polly.loop_exit416:                               ; preds = %polly.loop_header414, %polly.loop_header406
  %polly.indvar_next411 = add nuw nsw i64 %polly.indvar410, 1
  %polly.loop_cond412.not.not = icmp slt i64 %polly.indvar410, %148
  %indvars.iv.next870 = add i64 %indvars.iv869, 1
  br i1 %polly.loop_cond412.not.not, label %polly.loop_header406, label %polly.loop_exit408

polly.loop_header414:                             ; preds = %polly.loop_header414.preheader, %polly.loop_header414
  %polly.indvar418 = phi i64 [ %polly.indvar_next419, %polly.loop_header414 ], [ 0, %polly.loop_header414.preheader ]
  %154 = add nuw nsw i64 %polly.indvar418, %136
  %155 = mul nuw nsw i64 %154, 8000
  %scevgep422 = getelementptr i8, i8* %scevgep421, i64 %155
  %scevgep422423 = bitcast i8* %scevgep422 to double*
  %_p_scalar_424 = load double, double* %scevgep422423, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_428, %_p_scalar_424
  %polly.access.add.Packed_MemRef_call2271430 = add nuw nsw i64 %polly.indvar418, %polly.access.mul.Packed_MemRef_call2271425
  %polly.access.Packed_MemRef_call2271431 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271430
  %_p_scalar_432 = load double, double* %polly.access.Packed_MemRef_call2271431, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_436, %_p_scalar_432
  %156 = shl i64 %154, 3
  %157 = add i64 %156, %153
  %scevgep437 = getelementptr i8, i8* %call, i64 %157
  %scevgep437438 = bitcast i8* %scevgep437 to double*
  %_p_scalar_439 = load double, double* %scevgep437438, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_439
  store double %p_add42.i79, double* %scevgep437438, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next419 = add nuw nsw i64 %polly.indvar418, 1
  %exitcond872.not = icmp eq i64 %polly.indvar418, %smin871
  br i1 %exitcond872.not, label %polly.loop_exit416, label %polly.loop_header414

polly.start442:                                   ; preds = %init_array.exit
  %malloccall444 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header528

polly.exiting443:                                 ; preds = %polly.loop_exit569
  tail call void @free(i8* %malloccall444)
  br label %kernel_syr2k.exit

polly.loop_header528:                             ; preds = %polly.loop_exit536, %polly.start442
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit536 ], [ 0, %polly.start442 ]
  %polly.indvar531 = phi i64 [ %polly.indvar_next532, %polly.loop_exit536 ], [ 1, %polly.start442 ]
  %158 = add i64 %indvar, 1
  %159 = mul nuw nsw i64 %polly.indvar531, 9600
  %scevgep540 = getelementptr i8, i8* %call, i64 %159
  %min.iters.check1019 = icmp ult i64 %158, 4
  br i1 %min.iters.check1019, label %polly.loop_header534.preheader, label %vector.ph1020

vector.ph1020:                                    ; preds = %polly.loop_header528
  %n.vec1022 = and i64 %158, -4
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %vector.ph1020
  %index1023 = phi i64 [ 0, %vector.ph1020 ], [ %index.next1024, %vector.body1018 ]
  %160 = shl nuw nsw i64 %index1023, 3
  %161 = getelementptr i8, i8* %scevgep540, i64 %160
  %162 = bitcast i8* %161 to <4 x double>*
  %wide.load1027 = load <4 x double>, <4 x double>* %162, align 8, !alias.scope !89, !noalias !91
  %163 = fmul fast <4 x double> %wide.load1027, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %164 = bitcast i8* %161 to <4 x double>*
  store <4 x double> %163, <4 x double>* %164, align 8, !alias.scope !89, !noalias !91
  %index.next1024 = add i64 %index1023, 4
  %165 = icmp eq i64 %index.next1024, %n.vec1022
  br i1 %165, label %middle.block1016, label %vector.body1018, !llvm.loop !95

middle.block1016:                                 ; preds = %vector.body1018
  %cmp.n1026 = icmp eq i64 %158, %n.vec1022
  br i1 %cmp.n1026, label %polly.loop_exit536, label %polly.loop_header534.preheader

polly.loop_header534.preheader:                   ; preds = %polly.loop_header528, %middle.block1016
  %polly.indvar537.ph = phi i64 [ 0, %polly.loop_header528 ], [ %n.vec1022, %middle.block1016 ]
  br label %polly.loop_header534

polly.loop_exit536:                               ; preds = %polly.loop_header534, %middle.block1016
  %polly.indvar_next532 = add nuw nsw i64 %polly.indvar531, 1
  %exitcond901.not = icmp eq i64 %polly.indvar_next532, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond901.not, label %polly.loop_header544.preheader, label %polly.loop_header528

polly.loop_header544.preheader:                   ; preds = %polly.loop_exit536
  %Packed_MemRef_call2445 = bitcast i8* %malloccall444 to double*
  br label %polly.loop_header544

polly.loop_header534:                             ; preds = %polly.loop_header534.preheader, %polly.loop_header534
  %polly.indvar537 = phi i64 [ %polly.indvar_next538, %polly.loop_header534 ], [ %polly.indvar537.ph, %polly.loop_header534.preheader ]
  %166 = shl nuw nsw i64 %polly.indvar537, 3
  %scevgep541 = getelementptr i8, i8* %scevgep540, i64 %166
  %scevgep541542 = bitcast i8* %scevgep541 to double*
  %_p_scalar_543 = load double, double* %scevgep541542, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_543, 1.200000e+00
  store double %p_mul.i, double* %scevgep541542, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next538 = add nuw nsw i64 %polly.indvar537, 1
  %exitcond900.not = icmp eq i64 %polly.indvar_next538, %polly.indvar531
  br i1 %exitcond900.not, label %polly.loop_exit536, label %polly.loop_header534, !llvm.loop !96

polly.loop_header544:                             ; preds = %polly.loop_header544.preheader, %polly.loop_exit569
  %indvars.iv889 = phi i64 [ 0, %polly.loop_header544.preheader ], [ %indvars.iv.next890, %polly.loop_exit569 ]
  %indvars.iv884 = phi i64 [ 0, %polly.loop_header544.preheader ], [ %indvars.iv.next885, %polly.loop_exit569 ]
  %indvars.iv882 = phi i64 [ 0, %polly.loop_header544.preheader ], [ %indvars.iv.next883, %polly.loop_exit569 ]
  %indvars.iv878 = phi i64 [ 1200, %polly.loop_header544.preheader ], [ %indvars.iv.next879, %polly.loop_exit569 ]
  %polly.indvar547 = phi i64 [ 0, %polly.loop_header544.preheader ], [ %polly.indvar_next548, %polly.loop_exit569 ]
  %167 = shl nuw nsw i64 %indvars.iv884, 1
  %168 = and i64 %167, 9223372036854775680
  %169 = sub nsw i64 %indvars.iv882, %168
  %170 = add i64 %indvars.iv889, %168
  %171 = mul nuw nsw i64 %polly.indvar547, 50
  br label %polly.loop_header550

polly.loop_exit552:                               ; preds = %polly.loop_exit558
  %172 = mul nsw i64 %polly.indvar547, -50
  %173 = mul nuw nsw i64 %polly.indvar547, 25
  %pexp.p_div_q566 = lshr i64 %173, 6
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_exit575
  %polly.indvar_next548 = add nuw nsw i64 %polly.indvar547, 1
  %indvars.iv.next879 = add nsw i64 %indvars.iv878, -50
  %indvars.iv.next883 = add nuw nsw i64 %indvars.iv882, 50
  %indvars.iv.next885 = add nuw nsw i64 %indvars.iv884, 25
  %indvars.iv.next890 = add nsw i64 %indvars.iv889, -50
  %exitcond899.not = icmp eq i64 %polly.indvar_next548, 24
  br i1 %exitcond899.not, label %polly.exiting443, label %polly.loop_header544

polly.loop_header550:                             ; preds = %polly.loop_exit558, %polly.loop_header544
  %polly.indvar553 = phi i64 [ 0, %polly.loop_header544 ], [ %polly.indvar_next554, %polly.loop_exit558 ]
  %polly.access.mul.Packed_MemRef_call2445 = mul nuw nsw i64 %polly.indvar553, 1200
  br label %polly.loop_header556

polly.loop_exit558:                               ; preds = %polly.loop_header556
  %polly.indvar_next554 = add nuw nsw i64 %polly.indvar553, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next554, 1000
  br i1 %exitcond881.not, label %polly.loop_exit552, label %polly.loop_header550

polly.loop_header556:                             ; preds = %polly.loop_header556, %polly.loop_header550
  %polly.indvar559 = phi i64 [ 0, %polly.loop_header550 ], [ %polly.indvar_next560, %polly.loop_header556 ]
  %174 = add nuw nsw i64 %polly.indvar559, %171
  %polly.access.mul.call2563 = mul nuw nsw i64 %174, 1000
  %polly.access.add.call2564 = add nuw nsw i64 %polly.access.mul.call2563, %polly.indvar553
  %polly.access.call2565 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2564
  %polly.access.call2565.load = load double, double* %polly.access.call2565, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2445 = add nuw nsw i64 %polly.indvar559, %polly.access.mul.Packed_MemRef_call2445
  %polly.access.Packed_MemRef_call2445 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445
  store double %polly.access.call2565.load, double* %polly.access.Packed_MemRef_call2445, align 8
  %polly.indvar_next560 = add nuw nsw i64 %polly.indvar559, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next560, %indvars.iv878
  br i1 %exitcond880.not, label %polly.loop_exit558, label %polly.loop_header556

polly.loop_header567:                             ; preds = %polly.loop_exit575, %polly.loop_exit552
  %indvars.iv891 = phi i64 [ %indvars.iv.next892, %polly.loop_exit575 ], [ %170, %polly.loop_exit552 ]
  %indvars.iv886 = phi i64 [ %indvars.iv.next887, %polly.loop_exit575 ], [ %169, %polly.loop_exit552 ]
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_exit575 ], [ %pexp.p_div_q566, %polly.loop_exit552 ]
  %smax888 = call i64 @llvm.smax.i64(i64 %indvars.iv886, i64 0)
  %175 = add i64 %smax888, %indvars.iv891
  %176 = shl nsw i64 %polly.indvar570, 7
  %177 = sub nsw i64 %171, %176
  %178 = icmp sgt i64 %177, 0
  %179 = select i1 %178, i64 %177, i64 0
  %180 = mul nsw i64 %polly.indvar570, -128
  %181 = icmp slt i64 %180, -1072
  %182 = select i1 %181, i64 %180, i64 -1072
  %183 = add nsw i64 %182, 1199
  %polly.loop_guard583.not = icmp sgt i64 %179, %183
  br i1 %polly.loop_guard583.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_exit582, %polly.loop_header567
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %indvars.iv.next887 = add i64 %indvars.iv886, -128
  %indvars.iv.next892 = add i64 %indvars.iv891, 128
  %exitcond898.not = icmp eq i64 %polly.indvar_next571, 10
  br i1 %exitcond898.not, label %polly.loop_exit569, label %polly.loop_header567

polly.loop_header573:                             ; preds = %polly.loop_header567, %polly.loop_exit582
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit582 ], [ 0, %polly.loop_header567 ]
  %184 = shl nuw nsw i64 %polly.indvar576, 3
  %scevgep595 = getelementptr i8, i8* %call1, i64 %184
  %polly.access.mul.Packed_MemRef_call2445599 = mul nuw nsw i64 %polly.indvar576, 1200
  br label %polly.loop_header580

polly.loop_exit582:                               ; preds = %polly.loop_exit590
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %exitcond897.not = icmp eq i64 %polly.indvar_next577, 1000
  br i1 %exitcond897.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header580:                             ; preds = %polly.loop_exit590, %polly.loop_header573
  %indvars.iv893 = phi i64 [ %indvars.iv.next894, %polly.loop_exit590 ], [ %175, %polly.loop_header573 ]
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit590 ], [ %179, %polly.loop_header573 ]
  %smin895 = call i64 @llvm.smin.i64(i64 %indvars.iv893, i64 49)
  %185 = add nuw i64 %polly.indvar584, %176
  %186 = add i64 %185, %172
  %polly.loop_guard591935 = icmp sgt i64 %186, -1
  br i1 %polly.loop_guard591935, label %polly.loop_header588.preheader, label %polly.loop_exit590

polly.loop_header588.preheader:                   ; preds = %polly.loop_header580
  %polly.access.add.Packed_MemRef_call2445600 = add nsw i64 %polly.access.mul.Packed_MemRef_call2445599, %186
  %polly.access.Packed_MemRef_call2445601 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445600
  %_p_scalar_602 = load double, double* %polly.access.Packed_MemRef_call2445601, align 8
  %187 = mul i64 %185, 8000
  %scevgep608 = getelementptr i8, i8* %scevgep595, i64 %187
  %scevgep608609 = bitcast i8* %scevgep608 to double*
  %_p_scalar_610 = load double, double* %scevgep608609, align 8, !alias.scope !92, !noalias !98
  %188 = mul i64 %185, 9600
  br label %polly.loop_header588

polly.loop_exit590:                               ; preds = %polly.loop_header588, %polly.loop_header580
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %polly.loop_cond586.not.not = icmp slt i64 %polly.indvar584, %183
  %indvars.iv.next894 = add i64 %indvars.iv893, 1
  br i1 %polly.loop_cond586.not.not, label %polly.loop_header580, label %polly.loop_exit582

polly.loop_header588:                             ; preds = %polly.loop_header588.preheader, %polly.loop_header588
  %polly.indvar592 = phi i64 [ %polly.indvar_next593, %polly.loop_header588 ], [ 0, %polly.loop_header588.preheader ]
  %189 = add nuw nsw i64 %polly.indvar592, %171
  %190 = mul nuw nsw i64 %189, 8000
  %scevgep596 = getelementptr i8, i8* %scevgep595, i64 %190
  %scevgep596597 = bitcast i8* %scevgep596 to double*
  %_p_scalar_598 = load double, double* %scevgep596597, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_602, %_p_scalar_598
  %polly.access.add.Packed_MemRef_call2445604 = add nuw nsw i64 %polly.indvar592, %polly.access.mul.Packed_MemRef_call2445599
  %polly.access.Packed_MemRef_call2445605 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445604
  %_p_scalar_606 = load double, double* %polly.access.Packed_MemRef_call2445605, align 8
  %p_mul37.i = fmul fast double %_p_scalar_610, %_p_scalar_606
  %191 = shl i64 %189, 3
  %192 = add i64 %191, %188
  %scevgep611 = getelementptr i8, i8* %call, i64 %192
  %scevgep611612 = bitcast i8* %scevgep611 to double*
  %_p_scalar_613 = load double, double* %scevgep611612, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_613
  store double %p_add42.i, double* %scevgep611612, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next593 = add nuw nsw i64 %polly.indvar592, 1
  %exitcond896.not = icmp eq i64 %polly.indvar592, %smin895
  br i1 %exitcond896.not, label %polly.loop_exit590, label %polly.loop_header588

polly.loop_header740:                             ; preds = %entry, %polly.loop_exit748
  %indvars.iv926 = phi i64 [ %indvars.iv.next927, %polly.loop_exit748 ], [ 0, %entry ]
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit748 ], [ 0, %entry ]
  %smin928 = call i64 @llvm.smin.i64(i64 %indvars.iv926, i64 -1168)
  %193 = shl nsw i64 %polly.indvar743, 5
  %194 = add nsw i64 %smin928, 1199
  br label %polly.loop_header746

polly.loop_exit748:                               ; preds = %polly.loop_exit754
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %indvars.iv.next927 = add nsw i64 %indvars.iv926, -32
  %exitcond931.not = icmp eq i64 %polly.indvar_next744, 38
  br i1 %exitcond931.not, label %polly.loop_header767, label %polly.loop_header740

polly.loop_header746:                             ; preds = %polly.loop_exit754, %polly.loop_header740
  %indvars.iv922 = phi i64 [ %indvars.iv.next923, %polly.loop_exit754 ], [ 0, %polly.loop_header740 ]
  %polly.indvar749 = phi i64 [ %polly.indvar_next750, %polly.loop_exit754 ], [ 0, %polly.loop_header740 ]
  %195 = mul nsw i64 %polly.indvar749, -32
  %smin957 = call i64 @llvm.smin.i64(i64 %195, i64 -1168)
  %196 = add nsw i64 %smin957, 1200
  %smin924 = call i64 @llvm.smin.i64(i64 %indvars.iv922, i64 -1168)
  %197 = shl nsw i64 %polly.indvar749, 5
  %198 = add nsw i64 %smin924, 1199
  br label %polly.loop_header752

polly.loop_exit754:                               ; preds = %polly.loop_exit760
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %indvars.iv.next923 = add nsw i64 %indvars.iv922, -32
  %exitcond930.not = icmp eq i64 %polly.indvar_next750, 38
  br i1 %exitcond930.not, label %polly.loop_exit748, label %polly.loop_header746

polly.loop_header752:                             ; preds = %polly.loop_exit760, %polly.loop_header746
  %polly.indvar755 = phi i64 [ 0, %polly.loop_header746 ], [ %polly.indvar_next756, %polly.loop_exit760 ]
  %199 = add nuw nsw i64 %polly.indvar755, %193
  %200 = trunc i64 %199 to i32
  %201 = mul nuw nsw i64 %199, 9600
  %min.iters.check = icmp eq i64 %196, 0
  br i1 %min.iters.check, label %polly.loop_header758, label %vector.ph958

vector.ph958:                                     ; preds = %polly.loop_header752
  %broadcast.splatinsert965 = insertelement <4 x i64> poison, i64 %197, i32 0
  %broadcast.splat966 = shufflevector <4 x i64> %broadcast.splatinsert965, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert967 = insertelement <4 x i32> poison, i32 %200, i32 0
  %broadcast.splat968 = shufflevector <4 x i32> %broadcast.splatinsert967, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body956

vector.body956:                                   ; preds = %vector.body956, %vector.ph958
  %index959 = phi i64 [ 0, %vector.ph958 ], [ %index.next960, %vector.body956 ]
  %vec.ind963 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph958 ], [ %vec.ind.next964, %vector.body956 ]
  %202 = add nuw nsw <4 x i64> %vec.ind963, %broadcast.splat966
  %203 = trunc <4 x i64> %202 to <4 x i32>
  %204 = mul <4 x i32> %broadcast.splat968, %203
  %205 = add <4 x i32> %204, <i32 3, i32 3, i32 3, i32 3>
  %206 = urem <4 x i32> %205, <i32 1200, i32 1200, i32 1200, i32 1200>
  %207 = sitofp <4 x i32> %206 to <4 x double>
  %208 = fmul fast <4 x double> %207, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %209 = extractelement <4 x i64> %202, i32 0
  %210 = shl i64 %209, 3
  %211 = add nuw nsw i64 %210, %201
  %212 = getelementptr i8, i8* %call, i64 %211
  %213 = bitcast i8* %212 to <4 x double>*
  store <4 x double> %208, <4 x double>* %213, align 8, !alias.scope !99, !noalias !101
  %index.next960 = add i64 %index959, 4
  %vec.ind.next964 = add <4 x i64> %vec.ind963, <i64 4, i64 4, i64 4, i64 4>
  %214 = icmp eq i64 %index.next960, %196
  br i1 %214, label %polly.loop_exit760, label %vector.body956, !llvm.loop !104

polly.loop_exit760:                               ; preds = %vector.body956, %polly.loop_header758
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond929.not = icmp eq i64 %polly.indvar755, %194
  br i1 %exitcond929.not, label %polly.loop_exit754, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_header752, %polly.loop_header758
  %polly.indvar761 = phi i64 [ %polly.indvar_next762, %polly.loop_header758 ], [ 0, %polly.loop_header752 ]
  %215 = add nuw nsw i64 %polly.indvar761, %197
  %216 = trunc i64 %215 to i32
  %217 = mul i32 %216, %200
  %218 = add i32 %217, 3
  %219 = urem i32 %218, 1200
  %p_conv31.i = sitofp i32 %219 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %220 = shl i64 %215, 3
  %221 = add nuw nsw i64 %220, %201
  %scevgep764 = getelementptr i8, i8* %call, i64 %221
  %scevgep764765 = bitcast i8* %scevgep764 to double*
  store double %p_div33.i, double* %scevgep764765, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %exitcond925.not = icmp eq i64 %polly.indvar761, %198
  br i1 %exitcond925.not, label %polly.loop_exit760, label %polly.loop_header758, !llvm.loop !105

polly.loop_header767:                             ; preds = %polly.loop_exit748, %polly.loop_exit775
  %indvars.iv916 = phi i64 [ %indvars.iv.next917, %polly.loop_exit775 ], [ 0, %polly.loop_exit748 ]
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %polly.loop_exit748 ]
  %smin918 = call i64 @llvm.smin.i64(i64 %indvars.iv916, i64 -1168)
  %222 = shl nsw i64 %polly.indvar770, 5
  %223 = add nsw i64 %smin918, 1199
  br label %polly.loop_header773

polly.loop_exit775:                               ; preds = %polly.loop_exit781
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %indvars.iv.next917 = add nsw i64 %indvars.iv916, -32
  %exitcond921.not = icmp eq i64 %polly.indvar_next771, 38
  br i1 %exitcond921.not, label %polly.loop_header793, label %polly.loop_header767

polly.loop_header773:                             ; preds = %polly.loop_exit781, %polly.loop_header767
  %indvars.iv912 = phi i64 [ %indvars.iv.next913, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %224 = mul nsw i64 %polly.indvar776, -32
  %smin972 = call i64 @llvm.smin.i64(i64 %224, i64 -968)
  %225 = add nsw i64 %smin972, 1000
  %smin914 = call i64 @llvm.smin.i64(i64 %indvars.iv912, i64 -968)
  %226 = shl nsw i64 %polly.indvar776, 5
  %227 = add nsw i64 %smin914, 999
  br label %polly.loop_header779

polly.loop_exit781:                               ; preds = %polly.loop_exit787
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %indvars.iv.next913 = add nsw i64 %indvars.iv912, -32
  %exitcond920.not = icmp eq i64 %polly.indvar_next777, 32
  br i1 %exitcond920.not, label %polly.loop_exit775, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_exit787, %polly.loop_header773
  %polly.indvar782 = phi i64 [ 0, %polly.loop_header773 ], [ %polly.indvar_next783, %polly.loop_exit787 ]
  %228 = add nuw nsw i64 %polly.indvar782, %222
  %229 = trunc i64 %228 to i32
  %230 = mul nuw nsw i64 %228, 8000
  %min.iters.check973 = icmp eq i64 %225, 0
  br i1 %min.iters.check973, label %polly.loop_header785, label %vector.ph974

vector.ph974:                                     ; preds = %polly.loop_header779
  %broadcast.splatinsert983 = insertelement <4 x i64> poison, i64 %226, i32 0
  %broadcast.splat984 = shufflevector <4 x i64> %broadcast.splatinsert983, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert985 = insertelement <4 x i32> poison, i32 %229, i32 0
  %broadcast.splat986 = shufflevector <4 x i32> %broadcast.splatinsert985, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body971

vector.body971:                                   ; preds = %vector.body971, %vector.ph974
  %index977 = phi i64 [ 0, %vector.ph974 ], [ %index.next978, %vector.body971 ]
  %vec.ind981 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph974 ], [ %vec.ind.next982, %vector.body971 ]
  %231 = add nuw nsw <4 x i64> %vec.ind981, %broadcast.splat984
  %232 = trunc <4 x i64> %231 to <4 x i32>
  %233 = mul <4 x i32> %broadcast.splat986, %232
  %234 = add <4 x i32> %233, <i32 2, i32 2, i32 2, i32 2>
  %235 = urem <4 x i32> %234, <i32 1000, i32 1000, i32 1000, i32 1000>
  %236 = sitofp <4 x i32> %235 to <4 x double>
  %237 = fmul fast <4 x double> %236, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %238 = extractelement <4 x i64> %231, i32 0
  %239 = shl i64 %238, 3
  %240 = add nuw nsw i64 %239, %230
  %241 = getelementptr i8, i8* %call2, i64 %240
  %242 = bitcast i8* %241 to <4 x double>*
  store <4 x double> %237, <4 x double>* %242, align 8, !alias.scope !103, !noalias !106
  %index.next978 = add i64 %index977, 4
  %vec.ind.next982 = add <4 x i64> %vec.ind981, <i64 4, i64 4, i64 4, i64 4>
  %243 = icmp eq i64 %index.next978, %225
  br i1 %243, label %polly.loop_exit787, label %vector.body971, !llvm.loop !107

polly.loop_exit787:                               ; preds = %vector.body971, %polly.loop_header785
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %exitcond919.not = icmp eq i64 %polly.indvar782, %223
  br i1 %exitcond919.not, label %polly.loop_exit781, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_header779, %polly.loop_header785
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_header785 ], [ 0, %polly.loop_header779 ]
  %244 = add nuw nsw i64 %polly.indvar788, %226
  %245 = trunc i64 %244 to i32
  %246 = mul i32 %245, %229
  %247 = add i32 %246, 2
  %248 = urem i32 %247, 1000
  %p_conv10.i = sitofp i32 %248 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %249 = shl i64 %244, 3
  %250 = add nuw nsw i64 %249, %230
  %scevgep791 = getelementptr i8, i8* %call2, i64 %250
  %scevgep791792 = bitcast i8* %scevgep791 to double*
  store double %p_div12.i, double* %scevgep791792, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond915.not = icmp eq i64 %polly.indvar788, %227
  br i1 %exitcond915.not, label %polly.loop_exit787, label %polly.loop_header785, !llvm.loop !108

polly.loop_header793:                             ; preds = %polly.loop_exit775, %polly.loop_exit801
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %polly.loop_exit801 ], [ 0, %polly.loop_exit775 ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_exit775 ]
  %smin908 = call i64 @llvm.smin.i64(i64 %indvars.iv906, i64 -1168)
  %251 = shl nsw i64 %polly.indvar796, 5
  %252 = add nsw i64 %smin908, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next907 = add nsw i64 %indvars.iv906, -32
  %exitcond911.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond911.not, label %init_array.exit, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %indvars.iv902 = phi i64 [ %indvars.iv.next903, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %253 = mul nsw i64 %polly.indvar802, -32
  %smin990 = call i64 @llvm.smin.i64(i64 %253, i64 -968)
  %254 = add nsw i64 %smin990, 1000
  %smin904 = call i64 @llvm.smin.i64(i64 %indvars.iv902, i64 -968)
  %255 = shl nsw i64 %polly.indvar802, 5
  %256 = add nsw i64 %smin904, 999
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next903 = add nsw i64 %indvars.iv902, -32
  %exitcond910.not = icmp eq i64 %polly.indvar_next803, 32
  br i1 %exitcond910.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %polly.indvar808 = phi i64 [ 0, %polly.loop_header799 ], [ %polly.indvar_next809, %polly.loop_exit813 ]
  %257 = add nuw nsw i64 %polly.indvar808, %251
  %258 = trunc i64 %257 to i32
  %259 = mul nuw nsw i64 %257, 8000
  %min.iters.check991 = icmp eq i64 %254, 0
  br i1 %min.iters.check991, label %polly.loop_header811, label %vector.ph992

vector.ph992:                                     ; preds = %polly.loop_header805
  %broadcast.splatinsert1001 = insertelement <4 x i64> poison, i64 %255, i32 0
  %broadcast.splat1002 = shufflevector <4 x i64> %broadcast.splatinsert1001, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1003 = insertelement <4 x i32> poison, i32 %258, i32 0
  %broadcast.splat1004 = shufflevector <4 x i32> %broadcast.splatinsert1003, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body989

vector.body989:                                   ; preds = %vector.body989, %vector.ph992
  %index995 = phi i64 [ 0, %vector.ph992 ], [ %index.next996, %vector.body989 ]
  %vec.ind999 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph992 ], [ %vec.ind.next1000, %vector.body989 ]
  %260 = add nuw nsw <4 x i64> %vec.ind999, %broadcast.splat1002
  %261 = trunc <4 x i64> %260 to <4 x i32>
  %262 = mul <4 x i32> %broadcast.splat1004, %261
  %263 = add <4 x i32> %262, <i32 1, i32 1, i32 1, i32 1>
  %264 = urem <4 x i32> %263, <i32 1200, i32 1200, i32 1200, i32 1200>
  %265 = sitofp <4 x i32> %264 to <4 x double>
  %266 = fmul fast <4 x double> %265, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %267 = extractelement <4 x i64> %260, i32 0
  %268 = shl i64 %267, 3
  %269 = add nuw nsw i64 %268, %259
  %270 = getelementptr i8, i8* %call1, i64 %269
  %271 = bitcast i8* %270 to <4 x double>*
  store <4 x double> %266, <4 x double>* %271, align 8, !alias.scope !102, !noalias !109
  %index.next996 = add i64 %index995, 4
  %vec.ind.next1000 = add <4 x i64> %vec.ind999, <i64 4, i64 4, i64 4, i64 4>
  %272 = icmp eq i64 %index.next996, %254
  br i1 %272, label %polly.loop_exit813, label %vector.body989, !llvm.loop !110

polly.loop_exit813:                               ; preds = %vector.body989, %polly.loop_header811
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond909.not = icmp eq i64 %polly.indvar808, %252
  br i1 %exitcond909.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_header805, %polly.loop_header811
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_header811 ], [ 0, %polly.loop_header805 ]
  %273 = add nuw nsw i64 %polly.indvar814, %255
  %274 = trunc i64 %273 to i32
  %275 = mul i32 %274, %258
  %276 = add i32 %275, 1
  %277 = urem i32 %276, 1200
  %p_conv.i = sitofp i32 %277 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %278 = shl i64 %273, 3
  %279 = add nuw nsw i64 %278, %259
  %scevgep818 = getelementptr i8, i8* %call1, i64 %279
  %scevgep818819 = bitcast i8* %scevgep818 to double*
  store double %p_div.i, double* %scevgep818819, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond905.not = icmp eq i64 %polly.indvar814, %256
  br i1 %exitcond905.not, label %polly.loop_exit813, label %polly.loop_header811, !llvm.loop !111
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
!45 = !{!"llvm.loop.tile.size", i32 128}
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
