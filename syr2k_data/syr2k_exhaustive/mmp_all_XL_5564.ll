; ModuleID = 'syr2k_exhaustive/mmp_all_XL_5564.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_5564.c"
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
  %call754 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1615 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2616 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1615, %call2
  %polly.access.call2635 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2635, %call1
  %2 = or i1 %0, %1
  %polly.access.call655 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call655, %call2
  %4 = icmp ule i8* %polly.access.call2635, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call655, %call1
  %8 = icmp ule i8* %polly.access.call1615, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header728, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep900 = getelementptr i8, i8* %call2, i64 %12
  %scevgep899 = getelementptr i8, i8* %call2, i64 %11
  %scevgep898 = getelementptr i8, i8* %call1, i64 %12
  %scevgep897 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep897, %scevgep900
  %bound1 = icmp ult i8* %scevgep899, %scevgep898
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
  br i1 %exitcond18.not.i, label %vector.ph904, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph904:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert911 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat912 = shufflevector <4 x i64> %broadcast.splatinsert911, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body903

vector.body903:                                   ; preds = %vector.body903, %vector.ph904
  %index905 = phi i64 [ 0, %vector.ph904 ], [ %index.next906, %vector.body903 ]
  %vec.ind909 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph904 ], [ %vec.ind.next910, %vector.body903 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind909, %broadcast.splat912
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call754, i64 %indvars.iv7.i, i64 %index905
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next906 = add i64 %index905, 4
  %vec.ind.next910 = add <4 x i64> %vec.ind909, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next906, 1200
  br i1 %40, label %for.inc41.i, label %vector.body903, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body903
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph904, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit789
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start435, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check967 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check967, label %for.body3.i46.preheader1041, label %vector.ph968

vector.ph968:                                     ; preds = %for.body3.i46.preheader
  %n.vec970 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body966

vector.body966:                                   ; preds = %vector.body966, %vector.ph968
  %index971 = phi i64 [ 0, %vector.ph968 ], [ %index.next972, %vector.body966 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call754, i64 %indvars.iv21.i, i64 %index971
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next972 = add i64 %index971, 4
  %46 = icmp eq i64 %index.next972, %n.vec970
  br i1 %46, label %middle.block964, label %vector.body966, !llvm.loop !18

middle.block964:                                  ; preds = %vector.body966
  %cmp.n974 = icmp eq i64 %indvars.iv21.i, %n.vec970
  br i1 %cmp.n974, label %for.inc6.i, label %for.body3.i46.preheader1041

for.body3.i46.preheader1041:                      ; preds = %for.body3.i46.preheader, %middle.block964
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec970, %middle.block964 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1041, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1041 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call754, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block964, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call754, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting436
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start266, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check990 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check990, label %for.body3.i60.preheader1040, label %vector.ph991

vector.ph991:                                     ; preds = %for.body3.i60.preheader
  %n.vec993 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body989

vector.body989:                                   ; preds = %vector.body989, %vector.ph991
  %index994 = phi i64 [ 0, %vector.ph991 ], [ %index.next995, %vector.body989 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call754, i64 %indvars.iv21.i52, i64 %index994
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load998 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load998, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next995 = add i64 %index994, 4
  %57 = icmp eq i64 %index.next995, %n.vec993
  br i1 %57, label %middle.block987, label %vector.body989, !llvm.loop !60

middle.block987:                                  ; preds = %vector.body989
  %cmp.n997 = icmp eq i64 %indvars.iv21.i52, %n.vec993
  br i1 %cmp.n997, label %for.inc6.i63, label %for.body3.i60.preheader1040

for.body3.i60.preheader1040:                      ; preds = %for.body3.i60.preheader, %middle.block987
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec993, %middle.block987 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1040, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1040 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call754, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block987, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call754, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting267
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1016 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1016, label %for.body3.i99.preheader1039, label %vector.ph1017

vector.ph1017:                                    ; preds = %for.body3.i99.preheader
  %n.vec1019 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1015

vector.body1015:                                  ; preds = %vector.body1015, %vector.ph1017
  %index1020 = phi i64 [ 0, %vector.ph1017 ], [ %index.next1021, %vector.body1015 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call754, i64 %indvars.iv21.i91, i64 %index1020
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1024 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1024, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1021 = add i64 %index1020, 4
  %68 = icmp eq i64 %index.next1021, %n.vec1019
  br i1 %68, label %middle.block1013, label %vector.body1015, !llvm.loop !62

middle.block1013:                                 ; preds = %vector.body1015
  %cmp.n1023 = icmp eq i64 %indvars.iv21.i91, %n.vec1019
  br i1 %cmp.n1023, label %for.inc6.i102, label %for.body3.i99.preheader1039

for.body3.i99.preheader1039:                      ; preds = %for.body3.i99.preheader, %middle.block1013
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1019, %middle.block1013 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1039, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1039 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call754, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1013, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call754, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call754, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1028 = phi i64 [ %indvar.next1029, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1028, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1030 = icmp ult i64 %88, 4
  br i1 %min.iters.check1030, label %polly.loop_header191.preheader, label %vector.ph1031

vector.ph1031:                                    ; preds = %polly.loop_header
  %n.vec1033 = and i64 %88, -4
  br label %vector.body1027

vector.body1027:                                  ; preds = %vector.body1027, %vector.ph1031
  %index1034 = phi i64 [ 0, %vector.ph1031 ], [ %index.next1035, %vector.body1027 ]
  %90 = shl nuw nsw i64 %index1034, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1038 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1038, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1035 = add i64 %index1034, 4
  %95 = icmp eq i64 %index.next1035, %n.vec1033
  br i1 %95, label %middle.block1025, label %vector.body1027, !llvm.loop !74

middle.block1025:                                 ; preds = %vector.body1027
  %cmp.n1037 = icmp eq i64 %88, %n.vec1033
  br i1 %cmp.n1037, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1025
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1033, %middle.block1025 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1025
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1029 = add i64 %indvar1028, 1
  br i1 %exitcond831.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond830.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond830.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit223
  %indvars.iv = phi i64 [ 1200, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit223 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit223 ]
  %97 = shl nsw i64 %polly.indvar202, 7
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %98 = mul nsw i64 %polly.indvar202, -128
  %99 = shl nsw i64 %polly.indvar202, 4
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %exitcond829.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond829.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar208, 1200
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_header211
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond820.not = icmp eq i64 %polly.indvar_next209, 1000
  br i1 %exitcond820.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_header211 ]
  %100 = add nuw nsw i64 %polly.indvar214, %97
  %polly.access.mul.call2218 = mul nuw nsw i64 %100, 1000
  %polly.access.add.call2219 = add nuw nsw i64 %polly.access.mul.call2218, %polly.indvar208
  %polly.access.call2220 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2219
  %polly.access.call2220.load = load double, double* %polly.access.call2220, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar214, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2220.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_exit207
  %indvars.iv821 = phi i64 [ %indvars.iv.next822, %polly.loop_exit229 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ %99, %polly.loop_exit207 ]
  %101 = shl nsw i64 %polly.indvar224, 3
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv821, i64 127)
  %102 = add nsw i64 %101, %98
  %103 = mul nsw i64 %polly.indvar224, 64000
  %104 = mul nsw i64 %polly.indvar224, 76800
  %indvars.iv.next824 = or i64 %indvars.iv821, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next824, i64 127)
  %105 = or i64 %101, 1
  %106 = add nsw i64 %105, %98
  %107 = mul nuw nsw i64 %105, 8000
  %108 = mul nuw nsw i64 %105, 9600
  %indvars.iv.next824.1 = add nuw nsw i64 %indvars.iv.next824, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next824.1, i64 127)
  %109 = or i64 %101, 2
  %110 = add nsw i64 %109, %98
  %111 = mul nuw nsw i64 %109, 8000
  %112 = mul nuw nsw i64 %109, 9600
  %indvars.iv.next824.2 = or i64 %indvars.iv821, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next824.2, i64 127)
  %113 = or i64 %101, 3
  %114 = add nsw i64 %113, %98
  %115 = mul nuw nsw i64 %113, 8000
  %116 = mul nuw nsw i64 %113, 9600
  %indvars.iv.next824.3 = add nuw nsw i64 %indvars.iv.next824.2, 1
  %smin.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next824.3, i64 127)
  %117 = or i64 %101, 4
  %118 = add nsw i64 %117, %98
  %119 = mul nuw nsw i64 %117, 8000
  %120 = mul nuw nsw i64 %117, 9600
  %indvars.iv.next824.4 = add nuw nsw i64 %indvars.iv.next824.2, 2
  %smin.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next824.4, i64 127)
  %121 = or i64 %101, 5
  %122 = add nsw i64 %121, %98
  %123 = mul nuw nsw i64 %121, 8000
  %124 = mul nuw nsw i64 %121, 9600
  %indvars.iv.next824.5 = add nuw nsw i64 %indvars.iv.next824.2, 3
  %smin.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next824.5, i64 127)
  %125 = or i64 %101, 6
  %126 = add nsw i64 %125, %98
  %127 = mul nuw nsw i64 %125, 8000
  %128 = mul nuw nsw i64 %125, 9600
  %indvars.iv.next824.6 = or i64 %indvars.iv821, 7
  %smin.7 = call i64 @llvm.smin.i64(i64 %indvars.iv.next824.6, i64 127)
  %129 = or i64 %101, 7
  %130 = add nsw i64 %129, %98
  %131 = mul nuw nsw i64 %129, 8000
  %132 = mul nuw nsw i64 %129, 9600
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit241.7
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next822 = add nuw nsw i64 %indvars.iv821, 8
  %exitcond828.not = icmp eq i64 %polly.indvar_next225, 150
  br i1 %exitcond828.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit241.7, %polly.loop_header221
  %polly.indvar230 = phi i64 [ 0, %polly.loop_header221 ], [ %polly.indvar_next231, %polly.loop_exit241.7 ]
  %133 = shl nuw nsw i64 %polly.indvar230, 3
  %scevgep245 = getelementptr i8, i8* %call1, i64 %133
  %polly.access.mul.Packed_MemRef_call2249 = mul nuw nsw i64 %polly.indvar230, 1200
  %polly.access.add.Packed_MemRef_call2250 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249, %102
  %polly.access.Packed_MemRef_call2251 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250
  %_p_scalar_252 = load double, double* %polly.access.Packed_MemRef_call2251, align 8
  %scevgep258 = getelementptr i8, i8* %scevgep245, i64 %103
  %scevgep258259 = bitcast i8* %scevgep258 to double*
  %_p_scalar_260 = load double, double* %scevgep258259, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %polly.access.add.Packed_MemRef_call2250.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249, %106
  %polly.access.Packed_MemRef_call2251.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.1
  %_p_scalar_252.1 = load double, double* %polly.access.Packed_MemRef_call2251.1, align 8
  %scevgep258.1 = getelementptr i8, i8* %scevgep245, i64 %107
  %scevgep258259.1 = bitcast i8* %scevgep258.1 to double*
  %_p_scalar_260.1 = load double, double* %scevgep258259.1, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239.1

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header227
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %134 = add nuw nsw i64 %polly.indvar242, %97
  %135 = mul nuw nsw i64 %134, 8000
  %scevgep246 = getelementptr i8, i8* %scevgep245, i64 %135
  %scevgep246247 = bitcast i8* %scevgep246 to double*
  %_p_scalar_248 = load double, double* %scevgep246247, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_252, %_p_scalar_248
  %polly.access.add.Packed_MemRef_call2254 = add nuw nsw i64 %polly.indvar242, %polly.access.mul.Packed_MemRef_call2249
  %polly.access.Packed_MemRef_call2255 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254
  %_p_scalar_256 = load double, double* %polly.access.Packed_MemRef_call2255, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_260, %_p_scalar_256
  %136 = shl i64 %134, 3
  %137 = add nuw nsw i64 %136, %104
  %scevgep261 = getelementptr i8, i8* %call, i64 %137
  %scevgep261262 = bitcast i8* %scevgep261 to double*
  %_p_scalar_263 = load double, double* %scevgep261262, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_263
  store double %p_add42.i118, double* %scevgep261262, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond825.not = icmp eq i64 %polly.indvar242, %smin
  br i1 %exitcond825.not, label %polly.loop_exit241, label %polly.loop_header239

polly.start266:                                   ; preds = %kernel_syr2k.exit
  %malloccall268 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header352

polly.exiting267:                                 ; preds = %polly.loop_exit392
  tail call void @free(i8* nonnull %malloccall268)
  br label %kernel_syr2k.exit90

polly.loop_header352:                             ; preds = %polly.loop_exit360, %polly.start266
  %indvar1002 = phi i64 [ %indvar.next1003, %polly.loop_exit360 ], [ 0, %polly.start266 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 1, %polly.start266 ]
  %138 = add i64 %indvar1002, 1
  %139 = mul nuw nsw i64 %polly.indvar355, 9600
  %scevgep364 = getelementptr i8, i8* %call, i64 %139
  %min.iters.check1004 = icmp ult i64 %138, 4
  br i1 %min.iters.check1004, label %polly.loop_header358.preheader, label %vector.ph1005

vector.ph1005:                                    ; preds = %polly.loop_header352
  %n.vec1007 = and i64 %138, -4
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.body1001, %vector.ph1005
  %index1008 = phi i64 [ 0, %vector.ph1005 ], [ %index.next1009, %vector.body1001 ]
  %140 = shl nuw nsw i64 %index1008, 3
  %141 = getelementptr i8, i8* %scevgep364, i64 %140
  %142 = bitcast i8* %141 to <4 x double>*
  %wide.load1012 = load <4 x double>, <4 x double>* %142, align 8, !alias.scope !79, !noalias !81
  %143 = fmul fast <4 x double> %wide.load1012, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %144 = bitcast i8* %141 to <4 x double>*
  store <4 x double> %143, <4 x double>* %144, align 8, !alias.scope !79, !noalias !81
  %index.next1009 = add i64 %index1008, 4
  %145 = icmp eq i64 %index.next1009, %n.vec1007
  br i1 %145, label %middle.block999, label %vector.body1001, !llvm.loop !85

middle.block999:                                  ; preds = %vector.body1001
  %cmp.n1011 = icmp eq i64 %138, %n.vec1007
  br i1 %cmp.n1011, label %polly.loop_exit360, label %polly.loop_header358.preheader

polly.loop_header358.preheader:                   ; preds = %polly.loop_header352, %middle.block999
  %polly.indvar361.ph = phi i64 [ 0, %polly.loop_header352 ], [ %n.vec1007, %middle.block999 ]
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_header358, %middle.block999
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next356, 1200
  %indvar.next1003 = add i64 %indvar1002, 1
  br i1 %exitcond847.not, label %polly.loop_header368.preheader, label %polly.loop_header352

polly.loop_header368.preheader:                   ; preds = %polly.loop_exit360
  %Packed_MemRef_call2269 = bitcast i8* %malloccall268 to double*
  br label %polly.loop_header368

polly.loop_header358:                             ; preds = %polly.loop_header358.preheader, %polly.loop_header358
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_header358 ], [ %polly.indvar361.ph, %polly.loop_header358.preheader ]
  %146 = shl nuw nsw i64 %polly.indvar361, 3
  %scevgep365 = getelementptr i8, i8* %scevgep364, i64 %146
  %scevgep365366 = bitcast i8* %scevgep365 to double*
  %_p_scalar_367 = load double, double* %scevgep365366, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_367, 1.200000e+00
  store double %p_mul.i57, double* %scevgep365366, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next362, %polly.indvar355
  br i1 %exitcond846.not, label %polly.loop_exit360, label %polly.loop_header358, !llvm.loop !86

polly.loop_header368:                             ; preds = %polly.loop_header368.preheader, %polly.loop_exit392
  %indvars.iv832 = phi i64 [ 1200, %polly.loop_header368.preheader ], [ %indvars.iv.next833, %polly.loop_exit392 ]
  %polly.indvar371 = phi i64 [ 0, %polly.loop_header368.preheader ], [ %polly.indvar_next372, %polly.loop_exit392 ]
  %147 = shl nsw i64 %polly.indvar371, 7
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_exit382
  %148 = mul nsw i64 %polly.indvar371, -128
  %149 = shl nsw i64 %polly.indvar371, 4
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_exit398
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %indvars.iv.next833 = add nsw i64 %indvars.iv832, -128
  %exitcond845.not = icmp eq i64 %polly.indvar_next372, 10
  br i1 %exitcond845.not, label %polly.exiting267, label %polly.loop_header368

polly.loop_header374:                             ; preds = %polly.loop_exit382, %polly.loop_header368
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header368 ], [ %polly.indvar_next378, %polly.loop_exit382 ]
  %polly.access.mul.Packed_MemRef_call2269 = mul nuw nsw i64 %polly.indvar377, 1200
  br label %polly.loop_header380

polly.loop_exit382:                               ; preds = %polly.loop_header380
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond835.not = icmp eq i64 %polly.indvar_next378, 1000
  br i1 %exitcond835.not, label %polly.loop_exit376, label %polly.loop_header374

polly.loop_header380:                             ; preds = %polly.loop_header380, %polly.loop_header374
  %polly.indvar383 = phi i64 [ 0, %polly.loop_header374 ], [ %polly.indvar_next384, %polly.loop_header380 ]
  %150 = add nuw nsw i64 %polly.indvar383, %147
  %polly.access.mul.call2387 = mul nuw nsw i64 %150, 1000
  %polly.access.add.call2388 = add nuw nsw i64 %polly.access.mul.call2387, %polly.indvar377
  %polly.access.call2389 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2388
  %polly.access.call2389.load = load double, double* %polly.access.call2389, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2269 = add nuw nsw i64 %polly.indvar383, %polly.access.mul.Packed_MemRef_call2269
  %polly.access.Packed_MemRef_call2269 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269
  store double %polly.access.call2389.load, double* %polly.access.Packed_MemRef_call2269, align 8
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond834.not = icmp eq i64 %polly.indvar_next384, %indvars.iv832
  br i1 %exitcond834.not, label %polly.loop_exit382, label %polly.loop_header380

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.loop_exit376
  %indvars.iv836 = phi i64 [ %indvars.iv.next837, %polly.loop_exit398 ], [ 0, %polly.loop_exit376 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ %149, %polly.loop_exit376 ]
  %151 = shl nsw i64 %polly.indvar393, 3
  %smin840 = call i64 @llvm.smin.i64(i64 %indvars.iv836, i64 127)
  %152 = add nsw i64 %151, %148
  %153 = mul nsw i64 %polly.indvar393, 64000
  %154 = mul nsw i64 %polly.indvar393, 76800
  %indvars.iv.next839 = or i64 %indvars.iv836, 1
  %smin840.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next839, i64 127)
  %155 = or i64 %151, 1
  %156 = add nsw i64 %155, %148
  %157 = mul nuw nsw i64 %155, 8000
  %158 = mul nuw nsw i64 %155, 9600
  %indvars.iv.next839.1 = add nuw nsw i64 %indvars.iv.next839, 1
  %smin840.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next839.1, i64 127)
  %159 = or i64 %151, 2
  %160 = add nsw i64 %159, %148
  %161 = mul nuw nsw i64 %159, 8000
  %162 = mul nuw nsw i64 %159, 9600
  %indvars.iv.next839.2 = or i64 %indvars.iv836, 3
  %smin840.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next839.2, i64 127)
  %163 = or i64 %151, 3
  %164 = add nsw i64 %163, %148
  %165 = mul nuw nsw i64 %163, 8000
  %166 = mul nuw nsw i64 %163, 9600
  %indvars.iv.next839.3 = add nuw nsw i64 %indvars.iv.next839.2, 1
  %smin840.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next839.3, i64 127)
  %167 = or i64 %151, 4
  %168 = add nsw i64 %167, %148
  %169 = mul nuw nsw i64 %167, 8000
  %170 = mul nuw nsw i64 %167, 9600
  %indvars.iv.next839.4 = add nuw nsw i64 %indvars.iv.next839.2, 2
  %smin840.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next839.4, i64 127)
  %171 = or i64 %151, 5
  %172 = add nsw i64 %171, %148
  %173 = mul nuw nsw i64 %171, 8000
  %174 = mul nuw nsw i64 %171, 9600
  %indvars.iv.next839.5 = add nuw nsw i64 %indvars.iv.next839.2, 3
  %smin840.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next839.5, i64 127)
  %175 = or i64 %151, 6
  %176 = add nsw i64 %175, %148
  %177 = mul nuw nsw i64 %175, 8000
  %178 = mul nuw nsw i64 %175, 9600
  %indvars.iv.next839.6 = or i64 %indvars.iv836, 7
  %smin840.7 = call i64 @llvm.smin.i64(i64 %indvars.iv.next839.6, i64 127)
  %179 = or i64 %151, 7
  %180 = add nsw i64 %179, %148
  %181 = mul nuw nsw i64 %179, 8000
  %182 = mul nuw nsw i64 %179, 9600
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_exit410.7
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 8
  %exitcond844.not = icmp eq i64 %polly.indvar_next394, 150
  br i1 %exitcond844.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header396:                             ; preds = %polly.loop_exit410.7, %polly.loop_header390
  %polly.indvar399 = phi i64 [ 0, %polly.loop_header390 ], [ %polly.indvar_next400, %polly.loop_exit410.7 ]
  %183 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep414 = getelementptr i8, i8* %call1, i64 %183
  %polly.access.mul.Packed_MemRef_call2269418 = mul nuw nsw i64 %polly.indvar399, 1200
  %polly.access.add.Packed_MemRef_call2269419 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269418, %152
  %polly.access.Packed_MemRef_call2269420 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269419
  %_p_scalar_421 = load double, double* %polly.access.Packed_MemRef_call2269420, align 8
  %scevgep427 = getelementptr i8, i8* %scevgep414, i64 %153
  %scevgep427428 = bitcast i8* %scevgep427 to double*
  %_p_scalar_429 = load double, double* %scevgep427428, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.access.add.Packed_MemRef_call2269419.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269418, %156
  %polly.access.Packed_MemRef_call2269420.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269419.1
  %_p_scalar_421.1 = load double, double* %polly.access.Packed_MemRef_call2269420.1, align 8
  %scevgep427.1 = getelementptr i8, i8* %scevgep414, i64 %157
  %scevgep427428.1 = bitcast i8* %scevgep427.1 to double*
  %_p_scalar_429.1 = load double, double* %scevgep427428.1, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408.1

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header396
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header396 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %184 = add nuw nsw i64 %polly.indvar411, %147
  %185 = mul nuw nsw i64 %184, 8000
  %scevgep415 = getelementptr i8, i8* %scevgep414, i64 %185
  %scevgep415416 = bitcast i8* %scevgep415 to double*
  %_p_scalar_417 = load double, double* %scevgep415416, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_421, %_p_scalar_417
  %polly.access.add.Packed_MemRef_call2269423 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call2269418
  %polly.access.Packed_MemRef_call2269424 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269423
  %_p_scalar_425 = load double, double* %polly.access.Packed_MemRef_call2269424, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_429, %_p_scalar_425
  %186 = shl i64 %184, 3
  %187 = add nuw nsw i64 %186, %154
  %scevgep430 = getelementptr i8, i8* %call, i64 %187
  %scevgep430431 = bitcast i8* %scevgep430 to double*
  %_p_scalar_432 = load double, double* %scevgep430431, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_432
  store double %p_add42.i79, double* %scevgep430431, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond841.not = icmp eq i64 %polly.indvar411, %smin840
  br i1 %exitcond841.not, label %polly.loop_exit410, label %polly.loop_header408

polly.start435:                                   ; preds = %init_array.exit
  %malloccall437 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header521

polly.exiting436:                                 ; preds = %polly.loop_exit561
  tail call void @free(i8* nonnull %malloccall437)
  br label %kernel_syr2k.exit

polly.loop_header521:                             ; preds = %polly.loop_exit529, %polly.start435
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit529 ], [ 0, %polly.start435 ]
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_exit529 ], [ 1, %polly.start435 ]
  %188 = add i64 %indvar, 1
  %189 = mul nuw nsw i64 %polly.indvar524, 9600
  %scevgep533 = getelementptr i8, i8* %call, i64 %189
  %min.iters.check978 = icmp ult i64 %188, 4
  br i1 %min.iters.check978, label %polly.loop_header527.preheader, label %vector.ph979

vector.ph979:                                     ; preds = %polly.loop_header521
  %n.vec981 = and i64 %188, -4
  br label %vector.body977

vector.body977:                                   ; preds = %vector.body977, %vector.ph979
  %index982 = phi i64 [ 0, %vector.ph979 ], [ %index.next983, %vector.body977 ]
  %190 = shl nuw nsw i64 %index982, 3
  %191 = getelementptr i8, i8* %scevgep533, i64 %190
  %192 = bitcast i8* %191 to <4 x double>*
  %wide.load986 = load <4 x double>, <4 x double>* %192, align 8, !alias.scope !89, !noalias !91
  %193 = fmul fast <4 x double> %wide.load986, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %194 = bitcast i8* %191 to <4 x double>*
  store <4 x double> %193, <4 x double>* %194, align 8, !alias.scope !89, !noalias !91
  %index.next983 = add i64 %index982, 4
  %195 = icmp eq i64 %index.next983, %n.vec981
  br i1 %195, label %middle.block975, label %vector.body977, !llvm.loop !95

middle.block975:                                  ; preds = %vector.body977
  %cmp.n985 = icmp eq i64 %188, %n.vec981
  br i1 %cmp.n985, label %polly.loop_exit529, label %polly.loop_header527.preheader

polly.loop_header527.preheader:                   ; preds = %polly.loop_header521, %middle.block975
  %polly.indvar530.ph = phi i64 [ 0, %polly.loop_header521 ], [ %n.vec981, %middle.block975 ]
  br label %polly.loop_header527

polly.loop_exit529:                               ; preds = %polly.loop_header527, %middle.block975
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %exitcond863.not = icmp eq i64 %polly.indvar_next525, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond863.not, label %polly.loop_header537.preheader, label %polly.loop_header521

polly.loop_header537.preheader:                   ; preds = %polly.loop_exit529
  %Packed_MemRef_call2438 = bitcast i8* %malloccall437 to double*
  br label %polly.loop_header537

polly.loop_header527:                             ; preds = %polly.loop_header527.preheader, %polly.loop_header527
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_header527 ], [ %polly.indvar530.ph, %polly.loop_header527.preheader ]
  %196 = shl nuw nsw i64 %polly.indvar530, 3
  %scevgep534 = getelementptr i8, i8* %scevgep533, i64 %196
  %scevgep534535 = bitcast i8* %scevgep534 to double*
  %_p_scalar_536 = load double, double* %scevgep534535, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_536, 1.200000e+00
  store double %p_mul.i, double* %scevgep534535, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next531, %polly.indvar524
  br i1 %exitcond862.not, label %polly.loop_exit529, label %polly.loop_header527, !llvm.loop !96

polly.loop_header537:                             ; preds = %polly.loop_header537.preheader, %polly.loop_exit561
  %indvars.iv848 = phi i64 [ 1200, %polly.loop_header537.preheader ], [ %indvars.iv.next849, %polly.loop_exit561 ]
  %polly.indvar540 = phi i64 [ 0, %polly.loop_header537.preheader ], [ %polly.indvar_next541, %polly.loop_exit561 ]
  %197 = shl nsw i64 %polly.indvar540, 7
  br label %polly.loop_header543

polly.loop_exit545:                               ; preds = %polly.loop_exit551
  %198 = mul nsw i64 %polly.indvar540, -128
  %199 = shl nsw i64 %polly.indvar540, 4
  br label %polly.loop_header559

polly.loop_exit561:                               ; preds = %polly.loop_exit567
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, -128
  %exitcond861.not = icmp eq i64 %polly.indvar_next541, 10
  br i1 %exitcond861.not, label %polly.exiting436, label %polly.loop_header537

polly.loop_header543:                             ; preds = %polly.loop_exit551, %polly.loop_header537
  %polly.indvar546 = phi i64 [ 0, %polly.loop_header537 ], [ %polly.indvar_next547, %polly.loop_exit551 ]
  %polly.access.mul.Packed_MemRef_call2438 = mul nuw nsw i64 %polly.indvar546, 1200
  br label %polly.loop_header549

polly.loop_exit551:                               ; preds = %polly.loop_header549
  %polly.indvar_next547 = add nuw nsw i64 %polly.indvar546, 1
  %exitcond851.not = icmp eq i64 %polly.indvar_next547, 1000
  br i1 %exitcond851.not, label %polly.loop_exit545, label %polly.loop_header543

polly.loop_header549:                             ; preds = %polly.loop_header549, %polly.loop_header543
  %polly.indvar552 = phi i64 [ 0, %polly.loop_header543 ], [ %polly.indvar_next553, %polly.loop_header549 ]
  %200 = add nuw nsw i64 %polly.indvar552, %197
  %polly.access.mul.call2556 = mul nuw nsw i64 %200, 1000
  %polly.access.add.call2557 = add nuw nsw i64 %polly.access.mul.call2556, %polly.indvar546
  %polly.access.call2558 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2557
  %polly.access.call2558.load = load double, double* %polly.access.call2558, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2438 = add nuw nsw i64 %polly.indvar552, %polly.access.mul.Packed_MemRef_call2438
  %polly.access.Packed_MemRef_call2438 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438
  store double %polly.access.call2558.load, double* %polly.access.Packed_MemRef_call2438, align 8
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %exitcond850.not = icmp eq i64 %polly.indvar_next553, %indvars.iv848
  br i1 %exitcond850.not, label %polly.loop_exit551, label %polly.loop_header549

polly.loop_header559:                             ; preds = %polly.loop_exit567, %polly.loop_exit545
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %polly.loop_exit567 ], [ 0, %polly.loop_exit545 ]
  %polly.indvar562 = phi i64 [ %polly.indvar_next563, %polly.loop_exit567 ], [ %199, %polly.loop_exit545 ]
  %201 = shl nsw i64 %polly.indvar562, 3
  %smin856 = call i64 @llvm.smin.i64(i64 %indvars.iv852, i64 127)
  %202 = add nsw i64 %201, %198
  %203 = mul nsw i64 %polly.indvar562, 64000
  %204 = mul nsw i64 %polly.indvar562, 76800
  %indvars.iv.next855 = or i64 %indvars.iv852, 1
  %smin856.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next855, i64 127)
  %205 = or i64 %201, 1
  %206 = add nsw i64 %205, %198
  %207 = mul nuw nsw i64 %205, 8000
  %208 = mul nuw nsw i64 %205, 9600
  %indvars.iv.next855.1 = add nuw nsw i64 %indvars.iv.next855, 1
  %smin856.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next855.1, i64 127)
  %209 = or i64 %201, 2
  %210 = add nsw i64 %209, %198
  %211 = mul nuw nsw i64 %209, 8000
  %212 = mul nuw nsw i64 %209, 9600
  %indvars.iv.next855.2 = or i64 %indvars.iv852, 3
  %smin856.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next855.2, i64 127)
  %213 = or i64 %201, 3
  %214 = add nsw i64 %213, %198
  %215 = mul nuw nsw i64 %213, 8000
  %216 = mul nuw nsw i64 %213, 9600
  %indvars.iv.next855.3 = add nuw nsw i64 %indvars.iv.next855.2, 1
  %smin856.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next855.3, i64 127)
  %217 = or i64 %201, 4
  %218 = add nsw i64 %217, %198
  %219 = mul nuw nsw i64 %217, 8000
  %220 = mul nuw nsw i64 %217, 9600
  %indvars.iv.next855.4 = add nuw nsw i64 %indvars.iv.next855.2, 2
  %smin856.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next855.4, i64 127)
  %221 = or i64 %201, 5
  %222 = add nsw i64 %221, %198
  %223 = mul nuw nsw i64 %221, 8000
  %224 = mul nuw nsw i64 %221, 9600
  %indvars.iv.next855.5 = add nuw nsw i64 %indvars.iv.next855.2, 3
  %smin856.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next855.5, i64 127)
  %225 = or i64 %201, 6
  %226 = add nsw i64 %225, %198
  %227 = mul nuw nsw i64 %225, 8000
  %228 = mul nuw nsw i64 %225, 9600
  %indvars.iv.next855.6 = or i64 %indvars.iv852, 7
  %smin856.7 = call i64 @llvm.smin.i64(i64 %indvars.iv.next855.6, i64 127)
  %229 = or i64 %201, 7
  %230 = add nsw i64 %229, %198
  %231 = mul nuw nsw i64 %229, 8000
  %232 = mul nuw nsw i64 %229, 9600
  br label %polly.loop_header565

polly.loop_exit567:                               ; preds = %polly.loop_exit579.7
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %indvars.iv.next853 = add nuw nsw i64 %indvars.iv852, 8
  %exitcond860.not = icmp eq i64 %polly.indvar_next563, 150
  br i1 %exitcond860.not, label %polly.loop_exit561, label %polly.loop_header559

polly.loop_header565:                             ; preds = %polly.loop_exit579.7, %polly.loop_header559
  %polly.indvar568 = phi i64 [ 0, %polly.loop_header559 ], [ %polly.indvar_next569, %polly.loop_exit579.7 ]
  %233 = shl nuw nsw i64 %polly.indvar568, 3
  %scevgep583 = getelementptr i8, i8* %call1, i64 %233
  %polly.access.mul.Packed_MemRef_call2438587 = mul nuw nsw i64 %polly.indvar568, 1200
  %polly.access.add.Packed_MemRef_call2438588 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438587, %202
  %polly.access.Packed_MemRef_call2438589 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438588
  %_p_scalar_590 = load double, double* %polly.access.Packed_MemRef_call2438589, align 8
  %scevgep596 = getelementptr i8, i8* %scevgep583, i64 %203
  %scevgep596597 = bitcast i8* %scevgep596 to double*
  %_p_scalar_598 = load double, double* %scevgep596597, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577

polly.loop_exit579:                               ; preds = %polly.loop_header577
  %polly.access.add.Packed_MemRef_call2438588.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438587, %206
  %polly.access.Packed_MemRef_call2438589.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438588.1
  %_p_scalar_590.1 = load double, double* %polly.access.Packed_MemRef_call2438589.1, align 8
  %scevgep596.1 = getelementptr i8, i8* %scevgep583, i64 %207
  %scevgep596597.1 = bitcast i8* %scevgep596.1 to double*
  %_p_scalar_598.1 = load double, double* %scevgep596597.1, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577.1

polly.loop_header577:                             ; preds = %polly.loop_header577, %polly.loop_header565
  %polly.indvar580 = phi i64 [ 0, %polly.loop_header565 ], [ %polly.indvar_next581, %polly.loop_header577 ]
  %234 = add nuw nsw i64 %polly.indvar580, %197
  %235 = mul nuw nsw i64 %234, 8000
  %scevgep584 = getelementptr i8, i8* %scevgep583, i64 %235
  %scevgep584585 = bitcast i8* %scevgep584 to double*
  %_p_scalar_586 = load double, double* %scevgep584585, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_590, %_p_scalar_586
  %polly.access.add.Packed_MemRef_call2438592 = add nuw nsw i64 %polly.indvar580, %polly.access.mul.Packed_MemRef_call2438587
  %polly.access.Packed_MemRef_call2438593 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438592
  %_p_scalar_594 = load double, double* %polly.access.Packed_MemRef_call2438593, align 8
  %p_mul37.i = fmul fast double %_p_scalar_598, %_p_scalar_594
  %236 = shl i64 %234, 3
  %237 = add nuw nsw i64 %236, %204
  %scevgep599 = getelementptr i8, i8* %call, i64 %237
  %scevgep599600 = bitcast i8* %scevgep599 to double*
  %_p_scalar_601 = load double, double* %scevgep599600, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_601
  store double %p_add42.i, double* %scevgep599600, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581 = add nuw nsw i64 %polly.indvar580, 1
  %exitcond857.not = icmp eq i64 %polly.indvar580, %smin856
  br i1 %exitcond857.not, label %polly.loop_exit579, label %polly.loop_header577

polly.loop_header728:                             ; preds = %entry, %polly.loop_exit736
  %indvars.iv888 = phi i64 [ %indvars.iv.next889, %polly.loop_exit736 ], [ 0, %entry ]
  %polly.indvar731 = phi i64 [ %polly.indvar_next732, %polly.loop_exit736 ], [ 0, %entry ]
  %smin890 = call i64 @llvm.smin.i64(i64 %indvars.iv888, i64 -1168)
  %238 = shl nsw i64 %polly.indvar731, 5
  %239 = add nsw i64 %smin890, 1199
  br label %polly.loop_header734

polly.loop_exit736:                               ; preds = %polly.loop_exit742
  %polly.indvar_next732 = add nuw nsw i64 %polly.indvar731, 1
  %indvars.iv.next889 = add nsw i64 %indvars.iv888, -32
  %exitcond893.not = icmp eq i64 %polly.indvar_next732, 38
  br i1 %exitcond893.not, label %polly.loop_header755, label %polly.loop_header728

polly.loop_header734:                             ; preds = %polly.loop_exit742, %polly.loop_header728
  %indvars.iv884 = phi i64 [ %indvars.iv.next885, %polly.loop_exit742 ], [ 0, %polly.loop_header728 ]
  %polly.indvar737 = phi i64 [ %polly.indvar_next738, %polly.loop_exit742 ], [ 0, %polly.loop_header728 ]
  %240 = mul nsw i64 %polly.indvar737, -32
  %smin916 = call i64 @llvm.smin.i64(i64 %240, i64 -1168)
  %241 = add nsw i64 %smin916, 1200
  %smin886 = call i64 @llvm.smin.i64(i64 %indvars.iv884, i64 -1168)
  %242 = shl nsw i64 %polly.indvar737, 5
  %243 = add nsw i64 %smin886, 1199
  br label %polly.loop_header740

polly.loop_exit742:                               ; preds = %polly.loop_exit748
  %polly.indvar_next738 = add nuw nsw i64 %polly.indvar737, 1
  %indvars.iv.next885 = add nsw i64 %indvars.iv884, -32
  %exitcond892.not = icmp eq i64 %polly.indvar_next738, 38
  br i1 %exitcond892.not, label %polly.loop_exit736, label %polly.loop_header734

polly.loop_header740:                             ; preds = %polly.loop_exit748, %polly.loop_header734
  %polly.indvar743 = phi i64 [ 0, %polly.loop_header734 ], [ %polly.indvar_next744, %polly.loop_exit748 ]
  %244 = add nuw nsw i64 %polly.indvar743, %238
  %245 = trunc i64 %244 to i32
  %246 = mul nuw nsw i64 %244, 9600
  %min.iters.check = icmp eq i64 %241, 0
  br i1 %min.iters.check, label %polly.loop_header746, label %vector.ph917

vector.ph917:                                     ; preds = %polly.loop_header740
  %broadcast.splatinsert924 = insertelement <4 x i64> poison, i64 %242, i32 0
  %broadcast.splat925 = shufflevector <4 x i64> %broadcast.splatinsert924, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert926 = insertelement <4 x i32> poison, i32 %245, i32 0
  %broadcast.splat927 = shufflevector <4 x i32> %broadcast.splatinsert926, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body915

vector.body915:                                   ; preds = %vector.body915, %vector.ph917
  %index918 = phi i64 [ 0, %vector.ph917 ], [ %index.next919, %vector.body915 ]
  %vec.ind922 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph917 ], [ %vec.ind.next923, %vector.body915 ]
  %247 = add nuw nsw <4 x i64> %vec.ind922, %broadcast.splat925
  %248 = trunc <4 x i64> %247 to <4 x i32>
  %249 = mul <4 x i32> %broadcast.splat927, %248
  %250 = add <4 x i32> %249, <i32 3, i32 3, i32 3, i32 3>
  %251 = urem <4 x i32> %250, <i32 1200, i32 1200, i32 1200, i32 1200>
  %252 = sitofp <4 x i32> %251 to <4 x double>
  %253 = fmul fast <4 x double> %252, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %254 = extractelement <4 x i64> %247, i32 0
  %255 = shl i64 %254, 3
  %256 = add nuw nsw i64 %255, %246
  %257 = getelementptr i8, i8* %call, i64 %256
  %258 = bitcast i8* %257 to <4 x double>*
  store <4 x double> %253, <4 x double>* %258, align 8, !alias.scope !99, !noalias !101
  %index.next919 = add i64 %index918, 4
  %vec.ind.next923 = add <4 x i64> %vec.ind922, <i64 4, i64 4, i64 4, i64 4>
  %259 = icmp eq i64 %index.next919, %241
  br i1 %259, label %polly.loop_exit748, label %vector.body915, !llvm.loop !104

polly.loop_exit748:                               ; preds = %vector.body915, %polly.loop_header746
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %exitcond891.not = icmp eq i64 %polly.indvar743, %239
  br i1 %exitcond891.not, label %polly.loop_exit742, label %polly.loop_header740

polly.loop_header746:                             ; preds = %polly.loop_header740, %polly.loop_header746
  %polly.indvar749 = phi i64 [ %polly.indvar_next750, %polly.loop_header746 ], [ 0, %polly.loop_header740 ]
  %260 = add nuw nsw i64 %polly.indvar749, %242
  %261 = trunc i64 %260 to i32
  %262 = mul i32 %261, %245
  %263 = add i32 %262, 3
  %264 = urem i32 %263, 1200
  %p_conv31.i = sitofp i32 %264 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %265 = shl i64 %260, 3
  %266 = add nuw nsw i64 %265, %246
  %scevgep752 = getelementptr i8, i8* %call, i64 %266
  %scevgep752753 = bitcast i8* %scevgep752 to double*
  store double %p_div33.i, double* %scevgep752753, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %exitcond887.not = icmp eq i64 %polly.indvar749, %243
  br i1 %exitcond887.not, label %polly.loop_exit748, label %polly.loop_header746, !llvm.loop !105

polly.loop_header755:                             ; preds = %polly.loop_exit736, %polly.loop_exit763
  %indvars.iv878 = phi i64 [ %indvars.iv.next879, %polly.loop_exit763 ], [ 0, %polly.loop_exit736 ]
  %polly.indvar758 = phi i64 [ %polly.indvar_next759, %polly.loop_exit763 ], [ 0, %polly.loop_exit736 ]
  %smin880 = call i64 @llvm.smin.i64(i64 %indvars.iv878, i64 -1168)
  %267 = shl nsw i64 %polly.indvar758, 5
  %268 = add nsw i64 %smin880, 1199
  br label %polly.loop_header761

polly.loop_exit763:                               ; preds = %polly.loop_exit769
  %polly.indvar_next759 = add nuw nsw i64 %polly.indvar758, 1
  %indvars.iv.next879 = add nsw i64 %indvars.iv878, -32
  %exitcond883.not = icmp eq i64 %polly.indvar_next759, 38
  br i1 %exitcond883.not, label %polly.loop_header781, label %polly.loop_header755

polly.loop_header761:                             ; preds = %polly.loop_exit769, %polly.loop_header755
  %indvars.iv874 = phi i64 [ %indvars.iv.next875, %polly.loop_exit769 ], [ 0, %polly.loop_header755 ]
  %polly.indvar764 = phi i64 [ %polly.indvar_next765, %polly.loop_exit769 ], [ 0, %polly.loop_header755 ]
  %269 = mul nsw i64 %polly.indvar764, -32
  %smin931 = call i64 @llvm.smin.i64(i64 %269, i64 -968)
  %270 = add nsw i64 %smin931, 1000
  %smin876 = call i64 @llvm.smin.i64(i64 %indvars.iv874, i64 -968)
  %271 = shl nsw i64 %polly.indvar764, 5
  %272 = add nsw i64 %smin876, 999
  br label %polly.loop_header767

polly.loop_exit769:                               ; preds = %polly.loop_exit775
  %polly.indvar_next765 = add nuw nsw i64 %polly.indvar764, 1
  %indvars.iv.next875 = add nsw i64 %indvars.iv874, -32
  %exitcond882.not = icmp eq i64 %polly.indvar_next765, 32
  br i1 %exitcond882.not, label %polly.loop_exit763, label %polly.loop_header761

polly.loop_header767:                             ; preds = %polly.loop_exit775, %polly.loop_header761
  %polly.indvar770 = phi i64 [ 0, %polly.loop_header761 ], [ %polly.indvar_next771, %polly.loop_exit775 ]
  %273 = add nuw nsw i64 %polly.indvar770, %267
  %274 = trunc i64 %273 to i32
  %275 = mul nuw nsw i64 %273, 8000
  %min.iters.check932 = icmp eq i64 %270, 0
  br i1 %min.iters.check932, label %polly.loop_header773, label %vector.ph933

vector.ph933:                                     ; preds = %polly.loop_header767
  %broadcast.splatinsert942 = insertelement <4 x i64> poison, i64 %271, i32 0
  %broadcast.splat943 = shufflevector <4 x i64> %broadcast.splatinsert942, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert944 = insertelement <4 x i32> poison, i32 %274, i32 0
  %broadcast.splat945 = shufflevector <4 x i32> %broadcast.splatinsert944, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body930

vector.body930:                                   ; preds = %vector.body930, %vector.ph933
  %index936 = phi i64 [ 0, %vector.ph933 ], [ %index.next937, %vector.body930 ]
  %vec.ind940 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph933 ], [ %vec.ind.next941, %vector.body930 ]
  %276 = add nuw nsw <4 x i64> %vec.ind940, %broadcast.splat943
  %277 = trunc <4 x i64> %276 to <4 x i32>
  %278 = mul <4 x i32> %broadcast.splat945, %277
  %279 = add <4 x i32> %278, <i32 2, i32 2, i32 2, i32 2>
  %280 = urem <4 x i32> %279, <i32 1000, i32 1000, i32 1000, i32 1000>
  %281 = sitofp <4 x i32> %280 to <4 x double>
  %282 = fmul fast <4 x double> %281, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %283 = extractelement <4 x i64> %276, i32 0
  %284 = shl i64 %283, 3
  %285 = add nuw nsw i64 %284, %275
  %286 = getelementptr i8, i8* %call2, i64 %285
  %287 = bitcast i8* %286 to <4 x double>*
  store <4 x double> %282, <4 x double>* %287, align 8, !alias.scope !103, !noalias !106
  %index.next937 = add i64 %index936, 4
  %vec.ind.next941 = add <4 x i64> %vec.ind940, <i64 4, i64 4, i64 4, i64 4>
  %288 = icmp eq i64 %index.next937, %270
  br i1 %288, label %polly.loop_exit775, label %vector.body930, !llvm.loop !107

polly.loop_exit775:                               ; preds = %vector.body930, %polly.loop_header773
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %exitcond881.not = icmp eq i64 %polly.indvar770, %268
  br i1 %exitcond881.not, label %polly.loop_exit769, label %polly.loop_header767

polly.loop_header773:                             ; preds = %polly.loop_header767, %polly.loop_header773
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_header773 ], [ 0, %polly.loop_header767 ]
  %289 = add nuw nsw i64 %polly.indvar776, %271
  %290 = trunc i64 %289 to i32
  %291 = mul i32 %290, %274
  %292 = add i32 %291, 2
  %293 = urem i32 %292, 1000
  %p_conv10.i = sitofp i32 %293 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %294 = shl i64 %289, 3
  %295 = add nuw nsw i64 %294, %275
  %scevgep779 = getelementptr i8, i8* %call2, i64 %295
  %scevgep779780 = bitcast i8* %scevgep779 to double*
  store double %p_div12.i, double* %scevgep779780, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %exitcond877.not = icmp eq i64 %polly.indvar776, %272
  br i1 %exitcond877.not, label %polly.loop_exit775, label %polly.loop_header773, !llvm.loop !108

polly.loop_header781:                             ; preds = %polly.loop_exit763, %polly.loop_exit789
  %indvars.iv868 = phi i64 [ %indvars.iv.next869, %polly.loop_exit789 ], [ 0, %polly.loop_exit763 ]
  %polly.indvar784 = phi i64 [ %polly.indvar_next785, %polly.loop_exit789 ], [ 0, %polly.loop_exit763 ]
  %smin870 = call i64 @llvm.smin.i64(i64 %indvars.iv868, i64 -1168)
  %296 = shl nsw i64 %polly.indvar784, 5
  %297 = add nsw i64 %smin870, 1199
  br label %polly.loop_header787

polly.loop_exit789:                               ; preds = %polly.loop_exit795
  %polly.indvar_next785 = add nuw nsw i64 %polly.indvar784, 1
  %indvars.iv.next869 = add nsw i64 %indvars.iv868, -32
  %exitcond873.not = icmp eq i64 %polly.indvar_next785, 38
  br i1 %exitcond873.not, label %init_array.exit, label %polly.loop_header781

polly.loop_header787:                             ; preds = %polly.loop_exit795, %polly.loop_header781
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %polly.loop_exit795 ], [ 0, %polly.loop_header781 ]
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %polly.loop_header781 ]
  %298 = mul nsw i64 %polly.indvar790, -32
  %smin949 = call i64 @llvm.smin.i64(i64 %298, i64 -968)
  %299 = add nsw i64 %smin949, 1000
  %smin866 = call i64 @llvm.smin.i64(i64 %indvars.iv864, i64 -968)
  %300 = shl nsw i64 %polly.indvar790, 5
  %301 = add nsw i64 %smin866, 999
  br label %polly.loop_header793

polly.loop_exit795:                               ; preds = %polly.loop_exit801
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %indvars.iv.next865 = add nsw i64 %indvars.iv864, -32
  %exitcond872.not = icmp eq i64 %polly.indvar_next791, 32
  br i1 %exitcond872.not, label %polly.loop_exit789, label %polly.loop_header787

polly.loop_header793:                             ; preds = %polly.loop_exit801, %polly.loop_header787
  %polly.indvar796 = phi i64 [ 0, %polly.loop_header787 ], [ %polly.indvar_next797, %polly.loop_exit801 ]
  %302 = add nuw nsw i64 %polly.indvar796, %296
  %303 = trunc i64 %302 to i32
  %304 = mul nuw nsw i64 %302, 8000
  %min.iters.check950 = icmp eq i64 %299, 0
  br i1 %min.iters.check950, label %polly.loop_header799, label %vector.ph951

vector.ph951:                                     ; preds = %polly.loop_header793
  %broadcast.splatinsert960 = insertelement <4 x i64> poison, i64 %300, i32 0
  %broadcast.splat961 = shufflevector <4 x i64> %broadcast.splatinsert960, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert962 = insertelement <4 x i32> poison, i32 %303, i32 0
  %broadcast.splat963 = shufflevector <4 x i32> %broadcast.splatinsert962, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body948

vector.body948:                                   ; preds = %vector.body948, %vector.ph951
  %index954 = phi i64 [ 0, %vector.ph951 ], [ %index.next955, %vector.body948 ]
  %vec.ind958 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph951 ], [ %vec.ind.next959, %vector.body948 ]
  %305 = add nuw nsw <4 x i64> %vec.ind958, %broadcast.splat961
  %306 = trunc <4 x i64> %305 to <4 x i32>
  %307 = mul <4 x i32> %broadcast.splat963, %306
  %308 = add <4 x i32> %307, <i32 1, i32 1, i32 1, i32 1>
  %309 = urem <4 x i32> %308, <i32 1200, i32 1200, i32 1200, i32 1200>
  %310 = sitofp <4 x i32> %309 to <4 x double>
  %311 = fmul fast <4 x double> %310, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %312 = extractelement <4 x i64> %305, i32 0
  %313 = shl i64 %312, 3
  %314 = add nuw nsw i64 %313, %304
  %315 = getelementptr i8, i8* %call1, i64 %314
  %316 = bitcast i8* %315 to <4 x double>*
  store <4 x double> %311, <4 x double>* %316, align 8, !alias.scope !102, !noalias !109
  %index.next955 = add i64 %index954, 4
  %vec.ind.next959 = add <4 x i64> %vec.ind958, <i64 4, i64 4, i64 4, i64 4>
  %317 = icmp eq i64 %index.next955, %299
  br i1 %317, label %polly.loop_exit801, label %vector.body948, !llvm.loop !110

polly.loop_exit801:                               ; preds = %vector.body948, %polly.loop_header799
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond871.not = icmp eq i64 %polly.indvar796, %297
  br i1 %exitcond871.not, label %polly.loop_exit795, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_header793, %polly.loop_header799
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_header799 ], [ 0, %polly.loop_header793 ]
  %318 = add nuw nsw i64 %polly.indvar802, %300
  %319 = trunc i64 %318 to i32
  %320 = mul i32 %319, %303
  %321 = add i32 %320, 1
  %322 = urem i32 %321, 1200
  %p_conv.i = sitofp i32 %322 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %323 = shl i64 %318, 3
  %324 = add nuw nsw i64 %323, %304
  %scevgep806 = getelementptr i8, i8* %call1, i64 %324
  %scevgep806807 = bitcast i8* %scevgep806 to double*
  store double %p_div.i, double* %scevgep806807, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %exitcond867.not = icmp eq i64 %polly.indvar802, %301
  br i1 %exitcond867.not, label %polly.loop_exit801, label %polly.loop_header799, !llvm.loop !111

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_exit241
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_exit241 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %325 = add nuw nsw i64 %polly.indvar242.1, %97
  %326 = mul nuw nsw i64 %325, 8000
  %scevgep246.1 = getelementptr i8, i8* %scevgep245, i64 %326
  %scevgep246247.1 = bitcast i8* %scevgep246.1 to double*
  %_p_scalar_248.1 = load double, double* %scevgep246247.1, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.1 = fmul fast double %_p_scalar_252.1, %_p_scalar_248.1
  %polly.access.add.Packed_MemRef_call2254.1 = add nuw nsw i64 %polly.indvar242.1, %polly.access.mul.Packed_MemRef_call2249
  %polly.access.Packed_MemRef_call2255.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.1
  %_p_scalar_256.1 = load double, double* %polly.access.Packed_MemRef_call2255.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_260.1, %_p_scalar_256.1
  %327 = shl i64 %325, 3
  %328 = add nuw nsw i64 %327, %108
  %scevgep261.1 = getelementptr i8, i8* %call, i64 %328
  %scevgep261262.1 = bitcast i8* %scevgep261.1 to double*
  %_p_scalar_263.1 = load double, double* %scevgep261262.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_263.1
  store double %p_add42.i118.1, double* %scevgep261262.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %exitcond825.1.not = icmp eq i64 %polly.indvar242.1, %smin.1
  br i1 %exitcond825.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.1

polly.loop_exit241.1:                             ; preds = %polly.loop_header239.1
  %polly.access.add.Packed_MemRef_call2250.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249, %110
  %polly.access.Packed_MemRef_call2251.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.2
  %_p_scalar_252.2 = load double, double* %polly.access.Packed_MemRef_call2251.2, align 8
  %scevgep258.2 = getelementptr i8, i8* %scevgep245, i64 %111
  %scevgep258259.2 = bitcast i8* %scevgep258.2 to double*
  %_p_scalar_260.2 = load double, double* %scevgep258259.2, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239.2

polly.loop_header239.2:                           ; preds = %polly.loop_header239.2, %polly.loop_exit241.1
  %polly.indvar242.2 = phi i64 [ 0, %polly.loop_exit241.1 ], [ %polly.indvar_next243.2, %polly.loop_header239.2 ]
  %329 = add nuw nsw i64 %polly.indvar242.2, %97
  %330 = mul nuw nsw i64 %329, 8000
  %scevgep246.2 = getelementptr i8, i8* %scevgep245, i64 %330
  %scevgep246247.2 = bitcast i8* %scevgep246.2 to double*
  %_p_scalar_248.2 = load double, double* %scevgep246247.2, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.2 = fmul fast double %_p_scalar_252.2, %_p_scalar_248.2
  %polly.access.add.Packed_MemRef_call2254.2 = add nuw nsw i64 %polly.indvar242.2, %polly.access.mul.Packed_MemRef_call2249
  %polly.access.Packed_MemRef_call2255.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.2
  %_p_scalar_256.2 = load double, double* %polly.access.Packed_MemRef_call2255.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_260.2, %_p_scalar_256.2
  %331 = shl i64 %329, 3
  %332 = add nuw nsw i64 %331, %112
  %scevgep261.2 = getelementptr i8, i8* %call, i64 %332
  %scevgep261262.2 = bitcast i8* %scevgep261.2 to double*
  %_p_scalar_263.2 = load double, double* %scevgep261262.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_263.2
  store double %p_add42.i118.2, double* %scevgep261262.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.2 = add nuw nsw i64 %polly.indvar242.2, 1
  %exitcond825.2.not = icmp eq i64 %polly.indvar242.2, %smin.2
  br i1 %exitcond825.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.2

polly.loop_exit241.2:                             ; preds = %polly.loop_header239.2
  %polly.access.add.Packed_MemRef_call2250.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249, %114
  %polly.access.Packed_MemRef_call2251.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.3
  %_p_scalar_252.3 = load double, double* %polly.access.Packed_MemRef_call2251.3, align 8
  %scevgep258.3 = getelementptr i8, i8* %scevgep245, i64 %115
  %scevgep258259.3 = bitcast i8* %scevgep258.3 to double*
  %_p_scalar_260.3 = load double, double* %scevgep258259.3, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239.3

polly.loop_header239.3:                           ; preds = %polly.loop_header239.3, %polly.loop_exit241.2
  %polly.indvar242.3 = phi i64 [ 0, %polly.loop_exit241.2 ], [ %polly.indvar_next243.3, %polly.loop_header239.3 ]
  %333 = add nuw nsw i64 %polly.indvar242.3, %97
  %334 = mul nuw nsw i64 %333, 8000
  %scevgep246.3 = getelementptr i8, i8* %scevgep245, i64 %334
  %scevgep246247.3 = bitcast i8* %scevgep246.3 to double*
  %_p_scalar_248.3 = load double, double* %scevgep246247.3, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.3 = fmul fast double %_p_scalar_252.3, %_p_scalar_248.3
  %polly.access.add.Packed_MemRef_call2254.3 = add nuw nsw i64 %polly.indvar242.3, %polly.access.mul.Packed_MemRef_call2249
  %polly.access.Packed_MemRef_call2255.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.3
  %_p_scalar_256.3 = load double, double* %polly.access.Packed_MemRef_call2255.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_260.3, %_p_scalar_256.3
  %335 = shl i64 %333, 3
  %336 = add nuw nsw i64 %335, %116
  %scevgep261.3 = getelementptr i8, i8* %call, i64 %336
  %scevgep261262.3 = bitcast i8* %scevgep261.3 to double*
  %_p_scalar_263.3 = load double, double* %scevgep261262.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_263.3
  store double %p_add42.i118.3, double* %scevgep261262.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.3 = add nuw nsw i64 %polly.indvar242.3, 1
  %exitcond825.3.not = icmp eq i64 %polly.indvar242.3, %smin.3
  br i1 %exitcond825.3.not, label %polly.loop_exit241.3, label %polly.loop_header239.3

polly.loop_exit241.3:                             ; preds = %polly.loop_header239.3
  %polly.access.add.Packed_MemRef_call2250.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249, %118
  %polly.access.Packed_MemRef_call2251.4 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.4
  %_p_scalar_252.4 = load double, double* %polly.access.Packed_MemRef_call2251.4, align 8
  %scevgep258.4 = getelementptr i8, i8* %scevgep245, i64 %119
  %scevgep258259.4 = bitcast i8* %scevgep258.4 to double*
  %_p_scalar_260.4 = load double, double* %scevgep258259.4, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239.4

polly.loop_header239.4:                           ; preds = %polly.loop_header239.4, %polly.loop_exit241.3
  %polly.indvar242.4 = phi i64 [ 0, %polly.loop_exit241.3 ], [ %polly.indvar_next243.4, %polly.loop_header239.4 ]
  %337 = add nuw nsw i64 %polly.indvar242.4, %97
  %338 = mul nuw nsw i64 %337, 8000
  %scevgep246.4 = getelementptr i8, i8* %scevgep245, i64 %338
  %scevgep246247.4 = bitcast i8* %scevgep246.4 to double*
  %_p_scalar_248.4 = load double, double* %scevgep246247.4, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.4 = fmul fast double %_p_scalar_252.4, %_p_scalar_248.4
  %polly.access.add.Packed_MemRef_call2254.4 = add nuw nsw i64 %polly.indvar242.4, %polly.access.mul.Packed_MemRef_call2249
  %polly.access.Packed_MemRef_call2255.4 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.4
  %_p_scalar_256.4 = load double, double* %polly.access.Packed_MemRef_call2255.4, align 8
  %p_mul37.i114.4 = fmul fast double %_p_scalar_260.4, %_p_scalar_256.4
  %339 = shl i64 %337, 3
  %340 = add nuw nsw i64 %339, %120
  %scevgep261.4 = getelementptr i8, i8* %call, i64 %340
  %scevgep261262.4 = bitcast i8* %scevgep261.4 to double*
  %_p_scalar_263.4 = load double, double* %scevgep261262.4, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_263.4
  store double %p_add42.i118.4, double* %scevgep261262.4, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.4 = add nuw nsw i64 %polly.indvar242.4, 1
  %exitcond825.4.not = icmp eq i64 %polly.indvar242.4, %smin.4
  br i1 %exitcond825.4.not, label %polly.loop_exit241.4, label %polly.loop_header239.4

polly.loop_exit241.4:                             ; preds = %polly.loop_header239.4
  %polly.access.add.Packed_MemRef_call2250.5 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249, %122
  %polly.access.Packed_MemRef_call2251.5 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.5
  %_p_scalar_252.5 = load double, double* %polly.access.Packed_MemRef_call2251.5, align 8
  %scevgep258.5 = getelementptr i8, i8* %scevgep245, i64 %123
  %scevgep258259.5 = bitcast i8* %scevgep258.5 to double*
  %_p_scalar_260.5 = load double, double* %scevgep258259.5, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239.5

polly.loop_header239.5:                           ; preds = %polly.loop_header239.5, %polly.loop_exit241.4
  %polly.indvar242.5 = phi i64 [ 0, %polly.loop_exit241.4 ], [ %polly.indvar_next243.5, %polly.loop_header239.5 ]
  %341 = add nuw nsw i64 %polly.indvar242.5, %97
  %342 = mul nuw nsw i64 %341, 8000
  %scevgep246.5 = getelementptr i8, i8* %scevgep245, i64 %342
  %scevgep246247.5 = bitcast i8* %scevgep246.5 to double*
  %_p_scalar_248.5 = load double, double* %scevgep246247.5, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.5 = fmul fast double %_p_scalar_252.5, %_p_scalar_248.5
  %polly.access.add.Packed_MemRef_call2254.5 = add nuw nsw i64 %polly.indvar242.5, %polly.access.mul.Packed_MemRef_call2249
  %polly.access.Packed_MemRef_call2255.5 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.5
  %_p_scalar_256.5 = load double, double* %polly.access.Packed_MemRef_call2255.5, align 8
  %p_mul37.i114.5 = fmul fast double %_p_scalar_260.5, %_p_scalar_256.5
  %343 = shl i64 %341, 3
  %344 = add nuw nsw i64 %343, %124
  %scevgep261.5 = getelementptr i8, i8* %call, i64 %344
  %scevgep261262.5 = bitcast i8* %scevgep261.5 to double*
  %_p_scalar_263.5 = load double, double* %scevgep261262.5, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.5 = fadd fast double %p_mul37.i114.5, %p_mul27.i112.5
  %p_reass.mul.i117.5 = fmul fast double %p_reass.add.i116.5, 1.500000e+00
  %p_add42.i118.5 = fadd fast double %p_reass.mul.i117.5, %_p_scalar_263.5
  store double %p_add42.i118.5, double* %scevgep261262.5, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.5 = add nuw nsw i64 %polly.indvar242.5, 1
  %exitcond825.5.not = icmp eq i64 %polly.indvar242.5, %smin.5
  br i1 %exitcond825.5.not, label %polly.loop_exit241.5, label %polly.loop_header239.5

polly.loop_exit241.5:                             ; preds = %polly.loop_header239.5
  %polly.access.add.Packed_MemRef_call2250.6 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249, %126
  %polly.access.Packed_MemRef_call2251.6 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.6
  %_p_scalar_252.6 = load double, double* %polly.access.Packed_MemRef_call2251.6, align 8
  %scevgep258.6 = getelementptr i8, i8* %scevgep245, i64 %127
  %scevgep258259.6 = bitcast i8* %scevgep258.6 to double*
  %_p_scalar_260.6 = load double, double* %scevgep258259.6, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239.6

polly.loop_header239.6:                           ; preds = %polly.loop_header239.6, %polly.loop_exit241.5
  %polly.indvar242.6 = phi i64 [ 0, %polly.loop_exit241.5 ], [ %polly.indvar_next243.6, %polly.loop_header239.6 ]
  %345 = add nuw nsw i64 %polly.indvar242.6, %97
  %346 = mul nuw nsw i64 %345, 8000
  %scevgep246.6 = getelementptr i8, i8* %scevgep245, i64 %346
  %scevgep246247.6 = bitcast i8* %scevgep246.6 to double*
  %_p_scalar_248.6 = load double, double* %scevgep246247.6, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.6 = fmul fast double %_p_scalar_252.6, %_p_scalar_248.6
  %polly.access.add.Packed_MemRef_call2254.6 = add nuw nsw i64 %polly.indvar242.6, %polly.access.mul.Packed_MemRef_call2249
  %polly.access.Packed_MemRef_call2255.6 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.6
  %_p_scalar_256.6 = load double, double* %polly.access.Packed_MemRef_call2255.6, align 8
  %p_mul37.i114.6 = fmul fast double %_p_scalar_260.6, %_p_scalar_256.6
  %347 = shl i64 %345, 3
  %348 = add nuw nsw i64 %347, %128
  %scevgep261.6 = getelementptr i8, i8* %call, i64 %348
  %scevgep261262.6 = bitcast i8* %scevgep261.6 to double*
  %_p_scalar_263.6 = load double, double* %scevgep261262.6, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.6 = fadd fast double %p_mul37.i114.6, %p_mul27.i112.6
  %p_reass.mul.i117.6 = fmul fast double %p_reass.add.i116.6, 1.500000e+00
  %p_add42.i118.6 = fadd fast double %p_reass.mul.i117.6, %_p_scalar_263.6
  store double %p_add42.i118.6, double* %scevgep261262.6, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.6 = add nuw nsw i64 %polly.indvar242.6, 1
  %exitcond825.6.not = icmp eq i64 %polly.indvar242.6, %smin.6
  br i1 %exitcond825.6.not, label %polly.loop_exit241.6, label %polly.loop_header239.6

polly.loop_exit241.6:                             ; preds = %polly.loop_header239.6
  %polly.access.add.Packed_MemRef_call2250.7 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249, %130
  %polly.access.Packed_MemRef_call2251.7 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.7
  %_p_scalar_252.7 = load double, double* %polly.access.Packed_MemRef_call2251.7, align 8
  %scevgep258.7 = getelementptr i8, i8* %scevgep245, i64 %131
  %scevgep258259.7 = bitcast i8* %scevgep258.7 to double*
  %_p_scalar_260.7 = load double, double* %scevgep258259.7, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239.7

polly.loop_header239.7:                           ; preds = %polly.loop_header239.7, %polly.loop_exit241.6
  %polly.indvar242.7 = phi i64 [ 0, %polly.loop_exit241.6 ], [ %polly.indvar_next243.7, %polly.loop_header239.7 ]
  %349 = add nuw nsw i64 %polly.indvar242.7, %97
  %350 = mul nuw nsw i64 %349, 8000
  %scevgep246.7 = getelementptr i8, i8* %scevgep245, i64 %350
  %scevgep246247.7 = bitcast i8* %scevgep246.7 to double*
  %_p_scalar_248.7 = load double, double* %scevgep246247.7, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.7 = fmul fast double %_p_scalar_252.7, %_p_scalar_248.7
  %polly.access.add.Packed_MemRef_call2254.7 = add nuw nsw i64 %polly.indvar242.7, %polly.access.mul.Packed_MemRef_call2249
  %polly.access.Packed_MemRef_call2255.7 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.7
  %_p_scalar_256.7 = load double, double* %polly.access.Packed_MemRef_call2255.7, align 8
  %p_mul37.i114.7 = fmul fast double %_p_scalar_260.7, %_p_scalar_256.7
  %351 = shl i64 %349, 3
  %352 = add nuw nsw i64 %351, %132
  %scevgep261.7 = getelementptr i8, i8* %call, i64 %352
  %scevgep261262.7 = bitcast i8* %scevgep261.7 to double*
  %_p_scalar_263.7 = load double, double* %scevgep261262.7, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.7 = fadd fast double %p_mul37.i114.7, %p_mul27.i112.7
  %p_reass.mul.i117.7 = fmul fast double %p_reass.add.i116.7, 1.500000e+00
  %p_add42.i118.7 = fadd fast double %p_reass.mul.i117.7, %_p_scalar_263.7
  store double %p_add42.i118.7, double* %scevgep261262.7, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.7 = add nuw nsw i64 %polly.indvar242.7, 1
  %exitcond825.7.not = icmp eq i64 %polly.indvar242.7, %smin.7
  br i1 %exitcond825.7.not, label %polly.loop_exit241.7, label %polly.loop_header239.7

polly.loop_exit241.7:                             ; preds = %polly.loop_header239.7
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next231, 1000
  br i1 %exitcond827.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header408.1:                           ; preds = %polly.loop_header408.1, %polly.loop_exit410
  %polly.indvar411.1 = phi i64 [ 0, %polly.loop_exit410 ], [ %polly.indvar_next412.1, %polly.loop_header408.1 ]
  %353 = add nuw nsw i64 %polly.indvar411.1, %147
  %354 = mul nuw nsw i64 %353, 8000
  %scevgep415.1 = getelementptr i8, i8* %scevgep414, i64 %354
  %scevgep415416.1 = bitcast i8* %scevgep415.1 to double*
  %_p_scalar_417.1 = load double, double* %scevgep415416.1, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.1 = fmul fast double %_p_scalar_421.1, %_p_scalar_417.1
  %polly.access.add.Packed_MemRef_call2269423.1 = add nuw nsw i64 %polly.indvar411.1, %polly.access.mul.Packed_MemRef_call2269418
  %polly.access.Packed_MemRef_call2269424.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269423.1
  %_p_scalar_425.1 = load double, double* %polly.access.Packed_MemRef_call2269424.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_429.1, %_p_scalar_425.1
  %355 = shl i64 %353, 3
  %356 = add nuw nsw i64 %355, %158
  %scevgep430.1 = getelementptr i8, i8* %call, i64 %356
  %scevgep430431.1 = bitcast i8* %scevgep430.1 to double*
  %_p_scalar_432.1 = load double, double* %scevgep430431.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_432.1
  store double %p_add42.i79.1, double* %scevgep430431.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412.1 = add nuw nsw i64 %polly.indvar411.1, 1
  %exitcond841.1.not = icmp eq i64 %polly.indvar411.1, %smin840.1
  br i1 %exitcond841.1.not, label %polly.loop_exit410.1, label %polly.loop_header408.1

polly.loop_exit410.1:                             ; preds = %polly.loop_header408.1
  %polly.access.add.Packed_MemRef_call2269419.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269418, %160
  %polly.access.Packed_MemRef_call2269420.2 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269419.2
  %_p_scalar_421.2 = load double, double* %polly.access.Packed_MemRef_call2269420.2, align 8
  %scevgep427.2 = getelementptr i8, i8* %scevgep414, i64 %161
  %scevgep427428.2 = bitcast i8* %scevgep427.2 to double*
  %_p_scalar_429.2 = load double, double* %scevgep427428.2, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408.2

polly.loop_header408.2:                           ; preds = %polly.loop_header408.2, %polly.loop_exit410.1
  %polly.indvar411.2 = phi i64 [ 0, %polly.loop_exit410.1 ], [ %polly.indvar_next412.2, %polly.loop_header408.2 ]
  %357 = add nuw nsw i64 %polly.indvar411.2, %147
  %358 = mul nuw nsw i64 %357, 8000
  %scevgep415.2 = getelementptr i8, i8* %scevgep414, i64 %358
  %scevgep415416.2 = bitcast i8* %scevgep415.2 to double*
  %_p_scalar_417.2 = load double, double* %scevgep415416.2, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.2 = fmul fast double %_p_scalar_421.2, %_p_scalar_417.2
  %polly.access.add.Packed_MemRef_call2269423.2 = add nuw nsw i64 %polly.indvar411.2, %polly.access.mul.Packed_MemRef_call2269418
  %polly.access.Packed_MemRef_call2269424.2 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269423.2
  %_p_scalar_425.2 = load double, double* %polly.access.Packed_MemRef_call2269424.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_429.2, %_p_scalar_425.2
  %359 = shl i64 %357, 3
  %360 = add nuw nsw i64 %359, %162
  %scevgep430.2 = getelementptr i8, i8* %call, i64 %360
  %scevgep430431.2 = bitcast i8* %scevgep430.2 to double*
  %_p_scalar_432.2 = load double, double* %scevgep430431.2, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_432.2
  store double %p_add42.i79.2, double* %scevgep430431.2, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412.2 = add nuw nsw i64 %polly.indvar411.2, 1
  %exitcond841.2.not = icmp eq i64 %polly.indvar411.2, %smin840.2
  br i1 %exitcond841.2.not, label %polly.loop_exit410.2, label %polly.loop_header408.2

polly.loop_exit410.2:                             ; preds = %polly.loop_header408.2
  %polly.access.add.Packed_MemRef_call2269419.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269418, %164
  %polly.access.Packed_MemRef_call2269420.3 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269419.3
  %_p_scalar_421.3 = load double, double* %polly.access.Packed_MemRef_call2269420.3, align 8
  %scevgep427.3 = getelementptr i8, i8* %scevgep414, i64 %165
  %scevgep427428.3 = bitcast i8* %scevgep427.3 to double*
  %_p_scalar_429.3 = load double, double* %scevgep427428.3, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408.3

polly.loop_header408.3:                           ; preds = %polly.loop_header408.3, %polly.loop_exit410.2
  %polly.indvar411.3 = phi i64 [ 0, %polly.loop_exit410.2 ], [ %polly.indvar_next412.3, %polly.loop_header408.3 ]
  %361 = add nuw nsw i64 %polly.indvar411.3, %147
  %362 = mul nuw nsw i64 %361, 8000
  %scevgep415.3 = getelementptr i8, i8* %scevgep414, i64 %362
  %scevgep415416.3 = bitcast i8* %scevgep415.3 to double*
  %_p_scalar_417.3 = load double, double* %scevgep415416.3, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.3 = fmul fast double %_p_scalar_421.3, %_p_scalar_417.3
  %polly.access.add.Packed_MemRef_call2269423.3 = add nuw nsw i64 %polly.indvar411.3, %polly.access.mul.Packed_MemRef_call2269418
  %polly.access.Packed_MemRef_call2269424.3 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269423.3
  %_p_scalar_425.3 = load double, double* %polly.access.Packed_MemRef_call2269424.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_429.3, %_p_scalar_425.3
  %363 = shl i64 %361, 3
  %364 = add nuw nsw i64 %363, %166
  %scevgep430.3 = getelementptr i8, i8* %call, i64 %364
  %scevgep430431.3 = bitcast i8* %scevgep430.3 to double*
  %_p_scalar_432.3 = load double, double* %scevgep430431.3, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_432.3
  store double %p_add42.i79.3, double* %scevgep430431.3, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412.3 = add nuw nsw i64 %polly.indvar411.3, 1
  %exitcond841.3.not = icmp eq i64 %polly.indvar411.3, %smin840.3
  br i1 %exitcond841.3.not, label %polly.loop_exit410.3, label %polly.loop_header408.3

polly.loop_exit410.3:                             ; preds = %polly.loop_header408.3
  %polly.access.add.Packed_MemRef_call2269419.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269418, %168
  %polly.access.Packed_MemRef_call2269420.4 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269419.4
  %_p_scalar_421.4 = load double, double* %polly.access.Packed_MemRef_call2269420.4, align 8
  %scevgep427.4 = getelementptr i8, i8* %scevgep414, i64 %169
  %scevgep427428.4 = bitcast i8* %scevgep427.4 to double*
  %_p_scalar_429.4 = load double, double* %scevgep427428.4, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408.4

polly.loop_header408.4:                           ; preds = %polly.loop_header408.4, %polly.loop_exit410.3
  %polly.indvar411.4 = phi i64 [ 0, %polly.loop_exit410.3 ], [ %polly.indvar_next412.4, %polly.loop_header408.4 ]
  %365 = add nuw nsw i64 %polly.indvar411.4, %147
  %366 = mul nuw nsw i64 %365, 8000
  %scevgep415.4 = getelementptr i8, i8* %scevgep414, i64 %366
  %scevgep415416.4 = bitcast i8* %scevgep415.4 to double*
  %_p_scalar_417.4 = load double, double* %scevgep415416.4, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.4 = fmul fast double %_p_scalar_421.4, %_p_scalar_417.4
  %polly.access.add.Packed_MemRef_call2269423.4 = add nuw nsw i64 %polly.indvar411.4, %polly.access.mul.Packed_MemRef_call2269418
  %polly.access.Packed_MemRef_call2269424.4 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269423.4
  %_p_scalar_425.4 = load double, double* %polly.access.Packed_MemRef_call2269424.4, align 8
  %p_mul37.i75.4 = fmul fast double %_p_scalar_429.4, %_p_scalar_425.4
  %367 = shl i64 %365, 3
  %368 = add nuw nsw i64 %367, %170
  %scevgep430.4 = getelementptr i8, i8* %call, i64 %368
  %scevgep430431.4 = bitcast i8* %scevgep430.4 to double*
  %_p_scalar_432.4 = load double, double* %scevgep430431.4, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_432.4
  store double %p_add42.i79.4, double* %scevgep430431.4, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412.4 = add nuw nsw i64 %polly.indvar411.4, 1
  %exitcond841.4.not = icmp eq i64 %polly.indvar411.4, %smin840.4
  br i1 %exitcond841.4.not, label %polly.loop_exit410.4, label %polly.loop_header408.4

polly.loop_exit410.4:                             ; preds = %polly.loop_header408.4
  %polly.access.add.Packed_MemRef_call2269419.5 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269418, %172
  %polly.access.Packed_MemRef_call2269420.5 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269419.5
  %_p_scalar_421.5 = load double, double* %polly.access.Packed_MemRef_call2269420.5, align 8
  %scevgep427.5 = getelementptr i8, i8* %scevgep414, i64 %173
  %scevgep427428.5 = bitcast i8* %scevgep427.5 to double*
  %_p_scalar_429.5 = load double, double* %scevgep427428.5, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408.5

polly.loop_header408.5:                           ; preds = %polly.loop_header408.5, %polly.loop_exit410.4
  %polly.indvar411.5 = phi i64 [ 0, %polly.loop_exit410.4 ], [ %polly.indvar_next412.5, %polly.loop_header408.5 ]
  %369 = add nuw nsw i64 %polly.indvar411.5, %147
  %370 = mul nuw nsw i64 %369, 8000
  %scevgep415.5 = getelementptr i8, i8* %scevgep414, i64 %370
  %scevgep415416.5 = bitcast i8* %scevgep415.5 to double*
  %_p_scalar_417.5 = load double, double* %scevgep415416.5, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.5 = fmul fast double %_p_scalar_421.5, %_p_scalar_417.5
  %polly.access.add.Packed_MemRef_call2269423.5 = add nuw nsw i64 %polly.indvar411.5, %polly.access.mul.Packed_MemRef_call2269418
  %polly.access.Packed_MemRef_call2269424.5 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269423.5
  %_p_scalar_425.5 = load double, double* %polly.access.Packed_MemRef_call2269424.5, align 8
  %p_mul37.i75.5 = fmul fast double %_p_scalar_429.5, %_p_scalar_425.5
  %371 = shl i64 %369, 3
  %372 = add nuw nsw i64 %371, %174
  %scevgep430.5 = getelementptr i8, i8* %call, i64 %372
  %scevgep430431.5 = bitcast i8* %scevgep430.5 to double*
  %_p_scalar_432.5 = load double, double* %scevgep430431.5, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.5 = fadd fast double %p_mul37.i75.5, %p_mul27.i73.5
  %p_reass.mul.i78.5 = fmul fast double %p_reass.add.i77.5, 1.500000e+00
  %p_add42.i79.5 = fadd fast double %p_reass.mul.i78.5, %_p_scalar_432.5
  store double %p_add42.i79.5, double* %scevgep430431.5, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412.5 = add nuw nsw i64 %polly.indvar411.5, 1
  %exitcond841.5.not = icmp eq i64 %polly.indvar411.5, %smin840.5
  br i1 %exitcond841.5.not, label %polly.loop_exit410.5, label %polly.loop_header408.5

polly.loop_exit410.5:                             ; preds = %polly.loop_header408.5
  %polly.access.add.Packed_MemRef_call2269419.6 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269418, %176
  %polly.access.Packed_MemRef_call2269420.6 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269419.6
  %_p_scalar_421.6 = load double, double* %polly.access.Packed_MemRef_call2269420.6, align 8
  %scevgep427.6 = getelementptr i8, i8* %scevgep414, i64 %177
  %scevgep427428.6 = bitcast i8* %scevgep427.6 to double*
  %_p_scalar_429.6 = load double, double* %scevgep427428.6, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408.6

polly.loop_header408.6:                           ; preds = %polly.loop_header408.6, %polly.loop_exit410.5
  %polly.indvar411.6 = phi i64 [ 0, %polly.loop_exit410.5 ], [ %polly.indvar_next412.6, %polly.loop_header408.6 ]
  %373 = add nuw nsw i64 %polly.indvar411.6, %147
  %374 = mul nuw nsw i64 %373, 8000
  %scevgep415.6 = getelementptr i8, i8* %scevgep414, i64 %374
  %scevgep415416.6 = bitcast i8* %scevgep415.6 to double*
  %_p_scalar_417.6 = load double, double* %scevgep415416.6, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.6 = fmul fast double %_p_scalar_421.6, %_p_scalar_417.6
  %polly.access.add.Packed_MemRef_call2269423.6 = add nuw nsw i64 %polly.indvar411.6, %polly.access.mul.Packed_MemRef_call2269418
  %polly.access.Packed_MemRef_call2269424.6 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269423.6
  %_p_scalar_425.6 = load double, double* %polly.access.Packed_MemRef_call2269424.6, align 8
  %p_mul37.i75.6 = fmul fast double %_p_scalar_429.6, %_p_scalar_425.6
  %375 = shl i64 %373, 3
  %376 = add nuw nsw i64 %375, %178
  %scevgep430.6 = getelementptr i8, i8* %call, i64 %376
  %scevgep430431.6 = bitcast i8* %scevgep430.6 to double*
  %_p_scalar_432.6 = load double, double* %scevgep430431.6, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.6 = fadd fast double %p_mul37.i75.6, %p_mul27.i73.6
  %p_reass.mul.i78.6 = fmul fast double %p_reass.add.i77.6, 1.500000e+00
  %p_add42.i79.6 = fadd fast double %p_reass.mul.i78.6, %_p_scalar_432.6
  store double %p_add42.i79.6, double* %scevgep430431.6, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412.6 = add nuw nsw i64 %polly.indvar411.6, 1
  %exitcond841.6.not = icmp eq i64 %polly.indvar411.6, %smin840.6
  br i1 %exitcond841.6.not, label %polly.loop_exit410.6, label %polly.loop_header408.6

polly.loop_exit410.6:                             ; preds = %polly.loop_header408.6
  %polly.access.add.Packed_MemRef_call2269419.7 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269418, %180
  %polly.access.Packed_MemRef_call2269420.7 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269419.7
  %_p_scalar_421.7 = load double, double* %polly.access.Packed_MemRef_call2269420.7, align 8
  %scevgep427.7 = getelementptr i8, i8* %scevgep414, i64 %181
  %scevgep427428.7 = bitcast i8* %scevgep427.7 to double*
  %_p_scalar_429.7 = load double, double* %scevgep427428.7, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408.7

polly.loop_header408.7:                           ; preds = %polly.loop_header408.7, %polly.loop_exit410.6
  %polly.indvar411.7 = phi i64 [ 0, %polly.loop_exit410.6 ], [ %polly.indvar_next412.7, %polly.loop_header408.7 ]
  %377 = add nuw nsw i64 %polly.indvar411.7, %147
  %378 = mul nuw nsw i64 %377, 8000
  %scevgep415.7 = getelementptr i8, i8* %scevgep414, i64 %378
  %scevgep415416.7 = bitcast i8* %scevgep415.7 to double*
  %_p_scalar_417.7 = load double, double* %scevgep415416.7, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.7 = fmul fast double %_p_scalar_421.7, %_p_scalar_417.7
  %polly.access.add.Packed_MemRef_call2269423.7 = add nuw nsw i64 %polly.indvar411.7, %polly.access.mul.Packed_MemRef_call2269418
  %polly.access.Packed_MemRef_call2269424.7 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269423.7
  %_p_scalar_425.7 = load double, double* %polly.access.Packed_MemRef_call2269424.7, align 8
  %p_mul37.i75.7 = fmul fast double %_p_scalar_429.7, %_p_scalar_425.7
  %379 = shl i64 %377, 3
  %380 = add nuw nsw i64 %379, %182
  %scevgep430.7 = getelementptr i8, i8* %call, i64 %380
  %scevgep430431.7 = bitcast i8* %scevgep430.7 to double*
  %_p_scalar_432.7 = load double, double* %scevgep430431.7, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.7 = fadd fast double %p_mul37.i75.7, %p_mul27.i73.7
  %p_reass.mul.i78.7 = fmul fast double %p_reass.add.i77.7, 1.500000e+00
  %p_add42.i79.7 = fadd fast double %p_reass.mul.i78.7, %_p_scalar_432.7
  store double %p_add42.i79.7, double* %scevgep430431.7, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412.7 = add nuw nsw i64 %polly.indvar411.7, 1
  %exitcond841.7.not = icmp eq i64 %polly.indvar411.7, %smin840.7
  br i1 %exitcond841.7.not, label %polly.loop_exit410.7, label %polly.loop_header408.7

polly.loop_exit410.7:                             ; preds = %polly.loop_header408.7
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next400, 1000
  br i1 %exitcond843.not, label %polly.loop_exit398, label %polly.loop_header396

polly.loop_header577.1:                           ; preds = %polly.loop_header577.1, %polly.loop_exit579
  %polly.indvar580.1 = phi i64 [ 0, %polly.loop_exit579 ], [ %polly.indvar_next581.1, %polly.loop_header577.1 ]
  %381 = add nuw nsw i64 %polly.indvar580.1, %197
  %382 = mul nuw nsw i64 %381, 8000
  %scevgep584.1 = getelementptr i8, i8* %scevgep583, i64 %382
  %scevgep584585.1 = bitcast i8* %scevgep584.1 to double*
  %_p_scalar_586.1 = load double, double* %scevgep584585.1, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.1 = fmul fast double %_p_scalar_590.1, %_p_scalar_586.1
  %polly.access.add.Packed_MemRef_call2438592.1 = add nuw nsw i64 %polly.indvar580.1, %polly.access.mul.Packed_MemRef_call2438587
  %polly.access.Packed_MemRef_call2438593.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438592.1
  %_p_scalar_594.1 = load double, double* %polly.access.Packed_MemRef_call2438593.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_598.1, %_p_scalar_594.1
  %383 = shl i64 %381, 3
  %384 = add nuw nsw i64 %383, %208
  %scevgep599.1 = getelementptr i8, i8* %call, i64 %384
  %scevgep599600.1 = bitcast i8* %scevgep599.1 to double*
  %_p_scalar_601.1 = load double, double* %scevgep599600.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_601.1
  store double %p_add42.i.1, double* %scevgep599600.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581.1 = add nuw nsw i64 %polly.indvar580.1, 1
  %exitcond857.1.not = icmp eq i64 %polly.indvar580.1, %smin856.1
  br i1 %exitcond857.1.not, label %polly.loop_exit579.1, label %polly.loop_header577.1

polly.loop_exit579.1:                             ; preds = %polly.loop_header577.1
  %polly.access.add.Packed_MemRef_call2438588.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438587, %210
  %polly.access.Packed_MemRef_call2438589.2 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438588.2
  %_p_scalar_590.2 = load double, double* %polly.access.Packed_MemRef_call2438589.2, align 8
  %scevgep596.2 = getelementptr i8, i8* %scevgep583, i64 %211
  %scevgep596597.2 = bitcast i8* %scevgep596.2 to double*
  %_p_scalar_598.2 = load double, double* %scevgep596597.2, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577.2

polly.loop_header577.2:                           ; preds = %polly.loop_header577.2, %polly.loop_exit579.1
  %polly.indvar580.2 = phi i64 [ 0, %polly.loop_exit579.1 ], [ %polly.indvar_next581.2, %polly.loop_header577.2 ]
  %385 = add nuw nsw i64 %polly.indvar580.2, %197
  %386 = mul nuw nsw i64 %385, 8000
  %scevgep584.2 = getelementptr i8, i8* %scevgep583, i64 %386
  %scevgep584585.2 = bitcast i8* %scevgep584.2 to double*
  %_p_scalar_586.2 = load double, double* %scevgep584585.2, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.2 = fmul fast double %_p_scalar_590.2, %_p_scalar_586.2
  %polly.access.add.Packed_MemRef_call2438592.2 = add nuw nsw i64 %polly.indvar580.2, %polly.access.mul.Packed_MemRef_call2438587
  %polly.access.Packed_MemRef_call2438593.2 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438592.2
  %_p_scalar_594.2 = load double, double* %polly.access.Packed_MemRef_call2438593.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_598.2, %_p_scalar_594.2
  %387 = shl i64 %385, 3
  %388 = add nuw nsw i64 %387, %212
  %scevgep599.2 = getelementptr i8, i8* %call, i64 %388
  %scevgep599600.2 = bitcast i8* %scevgep599.2 to double*
  %_p_scalar_601.2 = load double, double* %scevgep599600.2, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_601.2
  store double %p_add42.i.2, double* %scevgep599600.2, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581.2 = add nuw nsw i64 %polly.indvar580.2, 1
  %exitcond857.2.not = icmp eq i64 %polly.indvar580.2, %smin856.2
  br i1 %exitcond857.2.not, label %polly.loop_exit579.2, label %polly.loop_header577.2

polly.loop_exit579.2:                             ; preds = %polly.loop_header577.2
  %polly.access.add.Packed_MemRef_call2438588.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438587, %214
  %polly.access.Packed_MemRef_call2438589.3 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438588.3
  %_p_scalar_590.3 = load double, double* %polly.access.Packed_MemRef_call2438589.3, align 8
  %scevgep596.3 = getelementptr i8, i8* %scevgep583, i64 %215
  %scevgep596597.3 = bitcast i8* %scevgep596.3 to double*
  %_p_scalar_598.3 = load double, double* %scevgep596597.3, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577.3

polly.loop_header577.3:                           ; preds = %polly.loop_header577.3, %polly.loop_exit579.2
  %polly.indvar580.3 = phi i64 [ 0, %polly.loop_exit579.2 ], [ %polly.indvar_next581.3, %polly.loop_header577.3 ]
  %389 = add nuw nsw i64 %polly.indvar580.3, %197
  %390 = mul nuw nsw i64 %389, 8000
  %scevgep584.3 = getelementptr i8, i8* %scevgep583, i64 %390
  %scevgep584585.3 = bitcast i8* %scevgep584.3 to double*
  %_p_scalar_586.3 = load double, double* %scevgep584585.3, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.3 = fmul fast double %_p_scalar_590.3, %_p_scalar_586.3
  %polly.access.add.Packed_MemRef_call2438592.3 = add nuw nsw i64 %polly.indvar580.3, %polly.access.mul.Packed_MemRef_call2438587
  %polly.access.Packed_MemRef_call2438593.3 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438592.3
  %_p_scalar_594.3 = load double, double* %polly.access.Packed_MemRef_call2438593.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_598.3, %_p_scalar_594.3
  %391 = shl i64 %389, 3
  %392 = add nuw nsw i64 %391, %216
  %scevgep599.3 = getelementptr i8, i8* %call, i64 %392
  %scevgep599600.3 = bitcast i8* %scevgep599.3 to double*
  %_p_scalar_601.3 = load double, double* %scevgep599600.3, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_601.3
  store double %p_add42.i.3, double* %scevgep599600.3, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581.3 = add nuw nsw i64 %polly.indvar580.3, 1
  %exitcond857.3.not = icmp eq i64 %polly.indvar580.3, %smin856.3
  br i1 %exitcond857.3.not, label %polly.loop_exit579.3, label %polly.loop_header577.3

polly.loop_exit579.3:                             ; preds = %polly.loop_header577.3
  %polly.access.add.Packed_MemRef_call2438588.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438587, %218
  %polly.access.Packed_MemRef_call2438589.4 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438588.4
  %_p_scalar_590.4 = load double, double* %polly.access.Packed_MemRef_call2438589.4, align 8
  %scevgep596.4 = getelementptr i8, i8* %scevgep583, i64 %219
  %scevgep596597.4 = bitcast i8* %scevgep596.4 to double*
  %_p_scalar_598.4 = load double, double* %scevgep596597.4, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577.4

polly.loop_header577.4:                           ; preds = %polly.loop_header577.4, %polly.loop_exit579.3
  %polly.indvar580.4 = phi i64 [ 0, %polly.loop_exit579.3 ], [ %polly.indvar_next581.4, %polly.loop_header577.4 ]
  %393 = add nuw nsw i64 %polly.indvar580.4, %197
  %394 = mul nuw nsw i64 %393, 8000
  %scevgep584.4 = getelementptr i8, i8* %scevgep583, i64 %394
  %scevgep584585.4 = bitcast i8* %scevgep584.4 to double*
  %_p_scalar_586.4 = load double, double* %scevgep584585.4, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.4 = fmul fast double %_p_scalar_590.4, %_p_scalar_586.4
  %polly.access.add.Packed_MemRef_call2438592.4 = add nuw nsw i64 %polly.indvar580.4, %polly.access.mul.Packed_MemRef_call2438587
  %polly.access.Packed_MemRef_call2438593.4 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438592.4
  %_p_scalar_594.4 = load double, double* %polly.access.Packed_MemRef_call2438593.4, align 8
  %p_mul37.i.4 = fmul fast double %_p_scalar_598.4, %_p_scalar_594.4
  %395 = shl i64 %393, 3
  %396 = add nuw nsw i64 %395, %220
  %scevgep599.4 = getelementptr i8, i8* %call, i64 %396
  %scevgep599600.4 = bitcast i8* %scevgep599.4 to double*
  %_p_scalar_601.4 = load double, double* %scevgep599600.4, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_601.4
  store double %p_add42.i.4, double* %scevgep599600.4, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581.4 = add nuw nsw i64 %polly.indvar580.4, 1
  %exitcond857.4.not = icmp eq i64 %polly.indvar580.4, %smin856.4
  br i1 %exitcond857.4.not, label %polly.loop_exit579.4, label %polly.loop_header577.4

polly.loop_exit579.4:                             ; preds = %polly.loop_header577.4
  %polly.access.add.Packed_MemRef_call2438588.5 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438587, %222
  %polly.access.Packed_MemRef_call2438589.5 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438588.5
  %_p_scalar_590.5 = load double, double* %polly.access.Packed_MemRef_call2438589.5, align 8
  %scevgep596.5 = getelementptr i8, i8* %scevgep583, i64 %223
  %scevgep596597.5 = bitcast i8* %scevgep596.5 to double*
  %_p_scalar_598.5 = load double, double* %scevgep596597.5, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577.5

polly.loop_header577.5:                           ; preds = %polly.loop_header577.5, %polly.loop_exit579.4
  %polly.indvar580.5 = phi i64 [ 0, %polly.loop_exit579.4 ], [ %polly.indvar_next581.5, %polly.loop_header577.5 ]
  %397 = add nuw nsw i64 %polly.indvar580.5, %197
  %398 = mul nuw nsw i64 %397, 8000
  %scevgep584.5 = getelementptr i8, i8* %scevgep583, i64 %398
  %scevgep584585.5 = bitcast i8* %scevgep584.5 to double*
  %_p_scalar_586.5 = load double, double* %scevgep584585.5, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.5 = fmul fast double %_p_scalar_590.5, %_p_scalar_586.5
  %polly.access.add.Packed_MemRef_call2438592.5 = add nuw nsw i64 %polly.indvar580.5, %polly.access.mul.Packed_MemRef_call2438587
  %polly.access.Packed_MemRef_call2438593.5 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438592.5
  %_p_scalar_594.5 = load double, double* %polly.access.Packed_MemRef_call2438593.5, align 8
  %p_mul37.i.5 = fmul fast double %_p_scalar_598.5, %_p_scalar_594.5
  %399 = shl i64 %397, 3
  %400 = add nuw nsw i64 %399, %224
  %scevgep599.5 = getelementptr i8, i8* %call, i64 %400
  %scevgep599600.5 = bitcast i8* %scevgep599.5 to double*
  %_p_scalar_601.5 = load double, double* %scevgep599600.5, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.5 = fadd fast double %p_mul37.i.5, %p_mul27.i.5
  %p_reass.mul.i.5 = fmul fast double %p_reass.add.i.5, 1.500000e+00
  %p_add42.i.5 = fadd fast double %p_reass.mul.i.5, %_p_scalar_601.5
  store double %p_add42.i.5, double* %scevgep599600.5, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581.5 = add nuw nsw i64 %polly.indvar580.5, 1
  %exitcond857.5.not = icmp eq i64 %polly.indvar580.5, %smin856.5
  br i1 %exitcond857.5.not, label %polly.loop_exit579.5, label %polly.loop_header577.5

polly.loop_exit579.5:                             ; preds = %polly.loop_header577.5
  %polly.access.add.Packed_MemRef_call2438588.6 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438587, %226
  %polly.access.Packed_MemRef_call2438589.6 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438588.6
  %_p_scalar_590.6 = load double, double* %polly.access.Packed_MemRef_call2438589.6, align 8
  %scevgep596.6 = getelementptr i8, i8* %scevgep583, i64 %227
  %scevgep596597.6 = bitcast i8* %scevgep596.6 to double*
  %_p_scalar_598.6 = load double, double* %scevgep596597.6, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577.6

polly.loop_header577.6:                           ; preds = %polly.loop_header577.6, %polly.loop_exit579.5
  %polly.indvar580.6 = phi i64 [ 0, %polly.loop_exit579.5 ], [ %polly.indvar_next581.6, %polly.loop_header577.6 ]
  %401 = add nuw nsw i64 %polly.indvar580.6, %197
  %402 = mul nuw nsw i64 %401, 8000
  %scevgep584.6 = getelementptr i8, i8* %scevgep583, i64 %402
  %scevgep584585.6 = bitcast i8* %scevgep584.6 to double*
  %_p_scalar_586.6 = load double, double* %scevgep584585.6, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.6 = fmul fast double %_p_scalar_590.6, %_p_scalar_586.6
  %polly.access.add.Packed_MemRef_call2438592.6 = add nuw nsw i64 %polly.indvar580.6, %polly.access.mul.Packed_MemRef_call2438587
  %polly.access.Packed_MemRef_call2438593.6 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438592.6
  %_p_scalar_594.6 = load double, double* %polly.access.Packed_MemRef_call2438593.6, align 8
  %p_mul37.i.6 = fmul fast double %_p_scalar_598.6, %_p_scalar_594.6
  %403 = shl i64 %401, 3
  %404 = add nuw nsw i64 %403, %228
  %scevgep599.6 = getelementptr i8, i8* %call, i64 %404
  %scevgep599600.6 = bitcast i8* %scevgep599.6 to double*
  %_p_scalar_601.6 = load double, double* %scevgep599600.6, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.6 = fadd fast double %p_mul37.i.6, %p_mul27.i.6
  %p_reass.mul.i.6 = fmul fast double %p_reass.add.i.6, 1.500000e+00
  %p_add42.i.6 = fadd fast double %p_reass.mul.i.6, %_p_scalar_601.6
  store double %p_add42.i.6, double* %scevgep599600.6, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581.6 = add nuw nsw i64 %polly.indvar580.6, 1
  %exitcond857.6.not = icmp eq i64 %polly.indvar580.6, %smin856.6
  br i1 %exitcond857.6.not, label %polly.loop_exit579.6, label %polly.loop_header577.6

polly.loop_exit579.6:                             ; preds = %polly.loop_header577.6
  %polly.access.add.Packed_MemRef_call2438588.7 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2438587, %230
  %polly.access.Packed_MemRef_call2438589.7 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438588.7
  %_p_scalar_590.7 = load double, double* %polly.access.Packed_MemRef_call2438589.7, align 8
  %scevgep596.7 = getelementptr i8, i8* %scevgep583, i64 %231
  %scevgep596597.7 = bitcast i8* %scevgep596.7 to double*
  %_p_scalar_598.7 = load double, double* %scevgep596597.7, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577.7

polly.loop_header577.7:                           ; preds = %polly.loop_header577.7, %polly.loop_exit579.6
  %polly.indvar580.7 = phi i64 [ 0, %polly.loop_exit579.6 ], [ %polly.indvar_next581.7, %polly.loop_header577.7 ]
  %405 = add nuw nsw i64 %polly.indvar580.7, %197
  %406 = mul nuw nsw i64 %405, 8000
  %scevgep584.7 = getelementptr i8, i8* %scevgep583, i64 %406
  %scevgep584585.7 = bitcast i8* %scevgep584.7 to double*
  %_p_scalar_586.7 = load double, double* %scevgep584585.7, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.7 = fmul fast double %_p_scalar_590.7, %_p_scalar_586.7
  %polly.access.add.Packed_MemRef_call2438592.7 = add nuw nsw i64 %polly.indvar580.7, %polly.access.mul.Packed_MemRef_call2438587
  %polly.access.Packed_MemRef_call2438593.7 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438592.7
  %_p_scalar_594.7 = load double, double* %polly.access.Packed_MemRef_call2438593.7, align 8
  %p_mul37.i.7 = fmul fast double %_p_scalar_598.7, %_p_scalar_594.7
  %407 = shl i64 %405, 3
  %408 = add nuw nsw i64 %407, %232
  %scevgep599.7 = getelementptr i8, i8* %call, i64 %408
  %scevgep599600.7 = bitcast i8* %scevgep599.7 to double*
  %_p_scalar_601.7 = load double, double* %scevgep599600.7, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.7 = fadd fast double %p_mul37.i.7, %p_mul27.i.7
  %p_reass.mul.i.7 = fmul fast double %p_reass.add.i.7, 1.500000e+00
  %p_add42.i.7 = fadd fast double %p_reass.mul.i.7, %_p_scalar_601.7
  store double %p_add42.i.7, double* %scevgep599600.7, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581.7 = add nuw nsw i64 %polly.indvar580.7, 1
  %exitcond857.7.not = icmp eq i64 %polly.indvar580.7, %smin856.7
  br i1 %exitcond857.7.not, label %polly.loop_exit579.7, label %polly.loop_header577.7

polly.loop_exit579.7:                             ; preds = %polly.loop_header577.7
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next569, 1000
  br i1 %exitcond859.not, label %polly.loop_exit567, label %polly.loop_header565
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
!45 = !{!"llvm.loop.tile.size", i32 8}
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
