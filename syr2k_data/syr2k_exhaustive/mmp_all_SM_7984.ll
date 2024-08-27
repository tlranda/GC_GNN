; ModuleID = 'syr2k_exhaustive/mmp_all_SM_7984.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_7984.c"
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
  %call758 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1619 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2620 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1619, %call2
  %polly.access.call2639 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2639, %call1
  %2 = or i1 %0, %1
  %polly.access.call659 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call659, %call2
  %4 = icmp ule i8* %polly.access.call2639, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call659, %call1
  %8 = icmp ule i8* %polly.access.call1619, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header732, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep915 = getelementptr i8, i8* %call2, i64 %12
  %scevgep914 = getelementptr i8, i8* %call2, i64 %11
  %scevgep913 = getelementptr i8, i8* %call1, i64 %12
  %scevgep912 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep912, %scevgep915
  %bound1 = icmp ult i8* %scevgep914, %scevgep913
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
  br i1 %exitcond18.not.i, label %vector.ph919, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph919:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert926 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat927 = shufflevector <4 x i64> %broadcast.splatinsert926, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body918

vector.body918:                                   ; preds = %vector.body918, %vector.ph919
  %index920 = phi i64 [ 0, %vector.ph919 ], [ %index.next921, %vector.body918 ]
  %vec.ind924 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph919 ], [ %vec.ind.next925, %vector.body918 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind924, %broadcast.splat927
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv7.i, i64 %index920
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next921 = add i64 %index920, 4
  %vec.ind.next925 = add <4 x i64> %vec.ind924, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next921, 1200
  br i1 %40, label %for.inc41.i, label %vector.body918, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body918
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph919, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit793
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start437, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check982 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check982, label %for.body3.i46.preheader1056, label %vector.ph983

vector.ph983:                                     ; preds = %for.body3.i46.preheader
  %n.vec985 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body981

vector.body981:                                   ; preds = %vector.body981, %vector.ph983
  %index986 = phi i64 [ 0, %vector.ph983 ], [ %index.next987, %vector.body981 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i, i64 %index986
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next987 = add i64 %index986, 4
  %46 = icmp eq i64 %index.next987, %n.vec985
  br i1 %46, label %middle.block979, label %vector.body981, !llvm.loop !18

middle.block979:                                  ; preds = %vector.body981
  %cmp.n989 = icmp eq i64 %indvars.iv21.i, %n.vec985
  br i1 %cmp.n989, label %for.inc6.i, label %for.body3.i46.preheader1056

for.body3.i46.preheader1056:                      ; preds = %for.body3.i46.preheader, %middle.block979
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec985, %middle.block979 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1056, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1056 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block979, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting438
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start266, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1005 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1005, label %for.body3.i60.preheader1055, label %vector.ph1006

vector.ph1006:                                    ; preds = %for.body3.i60.preheader
  %n.vec1008 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1004

vector.body1004:                                  ; preds = %vector.body1004, %vector.ph1006
  %index1009 = phi i64 [ 0, %vector.ph1006 ], [ %index.next1010, %vector.body1004 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i52, i64 %index1009
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1013 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1013, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1010 = add i64 %index1009, 4
  %57 = icmp eq i64 %index.next1010, %n.vec1008
  br i1 %57, label %middle.block1002, label %vector.body1004, !llvm.loop !54

middle.block1002:                                 ; preds = %vector.body1004
  %cmp.n1012 = icmp eq i64 %indvars.iv21.i52, %n.vec1008
  br i1 %cmp.n1012, label %for.inc6.i63, label %for.body3.i60.preheader1055

for.body3.i60.preheader1055:                      ; preds = %for.body3.i60.preheader, %middle.block1002
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1008, %middle.block1002 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1055, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1055 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1002, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1031 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1031, label %for.body3.i99.preheader1054, label %vector.ph1032

vector.ph1032:                                    ; preds = %for.body3.i99.preheader
  %n.vec1034 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1030

vector.body1030:                                  ; preds = %vector.body1030, %vector.ph1032
  %index1035 = phi i64 [ 0, %vector.ph1032 ], [ %index.next1036, %vector.body1030 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i91, i64 %index1035
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1039 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1039, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1036 = add i64 %index1035, 4
  %68 = icmp eq i64 %index.next1036, %n.vec1034
  br i1 %68, label %middle.block1028, label %vector.body1030, !llvm.loop !56

middle.block1028:                                 ; preds = %vector.body1030
  %cmp.n1038 = icmp eq i64 %indvars.iv21.i91, %n.vec1034
  br i1 %cmp.n1038, label %for.inc6.i102, label %for.body3.i99.preheader1054

for.body3.i99.preheader1054:                      ; preds = %for.body3.i99.preheader, %middle.block1028
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1034, %middle.block1028 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1054, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1054 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1028, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit223
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1043 = phi i64 [ %indvar.next1044, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1043, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1045 = icmp ult i64 %88, 4
  br i1 %min.iters.check1045, label %polly.loop_header191.preheader, label %vector.ph1046

vector.ph1046:                                    ; preds = %polly.loop_header
  %n.vec1048 = and i64 %88, -4
  br label %vector.body1042

vector.body1042:                                  ; preds = %vector.body1042, %vector.ph1046
  %index1049 = phi i64 [ 0, %vector.ph1046 ], [ %index.next1050, %vector.body1042 ]
  %90 = shl nuw nsw i64 %index1049, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1053 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1053, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1050 = add i64 %index1049, 4
  %95 = icmp eq i64 %index.next1050, %n.vec1048
  br i1 %95, label %middle.block1040, label %vector.body1042, !llvm.loop !68

middle.block1040:                                 ; preds = %vector.body1042
  %cmp.n1052 = icmp eq i64 %88, %n.vec1048
  br i1 %cmp.n1052, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1040
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1048, %middle.block1040 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1040
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1044 = add i64 %indvar1043, 1
  br i1 %exitcond833.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond832.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 1200
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next203, 1000
  br i1 %exitcond831.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 1000
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2620, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !66, !noalias !71
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond830.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv826 = phi i64 [ %indvars.iv.next827, %polly.loop_exit223 ], [ 1, %polly.loop_exit207 ]
  %indvars.iv822 = phi i64 [ %indvars.iv.next823, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %smin824 = call i64 @llvm.smin.i64(i64 %indvars.iv822, i64 -1072)
  %97 = shl nsw i64 %polly.indvar218, 7
  %98 = add nsw i64 %smin824, 1199
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 128
  %indvars.iv.next823 = add nsw i64 %indvars.iv822, -128
  %indvars.iv.next827 = add nuw nsw i64 %indvars.iv826, 1
  %exitcond829.not = icmp eq i64 %polly.indvar_next219, 10
  br i1 %exitcond829.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %indvars.iv817 = phi i64 [ %indvars.iv.next818, %polly.loop_exit229 ], [ %indvars.iv, %polly.loop_header215 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_header215 ]
  %99 = shl nsw i64 %polly.indvar224, 7
  %100 = sub nsw i64 %97, %99
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next818 = add nsw i64 %indvars.iv817, -128
  %exitcond828.not = icmp eq i64 %polly.indvar_next225, %indvars.iv826
  br i1 %exitcond828.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit235 ], [ %indvars.iv817, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv819, i64 127)
  %101 = add nsw i64 %polly.indvar230, %100
  %polly.loop_guard907 = icmp sgt i64 %101, -1
  %102 = add nuw nsw i64 %polly.indvar230, %97
  %103 = mul nuw nsw i64 %102, 8000
  %104 = mul nuw nsw i64 %102, 9600
  br i1 %polly.loop_guard907, label %polly.loop_header233.us, label %polly.loop_exit235

polly.loop_header233.us:                          ; preds = %polly.loop_header227, %polly.loop_exit241.loopexit.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_exit241.loopexit.us ], [ 0, %polly.loop_header227 ]
  %105 = shl nuw nsw i64 %polly.indvar236.us, 3
  %scevgep245.us = getelementptr i8, i8* %call1, i64 %105
  %polly.access.mul.Packed_MemRef_call2249.us = mul nuw nsw i64 %polly.indvar236.us, 1200
  %polly.access.add.Packed_MemRef_call2250.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249.us, %102
  %polly.access.Packed_MemRef_call2251.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.us
  %_p_scalar_252.us = load double, double* %polly.access.Packed_MemRef_call2251.us, align 8
  %scevgep258.us = getelementptr i8, i8* %scevgep245.us, i64 %103
  %scevgep258259.us = bitcast i8* %scevgep258.us to double*
  %_p_scalar_260.us = load double, double* %scevgep258259.us, align 8, !alias.scope !65, !noalias !72
  br label %polly.loop_header239.us

polly.loop_header239.us:                          ; preds = %polly.loop_header239.us, %polly.loop_header233.us
  %polly.indvar242.us = phi i64 [ 0, %polly.loop_header233.us ], [ %polly.indvar_next243.us, %polly.loop_header239.us ]
  %106 = add nuw nsw i64 %polly.indvar242.us, %99
  %107 = mul nuw nsw i64 %106, 8000
  %scevgep246.us = getelementptr i8, i8* %scevgep245.us, i64 %107
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.us = fmul fast double %_p_scalar_252.us, %_p_scalar_248.us
  %polly.access.add.Packed_MemRef_call2254.us = add nuw nsw i64 %106, %polly.access.mul.Packed_MemRef_call2249.us
  %polly.access.Packed_MemRef_call2255.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.us
  %_p_scalar_256.us = load double, double* %polly.access.Packed_MemRef_call2255.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_260.us, %_p_scalar_256.us
  %108 = shl i64 %106, 3
  %109 = add nuw nsw i64 %108, %104
  %scevgep261.us = getelementptr i8, i8* %call, i64 %109
  %scevgep261262.us = bitcast i8* %scevgep261.us to double*
  %_p_scalar_263.us = load double, double* %scevgep261262.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_263.us
  store double %p_add42.i118.us, double* %scevgep261262.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next243.us = add nuw nsw i64 %polly.indvar242.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar242.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit241.loopexit.us, label %polly.loop_header239.us

polly.loop_exit241.loopexit.us:                   ; preds = %polly.loop_header239.us
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond821.not = icmp eq i64 %polly.indvar_next237.us, 1000
  br i1 %exitcond821.not, label %polly.loop_exit235, label %polly.loop_header233.us

polly.loop_exit235:                               ; preds = %polly.loop_exit241.loopexit.us, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next820 = add nsw i64 %indvars.iv819, 1
  %exitcond825.not = icmp eq i64 %polly.indvar230, %98
  br i1 %exitcond825.not, label %polly.loop_exit229, label %polly.loop_header227

polly.start266:                                   ; preds = %kernel_syr2k.exit
  %malloccall268 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header352

polly.exiting267:                                 ; preds = %polly.loop_exit392
  tail call void @free(i8* %malloccall268)
  br label %kernel_syr2k.exit90

polly.loop_header352:                             ; preds = %polly.loop_exit360, %polly.start266
  %indvar1017 = phi i64 [ %indvar.next1018, %polly.loop_exit360 ], [ 0, %polly.start266 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 1, %polly.start266 ]
  %110 = add i64 %indvar1017, 1
  %111 = mul nuw nsw i64 %polly.indvar355, 9600
  %scevgep364 = getelementptr i8, i8* %call, i64 %111
  %min.iters.check1019 = icmp ult i64 %110, 4
  br i1 %min.iters.check1019, label %polly.loop_header358.preheader, label %vector.ph1020

vector.ph1020:                                    ; preds = %polly.loop_header352
  %n.vec1022 = and i64 %110, -4
  br label %vector.body1016

vector.body1016:                                  ; preds = %vector.body1016, %vector.ph1020
  %index1023 = phi i64 [ 0, %vector.ph1020 ], [ %index.next1024, %vector.body1016 ]
  %112 = shl nuw nsw i64 %index1023, 3
  %113 = getelementptr i8, i8* %scevgep364, i64 %112
  %114 = bitcast i8* %113 to <4 x double>*
  %wide.load1027 = load <4 x double>, <4 x double>* %114, align 8, !alias.scope !73, !noalias !75
  %115 = fmul fast <4 x double> %wide.load1027, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %116 = bitcast i8* %113 to <4 x double>*
  store <4 x double> %115, <4 x double>* %116, align 8, !alias.scope !73, !noalias !75
  %index.next1024 = add i64 %index1023, 4
  %117 = icmp eq i64 %index.next1024, %n.vec1022
  br i1 %117, label %middle.block1014, label %vector.body1016, !llvm.loop !79

middle.block1014:                                 ; preds = %vector.body1016
  %cmp.n1026 = icmp eq i64 %110, %n.vec1022
  br i1 %cmp.n1026, label %polly.loop_exit360, label %polly.loop_header358.preheader

polly.loop_header358.preheader:                   ; preds = %polly.loop_header352, %middle.block1014
  %polly.indvar361.ph = phi i64 [ 0, %polly.loop_header352 ], [ %n.vec1022, %middle.block1014 ]
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_header358, %middle.block1014
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond854.not = icmp eq i64 %polly.indvar_next356, 1200
  %indvar.next1018 = add i64 %indvar1017, 1
  br i1 %exitcond854.not, label %polly.loop_header368.preheader, label %polly.loop_header352

polly.loop_header368.preheader:                   ; preds = %polly.loop_exit360
  %Packed_MemRef_call2269 = bitcast i8* %malloccall268 to double*
  br label %polly.loop_header368

polly.loop_header358:                             ; preds = %polly.loop_header358.preheader, %polly.loop_header358
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_header358 ], [ %polly.indvar361.ph, %polly.loop_header358.preheader ]
  %118 = shl nuw nsw i64 %polly.indvar361, 3
  %scevgep365 = getelementptr i8, i8* %scevgep364, i64 %118
  %scevgep365366 = bitcast i8* %scevgep365 to double*
  %_p_scalar_367 = load double, double* %scevgep365366, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_367, 1.200000e+00
  store double %p_mul.i57, double* %scevgep365366, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next362, %polly.indvar355
  br i1 %exitcond853.not, label %polly.loop_exit360, label %polly.loop_header358, !llvm.loop !80

polly.loop_header368:                             ; preds = %polly.loop_header368.preheader, %polly.loop_exit376
  %polly.indvar371 = phi i64 [ %polly.indvar_next372, %polly.loop_exit376 ], [ 0, %polly.loop_header368.preheader ]
  %polly.access.mul.Packed_MemRef_call2269 = mul nuw nsw i64 %polly.indvar371, 1200
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_header374
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next372, 1000
  br i1 %exitcond852.not, label %polly.loop_header384, label %polly.loop_header368

polly.loop_header374:                             ; preds = %polly.loop_header374, %polly.loop_header368
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header368 ], [ %polly.indvar_next378, %polly.loop_header374 ]
  %polly.access.mul.call2381 = mul nuw nsw i64 %polly.indvar377, 1000
  %polly.access.add.call2382 = add nuw nsw i64 %polly.access.mul.call2381, %polly.indvar371
  %polly.access.call2383 = getelementptr double, double* %polly.access.cast.call2620, i64 %polly.access.add.call2382
  %polly.access.call2383.load = load double, double* %polly.access.call2383, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call2269 = add nuw nsw i64 %polly.indvar377, %polly.access.mul.Packed_MemRef_call2269
  %polly.access.Packed_MemRef_call2269 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269
  store double %polly.access.call2383.load, double* %polly.access.Packed_MemRef_call2269, align 8
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond851.not = icmp eq i64 %polly.indvar_next378, 1200
  br i1 %exitcond851.not, label %polly.loop_exit376, label %polly.loop_header374

polly.loop_header384:                             ; preds = %polly.loop_exit376, %polly.loop_exit392
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit392 ], [ 1, %polly.loop_exit376 ]
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %polly.loop_exit392 ], [ 0, %polly.loop_exit376 ]
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %polly.loop_exit392 ], [ 0, %polly.loop_exit376 ]
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit392 ], [ 0, %polly.loop_exit376 ]
  %smin845 = call i64 @llvm.smin.i64(i64 %indvars.iv843, i64 -1072)
  %119 = shl nsw i64 %polly.indvar387, 7
  %120 = add nsw i64 %smin845, 1199
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_exit398
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %indvars.iv.next835 = add nuw nsw i64 %indvars.iv834, 128
  %indvars.iv.next844 = add nsw i64 %indvars.iv843, -128
  %indvars.iv.next848 = add nuw nsw i64 %indvars.iv847, 1
  %exitcond850.not = icmp eq i64 %polly.indvar_next388, 10
  br i1 %exitcond850.not, label %polly.exiting267, label %polly.loop_header384

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.loop_header384
  %indvars.iv836 = phi i64 [ %indvars.iv.next837, %polly.loop_exit398 ], [ %indvars.iv834, %polly.loop_header384 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 0, %polly.loop_header384 ]
  %121 = shl nsw i64 %polly.indvar393, 7
  %122 = sub nsw i64 %119, %121
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_exit404
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %indvars.iv.next837 = add nsw i64 %indvars.iv836, -128
  %exitcond849.not = icmp eq i64 %polly.indvar_next394, %indvars.iv847
  br i1 %exitcond849.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header396:                             ; preds = %polly.loop_exit404, %polly.loop_header390
  %indvars.iv838 = phi i64 [ %indvars.iv.next839, %polly.loop_exit404 ], [ %indvars.iv836, %polly.loop_header390 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 0, %polly.loop_header390 ]
  %smin840 = call i64 @llvm.smin.i64(i64 %indvars.iv838, i64 127)
  %123 = add nsw i64 %polly.indvar399, %122
  %polly.loop_guard412908 = icmp sgt i64 %123, -1
  %124 = add nuw nsw i64 %polly.indvar399, %119
  %125 = mul nuw nsw i64 %124, 8000
  %126 = mul nuw nsw i64 %124, 9600
  br i1 %polly.loop_guard412908, label %polly.loop_header402.us, label %polly.loop_exit404

polly.loop_header402.us:                          ; preds = %polly.loop_header396, %polly.loop_exit411.loopexit.us
  %polly.indvar405.us = phi i64 [ %polly.indvar_next406.us, %polly.loop_exit411.loopexit.us ], [ 0, %polly.loop_header396 ]
  %127 = shl nuw nsw i64 %polly.indvar405.us, 3
  %scevgep416.us = getelementptr i8, i8* %call1, i64 %127
  %polly.access.mul.Packed_MemRef_call2269420.us = mul nuw nsw i64 %polly.indvar405.us, 1200
  %polly.access.add.Packed_MemRef_call2269421.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269420.us, %124
  %polly.access.Packed_MemRef_call2269422.us = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269421.us
  %_p_scalar_423.us = load double, double* %polly.access.Packed_MemRef_call2269422.us, align 8
  %scevgep429.us = getelementptr i8, i8* %scevgep416.us, i64 %125
  %scevgep429430.us = bitcast i8* %scevgep429.us to double*
  %_p_scalar_431.us = load double, double* %scevgep429430.us, align 8, !alias.scope !76, !noalias !82
  br label %polly.loop_header409.us

polly.loop_header409.us:                          ; preds = %polly.loop_header409.us, %polly.loop_header402.us
  %polly.indvar413.us = phi i64 [ 0, %polly.loop_header402.us ], [ %polly.indvar_next414.us, %polly.loop_header409.us ]
  %128 = add nuw nsw i64 %polly.indvar413.us, %121
  %129 = mul nuw nsw i64 %128, 8000
  %scevgep417.us = getelementptr i8, i8* %scevgep416.us, i64 %129
  %scevgep417418.us = bitcast i8* %scevgep417.us to double*
  %_p_scalar_419.us = load double, double* %scevgep417418.us, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.us = fmul fast double %_p_scalar_423.us, %_p_scalar_419.us
  %polly.access.add.Packed_MemRef_call2269425.us = add nuw nsw i64 %128, %polly.access.mul.Packed_MemRef_call2269420.us
  %polly.access.Packed_MemRef_call2269426.us = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269425.us
  %_p_scalar_427.us = load double, double* %polly.access.Packed_MemRef_call2269426.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_431.us, %_p_scalar_427.us
  %130 = shl i64 %128, 3
  %131 = add nuw nsw i64 %130, %126
  %scevgep432.us = getelementptr i8, i8* %call, i64 %131
  %scevgep432433.us = bitcast i8* %scevgep432.us to double*
  %_p_scalar_434.us = load double, double* %scevgep432433.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_434.us
  store double %p_add42.i79.us, double* %scevgep432433.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next414.us = add nuw nsw i64 %polly.indvar413.us, 1
  %exitcond841.not = icmp eq i64 %polly.indvar413.us, %smin840
  br i1 %exitcond841.not, label %polly.loop_exit411.loopexit.us, label %polly.loop_header409.us

polly.loop_exit411.loopexit.us:                   ; preds = %polly.loop_header409.us
  %polly.indvar_next406.us = add nuw nsw i64 %polly.indvar405.us, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next406.us, 1000
  br i1 %exitcond842.not, label %polly.loop_exit404, label %polly.loop_header402.us

polly.loop_exit404:                               ; preds = %polly.loop_exit411.loopexit.us, %polly.loop_header396
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %indvars.iv.next839 = add nsw i64 %indvars.iv838, 1
  %exitcond846.not = icmp eq i64 %polly.indvar399, %120
  br i1 %exitcond846.not, label %polly.loop_exit398, label %polly.loop_header396

polly.start437:                                   ; preds = %init_array.exit
  %malloccall439 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header523

polly.exiting438:                                 ; preds = %polly.loop_exit563
  tail call void @free(i8* %malloccall439)
  br label %kernel_syr2k.exit

polly.loop_header523:                             ; preds = %polly.loop_exit531, %polly.start437
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit531 ], [ 0, %polly.start437 ]
  %polly.indvar526 = phi i64 [ %polly.indvar_next527, %polly.loop_exit531 ], [ 1, %polly.start437 ]
  %132 = add i64 %indvar, 1
  %133 = mul nuw nsw i64 %polly.indvar526, 9600
  %scevgep535 = getelementptr i8, i8* %call, i64 %133
  %min.iters.check993 = icmp ult i64 %132, 4
  br i1 %min.iters.check993, label %polly.loop_header529.preheader, label %vector.ph994

vector.ph994:                                     ; preds = %polly.loop_header523
  %n.vec996 = and i64 %132, -4
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph994
  %index997 = phi i64 [ 0, %vector.ph994 ], [ %index.next998, %vector.body992 ]
  %134 = shl nuw nsw i64 %index997, 3
  %135 = getelementptr i8, i8* %scevgep535, i64 %134
  %136 = bitcast i8* %135 to <4 x double>*
  %wide.load1001 = load <4 x double>, <4 x double>* %136, align 8, !alias.scope !83, !noalias !85
  %137 = fmul fast <4 x double> %wide.load1001, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %138 = bitcast i8* %135 to <4 x double>*
  store <4 x double> %137, <4 x double>* %138, align 8, !alias.scope !83, !noalias !85
  %index.next998 = add i64 %index997, 4
  %139 = icmp eq i64 %index.next998, %n.vec996
  br i1 %139, label %middle.block990, label %vector.body992, !llvm.loop !89

middle.block990:                                  ; preds = %vector.body992
  %cmp.n1000 = icmp eq i64 %132, %n.vec996
  br i1 %cmp.n1000, label %polly.loop_exit531, label %polly.loop_header529.preheader

polly.loop_header529.preheader:                   ; preds = %polly.loop_header523, %middle.block990
  %polly.indvar532.ph = phi i64 [ 0, %polly.loop_header523 ], [ %n.vec996, %middle.block990 ]
  br label %polly.loop_header529

polly.loop_exit531:                               ; preds = %polly.loop_header529, %middle.block990
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond875.not = icmp eq i64 %polly.indvar_next527, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond875.not, label %polly.loop_header539.preheader, label %polly.loop_header523

polly.loop_header539.preheader:                   ; preds = %polly.loop_exit531
  %Packed_MemRef_call2440 = bitcast i8* %malloccall439 to double*
  br label %polly.loop_header539

polly.loop_header529:                             ; preds = %polly.loop_header529.preheader, %polly.loop_header529
  %polly.indvar532 = phi i64 [ %polly.indvar_next533, %polly.loop_header529 ], [ %polly.indvar532.ph, %polly.loop_header529.preheader ]
  %140 = shl nuw nsw i64 %polly.indvar532, 3
  %scevgep536 = getelementptr i8, i8* %scevgep535, i64 %140
  %scevgep536537 = bitcast i8* %scevgep536 to double*
  %_p_scalar_538 = load double, double* %scevgep536537, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_538, 1.200000e+00
  store double %p_mul.i, double* %scevgep536537, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next533 = add nuw nsw i64 %polly.indvar532, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next533, %polly.indvar526
  br i1 %exitcond874.not, label %polly.loop_exit531, label %polly.loop_header529, !llvm.loop !90

polly.loop_header539:                             ; preds = %polly.loop_header539.preheader, %polly.loop_exit547
  %polly.indvar542 = phi i64 [ %polly.indvar_next543, %polly.loop_exit547 ], [ 0, %polly.loop_header539.preheader ]
  %polly.access.mul.Packed_MemRef_call2440 = mul nuw nsw i64 %polly.indvar542, 1200
  br label %polly.loop_header545

polly.loop_exit547:                               ; preds = %polly.loop_header545
  %polly.indvar_next543 = add nuw nsw i64 %polly.indvar542, 1
  %exitcond873.not = icmp eq i64 %polly.indvar_next543, 1000
  br i1 %exitcond873.not, label %polly.loop_header555, label %polly.loop_header539

polly.loop_header545:                             ; preds = %polly.loop_header545, %polly.loop_header539
  %polly.indvar548 = phi i64 [ 0, %polly.loop_header539 ], [ %polly.indvar_next549, %polly.loop_header545 ]
  %polly.access.mul.call2552 = mul nuw nsw i64 %polly.indvar548, 1000
  %polly.access.add.call2553 = add nuw nsw i64 %polly.access.mul.call2552, %polly.indvar542
  %polly.access.call2554 = getelementptr double, double* %polly.access.cast.call2620, i64 %polly.access.add.call2553
  %polly.access.call2554.load = load double, double* %polly.access.call2554, align 8, !alias.scope !87, !noalias !91
  %polly.access.add.Packed_MemRef_call2440 = add nuw nsw i64 %polly.indvar548, %polly.access.mul.Packed_MemRef_call2440
  %polly.access.Packed_MemRef_call2440 = getelementptr double, double* %Packed_MemRef_call2440, i64 %polly.access.add.Packed_MemRef_call2440
  store double %polly.access.call2554.load, double* %polly.access.Packed_MemRef_call2440, align 8
  %polly.indvar_next549 = add nuw nsw i64 %polly.indvar548, 1
  %exitcond872.not = icmp eq i64 %polly.indvar_next549, 1200
  br i1 %exitcond872.not, label %polly.loop_exit547, label %polly.loop_header545

polly.loop_header555:                             ; preds = %polly.loop_exit547, %polly.loop_exit563
  %indvars.iv868 = phi i64 [ %indvars.iv.next869, %polly.loop_exit563 ], [ 1, %polly.loop_exit547 ]
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %polly.loop_exit563 ], [ 0, %polly.loop_exit547 ]
  %indvars.iv855 = phi i64 [ %indvars.iv.next856, %polly.loop_exit563 ], [ 0, %polly.loop_exit547 ]
  %polly.indvar558 = phi i64 [ %polly.indvar_next559, %polly.loop_exit563 ], [ 0, %polly.loop_exit547 ]
  %smin866 = call i64 @llvm.smin.i64(i64 %indvars.iv864, i64 -1072)
  %141 = shl nsw i64 %polly.indvar558, 7
  %142 = add nsw i64 %smin866, 1199
  br label %polly.loop_header561

polly.loop_exit563:                               ; preds = %polly.loop_exit569
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 128
  %indvars.iv.next865 = add nsw i64 %indvars.iv864, -128
  %indvars.iv.next869 = add nuw nsw i64 %indvars.iv868, 1
  %exitcond871.not = icmp eq i64 %polly.indvar_next559, 10
  br i1 %exitcond871.not, label %polly.exiting438, label %polly.loop_header555

polly.loop_header561:                             ; preds = %polly.loop_exit569, %polly.loop_header555
  %indvars.iv857 = phi i64 [ %indvars.iv.next858, %polly.loop_exit569 ], [ %indvars.iv855, %polly.loop_header555 ]
  %polly.indvar564 = phi i64 [ %polly.indvar_next565, %polly.loop_exit569 ], [ 0, %polly.loop_header555 ]
  %143 = shl nsw i64 %polly.indvar564, 7
  %144 = sub nsw i64 %141, %143
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_exit575
  %polly.indvar_next565 = add nuw nsw i64 %polly.indvar564, 1
  %indvars.iv.next858 = add nsw i64 %indvars.iv857, -128
  %exitcond870.not = icmp eq i64 %polly.indvar_next565, %indvars.iv868
  br i1 %exitcond870.not, label %polly.loop_exit563, label %polly.loop_header561

polly.loop_header567:                             ; preds = %polly.loop_exit575, %polly.loop_header561
  %indvars.iv859 = phi i64 [ %indvars.iv.next860, %polly.loop_exit575 ], [ %indvars.iv857, %polly.loop_header561 ]
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_exit575 ], [ 0, %polly.loop_header561 ]
  %smin861 = call i64 @llvm.smin.i64(i64 %indvars.iv859, i64 127)
  %145 = add nsw i64 %polly.indvar570, %144
  %polly.loop_guard583909 = icmp sgt i64 %145, -1
  %146 = add nuw nsw i64 %polly.indvar570, %141
  %147 = mul nuw nsw i64 %146, 8000
  %148 = mul nuw nsw i64 %146, 9600
  br i1 %polly.loop_guard583909, label %polly.loop_header573.us, label %polly.loop_exit575

polly.loop_header573.us:                          ; preds = %polly.loop_header567, %polly.loop_exit582.loopexit.us
  %polly.indvar576.us = phi i64 [ %polly.indvar_next577.us, %polly.loop_exit582.loopexit.us ], [ 0, %polly.loop_header567 ]
  %149 = shl nuw nsw i64 %polly.indvar576.us, 3
  %scevgep587.us = getelementptr i8, i8* %call1, i64 %149
  %polly.access.mul.Packed_MemRef_call2440591.us = mul nuw nsw i64 %polly.indvar576.us, 1200
  %polly.access.add.Packed_MemRef_call2440592.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2440591.us, %146
  %polly.access.Packed_MemRef_call2440593.us = getelementptr double, double* %Packed_MemRef_call2440, i64 %polly.access.add.Packed_MemRef_call2440592.us
  %_p_scalar_594.us = load double, double* %polly.access.Packed_MemRef_call2440593.us, align 8
  %scevgep600.us = getelementptr i8, i8* %scevgep587.us, i64 %147
  %scevgep600601.us = bitcast i8* %scevgep600.us to double*
  %_p_scalar_602.us = load double, double* %scevgep600601.us, align 8, !alias.scope !86, !noalias !92
  br label %polly.loop_header580.us

polly.loop_header580.us:                          ; preds = %polly.loop_header580.us, %polly.loop_header573.us
  %polly.indvar584.us = phi i64 [ 0, %polly.loop_header573.us ], [ %polly.indvar_next585.us, %polly.loop_header580.us ]
  %150 = add nuw nsw i64 %polly.indvar584.us, %143
  %151 = mul nuw nsw i64 %150, 8000
  %scevgep588.us = getelementptr i8, i8* %scevgep587.us, i64 %151
  %scevgep588589.us = bitcast i8* %scevgep588.us to double*
  %_p_scalar_590.us = load double, double* %scevgep588589.us, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.us = fmul fast double %_p_scalar_594.us, %_p_scalar_590.us
  %polly.access.add.Packed_MemRef_call2440596.us = add nuw nsw i64 %150, %polly.access.mul.Packed_MemRef_call2440591.us
  %polly.access.Packed_MemRef_call2440597.us = getelementptr double, double* %Packed_MemRef_call2440, i64 %polly.access.add.Packed_MemRef_call2440596.us
  %_p_scalar_598.us = load double, double* %polly.access.Packed_MemRef_call2440597.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_602.us, %_p_scalar_598.us
  %152 = shl i64 %150, 3
  %153 = add nuw nsw i64 %152, %148
  %scevgep603.us = getelementptr i8, i8* %call, i64 %153
  %scevgep603604.us = bitcast i8* %scevgep603.us to double*
  %_p_scalar_605.us = load double, double* %scevgep603604.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_605.us
  store double %p_add42.i.us, double* %scevgep603604.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next585.us = add nuw nsw i64 %polly.indvar584.us, 1
  %exitcond862.not = icmp eq i64 %polly.indvar584.us, %smin861
  br i1 %exitcond862.not, label %polly.loop_exit582.loopexit.us, label %polly.loop_header580.us

polly.loop_exit582.loopexit.us:                   ; preds = %polly.loop_header580.us
  %polly.indvar_next577.us = add nuw nsw i64 %polly.indvar576.us, 1
  %exitcond863.not = icmp eq i64 %polly.indvar_next577.us, 1000
  br i1 %exitcond863.not, label %polly.loop_exit575, label %polly.loop_header573.us

polly.loop_exit575:                               ; preds = %polly.loop_exit582.loopexit.us, %polly.loop_header567
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %indvars.iv.next860 = add nsw i64 %indvars.iv859, 1
  %exitcond867.not = icmp eq i64 %polly.indvar570, %142
  br i1 %exitcond867.not, label %polly.loop_exit569, label %polly.loop_header567

polly.loop_header732:                             ; preds = %entry, %polly.loop_exit740
  %indvars.iv900 = phi i64 [ %indvars.iv.next901, %polly.loop_exit740 ], [ 0, %entry ]
  %polly.indvar735 = phi i64 [ %polly.indvar_next736, %polly.loop_exit740 ], [ 0, %entry ]
  %smin902 = call i64 @llvm.smin.i64(i64 %indvars.iv900, i64 -1168)
  %154 = shl nsw i64 %polly.indvar735, 5
  %155 = add nsw i64 %smin902, 1199
  br label %polly.loop_header738

polly.loop_exit740:                               ; preds = %polly.loop_exit746
  %polly.indvar_next736 = add nuw nsw i64 %polly.indvar735, 1
  %indvars.iv.next901 = add nsw i64 %indvars.iv900, -32
  %exitcond905.not = icmp eq i64 %polly.indvar_next736, 38
  br i1 %exitcond905.not, label %polly.loop_header759, label %polly.loop_header732

polly.loop_header738:                             ; preds = %polly.loop_exit746, %polly.loop_header732
  %indvars.iv896 = phi i64 [ %indvars.iv.next897, %polly.loop_exit746 ], [ 0, %polly.loop_header732 ]
  %polly.indvar741 = phi i64 [ %polly.indvar_next742, %polly.loop_exit746 ], [ 0, %polly.loop_header732 ]
  %156 = mul nsw i64 %polly.indvar741, -32
  %smin931 = call i64 @llvm.smin.i64(i64 %156, i64 -1168)
  %157 = add nsw i64 %smin931, 1200
  %smin898 = call i64 @llvm.smin.i64(i64 %indvars.iv896, i64 -1168)
  %158 = shl nsw i64 %polly.indvar741, 5
  %159 = add nsw i64 %smin898, 1199
  br label %polly.loop_header744

polly.loop_exit746:                               ; preds = %polly.loop_exit752
  %polly.indvar_next742 = add nuw nsw i64 %polly.indvar741, 1
  %indvars.iv.next897 = add nsw i64 %indvars.iv896, -32
  %exitcond904.not = icmp eq i64 %polly.indvar_next742, 38
  br i1 %exitcond904.not, label %polly.loop_exit740, label %polly.loop_header738

polly.loop_header744:                             ; preds = %polly.loop_exit752, %polly.loop_header738
  %polly.indvar747 = phi i64 [ 0, %polly.loop_header738 ], [ %polly.indvar_next748, %polly.loop_exit752 ]
  %160 = add nuw nsw i64 %polly.indvar747, %154
  %161 = trunc i64 %160 to i32
  %162 = mul nuw nsw i64 %160, 9600
  %min.iters.check = icmp eq i64 %157, 0
  br i1 %min.iters.check, label %polly.loop_header750, label %vector.ph932

vector.ph932:                                     ; preds = %polly.loop_header744
  %broadcast.splatinsert939 = insertelement <4 x i64> poison, i64 %158, i32 0
  %broadcast.splat940 = shufflevector <4 x i64> %broadcast.splatinsert939, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert941 = insertelement <4 x i32> poison, i32 %161, i32 0
  %broadcast.splat942 = shufflevector <4 x i32> %broadcast.splatinsert941, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body930

vector.body930:                                   ; preds = %vector.body930, %vector.ph932
  %index933 = phi i64 [ 0, %vector.ph932 ], [ %index.next934, %vector.body930 ]
  %vec.ind937 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph932 ], [ %vec.ind.next938, %vector.body930 ]
  %163 = add nuw nsw <4 x i64> %vec.ind937, %broadcast.splat940
  %164 = trunc <4 x i64> %163 to <4 x i32>
  %165 = mul <4 x i32> %broadcast.splat942, %164
  %166 = add <4 x i32> %165, <i32 3, i32 3, i32 3, i32 3>
  %167 = urem <4 x i32> %166, <i32 1200, i32 1200, i32 1200, i32 1200>
  %168 = sitofp <4 x i32> %167 to <4 x double>
  %169 = fmul fast <4 x double> %168, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %170 = extractelement <4 x i64> %163, i32 0
  %171 = shl i64 %170, 3
  %172 = add nuw nsw i64 %171, %162
  %173 = getelementptr i8, i8* %call, i64 %172
  %174 = bitcast i8* %173 to <4 x double>*
  store <4 x double> %169, <4 x double>* %174, align 8, !alias.scope !93, !noalias !95
  %index.next934 = add i64 %index933, 4
  %vec.ind.next938 = add <4 x i64> %vec.ind937, <i64 4, i64 4, i64 4, i64 4>
  %175 = icmp eq i64 %index.next934, %157
  br i1 %175, label %polly.loop_exit752, label %vector.body930, !llvm.loop !98

polly.loop_exit752:                               ; preds = %vector.body930, %polly.loop_header750
  %polly.indvar_next748 = add nuw nsw i64 %polly.indvar747, 1
  %exitcond903.not = icmp eq i64 %polly.indvar747, %155
  br i1 %exitcond903.not, label %polly.loop_exit746, label %polly.loop_header744

polly.loop_header750:                             ; preds = %polly.loop_header744, %polly.loop_header750
  %polly.indvar753 = phi i64 [ %polly.indvar_next754, %polly.loop_header750 ], [ 0, %polly.loop_header744 ]
  %176 = add nuw nsw i64 %polly.indvar753, %158
  %177 = trunc i64 %176 to i32
  %178 = mul i32 %177, %161
  %179 = add i32 %178, 3
  %180 = urem i32 %179, 1200
  %p_conv31.i = sitofp i32 %180 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %181 = shl i64 %176, 3
  %182 = add nuw nsw i64 %181, %162
  %scevgep756 = getelementptr i8, i8* %call, i64 %182
  %scevgep756757 = bitcast i8* %scevgep756 to double*
  store double %p_div33.i, double* %scevgep756757, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %exitcond899.not = icmp eq i64 %polly.indvar753, %159
  br i1 %exitcond899.not, label %polly.loop_exit752, label %polly.loop_header750, !llvm.loop !99

polly.loop_header759:                             ; preds = %polly.loop_exit740, %polly.loop_exit767
  %indvars.iv890 = phi i64 [ %indvars.iv.next891, %polly.loop_exit767 ], [ 0, %polly.loop_exit740 ]
  %polly.indvar762 = phi i64 [ %polly.indvar_next763, %polly.loop_exit767 ], [ 0, %polly.loop_exit740 ]
  %smin892 = call i64 @llvm.smin.i64(i64 %indvars.iv890, i64 -1168)
  %183 = shl nsw i64 %polly.indvar762, 5
  %184 = add nsw i64 %smin892, 1199
  br label %polly.loop_header765

polly.loop_exit767:                               ; preds = %polly.loop_exit773
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %indvars.iv.next891 = add nsw i64 %indvars.iv890, -32
  %exitcond895.not = icmp eq i64 %polly.indvar_next763, 38
  br i1 %exitcond895.not, label %polly.loop_header785, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_exit773, %polly.loop_header759
  %indvars.iv886 = phi i64 [ %indvars.iv.next887, %polly.loop_exit773 ], [ 0, %polly.loop_header759 ]
  %polly.indvar768 = phi i64 [ %polly.indvar_next769, %polly.loop_exit773 ], [ 0, %polly.loop_header759 ]
  %185 = mul nsw i64 %polly.indvar768, -32
  %smin946 = call i64 @llvm.smin.i64(i64 %185, i64 -968)
  %186 = add nsw i64 %smin946, 1000
  %smin888 = call i64 @llvm.smin.i64(i64 %indvars.iv886, i64 -968)
  %187 = shl nsw i64 %polly.indvar768, 5
  %188 = add nsw i64 %smin888, 999
  br label %polly.loop_header771

polly.loop_exit773:                               ; preds = %polly.loop_exit779
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %indvars.iv.next887 = add nsw i64 %indvars.iv886, -32
  %exitcond894.not = icmp eq i64 %polly.indvar_next769, 32
  br i1 %exitcond894.not, label %polly.loop_exit767, label %polly.loop_header765

polly.loop_header771:                             ; preds = %polly.loop_exit779, %polly.loop_header765
  %polly.indvar774 = phi i64 [ 0, %polly.loop_header765 ], [ %polly.indvar_next775, %polly.loop_exit779 ]
  %189 = add nuw nsw i64 %polly.indvar774, %183
  %190 = trunc i64 %189 to i32
  %191 = mul nuw nsw i64 %189, 8000
  %min.iters.check947 = icmp eq i64 %186, 0
  br i1 %min.iters.check947, label %polly.loop_header777, label %vector.ph948

vector.ph948:                                     ; preds = %polly.loop_header771
  %broadcast.splatinsert957 = insertelement <4 x i64> poison, i64 %187, i32 0
  %broadcast.splat958 = shufflevector <4 x i64> %broadcast.splatinsert957, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert959 = insertelement <4 x i32> poison, i32 %190, i32 0
  %broadcast.splat960 = shufflevector <4 x i32> %broadcast.splatinsert959, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body945

vector.body945:                                   ; preds = %vector.body945, %vector.ph948
  %index951 = phi i64 [ 0, %vector.ph948 ], [ %index.next952, %vector.body945 ]
  %vec.ind955 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph948 ], [ %vec.ind.next956, %vector.body945 ]
  %192 = add nuw nsw <4 x i64> %vec.ind955, %broadcast.splat958
  %193 = trunc <4 x i64> %192 to <4 x i32>
  %194 = mul <4 x i32> %broadcast.splat960, %193
  %195 = add <4 x i32> %194, <i32 2, i32 2, i32 2, i32 2>
  %196 = urem <4 x i32> %195, <i32 1000, i32 1000, i32 1000, i32 1000>
  %197 = sitofp <4 x i32> %196 to <4 x double>
  %198 = fmul fast <4 x double> %197, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %199 = extractelement <4 x i64> %192, i32 0
  %200 = shl i64 %199, 3
  %201 = add nuw nsw i64 %200, %191
  %202 = getelementptr i8, i8* %call2, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %198, <4 x double>* %203, align 8, !alias.scope !97, !noalias !100
  %index.next952 = add i64 %index951, 4
  %vec.ind.next956 = add <4 x i64> %vec.ind955, <i64 4, i64 4, i64 4, i64 4>
  %204 = icmp eq i64 %index.next952, %186
  br i1 %204, label %polly.loop_exit779, label %vector.body945, !llvm.loop !101

polly.loop_exit779:                               ; preds = %vector.body945, %polly.loop_header777
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %exitcond893.not = icmp eq i64 %polly.indvar774, %184
  br i1 %exitcond893.not, label %polly.loop_exit773, label %polly.loop_header771

polly.loop_header777:                             ; preds = %polly.loop_header771, %polly.loop_header777
  %polly.indvar780 = phi i64 [ %polly.indvar_next781, %polly.loop_header777 ], [ 0, %polly.loop_header771 ]
  %205 = add nuw nsw i64 %polly.indvar780, %187
  %206 = trunc i64 %205 to i32
  %207 = mul i32 %206, %190
  %208 = add i32 %207, 2
  %209 = urem i32 %208, 1000
  %p_conv10.i = sitofp i32 %209 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %210 = shl i64 %205, 3
  %211 = add nuw nsw i64 %210, %191
  %scevgep783 = getelementptr i8, i8* %call2, i64 %211
  %scevgep783784 = bitcast i8* %scevgep783 to double*
  store double %p_div12.i, double* %scevgep783784, align 8, !alias.scope !97, !noalias !100
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %exitcond889.not = icmp eq i64 %polly.indvar780, %188
  br i1 %exitcond889.not, label %polly.loop_exit779, label %polly.loop_header777, !llvm.loop !102

polly.loop_header785:                             ; preds = %polly.loop_exit767, %polly.loop_exit793
  %indvars.iv880 = phi i64 [ %indvars.iv.next881, %polly.loop_exit793 ], [ 0, %polly.loop_exit767 ]
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_exit793 ], [ 0, %polly.loop_exit767 ]
  %smin882 = call i64 @llvm.smin.i64(i64 %indvars.iv880, i64 -1168)
  %212 = shl nsw i64 %polly.indvar788, 5
  %213 = add nsw i64 %smin882, 1199
  br label %polly.loop_header791

polly.loop_exit793:                               ; preds = %polly.loop_exit799
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %indvars.iv.next881 = add nsw i64 %indvars.iv880, -32
  %exitcond885.not = icmp eq i64 %polly.indvar_next789, 38
  br i1 %exitcond885.not, label %init_array.exit, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_exit799, %polly.loop_header785
  %indvars.iv876 = phi i64 [ %indvars.iv.next877, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %214 = mul nsw i64 %polly.indvar794, -32
  %smin964 = call i64 @llvm.smin.i64(i64 %214, i64 -968)
  %215 = add nsw i64 %smin964, 1000
  %smin878 = call i64 @llvm.smin.i64(i64 %indvars.iv876, i64 -968)
  %216 = shl nsw i64 %polly.indvar794, 5
  %217 = add nsw i64 %smin878, 999
  br label %polly.loop_header797

polly.loop_exit799:                               ; preds = %polly.loop_exit805
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %indvars.iv.next877 = add nsw i64 %indvars.iv876, -32
  %exitcond884.not = icmp eq i64 %polly.indvar_next795, 32
  br i1 %exitcond884.not, label %polly.loop_exit793, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_exit805, %polly.loop_header791
  %polly.indvar800 = phi i64 [ 0, %polly.loop_header791 ], [ %polly.indvar_next801, %polly.loop_exit805 ]
  %218 = add nuw nsw i64 %polly.indvar800, %212
  %219 = trunc i64 %218 to i32
  %220 = mul nuw nsw i64 %218, 8000
  %min.iters.check965 = icmp eq i64 %215, 0
  br i1 %min.iters.check965, label %polly.loop_header803, label %vector.ph966

vector.ph966:                                     ; preds = %polly.loop_header797
  %broadcast.splatinsert975 = insertelement <4 x i64> poison, i64 %216, i32 0
  %broadcast.splat976 = shufflevector <4 x i64> %broadcast.splatinsert975, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert977 = insertelement <4 x i32> poison, i32 %219, i32 0
  %broadcast.splat978 = shufflevector <4 x i32> %broadcast.splatinsert977, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body963

vector.body963:                                   ; preds = %vector.body963, %vector.ph966
  %index969 = phi i64 [ 0, %vector.ph966 ], [ %index.next970, %vector.body963 ]
  %vec.ind973 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph966 ], [ %vec.ind.next974, %vector.body963 ]
  %221 = add nuw nsw <4 x i64> %vec.ind973, %broadcast.splat976
  %222 = trunc <4 x i64> %221 to <4 x i32>
  %223 = mul <4 x i32> %broadcast.splat978, %222
  %224 = add <4 x i32> %223, <i32 1, i32 1, i32 1, i32 1>
  %225 = urem <4 x i32> %224, <i32 1200, i32 1200, i32 1200, i32 1200>
  %226 = sitofp <4 x i32> %225 to <4 x double>
  %227 = fmul fast <4 x double> %226, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %228 = extractelement <4 x i64> %221, i32 0
  %229 = shl i64 %228, 3
  %230 = add nuw nsw i64 %229, %220
  %231 = getelementptr i8, i8* %call1, i64 %230
  %232 = bitcast i8* %231 to <4 x double>*
  store <4 x double> %227, <4 x double>* %232, align 8, !alias.scope !96, !noalias !103
  %index.next970 = add i64 %index969, 4
  %vec.ind.next974 = add <4 x i64> %vec.ind973, <i64 4, i64 4, i64 4, i64 4>
  %233 = icmp eq i64 %index.next970, %215
  br i1 %233, label %polly.loop_exit805, label %vector.body963, !llvm.loop !104

polly.loop_exit805:                               ; preds = %vector.body963, %polly.loop_header803
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond883.not = icmp eq i64 %polly.indvar800, %213
  br i1 %exitcond883.not, label %polly.loop_exit799, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_header797, %polly.loop_header803
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_header803 ], [ 0, %polly.loop_header797 ]
  %234 = add nuw nsw i64 %polly.indvar806, %216
  %235 = trunc i64 %234 to i32
  %236 = mul i32 %235, %219
  %237 = add i32 %236, 1
  %238 = urem i32 %237, 1200
  %p_conv.i = sitofp i32 %238 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %239 = shl i64 %234, 3
  %240 = add nuw nsw i64 %239, %220
  %scevgep810 = getelementptr i8, i8* %call1, i64 %240
  %scevgep810811 = bitcast i8* %scevgep810 to double*
  store double %p_div.i, double* %scevgep810811, align 8, !alias.scope !96, !noalias !103
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond879.not = icmp eq i64 %polly.indvar806, %217
  br i1 %exitcond879.not, label %polly.loop_exit805, label %polly.loop_header803, !llvm.loop !105
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
!34 = !{!"llvm.loop.tile.size", i32 2048}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !25, !45, !51}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.data.pack.enable", i1 true}
!49 = !{!"llvm.data.pack.array", !21}
!50 = !{!"llvm.data.pack.allocate", !"malloc"}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !53}
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
!64 = !{!65, !66, !67}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !63, !"polly.alias.scope.Packed_MemRef_call2"}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !70, !13}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!62, !65, !67}
!72 = !{!62, !66, !67}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call2"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !70, !13}
!81 = !{!73, !76, !78}
!82 = !{!73, !77, !78}
!83 = distinct !{!83, !84, !"polly.alias.scope.MemRef_call"}
!84 = distinct !{!84, !"polly.alias.scope.domain"}
!85 = !{!86, !87, !88}
!86 = distinct !{!86, !84, !"polly.alias.scope.MemRef_call1"}
!87 = distinct !{!87, !84, !"polly.alias.scope.MemRef_call2"}
!88 = distinct !{!88, !84, !"polly.alias.scope.Packed_MemRef_call2"}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !70, !13}
!91 = !{!83, !86, !88}
!92 = !{!83, !87, !88}
!93 = distinct !{!93, !94, !"polly.alias.scope.MemRef_call"}
!94 = distinct !{!94, !"polly.alias.scope.domain"}
!95 = !{!96, !97}
!96 = distinct !{!96, !94, !"polly.alias.scope.MemRef_call1"}
!97 = distinct !{!97, !94, !"polly.alias.scope.MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !70, !13}
!100 = !{!96, !93}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !70, !13}
!103 = !{!97, !93}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !70, !13}
