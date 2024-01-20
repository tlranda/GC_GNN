; ModuleID = 'syr2k_exhaustive/mmp_all_XL_9177.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_9177.c"
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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv7.i, i64 %index899
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit755
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header496, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %index965
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %min.iters.check984 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check984, label %for.body3.i60.preheader1036, label %vector.ph985

vector.ph985:                                     ; preds = %for.body3.i60.preheader
  %n.vec987 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %vector.ph985
  %index988 = phi i64 [ 0, %vector.ph985 ], [ %index.next989, %vector.body983 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %index988
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
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %min.iters.check1010 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1010, label %for.body3.i99.preheader1034, label %vector.ph1011

vector.ph1011:                                    ; preds = %for.body3.i99.preheader
  %n.vec1013 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1009

vector.body1009:                                  ; preds = %vector.body1009, %vector.ph1011
  %index1014 = phi i64 [ 0, %vector.ph1011 ], [ %index.next1015, %vector.body1009 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %index1014
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
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %exitcond801.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1023 = add i64 %indvar1022, 1
  br i1 %exitcond801.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond800.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv793 = phi i64 [ %indvars.iv.next794, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %smin795 = call i64 @llvm.smin.i64(i64 %indvars.iv793, i64 -872)
  %97 = shl nsw i64 %polly.indvar202, 7
  %98 = add nsw i64 %smin795, 999
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next794 = add nsw i64 %indvars.iv793, -128
  %exitcond799.not = icmp eq i64 %polly.indvar_next203, 8
  br i1 %exitcond799.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = lshr i64 %polly.indvar208, 1
  %100 = mul nuw nsw i64 %99, 100
  %101 = sub nsw i64 %indvars.iv, %100
  %102 = add i64 %indvars.iv787, %100
  %103 = mul nuw nsw i64 %polly.indvar208, 50
  %104 = mul nsw i64 %polly.indvar208, -50
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 50
  %indvars.iv.next788 = add nsw i64 %indvars.iv787, -50
  %exitcond798.not = icmp eq i64 %polly.indvar_next209, 24
  br i1 %exitcond798.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv789 = phi i64 [ %indvars.iv.next790, %polly.loop_exit219 ], [ %102, %polly.loop_header205 ]
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit219 ], [ %101, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ %99, %polly.loop_header205 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv785, i64 0)
  %105 = add i64 %smax, %indvars.iv789
  %106 = mul nuw nsw i64 %polly.indvar214, 100
  %107 = sub nsw i64 %103, %106
  %108 = icmp sgt i64 %107, 0
  %109 = select i1 %108, i64 %107, i64 0
  %polly.loop_guard = icmp slt i64 %109, 100
  br i1 %polly.loop_guard, label %polly.loop_header217.us, label %polly.loop_exit219

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit225.loopexit.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit225.loopexit.us ], [ 0, %polly.loop_header211 ]
  %110 = add nuw nsw i64 %polly.indvar220.us, %97
  %111 = shl i64 %110, 3
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_exit232.us
  %indvars.iv791 = phi i64 [ %105, %polly.loop_header217.us ], [ %indvars.iv.next792, %polly.loop_exit232.us ]
  %polly.indvar226.us = phi i64 [ %109, %polly.loop_header217.us ], [ %polly.indvar_next227.us, %polly.loop_exit232.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv791, i64 49)
  %112 = add nuw i64 %polly.indvar226.us, %106
  %113 = add i64 %112, %104
  %polly.loop_guard233.us880 = icmp sgt i64 %113, -1
  br i1 %polly.loop_guard233.us880, label %polly.loop_header230.preheader.us, label %polly.loop_exit232.us

polly.loop_header230.us:                          ; preds = %polly.loop_header230.preheader.us, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header230.preheader.us ]
  %114 = add nuw nsw i64 %polly.indvar234.us, %103
  %115 = mul nuw nsw i64 %114, 8000
  %116 = add nuw nsw i64 %115, %111
  %scevgep237.us = getelementptr i8, i8* %call1, i64 %116
  %scevgep237238.us = bitcast i8* %scevgep237.us to double*
  %_p_scalar_239.us = load double, double* %scevgep237238.us, align 8, !alias.scope !65, !noalias !70
  %p_mul27.i112.us = fmul fast double %_p_scalar_242.us, %_p_scalar_239.us
  %scevgep243.us = getelementptr i8, i8* %call2, i64 %116
  %scevgep243244.us = bitcast i8* %scevgep243.us to double*
  %_p_scalar_245.us = load double, double* %scevgep243244.us, align 8, !alias.scope !66, !noalias !71
  %p_mul37.i114.us = fmul fast double %_p_scalar_248.us, %_p_scalar_245.us
  %117 = shl i64 %114, 3
  %118 = add i64 %117, %121
  %scevgep249.us = getelementptr i8, i8* %call, i64 %118
  %scevgep249250.us = bitcast i8* %scevgep249.us to double*
  %_p_scalar_251.us = load double, double* %scevgep249250.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_251.us
  store double %p_add42.i118.us, double* %scevgep249250.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next235.us = add nuw nsw i64 %polly.indvar234.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar234.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit232.us, label %polly.loop_header230.us

polly.loop_exit232.us:                            ; preds = %polly.loop_header230.us, %polly.loop_header223.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %polly.loop_cond228.us = icmp ult i64 %polly.indvar226.us, 99
  %indvars.iv.next792 = add i64 %indvars.iv791, 1
  br i1 %polly.loop_cond228.us, label %polly.loop_header223.us, label %polly.loop_exit225.loopexit.us

polly.loop_header230.preheader.us:                ; preds = %polly.loop_header223.us
  %119 = mul i64 %112, 8000
  %120 = add i64 %119, %111
  %scevgep240.us = getelementptr i8, i8* %call2, i64 %120
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !66, !noalias !71
  %scevgep246.us = getelementptr i8, i8* %call1, i64 %120
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !65, !noalias !70
  %121 = mul i64 %112, 9600
  br label %polly.loop_header230.us

polly.loop_exit225.loopexit.us:                   ; preds = %polly.loop_exit232.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond796.not = icmp eq i64 %polly.indvar220.us, %98
  br i1 %exitcond796.not, label %polly.loop_exit219, label %polly.loop_header217.us

polly.loop_exit219:                               ; preds = %polly.loop_exit225.loopexit.us, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next786 = add i64 %indvars.iv785, -100
  %indvars.iv.next790 = add i64 %indvars.iv789, 100
  %exitcond797.not = icmp eq i64 %polly.indvar_next215, 12
  br i1 %exitcond797.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar996 = phi i64 [ %indvar.next997, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %122 = add i64 %indvar996, 1
  %123 = mul nuw nsw i64 %polly.indvar341, 9600
  %scevgep350 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check998 = icmp ult i64 %122, 4
  br i1 %min.iters.check998, label %polly.loop_header344.preheader, label %vector.ph999

vector.ph999:                                     ; preds = %polly.loop_header338
  %n.vec1001 = and i64 %122, -4
  br label %vector.body995

vector.body995:                                   ; preds = %vector.body995, %vector.ph999
  %index1002 = phi i64 [ 0, %vector.ph999 ], [ %index.next1003, %vector.body995 ]
  %124 = shl nuw nsw i64 %index1002, 3
  %125 = getelementptr i8, i8* %scevgep350, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1006 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !72, !noalias !74
  %127 = fmul fast <4 x double> %wide.load1006, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !72, !noalias !74
  %index.next1003 = add i64 %index1002, 4
  %129 = icmp eq i64 %index.next1003, %n.vec1001
  br i1 %129, label %middle.block993, label %vector.body995, !llvm.loop !77

middle.block993:                                  ; preds = %vector.body995
  %cmp.n1005 = icmp eq i64 %122, %n.vec1001
  br i1 %cmp.n1005, label %polly.loop_exit346, label %polly.loop_header344.preheader

polly.loop_header344.preheader:                   ; preds = %polly.loop_header338, %middle.block993
  %polly.indvar347.ph = phi i64 [ 0, %polly.loop_header338 ], [ %n.vec1001, %middle.block993 ]
  br label %polly.loop_header344

polly.loop_exit346:                               ; preds = %polly.loop_header344, %middle.block993
  %polly.indvar_next342 = add nuw nsw i64 %polly.indvar341, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next342, 1200
  %indvar.next997 = add i64 %indvar996, 1
  br i1 %exitcond823.not, label %polly.loop_header354, label %polly.loop_header338

polly.loop_header344:                             ; preds = %polly.loop_header344.preheader, %polly.loop_header344
  %polly.indvar347 = phi i64 [ %polly.indvar_next348, %polly.loop_header344 ], [ %polly.indvar347.ph, %polly.loop_header344.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %130
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond822.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond822.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !78

polly.loop_header354:                             ; preds = %polly.loop_exit346, %polly.loop_exit362
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %smin817 = call i64 @llvm.smin.i64(i64 %indvars.iv815, i64 -872)
  %131 = shl nsw i64 %polly.indvar357, 7
  %132 = add nsw i64 %smin817, 999
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_exit369
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %indvars.iv.next816 = add nsw i64 %indvars.iv815, -128
  %exitcond821.not = icmp eq i64 %polly.indvar_next358, 8
  br i1 %exitcond821.not, label %kernel_syr2k.exit90, label %polly.loop_header354

polly.loop_header360:                             ; preds = %polly.loop_exit369, %polly.loop_header354
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit369 ], [ 0, %polly.loop_header354 ]
  %indvars.iv802 = phi i64 [ %indvars.iv.next803, %polly.loop_exit369 ], [ 0, %polly.loop_header354 ]
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_exit369 ], [ 0, %polly.loop_header354 ]
  %133 = lshr i64 %polly.indvar363, 1
  %134 = mul nuw nsw i64 %133, 100
  %135 = sub nsw i64 %indvars.iv802, %134
  %136 = add i64 %indvars.iv807, %134
  %137 = mul nuw nsw i64 %polly.indvar363, 50
  %138 = mul nsw i64 %polly.indvar363, -50
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_exit375
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %indvars.iv.next803 = add nuw nsw i64 %indvars.iv802, 50
  %indvars.iv.next808 = add nsw i64 %indvars.iv807, -50
  %exitcond820.not = icmp eq i64 %polly.indvar_next364, 24
  br i1 %exitcond820.not, label %polly.loop_exit362, label %polly.loop_header360

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.loop_header360
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %polly.loop_exit375 ], [ %136, %polly.loop_header360 ]
  %indvars.iv804 = phi i64 [ %indvars.iv.next805, %polly.loop_exit375 ], [ %135, %polly.loop_header360 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit375 ], [ %133, %polly.loop_header360 ]
  %smax806 = call i64 @llvm.smax.i64(i64 %indvars.iv804, i64 0)
  %139 = add i64 %smax806, %indvars.iv809
  %140 = mul nuw nsw i64 %polly.indvar370, 100
  %141 = sub nsw i64 %137, %140
  %142 = icmp sgt i64 %141, 0
  %143 = select i1 %142, i64 %141, i64 0
  %polly.loop_guard383 = icmp slt i64 %143, 100
  br i1 %polly.loop_guard383, label %polly.loop_header373.us, label %polly.loop_exit375

polly.loop_header373.us:                          ; preds = %polly.loop_header367, %polly.loop_exit382.loopexit.us
  %polly.indvar376.us = phi i64 [ %polly.indvar_next377.us, %polly.loop_exit382.loopexit.us ], [ 0, %polly.loop_header367 ]
  %144 = add nuw nsw i64 %polly.indvar376.us, %131
  %145 = shl i64 %144, 3
  br label %polly.loop_header380.us

polly.loop_header380.us:                          ; preds = %polly.loop_header373.us, %polly.loop_exit390.us
  %indvars.iv811 = phi i64 [ %139, %polly.loop_header373.us ], [ %indvars.iv.next812, %polly.loop_exit390.us ]
  %polly.indvar384.us = phi i64 [ %143, %polly.loop_header373.us ], [ %polly.indvar_next385.us, %polly.loop_exit390.us ]
  %smin813 = call i64 @llvm.smin.i64(i64 %indvars.iv811, i64 49)
  %146 = add nuw i64 %polly.indvar384.us, %140
  %147 = add i64 %146, %138
  %polly.loop_guard391.us881 = icmp sgt i64 %147, -1
  br i1 %polly.loop_guard391.us881, label %polly.loop_header388.preheader.us, label %polly.loop_exit390.us

polly.loop_header388.us:                          ; preds = %polly.loop_header388.preheader.us, %polly.loop_header388.us
  %polly.indvar392.us = phi i64 [ %polly.indvar_next393.us, %polly.loop_header388.us ], [ 0, %polly.loop_header388.preheader.us ]
  %148 = add nuw nsw i64 %polly.indvar392.us, %137
  %149 = mul nuw nsw i64 %148, 8000
  %150 = add nuw nsw i64 %149, %145
  %scevgep395.us = getelementptr i8, i8* %call1, i64 %150
  %scevgep395396.us = bitcast i8* %scevgep395.us to double*
  %_p_scalar_397.us = load double, double* %scevgep395396.us, align 8, !alias.scope !75, !noalias !79
  %p_mul27.i73.us = fmul fast double %_p_scalar_400.us, %_p_scalar_397.us
  %scevgep401.us = getelementptr i8, i8* %call2, i64 %150
  %scevgep401402.us = bitcast i8* %scevgep401.us to double*
  %_p_scalar_403.us = load double, double* %scevgep401402.us, align 8, !alias.scope !76, !noalias !80
  %p_mul37.i75.us = fmul fast double %_p_scalar_406.us, %_p_scalar_403.us
  %151 = shl i64 %148, 3
  %152 = add i64 %151, %155
  %scevgep407.us = getelementptr i8, i8* %call, i64 %152
  %scevgep407408.us = bitcast i8* %scevgep407.us to double*
  %_p_scalar_409.us = load double, double* %scevgep407408.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_409.us
  store double %p_add42.i79.us, double* %scevgep407408.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next393.us = add nuw nsw i64 %polly.indvar392.us, 1
  %exitcond814.not = icmp eq i64 %polly.indvar392.us, %smin813
  br i1 %exitcond814.not, label %polly.loop_exit390.us, label %polly.loop_header388.us

polly.loop_exit390.us:                            ; preds = %polly.loop_header388.us, %polly.loop_header380.us
  %polly.indvar_next385.us = add nuw nsw i64 %polly.indvar384.us, 1
  %polly.loop_cond386.us = icmp ult i64 %polly.indvar384.us, 99
  %indvars.iv.next812 = add i64 %indvars.iv811, 1
  br i1 %polly.loop_cond386.us, label %polly.loop_header380.us, label %polly.loop_exit382.loopexit.us

polly.loop_header388.preheader.us:                ; preds = %polly.loop_header380.us
  %153 = mul i64 %146, 8000
  %154 = add i64 %153, %145
  %scevgep398.us = getelementptr i8, i8* %call2, i64 %154
  %scevgep398399.us = bitcast i8* %scevgep398.us to double*
  %_p_scalar_400.us = load double, double* %scevgep398399.us, align 8, !alias.scope !76, !noalias !80
  %scevgep404.us = getelementptr i8, i8* %call1, i64 %154
  %scevgep404405.us = bitcast i8* %scevgep404.us to double*
  %_p_scalar_406.us = load double, double* %scevgep404405.us, align 8, !alias.scope !75, !noalias !79
  %155 = mul i64 %146, 9600
  br label %polly.loop_header388.us

polly.loop_exit382.loopexit.us:                   ; preds = %polly.loop_exit390.us
  %polly.indvar_next377.us = add nuw nsw i64 %polly.indvar376.us, 1
  %exitcond818.not = icmp eq i64 %polly.indvar376.us, %132
  br i1 %exitcond818.not, label %polly.loop_exit375, label %polly.loop_header373.us

polly.loop_exit375:                               ; preds = %polly.loop_exit382.loopexit.us, %polly.loop_header367
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %indvars.iv.next805 = add i64 %indvars.iv804, -100
  %indvars.iv.next810 = add i64 %indvars.iv809, 100
  %exitcond819.not = icmp eq i64 %polly.indvar_next371, 12
  br i1 %exitcond819.not, label %polly.loop_exit369, label %polly.loop_header367

polly.loop_header496:                             ; preds = %init_array.exit, %polly.loop_exit504
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit504 ], [ 0, %init_array.exit ]
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_exit504 ], [ 1, %init_array.exit ]
  %156 = add i64 %indvar, 1
  %157 = mul nuw nsw i64 %polly.indvar499, 9600
  %scevgep508 = getelementptr i8, i8* %call, i64 %157
  %min.iters.check972 = icmp ult i64 %156, 4
  br i1 %min.iters.check972, label %polly.loop_header502.preheader, label %vector.ph973

vector.ph973:                                     ; preds = %polly.loop_header496
  %n.vec975 = and i64 %156, -4
  br label %vector.body971

vector.body971:                                   ; preds = %vector.body971, %vector.ph973
  %index976 = phi i64 [ 0, %vector.ph973 ], [ %index.next977, %vector.body971 ]
  %158 = shl nuw nsw i64 %index976, 3
  %159 = getelementptr i8, i8* %scevgep508, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load980 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !81, !noalias !83
  %161 = fmul fast <4 x double> %wide.load980, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %162 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !81, !noalias !83
  %index.next977 = add i64 %index976, 4
  %163 = icmp eq i64 %index.next977, %n.vec975
  br i1 %163, label %middle.block969, label %vector.body971, !llvm.loop !86

middle.block969:                                  ; preds = %vector.body971
  %cmp.n979 = icmp eq i64 %156, %n.vec975
  br i1 %cmp.n979, label %polly.loop_exit504, label %polly.loop_header502.preheader

polly.loop_header502.preheader:                   ; preds = %polly.loop_header496, %middle.block969
  %polly.indvar505.ph = phi i64 [ 0, %polly.loop_header496 ], [ %n.vec975, %middle.block969 ]
  br label %polly.loop_header502

polly.loop_exit504:                               ; preds = %polly.loop_header502, %middle.block969
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next500, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond845.not, label %polly.loop_header512, label %polly.loop_header496

polly.loop_header502:                             ; preds = %polly.loop_header502.preheader, %polly.loop_header502
  %polly.indvar505 = phi i64 [ %polly.indvar_next506, %polly.loop_header502 ], [ %polly.indvar505.ph, %polly.loop_header502.preheader ]
  %164 = shl nuw nsw i64 %polly.indvar505, 3
  %scevgep509 = getelementptr i8, i8* %scevgep508, i64 %164
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_511, 1.200000e+00
  store double %p_mul.i, double* %scevgep509510, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next506 = add nuw nsw i64 %polly.indvar505, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next506, %polly.indvar499
  br i1 %exitcond844.not, label %polly.loop_exit504, label %polly.loop_header502, !llvm.loop !87

polly.loop_header512:                             ; preds = %polly.loop_exit504, %polly.loop_exit520
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %polly.indvar515 = phi i64 [ %polly.indvar_next516, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %smin839 = call i64 @llvm.smin.i64(i64 %indvars.iv837, i64 -872)
  %165 = shl nsw i64 %polly.indvar515, 7
  %166 = add nsw i64 %smin839, 999
  br label %polly.loop_header518

polly.loop_exit520:                               ; preds = %polly.loop_exit527
  %polly.indvar_next516 = add nuw nsw i64 %polly.indvar515, 1
  %indvars.iv.next838 = add nsw i64 %indvars.iv837, -128
  %exitcond843.not = icmp eq i64 %polly.indvar_next516, 8
  br i1 %exitcond843.not, label %kernel_syr2k.exit, label %polly.loop_header512

polly.loop_header518:                             ; preds = %polly.loop_exit527, %polly.loop_header512
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit527 ], [ 0, %polly.loop_header512 ]
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %polly.loop_exit527 ], [ 0, %polly.loop_header512 ]
  %polly.indvar521 = phi i64 [ %polly.indvar_next522, %polly.loop_exit527 ], [ 0, %polly.loop_header512 ]
  %167 = lshr i64 %polly.indvar521, 1
  %168 = mul nuw nsw i64 %167, 100
  %169 = sub nsw i64 %indvars.iv824, %168
  %170 = add i64 %indvars.iv829, %168
  %171 = mul nuw nsw i64 %polly.indvar521, 50
  %172 = mul nsw i64 %polly.indvar521, -50
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_exit533
  %polly.indvar_next522 = add nuw nsw i64 %polly.indvar521, 1
  %indvars.iv.next825 = add nuw nsw i64 %indvars.iv824, 50
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, -50
  %exitcond842.not = icmp eq i64 %polly.indvar_next522, 24
  br i1 %exitcond842.not, label %polly.loop_exit520, label %polly.loop_header518

polly.loop_header525:                             ; preds = %polly.loop_exit533, %polly.loop_header518
  %indvars.iv831 = phi i64 [ %indvars.iv.next832, %polly.loop_exit533 ], [ %170, %polly.loop_header518 ]
  %indvars.iv826 = phi i64 [ %indvars.iv.next827, %polly.loop_exit533 ], [ %169, %polly.loop_header518 ]
  %polly.indvar528 = phi i64 [ %polly.indvar_next529, %polly.loop_exit533 ], [ %167, %polly.loop_header518 ]
  %smax828 = call i64 @llvm.smax.i64(i64 %indvars.iv826, i64 0)
  %173 = add i64 %smax828, %indvars.iv831
  %174 = mul nuw nsw i64 %polly.indvar528, 100
  %175 = sub nsw i64 %171, %174
  %176 = icmp sgt i64 %175, 0
  %177 = select i1 %176, i64 %175, i64 0
  %polly.loop_guard541 = icmp slt i64 %177, 100
  br i1 %polly.loop_guard541, label %polly.loop_header531.us, label %polly.loop_exit533

polly.loop_header531.us:                          ; preds = %polly.loop_header525, %polly.loop_exit540.loopexit.us
  %polly.indvar534.us = phi i64 [ %polly.indvar_next535.us, %polly.loop_exit540.loopexit.us ], [ 0, %polly.loop_header525 ]
  %178 = add nuw nsw i64 %polly.indvar534.us, %165
  %179 = shl i64 %178, 3
  br label %polly.loop_header538.us

polly.loop_header538.us:                          ; preds = %polly.loop_header531.us, %polly.loop_exit548.us
  %indvars.iv833 = phi i64 [ %173, %polly.loop_header531.us ], [ %indvars.iv.next834, %polly.loop_exit548.us ]
  %polly.indvar542.us = phi i64 [ %177, %polly.loop_header531.us ], [ %polly.indvar_next543.us, %polly.loop_exit548.us ]
  %smin835 = call i64 @llvm.smin.i64(i64 %indvars.iv833, i64 49)
  %180 = add nuw i64 %polly.indvar542.us, %174
  %181 = add i64 %180, %172
  %polly.loop_guard549.us882 = icmp sgt i64 %181, -1
  br i1 %polly.loop_guard549.us882, label %polly.loop_header546.preheader.us, label %polly.loop_exit548.us

polly.loop_header546.us:                          ; preds = %polly.loop_header546.preheader.us, %polly.loop_header546.us
  %polly.indvar550.us = phi i64 [ %polly.indvar_next551.us, %polly.loop_header546.us ], [ 0, %polly.loop_header546.preheader.us ]
  %182 = add nuw nsw i64 %polly.indvar550.us, %171
  %183 = mul nuw nsw i64 %182, 8000
  %184 = add nuw nsw i64 %183, %179
  %scevgep553.us = getelementptr i8, i8* %call1, i64 %184
  %scevgep553554.us = bitcast i8* %scevgep553.us to double*
  %_p_scalar_555.us = load double, double* %scevgep553554.us, align 8, !alias.scope !84, !noalias !88
  %p_mul27.i.us = fmul fast double %_p_scalar_558.us, %_p_scalar_555.us
  %scevgep559.us = getelementptr i8, i8* %call2, i64 %184
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !85, !noalias !89
  %p_mul37.i.us = fmul fast double %_p_scalar_564.us, %_p_scalar_561.us
  %185 = shl i64 %182, 3
  %186 = add i64 %185, %189
  %scevgep565.us = getelementptr i8, i8* %call, i64 %186
  %scevgep565566.us = bitcast i8* %scevgep565.us to double*
  %_p_scalar_567.us = load double, double* %scevgep565566.us, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_567.us
  store double %p_add42.i.us, double* %scevgep565566.us, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next551.us = add nuw nsw i64 %polly.indvar550.us, 1
  %exitcond836.not = icmp eq i64 %polly.indvar550.us, %smin835
  br i1 %exitcond836.not, label %polly.loop_exit548.us, label %polly.loop_header546.us

polly.loop_exit548.us:                            ; preds = %polly.loop_header546.us, %polly.loop_header538.us
  %polly.indvar_next543.us = add nuw nsw i64 %polly.indvar542.us, 1
  %polly.loop_cond544.us = icmp ult i64 %polly.indvar542.us, 99
  %indvars.iv.next834 = add i64 %indvars.iv833, 1
  br i1 %polly.loop_cond544.us, label %polly.loop_header538.us, label %polly.loop_exit540.loopexit.us

polly.loop_header546.preheader.us:                ; preds = %polly.loop_header538.us
  %187 = mul i64 %180, 8000
  %188 = add i64 %187, %179
  %scevgep556.us = getelementptr i8, i8* %call2, i64 %188
  %scevgep556557.us = bitcast i8* %scevgep556.us to double*
  %_p_scalar_558.us = load double, double* %scevgep556557.us, align 8, !alias.scope !85, !noalias !89
  %scevgep562.us = getelementptr i8, i8* %call1, i64 %188
  %scevgep562563.us = bitcast i8* %scevgep562.us to double*
  %_p_scalar_564.us = load double, double* %scevgep562563.us, align 8, !alias.scope !84, !noalias !88
  %189 = mul i64 %180, 9600
  br label %polly.loop_header546.us

polly.loop_exit540.loopexit.us:                   ; preds = %polly.loop_exit548.us
  %polly.indvar_next535.us = add nuw nsw i64 %polly.indvar534.us, 1
  %exitcond840.not = icmp eq i64 %polly.indvar534.us, %166
  br i1 %exitcond840.not, label %polly.loop_exit533, label %polly.loop_header531.us

polly.loop_exit533:                               ; preds = %polly.loop_exit540.loopexit.us, %polly.loop_header525
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %indvars.iv.next827 = add i64 %indvars.iv826, -100
  %indvars.iv.next832 = add i64 %indvars.iv831, 100
  %exitcond841.not = icmp eq i64 %polly.indvar_next529, 12
  br i1 %exitcond841.not, label %polly.loop_exit527, label %polly.loop_header525

polly.loop_header694:                             ; preds = %entry, %polly.loop_exit702
  %indvars.iv870 = phi i64 [ %indvars.iv.next871, %polly.loop_exit702 ], [ 0, %entry ]
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %entry ]
  %smin872 = call i64 @llvm.smin.i64(i64 %indvars.iv870, i64 -1168)
  %190 = shl nsw i64 %polly.indvar697, 5
  %191 = add nsw i64 %smin872, 1199
  br label %polly.loop_header700

polly.loop_exit702:                               ; preds = %polly.loop_exit708
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %indvars.iv.next871 = add nsw i64 %indvars.iv870, -32
  %exitcond875.not = icmp eq i64 %polly.indvar_next698, 38
  br i1 %exitcond875.not, label %polly.loop_header721, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_exit708, %polly.loop_header694
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %192 = mul nsw i64 %polly.indvar703, -32
  %smin910 = call i64 @llvm.smin.i64(i64 %192, i64 -1168)
  %193 = add nsw i64 %smin910, 1200
  %smin868 = call i64 @llvm.smin.i64(i64 %indvars.iv866, i64 -1168)
  %194 = shl nsw i64 %polly.indvar703, 5
  %195 = add nsw i64 %smin868, 1199
  br label %polly.loop_header706

polly.loop_exit708:                               ; preds = %polly.loop_exit714
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %indvars.iv.next867 = add nsw i64 %indvars.iv866, -32
  %exitcond874.not = icmp eq i64 %polly.indvar_next704, 38
  br i1 %exitcond874.not, label %polly.loop_exit702, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_exit714, %polly.loop_header700
  %polly.indvar709 = phi i64 [ 0, %polly.loop_header700 ], [ %polly.indvar_next710, %polly.loop_exit714 ]
  %196 = add nuw nsw i64 %polly.indvar709, %190
  %197 = trunc i64 %196 to i32
  %198 = mul nuw nsw i64 %196, 9600
  %min.iters.check = icmp eq i64 %193, 0
  br i1 %min.iters.check, label %polly.loop_header712, label %vector.ph911

vector.ph911:                                     ; preds = %polly.loop_header706
  %broadcast.splatinsert918 = insertelement <4 x i64> poison, i64 %194, i32 0
  %broadcast.splat919 = shufflevector <4 x i64> %broadcast.splatinsert918, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert920 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat921 = shufflevector <4 x i32> %broadcast.splatinsert920, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body909

vector.body909:                                   ; preds = %vector.body909, %vector.ph911
  %index912 = phi i64 [ 0, %vector.ph911 ], [ %index.next913, %vector.body909 ]
  %vec.ind916 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph911 ], [ %vec.ind.next917, %vector.body909 ]
  %199 = add nuw nsw <4 x i64> %vec.ind916, %broadcast.splat919
  %200 = trunc <4 x i64> %199 to <4 x i32>
  %201 = mul <4 x i32> %broadcast.splat921, %200
  %202 = add <4 x i32> %201, <i32 3, i32 3, i32 3, i32 3>
  %203 = urem <4 x i32> %202, <i32 1200, i32 1200, i32 1200, i32 1200>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %206 = extractelement <4 x i64> %199, i32 0
  %207 = shl i64 %206, 3
  %208 = add nuw nsw i64 %207, %198
  %209 = getelementptr i8, i8* %call, i64 %208
  %210 = bitcast i8* %209 to <4 x double>*
  store <4 x double> %205, <4 x double>* %210, align 8, !alias.scope !90, !noalias !92
  %index.next913 = add i64 %index912, 4
  %vec.ind.next917 = add <4 x i64> %vec.ind916, <i64 4, i64 4, i64 4, i64 4>
  %211 = icmp eq i64 %index.next913, %193
  br i1 %211, label %polly.loop_exit714, label %vector.body909, !llvm.loop !95

polly.loop_exit714:                               ; preds = %vector.body909, %polly.loop_header712
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %exitcond873.not = icmp eq i64 %polly.indvar709, %191
  br i1 %exitcond873.not, label %polly.loop_exit708, label %polly.loop_header706

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
  store double %p_div33.i, double* %scevgep718719, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond869.not = icmp eq i64 %polly.indvar715, %195
  br i1 %exitcond869.not, label %polly.loop_exit714, label %polly.loop_header712, !llvm.loop !96

polly.loop_header721:                             ; preds = %polly.loop_exit702, %polly.loop_exit729
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %smin862 = call i64 @llvm.smin.i64(i64 %indvars.iv860, i64 -1168)
  %219 = shl nsw i64 %polly.indvar724, 5
  %220 = add nsw i64 %smin862, 1199
  br label %polly.loop_header727

polly.loop_exit729:                               ; preds = %polly.loop_exit735
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %indvars.iv.next861 = add nsw i64 %indvars.iv860, -32
  %exitcond865.not = icmp eq i64 %polly.indvar_next725, 38
  br i1 %exitcond865.not, label %polly.loop_header747, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_exit735, %polly.loop_header721
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %221 = mul nsw i64 %polly.indvar730, -32
  %smin925 = call i64 @llvm.smin.i64(i64 %221, i64 -968)
  %222 = add nsw i64 %smin925, 1000
  %smin858 = call i64 @llvm.smin.i64(i64 %indvars.iv856, i64 -968)
  %223 = shl nsw i64 %polly.indvar730, 5
  %224 = add nsw i64 %smin858, 999
  br label %polly.loop_header733

polly.loop_exit735:                               ; preds = %polly.loop_exit741
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %indvars.iv.next857 = add nsw i64 %indvars.iv856, -32
  %exitcond864.not = icmp eq i64 %polly.indvar_next731, 32
  br i1 %exitcond864.not, label %polly.loop_exit729, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_exit741, %polly.loop_header727
  %polly.indvar736 = phi i64 [ 0, %polly.loop_header727 ], [ %polly.indvar_next737, %polly.loop_exit741 ]
  %225 = add nuw nsw i64 %polly.indvar736, %219
  %226 = trunc i64 %225 to i32
  %227 = mul nuw nsw i64 %225, 8000
  %min.iters.check926 = icmp eq i64 %222, 0
  br i1 %min.iters.check926, label %polly.loop_header739, label %vector.ph927

vector.ph927:                                     ; preds = %polly.loop_header733
  %broadcast.splatinsert936 = insertelement <4 x i64> poison, i64 %223, i32 0
  %broadcast.splat937 = shufflevector <4 x i64> %broadcast.splatinsert936, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert938 = insertelement <4 x i32> poison, i32 %226, i32 0
  %broadcast.splat939 = shufflevector <4 x i32> %broadcast.splatinsert938, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body924

vector.body924:                                   ; preds = %vector.body924, %vector.ph927
  %index930 = phi i64 [ 0, %vector.ph927 ], [ %index.next931, %vector.body924 ]
  %vec.ind934 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph927 ], [ %vec.ind.next935, %vector.body924 ]
  %228 = add nuw nsw <4 x i64> %vec.ind934, %broadcast.splat937
  %229 = trunc <4 x i64> %228 to <4 x i32>
  %230 = mul <4 x i32> %broadcast.splat939, %229
  %231 = add <4 x i32> %230, <i32 2, i32 2, i32 2, i32 2>
  %232 = urem <4 x i32> %231, <i32 1000, i32 1000, i32 1000, i32 1000>
  %233 = sitofp <4 x i32> %232 to <4 x double>
  %234 = fmul fast <4 x double> %233, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %235 = extractelement <4 x i64> %228, i32 0
  %236 = shl i64 %235, 3
  %237 = add nuw nsw i64 %236, %227
  %238 = getelementptr i8, i8* %call2, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %234, <4 x double>* %239, align 8, !alias.scope !94, !noalias !97
  %index.next931 = add i64 %index930, 4
  %vec.ind.next935 = add <4 x i64> %vec.ind934, <i64 4, i64 4, i64 4, i64 4>
  %240 = icmp eq i64 %index.next931, %222
  br i1 %240, label %polly.loop_exit741, label %vector.body924, !llvm.loop !98

polly.loop_exit741:                               ; preds = %vector.body924, %polly.loop_header739
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %exitcond863.not = icmp eq i64 %polly.indvar736, %220
  br i1 %exitcond863.not, label %polly.loop_exit735, label %polly.loop_header733

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
  store double %p_div12.i, double* %scevgep745746, align 8, !alias.scope !94, !noalias !97
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %exitcond859.not = icmp eq i64 %polly.indvar742, %224
  br i1 %exitcond859.not, label %polly.loop_exit741, label %polly.loop_header739, !llvm.loop !99

polly.loop_header747:                             ; preds = %polly.loop_exit729, %polly.loop_exit755
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %smin852 = call i64 @llvm.smin.i64(i64 %indvars.iv850, i64 -1168)
  %248 = shl nsw i64 %polly.indvar750, 5
  %249 = add nsw i64 %smin852, 1199
  br label %polly.loop_header753

polly.loop_exit755:                               ; preds = %polly.loop_exit761
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, -32
  %exitcond855.not = icmp eq i64 %polly.indvar_next751, 38
  br i1 %exitcond855.not, label %init_array.exit, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_exit761, %polly.loop_header747
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %250 = mul nsw i64 %polly.indvar756, -32
  %smin943 = call i64 @llvm.smin.i64(i64 %250, i64 -968)
  %251 = add nsw i64 %smin943, 1000
  %smin848 = call i64 @llvm.smin.i64(i64 %indvars.iv846, i64 -968)
  %252 = shl nsw i64 %polly.indvar756, 5
  %253 = add nsw i64 %smin848, 999
  br label %polly.loop_header759

polly.loop_exit761:                               ; preds = %polly.loop_exit767
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, -32
  %exitcond854.not = icmp eq i64 %polly.indvar_next757, 32
  br i1 %exitcond854.not, label %polly.loop_exit755, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_exit767, %polly.loop_header753
  %polly.indvar762 = phi i64 [ 0, %polly.loop_header753 ], [ %polly.indvar_next763, %polly.loop_exit767 ]
  %254 = add nuw nsw i64 %polly.indvar762, %248
  %255 = trunc i64 %254 to i32
  %256 = mul nuw nsw i64 %254, 8000
  %min.iters.check944 = icmp eq i64 %251, 0
  br i1 %min.iters.check944, label %polly.loop_header765, label %vector.ph945

vector.ph945:                                     ; preds = %polly.loop_header759
  %broadcast.splatinsert954 = insertelement <4 x i64> poison, i64 %252, i32 0
  %broadcast.splat955 = shufflevector <4 x i64> %broadcast.splatinsert954, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert956 = insertelement <4 x i32> poison, i32 %255, i32 0
  %broadcast.splat957 = shufflevector <4 x i32> %broadcast.splatinsert956, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph945
  %index948 = phi i64 [ 0, %vector.ph945 ], [ %index.next949, %vector.body942 ]
  %vec.ind952 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph945 ], [ %vec.ind.next953, %vector.body942 ]
  %257 = add nuw nsw <4 x i64> %vec.ind952, %broadcast.splat955
  %258 = trunc <4 x i64> %257 to <4 x i32>
  %259 = mul <4 x i32> %broadcast.splat957, %258
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 1200, i32 1200, i32 1200, i32 1200>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %264 = extractelement <4 x i64> %257, i32 0
  %265 = shl i64 %264, 3
  %266 = add nuw nsw i64 %265, %256
  %267 = getelementptr i8, i8* %call1, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %263, <4 x double>* %268, align 8, !alias.scope !93, !noalias !100
  %index.next949 = add i64 %index948, 4
  %vec.ind.next953 = add <4 x i64> %vec.ind952, <i64 4, i64 4, i64 4, i64 4>
  %269 = icmp eq i64 %index.next949, %251
  br i1 %269, label %polly.loop_exit767, label %vector.body942, !llvm.loop !101

polly.loop_exit767:                               ; preds = %vector.body942, %polly.loop_header765
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %exitcond853.not = icmp eq i64 %polly.indvar762, %249
  br i1 %exitcond853.not, label %polly.loop_exit761, label %polly.loop_header759

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
  store double %p_div.i, double* %scevgep772773, align 8, !alias.scope !93, !noalias !100
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %exitcond849.not = icmp eq i64 %polly.indvar768, %253
  br i1 %exitcond849.not, label %polly.loop_exit767, label %polly.loop_header765, !llvm.loop !102
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
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 128}
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
!44 = !{!"llvm.loop.tile.size", i32 100}
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
!70 = !{!62, !66}
!71 = !{!62, !65}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !69, !13}
!79 = !{!72, !76}
!80 = !{!72, !75}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !69, !13}
!88 = !{!81, !85}
!89 = !{!81, !84}
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
