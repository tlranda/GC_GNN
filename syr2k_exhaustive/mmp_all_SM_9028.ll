; ModuleID = 'syr2k_exhaustive/mmp_all_SM_9028.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_9028.c"
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
  %call718 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1579 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1579, %call2
  %polly.access.call2599 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2599, %call1
  %2 = or i1 %0, %1
  %polly.access.call619 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call619, %call2
  %4 = icmp ule i8* %polly.access.call2599, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call619, %call1
  %8 = icmp ule i8* %polly.access.call1579, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header692, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep892 = getelementptr i8, i8* %call2, i64 %12
  %scevgep891 = getelementptr i8, i8* %call2, i64 %11
  %scevgep890 = getelementptr i8, i8* %call1, i64 %12
  %scevgep889 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep889, %scevgep892
  %bound1 = icmp ult i8* %scevgep891, %scevgep890
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
  br i1 %exitcond18.not.i, label %vector.ph896, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph896:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert903 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat904 = shufflevector <4 x i64> %broadcast.splatinsert903, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body895

vector.body895:                                   ; preds = %vector.body895, %vector.ph896
  %index897 = phi i64 [ 0, %vector.ph896 ], [ %index.next898, %vector.body895 ]
  %vec.ind901 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph896 ], [ %vec.ind.next902, %vector.body895 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind901, %broadcast.splat904
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv7.i, i64 %index897
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next898 = add i64 %index897, 4
  %vec.ind.next902 = add <4 x i64> %vec.ind901, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next898, 1200
  br i1 %40, label %for.inc41.i, label %vector.body895, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body895
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph896, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit753
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header495, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check959 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check959, label %for.body3.i46.preheader1036, label %vector.ph960

vector.ph960:                                     ; preds = %for.body3.i46.preheader
  %n.vec962 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body958

vector.body958:                                   ; preds = %vector.body958, %vector.ph960
  %index963 = phi i64 [ 0, %vector.ph960 ], [ %index.next964, %vector.body958 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i, i64 %index963
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next964 = add i64 %index963, 4
  %46 = icmp eq i64 %index.next964, %n.vec962
  br i1 %46, label %middle.block956, label %vector.body958, !llvm.loop !18

middle.block956:                                  ; preds = %vector.body958
  %cmp.n966 = icmp eq i64 %indvars.iv21.i, %n.vec962
  br i1 %cmp.n966, label %for.inc6.i, label %for.body3.i46.preheader1036

for.body3.i46.preheader1036:                      ; preds = %for.body3.i46.preheader, %middle.block956
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec962, %middle.block956 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1036, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1036 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block956, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit519
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header338, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check982 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check982, label %for.body3.i60.preheader1034, label %vector.ph983

vector.ph983:                                     ; preds = %for.body3.i60.preheader
  %n.vec985 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body981

vector.body981:                                   ; preds = %vector.body981, %vector.ph983
  %index986 = phi i64 [ 0, %vector.ph983 ], [ %index.next987, %vector.body981 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i52, i64 %index986
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load990 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load990, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next987 = add i64 %index986, 4
  %57 = icmp eq i64 %index.next987, %n.vec985
  br i1 %57, label %middle.block979, label %vector.body981, !llvm.loop !54

middle.block979:                                  ; preds = %vector.body981
  %cmp.n989 = icmp eq i64 %indvars.iv21.i52, %n.vec985
  br i1 %cmp.n989, label %for.inc6.i63, label %for.body3.i60.preheader1034

for.body3.i60.preheader1034:                      ; preds = %for.body3.i60.preheader, %middle.block979
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec985, %middle.block979 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1034, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1034 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block979, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1008 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1008, label %for.body3.i99.preheader1032, label %vector.ph1009

vector.ph1009:                                    ; preds = %for.body3.i99.preheader
  %n.vec1011 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1007

vector.body1007:                                  ; preds = %vector.body1007, %vector.ph1009
  %index1012 = phi i64 [ 0, %vector.ph1009 ], [ %index.next1013, %vector.body1007 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i91, i64 %index1012
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1016 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1016, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1013 = add i64 %index1012, 4
  %68 = icmp eq i64 %index.next1013, %n.vec1011
  br i1 %68, label %middle.block1005, label %vector.body1007, !llvm.loop !56

middle.block1005:                                 ; preds = %vector.body1007
  %cmp.n1015 = icmp eq i64 %indvars.iv21.i91, %n.vec1011
  br i1 %cmp.n1015, label %for.inc6.i102, label %for.body3.i99.preheader1032

for.body3.i99.preheader1032:                      ; preds = %for.body3.i99.preheader, %middle.block1005
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1011, %middle.block1005 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1032, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1032 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1005, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1020 = phi i64 [ %indvar.next1021, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1020, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1022 = icmp ult i64 %88, 4
  br i1 %min.iters.check1022, label %polly.loop_header191.preheader, label %vector.ph1023

vector.ph1023:                                    ; preds = %polly.loop_header
  %n.vec1025 = and i64 %88, -4
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %vector.ph1023
  %index1026 = phi i64 [ 0, %vector.ph1023 ], [ %index.next1027, %vector.body1019 ]
  %90 = shl nuw nsw i64 %index1026, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1030 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1030, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1027 = add i64 %index1026, 4
  %95 = icmp eq i64 %index.next1027, %n.vec1025
  br i1 %95, label %middle.block1017, label %vector.body1019, !llvm.loop !67

middle.block1017:                                 ; preds = %vector.body1019
  %cmp.n1029 = icmp eq i64 %88, %n.vec1025
  br i1 %cmp.n1029, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1017
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1025, %middle.block1017 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1017
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond799.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1021 = add i64 %indvar1020, 1
  br i1 %exitcond799.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond798.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv791 = phi i64 [ %indvars.iv.next792, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %smin793 = call i64 @llvm.smin.i64(i64 %indvars.iv791, i64 -936)
  %97 = shl nsw i64 %polly.indvar202, 6
  %98 = add nsw i64 %smin793, 999
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next792 = add nsw i64 %indvars.iv791, -64
  %exitcond797.not = icmp eq i64 %polly.indvar_next203, 16
  br i1 %exitcond797.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = mul nuw nsw i64 %polly.indvar208, 100
  %100 = mul nsw i64 %polly.indvar208, -100
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %indvars.iv.next786 = add nsw i64 %indvars.iv785, -4
  %exitcond796.not = icmp eq i64 %polly.indvar_next209, 12
  br i1 %exitcond796.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %polly.loop_exit219 ], [ %indvars.iv785, %polly.loop_header205 ]
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ %polly.indvar208, %polly.loop_header205 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv783, i64 0)
  %101 = add i64 %smax, %indvars.iv787
  %102 = mul nuw nsw i64 %polly.indvar214, 96
  %103 = sub nsw i64 %99, %102
  %104 = icmp sgt i64 %103, 0
  %105 = select i1 %104, i64 %103, i64 0
  %106 = mul nsw i64 %polly.indvar214, -96
  %107 = icmp slt i64 %106, -1104
  %108 = select i1 %107, i64 %106, i64 -1104
  %109 = add nsw i64 %108, 1199
  %polly.loop_guard.not = icmp sgt i64 %105, %109
  br i1 %polly.loop_guard.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next784 = add nsw i64 %indvars.iv783, -96
  %indvars.iv.next788 = add nsw i64 %indvars.iv787, 96
  %exitcond795.not = icmp eq i64 %polly.indvar_next215, 13
  br i1 %exitcond795.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211, %polly.loop_exit225
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit225 ], [ 0, %polly.loop_header211 ]
  %110 = add nuw nsw i64 %polly.indvar220, %97
  %111 = shl i64 %110, 3
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_exit232
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond794.not = icmp eq i64 %polly.indvar220, %98
  br i1 %exitcond794.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header217, %polly.loop_exit232
  %indvars.iv789 = phi i64 [ %101, %polly.loop_header217 ], [ %indvars.iv.next790, %polly.loop_exit232 ]
  %polly.indvar226 = phi i64 [ %105, %polly.loop_header217 ], [ %polly.indvar_next227, %polly.loop_exit232 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv789, i64 99)
  %112 = add nuw i64 %polly.indvar226, %102
  %113 = add i64 %112, %100
  %polly.loop_guard233878 = icmp sgt i64 %113, -1
  br i1 %polly.loop_guard233878, label %polly.loop_header230.preheader, label %polly.loop_exit232

polly.loop_header230.preheader:                   ; preds = %polly.loop_header223
  %114 = mul i64 %112, 8000
  %115 = add i64 %114, %111
  %scevgep240 = getelementptr i8, i8* %call2, i64 %115
  %scevgep240241 = bitcast i8* %scevgep240 to double*
  %_p_scalar_242 = load double, double* %scevgep240241, align 8, !alias.scope !66, !noalias !70
  %scevgep246 = getelementptr i8, i8* %call1, i64 %115
  %scevgep246247 = bitcast i8* %scevgep246 to double*
  %_p_scalar_248 = load double, double* %scevgep246247, align 8, !alias.scope !65, !noalias !71
  %116 = mul i64 %112, 9600
  br label %polly.loop_header230

polly.loop_exit232:                               ; preds = %polly.loop_header230, %polly.loop_header223
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %polly.loop_cond228.not.not = icmp slt i64 %polly.indvar226, %109
  %indvars.iv.next790 = add i64 %indvars.iv789, 1
  br i1 %polly.loop_cond228.not.not, label %polly.loop_header223, label %polly.loop_exit225

polly.loop_header230:                             ; preds = %polly.loop_header230.preheader, %polly.loop_header230
  %polly.indvar234 = phi i64 [ %polly.indvar_next235, %polly.loop_header230 ], [ 0, %polly.loop_header230.preheader ]
  %117 = add nuw nsw i64 %polly.indvar234, %99
  %118 = mul nuw nsw i64 %117, 8000
  %119 = add nuw nsw i64 %118, %111
  %scevgep237 = getelementptr i8, i8* %call1, i64 %119
  %scevgep237238 = bitcast i8* %scevgep237 to double*
  %_p_scalar_239 = load double, double* %scevgep237238, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_242, %_p_scalar_239
  %scevgep243 = getelementptr i8, i8* %call2, i64 %119
  %scevgep243244 = bitcast i8* %scevgep243 to double*
  %_p_scalar_245 = load double, double* %scevgep243244, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_248, %_p_scalar_245
  %120 = shl i64 %117, 3
  %121 = add i64 %120, %116
  %scevgep249 = getelementptr i8, i8* %call, i64 %121
  %scevgep249250 = bitcast i8* %scevgep249 to double*
  %_p_scalar_251 = load double, double* %scevgep249250, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_251
  store double %p_add42.i118, double* %scevgep249250, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next235 = add nuw nsw i64 %polly.indvar234, 1
  %exitcond.not = icmp eq i64 %polly.indvar234, %smin
  br i1 %exitcond.not, label %polly.loop_exit232, label %polly.loop_header230

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar994 = phi i64 [ %indvar.next995, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %122 = add i64 %indvar994, 1
  %123 = mul nuw nsw i64 %polly.indvar341, 9600
  %scevgep350 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check996 = icmp ult i64 %122, 4
  br i1 %min.iters.check996, label %polly.loop_header344.preheader, label %vector.ph997

vector.ph997:                                     ; preds = %polly.loop_header338
  %n.vec999 = and i64 %122, -4
  br label %vector.body993

vector.body993:                                   ; preds = %vector.body993, %vector.ph997
  %index1000 = phi i64 [ 0, %vector.ph997 ], [ %index.next1001, %vector.body993 ]
  %124 = shl nuw nsw i64 %index1000, 3
  %125 = getelementptr i8, i8* %scevgep350, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1004 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !72, !noalias !74
  %127 = fmul fast <4 x double> %wide.load1004, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !72, !noalias !74
  %index.next1001 = add i64 %index1000, 4
  %129 = icmp eq i64 %index.next1001, %n.vec999
  br i1 %129, label %middle.block991, label %vector.body993, !llvm.loop !77

middle.block991:                                  ; preds = %vector.body993
  %cmp.n1003 = icmp eq i64 %122, %n.vec999
  br i1 %cmp.n1003, label %polly.loop_exit346, label %polly.loop_header344.preheader

polly.loop_header344.preheader:                   ; preds = %polly.loop_header338, %middle.block991
  %polly.indvar347.ph = phi i64 [ 0, %polly.loop_header338 ], [ %n.vec999, %middle.block991 ]
  br label %polly.loop_header344

polly.loop_exit346:                               ; preds = %polly.loop_header344, %middle.block991
  %polly.indvar_next342 = add nuw nsw i64 %polly.indvar341, 1
  %exitcond821.not = icmp eq i64 %polly.indvar_next342, 1200
  %indvar.next995 = add i64 %indvar994, 1
  br i1 %exitcond821.not, label %polly.loop_header354, label %polly.loop_header338

polly.loop_header344:                             ; preds = %polly.loop_header344.preheader, %polly.loop_header344
  %polly.indvar347 = phi i64 [ %polly.indvar_next348, %polly.loop_header344 ], [ %polly.indvar347.ph, %polly.loop_header344.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %130
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond820.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond820.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !78

polly.loop_header354:                             ; preds = %polly.loop_exit346, %polly.loop_exit362
  %indvars.iv813 = phi i64 [ %indvars.iv.next814, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %smin815 = call i64 @llvm.smin.i64(i64 %indvars.iv813, i64 -936)
  %131 = shl nsw i64 %polly.indvar357, 6
  %132 = add nsw i64 %smin815, 999
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_exit368
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %indvars.iv.next814 = add nsw i64 %indvars.iv813, -64
  %exitcond819.not = icmp eq i64 %polly.indvar_next358, 16
  br i1 %exitcond819.not, label %kernel_syr2k.exit90, label %polly.loop_header354

polly.loop_header360:                             ; preds = %polly.loop_exit368, %polly.loop_header354
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %polly.loop_exit368 ], [ 0, %polly.loop_header354 ]
  %indvars.iv800 = phi i64 [ %indvars.iv.next801, %polly.loop_exit368 ], [ 0, %polly.loop_header354 ]
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_exit368 ], [ 0, %polly.loop_header354 ]
  %133 = mul nuw nsw i64 %polly.indvar363, 100
  %134 = mul nsw i64 %polly.indvar363, -100
  br label %polly.loop_header366

polly.loop_exit368:                               ; preds = %polly.loop_exit374
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %indvars.iv.next801 = add nuw nsw i64 %indvars.iv800, 4
  %indvars.iv.next806 = add nsw i64 %indvars.iv805, -4
  %exitcond818.not = icmp eq i64 %polly.indvar_next364, 12
  br i1 %exitcond818.not, label %polly.loop_exit362, label %polly.loop_header360

polly.loop_header366:                             ; preds = %polly.loop_exit374, %polly.loop_header360
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit374 ], [ %indvars.iv805, %polly.loop_header360 ]
  %indvars.iv802 = phi i64 [ %indvars.iv.next803, %polly.loop_exit374 ], [ %indvars.iv800, %polly.loop_header360 ]
  %polly.indvar369 = phi i64 [ %polly.indvar_next370, %polly.loop_exit374 ], [ %polly.indvar363, %polly.loop_header360 ]
  %smax804 = call i64 @llvm.smax.i64(i64 %indvars.iv802, i64 0)
  %135 = add i64 %smax804, %indvars.iv807
  %136 = mul nuw nsw i64 %polly.indvar369, 96
  %137 = sub nsw i64 %133, %136
  %138 = icmp sgt i64 %137, 0
  %139 = select i1 %138, i64 %137, i64 0
  %140 = mul nsw i64 %polly.indvar369, -96
  %141 = icmp slt i64 %140, -1104
  %142 = select i1 %141, i64 %140, i64 -1104
  %143 = add nsw i64 %142, 1199
  %polly.loop_guard382.not = icmp sgt i64 %139, %143
  br i1 %polly.loop_guard382.not, label %polly.loop_exit374, label %polly.loop_header372

polly.loop_exit374:                               ; preds = %polly.loop_exit381, %polly.loop_header366
  %polly.indvar_next370 = add nuw nsw i64 %polly.indvar369, 1
  %indvars.iv.next803 = add nsw i64 %indvars.iv802, -96
  %indvars.iv.next808 = add nsw i64 %indvars.iv807, 96
  %exitcond817.not = icmp eq i64 %polly.indvar_next370, 13
  br i1 %exitcond817.not, label %polly.loop_exit368, label %polly.loop_header366

polly.loop_header372:                             ; preds = %polly.loop_header366, %polly.loop_exit381
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_exit381 ], [ 0, %polly.loop_header366 ]
  %144 = add nuw nsw i64 %polly.indvar375, %131
  %145 = shl i64 %144, 3
  br label %polly.loop_header379

polly.loop_exit381:                               ; preds = %polly.loop_exit389
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond816.not = icmp eq i64 %polly.indvar375, %132
  br i1 %exitcond816.not, label %polly.loop_exit374, label %polly.loop_header372

polly.loop_header379:                             ; preds = %polly.loop_header372, %polly.loop_exit389
  %indvars.iv809 = phi i64 [ %135, %polly.loop_header372 ], [ %indvars.iv.next810, %polly.loop_exit389 ]
  %polly.indvar383 = phi i64 [ %139, %polly.loop_header372 ], [ %polly.indvar_next384, %polly.loop_exit389 ]
  %smin811 = call i64 @llvm.smin.i64(i64 %indvars.iv809, i64 99)
  %146 = add nuw i64 %polly.indvar383, %136
  %147 = add i64 %146, %134
  %polly.loop_guard390879 = icmp sgt i64 %147, -1
  br i1 %polly.loop_guard390879, label %polly.loop_header387.preheader, label %polly.loop_exit389

polly.loop_header387.preheader:                   ; preds = %polly.loop_header379
  %148 = mul i64 %146, 8000
  %149 = add i64 %148, %145
  %scevgep397 = getelementptr i8, i8* %call2, i64 %149
  %scevgep397398 = bitcast i8* %scevgep397 to double*
  %_p_scalar_399 = load double, double* %scevgep397398, align 8, !alias.scope !76, !noalias !79
  %scevgep403 = getelementptr i8, i8* %call1, i64 %149
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !75, !noalias !80
  %150 = mul i64 %146, 9600
  br label %polly.loop_header387

polly.loop_exit389:                               ; preds = %polly.loop_header387, %polly.loop_header379
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %polly.loop_cond385.not.not = icmp slt i64 %polly.indvar383, %143
  %indvars.iv.next810 = add i64 %indvars.iv809, 1
  br i1 %polly.loop_cond385.not.not, label %polly.loop_header379, label %polly.loop_exit381

polly.loop_header387:                             ; preds = %polly.loop_header387.preheader, %polly.loop_header387
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_header387 ], [ 0, %polly.loop_header387.preheader ]
  %151 = add nuw nsw i64 %polly.indvar391, %133
  %152 = mul nuw nsw i64 %151, 8000
  %153 = add nuw nsw i64 %152, %145
  %scevgep394 = getelementptr i8, i8* %call1, i64 %153
  %scevgep394395 = bitcast i8* %scevgep394 to double*
  %_p_scalar_396 = load double, double* %scevgep394395, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_399, %_p_scalar_396
  %scevgep400 = getelementptr i8, i8* %call2, i64 %153
  %scevgep400401 = bitcast i8* %scevgep400 to double*
  %_p_scalar_402 = load double, double* %scevgep400401, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_405, %_p_scalar_402
  %154 = shl i64 %151, 3
  %155 = add i64 %154, %150
  %scevgep406 = getelementptr i8, i8* %call, i64 %155
  %scevgep406407 = bitcast i8* %scevgep406 to double*
  %_p_scalar_408 = load double, double* %scevgep406407, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_408
  store double %p_add42.i79, double* %scevgep406407, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond812.not = icmp eq i64 %polly.indvar391, %smin811
  br i1 %exitcond812.not, label %polly.loop_exit389, label %polly.loop_header387

polly.loop_header495:                             ; preds = %init_array.exit, %polly.loop_exit503
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit503 ], [ 0, %init_array.exit ]
  %polly.indvar498 = phi i64 [ %polly.indvar_next499, %polly.loop_exit503 ], [ 1, %init_array.exit ]
  %156 = add i64 %indvar, 1
  %157 = mul nuw nsw i64 %polly.indvar498, 9600
  %scevgep507 = getelementptr i8, i8* %call, i64 %157
  %min.iters.check970 = icmp ult i64 %156, 4
  br i1 %min.iters.check970, label %polly.loop_header501.preheader, label %vector.ph971

vector.ph971:                                     ; preds = %polly.loop_header495
  %n.vec973 = and i64 %156, -4
  br label %vector.body969

vector.body969:                                   ; preds = %vector.body969, %vector.ph971
  %index974 = phi i64 [ 0, %vector.ph971 ], [ %index.next975, %vector.body969 ]
  %158 = shl nuw nsw i64 %index974, 3
  %159 = getelementptr i8, i8* %scevgep507, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load978 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !81, !noalias !83
  %161 = fmul fast <4 x double> %wide.load978, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %162 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !81, !noalias !83
  %index.next975 = add i64 %index974, 4
  %163 = icmp eq i64 %index.next975, %n.vec973
  br i1 %163, label %middle.block967, label %vector.body969, !llvm.loop !86

middle.block967:                                  ; preds = %vector.body969
  %cmp.n977 = icmp eq i64 %156, %n.vec973
  br i1 %cmp.n977, label %polly.loop_exit503, label %polly.loop_header501.preheader

polly.loop_header501.preheader:                   ; preds = %polly.loop_header495, %middle.block967
  %polly.indvar504.ph = phi i64 [ 0, %polly.loop_header495 ], [ %n.vec973, %middle.block967 ]
  br label %polly.loop_header501

polly.loop_exit503:                               ; preds = %polly.loop_header501, %middle.block967
  %polly.indvar_next499 = add nuw nsw i64 %polly.indvar498, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next499, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond843.not, label %polly.loop_header511, label %polly.loop_header495

polly.loop_header501:                             ; preds = %polly.loop_header501.preheader, %polly.loop_header501
  %polly.indvar504 = phi i64 [ %polly.indvar_next505, %polly.loop_header501 ], [ %polly.indvar504.ph, %polly.loop_header501.preheader ]
  %164 = shl nuw nsw i64 %polly.indvar504, 3
  %scevgep508 = getelementptr i8, i8* %scevgep507, i64 %164
  %scevgep508509 = bitcast i8* %scevgep508 to double*
  %_p_scalar_510 = load double, double* %scevgep508509, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_510, 1.200000e+00
  store double %p_mul.i, double* %scevgep508509, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next505 = add nuw nsw i64 %polly.indvar504, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next505, %polly.indvar498
  br i1 %exitcond842.not, label %polly.loop_exit503, label %polly.loop_header501, !llvm.loop !87

polly.loop_header511:                             ; preds = %polly.loop_exit503, %polly.loop_exit519
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit519 ], [ 0, %polly.loop_exit503 ]
  %polly.indvar514 = phi i64 [ %polly.indvar_next515, %polly.loop_exit519 ], [ 0, %polly.loop_exit503 ]
  %smin837 = call i64 @llvm.smin.i64(i64 %indvars.iv835, i64 -936)
  %165 = shl nsw i64 %polly.indvar514, 6
  %166 = add nsw i64 %smin837, 999
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_exit525
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %indvars.iv.next836 = add nsw i64 %indvars.iv835, -64
  %exitcond841.not = icmp eq i64 %polly.indvar_next515, 16
  br i1 %exitcond841.not, label %kernel_syr2k.exit, label %polly.loop_header511

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.loop_header511
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit525 ], [ 0, %polly.loop_header511 ]
  %indvars.iv822 = phi i64 [ %indvars.iv.next823, %polly.loop_exit525 ], [ 0, %polly.loop_header511 ]
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_exit525 ], [ 0, %polly.loop_header511 ]
  %167 = mul nuw nsw i64 %polly.indvar520, 100
  %168 = mul nsw i64 %polly.indvar520, -100
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_exit531
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %indvars.iv.next823 = add nuw nsw i64 %indvars.iv822, 4
  %indvars.iv.next828 = add nsw i64 %indvars.iv827, -4
  %exitcond840.not = icmp eq i64 %polly.indvar_next521, 12
  br i1 %exitcond840.not, label %polly.loop_exit519, label %polly.loop_header517

polly.loop_header523:                             ; preds = %polly.loop_exit531, %polly.loop_header517
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit531 ], [ %indvars.iv827, %polly.loop_header517 ]
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %polly.loop_exit531 ], [ %indvars.iv822, %polly.loop_header517 ]
  %polly.indvar526 = phi i64 [ %polly.indvar_next527, %polly.loop_exit531 ], [ %polly.indvar520, %polly.loop_header517 ]
  %smax826 = call i64 @llvm.smax.i64(i64 %indvars.iv824, i64 0)
  %169 = add i64 %smax826, %indvars.iv829
  %170 = mul nuw nsw i64 %polly.indvar526, 96
  %171 = sub nsw i64 %167, %170
  %172 = icmp sgt i64 %171, 0
  %173 = select i1 %172, i64 %171, i64 0
  %174 = mul nsw i64 %polly.indvar526, -96
  %175 = icmp slt i64 %174, -1104
  %176 = select i1 %175, i64 %174, i64 -1104
  %177 = add nsw i64 %176, 1199
  %polly.loop_guard539.not = icmp sgt i64 %173, %177
  br i1 %polly.loop_guard539.not, label %polly.loop_exit531, label %polly.loop_header529

polly.loop_exit531:                               ; preds = %polly.loop_exit538, %polly.loop_header523
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, -96
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, 96
  %exitcond839.not = icmp eq i64 %polly.indvar_next527, 13
  br i1 %exitcond839.not, label %polly.loop_exit525, label %polly.loop_header523

polly.loop_header529:                             ; preds = %polly.loop_header523, %polly.loop_exit538
  %polly.indvar532 = phi i64 [ %polly.indvar_next533, %polly.loop_exit538 ], [ 0, %polly.loop_header523 ]
  %178 = add nuw nsw i64 %polly.indvar532, %165
  %179 = shl i64 %178, 3
  br label %polly.loop_header536

polly.loop_exit538:                               ; preds = %polly.loop_exit546
  %polly.indvar_next533 = add nuw nsw i64 %polly.indvar532, 1
  %exitcond838.not = icmp eq i64 %polly.indvar532, %166
  br i1 %exitcond838.not, label %polly.loop_exit531, label %polly.loop_header529

polly.loop_header536:                             ; preds = %polly.loop_header529, %polly.loop_exit546
  %indvars.iv831 = phi i64 [ %169, %polly.loop_header529 ], [ %indvars.iv.next832, %polly.loop_exit546 ]
  %polly.indvar540 = phi i64 [ %173, %polly.loop_header529 ], [ %polly.indvar_next541, %polly.loop_exit546 ]
  %smin833 = call i64 @llvm.smin.i64(i64 %indvars.iv831, i64 99)
  %180 = add nuw i64 %polly.indvar540, %170
  %181 = add i64 %180, %168
  %polly.loop_guard547880 = icmp sgt i64 %181, -1
  br i1 %polly.loop_guard547880, label %polly.loop_header544.preheader, label %polly.loop_exit546

polly.loop_header544.preheader:                   ; preds = %polly.loop_header536
  %182 = mul i64 %180, 8000
  %183 = add i64 %182, %179
  %scevgep554 = getelementptr i8, i8* %call2, i64 %183
  %scevgep554555 = bitcast i8* %scevgep554 to double*
  %_p_scalar_556 = load double, double* %scevgep554555, align 8, !alias.scope !85, !noalias !88
  %scevgep560 = getelementptr i8, i8* %call1, i64 %183
  %scevgep560561 = bitcast i8* %scevgep560 to double*
  %_p_scalar_562 = load double, double* %scevgep560561, align 8, !alias.scope !84, !noalias !89
  %184 = mul i64 %180, 9600
  br label %polly.loop_header544

polly.loop_exit546:                               ; preds = %polly.loop_header544, %polly.loop_header536
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %polly.loop_cond542.not.not = icmp slt i64 %polly.indvar540, %177
  %indvars.iv.next832 = add i64 %indvars.iv831, 1
  br i1 %polly.loop_cond542.not.not, label %polly.loop_header536, label %polly.loop_exit538

polly.loop_header544:                             ; preds = %polly.loop_header544.preheader, %polly.loop_header544
  %polly.indvar548 = phi i64 [ %polly.indvar_next549, %polly.loop_header544 ], [ 0, %polly.loop_header544.preheader ]
  %185 = add nuw nsw i64 %polly.indvar548, %167
  %186 = mul nuw nsw i64 %185, 8000
  %187 = add nuw nsw i64 %186, %179
  %scevgep551 = getelementptr i8, i8* %call1, i64 %187
  %scevgep551552 = bitcast i8* %scevgep551 to double*
  %_p_scalar_553 = load double, double* %scevgep551552, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_556, %_p_scalar_553
  %scevgep557 = getelementptr i8, i8* %call2, i64 %187
  %scevgep557558 = bitcast i8* %scevgep557 to double*
  %_p_scalar_559 = load double, double* %scevgep557558, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_562, %_p_scalar_559
  %188 = shl i64 %185, 3
  %189 = add i64 %188, %184
  %scevgep563 = getelementptr i8, i8* %call, i64 %189
  %scevgep563564 = bitcast i8* %scevgep563 to double*
  %_p_scalar_565 = load double, double* %scevgep563564, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_565
  store double %p_add42.i, double* %scevgep563564, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next549 = add nuw nsw i64 %polly.indvar548, 1
  %exitcond834.not = icmp eq i64 %polly.indvar548, %smin833
  br i1 %exitcond834.not, label %polly.loop_exit546, label %polly.loop_header544

polly.loop_header692:                             ; preds = %entry, %polly.loop_exit700
  %indvars.iv868 = phi i64 [ %indvars.iv.next869, %polly.loop_exit700 ], [ 0, %entry ]
  %polly.indvar695 = phi i64 [ %polly.indvar_next696, %polly.loop_exit700 ], [ 0, %entry ]
  %smin870 = call i64 @llvm.smin.i64(i64 %indvars.iv868, i64 -1168)
  %190 = shl nsw i64 %polly.indvar695, 5
  %191 = add nsw i64 %smin870, 1199
  br label %polly.loop_header698

polly.loop_exit700:                               ; preds = %polly.loop_exit706
  %polly.indvar_next696 = add nuw nsw i64 %polly.indvar695, 1
  %indvars.iv.next869 = add nsw i64 %indvars.iv868, -32
  %exitcond873.not = icmp eq i64 %polly.indvar_next696, 38
  br i1 %exitcond873.not, label %polly.loop_header719, label %polly.loop_header692

polly.loop_header698:                             ; preds = %polly.loop_exit706, %polly.loop_header692
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %polly.loop_exit706 ], [ 0, %polly.loop_header692 ]
  %polly.indvar701 = phi i64 [ %polly.indvar_next702, %polly.loop_exit706 ], [ 0, %polly.loop_header692 ]
  %192 = mul nsw i64 %polly.indvar701, -32
  %smin908 = call i64 @llvm.smin.i64(i64 %192, i64 -1168)
  %193 = add nsw i64 %smin908, 1200
  %smin866 = call i64 @llvm.smin.i64(i64 %indvars.iv864, i64 -1168)
  %194 = shl nsw i64 %polly.indvar701, 5
  %195 = add nsw i64 %smin866, 1199
  br label %polly.loop_header704

polly.loop_exit706:                               ; preds = %polly.loop_exit712
  %polly.indvar_next702 = add nuw nsw i64 %polly.indvar701, 1
  %indvars.iv.next865 = add nsw i64 %indvars.iv864, -32
  %exitcond872.not = icmp eq i64 %polly.indvar_next702, 38
  br i1 %exitcond872.not, label %polly.loop_exit700, label %polly.loop_header698

polly.loop_header704:                             ; preds = %polly.loop_exit712, %polly.loop_header698
  %polly.indvar707 = phi i64 [ 0, %polly.loop_header698 ], [ %polly.indvar_next708, %polly.loop_exit712 ]
  %196 = add nuw nsw i64 %polly.indvar707, %190
  %197 = trunc i64 %196 to i32
  %198 = mul nuw nsw i64 %196, 9600
  %min.iters.check = icmp eq i64 %193, 0
  br i1 %min.iters.check, label %polly.loop_header710, label %vector.ph909

vector.ph909:                                     ; preds = %polly.loop_header704
  %broadcast.splatinsert916 = insertelement <4 x i64> poison, i64 %194, i32 0
  %broadcast.splat917 = shufflevector <4 x i64> %broadcast.splatinsert916, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert918 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat919 = shufflevector <4 x i32> %broadcast.splatinsert918, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body907

vector.body907:                                   ; preds = %vector.body907, %vector.ph909
  %index910 = phi i64 [ 0, %vector.ph909 ], [ %index.next911, %vector.body907 ]
  %vec.ind914 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph909 ], [ %vec.ind.next915, %vector.body907 ]
  %199 = add nuw nsw <4 x i64> %vec.ind914, %broadcast.splat917
  %200 = trunc <4 x i64> %199 to <4 x i32>
  %201 = mul <4 x i32> %broadcast.splat919, %200
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
  %index.next911 = add i64 %index910, 4
  %vec.ind.next915 = add <4 x i64> %vec.ind914, <i64 4, i64 4, i64 4, i64 4>
  %211 = icmp eq i64 %index.next911, %193
  br i1 %211, label %polly.loop_exit712, label %vector.body907, !llvm.loop !95

polly.loop_exit712:                               ; preds = %vector.body907, %polly.loop_header710
  %polly.indvar_next708 = add nuw nsw i64 %polly.indvar707, 1
  %exitcond871.not = icmp eq i64 %polly.indvar707, %191
  br i1 %exitcond871.not, label %polly.loop_exit706, label %polly.loop_header704

polly.loop_header710:                             ; preds = %polly.loop_header704, %polly.loop_header710
  %polly.indvar713 = phi i64 [ %polly.indvar_next714, %polly.loop_header710 ], [ 0, %polly.loop_header704 ]
  %212 = add nuw nsw i64 %polly.indvar713, %194
  %213 = trunc i64 %212 to i32
  %214 = mul i32 %213, %197
  %215 = add i32 %214, 3
  %216 = urem i32 %215, 1200
  %p_conv31.i = sitofp i32 %216 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %217 = shl i64 %212, 3
  %218 = add nuw nsw i64 %217, %198
  %scevgep716 = getelementptr i8, i8* %call, i64 %218
  %scevgep716717 = bitcast i8* %scevgep716 to double*
  store double %p_div33.i, double* %scevgep716717, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next714 = add nuw nsw i64 %polly.indvar713, 1
  %exitcond867.not = icmp eq i64 %polly.indvar713, %195
  br i1 %exitcond867.not, label %polly.loop_exit712, label %polly.loop_header710, !llvm.loop !96

polly.loop_header719:                             ; preds = %polly.loop_exit700, %polly.loop_exit727
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit727 ], [ 0, %polly.loop_exit700 ]
  %polly.indvar722 = phi i64 [ %polly.indvar_next723, %polly.loop_exit727 ], [ 0, %polly.loop_exit700 ]
  %smin860 = call i64 @llvm.smin.i64(i64 %indvars.iv858, i64 -1168)
  %219 = shl nsw i64 %polly.indvar722, 5
  %220 = add nsw i64 %smin860, 1199
  br label %polly.loop_header725

polly.loop_exit727:                               ; preds = %polly.loop_exit733
  %polly.indvar_next723 = add nuw nsw i64 %polly.indvar722, 1
  %indvars.iv.next859 = add nsw i64 %indvars.iv858, -32
  %exitcond863.not = icmp eq i64 %polly.indvar_next723, 38
  br i1 %exitcond863.not, label %polly.loop_header745, label %polly.loop_header719

polly.loop_header725:                             ; preds = %polly.loop_exit733, %polly.loop_header719
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit733 ], [ 0, %polly.loop_header719 ]
  %polly.indvar728 = phi i64 [ %polly.indvar_next729, %polly.loop_exit733 ], [ 0, %polly.loop_header719 ]
  %221 = mul nsw i64 %polly.indvar728, -32
  %smin923 = call i64 @llvm.smin.i64(i64 %221, i64 -968)
  %222 = add nsw i64 %smin923, 1000
  %smin856 = call i64 @llvm.smin.i64(i64 %indvars.iv854, i64 -968)
  %223 = shl nsw i64 %polly.indvar728, 5
  %224 = add nsw i64 %smin856, 999
  br label %polly.loop_header731

polly.loop_exit733:                               ; preds = %polly.loop_exit739
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %indvars.iv.next855 = add nsw i64 %indvars.iv854, -32
  %exitcond862.not = icmp eq i64 %polly.indvar_next729, 32
  br i1 %exitcond862.not, label %polly.loop_exit727, label %polly.loop_header725

polly.loop_header731:                             ; preds = %polly.loop_exit739, %polly.loop_header725
  %polly.indvar734 = phi i64 [ 0, %polly.loop_header725 ], [ %polly.indvar_next735, %polly.loop_exit739 ]
  %225 = add nuw nsw i64 %polly.indvar734, %219
  %226 = trunc i64 %225 to i32
  %227 = mul nuw nsw i64 %225, 8000
  %min.iters.check924 = icmp eq i64 %222, 0
  br i1 %min.iters.check924, label %polly.loop_header737, label %vector.ph925

vector.ph925:                                     ; preds = %polly.loop_header731
  %broadcast.splatinsert934 = insertelement <4 x i64> poison, i64 %223, i32 0
  %broadcast.splat935 = shufflevector <4 x i64> %broadcast.splatinsert934, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert936 = insertelement <4 x i32> poison, i32 %226, i32 0
  %broadcast.splat937 = shufflevector <4 x i32> %broadcast.splatinsert936, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body922

vector.body922:                                   ; preds = %vector.body922, %vector.ph925
  %index928 = phi i64 [ 0, %vector.ph925 ], [ %index.next929, %vector.body922 ]
  %vec.ind932 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph925 ], [ %vec.ind.next933, %vector.body922 ]
  %228 = add nuw nsw <4 x i64> %vec.ind932, %broadcast.splat935
  %229 = trunc <4 x i64> %228 to <4 x i32>
  %230 = mul <4 x i32> %broadcast.splat937, %229
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
  %index.next929 = add i64 %index928, 4
  %vec.ind.next933 = add <4 x i64> %vec.ind932, <i64 4, i64 4, i64 4, i64 4>
  %240 = icmp eq i64 %index.next929, %222
  br i1 %240, label %polly.loop_exit739, label %vector.body922, !llvm.loop !98

polly.loop_exit739:                               ; preds = %vector.body922, %polly.loop_header737
  %polly.indvar_next735 = add nuw nsw i64 %polly.indvar734, 1
  %exitcond861.not = icmp eq i64 %polly.indvar734, %220
  br i1 %exitcond861.not, label %polly.loop_exit733, label %polly.loop_header731

polly.loop_header737:                             ; preds = %polly.loop_header731, %polly.loop_header737
  %polly.indvar740 = phi i64 [ %polly.indvar_next741, %polly.loop_header737 ], [ 0, %polly.loop_header731 ]
  %241 = add nuw nsw i64 %polly.indvar740, %223
  %242 = trunc i64 %241 to i32
  %243 = mul i32 %242, %226
  %244 = add i32 %243, 2
  %245 = urem i32 %244, 1000
  %p_conv10.i = sitofp i32 %245 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %246 = shl i64 %241, 3
  %247 = add nuw nsw i64 %246, %227
  %scevgep743 = getelementptr i8, i8* %call2, i64 %247
  %scevgep743744 = bitcast i8* %scevgep743 to double*
  store double %p_div12.i, double* %scevgep743744, align 8, !alias.scope !94, !noalias !97
  %polly.indvar_next741 = add nuw nsw i64 %polly.indvar740, 1
  %exitcond857.not = icmp eq i64 %polly.indvar740, %224
  br i1 %exitcond857.not, label %polly.loop_exit739, label %polly.loop_header737, !llvm.loop !99

polly.loop_header745:                             ; preds = %polly.loop_exit727, %polly.loop_exit753
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %polly.loop_exit753 ], [ 0, %polly.loop_exit727 ]
  %polly.indvar748 = phi i64 [ %polly.indvar_next749, %polly.loop_exit753 ], [ 0, %polly.loop_exit727 ]
  %smin850 = call i64 @llvm.smin.i64(i64 %indvars.iv848, i64 -1168)
  %248 = shl nsw i64 %polly.indvar748, 5
  %249 = add nsw i64 %smin850, 1199
  br label %polly.loop_header751

polly.loop_exit753:                               ; preds = %polly.loop_exit759
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, -32
  %exitcond853.not = icmp eq i64 %polly.indvar_next749, 38
  br i1 %exitcond853.not, label %init_array.exit, label %polly.loop_header745

polly.loop_header751:                             ; preds = %polly.loop_exit759, %polly.loop_header745
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit759 ], [ 0, %polly.loop_header745 ]
  %polly.indvar754 = phi i64 [ %polly.indvar_next755, %polly.loop_exit759 ], [ 0, %polly.loop_header745 ]
  %250 = mul nsw i64 %polly.indvar754, -32
  %smin941 = call i64 @llvm.smin.i64(i64 %250, i64 -968)
  %251 = add nsw i64 %smin941, 1000
  %smin846 = call i64 @llvm.smin.i64(i64 %indvars.iv844, i64 -968)
  %252 = shl nsw i64 %polly.indvar754, 5
  %253 = add nsw i64 %smin846, 999
  br label %polly.loop_header757

polly.loop_exit759:                               ; preds = %polly.loop_exit765
  %polly.indvar_next755 = add nuw nsw i64 %polly.indvar754, 1
  %indvars.iv.next845 = add nsw i64 %indvars.iv844, -32
  %exitcond852.not = icmp eq i64 %polly.indvar_next755, 32
  br i1 %exitcond852.not, label %polly.loop_exit753, label %polly.loop_header751

polly.loop_header757:                             ; preds = %polly.loop_exit765, %polly.loop_header751
  %polly.indvar760 = phi i64 [ 0, %polly.loop_header751 ], [ %polly.indvar_next761, %polly.loop_exit765 ]
  %254 = add nuw nsw i64 %polly.indvar760, %248
  %255 = trunc i64 %254 to i32
  %256 = mul nuw nsw i64 %254, 8000
  %min.iters.check942 = icmp eq i64 %251, 0
  br i1 %min.iters.check942, label %polly.loop_header763, label %vector.ph943

vector.ph943:                                     ; preds = %polly.loop_header757
  %broadcast.splatinsert952 = insertelement <4 x i64> poison, i64 %252, i32 0
  %broadcast.splat953 = shufflevector <4 x i64> %broadcast.splatinsert952, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert954 = insertelement <4 x i32> poison, i32 %255, i32 0
  %broadcast.splat955 = shufflevector <4 x i32> %broadcast.splatinsert954, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body940

vector.body940:                                   ; preds = %vector.body940, %vector.ph943
  %index946 = phi i64 [ 0, %vector.ph943 ], [ %index.next947, %vector.body940 ]
  %vec.ind950 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph943 ], [ %vec.ind.next951, %vector.body940 ]
  %257 = add nuw nsw <4 x i64> %vec.ind950, %broadcast.splat953
  %258 = trunc <4 x i64> %257 to <4 x i32>
  %259 = mul <4 x i32> %broadcast.splat955, %258
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
  %index.next947 = add i64 %index946, 4
  %vec.ind.next951 = add <4 x i64> %vec.ind950, <i64 4, i64 4, i64 4, i64 4>
  %269 = icmp eq i64 %index.next947, %251
  br i1 %269, label %polly.loop_exit765, label %vector.body940, !llvm.loop !101

polly.loop_exit765:                               ; preds = %vector.body940, %polly.loop_header763
  %polly.indvar_next761 = add nuw nsw i64 %polly.indvar760, 1
  %exitcond851.not = icmp eq i64 %polly.indvar760, %249
  br i1 %exitcond851.not, label %polly.loop_exit759, label %polly.loop_header757

polly.loop_header763:                             ; preds = %polly.loop_header757, %polly.loop_header763
  %polly.indvar766 = phi i64 [ %polly.indvar_next767, %polly.loop_header763 ], [ 0, %polly.loop_header757 ]
  %270 = add nuw nsw i64 %polly.indvar766, %252
  %271 = trunc i64 %270 to i32
  %272 = mul i32 %271, %255
  %273 = add i32 %272, 1
  %274 = urem i32 %273, 1200
  %p_conv.i = sitofp i32 %274 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %275 = shl i64 %270, 3
  %276 = add nuw nsw i64 %275, %256
  %scevgep770 = getelementptr i8, i8* %call1, i64 %276
  %scevgep770771 = bitcast i8* %scevgep770 to double*
  store double %p_div.i, double* %scevgep770771, align 8, !alias.scope !93, !noalias !100
  %polly.indvar_next767 = add nuw nsw i64 %polly.indvar766, 1
  %exitcond847.not = icmp eq i64 %polly.indvar766, %253
  br i1 %exitcond847.not, label %polly.loop_exit765, label %polly.loop_header763, !llvm.loop !102
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
!24 = !{!"llvm.loop.tile.size", i32 100}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 64}
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
!44 = !{!"llvm.loop.tile.size", i32 96}
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
