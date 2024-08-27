; ModuleID = 'syr2k_exhaustive/mmp_all_XL_9914.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_9914.c"
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
  %scevgep887 = getelementptr i8, i8* %call2, i64 %12
  %scevgep886 = getelementptr i8, i8* %call2, i64 %11
  %scevgep885 = getelementptr i8, i8* %call1, i64 %12
  %scevgep884 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep884, %scevgep887
  %bound1 = icmp ult i8* %scevgep886, %scevgep885
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
  br i1 %exitcond18.not.i, label %vector.ph891, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph891:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert898 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat899 = shufflevector <4 x i64> %broadcast.splatinsert898, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body890

vector.body890:                                   ; preds = %vector.body890, %vector.ph891
  %index892 = phi i64 [ 0, %vector.ph891 ], [ %index.next893, %vector.body890 ]
  %vec.ind896 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph891 ], [ %vec.ind.next897, %vector.body890 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind896, %broadcast.splat899
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv7.i, i64 %index892
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next893 = add i64 %index892, 4
  %vec.ind.next897 = add <4 x i64> %vec.ind896, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next893, 1200
  br i1 %40, label %for.inc41.i, label %vector.body890, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body890
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph891, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit755
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header496, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check954 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check954, label %for.body3.i46.preheader1031, label %vector.ph955

vector.ph955:                                     ; preds = %for.body3.i46.preheader
  %n.vec957 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body953

vector.body953:                                   ; preds = %vector.body953, %vector.ph955
  %index958 = phi i64 [ 0, %vector.ph955 ], [ %index.next959, %vector.body953 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %index958
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next959 = add i64 %index958, 4
  %46 = icmp eq i64 %index.next959, %n.vec957
  br i1 %46, label %middle.block951, label %vector.body953, !llvm.loop !18

middle.block951:                                  ; preds = %vector.body953
  %cmp.n961 = icmp eq i64 %indvars.iv21.i, %n.vec957
  br i1 %cmp.n961, label %for.inc6.i, label %for.body3.i46.preheader1031

for.body3.i46.preheader1031:                      ; preds = %for.body3.i46.preheader, %middle.block951
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec957, %middle.block951 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1031, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1031 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block951, %for.cond1.preheader.i45
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
  %min.iters.check977 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check977, label %for.body3.i60.preheader1029, label %vector.ph978

vector.ph978:                                     ; preds = %for.body3.i60.preheader
  %n.vec980 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body976

vector.body976:                                   ; preds = %vector.body976, %vector.ph978
  %index981 = phi i64 [ 0, %vector.ph978 ], [ %index.next982, %vector.body976 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %index981
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load985 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load985, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next982 = add i64 %index981, 4
  %57 = icmp eq i64 %index.next982, %n.vec980
  br i1 %57, label %middle.block974, label %vector.body976, !llvm.loop !51

middle.block974:                                  ; preds = %vector.body976
  %cmp.n984 = icmp eq i64 %indvars.iv21.i52, %n.vec980
  br i1 %cmp.n984, label %for.inc6.i63, label %for.body3.i60.preheader1029

for.body3.i60.preheader1029:                      ; preds = %for.body3.i60.preheader, %middle.block974
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec980, %middle.block974 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1029, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1029 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block974, %for.cond1.preheader.i54
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
  %min.iters.check1003 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1003, label %for.body3.i99.preheader1027, label %vector.ph1004

vector.ph1004:                                    ; preds = %for.body3.i99.preheader
  %n.vec1006 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1002

vector.body1002:                                  ; preds = %vector.body1002, %vector.ph1004
  %index1007 = phi i64 [ 0, %vector.ph1004 ], [ %index.next1008, %vector.body1002 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %index1007
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1011 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1011, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1008 = add i64 %index1007, 4
  %68 = icmp eq i64 %index.next1008, %n.vec1006
  br i1 %68, label %middle.block1000, label %vector.body1002, !llvm.loop !53

middle.block1000:                                 ; preds = %vector.body1002
  %cmp.n1010 = icmp eq i64 %indvars.iv21.i91, %n.vec1006
  br i1 %cmp.n1010, label %for.inc6.i102, label %for.body3.i99.preheader1027

for.body3.i99.preheader1027:                      ; preds = %for.body3.i99.preheader, %middle.block1000
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1006, %middle.block1000 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1027, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1027 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1000, %for.cond1.preheader.i93
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
  %indvar1015 = phi i64 [ %indvar.next1016, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1015, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1017 = icmp ult i64 %88, 4
  br i1 %min.iters.check1017, label %polly.loop_header191.preheader, label %vector.ph1018

vector.ph1018:                                    ; preds = %polly.loop_header
  %n.vec1020 = and i64 %88, -4
  br label %vector.body1014

vector.body1014:                                  ; preds = %vector.body1014, %vector.ph1018
  %index1021 = phi i64 [ 0, %vector.ph1018 ], [ %index.next1022, %vector.body1014 ]
  %90 = shl nuw nsw i64 %index1021, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1025 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1025, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1022 = add i64 %index1021, 4
  %95 = icmp eq i64 %index.next1022, %n.vec1020
  br i1 %95, label %middle.block1012, label %vector.body1014, !llvm.loop !64

middle.block1012:                                 ; preds = %vector.body1014
  %cmp.n1024 = icmp eq i64 %88, %n.vec1020
  br i1 %cmp.n1024, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1012
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1020, %middle.block1012 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1012
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond802.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1016 = add i64 %indvar1015, 1
  br i1 %exitcond802.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond801.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = trunc i64 %polly.indvar202 to i16
  %98 = mul i16 %97, 9
  %pexp.p_div_q.lhs.trunc = add i16 %98, 34
  %pexp.p_div_q778 = udiv i16 %pexp.p_div_q.lhs.trunc, 25
  %pexp.p_div_q.zext = zext i16 %pexp.p_div_q778 to i64
  %99 = sub nsw i64 %polly.indvar202, %pexp.p_div_q.zext
  %100 = add nsw i64 %99, 1
  %.inv = icmp slt i64 %99, 23
  %101 = select i1 %.inv, i64 %100, i64 23
  %polly.loop_guard = icmp sgt i64 %101, -1
  br i1 %polly.loop_guard, label %polly.loop_header205.preheader, label %polly.loop_exit207

polly.loop_header205.preheader:                   ; preds = %polly.loop_header199
  %102 = mul nsw i64 %polly.indvar202, -32
  %103 = icmp slt i64 %102, -1168
  %104 = select i1 %103, i64 %102, i64 -1168
  %105 = add nsw i64 %104, 1199
  %106 = shl nsw i64 %polly.indvar202, 5
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit214, %polly.loop_header199
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %indvars.iv.next793 = add nuw nsw i64 %indvars.iv792, 32
  %exitcond800.not = icmp eq i64 %polly.indvar_next203, 38
  br i1 %exitcond800.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205.preheader, %polly.loop_exit214
  %indvars.iv794 = phi i64 [ %indvars.iv792, %polly.loop_header205.preheader ], [ %indvars.iv.next795, %polly.loop_exit214 ]
  %indvars.iv790 = phi i64 [ %indvars.iv, %polly.loop_header205.preheader ], [ %indvars.iv.next791, %polly.loop_exit214 ]
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header205.preheader ], [ %polly.indvar_next209, %polly.loop_exit214 ]
  %107 = mul nsw i64 %polly.indvar208, 50
  %108 = add nsw i64 %107, %102
  %109 = icmp sgt i64 %108, 0
  %110 = select i1 %109, i64 %108, i64 0
  %polly.loop_guard215.not = icmp sgt i64 %110, %105
  br i1 %polly.loop_guard215.not, label %polly.loop_exit214, label %polly.loop_header212.preheader

polly.loop_header212.preheader:                   ; preds = %polly.loop_header205
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv790, i64 0)
  %111 = add i64 %smax, %indvars.iv794
  %112 = sub nsw i64 %106, %107
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit221, %polly.loop_header205
  %polly.indvar_next209 = add nuw i64 %polly.indvar208, 1
  %indvars.iv.next791 = add i64 %indvars.iv790, 50
  %indvars.iv.next795 = add i64 %indvars.iv794, -50
  %exitcond799.not = icmp eq i64 %polly.indvar208, %101
  br i1 %exitcond799.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header212:                             ; preds = %polly.loop_header212.preheader, %polly.loop_exit221
  %indvars.iv796 = phi i64 [ %111, %polly.loop_header212.preheader ], [ %indvars.iv.next797, %polly.loop_exit221 ]
  %polly.indvar216 = phi i64 [ %110, %polly.loop_header212.preheader ], [ %polly.indvar_next217, %polly.loop_exit221 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv796, i64 49)
  %113 = add nsw i64 %polly.indvar216, %112
  %polly.loop_guard229873 = icmp sgt i64 %113, -1
  %114 = add nuw nsw i64 %polly.indvar216, %106
  %115 = mul i64 %114, 8000
  %116 = mul i64 %114, 9600
  br i1 %polly.loop_guard229873, label %polly.loop_header219.us, label %polly.loop_exit221

polly.loop_header219.us:                          ; preds = %polly.loop_header212, %polly.loop_exit228.loopexit.us
  %polly.indvar222.us = phi i64 [ %polly.indvar_next223.us, %polly.loop_exit228.loopexit.us ], [ 0, %polly.loop_header212 ]
  %117 = shl nuw nsw i64 %polly.indvar222.us, 3
  %scevgep233.us = getelementptr i8, i8* %call1, i64 %117
  %scevgep237.us = getelementptr i8, i8* %call2, i64 %117
  %scevgep238.us = getelementptr i8, i8* %scevgep237.us, i64 %115
  %scevgep238239.us = bitcast i8* %scevgep238.us to double*
  %_p_scalar_240.us = load double, double* %scevgep238239.us, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us = getelementptr i8, i8* %scevgep233.us, i64 %115
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header226.us

polly.loop_header226.us:                          ; preds = %polly.loop_header226.us, %polly.loop_header219.us
  %polly.indvar230.us = phi i64 [ 0, %polly.loop_header219.us ], [ %polly.indvar_next231.us, %polly.loop_header226.us ]
  %118 = add nuw nsw i64 %polly.indvar230.us, %107
  %119 = mul i64 %118, 8000
  %scevgep234.us = getelementptr i8, i8* %scevgep233.us, i64 %119
  %scevgep234235.us = bitcast i8* %scevgep234.us to double*
  %_p_scalar_236.us = load double, double* %scevgep234235.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_240.us, %_p_scalar_236.us
  %scevgep242.us = getelementptr i8, i8* %scevgep237.us, i64 %119
  %scevgep242243.us = bitcast i8* %scevgep242.us to double*
  %_p_scalar_244.us = load double, double* %scevgep242243.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_248.us, %_p_scalar_244.us
  %120 = shl i64 %118, 3
  %121 = add i64 %120, %116
  %scevgep249.us = getelementptr i8, i8* %call, i64 %121
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
  %exitcond798.not = icmp eq i64 %polly.indvar_next223.us, 1000
  br i1 %exitcond798.not, label %polly.loop_exit221, label %polly.loop_header219.us

polly.loop_exit221:                               ; preds = %polly.loop_exit228.loopexit.us, %polly.loop_header212
  %polly.indvar_next217 = add nuw nsw i64 %polly.indvar216, 1
  %polly.loop_cond218.not.not = icmp ult i64 %polly.indvar216, %105
  %indvars.iv.next797 = add i64 %indvars.iv796, 1
  br i1 %polly.loop_cond218.not.not, label %polly.loop_header212, label %polly.loop_exit214

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar989 = phi i64 [ %indvar.next990, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %122 = add i64 %indvar989, 1
  %123 = mul nuw nsw i64 %polly.indvar341, 9600
  %scevgep350 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check991 = icmp ult i64 %122, 4
  br i1 %min.iters.check991, label %polly.loop_header344.preheader, label %vector.ph992

vector.ph992:                                     ; preds = %polly.loop_header338
  %n.vec994 = and i64 %122, -4
  br label %vector.body988

vector.body988:                                   ; preds = %vector.body988, %vector.ph992
  %index995 = phi i64 [ 0, %vector.ph992 ], [ %index.next996, %vector.body988 ]
  %124 = shl nuw nsw i64 %index995, 3
  %125 = getelementptr i8, i8* %scevgep350, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load999 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !69, !noalias !71
  %127 = fmul fast <4 x double> %wide.load999, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !69, !noalias !71
  %index.next996 = add i64 %index995, 4
  %129 = icmp eq i64 %index.next996, %n.vec994
  br i1 %129, label %middle.block986, label %vector.body988, !llvm.loop !74

middle.block986:                                  ; preds = %vector.body988
  %cmp.n998 = icmp eq i64 %122, %n.vec994
  br i1 %cmp.n998, label %polly.loop_exit346, label %polly.loop_header344.preheader

polly.loop_header344.preheader:                   ; preds = %polly.loop_header338, %middle.block986
  %polly.indvar347.ph = phi i64 [ 0, %polly.loop_header338 ], [ %n.vec994, %middle.block986 ]
  br label %polly.loop_header344

polly.loop_exit346:                               ; preds = %polly.loop_header344, %middle.block986
  %polly.indvar_next342 = add nuw nsw i64 %polly.indvar341, 1
  %exitcond820.not = icmp eq i64 %polly.indvar_next342, 1200
  %indvar.next990 = add i64 %indvar989, 1
  br i1 %exitcond820.not, label %polly.loop_header354, label %polly.loop_header338

polly.loop_header344:                             ; preds = %polly.loop_header344.preheader, %polly.loop_header344
  %polly.indvar347 = phi i64 [ %polly.indvar_next348, %polly.loop_header344 ], [ %polly.indvar347.ph, %polly.loop_header344.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %130
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond819.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !75

polly.loop_header354:                             ; preds = %polly.loop_exit346, %polly.loop_exit364
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %polly.loop_exit364 ], [ 0, %polly.loop_exit346 ]
  %indvars.iv803 = phi i64 [ %indvars.iv.next804, %polly.loop_exit364 ], [ 0, %polly.loop_exit346 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit364 ], [ 0, %polly.loop_exit346 ]
  %131 = trunc i64 %polly.indvar357 to i16
  %132 = mul i16 %131, 9
  %pexp.p_div_q360.lhs.trunc = add i16 %132, 34
  %pexp.p_div_q360777 = udiv i16 %pexp.p_div_q360.lhs.trunc, 25
  %pexp.p_div_q360.zext = zext i16 %pexp.p_div_q360777 to i64
  %133 = sub nsw i64 %polly.indvar357, %pexp.p_div_q360.zext
  %134 = add nsw i64 %133, 1
  %.inv774 = icmp slt i64 %133, 23
  %135 = select i1 %.inv774, i64 %134, i64 23
  %polly.loop_guard365 = icmp sgt i64 %135, -1
  br i1 %polly.loop_guard365, label %polly.loop_header362.preheader, label %polly.loop_exit364

polly.loop_header362.preheader:                   ; preds = %polly.loop_header354
  %136 = mul nsw i64 %polly.indvar357, -32
  %137 = icmp slt i64 %136, -1168
  %138 = select i1 %137, i64 %136, i64 -1168
  %139 = add nsw i64 %138, 1199
  %140 = shl nsw i64 %polly.indvar357, 5
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_exit372, %polly.loop_header354
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %indvars.iv.next804 = add nsw i64 %indvars.iv803, -32
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 32
  %exitcond818.not = icmp eq i64 %polly.indvar_next358, 38
  br i1 %exitcond818.not, label %kernel_syr2k.exit90, label %polly.loop_header354

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_exit372
  %indvars.iv810 = phi i64 [ %indvars.iv808, %polly.loop_header362.preheader ], [ %indvars.iv.next811, %polly.loop_exit372 ]
  %indvars.iv805 = phi i64 [ %indvars.iv803, %polly.loop_header362.preheader ], [ %indvars.iv.next806, %polly.loop_exit372 ]
  %polly.indvar366 = phi i64 [ 0, %polly.loop_header362.preheader ], [ %polly.indvar_next367, %polly.loop_exit372 ]
  %141 = mul nsw i64 %polly.indvar366, 50
  %142 = add nsw i64 %141, %136
  %143 = icmp sgt i64 %142, 0
  %144 = select i1 %143, i64 %142, i64 0
  %polly.loop_guard373.not = icmp sgt i64 %144, %139
  br i1 %polly.loop_guard373.not, label %polly.loop_exit372, label %polly.loop_header370.preheader

polly.loop_header370.preheader:                   ; preds = %polly.loop_header362
  %smax807 = call i64 @llvm.smax.i64(i64 %indvars.iv805, i64 0)
  %145 = add i64 %smax807, %indvars.iv810
  %146 = sub nsw i64 %140, %141
  br label %polly.loop_header370

polly.loop_exit372:                               ; preds = %polly.loop_exit379, %polly.loop_header362
  %polly.indvar_next367 = add nuw i64 %polly.indvar366, 1
  %indvars.iv.next806 = add i64 %indvars.iv805, 50
  %indvars.iv.next811 = add i64 %indvars.iv810, -50
  %exitcond817.not = icmp eq i64 %polly.indvar366, %135
  br i1 %exitcond817.not, label %polly.loop_exit364, label %polly.loop_header362

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit379
  %indvars.iv812 = phi i64 [ %145, %polly.loop_header370.preheader ], [ %indvars.iv.next813, %polly.loop_exit379 ]
  %polly.indvar374 = phi i64 [ %144, %polly.loop_header370.preheader ], [ %polly.indvar_next375, %polly.loop_exit379 ]
  %smin814 = call i64 @llvm.smin.i64(i64 %indvars.iv812, i64 49)
  %147 = add nsw i64 %polly.indvar374, %146
  %polly.loop_guard387874 = icmp sgt i64 %147, -1
  %148 = add nuw nsw i64 %polly.indvar374, %140
  %149 = mul i64 %148, 8000
  %150 = mul i64 %148, 9600
  br i1 %polly.loop_guard387874, label %polly.loop_header377.us, label %polly.loop_exit379

polly.loop_header377.us:                          ; preds = %polly.loop_header370, %polly.loop_exit386.loopexit.us
  %polly.indvar380.us = phi i64 [ %polly.indvar_next381.us, %polly.loop_exit386.loopexit.us ], [ 0, %polly.loop_header370 ]
  %151 = shl nuw nsw i64 %polly.indvar380.us, 3
  %scevgep391.us = getelementptr i8, i8* %call1, i64 %151
  %scevgep395.us = getelementptr i8, i8* %call2, i64 %151
  %scevgep396.us = getelementptr i8, i8* %scevgep395.us, i64 %149
  %scevgep396397.us = bitcast i8* %scevgep396.us to double*
  %_p_scalar_398.us = load double, double* %scevgep396397.us, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us = getelementptr i8, i8* %scevgep391.us, i64 %149
  %scevgep404405.us = bitcast i8* %scevgep404.us to double*
  %_p_scalar_406.us = load double, double* %scevgep404405.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header384.us

polly.loop_header384.us:                          ; preds = %polly.loop_header384.us, %polly.loop_header377.us
  %polly.indvar388.us = phi i64 [ 0, %polly.loop_header377.us ], [ %polly.indvar_next389.us, %polly.loop_header384.us ]
  %152 = add nuw nsw i64 %polly.indvar388.us, %141
  %153 = mul i64 %152, 8000
  %scevgep392.us = getelementptr i8, i8* %scevgep391.us, i64 %153
  %scevgep392393.us = bitcast i8* %scevgep392.us to double*
  %_p_scalar_394.us = load double, double* %scevgep392393.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_398.us, %_p_scalar_394.us
  %scevgep400.us = getelementptr i8, i8* %scevgep395.us, i64 %153
  %scevgep400401.us = bitcast i8* %scevgep400.us to double*
  %_p_scalar_402.us = load double, double* %scevgep400401.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_406.us, %_p_scalar_402.us
  %154 = shl i64 %152, 3
  %155 = add i64 %154, %150
  %scevgep407.us = getelementptr i8, i8* %call, i64 %155
  %scevgep407408.us = bitcast i8* %scevgep407.us to double*
  %_p_scalar_409.us = load double, double* %scevgep407408.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_409.us
  store double %p_add42.i79.us, double* %scevgep407408.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next389.us = add nuw nsw i64 %polly.indvar388.us, 1
  %exitcond815.not = icmp eq i64 %polly.indvar388.us, %smin814
  br i1 %exitcond815.not, label %polly.loop_exit386.loopexit.us, label %polly.loop_header384.us

polly.loop_exit386.loopexit.us:                   ; preds = %polly.loop_header384.us
  %polly.indvar_next381.us = add nuw nsw i64 %polly.indvar380.us, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next381.us, 1000
  br i1 %exitcond816.not, label %polly.loop_exit379, label %polly.loop_header377.us

polly.loop_exit379:                               ; preds = %polly.loop_exit386.loopexit.us, %polly.loop_header370
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %polly.loop_cond376.not.not = icmp ult i64 %polly.indvar374, %139
  %indvars.iv.next813 = add i64 %indvars.iv812, 1
  br i1 %polly.loop_cond376.not.not, label %polly.loop_header370, label %polly.loop_exit372

polly.loop_header496:                             ; preds = %init_array.exit, %polly.loop_exit504
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit504 ], [ 0, %init_array.exit ]
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_exit504 ], [ 1, %init_array.exit ]
  %156 = add i64 %indvar, 1
  %157 = mul nuw nsw i64 %polly.indvar499, 9600
  %scevgep508 = getelementptr i8, i8* %call, i64 %157
  %min.iters.check965 = icmp ult i64 %156, 4
  br i1 %min.iters.check965, label %polly.loop_header502.preheader, label %vector.ph966

vector.ph966:                                     ; preds = %polly.loop_header496
  %n.vec968 = and i64 %156, -4
  br label %vector.body964

vector.body964:                                   ; preds = %vector.body964, %vector.ph966
  %index969 = phi i64 [ 0, %vector.ph966 ], [ %index.next970, %vector.body964 ]
  %158 = shl nuw nsw i64 %index969, 3
  %159 = getelementptr i8, i8* %scevgep508, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load973 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !78, !noalias !80
  %161 = fmul fast <4 x double> %wide.load973, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %162 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !78, !noalias !80
  %index.next970 = add i64 %index969, 4
  %163 = icmp eq i64 %index.next970, %n.vec968
  br i1 %163, label %middle.block962, label %vector.body964, !llvm.loop !83

middle.block962:                                  ; preds = %vector.body964
  %cmp.n972 = icmp eq i64 %156, %n.vec968
  br i1 %cmp.n972, label %polly.loop_exit504, label %polly.loop_header502.preheader

polly.loop_header502.preheader:                   ; preds = %polly.loop_header496, %middle.block962
  %polly.indvar505.ph = phi i64 [ 0, %polly.loop_header496 ], [ %n.vec968, %middle.block962 ]
  br label %polly.loop_header502

polly.loop_exit504:                               ; preds = %polly.loop_header502, %middle.block962
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next500, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond838.not, label %polly.loop_header512, label %polly.loop_header496

polly.loop_header502:                             ; preds = %polly.loop_header502.preheader, %polly.loop_header502
  %polly.indvar505 = phi i64 [ %polly.indvar_next506, %polly.loop_header502 ], [ %polly.indvar505.ph, %polly.loop_header502.preheader ]
  %164 = shl nuw nsw i64 %polly.indvar505, 3
  %scevgep509 = getelementptr i8, i8* %scevgep508, i64 %164
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_511, 1.200000e+00
  store double %p_mul.i, double* %scevgep509510, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next506 = add nuw nsw i64 %polly.indvar505, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next506, %polly.indvar499
  br i1 %exitcond837.not, label %polly.loop_exit504, label %polly.loop_header502, !llvm.loop !84

polly.loop_header512:                             ; preds = %polly.loop_exit504, %polly.loop_exit522
  %indvars.iv826 = phi i64 [ %indvars.iv.next827, %polly.loop_exit522 ], [ 0, %polly.loop_exit504 ]
  %indvars.iv821 = phi i64 [ %indvars.iv.next822, %polly.loop_exit522 ], [ 0, %polly.loop_exit504 ]
  %polly.indvar515 = phi i64 [ %polly.indvar_next516, %polly.loop_exit522 ], [ 0, %polly.loop_exit504 ]
  %165 = trunc i64 %polly.indvar515 to i16
  %166 = mul i16 %165, 9
  %pexp.p_div_q518.lhs.trunc = add i16 %166, 34
  %pexp.p_div_q518776 = udiv i16 %pexp.p_div_q518.lhs.trunc, 25
  %pexp.p_div_q518.zext = zext i16 %pexp.p_div_q518776 to i64
  %167 = sub nsw i64 %polly.indvar515, %pexp.p_div_q518.zext
  %168 = add nsw i64 %167, 1
  %.inv775 = icmp slt i64 %167, 23
  %169 = select i1 %.inv775, i64 %168, i64 23
  %polly.loop_guard523 = icmp sgt i64 %169, -1
  br i1 %polly.loop_guard523, label %polly.loop_header520.preheader, label %polly.loop_exit522

polly.loop_header520.preheader:                   ; preds = %polly.loop_header512
  %170 = mul nsw i64 %polly.indvar515, -32
  %171 = icmp slt i64 %170, -1168
  %172 = select i1 %171, i64 %170, i64 -1168
  %173 = add nsw i64 %172, 1199
  %174 = shl nsw i64 %polly.indvar515, 5
  br label %polly.loop_header520

polly.loop_exit522:                               ; preds = %polly.loop_exit530, %polly.loop_header512
  %polly.indvar_next516 = add nuw nsw i64 %polly.indvar515, 1
  %indvars.iv.next822 = add nsw i64 %indvars.iv821, -32
  %indvars.iv.next827 = add nuw nsw i64 %indvars.iv826, 32
  %exitcond836.not = icmp eq i64 %polly.indvar_next516, 38
  br i1 %exitcond836.not, label %kernel_syr2k.exit, label %polly.loop_header512

polly.loop_header520:                             ; preds = %polly.loop_header520.preheader, %polly.loop_exit530
  %indvars.iv828 = phi i64 [ %indvars.iv826, %polly.loop_header520.preheader ], [ %indvars.iv.next829, %polly.loop_exit530 ]
  %indvars.iv823 = phi i64 [ %indvars.iv821, %polly.loop_header520.preheader ], [ %indvars.iv.next824, %polly.loop_exit530 ]
  %polly.indvar524 = phi i64 [ 0, %polly.loop_header520.preheader ], [ %polly.indvar_next525, %polly.loop_exit530 ]
  %175 = mul nsw i64 %polly.indvar524, 50
  %176 = add nsw i64 %175, %170
  %177 = icmp sgt i64 %176, 0
  %178 = select i1 %177, i64 %176, i64 0
  %polly.loop_guard531.not = icmp sgt i64 %178, %173
  br i1 %polly.loop_guard531.not, label %polly.loop_exit530, label %polly.loop_header528.preheader

polly.loop_header528.preheader:                   ; preds = %polly.loop_header520
  %smax825 = call i64 @llvm.smax.i64(i64 %indvars.iv823, i64 0)
  %179 = add i64 %smax825, %indvars.iv828
  %180 = sub nsw i64 %174, %175
  br label %polly.loop_header528

polly.loop_exit530:                               ; preds = %polly.loop_exit537, %polly.loop_header520
  %polly.indvar_next525 = add nuw i64 %polly.indvar524, 1
  %indvars.iv.next824 = add i64 %indvars.iv823, 50
  %indvars.iv.next829 = add i64 %indvars.iv828, -50
  %exitcond835.not = icmp eq i64 %polly.indvar524, %169
  br i1 %exitcond835.not, label %polly.loop_exit522, label %polly.loop_header520

polly.loop_header528:                             ; preds = %polly.loop_header528.preheader, %polly.loop_exit537
  %indvars.iv830 = phi i64 [ %179, %polly.loop_header528.preheader ], [ %indvars.iv.next831, %polly.loop_exit537 ]
  %polly.indvar532 = phi i64 [ %178, %polly.loop_header528.preheader ], [ %polly.indvar_next533, %polly.loop_exit537 ]
  %smin832 = call i64 @llvm.smin.i64(i64 %indvars.iv830, i64 49)
  %181 = add nsw i64 %polly.indvar532, %180
  %polly.loop_guard545875 = icmp sgt i64 %181, -1
  %182 = add nuw nsw i64 %polly.indvar532, %174
  %183 = mul i64 %182, 8000
  %184 = mul i64 %182, 9600
  br i1 %polly.loop_guard545875, label %polly.loop_header535.us, label %polly.loop_exit537

polly.loop_header535.us:                          ; preds = %polly.loop_header528, %polly.loop_exit544.loopexit.us
  %polly.indvar538.us = phi i64 [ %polly.indvar_next539.us, %polly.loop_exit544.loopexit.us ], [ 0, %polly.loop_header528 ]
  %185 = shl nuw nsw i64 %polly.indvar538.us, 3
  %scevgep549.us = getelementptr i8, i8* %call1, i64 %185
  %scevgep553.us = getelementptr i8, i8* %call2, i64 %185
  %scevgep554.us = getelementptr i8, i8* %scevgep553.us, i64 %183
  %scevgep554555.us = bitcast i8* %scevgep554.us to double*
  %_p_scalar_556.us = load double, double* %scevgep554555.us, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us = getelementptr i8, i8* %scevgep549.us, i64 %183
  %scevgep562563.us = bitcast i8* %scevgep562.us to double*
  %_p_scalar_564.us = load double, double* %scevgep562563.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header542.us

polly.loop_header542.us:                          ; preds = %polly.loop_header542.us, %polly.loop_header535.us
  %polly.indvar546.us = phi i64 [ 0, %polly.loop_header535.us ], [ %polly.indvar_next547.us, %polly.loop_header542.us ]
  %186 = add nuw nsw i64 %polly.indvar546.us, %175
  %187 = mul i64 %186, 8000
  %scevgep550.us = getelementptr i8, i8* %scevgep549.us, i64 %187
  %scevgep550551.us = bitcast i8* %scevgep550.us to double*
  %_p_scalar_552.us = load double, double* %scevgep550551.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_556.us, %_p_scalar_552.us
  %scevgep558.us = getelementptr i8, i8* %scevgep553.us, i64 %187
  %scevgep558559.us = bitcast i8* %scevgep558.us to double*
  %_p_scalar_560.us = load double, double* %scevgep558559.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_564.us, %_p_scalar_560.us
  %188 = shl i64 %186, 3
  %189 = add i64 %188, %184
  %scevgep565.us = getelementptr i8, i8* %call, i64 %189
  %scevgep565566.us = bitcast i8* %scevgep565.us to double*
  %_p_scalar_567.us = load double, double* %scevgep565566.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_567.us
  store double %p_add42.i.us, double* %scevgep565566.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next547.us = add nuw nsw i64 %polly.indvar546.us, 1
  %exitcond833.not = icmp eq i64 %polly.indvar546.us, %smin832
  br i1 %exitcond833.not, label %polly.loop_exit544.loopexit.us, label %polly.loop_header542.us

polly.loop_exit544.loopexit.us:                   ; preds = %polly.loop_header542.us
  %polly.indvar_next539.us = add nuw nsw i64 %polly.indvar538.us, 1
  %exitcond834.not = icmp eq i64 %polly.indvar_next539.us, 1000
  br i1 %exitcond834.not, label %polly.loop_exit537, label %polly.loop_header535.us

polly.loop_exit537:                               ; preds = %polly.loop_exit544.loopexit.us, %polly.loop_header528
  %polly.indvar_next533 = add nuw nsw i64 %polly.indvar532, 1
  %polly.loop_cond534.not.not = icmp ult i64 %polly.indvar532, %173
  %indvars.iv.next831 = add i64 %indvars.iv830, 1
  br i1 %polly.loop_cond534.not.not, label %polly.loop_header528, label %polly.loop_exit530

polly.loop_header694:                             ; preds = %entry, %polly.loop_exit702
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit702 ], [ 0, %entry ]
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %entry ]
  %smin865 = call i64 @llvm.smin.i64(i64 %indvars.iv863, i64 -1168)
  %190 = shl nsw i64 %polly.indvar697, 5
  %191 = add nsw i64 %smin865, 1199
  br label %polly.loop_header700

polly.loop_exit702:                               ; preds = %polly.loop_exit708
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %indvars.iv.next864 = add nsw i64 %indvars.iv863, -32
  %exitcond868.not = icmp eq i64 %polly.indvar_next698, 38
  br i1 %exitcond868.not, label %polly.loop_header721, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_exit708, %polly.loop_header694
  %indvars.iv859 = phi i64 [ %indvars.iv.next860, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %192 = mul nsw i64 %polly.indvar703, -32
  %smin903 = call i64 @llvm.smin.i64(i64 %192, i64 -1168)
  %193 = add nsw i64 %smin903, 1200
  %smin861 = call i64 @llvm.smin.i64(i64 %indvars.iv859, i64 -1168)
  %194 = shl nsw i64 %polly.indvar703, 5
  %195 = add nsw i64 %smin861, 1199
  br label %polly.loop_header706

polly.loop_exit708:                               ; preds = %polly.loop_exit714
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %indvars.iv.next860 = add nsw i64 %indvars.iv859, -32
  %exitcond867.not = icmp eq i64 %polly.indvar_next704, 38
  br i1 %exitcond867.not, label %polly.loop_exit702, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_exit714, %polly.loop_header700
  %polly.indvar709 = phi i64 [ 0, %polly.loop_header700 ], [ %polly.indvar_next710, %polly.loop_exit714 ]
  %196 = add nuw nsw i64 %polly.indvar709, %190
  %197 = trunc i64 %196 to i32
  %198 = mul nuw nsw i64 %196, 9600
  %min.iters.check = icmp eq i64 %193, 0
  br i1 %min.iters.check, label %polly.loop_header712, label %vector.ph904

vector.ph904:                                     ; preds = %polly.loop_header706
  %broadcast.splatinsert911 = insertelement <4 x i64> poison, i64 %194, i32 0
  %broadcast.splat912 = shufflevector <4 x i64> %broadcast.splatinsert911, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert913 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat914 = shufflevector <4 x i32> %broadcast.splatinsert913, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body902

vector.body902:                                   ; preds = %vector.body902, %vector.ph904
  %index905 = phi i64 [ 0, %vector.ph904 ], [ %index.next906, %vector.body902 ]
  %vec.ind909 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph904 ], [ %vec.ind.next910, %vector.body902 ]
  %199 = add nuw nsw <4 x i64> %vec.ind909, %broadcast.splat912
  %200 = trunc <4 x i64> %199 to <4 x i32>
  %201 = mul <4 x i32> %broadcast.splat914, %200
  %202 = add <4 x i32> %201, <i32 3, i32 3, i32 3, i32 3>
  %203 = urem <4 x i32> %202, <i32 1200, i32 1200, i32 1200, i32 1200>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %206 = extractelement <4 x i64> %199, i32 0
  %207 = shl i64 %206, 3
  %208 = add nuw nsw i64 %207, %198
  %209 = getelementptr i8, i8* %call, i64 %208
  %210 = bitcast i8* %209 to <4 x double>*
  store <4 x double> %205, <4 x double>* %210, align 8, !alias.scope !87, !noalias !89
  %index.next906 = add i64 %index905, 4
  %vec.ind.next910 = add <4 x i64> %vec.ind909, <i64 4, i64 4, i64 4, i64 4>
  %211 = icmp eq i64 %index.next906, %193
  br i1 %211, label %polly.loop_exit714, label %vector.body902, !llvm.loop !92

polly.loop_exit714:                               ; preds = %vector.body902, %polly.loop_header712
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %exitcond866.not = icmp eq i64 %polly.indvar709, %191
  br i1 %exitcond866.not, label %polly.loop_exit708, label %polly.loop_header706

polly.loop_header712:                             ; preds = %polly.loop_header706, %polly.loop_header712
  %polly.indvar715 = phi i64 [ %polly.indvar_next716, %polly.loop_header712 ], [ 0, %polly.loop_header706 ]
  %212 = add nuw nsw i64 %polly.indvar715, %194
  %213 = trunc i64 %212 to i32
  %214 = mul i32 %213, %197
  %215 = add i32 %214, 3
  %216 = urem i32 %215, 1200
  %p_conv31.i = sitofp i32 %216 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %217 = shl i64 %212, 3
  %218 = add nuw nsw i64 %217, %198
  %scevgep718 = getelementptr i8, i8* %call, i64 %218
  %scevgep718719 = bitcast i8* %scevgep718 to double*
  store double %p_div33.i, double* %scevgep718719, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond862.not = icmp eq i64 %polly.indvar715, %195
  br i1 %exitcond862.not, label %polly.loop_exit714, label %polly.loop_header712, !llvm.loop !93

polly.loop_header721:                             ; preds = %polly.loop_exit702, %polly.loop_exit729
  %indvars.iv853 = phi i64 [ %indvars.iv.next854, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %smin855 = call i64 @llvm.smin.i64(i64 %indvars.iv853, i64 -1168)
  %219 = shl nsw i64 %polly.indvar724, 5
  %220 = add nsw i64 %smin855, 1199
  br label %polly.loop_header727

polly.loop_exit729:                               ; preds = %polly.loop_exit735
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %indvars.iv.next854 = add nsw i64 %indvars.iv853, -32
  %exitcond858.not = icmp eq i64 %polly.indvar_next725, 38
  br i1 %exitcond858.not, label %polly.loop_header747, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_exit735, %polly.loop_header721
  %indvars.iv849 = phi i64 [ %indvars.iv.next850, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %221 = mul nsw i64 %polly.indvar730, -32
  %smin918 = call i64 @llvm.smin.i64(i64 %221, i64 -968)
  %222 = add nsw i64 %smin918, 1000
  %smin851 = call i64 @llvm.smin.i64(i64 %indvars.iv849, i64 -968)
  %223 = shl nsw i64 %polly.indvar730, 5
  %224 = add nsw i64 %smin851, 999
  br label %polly.loop_header733

polly.loop_exit735:                               ; preds = %polly.loop_exit741
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %indvars.iv.next850 = add nsw i64 %indvars.iv849, -32
  %exitcond857.not = icmp eq i64 %polly.indvar_next731, 32
  br i1 %exitcond857.not, label %polly.loop_exit729, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_exit741, %polly.loop_header727
  %polly.indvar736 = phi i64 [ 0, %polly.loop_header727 ], [ %polly.indvar_next737, %polly.loop_exit741 ]
  %225 = add nuw nsw i64 %polly.indvar736, %219
  %226 = trunc i64 %225 to i32
  %227 = mul nuw nsw i64 %225, 8000
  %min.iters.check919 = icmp eq i64 %222, 0
  br i1 %min.iters.check919, label %polly.loop_header739, label %vector.ph920

vector.ph920:                                     ; preds = %polly.loop_header733
  %broadcast.splatinsert929 = insertelement <4 x i64> poison, i64 %223, i32 0
  %broadcast.splat930 = shufflevector <4 x i64> %broadcast.splatinsert929, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert931 = insertelement <4 x i32> poison, i32 %226, i32 0
  %broadcast.splat932 = shufflevector <4 x i32> %broadcast.splatinsert931, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body917

vector.body917:                                   ; preds = %vector.body917, %vector.ph920
  %index923 = phi i64 [ 0, %vector.ph920 ], [ %index.next924, %vector.body917 ]
  %vec.ind927 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph920 ], [ %vec.ind.next928, %vector.body917 ]
  %228 = add nuw nsw <4 x i64> %vec.ind927, %broadcast.splat930
  %229 = trunc <4 x i64> %228 to <4 x i32>
  %230 = mul <4 x i32> %broadcast.splat932, %229
  %231 = add <4 x i32> %230, <i32 2, i32 2, i32 2, i32 2>
  %232 = urem <4 x i32> %231, <i32 1000, i32 1000, i32 1000, i32 1000>
  %233 = sitofp <4 x i32> %232 to <4 x double>
  %234 = fmul fast <4 x double> %233, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %235 = extractelement <4 x i64> %228, i32 0
  %236 = shl i64 %235, 3
  %237 = add nuw nsw i64 %236, %227
  %238 = getelementptr i8, i8* %call2, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %234, <4 x double>* %239, align 8, !alias.scope !91, !noalias !94
  %index.next924 = add i64 %index923, 4
  %vec.ind.next928 = add <4 x i64> %vec.ind927, <i64 4, i64 4, i64 4, i64 4>
  %240 = icmp eq i64 %index.next924, %222
  br i1 %240, label %polly.loop_exit741, label %vector.body917, !llvm.loop !95

polly.loop_exit741:                               ; preds = %vector.body917, %polly.loop_header739
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %exitcond856.not = icmp eq i64 %polly.indvar736, %220
  br i1 %exitcond856.not, label %polly.loop_exit735, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_header733, %polly.loop_header739
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_header739 ], [ 0, %polly.loop_header733 ]
  %241 = add nuw nsw i64 %polly.indvar742, %223
  %242 = trunc i64 %241 to i32
  %243 = mul i32 %242, %226
  %244 = add i32 %243, 2
  %245 = urem i32 %244, 1000
  %p_conv10.i = sitofp i32 %245 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %246 = shl i64 %241, 3
  %247 = add nuw nsw i64 %246, %227
  %scevgep745 = getelementptr i8, i8* %call2, i64 %247
  %scevgep745746 = bitcast i8* %scevgep745 to double*
  store double %p_div12.i, double* %scevgep745746, align 8, !alias.scope !91, !noalias !94
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %exitcond852.not = icmp eq i64 %polly.indvar742, %224
  br i1 %exitcond852.not, label %polly.loop_exit741, label %polly.loop_header739, !llvm.loop !96

polly.loop_header747:                             ; preds = %polly.loop_exit729, %polly.loop_exit755
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %smin845 = call i64 @llvm.smin.i64(i64 %indvars.iv843, i64 -1168)
  %248 = shl nsw i64 %polly.indvar750, 5
  %249 = add nsw i64 %smin845, 1199
  br label %polly.loop_header753

polly.loop_exit755:                               ; preds = %polly.loop_exit761
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %indvars.iv.next844 = add nsw i64 %indvars.iv843, -32
  %exitcond848.not = icmp eq i64 %polly.indvar_next751, 38
  br i1 %exitcond848.not, label %init_array.exit, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_exit761, %polly.loop_header747
  %indvars.iv839 = phi i64 [ %indvars.iv.next840, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %250 = mul nsw i64 %polly.indvar756, -32
  %smin936 = call i64 @llvm.smin.i64(i64 %250, i64 -968)
  %251 = add nsw i64 %smin936, 1000
  %smin841 = call i64 @llvm.smin.i64(i64 %indvars.iv839, i64 -968)
  %252 = shl nsw i64 %polly.indvar756, 5
  %253 = add nsw i64 %smin841, 999
  br label %polly.loop_header759

polly.loop_exit761:                               ; preds = %polly.loop_exit767
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %indvars.iv.next840 = add nsw i64 %indvars.iv839, -32
  %exitcond847.not = icmp eq i64 %polly.indvar_next757, 32
  br i1 %exitcond847.not, label %polly.loop_exit755, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_exit767, %polly.loop_header753
  %polly.indvar762 = phi i64 [ 0, %polly.loop_header753 ], [ %polly.indvar_next763, %polly.loop_exit767 ]
  %254 = add nuw nsw i64 %polly.indvar762, %248
  %255 = trunc i64 %254 to i32
  %256 = mul nuw nsw i64 %254, 8000
  %min.iters.check937 = icmp eq i64 %251, 0
  br i1 %min.iters.check937, label %polly.loop_header765, label %vector.ph938

vector.ph938:                                     ; preds = %polly.loop_header759
  %broadcast.splatinsert947 = insertelement <4 x i64> poison, i64 %252, i32 0
  %broadcast.splat948 = shufflevector <4 x i64> %broadcast.splatinsert947, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert949 = insertelement <4 x i32> poison, i32 %255, i32 0
  %broadcast.splat950 = shufflevector <4 x i32> %broadcast.splatinsert949, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body935

vector.body935:                                   ; preds = %vector.body935, %vector.ph938
  %index941 = phi i64 [ 0, %vector.ph938 ], [ %index.next942, %vector.body935 ]
  %vec.ind945 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph938 ], [ %vec.ind.next946, %vector.body935 ]
  %257 = add nuw nsw <4 x i64> %vec.ind945, %broadcast.splat948
  %258 = trunc <4 x i64> %257 to <4 x i32>
  %259 = mul <4 x i32> %broadcast.splat950, %258
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 1200, i32 1200, i32 1200, i32 1200>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %264 = extractelement <4 x i64> %257, i32 0
  %265 = shl i64 %264, 3
  %266 = add nuw nsw i64 %265, %256
  %267 = getelementptr i8, i8* %call1, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %263, <4 x double>* %268, align 8, !alias.scope !90, !noalias !97
  %index.next942 = add i64 %index941, 4
  %vec.ind.next946 = add <4 x i64> %vec.ind945, <i64 4, i64 4, i64 4, i64 4>
  %269 = icmp eq i64 %index.next942, %251
  br i1 %269, label %polly.loop_exit767, label %vector.body935, !llvm.loop !98

polly.loop_exit767:                               ; preds = %vector.body935, %polly.loop_header765
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %exitcond846.not = icmp eq i64 %polly.indvar762, %249
  br i1 %exitcond846.not, label %polly.loop_exit761, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_header759, %polly.loop_header765
  %polly.indvar768 = phi i64 [ %polly.indvar_next769, %polly.loop_header765 ], [ 0, %polly.loop_header759 ]
  %270 = add nuw nsw i64 %polly.indvar768, %252
  %271 = trunc i64 %270 to i32
  %272 = mul i32 %271, %255
  %273 = add i32 %272, 1
  %274 = urem i32 %273, 1200
  %p_conv.i = sitofp i32 %274 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %275 = shl i64 %270, 3
  %276 = add nuw nsw i64 %275, %256
  %scevgep772 = getelementptr i8, i8* %call1, i64 %276
  %scevgep772773 = bitcast i8* %scevgep772 to double*
  store double %p_div.i, double* %scevgep772773, align 8, !alias.scope !90, !noalias !97
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %exitcond842.not = icmp eq i64 %polly.indvar768, %253
  br i1 %exitcond842.not, label %polly.loop_exit767, label %polly.loop_header765, !llvm.loop !99
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
!24 = !{!"llvm.loop.tile.size", i32 50}
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
!44 = !{!"llvm.loop.tile.size", i32 32}
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
