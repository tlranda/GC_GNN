; ModuleID = 'syr2k_exhaustive/mmp_all_SM_10036.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_10036.c"
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
  %call720 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1581 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1581, %call2
  %polly.access.call2601 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2601, %call1
  %2 = or i1 %0, %1
  %polly.access.call621 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call621, %call2
  %4 = icmp ule i8* %polly.access.call2601, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call621, %call1
  %8 = icmp ule i8* %polly.access.call1581, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header694, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep879 = getelementptr i8, i8* %call2, i64 %12
  %scevgep878 = getelementptr i8, i8* %call2, i64 %11
  %scevgep877 = getelementptr i8, i8* %call1, i64 %12
  %scevgep876 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep876, %scevgep879
  %bound1 = icmp ult i8* %scevgep878, %scevgep877
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
  br i1 %exitcond18.not.i, label %vector.ph883, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph883:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert890 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat891 = shufflevector <4 x i64> %broadcast.splatinsert890, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body882

vector.body882:                                   ; preds = %vector.body882, %vector.ph883
  %index884 = phi i64 [ 0, %vector.ph883 ], [ %index.next885, %vector.body882 ]
  %vec.ind888 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph883 ], [ %vec.ind.next889, %vector.body882 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind888, %broadcast.splat891
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv7.i, i64 %index884
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next885 = add i64 %index884, 4
  %vec.ind.next889 = add <4 x i64> %vec.ind888, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next885, 1200
  br i1 %40, label %for.inc41.i, label %vector.body882, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body882
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph883, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit755
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header496, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check946 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check946, label %for.body3.i46.preheader1023, label %vector.ph947

vector.ph947:                                     ; preds = %for.body3.i46.preheader
  %n.vec949 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body945

vector.body945:                                   ; preds = %vector.body945, %vector.ph947
  %index950 = phi i64 [ 0, %vector.ph947 ], [ %index.next951, %vector.body945 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %index950
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next951 = add i64 %index950, 4
  %46 = icmp eq i64 %index.next951, %n.vec949
  br i1 %46, label %middle.block943, label %vector.body945, !llvm.loop !18

middle.block943:                                  ; preds = %vector.body945
  %cmp.n953 = icmp eq i64 %indvars.iv21.i, %n.vec949
  br i1 %cmp.n953, label %for.inc6.i, label %for.body3.i46.preheader1023

for.body3.i46.preheader1023:                      ; preds = %for.body3.i46.preheader, %middle.block943
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec949, %middle.block943 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1023, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1023 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block943, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !21

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !31

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !40

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit522
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header338, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check969 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check969, label %for.body3.i60.preheader1021, label %vector.ph970

vector.ph970:                                     ; preds = %for.body3.i60.preheader
  %n.vec972 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body968

vector.body968:                                   ; preds = %vector.body968, %vector.ph970
  %index973 = phi i64 [ 0, %vector.ph970 ], [ %index.next974, %vector.body968 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %index973
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load977 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load977, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next974 = add i64 %index973, 4
  %57 = icmp eq i64 %index.next974, %n.vec972
  br i1 %57, label %middle.block966, label %vector.body968, !llvm.loop !51

middle.block966:                                  ; preds = %vector.body968
  %cmp.n976 = icmp eq i64 %indvars.iv21.i52, %n.vec972
  br i1 %cmp.n976, label %for.inc6.i63, label %for.body3.i60.preheader1021

for.body3.i60.preheader1021:                      ; preds = %for.body3.i60.preheader, %middle.block966
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec972, %middle.block966 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1021, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1021 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block966, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !21

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !31

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !40

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit364
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check995 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check995, label %for.body3.i99.preheader1019, label %vector.ph996

vector.ph996:                                     ; preds = %for.body3.i99.preheader
  %n.vec998 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body994

vector.body994:                                   ; preds = %vector.body994, %vector.ph996
  %index999 = phi i64 [ 0, %vector.ph996 ], [ %index.next1000, %vector.body994 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %index999
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1003 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1003, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1000 = add i64 %index999, 4
  %68 = icmp eq i64 %index.next1000, %n.vec998
  br i1 %68, label %middle.block992, label %vector.body994, !llvm.loop !53

middle.block992:                                  ; preds = %vector.body994
  %cmp.n1002 = icmp eq i64 %indvars.iv21.i91, %n.vec998
  br i1 %cmp.n1002, label %for.inc6.i102, label %for.body3.i99.preheader1019

for.body3.i99.preheader1019:                      ; preds = %for.body3.i99.preheader, %middle.block992
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec998, %middle.block992 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1019, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1019 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block992, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !21

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !31

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !40

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !55
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !57

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !58

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1007 = phi i64 [ %indvar.next1008, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1007, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1009 = icmp ult i64 %88, 4
  br i1 %min.iters.check1009, label %polly.loop_header191.preheader, label %vector.ph1010

vector.ph1010:                                    ; preds = %polly.loop_header
  %n.vec1012 = and i64 %88, -4
  br label %vector.body1006

vector.body1006:                                  ; preds = %vector.body1006, %vector.ph1010
  %index1013 = phi i64 [ 0, %vector.ph1010 ], [ %index.next1014, %vector.body1006 ]
  %90 = shl nuw nsw i64 %index1013, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1017 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1017, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1014 = add i64 %index1013, 4
  %95 = icmp eq i64 %index.next1014, %n.vec1012
  br i1 %95, label %middle.block1004, label %vector.body1006, !llvm.loop !64

middle.block1004:                                 ; preds = %vector.body1006
  %cmp.n1016 = icmp eq i64 %88, %n.vec1012
  br i1 %cmp.n1016, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1004
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1012, %middle.block1004 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1004
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond796.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1008 = add i64 %indvar1007, 1
  br i1 %exitcond796.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond795.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond795.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = shl nuw nsw i64 %polly.indvar202, 1
  %98 = mul nuw nsw i64 %polly.indvar202, 7
  %99 = add nuw nsw i64 %98, 7
  %pexp.p_div_q = lshr i64 %99, 4
  %100 = sub nsw i64 %97, %pexp.p_div_q
  %polly.loop_guard = icmp sgt i64 %100, -2
  br i1 %polly.loop_guard, label %polly.loop_header205.preheader, label %polly.loop_exit207

polly.loop_header205.preheader:                   ; preds = %polly.loop_header199
  %101 = mul nsw i64 %polly.indvar202, -50
  %102 = mul nuw nsw i64 %polly.indvar202, 50
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit214, %polly.loop_header199
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -50
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 50
  %exitcond794.not = icmp eq i64 %polly.indvar_next203, 24
  br i1 %exitcond794.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205.preheader, %polly.loop_exit214
  %indvars.iv789 = phi i64 [ %indvars.iv787, %polly.loop_header205.preheader ], [ %indvars.iv.next790, %polly.loop_exit214 ]
  %indvars.iv785 = phi i64 [ %indvars.iv, %polly.loop_header205.preheader ], [ %indvars.iv.next786, %polly.loop_exit214 ]
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header205.preheader ], [ %polly.indvar_next209, %polly.loop_exit214 ]
  %103 = shl nsw i64 %polly.indvar208, 5
  %104 = add nsw i64 %103, %101
  %105 = icmp sgt i64 %104, 0
  %106 = select i1 %105, i64 %104, i64 0
  %polly.loop_guard215 = icmp slt i64 %106, 50
  br i1 %polly.loop_guard215, label %polly.loop_header212.preheader, label %polly.loop_exit214

polly.loop_header212.preheader:                   ; preds = %polly.loop_header205
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv785, i64 0)
  %107 = add i64 %smax, %indvars.iv789
  %108 = sub nsw i64 %102, %103
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit221, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %polly.loop_cond210.not = icmp sgt i64 %polly.indvar208, %100
  %indvars.iv.next786 = add nsw i64 %indvars.iv785, 32
  %indvars.iv.next790 = add nsw i64 %indvars.iv789, -32
  br i1 %polly.loop_cond210.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header212:                             ; preds = %polly.loop_header212.preheader, %polly.loop_exit221
  %indvars.iv791 = phi i64 [ %107, %polly.loop_header212.preheader ], [ %indvars.iv.next792, %polly.loop_exit221 ]
  %polly.indvar216 = phi i64 [ %106, %polly.loop_header212.preheader ], [ %polly.indvar_next217, %polly.loop_exit221 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv791, i64 31)
  %109 = add nsw i64 %polly.indvar216, %108
  %polly.loop_guard229865 = icmp sgt i64 %109, -1
  %110 = add nuw nsw i64 %polly.indvar216, %102
  %111 = mul i64 %110, 8000
  %112 = mul i64 %110, 9600
  br i1 %polly.loop_guard229865, label %polly.loop_header219.us, label %polly.loop_exit221

polly.loop_header219.us:                          ; preds = %polly.loop_header212, %polly.loop_exit228.loopexit.us
  %polly.indvar222.us = phi i64 [ %polly.indvar_next223.us, %polly.loop_exit228.loopexit.us ], [ 0, %polly.loop_header212 ]
  %113 = shl nuw nsw i64 %polly.indvar222.us, 3
  %scevgep233.us = getelementptr i8, i8* %call1, i64 %113
  %scevgep237.us = getelementptr i8, i8* %call2, i64 %113
  %scevgep238.us = getelementptr i8, i8* %scevgep237.us, i64 %111
  %scevgep238239.us = bitcast i8* %scevgep238.us to double*
  %_p_scalar_240.us = load double, double* %scevgep238239.us, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us = getelementptr i8, i8* %scevgep233.us, i64 %111
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header226.us

polly.loop_header226.us:                          ; preds = %polly.loop_header226.us, %polly.loop_header219.us
  %polly.indvar230.us = phi i64 [ 0, %polly.loop_header219.us ], [ %polly.indvar_next231.us, %polly.loop_header226.us ]
  %114 = add nuw nsw i64 %polly.indvar230.us, %103
  %115 = mul nuw nsw i64 %114, 8000
  %scevgep234.us = getelementptr i8, i8* %scevgep233.us, i64 %115
  %scevgep234235.us = bitcast i8* %scevgep234.us to double*
  %_p_scalar_236.us = load double, double* %scevgep234235.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_240.us, %_p_scalar_236.us
  %scevgep242.us = getelementptr i8, i8* %scevgep237.us, i64 %115
  %scevgep242243.us = bitcast i8* %scevgep242.us to double*
  %_p_scalar_244.us = load double, double* %scevgep242243.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_248.us, %_p_scalar_244.us
  %116 = shl i64 %114, 3
  %117 = add i64 %116, %112
  %scevgep249.us = getelementptr i8, i8* %call, i64 %117
  %scevgep249250.us = bitcast i8* %scevgep249.us to double*
  %_p_scalar_251.us = load double, double* %scevgep249250.us, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_251.us
  store double %p_add42.i118.us, double* %scevgep249250.us, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next231.us = add nuw nsw i64 %polly.indvar230.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar230.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit228.loopexit.us, label %polly.loop_header226.us

polly.loop_exit228.loopexit.us:                   ; preds = %polly.loop_header226.us
  %polly.indvar_next223.us = add nuw nsw i64 %polly.indvar222.us, 1
  %exitcond793.not = icmp eq i64 %polly.indvar_next223.us, 1000
  br i1 %exitcond793.not, label %polly.loop_exit221, label %polly.loop_header219.us

polly.loop_exit221:                               ; preds = %polly.loop_exit228.loopexit.us, %polly.loop_header212
  %polly.indvar_next217 = add nuw nsw i64 %polly.indvar216, 1
  %polly.loop_cond218 = icmp ult i64 %polly.indvar216, 49
  %indvars.iv.next792 = add i64 %indvars.iv791, 1
  br i1 %polly.loop_cond218, label %polly.loop_header212, label %polly.loop_exit214

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar981 = phi i64 [ %indvar.next982, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %118 = add i64 %indvar981, 1
  %119 = mul nuw nsw i64 %polly.indvar341, 9600
  %scevgep350 = getelementptr i8, i8* %call, i64 %119
  %min.iters.check983 = icmp ult i64 %118, 4
  br i1 %min.iters.check983, label %polly.loop_header344.preheader, label %vector.ph984

vector.ph984:                                     ; preds = %polly.loop_header338
  %n.vec986 = and i64 %118, -4
  br label %vector.body980

vector.body980:                                   ; preds = %vector.body980, %vector.ph984
  %index987 = phi i64 [ 0, %vector.ph984 ], [ %index.next988, %vector.body980 ]
  %120 = shl nuw nsw i64 %index987, 3
  %121 = getelementptr i8, i8* %scevgep350, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load991 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !69, !noalias !71
  %123 = fmul fast <4 x double> %wide.load991, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %124 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %123, <4 x double>* %124, align 8, !alias.scope !69, !noalias !71
  %index.next988 = add i64 %index987, 4
  %125 = icmp eq i64 %index.next988, %n.vec986
  br i1 %125, label %middle.block978, label %vector.body980, !llvm.loop !74

middle.block978:                                  ; preds = %vector.body980
  %cmp.n990 = icmp eq i64 %118, %n.vec986
  br i1 %cmp.n990, label %polly.loop_exit346, label %polly.loop_header344.preheader

polly.loop_header344.preheader:                   ; preds = %polly.loop_header338, %middle.block978
  %polly.indvar347.ph = phi i64 [ 0, %polly.loop_header338 ], [ %n.vec986, %middle.block978 ]
  br label %polly.loop_header344

polly.loop_exit346:                               ; preds = %polly.loop_header344, %middle.block978
  %polly.indvar_next342 = add nuw nsw i64 %polly.indvar341, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next342, 1200
  %indvar.next982 = add i64 %indvar981, 1
  br i1 %exitcond813.not, label %polly.loop_header354, label %polly.loop_header338

polly.loop_header344:                             ; preds = %polly.loop_header344.preheader, %polly.loop_header344
  %polly.indvar347 = phi i64 [ %polly.indvar_next348, %polly.loop_header344 ], [ %polly.indvar347.ph, %polly.loop_header344.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %126
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond812.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !75

polly.loop_header354:                             ; preds = %polly.loop_exit346, %polly.loop_exit364
  %indvars.iv802 = phi i64 [ %indvars.iv.next803, %polly.loop_exit364 ], [ 0, %polly.loop_exit346 ]
  %indvars.iv797 = phi i64 [ %indvars.iv.next798, %polly.loop_exit364 ], [ 0, %polly.loop_exit346 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit364 ], [ 0, %polly.loop_exit346 ]
  %127 = shl nuw nsw i64 %polly.indvar357, 1
  %128 = mul nuw nsw i64 %polly.indvar357, 7
  %129 = add nuw nsw i64 %128, 7
  %pexp.p_div_q360 = lshr i64 %129, 4
  %130 = sub nsw i64 %127, %pexp.p_div_q360
  %polly.loop_guard365 = icmp sgt i64 %130, -2
  br i1 %polly.loop_guard365, label %polly.loop_header362.preheader, label %polly.loop_exit364

polly.loop_header362.preheader:                   ; preds = %polly.loop_header354
  %131 = mul nsw i64 %polly.indvar357, -50
  %132 = mul nuw nsw i64 %polly.indvar357, 50
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_exit372, %polly.loop_header354
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %indvars.iv.next798 = add nsw i64 %indvars.iv797, -50
  %indvars.iv.next803 = add nuw nsw i64 %indvars.iv802, 50
  %exitcond811.not = icmp eq i64 %polly.indvar_next358, 24
  br i1 %exitcond811.not, label %kernel_syr2k.exit90, label %polly.loop_header354

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_exit372
  %indvars.iv804 = phi i64 [ %indvars.iv802, %polly.loop_header362.preheader ], [ %indvars.iv.next805, %polly.loop_exit372 ]
  %indvars.iv799 = phi i64 [ %indvars.iv797, %polly.loop_header362.preheader ], [ %indvars.iv.next800, %polly.loop_exit372 ]
  %polly.indvar366 = phi i64 [ 0, %polly.loop_header362.preheader ], [ %polly.indvar_next367, %polly.loop_exit372 ]
  %133 = shl nsw i64 %polly.indvar366, 5
  %134 = add nsw i64 %133, %131
  %135 = icmp sgt i64 %134, 0
  %136 = select i1 %135, i64 %134, i64 0
  %polly.loop_guard373 = icmp slt i64 %136, 50
  br i1 %polly.loop_guard373, label %polly.loop_header370.preheader, label %polly.loop_exit372

polly.loop_header370.preheader:                   ; preds = %polly.loop_header362
  %smax801 = call i64 @llvm.smax.i64(i64 %indvars.iv799, i64 0)
  %137 = add i64 %smax801, %indvars.iv804
  %138 = sub nsw i64 %132, %133
  br label %polly.loop_header370

polly.loop_exit372:                               ; preds = %polly.loop_exit379, %polly.loop_header362
  %polly.indvar_next367 = add nuw nsw i64 %polly.indvar366, 1
  %polly.loop_cond368.not = icmp sgt i64 %polly.indvar366, %130
  %indvars.iv.next800 = add nsw i64 %indvars.iv799, 32
  %indvars.iv.next805 = add nsw i64 %indvars.iv804, -32
  br i1 %polly.loop_cond368.not, label %polly.loop_exit364, label %polly.loop_header362

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit379
  %indvars.iv806 = phi i64 [ %137, %polly.loop_header370.preheader ], [ %indvars.iv.next807, %polly.loop_exit379 ]
  %polly.indvar374 = phi i64 [ %136, %polly.loop_header370.preheader ], [ %polly.indvar_next375, %polly.loop_exit379 ]
  %smin808 = call i64 @llvm.smin.i64(i64 %indvars.iv806, i64 31)
  %139 = add nsw i64 %polly.indvar374, %138
  %polly.loop_guard387866 = icmp sgt i64 %139, -1
  %140 = add nuw nsw i64 %polly.indvar374, %132
  %141 = mul i64 %140, 8000
  %142 = mul i64 %140, 9600
  br i1 %polly.loop_guard387866, label %polly.loop_header377.us, label %polly.loop_exit379

polly.loop_header377.us:                          ; preds = %polly.loop_header370, %polly.loop_exit386.loopexit.us
  %polly.indvar380.us = phi i64 [ %polly.indvar_next381.us, %polly.loop_exit386.loopexit.us ], [ 0, %polly.loop_header370 ]
  %143 = shl nuw nsw i64 %polly.indvar380.us, 3
  %scevgep391.us = getelementptr i8, i8* %call1, i64 %143
  %scevgep395.us = getelementptr i8, i8* %call2, i64 %143
  %scevgep396.us = getelementptr i8, i8* %scevgep395.us, i64 %141
  %scevgep396397.us = bitcast i8* %scevgep396.us to double*
  %_p_scalar_398.us = load double, double* %scevgep396397.us, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us = getelementptr i8, i8* %scevgep391.us, i64 %141
  %scevgep404405.us = bitcast i8* %scevgep404.us to double*
  %_p_scalar_406.us = load double, double* %scevgep404405.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header384.us

polly.loop_header384.us:                          ; preds = %polly.loop_header384.us, %polly.loop_header377.us
  %polly.indvar388.us = phi i64 [ 0, %polly.loop_header377.us ], [ %polly.indvar_next389.us, %polly.loop_header384.us ]
  %144 = add nuw nsw i64 %polly.indvar388.us, %133
  %145 = mul nuw nsw i64 %144, 8000
  %scevgep392.us = getelementptr i8, i8* %scevgep391.us, i64 %145
  %scevgep392393.us = bitcast i8* %scevgep392.us to double*
  %_p_scalar_394.us = load double, double* %scevgep392393.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_398.us, %_p_scalar_394.us
  %scevgep400.us = getelementptr i8, i8* %scevgep395.us, i64 %145
  %scevgep400401.us = bitcast i8* %scevgep400.us to double*
  %_p_scalar_402.us = load double, double* %scevgep400401.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_406.us, %_p_scalar_402.us
  %146 = shl i64 %144, 3
  %147 = add i64 %146, %142
  %scevgep407.us = getelementptr i8, i8* %call, i64 %147
  %scevgep407408.us = bitcast i8* %scevgep407.us to double*
  %_p_scalar_409.us = load double, double* %scevgep407408.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_409.us
  store double %p_add42.i79.us, double* %scevgep407408.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next389.us = add nuw nsw i64 %polly.indvar388.us, 1
  %exitcond809.not = icmp eq i64 %polly.indvar388.us, %smin808
  br i1 %exitcond809.not, label %polly.loop_exit386.loopexit.us, label %polly.loop_header384.us

polly.loop_exit386.loopexit.us:                   ; preds = %polly.loop_header384.us
  %polly.indvar_next381.us = add nuw nsw i64 %polly.indvar380.us, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next381.us, 1000
  br i1 %exitcond810.not, label %polly.loop_exit379, label %polly.loop_header377.us

polly.loop_exit379:                               ; preds = %polly.loop_exit386.loopexit.us, %polly.loop_header370
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %polly.loop_cond376 = icmp ult i64 %polly.indvar374, 49
  %indvars.iv.next807 = add i64 %indvars.iv806, 1
  br i1 %polly.loop_cond376, label %polly.loop_header370, label %polly.loop_exit372

polly.loop_header496:                             ; preds = %init_array.exit, %polly.loop_exit504
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit504 ], [ 0, %init_array.exit ]
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_exit504 ], [ 1, %init_array.exit ]
  %148 = add i64 %indvar, 1
  %149 = mul nuw nsw i64 %polly.indvar499, 9600
  %scevgep508 = getelementptr i8, i8* %call, i64 %149
  %min.iters.check957 = icmp ult i64 %148, 4
  br i1 %min.iters.check957, label %polly.loop_header502.preheader, label %vector.ph958

vector.ph958:                                     ; preds = %polly.loop_header496
  %n.vec960 = and i64 %148, -4
  br label %vector.body956

vector.body956:                                   ; preds = %vector.body956, %vector.ph958
  %index961 = phi i64 [ 0, %vector.ph958 ], [ %index.next962, %vector.body956 ]
  %150 = shl nuw nsw i64 %index961, 3
  %151 = getelementptr i8, i8* %scevgep508, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  %wide.load965 = load <4 x double>, <4 x double>* %152, align 8, !alias.scope !78, !noalias !80
  %153 = fmul fast <4 x double> %wide.load965, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %154 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %153, <4 x double>* %154, align 8, !alias.scope !78, !noalias !80
  %index.next962 = add i64 %index961, 4
  %155 = icmp eq i64 %index.next962, %n.vec960
  br i1 %155, label %middle.block954, label %vector.body956, !llvm.loop !83

middle.block954:                                  ; preds = %vector.body956
  %cmp.n964 = icmp eq i64 %148, %n.vec960
  br i1 %cmp.n964, label %polly.loop_exit504, label %polly.loop_header502.preheader

polly.loop_header502.preheader:                   ; preds = %polly.loop_header496, %middle.block954
  %polly.indvar505.ph = phi i64 [ 0, %polly.loop_header496 ], [ %n.vec960, %middle.block954 ]
  br label %polly.loop_header502

polly.loop_exit504:                               ; preds = %polly.loop_header502, %middle.block954
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next500, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond830.not, label %polly.loop_header512, label %polly.loop_header496

polly.loop_header502:                             ; preds = %polly.loop_header502.preheader, %polly.loop_header502
  %polly.indvar505 = phi i64 [ %polly.indvar_next506, %polly.loop_header502 ], [ %polly.indvar505.ph, %polly.loop_header502.preheader ]
  %156 = shl nuw nsw i64 %polly.indvar505, 3
  %scevgep509 = getelementptr i8, i8* %scevgep508, i64 %156
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_511, 1.200000e+00
  store double %p_mul.i, double* %scevgep509510, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next506 = add nuw nsw i64 %polly.indvar505, 1
  %exitcond829.not = icmp eq i64 %polly.indvar_next506, %polly.indvar499
  br i1 %exitcond829.not, label %polly.loop_exit504, label %polly.loop_header502, !llvm.loop !84

polly.loop_header512:                             ; preds = %polly.loop_exit504, %polly.loop_exit522
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit522 ], [ 0, %polly.loop_exit504 ]
  %indvars.iv814 = phi i64 [ %indvars.iv.next815, %polly.loop_exit522 ], [ 0, %polly.loop_exit504 ]
  %polly.indvar515 = phi i64 [ %polly.indvar_next516, %polly.loop_exit522 ], [ 0, %polly.loop_exit504 ]
  %157 = shl nuw nsw i64 %polly.indvar515, 1
  %158 = mul nuw nsw i64 %polly.indvar515, 7
  %159 = add nuw nsw i64 %158, 7
  %pexp.p_div_q518 = lshr i64 %159, 4
  %160 = sub nsw i64 %157, %pexp.p_div_q518
  %polly.loop_guard523 = icmp sgt i64 %160, -2
  br i1 %polly.loop_guard523, label %polly.loop_header520.preheader, label %polly.loop_exit522

polly.loop_header520.preheader:                   ; preds = %polly.loop_header512
  %161 = mul nsw i64 %polly.indvar515, -50
  %162 = mul nuw nsw i64 %polly.indvar515, 50
  br label %polly.loop_header520

polly.loop_exit522:                               ; preds = %polly.loop_exit530, %polly.loop_header512
  %polly.indvar_next516 = add nuw nsw i64 %polly.indvar515, 1
  %indvars.iv.next815 = add nsw i64 %indvars.iv814, -50
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 50
  %exitcond828.not = icmp eq i64 %polly.indvar_next516, 24
  br i1 %exitcond828.not, label %kernel_syr2k.exit, label %polly.loop_header512

polly.loop_header520:                             ; preds = %polly.loop_header520.preheader, %polly.loop_exit530
  %indvars.iv821 = phi i64 [ %indvars.iv819, %polly.loop_header520.preheader ], [ %indvars.iv.next822, %polly.loop_exit530 ]
  %indvars.iv816 = phi i64 [ %indvars.iv814, %polly.loop_header520.preheader ], [ %indvars.iv.next817, %polly.loop_exit530 ]
  %polly.indvar524 = phi i64 [ 0, %polly.loop_header520.preheader ], [ %polly.indvar_next525, %polly.loop_exit530 ]
  %163 = shl nsw i64 %polly.indvar524, 5
  %164 = add nsw i64 %163, %161
  %165 = icmp sgt i64 %164, 0
  %166 = select i1 %165, i64 %164, i64 0
  %polly.loop_guard531 = icmp slt i64 %166, 50
  br i1 %polly.loop_guard531, label %polly.loop_header528.preheader, label %polly.loop_exit530

polly.loop_header528.preheader:                   ; preds = %polly.loop_header520
  %smax818 = call i64 @llvm.smax.i64(i64 %indvars.iv816, i64 0)
  %167 = add i64 %smax818, %indvars.iv821
  %168 = sub nsw i64 %162, %163
  br label %polly.loop_header528

polly.loop_exit530:                               ; preds = %polly.loop_exit537, %polly.loop_header520
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %polly.loop_cond526.not = icmp sgt i64 %polly.indvar524, %160
  %indvars.iv.next817 = add nsw i64 %indvars.iv816, 32
  %indvars.iv.next822 = add nsw i64 %indvars.iv821, -32
  br i1 %polly.loop_cond526.not, label %polly.loop_exit522, label %polly.loop_header520

polly.loop_header528:                             ; preds = %polly.loop_header528.preheader, %polly.loop_exit537
  %indvars.iv823 = phi i64 [ %167, %polly.loop_header528.preheader ], [ %indvars.iv.next824, %polly.loop_exit537 ]
  %polly.indvar532 = phi i64 [ %166, %polly.loop_header528.preheader ], [ %polly.indvar_next533, %polly.loop_exit537 ]
  %smin825 = call i64 @llvm.smin.i64(i64 %indvars.iv823, i64 31)
  %169 = add nsw i64 %polly.indvar532, %168
  %polly.loop_guard545867 = icmp sgt i64 %169, -1
  %170 = add nuw nsw i64 %polly.indvar532, %162
  %171 = mul i64 %170, 8000
  %172 = mul i64 %170, 9600
  br i1 %polly.loop_guard545867, label %polly.loop_header535.us, label %polly.loop_exit537

polly.loop_header535.us:                          ; preds = %polly.loop_header528, %polly.loop_exit544.loopexit.us
  %polly.indvar538.us = phi i64 [ %polly.indvar_next539.us, %polly.loop_exit544.loopexit.us ], [ 0, %polly.loop_header528 ]
  %173 = shl nuw nsw i64 %polly.indvar538.us, 3
  %scevgep549.us = getelementptr i8, i8* %call1, i64 %173
  %scevgep553.us = getelementptr i8, i8* %call2, i64 %173
  %scevgep554.us = getelementptr i8, i8* %scevgep553.us, i64 %171
  %scevgep554555.us = bitcast i8* %scevgep554.us to double*
  %_p_scalar_556.us = load double, double* %scevgep554555.us, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us = getelementptr i8, i8* %scevgep549.us, i64 %171
  %scevgep562563.us = bitcast i8* %scevgep562.us to double*
  %_p_scalar_564.us = load double, double* %scevgep562563.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header542.us

polly.loop_header542.us:                          ; preds = %polly.loop_header542.us, %polly.loop_header535.us
  %polly.indvar546.us = phi i64 [ 0, %polly.loop_header535.us ], [ %polly.indvar_next547.us, %polly.loop_header542.us ]
  %174 = add nuw nsw i64 %polly.indvar546.us, %163
  %175 = mul nuw nsw i64 %174, 8000
  %scevgep550.us = getelementptr i8, i8* %scevgep549.us, i64 %175
  %scevgep550551.us = bitcast i8* %scevgep550.us to double*
  %_p_scalar_552.us = load double, double* %scevgep550551.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_556.us, %_p_scalar_552.us
  %scevgep558.us = getelementptr i8, i8* %scevgep553.us, i64 %175
  %scevgep558559.us = bitcast i8* %scevgep558.us to double*
  %_p_scalar_560.us = load double, double* %scevgep558559.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_564.us, %_p_scalar_560.us
  %176 = shl i64 %174, 3
  %177 = add i64 %176, %172
  %scevgep565.us = getelementptr i8, i8* %call, i64 %177
  %scevgep565566.us = bitcast i8* %scevgep565.us to double*
  %_p_scalar_567.us = load double, double* %scevgep565566.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_567.us
  store double %p_add42.i.us, double* %scevgep565566.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next547.us = add nuw nsw i64 %polly.indvar546.us, 1
  %exitcond826.not = icmp eq i64 %polly.indvar546.us, %smin825
  br i1 %exitcond826.not, label %polly.loop_exit544.loopexit.us, label %polly.loop_header542.us

polly.loop_exit544.loopexit.us:                   ; preds = %polly.loop_header542.us
  %polly.indvar_next539.us = add nuw nsw i64 %polly.indvar538.us, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next539.us, 1000
  br i1 %exitcond827.not, label %polly.loop_exit537, label %polly.loop_header535.us

polly.loop_exit537:                               ; preds = %polly.loop_exit544.loopexit.us, %polly.loop_header528
  %polly.indvar_next533 = add nuw nsw i64 %polly.indvar532, 1
  %polly.loop_cond534 = icmp ult i64 %polly.indvar532, 49
  %indvars.iv.next824 = add i64 %indvars.iv823, 1
  br i1 %polly.loop_cond534, label %polly.loop_header528, label %polly.loop_exit530

polly.loop_header694:                             ; preds = %entry, %polly.loop_exit702
  %indvars.iv855 = phi i64 [ %indvars.iv.next856, %polly.loop_exit702 ], [ 0, %entry ]
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %entry ]
  %smin857 = call i64 @llvm.smin.i64(i64 %indvars.iv855, i64 -1168)
  %178 = shl nsw i64 %polly.indvar697, 5
  %179 = add nsw i64 %smin857, 1199
  br label %polly.loop_header700

polly.loop_exit702:                               ; preds = %polly.loop_exit708
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %indvars.iv.next856 = add nsw i64 %indvars.iv855, -32
  %exitcond860.not = icmp eq i64 %polly.indvar_next698, 38
  br i1 %exitcond860.not, label %polly.loop_header721, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_exit708, %polly.loop_header694
  %indvars.iv851 = phi i64 [ %indvars.iv.next852, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %180 = mul nsw i64 %polly.indvar703, -32
  %smin895 = call i64 @llvm.smin.i64(i64 %180, i64 -1168)
  %181 = add nsw i64 %smin895, 1200
  %smin853 = call i64 @llvm.smin.i64(i64 %indvars.iv851, i64 -1168)
  %182 = shl nsw i64 %polly.indvar703, 5
  %183 = add nsw i64 %smin853, 1199
  br label %polly.loop_header706

polly.loop_exit708:                               ; preds = %polly.loop_exit714
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %indvars.iv.next852 = add nsw i64 %indvars.iv851, -32
  %exitcond859.not = icmp eq i64 %polly.indvar_next704, 38
  br i1 %exitcond859.not, label %polly.loop_exit702, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_exit714, %polly.loop_header700
  %polly.indvar709 = phi i64 [ 0, %polly.loop_header700 ], [ %polly.indvar_next710, %polly.loop_exit714 ]
  %184 = add nuw nsw i64 %polly.indvar709, %178
  %185 = trunc i64 %184 to i32
  %186 = mul nuw nsw i64 %184, 9600
  %min.iters.check = icmp eq i64 %181, 0
  br i1 %min.iters.check, label %polly.loop_header712, label %vector.ph896

vector.ph896:                                     ; preds = %polly.loop_header706
  %broadcast.splatinsert903 = insertelement <4 x i64> poison, i64 %182, i32 0
  %broadcast.splat904 = shufflevector <4 x i64> %broadcast.splatinsert903, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert905 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat906 = shufflevector <4 x i32> %broadcast.splatinsert905, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body894

vector.body894:                                   ; preds = %vector.body894, %vector.ph896
  %index897 = phi i64 [ 0, %vector.ph896 ], [ %index.next898, %vector.body894 ]
  %vec.ind901 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph896 ], [ %vec.ind.next902, %vector.body894 ]
  %187 = add nuw nsw <4 x i64> %vec.ind901, %broadcast.splat904
  %188 = trunc <4 x i64> %187 to <4 x i32>
  %189 = mul <4 x i32> %broadcast.splat906, %188
  %190 = add <4 x i32> %189, <i32 3, i32 3, i32 3, i32 3>
  %191 = urem <4 x i32> %190, <i32 1200, i32 1200, i32 1200, i32 1200>
  %192 = sitofp <4 x i32> %191 to <4 x double>
  %193 = fmul fast <4 x double> %192, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %194 = extractelement <4 x i64> %187, i32 0
  %195 = shl i64 %194, 3
  %196 = add nuw nsw i64 %195, %186
  %197 = getelementptr i8, i8* %call, i64 %196
  %198 = bitcast i8* %197 to <4 x double>*
  store <4 x double> %193, <4 x double>* %198, align 8, !alias.scope !87, !noalias !89
  %index.next898 = add i64 %index897, 4
  %vec.ind.next902 = add <4 x i64> %vec.ind901, <i64 4, i64 4, i64 4, i64 4>
  %199 = icmp eq i64 %index.next898, %181
  br i1 %199, label %polly.loop_exit714, label %vector.body894, !llvm.loop !92

polly.loop_exit714:                               ; preds = %vector.body894, %polly.loop_header712
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %exitcond858.not = icmp eq i64 %polly.indvar709, %179
  br i1 %exitcond858.not, label %polly.loop_exit708, label %polly.loop_header706

polly.loop_header712:                             ; preds = %polly.loop_header706, %polly.loop_header712
  %polly.indvar715 = phi i64 [ %polly.indvar_next716, %polly.loop_header712 ], [ 0, %polly.loop_header706 ]
  %200 = add nuw nsw i64 %polly.indvar715, %182
  %201 = trunc i64 %200 to i32
  %202 = mul i32 %201, %185
  %203 = add i32 %202, 3
  %204 = urem i32 %203, 1200
  %p_conv31.i = sitofp i32 %204 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %205 = shl i64 %200, 3
  %206 = add nuw nsw i64 %205, %186
  %scevgep718 = getelementptr i8, i8* %call, i64 %206
  %scevgep718719 = bitcast i8* %scevgep718 to double*
  store double %p_div33.i, double* %scevgep718719, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond854.not = icmp eq i64 %polly.indvar715, %183
  br i1 %exitcond854.not, label %polly.loop_exit714, label %polly.loop_header712, !llvm.loop !93

polly.loop_header721:                             ; preds = %polly.loop_exit702, %polly.loop_exit729
  %indvars.iv845 = phi i64 [ %indvars.iv.next846, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %smin847 = call i64 @llvm.smin.i64(i64 %indvars.iv845, i64 -1168)
  %207 = shl nsw i64 %polly.indvar724, 5
  %208 = add nsw i64 %smin847, 1199
  br label %polly.loop_header727

polly.loop_exit729:                               ; preds = %polly.loop_exit735
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %indvars.iv.next846 = add nsw i64 %indvars.iv845, -32
  %exitcond850.not = icmp eq i64 %polly.indvar_next725, 38
  br i1 %exitcond850.not, label %polly.loop_header747, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_exit735, %polly.loop_header721
  %indvars.iv841 = phi i64 [ %indvars.iv.next842, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %209 = mul nsw i64 %polly.indvar730, -32
  %smin910 = call i64 @llvm.smin.i64(i64 %209, i64 -968)
  %210 = add nsw i64 %smin910, 1000
  %smin843 = call i64 @llvm.smin.i64(i64 %indvars.iv841, i64 -968)
  %211 = shl nsw i64 %polly.indvar730, 5
  %212 = add nsw i64 %smin843, 999
  br label %polly.loop_header733

polly.loop_exit735:                               ; preds = %polly.loop_exit741
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %indvars.iv.next842 = add nsw i64 %indvars.iv841, -32
  %exitcond849.not = icmp eq i64 %polly.indvar_next731, 32
  br i1 %exitcond849.not, label %polly.loop_exit729, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_exit741, %polly.loop_header727
  %polly.indvar736 = phi i64 [ 0, %polly.loop_header727 ], [ %polly.indvar_next737, %polly.loop_exit741 ]
  %213 = add nuw nsw i64 %polly.indvar736, %207
  %214 = trunc i64 %213 to i32
  %215 = mul nuw nsw i64 %213, 8000
  %min.iters.check911 = icmp eq i64 %210, 0
  br i1 %min.iters.check911, label %polly.loop_header739, label %vector.ph912

vector.ph912:                                     ; preds = %polly.loop_header733
  %broadcast.splatinsert921 = insertelement <4 x i64> poison, i64 %211, i32 0
  %broadcast.splat922 = shufflevector <4 x i64> %broadcast.splatinsert921, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert923 = insertelement <4 x i32> poison, i32 %214, i32 0
  %broadcast.splat924 = shufflevector <4 x i32> %broadcast.splatinsert923, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body909

vector.body909:                                   ; preds = %vector.body909, %vector.ph912
  %index915 = phi i64 [ 0, %vector.ph912 ], [ %index.next916, %vector.body909 ]
  %vec.ind919 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph912 ], [ %vec.ind.next920, %vector.body909 ]
  %216 = add nuw nsw <4 x i64> %vec.ind919, %broadcast.splat922
  %217 = trunc <4 x i64> %216 to <4 x i32>
  %218 = mul <4 x i32> %broadcast.splat924, %217
  %219 = add <4 x i32> %218, <i32 2, i32 2, i32 2, i32 2>
  %220 = urem <4 x i32> %219, <i32 1000, i32 1000, i32 1000, i32 1000>
  %221 = sitofp <4 x i32> %220 to <4 x double>
  %222 = fmul fast <4 x double> %221, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %223 = extractelement <4 x i64> %216, i32 0
  %224 = shl i64 %223, 3
  %225 = add nuw nsw i64 %224, %215
  %226 = getelementptr i8, i8* %call2, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %222, <4 x double>* %227, align 8, !alias.scope !91, !noalias !94
  %index.next916 = add i64 %index915, 4
  %vec.ind.next920 = add <4 x i64> %vec.ind919, <i64 4, i64 4, i64 4, i64 4>
  %228 = icmp eq i64 %index.next916, %210
  br i1 %228, label %polly.loop_exit741, label %vector.body909, !llvm.loop !95

polly.loop_exit741:                               ; preds = %vector.body909, %polly.loop_header739
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %exitcond848.not = icmp eq i64 %polly.indvar736, %208
  br i1 %exitcond848.not, label %polly.loop_exit735, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_header733, %polly.loop_header739
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_header739 ], [ 0, %polly.loop_header733 ]
  %229 = add nuw nsw i64 %polly.indvar742, %211
  %230 = trunc i64 %229 to i32
  %231 = mul i32 %230, %214
  %232 = add i32 %231, 2
  %233 = urem i32 %232, 1000
  %p_conv10.i = sitofp i32 %233 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %234 = shl i64 %229, 3
  %235 = add nuw nsw i64 %234, %215
  %scevgep745 = getelementptr i8, i8* %call2, i64 %235
  %scevgep745746 = bitcast i8* %scevgep745 to double*
  store double %p_div12.i, double* %scevgep745746, align 8, !alias.scope !91, !noalias !94
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %exitcond844.not = icmp eq i64 %polly.indvar742, %212
  br i1 %exitcond844.not, label %polly.loop_exit741, label %polly.loop_header739, !llvm.loop !96

polly.loop_header747:                             ; preds = %polly.loop_exit729, %polly.loop_exit755
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %smin837 = call i64 @llvm.smin.i64(i64 %indvars.iv835, i64 -1168)
  %236 = shl nsw i64 %polly.indvar750, 5
  %237 = add nsw i64 %smin837, 1199
  br label %polly.loop_header753

polly.loop_exit755:                               ; preds = %polly.loop_exit761
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %indvars.iv.next836 = add nsw i64 %indvars.iv835, -32
  %exitcond840.not = icmp eq i64 %polly.indvar_next751, 38
  br i1 %exitcond840.not, label %init_array.exit, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_exit761, %polly.loop_header747
  %indvars.iv831 = phi i64 [ %indvars.iv.next832, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %238 = mul nsw i64 %polly.indvar756, -32
  %smin928 = call i64 @llvm.smin.i64(i64 %238, i64 -968)
  %239 = add nsw i64 %smin928, 1000
  %smin833 = call i64 @llvm.smin.i64(i64 %indvars.iv831, i64 -968)
  %240 = shl nsw i64 %polly.indvar756, 5
  %241 = add nsw i64 %smin833, 999
  br label %polly.loop_header759

polly.loop_exit761:                               ; preds = %polly.loop_exit767
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %indvars.iv.next832 = add nsw i64 %indvars.iv831, -32
  %exitcond839.not = icmp eq i64 %polly.indvar_next757, 32
  br i1 %exitcond839.not, label %polly.loop_exit755, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_exit767, %polly.loop_header753
  %polly.indvar762 = phi i64 [ 0, %polly.loop_header753 ], [ %polly.indvar_next763, %polly.loop_exit767 ]
  %242 = add nuw nsw i64 %polly.indvar762, %236
  %243 = trunc i64 %242 to i32
  %244 = mul nuw nsw i64 %242, 8000
  %min.iters.check929 = icmp eq i64 %239, 0
  br i1 %min.iters.check929, label %polly.loop_header765, label %vector.ph930

vector.ph930:                                     ; preds = %polly.loop_header759
  %broadcast.splatinsert939 = insertelement <4 x i64> poison, i64 %240, i32 0
  %broadcast.splat940 = shufflevector <4 x i64> %broadcast.splatinsert939, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert941 = insertelement <4 x i32> poison, i32 %243, i32 0
  %broadcast.splat942 = shufflevector <4 x i32> %broadcast.splatinsert941, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %vector.ph930
  %index933 = phi i64 [ 0, %vector.ph930 ], [ %index.next934, %vector.body927 ]
  %vec.ind937 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph930 ], [ %vec.ind.next938, %vector.body927 ]
  %245 = add nuw nsw <4 x i64> %vec.ind937, %broadcast.splat940
  %246 = trunc <4 x i64> %245 to <4 x i32>
  %247 = mul <4 x i32> %broadcast.splat942, %246
  %248 = add <4 x i32> %247, <i32 1, i32 1, i32 1, i32 1>
  %249 = urem <4 x i32> %248, <i32 1200, i32 1200, i32 1200, i32 1200>
  %250 = sitofp <4 x i32> %249 to <4 x double>
  %251 = fmul fast <4 x double> %250, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %252 = extractelement <4 x i64> %245, i32 0
  %253 = shl i64 %252, 3
  %254 = add nuw nsw i64 %253, %244
  %255 = getelementptr i8, i8* %call1, i64 %254
  %256 = bitcast i8* %255 to <4 x double>*
  store <4 x double> %251, <4 x double>* %256, align 8, !alias.scope !90, !noalias !97
  %index.next934 = add i64 %index933, 4
  %vec.ind.next938 = add <4 x i64> %vec.ind937, <i64 4, i64 4, i64 4, i64 4>
  %257 = icmp eq i64 %index.next934, %239
  br i1 %257, label %polly.loop_exit767, label %vector.body927, !llvm.loop !98

polly.loop_exit767:                               ; preds = %vector.body927, %polly.loop_header765
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %exitcond838.not = icmp eq i64 %polly.indvar762, %237
  br i1 %exitcond838.not, label %polly.loop_exit761, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_header759, %polly.loop_header765
  %polly.indvar768 = phi i64 [ %polly.indvar_next769, %polly.loop_header765 ], [ 0, %polly.loop_header759 ]
  %258 = add nuw nsw i64 %polly.indvar768, %240
  %259 = trunc i64 %258 to i32
  %260 = mul i32 %259, %243
  %261 = add i32 %260, 1
  %262 = urem i32 %261, 1200
  %p_conv.i = sitofp i32 %262 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %263 = shl i64 %258, 3
  %264 = add nuw nsw i64 %263, %244
  %scevgep772 = getelementptr i8, i8* %call1, i64 %264
  %scevgep772773 = bitcast i8* %scevgep772 to double*
  store double %p_div.i, double* %scevgep772773, align 8, !alias.scope !90, !noalias !97
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %exitcond834.not = icmp eq i64 %polly.indvar768, %241
  br i1 %exitcond834.not, label %polly.loop_exit767, label %polly.loop_header765, !llvm.loop !99
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
!21 = distinct !{!21, !12, !22, !23, !24, !25, !28}
!22 = !{!"llvm.loop.disable_nonforced"}
!23 = !{!"llvm.loop.id", !"k"}
!24 = !{!"llvm.loop.tile.size", i32 32}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 2048}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !44, !45, !48}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 50}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !47}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.tile.followup_tile", !49}
!49 = distinct !{!49, !12, !50}
!50 = !{!"llvm.loop.id", !"i2"}
!51 = distinct !{!51, !12, !13}
!52 = distinct !{!52, !12, !13}
!53 = distinct !{!53, !12, !13}
!54 = distinct !{!54, !12, !13}
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !4, i64 0}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !60, !"polly.alias.scope.MemRef_call"}
!60 = distinct !{!60, !"polly.alias.scope.domain"}
!61 = !{!62, !63}
!62 = distinct !{!62, !60, !"polly.alias.scope.MemRef_call1"}
!63 = distinct !{!63, !60, !"polly.alias.scope.MemRef_call2"}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !66, !13}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = !{!59, !62}
!68 = !{!59, !63}
!69 = distinct !{!69, !70, !"polly.alias.scope.MemRef_call"}
!70 = distinct !{!70, !"polly.alias.scope.domain"}
!71 = !{!72, !73}
!72 = distinct !{!72, !70, !"polly.alias.scope.MemRef_call1"}
!73 = distinct !{!73, !70, !"polly.alias.scope.MemRef_call2"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !66, !13}
!76 = !{!69, !72}
!77 = !{!69, !73}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !66, !13}
!85 = !{!78, !81}
!86 = !{!78, !82}
!87 = distinct !{!87, !88, !"polly.alias.scope.MemRef_call"}
!88 = distinct !{!88, !"polly.alias.scope.domain"}
!89 = !{!90, !91}
!90 = distinct !{!90, !88, !"polly.alias.scope.MemRef_call1"}
!91 = distinct !{!91, !88, !"polly.alias.scope.MemRef_call2"}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !66, !13}
!94 = !{!90, !87}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !66, !13}
!97 = !{!91, !87}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !66, !13}
