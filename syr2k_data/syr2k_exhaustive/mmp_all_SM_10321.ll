; ModuleID = 'syr2k_exhaustive/mmp_all_SM_10321.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_10321.c"
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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv7.i, i64 %index905
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit755
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header496, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check967 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check967, label %for.body3.i46.preheader1044, label %vector.ph968

vector.ph968:                                     ; preds = %for.body3.i46.preheader
  %n.vec970 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body966

vector.body966:                                   ; preds = %vector.body966, %vector.ph968
  %index971 = phi i64 [ 0, %vector.ph968 ], [ %index.next972, %vector.body966 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %index971
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
  br i1 %cmp.n974, label %for.inc6.i, label %for.body3.i46.preheader1044

for.body3.i46.preheader1044:                      ; preds = %for.body3.i46.preheader, %middle.block964
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec970, %middle.block964 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1044, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1044 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !39

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit520
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header338, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check990 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check990, label %for.body3.i60.preheader1042, label %vector.ph991

vector.ph991:                                     ; preds = %for.body3.i60.preheader
  %n.vec993 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body989

vector.body989:                                   ; preds = %vector.body989, %vector.ph991
  %index994 = phi i64 [ 0, %vector.ph991 ], [ %index.next995, %vector.body989 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %index994
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load998 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load998, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next995 = add i64 %index994, 4
  %57 = icmp eq i64 %index.next995, %n.vec993
  br i1 %57, label %middle.block987, label %vector.body989, !llvm.loop !50

middle.block987:                                  ; preds = %vector.body989
  %cmp.n997 = icmp eq i64 %indvars.iv21.i52, %n.vec993
  br i1 %cmp.n997, label %for.inc6.i63, label %for.body3.i60.preheader1042

for.body3.i60.preheader1042:                      ; preds = %for.body3.i60.preheader, %middle.block987
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec993, %middle.block987 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1042, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1042 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !51

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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !39

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit362
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1016 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1016, label %for.body3.i99.preheader1040, label %vector.ph1017

vector.ph1017:                                    ; preds = %for.body3.i99.preheader
  %n.vec1019 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1015

vector.body1015:                                  ; preds = %vector.body1015, %vector.ph1017
  %index1020 = phi i64 [ 0, %vector.ph1017 ], [ %index.next1021, %vector.body1015 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %index1020
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1024 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1024, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1021 = add i64 %index1020, 4
  %68 = icmp eq i64 %index.next1021, %n.vec1019
  br i1 %68, label %middle.block1013, label %vector.body1015, !llvm.loop !52

middle.block1013:                                 ; preds = %vector.body1015
  %cmp.n1023 = icmp eq i64 %indvars.iv21.i91, %n.vec1019
  br i1 %cmp.n1023, label %for.inc6.i102, label %for.body3.i99.preheader1040

for.body3.i99.preheader1040:                      ; preds = %for.body3.i99.preheader, %middle.block1013
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1019, %middle.block1013 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1040, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1040 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !53

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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !39

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !54
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !56

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !57

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1028 = phi i64 [ %indvar.next1029, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
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
  %wide.load1038 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !58, !noalias !60
  %93 = fmul fast <4 x double> %wide.load1038, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !58, !noalias !60
  %index.next1035 = add i64 %index1034, 4
  %95 = icmp eq i64 %index.next1035, %n.vec1033
  br i1 %95, label %middle.block1025, label %vector.body1027, !llvm.loop !63

middle.block1025:                                 ; preds = %vector.body1027
  %cmp.n1037 = icmp eq i64 %88, %n.vec1033
  br i1 %cmp.n1037, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1025
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1033, %middle.block1025 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1025
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1029 = add i64 %indvar1028, 1
  br i1 %exitcond803.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond802.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond802.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !64

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %polly.loop_exit207 ], [ 6, %polly.loop_exit193 ]
  %indvars.iv794 = phi i64 [ %indvars.iv.next795, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = udiv i64 %indvars.iv796, 5
  %98 = sub nsw i64 %indvars.iv794, %97
  %smin798 = call i64 @llvm.smin.i64(i64 %98, i64 54)
  %99 = mul nsw i64 %polly.indvar202, -96
  %100 = icmp slt i64 %99, -1104
  %101 = select i1 %100, i64 %99, i64 -1104
  %102 = add nsw i64 %101, 1199
  %103 = mul nuw nsw i64 %polly.indvar202, 96
  %104 = add nsw i64 %smin798, 5
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -96
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 96
  %indvars.iv.next795 = add nuw nsw i64 %indvars.iv794, 5
  %indvars.iv.next797 = add nuw nsw i64 %indvars.iv796, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next203, 13
  br i1 %exitcond801.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %105 = mul nuw nsw i64 %polly.indvar208, 20
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next209, 50
  br i1 %exitcond800.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv789 = phi i64 [ %indvars.iv.next790, %polly.loop_exit219 ], [ %indvars.iv787, %polly.loop_header205 ]
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %106 = mul nuw nsw i64 %polly.indvar214, 20
  %107 = add nsw i64 %106, %99
  %108 = icmp sgt i64 %107, 0
  %109 = select i1 %108, i64 %107, i64 0
  %polly.loop_guard.not = icmp sgt i64 %109, %102
  br i1 %polly.loop_guard.not, label %polly.loop_exit219, label %polly.loop_header217.preheader

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv785, i64 0)
  %110 = add i64 %smax, %indvars.iv789
  %111 = sub nsw i64 %103, %106
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next786 = add nsw i64 %indvars.iv785, 20
  %indvars.iv.next790 = add nsw i64 %indvars.iv789, -20
  %exitcond799.not = icmp eq i64 %polly.indvar214, %104
  br i1 %exitcond799.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit225
  %indvars.iv791 = phi i64 [ %110, %polly.loop_header217.preheader ], [ %indvars.iv.next792, %polly.loop_exit225 ]
  %polly.indvar220 = phi i64 [ %109, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv791, i64 19)
  %112 = add nsw i64 %polly.indvar220, %111
  %polly.loop_guard233886 = icmp sgt i64 %112, -1
  %113 = add nuw nsw i64 %polly.indvar220, %103
  %114 = mul i64 %113, 8000
  %115 = mul i64 %113, 9600
  br i1 %polly.loop_guard233886, label %polly.loop_header223.us, label %polly.loop_exit225

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.loop_exit232.loopexit.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_exit232.loopexit.us ], [ 0, %polly.loop_header217 ]
  %116 = add nuw nsw i64 %polly.indvar226.us, %105
  %117 = shl i64 %116, 3
  %118 = add i64 %117, %114
  %scevgep240.us = getelementptr i8, i8* %call2, i64 %118
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !62, !noalias !66
  %scevgep246.us = getelementptr i8, i8* %call1, i64 %118
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header230.us

polly.loop_header230.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header223.us ]
  %119 = add nuw nsw i64 %polly.indvar234.us, %106
  %120 = mul nuw nsw i64 %119, 8000
  %121 = add nuw nsw i64 %120, %117
  %scevgep237.us = getelementptr i8, i8* %call1, i64 %121
  %scevgep237238.us = bitcast i8* %scevgep237.us to double*
  %_p_scalar_239.us = load double, double* %scevgep237238.us, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us = fmul fast double %_p_scalar_242.us, %_p_scalar_239.us
  %scevgep243.us = getelementptr i8, i8* %call2, i64 %121
  %scevgep243244.us = bitcast i8* %scevgep243.us to double*
  %_p_scalar_245.us = load double, double* %scevgep243244.us, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us = fmul fast double %_p_scalar_248.us, %_p_scalar_245.us
  %122 = shl i64 %119, 3
  %123 = add i64 %122, %115
  %scevgep249.us = getelementptr i8, i8* %call, i64 %123
  %scevgep249250.us = bitcast i8* %scevgep249.us to double*
  %_p_scalar_251.us = load double, double* %scevgep249250.us, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_251.us
  store double %p_add42.i118.us, double* %scevgep249250.us, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next235.us = add nuw nsw i64 %polly.indvar234.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar234.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit232.loopexit.us, label %polly.loop_header230.us

polly.loop_exit232.loopexit.us:                   ; preds = %polly.loop_header230.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond793.not = icmp eq i64 %polly.indvar_next227.us, 20
  br i1 %exitcond793.not, label %polly.loop_exit225, label %polly.loop_header223.us

polly.loop_exit225:                               ; preds = %polly.loop_exit232.loopexit.us, %polly.loop_header217
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222.not.not = icmp ult i64 %polly.indvar220, %102
  %indvars.iv.next792 = add i64 %indvars.iv791, 1
  br i1 %polly.loop_cond222.not.not, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar1002 = phi i64 [ %indvar.next1003, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %124 = add i64 %indvar1002, 1
  %125 = mul nuw nsw i64 %polly.indvar341, 9600
  %scevgep350 = getelementptr i8, i8* %call, i64 %125
  %min.iters.check1004 = icmp ult i64 %124, 4
  br i1 %min.iters.check1004, label %polly.loop_header344.preheader, label %vector.ph1005

vector.ph1005:                                    ; preds = %polly.loop_header338
  %n.vec1007 = and i64 %124, -4
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.body1001, %vector.ph1005
  %index1008 = phi i64 [ 0, %vector.ph1005 ], [ %index.next1009, %vector.body1001 ]
  %126 = shl nuw nsw i64 %index1008, 3
  %127 = getelementptr i8, i8* %scevgep350, i64 %126
  %128 = bitcast i8* %127 to <4 x double>*
  %wide.load1012 = load <4 x double>, <4 x double>* %128, align 8, !alias.scope !68, !noalias !70
  %129 = fmul fast <4 x double> %wide.load1012, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %130 = bitcast i8* %127 to <4 x double>*
  store <4 x double> %129, <4 x double>* %130, align 8, !alias.scope !68, !noalias !70
  %index.next1009 = add i64 %index1008, 4
  %131 = icmp eq i64 %index.next1009, %n.vec1007
  br i1 %131, label %middle.block999, label %vector.body1001, !llvm.loop !73

middle.block999:                                  ; preds = %vector.body1001
  %cmp.n1011 = icmp eq i64 %124, %n.vec1007
  br i1 %cmp.n1011, label %polly.loop_exit346, label %polly.loop_header344.preheader

polly.loop_header344.preheader:                   ; preds = %polly.loop_header338, %middle.block999
  %polly.indvar347.ph = phi i64 [ 0, %polly.loop_header338 ], [ %n.vec1007, %middle.block999 ]
  br label %polly.loop_header344

polly.loop_exit346:                               ; preds = %polly.loop_header344, %middle.block999
  %polly.indvar_next342 = add nuw nsw i64 %polly.indvar341, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next342, 1200
  %indvar.next1003 = add i64 %indvar1002, 1
  br i1 %exitcond827.not, label %polly.loop_header354, label %polly.loop_header338

polly.loop_header344:                             ; preds = %polly.loop_header344.preheader, %polly.loop_header344
  %polly.indvar347 = phi i64 [ %polly.indvar_next348, %polly.loop_header344 ], [ %polly.indvar347.ph, %polly.loop_header344.preheader ]
  %132 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %132
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !68, !noalias !70
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond826.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !74

polly.loop_header354:                             ; preds = %polly.loop_exit346, %polly.loop_exit362
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %polly.loop_exit362 ], [ 6, %polly.loop_exit346 ]
  %indvars.iv818 = phi i64 [ %indvars.iv.next819, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %indvars.iv804 = phi i64 [ %indvars.iv.next805, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %133 = udiv i64 %indvars.iv820, 5
  %134 = sub nsw i64 %indvars.iv818, %133
  %smin822 = call i64 @llvm.smin.i64(i64 %134, i64 54)
  %135 = mul nsw i64 %polly.indvar357, -96
  %136 = icmp slt i64 %135, -1104
  %137 = select i1 %136, i64 %135, i64 -1104
  %138 = add nsw i64 %137, 1199
  %139 = mul nuw nsw i64 %polly.indvar357, 96
  %140 = add nsw i64 %smin822, 5
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_exit369
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %indvars.iv.next805 = add nsw i64 %indvars.iv804, -96
  %indvars.iv.next810 = add nuw nsw i64 %indvars.iv809, 96
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 5
  %indvars.iv.next821 = add nuw nsw i64 %indvars.iv820, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next358, 13
  br i1 %exitcond825.not, label %kernel_syr2k.exit90, label %polly.loop_header354

polly.loop_header360:                             ; preds = %polly.loop_exit369, %polly.loop_header354
  %polly.indvar363 = phi i64 [ 0, %polly.loop_header354 ], [ %polly.indvar_next364, %polly.loop_exit369 ]
  %141 = mul nuw nsw i64 %polly.indvar363, 20
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_exit376
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next364, 50
  br i1 %exitcond824.not, label %polly.loop_exit362, label %polly.loop_header360

polly.loop_header367:                             ; preds = %polly.loop_exit376, %polly.loop_header360
  %indvars.iv811 = phi i64 [ %indvars.iv.next812, %polly.loop_exit376 ], [ %indvars.iv809, %polly.loop_header360 ]
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %polly.loop_exit376 ], [ %indvars.iv804, %polly.loop_header360 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit376 ], [ 0, %polly.loop_header360 ]
  %142 = mul nuw nsw i64 %polly.indvar370, 20
  %143 = add nsw i64 %142, %135
  %144 = icmp sgt i64 %143, 0
  %145 = select i1 %144, i64 %143, i64 0
  %polly.loop_guard377.not = icmp sgt i64 %145, %138
  br i1 %polly.loop_guard377.not, label %polly.loop_exit376, label %polly.loop_header374.preheader

polly.loop_header374.preheader:                   ; preds = %polly.loop_header367
  %smax808 = call i64 @llvm.smax.i64(i64 %indvars.iv806, i64 0)
  %146 = add i64 %smax808, %indvars.iv811
  %147 = sub nsw i64 %139, %142
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_exit383, %polly.loop_header367
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %indvars.iv.next807 = add nsw i64 %indvars.iv806, 20
  %indvars.iv.next812 = add nsw i64 %indvars.iv811, -20
  %exitcond823.not = icmp eq i64 %polly.indvar370, %140
  br i1 %exitcond823.not, label %polly.loop_exit369, label %polly.loop_header367

polly.loop_header374:                             ; preds = %polly.loop_header374.preheader, %polly.loop_exit383
  %indvars.iv813 = phi i64 [ %146, %polly.loop_header374.preheader ], [ %indvars.iv.next814, %polly.loop_exit383 ]
  %polly.indvar378 = phi i64 [ %145, %polly.loop_header374.preheader ], [ %polly.indvar_next379, %polly.loop_exit383 ]
  %smin815 = call i64 @llvm.smin.i64(i64 %indvars.iv813, i64 19)
  %148 = add nsw i64 %polly.indvar378, %147
  %polly.loop_guard391887 = icmp sgt i64 %148, -1
  %149 = add nuw nsw i64 %polly.indvar378, %139
  %150 = mul i64 %149, 8000
  %151 = mul i64 %149, 9600
  br i1 %polly.loop_guard391887, label %polly.loop_header381.us, label %polly.loop_exit383

polly.loop_header381.us:                          ; preds = %polly.loop_header374, %polly.loop_exit390.loopexit.us
  %polly.indvar384.us = phi i64 [ %polly.indvar_next385.us, %polly.loop_exit390.loopexit.us ], [ 0, %polly.loop_header374 ]
  %152 = add nuw nsw i64 %polly.indvar384.us, %141
  %153 = shl i64 %152, 3
  %154 = add i64 %153, %150
  %scevgep398.us = getelementptr i8, i8* %call2, i64 %154
  %scevgep398399.us = bitcast i8* %scevgep398.us to double*
  %_p_scalar_400.us = load double, double* %scevgep398399.us, align 8, !alias.scope !72, !noalias !75
  %scevgep404.us = getelementptr i8, i8* %call1, i64 %154
  %scevgep404405.us = bitcast i8* %scevgep404.us to double*
  %_p_scalar_406.us = load double, double* %scevgep404405.us, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header388.us

polly.loop_header388.us:                          ; preds = %polly.loop_header381.us, %polly.loop_header388.us
  %polly.indvar392.us = phi i64 [ %polly.indvar_next393.us, %polly.loop_header388.us ], [ 0, %polly.loop_header381.us ]
  %155 = add nuw nsw i64 %polly.indvar392.us, %142
  %156 = mul nuw nsw i64 %155, 8000
  %157 = add nuw nsw i64 %156, %153
  %scevgep395.us = getelementptr i8, i8* %call1, i64 %157
  %scevgep395396.us = bitcast i8* %scevgep395.us to double*
  %_p_scalar_397.us = load double, double* %scevgep395396.us, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us = fmul fast double %_p_scalar_400.us, %_p_scalar_397.us
  %scevgep401.us = getelementptr i8, i8* %call2, i64 %157
  %scevgep401402.us = bitcast i8* %scevgep401.us to double*
  %_p_scalar_403.us = load double, double* %scevgep401402.us, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us = fmul fast double %_p_scalar_406.us, %_p_scalar_403.us
  %158 = shl i64 %155, 3
  %159 = add i64 %158, %151
  %scevgep407.us = getelementptr i8, i8* %call, i64 %159
  %scevgep407408.us = bitcast i8* %scevgep407.us to double*
  %_p_scalar_409.us = load double, double* %scevgep407408.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_409.us
  store double %p_add42.i79.us, double* %scevgep407408.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next393.us = add nuw nsw i64 %polly.indvar392.us, 1
  %exitcond816.not = icmp eq i64 %polly.indvar392.us, %smin815
  br i1 %exitcond816.not, label %polly.loop_exit390.loopexit.us, label %polly.loop_header388.us

polly.loop_exit390.loopexit.us:                   ; preds = %polly.loop_header388.us
  %polly.indvar_next385.us = add nuw nsw i64 %polly.indvar384.us, 1
  %exitcond817.not = icmp eq i64 %polly.indvar_next385.us, 20
  br i1 %exitcond817.not, label %polly.loop_exit383, label %polly.loop_header381.us

polly.loop_exit383:                               ; preds = %polly.loop_exit390.loopexit.us, %polly.loop_header374
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %polly.loop_cond380.not.not = icmp ult i64 %polly.indvar378, %138
  %indvars.iv.next814 = add i64 %indvars.iv813, 1
  br i1 %polly.loop_cond380.not.not, label %polly.loop_header374, label %polly.loop_exit376

polly.loop_header496:                             ; preds = %init_array.exit, %polly.loop_exit504
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit504 ], [ 0, %init_array.exit ]
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_exit504 ], [ 1, %init_array.exit ]
  %160 = add i64 %indvar, 1
  %161 = mul nuw nsw i64 %polly.indvar499, 9600
  %scevgep508 = getelementptr i8, i8* %call, i64 %161
  %min.iters.check978 = icmp ult i64 %160, 4
  br i1 %min.iters.check978, label %polly.loop_header502.preheader, label %vector.ph979

vector.ph979:                                     ; preds = %polly.loop_header496
  %n.vec981 = and i64 %160, -4
  br label %vector.body977

vector.body977:                                   ; preds = %vector.body977, %vector.ph979
  %index982 = phi i64 [ 0, %vector.ph979 ], [ %index.next983, %vector.body977 ]
  %162 = shl nuw nsw i64 %index982, 3
  %163 = getelementptr i8, i8* %scevgep508, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  %wide.load986 = load <4 x double>, <4 x double>* %164, align 8, !alias.scope !77, !noalias !79
  %165 = fmul fast <4 x double> %wide.load986, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %166 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %165, <4 x double>* %166, align 8, !alias.scope !77, !noalias !79
  %index.next983 = add i64 %index982, 4
  %167 = icmp eq i64 %index.next983, %n.vec981
  br i1 %167, label %middle.block975, label %vector.body977, !llvm.loop !82

middle.block975:                                  ; preds = %vector.body977
  %cmp.n985 = icmp eq i64 %160, %n.vec981
  br i1 %cmp.n985, label %polly.loop_exit504, label %polly.loop_header502.preheader

polly.loop_header502.preheader:                   ; preds = %polly.loop_header496, %middle.block975
  %polly.indvar505.ph = phi i64 [ 0, %polly.loop_header496 ], [ %n.vec981, %middle.block975 ]
  br label %polly.loop_header502

polly.loop_exit504:                               ; preds = %polly.loop_header502, %middle.block975
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond851.not = icmp eq i64 %polly.indvar_next500, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond851.not, label %polly.loop_header512, label %polly.loop_header496

polly.loop_header502:                             ; preds = %polly.loop_header502.preheader, %polly.loop_header502
  %polly.indvar505 = phi i64 [ %polly.indvar_next506, %polly.loop_header502 ], [ %polly.indvar505.ph, %polly.loop_header502.preheader ]
  %168 = shl nuw nsw i64 %polly.indvar505, 3
  %scevgep509 = getelementptr i8, i8* %scevgep508, i64 %168
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !77, !noalias !79
  %p_mul.i = fmul fast double %_p_scalar_511, 1.200000e+00
  store double %p_mul.i, double* %scevgep509510, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next506 = add nuw nsw i64 %polly.indvar505, 1
  %exitcond850.not = icmp eq i64 %polly.indvar_next506, %polly.indvar499
  br i1 %exitcond850.not, label %polly.loop_exit504, label %polly.loop_header502, !llvm.loop !83

polly.loop_header512:                             ; preds = %polly.loop_exit504, %polly.loop_exit520
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit520 ], [ 6, %polly.loop_exit504 ]
  %indvars.iv842 = phi i64 [ %indvars.iv.next843, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %indvars.iv833 = phi i64 [ %indvars.iv.next834, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %indvars.iv828 = phi i64 [ %indvars.iv.next829, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %polly.indvar515 = phi i64 [ %polly.indvar_next516, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %169 = udiv i64 %indvars.iv844, 5
  %170 = sub nsw i64 %indvars.iv842, %169
  %smin846 = call i64 @llvm.smin.i64(i64 %170, i64 54)
  %171 = mul nsw i64 %polly.indvar515, -96
  %172 = icmp slt i64 %171, -1104
  %173 = select i1 %172, i64 %171, i64 -1104
  %174 = add nsw i64 %173, 1199
  %175 = mul nuw nsw i64 %polly.indvar515, 96
  %176 = add nsw i64 %smin846, 5
  br label %polly.loop_header518

polly.loop_exit520:                               ; preds = %polly.loop_exit527
  %polly.indvar_next516 = add nuw nsw i64 %polly.indvar515, 1
  %indvars.iv.next829 = add nsw i64 %indvars.iv828, -96
  %indvars.iv.next834 = add nuw nsw i64 %indvars.iv833, 96
  %indvars.iv.next843 = add nuw nsw i64 %indvars.iv842, 5
  %indvars.iv.next845 = add nuw nsw i64 %indvars.iv844, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next516, 13
  br i1 %exitcond849.not, label %kernel_syr2k.exit, label %polly.loop_header512

polly.loop_header518:                             ; preds = %polly.loop_exit527, %polly.loop_header512
  %polly.indvar521 = phi i64 [ 0, %polly.loop_header512 ], [ %polly.indvar_next522, %polly.loop_exit527 ]
  %177 = mul nuw nsw i64 %polly.indvar521, 20
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_exit534
  %polly.indvar_next522 = add nuw nsw i64 %polly.indvar521, 1
  %exitcond848.not = icmp eq i64 %polly.indvar_next522, 50
  br i1 %exitcond848.not, label %polly.loop_exit520, label %polly.loop_header518

polly.loop_header525:                             ; preds = %polly.loop_exit534, %polly.loop_header518
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit534 ], [ %indvars.iv833, %polly.loop_header518 ]
  %indvars.iv830 = phi i64 [ %indvars.iv.next831, %polly.loop_exit534 ], [ %indvars.iv828, %polly.loop_header518 ]
  %polly.indvar528 = phi i64 [ %polly.indvar_next529, %polly.loop_exit534 ], [ 0, %polly.loop_header518 ]
  %178 = mul nuw nsw i64 %polly.indvar528, 20
  %179 = add nsw i64 %178, %171
  %180 = icmp sgt i64 %179, 0
  %181 = select i1 %180, i64 %179, i64 0
  %polly.loop_guard535.not = icmp sgt i64 %181, %174
  br i1 %polly.loop_guard535.not, label %polly.loop_exit534, label %polly.loop_header532.preheader

polly.loop_header532.preheader:                   ; preds = %polly.loop_header525
  %smax832 = call i64 @llvm.smax.i64(i64 %indvars.iv830, i64 0)
  %182 = add i64 %smax832, %indvars.iv835
  %183 = sub nsw i64 %175, %178
  br label %polly.loop_header532

polly.loop_exit534:                               ; preds = %polly.loop_exit541, %polly.loop_header525
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %indvars.iv.next831 = add nsw i64 %indvars.iv830, 20
  %indvars.iv.next836 = add nsw i64 %indvars.iv835, -20
  %exitcond847.not = icmp eq i64 %polly.indvar528, %176
  br i1 %exitcond847.not, label %polly.loop_exit527, label %polly.loop_header525

polly.loop_header532:                             ; preds = %polly.loop_header532.preheader, %polly.loop_exit541
  %indvars.iv837 = phi i64 [ %182, %polly.loop_header532.preheader ], [ %indvars.iv.next838, %polly.loop_exit541 ]
  %polly.indvar536 = phi i64 [ %181, %polly.loop_header532.preheader ], [ %polly.indvar_next537, %polly.loop_exit541 ]
  %smin839 = call i64 @llvm.smin.i64(i64 %indvars.iv837, i64 19)
  %184 = add nsw i64 %polly.indvar536, %183
  %polly.loop_guard549888 = icmp sgt i64 %184, -1
  %185 = add nuw nsw i64 %polly.indvar536, %175
  %186 = mul i64 %185, 8000
  %187 = mul i64 %185, 9600
  br i1 %polly.loop_guard549888, label %polly.loop_header539.us, label %polly.loop_exit541

polly.loop_header539.us:                          ; preds = %polly.loop_header532, %polly.loop_exit548.loopexit.us
  %polly.indvar542.us = phi i64 [ %polly.indvar_next543.us, %polly.loop_exit548.loopexit.us ], [ 0, %polly.loop_header532 ]
  %188 = add nuw nsw i64 %polly.indvar542.us, %177
  %189 = shl i64 %188, 3
  %190 = add i64 %189, %186
  %scevgep556.us = getelementptr i8, i8* %call2, i64 %190
  %scevgep556557.us = bitcast i8* %scevgep556.us to double*
  %_p_scalar_558.us = load double, double* %scevgep556557.us, align 8, !alias.scope !81, !noalias !84
  %scevgep562.us = getelementptr i8, i8* %call1, i64 %190
  %scevgep562563.us = bitcast i8* %scevgep562.us to double*
  %_p_scalar_564.us = load double, double* %scevgep562563.us, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header546.us

polly.loop_header546.us:                          ; preds = %polly.loop_header539.us, %polly.loop_header546.us
  %polly.indvar550.us = phi i64 [ %polly.indvar_next551.us, %polly.loop_header546.us ], [ 0, %polly.loop_header539.us ]
  %191 = add nuw nsw i64 %polly.indvar550.us, %178
  %192 = mul nuw nsw i64 %191, 8000
  %193 = add nuw nsw i64 %192, %189
  %scevgep553.us = getelementptr i8, i8* %call1, i64 %193
  %scevgep553554.us = bitcast i8* %scevgep553.us to double*
  %_p_scalar_555.us = load double, double* %scevgep553554.us, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us = fmul fast double %_p_scalar_558.us, %_p_scalar_555.us
  %scevgep559.us = getelementptr i8, i8* %call2, i64 %193
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us = fmul fast double %_p_scalar_564.us, %_p_scalar_561.us
  %194 = shl i64 %191, 3
  %195 = add i64 %194, %187
  %scevgep565.us = getelementptr i8, i8* %call, i64 %195
  %scevgep565566.us = bitcast i8* %scevgep565.us to double*
  %_p_scalar_567.us = load double, double* %scevgep565566.us, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_567.us
  store double %p_add42.i.us, double* %scevgep565566.us, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next551.us = add nuw nsw i64 %polly.indvar550.us, 1
  %exitcond840.not = icmp eq i64 %polly.indvar550.us, %smin839
  br i1 %exitcond840.not, label %polly.loop_exit548.loopexit.us, label %polly.loop_header546.us

polly.loop_exit548.loopexit.us:                   ; preds = %polly.loop_header546.us
  %polly.indvar_next543.us = add nuw nsw i64 %polly.indvar542.us, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next543.us, 20
  br i1 %exitcond841.not, label %polly.loop_exit541, label %polly.loop_header539.us

polly.loop_exit541:                               ; preds = %polly.loop_exit548.loopexit.us, %polly.loop_header532
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %polly.loop_cond538.not.not = icmp ult i64 %polly.indvar536, %174
  %indvars.iv.next838 = add i64 %indvars.iv837, 1
  br i1 %polly.loop_cond538.not.not, label %polly.loop_header532, label %polly.loop_exit534

polly.loop_header694:                             ; preds = %entry, %polly.loop_exit702
  %indvars.iv876 = phi i64 [ %indvars.iv.next877, %polly.loop_exit702 ], [ 0, %entry ]
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %entry ]
  %smin878 = call i64 @llvm.smin.i64(i64 %indvars.iv876, i64 -1168)
  %196 = shl nsw i64 %polly.indvar697, 5
  %197 = add nsw i64 %smin878, 1199
  br label %polly.loop_header700

polly.loop_exit702:                               ; preds = %polly.loop_exit708
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %indvars.iv.next877 = add nsw i64 %indvars.iv876, -32
  %exitcond881.not = icmp eq i64 %polly.indvar_next698, 38
  br i1 %exitcond881.not, label %polly.loop_header721, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_exit708, %polly.loop_header694
  %indvars.iv872 = phi i64 [ %indvars.iv.next873, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %198 = mul nsw i64 %polly.indvar703, -32
  %smin916 = call i64 @llvm.smin.i64(i64 %198, i64 -1168)
  %199 = add nsw i64 %smin916, 1200
  %smin874 = call i64 @llvm.smin.i64(i64 %indvars.iv872, i64 -1168)
  %200 = shl nsw i64 %polly.indvar703, 5
  %201 = add nsw i64 %smin874, 1199
  br label %polly.loop_header706

polly.loop_exit708:                               ; preds = %polly.loop_exit714
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %indvars.iv.next873 = add nsw i64 %indvars.iv872, -32
  %exitcond880.not = icmp eq i64 %polly.indvar_next704, 38
  br i1 %exitcond880.not, label %polly.loop_exit702, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_exit714, %polly.loop_header700
  %polly.indvar709 = phi i64 [ 0, %polly.loop_header700 ], [ %polly.indvar_next710, %polly.loop_exit714 ]
  %202 = add nuw nsw i64 %polly.indvar709, %196
  %203 = trunc i64 %202 to i32
  %204 = mul nuw nsw i64 %202, 9600
  %min.iters.check = icmp eq i64 %199, 0
  br i1 %min.iters.check, label %polly.loop_header712, label %vector.ph917

vector.ph917:                                     ; preds = %polly.loop_header706
  %broadcast.splatinsert924 = insertelement <4 x i64> poison, i64 %200, i32 0
  %broadcast.splat925 = shufflevector <4 x i64> %broadcast.splatinsert924, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert926 = insertelement <4 x i32> poison, i32 %203, i32 0
  %broadcast.splat927 = shufflevector <4 x i32> %broadcast.splatinsert926, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body915

vector.body915:                                   ; preds = %vector.body915, %vector.ph917
  %index918 = phi i64 [ 0, %vector.ph917 ], [ %index.next919, %vector.body915 ]
  %vec.ind922 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph917 ], [ %vec.ind.next923, %vector.body915 ]
  %205 = add nuw nsw <4 x i64> %vec.ind922, %broadcast.splat925
  %206 = trunc <4 x i64> %205 to <4 x i32>
  %207 = mul <4 x i32> %broadcast.splat927, %206
  %208 = add <4 x i32> %207, <i32 3, i32 3, i32 3, i32 3>
  %209 = urem <4 x i32> %208, <i32 1200, i32 1200, i32 1200, i32 1200>
  %210 = sitofp <4 x i32> %209 to <4 x double>
  %211 = fmul fast <4 x double> %210, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %212 = extractelement <4 x i64> %205, i32 0
  %213 = shl i64 %212, 3
  %214 = add nuw nsw i64 %213, %204
  %215 = getelementptr i8, i8* %call, i64 %214
  %216 = bitcast i8* %215 to <4 x double>*
  store <4 x double> %211, <4 x double>* %216, align 8, !alias.scope !86, !noalias !88
  %index.next919 = add i64 %index918, 4
  %vec.ind.next923 = add <4 x i64> %vec.ind922, <i64 4, i64 4, i64 4, i64 4>
  %217 = icmp eq i64 %index.next919, %199
  br i1 %217, label %polly.loop_exit714, label %vector.body915, !llvm.loop !91

polly.loop_exit714:                               ; preds = %vector.body915, %polly.loop_header712
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %exitcond879.not = icmp eq i64 %polly.indvar709, %197
  br i1 %exitcond879.not, label %polly.loop_exit708, label %polly.loop_header706

polly.loop_header712:                             ; preds = %polly.loop_header706, %polly.loop_header712
  %polly.indvar715 = phi i64 [ %polly.indvar_next716, %polly.loop_header712 ], [ 0, %polly.loop_header706 ]
  %218 = add nuw nsw i64 %polly.indvar715, %200
  %219 = trunc i64 %218 to i32
  %220 = mul i32 %219, %203
  %221 = add i32 %220, 3
  %222 = urem i32 %221, 1200
  %p_conv31.i = sitofp i32 %222 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %223 = shl i64 %218, 3
  %224 = add nuw nsw i64 %223, %204
  %scevgep718 = getelementptr i8, i8* %call, i64 %224
  %scevgep718719 = bitcast i8* %scevgep718 to double*
  store double %p_div33.i, double* %scevgep718719, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond875.not = icmp eq i64 %polly.indvar715, %201
  br i1 %exitcond875.not, label %polly.loop_exit714, label %polly.loop_header712, !llvm.loop !92

polly.loop_header721:                             ; preds = %polly.loop_exit702, %polly.loop_exit729
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %smin868 = call i64 @llvm.smin.i64(i64 %indvars.iv866, i64 -1168)
  %225 = shl nsw i64 %polly.indvar724, 5
  %226 = add nsw i64 %smin868, 1199
  br label %polly.loop_header727

polly.loop_exit729:                               ; preds = %polly.loop_exit735
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %indvars.iv.next867 = add nsw i64 %indvars.iv866, -32
  %exitcond871.not = icmp eq i64 %polly.indvar_next725, 38
  br i1 %exitcond871.not, label %polly.loop_header747, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_exit735, %polly.loop_header721
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %227 = mul nsw i64 %polly.indvar730, -32
  %smin931 = call i64 @llvm.smin.i64(i64 %227, i64 -968)
  %228 = add nsw i64 %smin931, 1000
  %smin864 = call i64 @llvm.smin.i64(i64 %indvars.iv862, i64 -968)
  %229 = shl nsw i64 %polly.indvar730, 5
  %230 = add nsw i64 %smin864, 999
  br label %polly.loop_header733

polly.loop_exit735:                               ; preds = %polly.loop_exit741
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, -32
  %exitcond870.not = icmp eq i64 %polly.indvar_next731, 32
  br i1 %exitcond870.not, label %polly.loop_exit729, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_exit741, %polly.loop_header727
  %polly.indvar736 = phi i64 [ 0, %polly.loop_header727 ], [ %polly.indvar_next737, %polly.loop_exit741 ]
  %231 = add nuw nsw i64 %polly.indvar736, %225
  %232 = trunc i64 %231 to i32
  %233 = mul nuw nsw i64 %231, 8000
  %min.iters.check932 = icmp eq i64 %228, 0
  br i1 %min.iters.check932, label %polly.loop_header739, label %vector.ph933

vector.ph933:                                     ; preds = %polly.loop_header733
  %broadcast.splatinsert942 = insertelement <4 x i64> poison, i64 %229, i32 0
  %broadcast.splat943 = shufflevector <4 x i64> %broadcast.splatinsert942, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert944 = insertelement <4 x i32> poison, i32 %232, i32 0
  %broadcast.splat945 = shufflevector <4 x i32> %broadcast.splatinsert944, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body930

vector.body930:                                   ; preds = %vector.body930, %vector.ph933
  %index936 = phi i64 [ 0, %vector.ph933 ], [ %index.next937, %vector.body930 ]
  %vec.ind940 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph933 ], [ %vec.ind.next941, %vector.body930 ]
  %234 = add nuw nsw <4 x i64> %vec.ind940, %broadcast.splat943
  %235 = trunc <4 x i64> %234 to <4 x i32>
  %236 = mul <4 x i32> %broadcast.splat945, %235
  %237 = add <4 x i32> %236, <i32 2, i32 2, i32 2, i32 2>
  %238 = urem <4 x i32> %237, <i32 1000, i32 1000, i32 1000, i32 1000>
  %239 = sitofp <4 x i32> %238 to <4 x double>
  %240 = fmul fast <4 x double> %239, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %241 = extractelement <4 x i64> %234, i32 0
  %242 = shl i64 %241, 3
  %243 = add nuw nsw i64 %242, %233
  %244 = getelementptr i8, i8* %call2, i64 %243
  %245 = bitcast i8* %244 to <4 x double>*
  store <4 x double> %240, <4 x double>* %245, align 8, !alias.scope !90, !noalias !93
  %index.next937 = add i64 %index936, 4
  %vec.ind.next941 = add <4 x i64> %vec.ind940, <i64 4, i64 4, i64 4, i64 4>
  %246 = icmp eq i64 %index.next937, %228
  br i1 %246, label %polly.loop_exit741, label %vector.body930, !llvm.loop !94

polly.loop_exit741:                               ; preds = %vector.body930, %polly.loop_header739
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %exitcond869.not = icmp eq i64 %polly.indvar736, %226
  br i1 %exitcond869.not, label %polly.loop_exit735, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_header733, %polly.loop_header739
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_header739 ], [ 0, %polly.loop_header733 ]
  %247 = add nuw nsw i64 %polly.indvar742, %229
  %248 = trunc i64 %247 to i32
  %249 = mul i32 %248, %232
  %250 = add i32 %249, 2
  %251 = urem i32 %250, 1000
  %p_conv10.i = sitofp i32 %251 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %252 = shl i64 %247, 3
  %253 = add nuw nsw i64 %252, %233
  %scevgep745 = getelementptr i8, i8* %call2, i64 %253
  %scevgep745746 = bitcast i8* %scevgep745 to double*
  store double %p_div12.i, double* %scevgep745746, align 8, !alias.scope !90, !noalias !93
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %exitcond865.not = icmp eq i64 %polly.indvar742, %230
  br i1 %exitcond865.not, label %polly.loop_exit741, label %polly.loop_header739, !llvm.loop !95

polly.loop_header747:                             ; preds = %polly.loop_exit729, %polly.loop_exit755
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %smin858 = call i64 @llvm.smin.i64(i64 %indvars.iv856, i64 -1168)
  %254 = shl nsw i64 %polly.indvar750, 5
  %255 = add nsw i64 %smin858, 1199
  br label %polly.loop_header753

polly.loop_exit755:                               ; preds = %polly.loop_exit761
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %indvars.iv.next857 = add nsw i64 %indvars.iv856, -32
  %exitcond861.not = icmp eq i64 %polly.indvar_next751, 38
  br i1 %exitcond861.not, label %init_array.exit, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_exit761, %polly.loop_header747
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %256 = mul nsw i64 %polly.indvar756, -32
  %smin949 = call i64 @llvm.smin.i64(i64 %256, i64 -968)
  %257 = add nsw i64 %smin949, 1000
  %smin854 = call i64 @llvm.smin.i64(i64 %indvars.iv852, i64 -968)
  %258 = shl nsw i64 %polly.indvar756, 5
  %259 = add nsw i64 %smin854, 999
  br label %polly.loop_header759

polly.loop_exit761:                               ; preds = %polly.loop_exit767
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %indvars.iv.next853 = add nsw i64 %indvars.iv852, -32
  %exitcond860.not = icmp eq i64 %polly.indvar_next757, 32
  br i1 %exitcond860.not, label %polly.loop_exit755, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_exit767, %polly.loop_header753
  %polly.indvar762 = phi i64 [ 0, %polly.loop_header753 ], [ %polly.indvar_next763, %polly.loop_exit767 ]
  %260 = add nuw nsw i64 %polly.indvar762, %254
  %261 = trunc i64 %260 to i32
  %262 = mul nuw nsw i64 %260, 8000
  %min.iters.check950 = icmp eq i64 %257, 0
  br i1 %min.iters.check950, label %polly.loop_header765, label %vector.ph951

vector.ph951:                                     ; preds = %polly.loop_header759
  %broadcast.splatinsert960 = insertelement <4 x i64> poison, i64 %258, i32 0
  %broadcast.splat961 = shufflevector <4 x i64> %broadcast.splatinsert960, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert962 = insertelement <4 x i32> poison, i32 %261, i32 0
  %broadcast.splat963 = shufflevector <4 x i32> %broadcast.splatinsert962, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body948

vector.body948:                                   ; preds = %vector.body948, %vector.ph951
  %index954 = phi i64 [ 0, %vector.ph951 ], [ %index.next955, %vector.body948 ]
  %vec.ind958 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph951 ], [ %vec.ind.next959, %vector.body948 ]
  %263 = add nuw nsw <4 x i64> %vec.ind958, %broadcast.splat961
  %264 = trunc <4 x i64> %263 to <4 x i32>
  %265 = mul <4 x i32> %broadcast.splat963, %264
  %266 = add <4 x i32> %265, <i32 1, i32 1, i32 1, i32 1>
  %267 = urem <4 x i32> %266, <i32 1200, i32 1200, i32 1200, i32 1200>
  %268 = sitofp <4 x i32> %267 to <4 x double>
  %269 = fmul fast <4 x double> %268, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %270 = extractelement <4 x i64> %263, i32 0
  %271 = shl i64 %270, 3
  %272 = add nuw nsw i64 %271, %262
  %273 = getelementptr i8, i8* %call1, i64 %272
  %274 = bitcast i8* %273 to <4 x double>*
  store <4 x double> %269, <4 x double>* %274, align 8, !alias.scope !89, !noalias !96
  %index.next955 = add i64 %index954, 4
  %vec.ind.next959 = add <4 x i64> %vec.ind958, <i64 4, i64 4, i64 4, i64 4>
  %275 = icmp eq i64 %index.next955, %257
  br i1 %275, label %polly.loop_exit767, label %vector.body948, !llvm.loop !97

polly.loop_exit767:                               ; preds = %vector.body948, %polly.loop_header765
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %exitcond859.not = icmp eq i64 %polly.indvar762, %255
  br i1 %exitcond859.not, label %polly.loop_exit761, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_header759, %polly.loop_header765
  %polly.indvar768 = phi i64 [ %polly.indvar_next769, %polly.loop_header765 ], [ 0, %polly.loop_header759 ]
  %276 = add nuw nsw i64 %polly.indvar768, %258
  %277 = trunc i64 %276 to i32
  %278 = mul i32 %277, %261
  %279 = add i32 %278, 1
  %280 = urem i32 %279, 1200
  %p_conv.i = sitofp i32 %280 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %281 = shl i64 %276, 3
  %282 = add nuw nsw i64 %281, %262
  %scevgep772 = getelementptr i8, i8* %call1, i64 %282
  %scevgep772773 = bitcast i8* %scevgep772 to double*
  store double %p_div.i, double* %scevgep772773, align 8, !alias.scope !89, !noalias !96
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %exitcond855.not = icmp eq i64 %polly.indvar768, %259
  br i1 %exitcond855.not, label %polly.loop_exit767, label %polly.loop_header765, !llvm.loop !98
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
!24 = !{!"llvm.loop.tile.size", i32 20}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !24, !33, !36}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.followup_floor", !34}
!34 = distinct !{!34, !12, !35}
!35 = !{!"llvm.loop.id", !"j1"}
!36 = !{!"llvm.loop.tile.followup_tile", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j2"}
!39 = distinct !{!39, !12, !22, !40, !41, !42, !43, !44, !47}
!40 = !{!"llvm.loop.id", !"i"}
!41 = !{!"llvm.loop.tile.enable", i1 true}
!42 = !{!"llvm.loop.tile.depth", i32 3}
!43 = !{!"llvm.loop.tile.size", i32 96}
!44 = !{!"llvm.loop.tile.followup_floor", !45}
!45 = distinct !{!45, !12, !46}
!46 = !{!"llvm.loop.id", !"i1"}
!47 = !{!"llvm.loop.tile.followup_tile", !48}
!48 = distinct !{!48, !12, !49}
!49 = !{!"llvm.loop.id", !"i2"}
!50 = distinct !{!50, !12, !13}
!51 = distinct !{!51, !12, !13}
!52 = distinct !{!52, !12, !13}
!53 = distinct !{!53, !12, !13}
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !4, i64 0}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !59, !"polly.alias.scope.MemRef_call"}
!59 = distinct !{!59, !"polly.alias.scope.domain"}
!60 = !{!61, !62}
!61 = distinct !{!61, !59, !"polly.alias.scope.MemRef_call1"}
!62 = distinct !{!62, !59, !"polly.alias.scope.MemRef_call2"}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !65, !13}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = !{!58, !61}
!67 = !{!58, !62}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !65, !13}
!75 = !{!68, !71}
!76 = !{!68, !72}
!77 = distinct !{!77, !78, !"polly.alias.scope.MemRef_call"}
!78 = distinct !{!78, !"polly.alias.scope.domain"}
!79 = !{!80, !81}
!80 = distinct !{!80, !78, !"polly.alias.scope.MemRef_call1"}
!81 = distinct !{!81, !78, !"polly.alias.scope.MemRef_call2"}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !65, !13}
!84 = !{!77, !80}
!85 = !{!77, !81}
!86 = distinct !{!86, !87, !"polly.alias.scope.MemRef_call"}
!87 = distinct !{!87, !"polly.alias.scope.domain"}
!88 = !{!89, !90}
!89 = distinct !{!89, !87, !"polly.alias.scope.MemRef_call1"}
!90 = distinct !{!90, !87, !"polly.alias.scope.MemRef_call2"}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !65, !13}
!93 = !{!89, !86}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !65, !13}
!96 = !{!90, !86}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !65, !13}
