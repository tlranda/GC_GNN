; ModuleID = 'syr2k_exhaustive/mmp_all_XL_9289.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_9289.c"
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
  %call726 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1587 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1587, %call2
  %polly.access.call2607 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2607, %call1
  %2 = or i1 %0, %1
  %polly.access.call627 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call627, %call2
  %4 = icmp ule i8* %polly.access.call2607, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call627, %call1
  %8 = icmp ule i8* %polly.access.call1587, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header700, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep894 = getelementptr i8, i8* %call2, i64 %12
  %scevgep893 = getelementptr i8, i8* %call2, i64 %11
  %scevgep892 = getelementptr i8, i8* %call1, i64 %12
  %scevgep891 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep891, %scevgep894
  %bound1 = icmp ult i8* %scevgep893, %scevgep892
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
  br i1 %exitcond18.not.i, label %vector.ph898, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph898:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert905 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat906 = shufflevector <4 x i64> %broadcast.splatinsert905, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body897

vector.body897:                                   ; preds = %vector.body897, %vector.ph898
  %index899 = phi i64 [ 0, %vector.ph898 ], [ %index.next900, %vector.body897 ]
  %vec.ind903 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph898 ], [ %vec.ind.next904, %vector.body897 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind903, %broadcast.splat906
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv7.i, i64 %index899
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next900 = add i64 %index899, 4
  %vec.ind.next904 = add <4 x i64> %vec.ind903, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next900, 1200
  br i1 %40, label %for.inc41.i, label %vector.body897, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body897
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph898, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit761
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header500, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check961 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check961, label %for.body3.i46.preheader1038, label %vector.ph962

vector.ph962:                                     ; preds = %for.body3.i46.preheader
  %n.vec964 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body960

vector.body960:                                   ; preds = %vector.body960, %vector.ph962
  %index965 = phi i64 [ 0, %vector.ph962 ], [ %index.next966, %vector.body960 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i, i64 %index965
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next966 = add i64 %index965, 4
  %46 = icmp eq i64 %index.next966, %n.vec964
  br i1 %46, label %middle.block958, label %vector.body960, !llvm.loop !18

middle.block958:                                  ; preds = %vector.body960
  %cmp.n968 = icmp eq i64 %indvars.iv21.i, %n.vec964
  br i1 %cmp.n968, label %for.inc6.i, label %for.body3.i46.preheader1038

for.body3.i46.preheader1038:                      ; preds = %for.body3.i46.preheader, %middle.block958
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec964, %middle.block958 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1038, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1038 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block958, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit524
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header340, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check984 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check984, label %for.body3.i60.preheader1036, label %vector.ph985

vector.ph985:                                     ; preds = %for.body3.i60.preheader
  %n.vec987 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %vector.ph985
  %index988 = phi i64 [ 0, %vector.ph985 ], [ %index.next989, %vector.body983 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i52, i64 %index988
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load992 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load992, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next989 = add i64 %index988, 4
  %57 = icmp eq i64 %index.next989, %n.vec987
  br i1 %57, label %middle.block981, label %vector.body983, !llvm.loop !54

middle.block981:                                  ; preds = %vector.body983
  %cmp.n991 = icmp eq i64 %indvars.iv21.i52, %n.vec987
  br i1 %cmp.n991, label %for.inc6.i63, label %for.body3.i60.preheader1036

for.body3.i60.preheader1036:                      ; preds = %for.body3.i60.preheader, %middle.block981
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec987, %middle.block981 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1036, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1036 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block981, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1010 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1010, label %for.body3.i99.preheader1034, label %vector.ph1011

vector.ph1011:                                    ; preds = %for.body3.i99.preheader
  %n.vec1013 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1009

vector.body1009:                                  ; preds = %vector.body1009, %vector.ph1011
  %index1014 = phi i64 [ 0, %vector.ph1011 ], [ %index.next1015, %vector.body1009 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i91, i64 %index1014
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1018 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1018, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1015 = add i64 %index1014, 4
  %68 = icmp eq i64 %index.next1015, %n.vec1013
  br i1 %68, label %middle.block1007, label %vector.body1009, !llvm.loop !56

middle.block1007:                                 ; preds = %vector.body1009
  %cmp.n1017 = icmp eq i64 %indvars.iv21.i91, %n.vec1013
  br i1 %cmp.n1017, label %for.inc6.i102, label %for.body3.i99.preheader1034

for.body3.i99.preheader1034:                      ; preds = %for.body3.i99.preheader, %middle.block1007
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1013, %middle.block1007 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1034, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1034 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1007, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1022 = phi i64 [ %indvar.next1023, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1022, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1024 = icmp ult i64 %88, 4
  br i1 %min.iters.check1024, label %polly.loop_header191.preheader, label %vector.ph1025

vector.ph1025:                                    ; preds = %polly.loop_header
  %n.vec1027 = and i64 %88, -4
  br label %vector.body1021

vector.body1021:                                  ; preds = %vector.body1021, %vector.ph1025
  %index1028 = phi i64 [ 0, %vector.ph1025 ], [ %index.next1029, %vector.body1021 ]
  %90 = shl nuw nsw i64 %index1028, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1032 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1032, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1029 = add i64 %index1028, 4
  %95 = icmp eq i64 %index.next1029, %n.vec1027
  br i1 %95, label %middle.block1019, label %vector.body1021, !llvm.loop !67

middle.block1019:                                 ; preds = %vector.body1021
  %cmp.n1031 = icmp eq i64 %88, %n.vec1027
  br i1 %cmp.n1031, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1019
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1027, %middle.block1019 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1019
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond805.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1023 = add i64 %indvar1022, 1
  br i1 %exitcond805.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond804.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond804.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = mul nuw nsw i64 %polly.indvar202, 100
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond803.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv791 = phi i64 [ %indvars.iv.next792, %polly.loop_exit213 ], [ 7, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %98 = shl nuw nsw i64 %indvars.iv791, 4
  %99 = and i64 %98, 9223372036854775680
  %100 = mul nuw nsw i64 %polly.indvar208, 3
  %101 = add nuw nsw i64 %100, 7
  %pexp.p_div_q = lshr i64 %101, 3
  %102 = sub nsw i64 %polly.indvar208, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %102, 10
  br i1 %polly.loop_guard, label %polly.loop_header211.preheader, label %polly.loop_exit213

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %103 = sub nsw i64 %indvars.iv795, %99
  %104 = add i64 %indvars.iv, %99
  %105 = mul nuw nsw i64 %polly.indvar208, 80
  %106 = mul nsw i64 %polly.indvar208, -80
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -48
  %indvars.iv.next792 = add nuw nsw i64 %indvars.iv791, 3
  %indvars.iv.next796 = add nuw nsw i64 %indvars.iv795, 48
  %exitcond802.not = icmp eq i64 %polly.indvar_next209, 15
  br i1 %exitcond802.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit219
  %indvars.iv797 = phi i64 [ %103, %polly.loop_header211.preheader ], [ %indvars.iv.next798, %polly.loop_exit219 ]
  %indvars.iv793 = phi i64 [ %104, %polly.loop_header211.preheader ], [ %indvars.iv.next794, %polly.loop_exit219 ]
  %polly.indvar214 = phi i64 [ %102, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv793, i64 0)
  %107 = add i64 %smax, %indvars.iv797
  %108 = shl nsw i64 %polly.indvar214, 7
  %109 = sub nsw i64 %105, %108
  %110 = icmp sgt i64 %109, 0
  %111 = select i1 %110, i64 %109, i64 0
  %112 = mul nsw i64 %polly.indvar214, -128
  %113 = icmp slt i64 %112, -1072
  %114 = select i1 %113, i64 %112, i64 -1072
  %115 = add nsw i64 %114, 1199
  %polly.loop_guard227.not = icmp sgt i64 %111, %115
  br i1 %polly.loop_guard227.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit226, %polly.loop_header211
  %polly.indvar_next215 = add nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp slt i64 %polly.indvar214, 9
  %indvars.iv.next794 = add i64 %indvars.iv793, -128
  %indvars.iv.next798 = add i64 %indvars.iv797, 128
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header217:                             ; preds = %polly.loop_header211, %polly.loop_exit226
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit226 ], [ 0, %polly.loop_header211 ]
  %116 = add nuw nsw i64 %polly.indvar220, %97
  %117 = shl i64 %116, 3
  br label %polly.loop_header224

polly.loop_exit226:                               ; preds = %polly.loop_exit234
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next221, 100
  br i1 %exitcond801.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header224:                             ; preds = %polly.loop_header217, %polly.loop_exit234
  %indvars.iv799 = phi i64 [ %107, %polly.loop_header217 ], [ %indvars.iv.next800, %polly.loop_exit234 ]
  %polly.indvar228 = phi i64 [ %111, %polly.loop_header217 ], [ %polly.indvar_next229, %polly.loop_exit234 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv799, i64 79)
  %118 = add i64 %polly.indvar228, %108
  %119 = add i64 %118, %106
  %polly.loop_guard235880 = icmp sgt i64 %119, -1
  br i1 %polly.loop_guard235880, label %polly.loop_header232.preheader, label %polly.loop_exit234

polly.loop_header232.preheader:                   ; preds = %polly.loop_header224
  %120 = mul i64 %118, 8000
  %121 = add i64 %120, %117
  %scevgep242 = getelementptr i8, i8* %call2, i64 %121
  %scevgep242243 = bitcast i8* %scevgep242 to double*
  %_p_scalar_244 = load double, double* %scevgep242243, align 8, !alias.scope !66, !noalias !70
  %scevgep248 = getelementptr i8, i8* %call1, i64 %121
  %scevgep248249 = bitcast i8* %scevgep248 to double*
  %_p_scalar_250 = load double, double* %scevgep248249, align 8, !alias.scope !65, !noalias !71
  %122 = mul i64 %118, 9600
  br label %polly.loop_header232

polly.loop_exit234:                               ; preds = %polly.loop_header232, %polly.loop_header224
  %polly.indvar_next229 = add nuw nsw i64 %polly.indvar228, 1
  %polly.loop_cond230.not.not = icmp slt i64 %polly.indvar228, %115
  %indvars.iv.next800 = add i64 %indvars.iv799, 1
  br i1 %polly.loop_cond230.not.not, label %polly.loop_header224, label %polly.loop_exit226

polly.loop_header232:                             ; preds = %polly.loop_header232.preheader, %polly.loop_header232
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_header232 ], [ 0, %polly.loop_header232.preheader ]
  %123 = add nuw nsw i64 %polly.indvar236, %105
  %124 = mul nuw nsw i64 %123, 8000
  %125 = add nuw nsw i64 %124, %117
  %scevgep239 = getelementptr i8, i8* %call1, i64 %125
  %scevgep239240 = bitcast i8* %scevgep239 to double*
  %_p_scalar_241 = load double, double* %scevgep239240, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_244, %_p_scalar_241
  %scevgep245 = getelementptr i8, i8* %call2, i64 %125
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_250, %_p_scalar_247
  %126 = shl i64 %123, 3
  %127 = add i64 %126, %122
  %scevgep251 = getelementptr i8, i8* %call, i64 %127
  %scevgep251252 = bitcast i8* %scevgep251 to double*
  %_p_scalar_253 = load double, double* %scevgep251252, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_253
  store double %p_add42.i118, double* %scevgep251252, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond.not = icmp eq i64 %polly.indvar236, %smin
  br i1 %exitcond.not, label %polly.loop_exit234, label %polly.loop_header232

polly.loop_header340:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit348
  %indvar996 = phi i64 [ %indvar.next997, %polly.loop_exit348 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar343 = phi i64 [ %polly.indvar_next344, %polly.loop_exit348 ], [ 1, %kernel_syr2k.exit ]
  %128 = add i64 %indvar996, 1
  %129 = mul nuw nsw i64 %polly.indvar343, 9600
  %scevgep352 = getelementptr i8, i8* %call, i64 %129
  %min.iters.check998 = icmp ult i64 %128, 4
  br i1 %min.iters.check998, label %polly.loop_header346.preheader, label %vector.ph999

vector.ph999:                                     ; preds = %polly.loop_header340
  %n.vec1001 = and i64 %128, -4
  br label %vector.body995

vector.body995:                                   ; preds = %vector.body995, %vector.ph999
  %index1002 = phi i64 [ 0, %vector.ph999 ], [ %index.next1003, %vector.body995 ]
  %130 = shl nuw nsw i64 %index1002, 3
  %131 = getelementptr i8, i8* %scevgep352, i64 %130
  %132 = bitcast i8* %131 to <4 x double>*
  %wide.load1006 = load <4 x double>, <4 x double>* %132, align 8, !alias.scope !72, !noalias !74
  %133 = fmul fast <4 x double> %wide.load1006, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %134 = bitcast i8* %131 to <4 x double>*
  store <4 x double> %133, <4 x double>* %134, align 8, !alias.scope !72, !noalias !74
  %index.next1003 = add i64 %index1002, 4
  %135 = icmp eq i64 %index.next1003, %n.vec1001
  br i1 %135, label %middle.block993, label %vector.body995, !llvm.loop !77

middle.block993:                                  ; preds = %vector.body995
  %cmp.n1005 = icmp eq i64 %128, %n.vec1001
  br i1 %cmp.n1005, label %polly.loop_exit348, label %polly.loop_header346.preheader

polly.loop_header346.preheader:                   ; preds = %polly.loop_header340, %middle.block993
  %polly.indvar349.ph = phi i64 [ 0, %polly.loop_header340 ], [ %n.vec1001, %middle.block993 ]
  br label %polly.loop_header346

polly.loop_exit348:                               ; preds = %polly.loop_header346, %middle.block993
  %polly.indvar_next344 = add nuw nsw i64 %polly.indvar343, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next344, 1200
  %indvar.next997 = add i64 %indvar996, 1
  br i1 %exitcond825.not, label %polly.loop_header356, label %polly.loop_header340

polly.loop_header346:                             ; preds = %polly.loop_header346.preheader, %polly.loop_header346
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_header346 ], [ %polly.indvar349.ph, %polly.loop_header346.preheader ]
  %136 = shl nuw nsw i64 %polly.indvar349, 3
  %scevgep353 = getelementptr i8, i8* %scevgep352, i64 %136
  %scevgep353354 = bitcast i8* %scevgep353 to double*
  %_p_scalar_355 = load double, double* %scevgep353354, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_355, 1.200000e+00
  store double %p_mul.i57, double* %scevgep353354, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next350, %polly.indvar343
  br i1 %exitcond824.not, label %polly.loop_exit348, label %polly.loop_header346, !llvm.loop !78

polly.loop_header356:                             ; preds = %polly.loop_exit348, %polly.loop_exit364
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 0, %polly.loop_exit348 ]
  %137 = mul nuw nsw i64 %polly.indvar359, 100
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_exit372
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next360, 10
  br i1 %exitcond823.not, label %kernel_syr2k.exit90, label %polly.loop_header356

polly.loop_header362:                             ; preds = %polly.loop_exit372, %polly.loop_header356
  %indvars.iv813 = phi i64 [ %indvars.iv.next814, %polly.loop_exit372 ], [ 0, %polly.loop_header356 ]
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %polly.loop_exit372 ], [ 7, %polly.loop_header356 ]
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %polly.loop_exit372 ], [ 0, %polly.loop_header356 ]
  %polly.indvar365 = phi i64 [ %polly.indvar_next366, %polly.loop_exit372 ], [ 0, %polly.loop_header356 ]
  %138 = shl nuw nsw i64 %indvars.iv808, 4
  %139 = and i64 %138, 9223372036854775680
  %140 = mul nuw nsw i64 %polly.indvar365, 3
  %141 = add nuw nsw i64 %140, 7
  %pexp.p_div_q368 = lshr i64 %141, 3
  %142 = sub nsw i64 %polly.indvar365, %pexp.p_div_q368
  %polly.loop_guard373 = icmp slt i64 %142, 10
  br i1 %polly.loop_guard373, label %polly.loop_header370.preheader, label %polly.loop_exit372

polly.loop_header370.preheader:                   ; preds = %polly.loop_header362
  %143 = sub nsw i64 %indvars.iv813, %139
  %144 = add i64 %indvars.iv806, %139
  %145 = mul nuw nsw i64 %polly.indvar365, 80
  %146 = mul nsw i64 %polly.indvar365, -80
  br label %polly.loop_header370

polly.loop_exit372:                               ; preds = %polly.loop_exit379, %polly.loop_header362
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %indvars.iv.next807 = add nsw i64 %indvars.iv806, -48
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 3
  %indvars.iv.next814 = add nuw nsw i64 %indvars.iv813, 48
  %exitcond822.not = icmp eq i64 %polly.indvar_next366, 15
  br i1 %exitcond822.not, label %polly.loop_exit364, label %polly.loop_header362

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit379
  %indvars.iv815 = phi i64 [ %143, %polly.loop_header370.preheader ], [ %indvars.iv.next816, %polly.loop_exit379 ]
  %indvars.iv810 = phi i64 [ %144, %polly.loop_header370.preheader ], [ %indvars.iv.next811, %polly.loop_exit379 ]
  %polly.indvar374 = phi i64 [ %142, %polly.loop_header370.preheader ], [ %polly.indvar_next375, %polly.loop_exit379 ]
  %smax812 = call i64 @llvm.smax.i64(i64 %indvars.iv810, i64 0)
  %147 = add i64 %smax812, %indvars.iv815
  %148 = shl nsw i64 %polly.indvar374, 7
  %149 = sub nsw i64 %145, %148
  %150 = icmp sgt i64 %149, 0
  %151 = select i1 %150, i64 %149, i64 0
  %152 = mul nsw i64 %polly.indvar374, -128
  %153 = icmp slt i64 %152, -1072
  %154 = select i1 %153, i64 %152, i64 -1072
  %155 = add nsw i64 %154, 1199
  %polly.loop_guard387.not = icmp sgt i64 %151, %155
  br i1 %polly.loop_guard387.not, label %polly.loop_exit379, label %polly.loop_header377

polly.loop_exit379:                               ; preds = %polly.loop_exit386, %polly.loop_header370
  %polly.indvar_next375 = add nsw i64 %polly.indvar374, 1
  %polly.loop_cond376 = icmp slt i64 %polly.indvar374, 9
  %indvars.iv.next811 = add i64 %indvars.iv810, -128
  %indvars.iv.next816 = add i64 %indvars.iv815, 128
  br i1 %polly.loop_cond376, label %polly.loop_header370, label %polly.loop_exit372

polly.loop_header377:                             ; preds = %polly.loop_header370, %polly.loop_exit386
  %polly.indvar380 = phi i64 [ %polly.indvar_next381, %polly.loop_exit386 ], [ 0, %polly.loop_header370 ]
  %156 = add nuw nsw i64 %polly.indvar380, %137
  %157 = shl i64 %156, 3
  br label %polly.loop_header384

polly.loop_exit386:                               ; preds = %polly.loop_exit394
  %polly.indvar_next381 = add nuw nsw i64 %polly.indvar380, 1
  %exitcond821.not = icmp eq i64 %polly.indvar_next381, 100
  br i1 %exitcond821.not, label %polly.loop_exit379, label %polly.loop_header377

polly.loop_header384:                             ; preds = %polly.loop_header377, %polly.loop_exit394
  %indvars.iv817 = phi i64 [ %147, %polly.loop_header377 ], [ %indvars.iv.next818, %polly.loop_exit394 ]
  %polly.indvar388 = phi i64 [ %151, %polly.loop_header377 ], [ %polly.indvar_next389, %polly.loop_exit394 ]
  %smin819 = call i64 @llvm.smin.i64(i64 %indvars.iv817, i64 79)
  %158 = add i64 %polly.indvar388, %148
  %159 = add i64 %158, %146
  %polly.loop_guard395881 = icmp sgt i64 %159, -1
  br i1 %polly.loop_guard395881, label %polly.loop_header392.preheader, label %polly.loop_exit394

polly.loop_header392.preheader:                   ; preds = %polly.loop_header384
  %160 = mul i64 %158, 8000
  %161 = add i64 %160, %157
  %scevgep402 = getelementptr i8, i8* %call2, i64 %161
  %scevgep402403 = bitcast i8* %scevgep402 to double*
  %_p_scalar_404 = load double, double* %scevgep402403, align 8, !alias.scope !76, !noalias !79
  %scevgep408 = getelementptr i8, i8* %call1, i64 %161
  %scevgep408409 = bitcast i8* %scevgep408 to double*
  %_p_scalar_410 = load double, double* %scevgep408409, align 8, !alias.scope !75, !noalias !80
  %162 = mul i64 %158, 9600
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392, %polly.loop_header384
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %polly.loop_cond390.not.not = icmp slt i64 %polly.indvar388, %155
  %indvars.iv.next818 = add i64 %indvars.iv817, 1
  br i1 %polly.loop_cond390.not.not, label %polly.loop_header384, label %polly.loop_exit386

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_header392
  %polly.indvar396 = phi i64 [ %polly.indvar_next397, %polly.loop_header392 ], [ 0, %polly.loop_header392.preheader ]
  %163 = add nuw nsw i64 %polly.indvar396, %145
  %164 = mul nuw nsw i64 %163, 8000
  %165 = add nuw nsw i64 %164, %157
  %scevgep399 = getelementptr i8, i8* %call1, i64 %165
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_404, %_p_scalar_401
  %scevgep405 = getelementptr i8, i8* %call2, i64 %165
  %scevgep405406 = bitcast i8* %scevgep405 to double*
  %_p_scalar_407 = load double, double* %scevgep405406, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_410, %_p_scalar_407
  %166 = shl i64 %163, 3
  %167 = add i64 %166, %162
  %scevgep411 = getelementptr i8, i8* %call, i64 %167
  %scevgep411412 = bitcast i8* %scevgep411 to double*
  %_p_scalar_413 = load double, double* %scevgep411412, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_413
  store double %p_add42.i79, double* %scevgep411412, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %exitcond820.not = icmp eq i64 %polly.indvar396, %smin819
  br i1 %exitcond820.not, label %polly.loop_exit394, label %polly.loop_header392

polly.loop_header500:                             ; preds = %init_array.exit, %polly.loop_exit508
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit508 ], [ 0, %init_array.exit ]
  %polly.indvar503 = phi i64 [ %polly.indvar_next504, %polly.loop_exit508 ], [ 1, %init_array.exit ]
  %168 = add i64 %indvar, 1
  %169 = mul nuw nsw i64 %polly.indvar503, 9600
  %scevgep512 = getelementptr i8, i8* %call, i64 %169
  %min.iters.check972 = icmp ult i64 %168, 4
  br i1 %min.iters.check972, label %polly.loop_header506.preheader, label %vector.ph973

vector.ph973:                                     ; preds = %polly.loop_header500
  %n.vec975 = and i64 %168, -4
  br label %vector.body971

vector.body971:                                   ; preds = %vector.body971, %vector.ph973
  %index976 = phi i64 [ 0, %vector.ph973 ], [ %index.next977, %vector.body971 ]
  %170 = shl nuw nsw i64 %index976, 3
  %171 = getelementptr i8, i8* %scevgep512, i64 %170
  %172 = bitcast i8* %171 to <4 x double>*
  %wide.load980 = load <4 x double>, <4 x double>* %172, align 8, !alias.scope !81, !noalias !83
  %173 = fmul fast <4 x double> %wide.load980, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %174 = bitcast i8* %171 to <4 x double>*
  store <4 x double> %173, <4 x double>* %174, align 8, !alias.scope !81, !noalias !83
  %index.next977 = add i64 %index976, 4
  %175 = icmp eq i64 %index.next977, %n.vec975
  br i1 %175, label %middle.block969, label %vector.body971, !llvm.loop !86

middle.block969:                                  ; preds = %vector.body971
  %cmp.n979 = icmp eq i64 %168, %n.vec975
  br i1 %cmp.n979, label %polly.loop_exit508, label %polly.loop_header506.preheader

polly.loop_header506.preheader:                   ; preds = %polly.loop_header500, %middle.block969
  %polly.indvar509.ph = phi i64 [ 0, %polly.loop_header500 ], [ %n.vec975, %middle.block969 ]
  br label %polly.loop_header506

polly.loop_exit508:                               ; preds = %polly.loop_header506, %middle.block969
  %polly.indvar_next504 = add nuw nsw i64 %polly.indvar503, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next504, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond845.not, label %polly.loop_header516, label %polly.loop_header500

polly.loop_header506:                             ; preds = %polly.loop_header506.preheader, %polly.loop_header506
  %polly.indvar509 = phi i64 [ %polly.indvar_next510, %polly.loop_header506 ], [ %polly.indvar509.ph, %polly.loop_header506.preheader ]
  %176 = shl nuw nsw i64 %polly.indvar509, 3
  %scevgep513 = getelementptr i8, i8* %scevgep512, i64 %176
  %scevgep513514 = bitcast i8* %scevgep513 to double*
  %_p_scalar_515 = load double, double* %scevgep513514, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_515, 1.200000e+00
  store double %p_mul.i, double* %scevgep513514, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next510 = add nuw nsw i64 %polly.indvar509, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next510, %polly.indvar503
  br i1 %exitcond844.not, label %polly.loop_exit508, label %polly.loop_header506, !llvm.loop !87

polly.loop_header516:                             ; preds = %polly.loop_exit508, %polly.loop_exit524
  %polly.indvar519 = phi i64 [ %polly.indvar_next520, %polly.loop_exit524 ], [ 0, %polly.loop_exit508 ]
  %177 = mul nuw nsw i64 %polly.indvar519, 100
  br label %polly.loop_header522

polly.loop_exit524:                               ; preds = %polly.loop_exit532
  %polly.indvar_next520 = add nuw nsw i64 %polly.indvar519, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next520, 10
  br i1 %exitcond843.not, label %kernel_syr2k.exit, label %polly.loop_header516

polly.loop_header522:                             ; preds = %polly.loop_exit532, %polly.loop_header516
  %indvars.iv833 = phi i64 [ %indvars.iv.next834, %polly.loop_exit532 ], [ 0, %polly.loop_header516 ]
  %indvars.iv828 = phi i64 [ %indvars.iv.next829, %polly.loop_exit532 ], [ 7, %polly.loop_header516 ]
  %indvars.iv826 = phi i64 [ %indvars.iv.next827, %polly.loop_exit532 ], [ 0, %polly.loop_header516 ]
  %polly.indvar525 = phi i64 [ %polly.indvar_next526, %polly.loop_exit532 ], [ 0, %polly.loop_header516 ]
  %178 = shl nuw nsw i64 %indvars.iv828, 4
  %179 = and i64 %178, 9223372036854775680
  %180 = mul nuw nsw i64 %polly.indvar525, 3
  %181 = add nuw nsw i64 %180, 7
  %pexp.p_div_q528 = lshr i64 %181, 3
  %182 = sub nsw i64 %polly.indvar525, %pexp.p_div_q528
  %polly.loop_guard533 = icmp slt i64 %182, 10
  br i1 %polly.loop_guard533, label %polly.loop_header530.preheader, label %polly.loop_exit532

polly.loop_header530.preheader:                   ; preds = %polly.loop_header522
  %183 = sub nsw i64 %indvars.iv833, %179
  %184 = add i64 %indvars.iv826, %179
  %185 = mul nuw nsw i64 %polly.indvar525, 80
  %186 = mul nsw i64 %polly.indvar525, -80
  br label %polly.loop_header530

polly.loop_exit532:                               ; preds = %polly.loop_exit539, %polly.loop_header522
  %polly.indvar_next526 = add nuw nsw i64 %polly.indvar525, 1
  %indvars.iv.next827 = add nsw i64 %indvars.iv826, -48
  %indvars.iv.next829 = add nuw nsw i64 %indvars.iv828, 3
  %indvars.iv.next834 = add nuw nsw i64 %indvars.iv833, 48
  %exitcond842.not = icmp eq i64 %polly.indvar_next526, 15
  br i1 %exitcond842.not, label %polly.loop_exit524, label %polly.loop_header522

polly.loop_header530:                             ; preds = %polly.loop_header530.preheader, %polly.loop_exit539
  %indvars.iv835 = phi i64 [ %183, %polly.loop_header530.preheader ], [ %indvars.iv.next836, %polly.loop_exit539 ]
  %indvars.iv830 = phi i64 [ %184, %polly.loop_header530.preheader ], [ %indvars.iv.next831, %polly.loop_exit539 ]
  %polly.indvar534 = phi i64 [ %182, %polly.loop_header530.preheader ], [ %polly.indvar_next535, %polly.loop_exit539 ]
  %smax832 = call i64 @llvm.smax.i64(i64 %indvars.iv830, i64 0)
  %187 = add i64 %smax832, %indvars.iv835
  %188 = shl nsw i64 %polly.indvar534, 7
  %189 = sub nsw i64 %185, %188
  %190 = icmp sgt i64 %189, 0
  %191 = select i1 %190, i64 %189, i64 0
  %192 = mul nsw i64 %polly.indvar534, -128
  %193 = icmp slt i64 %192, -1072
  %194 = select i1 %193, i64 %192, i64 -1072
  %195 = add nsw i64 %194, 1199
  %polly.loop_guard547.not = icmp sgt i64 %191, %195
  br i1 %polly.loop_guard547.not, label %polly.loop_exit539, label %polly.loop_header537

polly.loop_exit539:                               ; preds = %polly.loop_exit546, %polly.loop_header530
  %polly.indvar_next535 = add nsw i64 %polly.indvar534, 1
  %polly.loop_cond536 = icmp slt i64 %polly.indvar534, 9
  %indvars.iv.next831 = add i64 %indvars.iv830, -128
  %indvars.iv.next836 = add i64 %indvars.iv835, 128
  br i1 %polly.loop_cond536, label %polly.loop_header530, label %polly.loop_exit532

polly.loop_header537:                             ; preds = %polly.loop_header530, %polly.loop_exit546
  %polly.indvar540 = phi i64 [ %polly.indvar_next541, %polly.loop_exit546 ], [ 0, %polly.loop_header530 ]
  %196 = add nuw nsw i64 %polly.indvar540, %177
  %197 = shl i64 %196, 3
  br label %polly.loop_header544

polly.loop_exit546:                               ; preds = %polly.loop_exit554
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next541, 100
  br i1 %exitcond841.not, label %polly.loop_exit539, label %polly.loop_header537

polly.loop_header544:                             ; preds = %polly.loop_header537, %polly.loop_exit554
  %indvars.iv837 = phi i64 [ %187, %polly.loop_header537 ], [ %indvars.iv.next838, %polly.loop_exit554 ]
  %polly.indvar548 = phi i64 [ %191, %polly.loop_header537 ], [ %polly.indvar_next549, %polly.loop_exit554 ]
  %smin839 = call i64 @llvm.smin.i64(i64 %indvars.iv837, i64 79)
  %198 = add i64 %polly.indvar548, %188
  %199 = add i64 %198, %186
  %polly.loop_guard555882 = icmp sgt i64 %199, -1
  br i1 %polly.loop_guard555882, label %polly.loop_header552.preheader, label %polly.loop_exit554

polly.loop_header552.preheader:                   ; preds = %polly.loop_header544
  %200 = mul i64 %198, 8000
  %201 = add i64 %200, %197
  %scevgep562 = getelementptr i8, i8* %call2, i64 %201
  %scevgep562563 = bitcast i8* %scevgep562 to double*
  %_p_scalar_564 = load double, double* %scevgep562563, align 8, !alias.scope !85, !noalias !88
  %scevgep568 = getelementptr i8, i8* %call1, i64 %201
  %scevgep568569 = bitcast i8* %scevgep568 to double*
  %_p_scalar_570 = load double, double* %scevgep568569, align 8, !alias.scope !84, !noalias !89
  %202 = mul i64 %198, 9600
  br label %polly.loop_header552

polly.loop_exit554:                               ; preds = %polly.loop_header552, %polly.loop_header544
  %polly.indvar_next549 = add nuw nsw i64 %polly.indvar548, 1
  %polly.loop_cond550.not.not = icmp slt i64 %polly.indvar548, %195
  %indvars.iv.next838 = add i64 %indvars.iv837, 1
  br i1 %polly.loop_cond550.not.not, label %polly.loop_header544, label %polly.loop_exit546

polly.loop_header552:                             ; preds = %polly.loop_header552.preheader, %polly.loop_header552
  %polly.indvar556 = phi i64 [ %polly.indvar_next557, %polly.loop_header552 ], [ 0, %polly.loop_header552.preheader ]
  %203 = add nuw nsw i64 %polly.indvar556, %185
  %204 = mul nuw nsw i64 %203, 8000
  %205 = add nuw nsw i64 %204, %197
  %scevgep559 = getelementptr i8, i8* %call1, i64 %205
  %scevgep559560 = bitcast i8* %scevgep559 to double*
  %_p_scalar_561 = load double, double* %scevgep559560, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_564, %_p_scalar_561
  %scevgep565 = getelementptr i8, i8* %call2, i64 %205
  %scevgep565566 = bitcast i8* %scevgep565 to double*
  %_p_scalar_567 = load double, double* %scevgep565566, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_570, %_p_scalar_567
  %206 = shl i64 %203, 3
  %207 = add i64 %206, %202
  %scevgep571 = getelementptr i8, i8* %call, i64 %207
  %scevgep571572 = bitcast i8* %scevgep571 to double*
  %_p_scalar_573 = load double, double* %scevgep571572, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_573
  store double %p_add42.i, double* %scevgep571572, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %exitcond840.not = icmp eq i64 %polly.indvar556, %smin839
  br i1 %exitcond840.not, label %polly.loop_exit554, label %polly.loop_header552

polly.loop_header700:                             ; preds = %entry, %polly.loop_exit708
  %indvars.iv870 = phi i64 [ %indvars.iv.next871, %polly.loop_exit708 ], [ 0, %entry ]
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %entry ]
  %smin872 = call i64 @llvm.smin.i64(i64 %indvars.iv870, i64 -1168)
  %208 = shl nsw i64 %polly.indvar703, 5
  %209 = add nsw i64 %smin872, 1199
  br label %polly.loop_header706

polly.loop_exit708:                               ; preds = %polly.loop_exit714
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %indvars.iv.next871 = add nsw i64 %indvars.iv870, -32
  %exitcond875.not = icmp eq i64 %polly.indvar_next704, 38
  br i1 %exitcond875.not, label %polly.loop_header727, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_exit714, %polly.loop_header700
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %polly.loop_exit714 ], [ 0, %polly.loop_header700 ]
  %polly.indvar709 = phi i64 [ %polly.indvar_next710, %polly.loop_exit714 ], [ 0, %polly.loop_header700 ]
  %210 = mul nsw i64 %polly.indvar709, -32
  %smin910 = call i64 @llvm.smin.i64(i64 %210, i64 -1168)
  %211 = add nsw i64 %smin910, 1200
  %smin868 = call i64 @llvm.smin.i64(i64 %indvars.iv866, i64 -1168)
  %212 = shl nsw i64 %polly.indvar709, 5
  %213 = add nsw i64 %smin868, 1199
  br label %polly.loop_header712

polly.loop_exit714:                               ; preds = %polly.loop_exit720
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %indvars.iv.next867 = add nsw i64 %indvars.iv866, -32
  %exitcond874.not = icmp eq i64 %polly.indvar_next710, 38
  br i1 %exitcond874.not, label %polly.loop_exit708, label %polly.loop_header706

polly.loop_header712:                             ; preds = %polly.loop_exit720, %polly.loop_header706
  %polly.indvar715 = phi i64 [ 0, %polly.loop_header706 ], [ %polly.indvar_next716, %polly.loop_exit720 ]
  %214 = add nuw nsw i64 %polly.indvar715, %208
  %215 = trunc i64 %214 to i32
  %216 = mul nuw nsw i64 %214, 9600
  %min.iters.check = icmp eq i64 %211, 0
  br i1 %min.iters.check, label %polly.loop_header718, label %vector.ph911

vector.ph911:                                     ; preds = %polly.loop_header712
  %broadcast.splatinsert918 = insertelement <4 x i64> poison, i64 %212, i32 0
  %broadcast.splat919 = shufflevector <4 x i64> %broadcast.splatinsert918, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert920 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat921 = shufflevector <4 x i32> %broadcast.splatinsert920, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body909

vector.body909:                                   ; preds = %vector.body909, %vector.ph911
  %index912 = phi i64 [ 0, %vector.ph911 ], [ %index.next913, %vector.body909 ]
  %vec.ind916 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph911 ], [ %vec.ind.next917, %vector.body909 ]
  %217 = add nuw nsw <4 x i64> %vec.ind916, %broadcast.splat919
  %218 = trunc <4 x i64> %217 to <4 x i32>
  %219 = mul <4 x i32> %broadcast.splat921, %218
  %220 = add <4 x i32> %219, <i32 3, i32 3, i32 3, i32 3>
  %221 = urem <4 x i32> %220, <i32 1200, i32 1200, i32 1200, i32 1200>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %224 = extractelement <4 x i64> %217, i32 0
  %225 = shl i64 %224, 3
  %226 = add nuw nsw i64 %225, %216
  %227 = getelementptr i8, i8* %call, i64 %226
  %228 = bitcast i8* %227 to <4 x double>*
  store <4 x double> %223, <4 x double>* %228, align 8, !alias.scope !90, !noalias !92
  %index.next913 = add i64 %index912, 4
  %vec.ind.next917 = add <4 x i64> %vec.ind916, <i64 4, i64 4, i64 4, i64 4>
  %229 = icmp eq i64 %index.next913, %211
  br i1 %229, label %polly.loop_exit720, label %vector.body909, !llvm.loop !95

polly.loop_exit720:                               ; preds = %vector.body909, %polly.loop_header718
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond873.not = icmp eq i64 %polly.indvar715, %209
  br i1 %exitcond873.not, label %polly.loop_exit714, label %polly.loop_header712

polly.loop_header718:                             ; preds = %polly.loop_header712, %polly.loop_header718
  %polly.indvar721 = phi i64 [ %polly.indvar_next722, %polly.loop_header718 ], [ 0, %polly.loop_header712 ]
  %230 = add nuw nsw i64 %polly.indvar721, %212
  %231 = trunc i64 %230 to i32
  %232 = mul i32 %231, %215
  %233 = add i32 %232, 3
  %234 = urem i32 %233, 1200
  %p_conv31.i = sitofp i32 %234 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %235 = shl i64 %230, 3
  %236 = add nuw nsw i64 %235, %216
  %scevgep724 = getelementptr i8, i8* %call, i64 %236
  %scevgep724725 = bitcast i8* %scevgep724 to double*
  store double %p_div33.i, double* %scevgep724725, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next722 = add nuw nsw i64 %polly.indvar721, 1
  %exitcond869.not = icmp eq i64 %polly.indvar721, %213
  br i1 %exitcond869.not, label %polly.loop_exit720, label %polly.loop_header718, !llvm.loop !96

polly.loop_header727:                             ; preds = %polly.loop_exit708, %polly.loop_exit735
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit735 ], [ 0, %polly.loop_exit708 ]
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_exit708 ]
  %smin862 = call i64 @llvm.smin.i64(i64 %indvars.iv860, i64 -1168)
  %237 = shl nsw i64 %polly.indvar730, 5
  %238 = add nsw i64 %smin862, 1199
  br label %polly.loop_header733

polly.loop_exit735:                               ; preds = %polly.loop_exit741
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %indvars.iv.next861 = add nsw i64 %indvars.iv860, -32
  %exitcond865.not = icmp eq i64 %polly.indvar_next731, 38
  br i1 %exitcond865.not, label %polly.loop_header753, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_exit741, %polly.loop_header727
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %polly.loop_exit741 ], [ 0, %polly.loop_header727 ]
  %polly.indvar736 = phi i64 [ %polly.indvar_next737, %polly.loop_exit741 ], [ 0, %polly.loop_header727 ]
  %239 = mul nsw i64 %polly.indvar736, -32
  %smin925 = call i64 @llvm.smin.i64(i64 %239, i64 -968)
  %240 = add nsw i64 %smin925, 1000
  %smin858 = call i64 @llvm.smin.i64(i64 %indvars.iv856, i64 -968)
  %241 = shl nsw i64 %polly.indvar736, 5
  %242 = add nsw i64 %smin858, 999
  br label %polly.loop_header739

polly.loop_exit741:                               ; preds = %polly.loop_exit747
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %indvars.iv.next857 = add nsw i64 %indvars.iv856, -32
  %exitcond864.not = icmp eq i64 %polly.indvar_next737, 32
  br i1 %exitcond864.not, label %polly.loop_exit735, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_exit747, %polly.loop_header733
  %polly.indvar742 = phi i64 [ 0, %polly.loop_header733 ], [ %polly.indvar_next743, %polly.loop_exit747 ]
  %243 = add nuw nsw i64 %polly.indvar742, %237
  %244 = trunc i64 %243 to i32
  %245 = mul nuw nsw i64 %243, 8000
  %min.iters.check926 = icmp eq i64 %240, 0
  br i1 %min.iters.check926, label %polly.loop_header745, label %vector.ph927

vector.ph927:                                     ; preds = %polly.loop_header739
  %broadcast.splatinsert936 = insertelement <4 x i64> poison, i64 %241, i32 0
  %broadcast.splat937 = shufflevector <4 x i64> %broadcast.splatinsert936, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert938 = insertelement <4 x i32> poison, i32 %244, i32 0
  %broadcast.splat939 = shufflevector <4 x i32> %broadcast.splatinsert938, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body924

vector.body924:                                   ; preds = %vector.body924, %vector.ph927
  %index930 = phi i64 [ 0, %vector.ph927 ], [ %index.next931, %vector.body924 ]
  %vec.ind934 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph927 ], [ %vec.ind.next935, %vector.body924 ]
  %246 = add nuw nsw <4 x i64> %vec.ind934, %broadcast.splat937
  %247 = trunc <4 x i64> %246 to <4 x i32>
  %248 = mul <4 x i32> %broadcast.splat939, %247
  %249 = add <4 x i32> %248, <i32 2, i32 2, i32 2, i32 2>
  %250 = urem <4 x i32> %249, <i32 1000, i32 1000, i32 1000, i32 1000>
  %251 = sitofp <4 x i32> %250 to <4 x double>
  %252 = fmul fast <4 x double> %251, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %253 = extractelement <4 x i64> %246, i32 0
  %254 = shl i64 %253, 3
  %255 = add nuw nsw i64 %254, %245
  %256 = getelementptr i8, i8* %call2, i64 %255
  %257 = bitcast i8* %256 to <4 x double>*
  store <4 x double> %252, <4 x double>* %257, align 8, !alias.scope !94, !noalias !97
  %index.next931 = add i64 %index930, 4
  %vec.ind.next935 = add <4 x i64> %vec.ind934, <i64 4, i64 4, i64 4, i64 4>
  %258 = icmp eq i64 %index.next931, %240
  br i1 %258, label %polly.loop_exit747, label %vector.body924, !llvm.loop !98

polly.loop_exit747:                               ; preds = %vector.body924, %polly.loop_header745
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %exitcond863.not = icmp eq i64 %polly.indvar742, %238
  br i1 %exitcond863.not, label %polly.loop_exit741, label %polly.loop_header739

polly.loop_header745:                             ; preds = %polly.loop_header739, %polly.loop_header745
  %polly.indvar748 = phi i64 [ %polly.indvar_next749, %polly.loop_header745 ], [ 0, %polly.loop_header739 ]
  %259 = add nuw nsw i64 %polly.indvar748, %241
  %260 = trunc i64 %259 to i32
  %261 = mul i32 %260, %244
  %262 = add i32 %261, 2
  %263 = urem i32 %262, 1000
  %p_conv10.i = sitofp i32 %263 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %264 = shl i64 %259, 3
  %265 = add nuw nsw i64 %264, %245
  %scevgep751 = getelementptr i8, i8* %call2, i64 %265
  %scevgep751752 = bitcast i8* %scevgep751 to double*
  store double %p_div12.i, double* %scevgep751752, align 8, !alias.scope !94, !noalias !97
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %exitcond859.not = icmp eq i64 %polly.indvar748, %242
  br i1 %exitcond859.not, label %polly.loop_exit747, label %polly.loop_header745, !llvm.loop !99

polly.loop_header753:                             ; preds = %polly.loop_exit735, %polly.loop_exit761
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %polly.loop_exit761 ], [ 0, %polly.loop_exit735 ]
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_exit735 ]
  %smin852 = call i64 @llvm.smin.i64(i64 %indvars.iv850, i64 -1168)
  %266 = shl nsw i64 %polly.indvar756, 5
  %267 = add nsw i64 %smin852, 1199
  br label %polly.loop_header759

polly.loop_exit761:                               ; preds = %polly.loop_exit767
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, -32
  %exitcond855.not = icmp eq i64 %polly.indvar_next757, 38
  br i1 %exitcond855.not, label %init_array.exit, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_exit767, %polly.loop_header753
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %polly.loop_exit767 ], [ 0, %polly.loop_header753 ]
  %polly.indvar762 = phi i64 [ %polly.indvar_next763, %polly.loop_exit767 ], [ 0, %polly.loop_header753 ]
  %268 = mul nsw i64 %polly.indvar762, -32
  %smin943 = call i64 @llvm.smin.i64(i64 %268, i64 -968)
  %269 = add nsw i64 %smin943, 1000
  %smin848 = call i64 @llvm.smin.i64(i64 %indvars.iv846, i64 -968)
  %270 = shl nsw i64 %polly.indvar762, 5
  %271 = add nsw i64 %smin848, 999
  br label %polly.loop_header765

polly.loop_exit767:                               ; preds = %polly.loop_exit773
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, -32
  %exitcond854.not = icmp eq i64 %polly.indvar_next763, 32
  br i1 %exitcond854.not, label %polly.loop_exit761, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_exit773, %polly.loop_header759
  %polly.indvar768 = phi i64 [ 0, %polly.loop_header759 ], [ %polly.indvar_next769, %polly.loop_exit773 ]
  %272 = add nuw nsw i64 %polly.indvar768, %266
  %273 = trunc i64 %272 to i32
  %274 = mul nuw nsw i64 %272, 8000
  %min.iters.check944 = icmp eq i64 %269, 0
  br i1 %min.iters.check944, label %polly.loop_header771, label %vector.ph945

vector.ph945:                                     ; preds = %polly.loop_header765
  %broadcast.splatinsert954 = insertelement <4 x i64> poison, i64 %270, i32 0
  %broadcast.splat955 = shufflevector <4 x i64> %broadcast.splatinsert954, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert956 = insertelement <4 x i32> poison, i32 %273, i32 0
  %broadcast.splat957 = shufflevector <4 x i32> %broadcast.splatinsert956, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph945
  %index948 = phi i64 [ 0, %vector.ph945 ], [ %index.next949, %vector.body942 ]
  %vec.ind952 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph945 ], [ %vec.ind.next953, %vector.body942 ]
  %275 = add nuw nsw <4 x i64> %vec.ind952, %broadcast.splat955
  %276 = trunc <4 x i64> %275 to <4 x i32>
  %277 = mul <4 x i32> %broadcast.splat957, %276
  %278 = add <4 x i32> %277, <i32 1, i32 1, i32 1, i32 1>
  %279 = urem <4 x i32> %278, <i32 1200, i32 1200, i32 1200, i32 1200>
  %280 = sitofp <4 x i32> %279 to <4 x double>
  %281 = fmul fast <4 x double> %280, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %282 = extractelement <4 x i64> %275, i32 0
  %283 = shl i64 %282, 3
  %284 = add nuw nsw i64 %283, %274
  %285 = getelementptr i8, i8* %call1, i64 %284
  %286 = bitcast i8* %285 to <4 x double>*
  store <4 x double> %281, <4 x double>* %286, align 8, !alias.scope !93, !noalias !100
  %index.next949 = add i64 %index948, 4
  %vec.ind.next953 = add <4 x i64> %vec.ind952, <i64 4, i64 4, i64 4, i64 4>
  %287 = icmp eq i64 %index.next949, %269
  br i1 %287, label %polly.loop_exit773, label %vector.body942, !llvm.loop !101

polly.loop_exit773:                               ; preds = %vector.body942, %polly.loop_header771
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %exitcond853.not = icmp eq i64 %polly.indvar768, %267
  br i1 %exitcond853.not, label %polly.loop_exit767, label %polly.loop_header765

polly.loop_header771:                             ; preds = %polly.loop_header765, %polly.loop_header771
  %polly.indvar774 = phi i64 [ %polly.indvar_next775, %polly.loop_header771 ], [ 0, %polly.loop_header765 ]
  %288 = add nuw nsw i64 %polly.indvar774, %270
  %289 = trunc i64 %288 to i32
  %290 = mul i32 %289, %273
  %291 = add i32 %290, 1
  %292 = urem i32 %291, 1200
  %p_conv.i = sitofp i32 %292 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %293 = shl i64 %288, 3
  %294 = add nuw nsw i64 %293, %274
  %scevgep778 = getelementptr i8, i8* %call1, i64 %294
  %scevgep778779 = bitcast i8* %scevgep778 to double*
  store double %p_div.i, double* %scevgep778779, align 8, !alias.scope !93, !noalias !100
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %exitcond849.not = icmp eq i64 %polly.indvar774, %271
  br i1 %exitcond849.not, label %polly.loop_exit773, label %polly.loop_header771, !llvm.loop !102
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
!24 = !{!"llvm.loop.tile.size", i32 80}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 100}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !22, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !22, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !44, !45, !51}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 128}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !22, !47, !48, !49, !50}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.interchange.enable", i1 true}
!49 = !{!"llvm.loop.interchange.depth", i32 5}
!50 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !22, !53}
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
!64 = !{!65, !66}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !69, !13}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!62, !65}
!71 = !{!62, !66}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !69, !13}
!79 = !{!72, !75}
!80 = !{!72, !76}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !69, !13}
!88 = !{!81, !84}
!89 = !{!81, !85}
!90 = distinct !{!90, !91, !"polly.alias.scope.MemRef_call"}
!91 = distinct !{!91, !"polly.alias.scope.domain"}
!92 = !{!93, !94}
!93 = distinct !{!93, !91, !"polly.alias.scope.MemRef_call1"}
!94 = distinct !{!94, !91, !"polly.alias.scope.MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !69, !13}
!97 = !{!93, !90}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !69, !13}
!100 = !{!94, !90}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !69, !13}
