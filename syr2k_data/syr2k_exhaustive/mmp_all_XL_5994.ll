; ModuleID = 'syr2k_exhaustive/mmp_all_XL_5994.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_5994.c"
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
  %call770 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1631 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2632 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1631, %call2
  %polly.access.call2651 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2651, %call1
  %2 = or i1 %0, %1
  %polly.access.call671 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call671, %call2
  %4 = icmp ule i8* %polly.access.call2651, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call671, %call1
  %8 = icmp ule i8* %polly.access.call1631, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header744, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep945 = getelementptr i8, i8* %call2, i64 %12
  %scevgep944 = getelementptr i8, i8* %call2, i64 %11
  %scevgep943 = getelementptr i8, i8* %call1, i64 %12
  %scevgep942 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep942, %scevgep945
  %bound1 = icmp ult i8* %scevgep944, %scevgep943
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
  br i1 %exitcond18.not.i, label %vector.ph949, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph949:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert956 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat957 = shufflevector <4 x i64> %broadcast.splatinsert956, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body948

vector.body948:                                   ; preds = %vector.body948, %vector.ph949
  %index950 = phi i64 [ 0, %vector.ph949 ], [ %index.next951, %vector.body948 ]
  %vec.ind954 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph949 ], [ %vec.ind.next955, %vector.body948 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind954, %broadcast.splat957
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv7.i, i64 %index950
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next951 = add i64 %index950, 4
  %vec.ind.next955 = add <4 x i64> %vec.ind954, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next951, 1200
  br i1 %40, label %for.inc41.i, label %vector.body948, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body948
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph949, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit805
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start445, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1012 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1012, label %for.body3.i46.preheader1086, label %vector.ph1013

vector.ph1013:                                    ; preds = %for.body3.i46.preheader
  %n.vec1015 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1011

vector.body1011:                                  ; preds = %vector.body1011, %vector.ph1013
  %index1016 = phi i64 [ 0, %vector.ph1013 ], [ %index.next1017, %vector.body1011 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i, i64 %index1016
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1017 = add i64 %index1016, 4
  %46 = icmp eq i64 %index.next1017, %n.vec1015
  br i1 %46, label %middle.block1009, label %vector.body1011, !llvm.loop !18

middle.block1009:                                 ; preds = %vector.body1011
  %cmp.n1019 = icmp eq i64 %indvars.iv21.i, %n.vec1015
  br i1 %cmp.n1019, label %for.inc6.i, label %for.body3.i46.preheader1086

for.body3.i46.preheader1086:                      ; preds = %for.body3.i46.preheader, %middle.block1009
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1015, %middle.block1009 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1086, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1086 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1009, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting446
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start270, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1035 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1035, label %for.body3.i60.preheader1085, label %vector.ph1036

vector.ph1036:                                    ; preds = %for.body3.i60.preheader
  %n.vec1038 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %vector.ph1036
  %index1039 = phi i64 [ 0, %vector.ph1036 ], [ %index.next1040, %vector.body1034 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i52, i64 %index1039
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1043 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1043, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1040 = add i64 %index1039, 4
  %57 = icmp eq i64 %index.next1040, %n.vec1038
  br i1 %57, label %middle.block1032, label %vector.body1034, !llvm.loop !59

middle.block1032:                                 ; preds = %vector.body1034
  %cmp.n1042 = icmp eq i64 %indvars.iv21.i52, %n.vec1038
  br i1 %cmp.n1042, label %for.inc6.i63, label %for.body3.i60.preheader1085

for.body3.i60.preheader1085:                      ; preds = %for.body3.i60.preheader, %middle.block1032
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1038, %middle.block1032 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1085, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1085 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1032, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting271
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1061 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1061, label %for.body3.i99.preheader1084, label %vector.ph1062

vector.ph1062:                                    ; preds = %for.body3.i99.preheader
  %n.vec1064 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %vector.ph1062
  %index1065 = phi i64 [ 0, %vector.ph1062 ], [ %index.next1066, %vector.body1060 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i91, i64 %index1065
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1069 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1069, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1066 = add i64 %index1065, 4
  %68 = icmp eq i64 %index.next1066, %n.vec1064
  br i1 %68, label %middle.block1058, label %vector.body1060, !llvm.loop !61

middle.block1058:                                 ; preds = %vector.body1060
  %cmp.n1068 = icmp eq i64 %indvars.iv21.i91, %n.vec1064
  br i1 %cmp.n1068, label %for.inc6.i102, label %for.body3.i99.preheader1084

for.body3.i99.preheader1084:                      ; preds = %for.body3.i99.preheader, %middle.block1058
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1064, %middle.block1058 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1084, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1084 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1058, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !63
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !65

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !66

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1073 = phi i64 [ %indvar.next1074, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1073, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1075 = icmp ult i64 %88, 4
  br i1 %min.iters.check1075, label %polly.loop_header191.preheader, label %vector.ph1076

vector.ph1076:                                    ; preds = %polly.loop_header
  %n.vec1078 = and i64 %88, -4
  br label %vector.body1072

vector.body1072:                                  ; preds = %vector.body1072, %vector.ph1076
  %index1079 = phi i64 [ 0, %vector.ph1076 ], [ %index.next1080, %vector.body1072 ]
  %90 = shl nuw nsw i64 %index1079, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1083 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1083, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1080 = add i64 %index1079, 4
  %95 = icmp eq i64 %index.next1080, %n.vec1078
  br i1 %95, label %middle.block1070, label %vector.body1072, !llvm.loop !73

middle.block1070:                                 ; preds = %vector.body1072
  %cmp.n1082 = icmp eq i64 %88, %n.vec1078
  br i1 %cmp.n1082, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1070
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1078, %middle.block1070 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1070
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1074 = add i64 %indvar1073, 1
  br i1 %exitcond859.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond858.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, 50
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next203, 20
  br i1 %exitcond857.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 1200, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %98 = shl nsw i64 %polly.indvar208, 8
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %99 = mul nsw i64 %polly.indvar208, -256
  %100 = mul nuw nsw i64 %polly.indvar208, 5
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  %indvars.iv.next844 = add nuw nsw i64 %indvars.iv843, 6
  %indvars.iv.next848 = add nsw i64 %indvars.iv847, -6
  %exitcond856.not = icmp eq i64 %polly.indvar_next209, 5
  br i1 %exitcond856.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %101 = add nuw nsw i64 %polly.indvar214, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar214, 1200
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next215, 50
  br i1 %exitcond842.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %102 = add nuw nsw i64 %polly.indvar220, %98
  %polly.access.mul.call2224 = mul nuw nsw i64 %102, 1000
  %polly.access.add.call2225 = add nuw nsw i64 %101, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !71, !noalias !76
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_exit213
  %indvars.iv849 = phi i64 [ %indvars.iv.next850, %polly.loop_exit235 ], [ %indvars.iv847, %polly.loop_exit213 ]
  %indvars.iv845 = phi i64 [ %indvars.iv.next846, %polly.loop_exit235 ], [ %indvars.iv843, %polly.loop_exit213 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ %100, %polly.loop_exit213 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv845, i64 0)
  %103 = add i64 %smax, %indvars.iv849
  %104 = mul nuw nsw i64 %polly.indvar230, 50
  %105 = sub nsw i64 %98, %104
  %106 = icmp sgt i64 %105, 0
  %107 = select i1 %106, i64 %105, i64 0
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next846 = add nsw i64 %indvars.iv845, -50
  %indvars.iv.next850 = add nsw i64 %indvars.iv849, 50
  %exitcond855.not = icmp eq i64 %polly.indvar_next231, 24
  br i1 %exitcond855.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_exit241 ]
  %108 = add nuw nsw i64 %polly.indvar236, %97
  %109 = shl i64 %108, 3
  %polly.access.mul.Packed_MemRef_call2254 = mul nuw nsw i64 %polly.indvar236, 1200
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_exit247
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond854.not = icmp eq i64 %polly.indvar_next237, 50
  br i1 %exitcond854.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_exit247, %polly.loop_header233
  %indvars.iv851 = phi i64 [ %indvars.iv.next852, %polly.loop_exit247 ], [ %103, %polly.loop_header233 ]
  %polly.indvar242 = phi i64 [ %polly.indvar_next243, %polly.loop_exit247 ], [ %107, %polly.loop_header233 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv851, i64 255)
  %110 = add nuw i64 %polly.indvar242, %104
  %111 = add i64 %110, %99
  %polly.loop_guard937 = icmp sgt i64 %111, -1
  br i1 %polly.loop_guard937, label %polly.loop_header245.preheader, label %polly.loop_exit247

polly.loop_header245.preheader:                   ; preds = %polly.loop_header239
  %polly.access.add.Packed_MemRef_call2255 = add nsw i64 %polly.access.mul.Packed_MemRef_call2254, %111
  %polly.access.Packed_MemRef_call2256 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255
  %_p_scalar_257 = load double, double* %polly.access.Packed_MemRef_call2256, align 8
  %112 = mul i64 %110, 8000
  %113 = add i64 %112, %109
  %scevgep262 = getelementptr i8, i8* %call1, i64 %113
  %scevgep262263 = bitcast i8* %scevgep262 to double*
  %_p_scalar_264 = load double, double* %scevgep262263, align 8, !alias.scope !70, !noalias !77
  %114 = mul i64 %110, 9600
  br label %polly.loop_header245

polly.loop_exit247:                               ; preds = %polly.loop_header245, %polly.loop_header239
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %polly.loop_cond244 = icmp ult i64 %polly.indvar242, 49
  %indvars.iv.next852 = add i64 %indvars.iv851, 1
  br i1 %polly.loop_cond244, label %polly.loop_header239, label %polly.loop_exit241

polly.loop_header245:                             ; preds = %polly.loop_header245.preheader, %polly.loop_header245
  %polly.indvar248 = phi i64 [ %polly.indvar_next249, %polly.loop_header245 ], [ 0, %polly.loop_header245.preheader ]
  %115 = add nuw nsw i64 %polly.indvar248, %98
  %116 = mul nuw nsw i64 %115, 8000
  %117 = add nuw nsw i64 %116, %109
  %scevgep251 = getelementptr i8, i8* %call1, i64 %117
  %scevgep251252 = bitcast i8* %scevgep251 to double*
  %_p_scalar_253 = load double, double* %scevgep251252, align 8, !alias.scope !70, !noalias !77
  %p_mul27.i112 = fmul fast double %_p_scalar_257, %_p_scalar_253
  %polly.access.add.Packed_MemRef_call2259 = add nuw nsw i64 %polly.indvar248, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259
  %_p_scalar_261 = load double, double* %polly.access.Packed_MemRef_call2260, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_264, %_p_scalar_261
  %118 = shl i64 %115, 3
  %119 = add i64 %118, %114
  %scevgep265 = getelementptr i8, i8* %call, i64 %119
  %scevgep265266 = bitcast i8* %scevgep265 to double*
  %_p_scalar_267 = load double, double* %scevgep265266, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_267
  store double %p_add42.i118, double* %scevgep265266, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next249 = add nuw nsw i64 %polly.indvar248, 1
  %exitcond853.not = icmp eq i64 %polly.indvar248, %smin
  br i1 %exitcond853.not, label %polly.loop_exit247, label %polly.loop_header245

polly.start270:                                   ; preds = %kernel_syr2k.exit
  %malloccall272 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header356

polly.exiting271:                                 ; preds = %polly.loop_exit380
  tail call void @free(i8* %malloccall272)
  br label %kernel_syr2k.exit90

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.start270
  %indvar1047 = phi i64 [ %indvar.next1048, %polly.loop_exit364 ], [ 0, %polly.start270 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 1, %polly.start270 ]
  %120 = add i64 %indvar1047, 1
  %121 = mul nuw nsw i64 %polly.indvar359, 9600
  %scevgep368 = getelementptr i8, i8* %call, i64 %121
  %min.iters.check1049 = icmp ult i64 %120, 4
  br i1 %min.iters.check1049, label %polly.loop_header362.preheader, label %vector.ph1050

vector.ph1050:                                    ; preds = %polly.loop_header356
  %n.vec1052 = and i64 %120, -4
  br label %vector.body1046

vector.body1046:                                  ; preds = %vector.body1046, %vector.ph1050
  %index1053 = phi i64 [ 0, %vector.ph1050 ], [ %index.next1054, %vector.body1046 ]
  %122 = shl nuw nsw i64 %index1053, 3
  %123 = getelementptr i8, i8* %scevgep368, i64 %122
  %124 = bitcast i8* %123 to <4 x double>*
  %wide.load1057 = load <4 x double>, <4 x double>* %124, align 8, !alias.scope !78, !noalias !80
  %125 = fmul fast <4 x double> %wide.load1057, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %126 = bitcast i8* %123 to <4 x double>*
  store <4 x double> %125, <4 x double>* %126, align 8, !alias.scope !78, !noalias !80
  %index.next1054 = add i64 %index1053, 4
  %127 = icmp eq i64 %index.next1054, %n.vec1052
  br i1 %127, label %middle.block1044, label %vector.body1046, !llvm.loop !84

middle.block1044:                                 ; preds = %vector.body1046
  %cmp.n1056 = icmp eq i64 %120, %n.vec1052
  br i1 %cmp.n1056, label %polly.loop_exit364, label %polly.loop_header362.preheader

polly.loop_header362.preheader:                   ; preds = %polly.loop_header356, %middle.block1044
  %polly.indvar365.ph = phi i64 [ 0, %polly.loop_header356 ], [ %n.vec1052, %middle.block1044 ]
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_header362, %middle.block1044
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next360, 1200
  %indvar.next1048 = add i64 %indvar1047, 1
  br i1 %exitcond882.not, label %polly.loop_header372.preheader, label %polly.loop_header356

polly.loop_header372.preheader:                   ; preds = %polly.loop_exit364
  %Packed_MemRef_call2273 = bitcast i8* %malloccall272 to double*
  br label %polly.loop_header372

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_header362
  %polly.indvar365 = phi i64 [ %polly.indvar_next366, %polly.loop_header362 ], [ %polly.indvar365.ph, %polly.loop_header362.preheader ]
  %128 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep369 = getelementptr i8, i8* %scevgep368, i64 %128
  %scevgep369370 = bitcast i8* %scevgep369 to double*
  %_p_scalar_371 = load double, double* %scevgep369370, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_371, 1.200000e+00
  store double %p_mul.i57, double* %scevgep369370, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next366, %polly.indvar359
  br i1 %exitcond881.not, label %polly.loop_exit364, label %polly.loop_header362, !llvm.loop !85

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_exit380
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_exit380 ], [ 0, %polly.loop_header372.preheader ]
  %129 = mul nuw nsw i64 %polly.indvar375, 50
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_exit402
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next376, 20
  br i1 %exitcond880.not, label %polly.exiting271, label %polly.loop_header372

polly.loop_header378:                             ; preds = %polly.loop_exit402, %polly.loop_header372
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit402 ], [ 0, %polly.loop_header372 ]
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %polly.loop_exit402 ], [ 0, %polly.loop_header372 ]
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit402 ], [ 1200, %polly.loop_header372 ]
  %polly.indvar381 = phi i64 [ %polly.indvar_next382, %polly.loop_exit402 ], [ 0, %polly.loop_header372 ]
  %130 = shl nsw i64 %polly.indvar381, 8
  br label %polly.loop_header384

polly.loop_exit386:                               ; preds = %polly.loop_exit392
  %131 = mul nsw i64 %polly.indvar381, -256
  %132 = mul nuw nsw i64 %polly.indvar381, 5
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_exit408
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %indvars.iv.next861 = add nsw i64 %indvars.iv860, -256
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 6
  %indvars.iv.next870 = add nsw i64 %indvars.iv869, -6
  %exitcond879.not = icmp eq i64 %polly.indvar_next382, 5
  br i1 %exitcond879.not, label %polly.loop_exit380, label %polly.loop_header378

polly.loop_header384:                             ; preds = %polly.loop_exit392, %polly.loop_header378
  %polly.indvar387 = phi i64 [ 0, %polly.loop_header378 ], [ %polly.indvar_next388, %polly.loop_exit392 ]
  %133 = add nuw nsw i64 %polly.indvar387, %129
  %polly.access.mul.Packed_MemRef_call2273 = mul nuw nsw i64 %polly.indvar387, 1200
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_header390
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond863.not = icmp eq i64 %polly.indvar_next388, 50
  br i1 %exitcond863.not, label %polly.loop_exit386, label %polly.loop_header384

polly.loop_header390:                             ; preds = %polly.loop_header390, %polly.loop_header384
  %polly.indvar393 = phi i64 [ 0, %polly.loop_header384 ], [ %polly.indvar_next394, %polly.loop_header390 ]
  %134 = add nuw nsw i64 %polly.indvar393, %130
  %polly.access.mul.call2397 = mul nuw nsw i64 %134, 1000
  %polly.access.add.call2398 = add nuw nsw i64 %133, %polly.access.mul.call2397
  %polly.access.call2399 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2398
  %polly.access.call2399.load = load double, double* %polly.access.call2399, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call2273 = add nuw nsw i64 %polly.indvar393, %polly.access.mul.Packed_MemRef_call2273
  %polly.access.Packed_MemRef_call2273 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273
  store double %polly.access.call2399.load, double* %polly.access.Packed_MemRef_call2273, align 8
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next394, %indvars.iv860
  br i1 %exitcond862.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header400:                             ; preds = %polly.loop_exit408, %polly.loop_exit386
  %indvars.iv871 = phi i64 [ %indvars.iv.next872, %polly.loop_exit408 ], [ %indvars.iv869, %polly.loop_exit386 ]
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %polly.loop_exit408 ], [ %indvars.iv864, %polly.loop_exit386 ]
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit408 ], [ %132, %polly.loop_exit386 ]
  %smax868 = call i64 @llvm.smax.i64(i64 %indvars.iv866, i64 0)
  %135 = add i64 %smax868, %indvars.iv871
  %136 = mul nuw nsw i64 %polly.indvar403, 50
  %137 = sub nsw i64 %130, %136
  %138 = icmp sgt i64 %137, 0
  %139 = select i1 %138, i64 %137, i64 0
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_exit414
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next867 = add nsw i64 %indvars.iv866, -50
  %indvars.iv.next872 = add nsw i64 %indvars.iv871, 50
  %exitcond878.not = icmp eq i64 %polly.indvar_next404, 24
  br i1 %exitcond878.not, label %polly.loop_exit402, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_exit414, %polly.loop_header400
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header400 ], [ %polly.indvar_next410, %polly.loop_exit414 ]
  %140 = add nuw nsw i64 %polly.indvar409, %129
  %141 = shl i64 %140, 3
  %polly.access.mul.Packed_MemRef_call2273429 = mul nuw nsw i64 %polly.indvar409, 1200
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_exit421
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next410, 50
  br i1 %exitcond877.not, label %polly.loop_exit408, label %polly.loop_header406

polly.loop_header412:                             ; preds = %polly.loop_exit421, %polly.loop_header406
  %indvars.iv873 = phi i64 [ %indvars.iv.next874, %polly.loop_exit421 ], [ %135, %polly.loop_header406 ]
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit421 ], [ %139, %polly.loop_header406 ]
  %smin875 = call i64 @llvm.smin.i64(i64 %indvars.iv873, i64 255)
  %142 = add nuw i64 %polly.indvar415, %136
  %143 = add i64 %142, %131
  %polly.loop_guard422938 = icmp sgt i64 %143, -1
  br i1 %polly.loop_guard422938, label %polly.loop_header419.preheader, label %polly.loop_exit421

polly.loop_header419.preheader:                   ; preds = %polly.loop_header412
  %polly.access.add.Packed_MemRef_call2273430 = add nsw i64 %polly.access.mul.Packed_MemRef_call2273429, %143
  %polly.access.Packed_MemRef_call2273431 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273430
  %_p_scalar_432 = load double, double* %polly.access.Packed_MemRef_call2273431, align 8
  %144 = mul i64 %142, 8000
  %145 = add i64 %144, %141
  %scevgep437 = getelementptr i8, i8* %call1, i64 %145
  %scevgep437438 = bitcast i8* %scevgep437 to double*
  %_p_scalar_439 = load double, double* %scevgep437438, align 8, !alias.scope !81, !noalias !87
  %146 = mul i64 %142, 9600
  br label %polly.loop_header419

polly.loop_exit421:                               ; preds = %polly.loop_header419, %polly.loop_header412
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %polly.loop_cond417 = icmp ult i64 %polly.indvar415, 49
  %indvars.iv.next874 = add i64 %indvars.iv873, 1
  br i1 %polly.loop_cond417, label %polly.loop_header412, label %polly.loop_exit414

polly.loop_header419:                             ; preds = %polly.loop_header419.preheader, %polly.loop_header419
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_header419 ], [ 0, %polly.loop_header419.preheader ]
  %147 = add nuw nsw i64 %polly.indvar423, %130
  %148 = mul nuw nsw i64 %147, 8000
  %149 = add nuw nsw i64 %148, %141
  %scevgep426 = getelementptr i8, i8* %call1, i64 %149
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !81, !noalias !87
  %p_mul27.i73 = fmul fast double %_p_scalar_432, %_p_scalar_428
  %polly.access.add.Packed_MemRef_call2273434 = add nuw nsw i64 %polly.indvar423, %polly.access.mul.Packed_MemRef_call2273429
  %polly.access.Packed_MemRef_call2273435 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273434
  %_p_scalar_436 = load double, double* %polly.access.Packed_MemRef_call2273435, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_439, %_p_scalar_436
  %150 = shl i64 %147, 3
  %151 = add i64 %150, %146
  %scevgep440 = getelementptr i8, i8* %call, i64 %151
  %scevgep440441 = bitcast i8* %scevgep440 to double*
  %_p_scalar_442 = load double, double* %scevgep440441, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_442
  store double %p_add42.i79, double* %scevgep440441, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %exitcond876.not = icmp eq i64 %polly.indvar423, %smin875
  br i1 %exitcond876.not, label %polly.loop_exit421, label %polly.loop_header419

polly.start445:                                   ; preds = %init_array.exit
  %malloccall447 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header531

polly.exiting446:                                 ; preds = %polly.loop_exit555
  tail call void @free(i8* %malloccall447)
  br label %kernel_syr2k.exit

polly.loop_header531:                             ; preds = %polly.loop_exit539, %polly.start445
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit539 ], [ 0, %polly.start445 ]
  %polly.indvar534 = phi i64 [ %polly.indvar_next535, %polly.loop_exit539 ], [ 1, %polly.start445 ]
  %152 = add i64 %indvar, 1
  %153 = mul nuw nsw i64 %polly.indvar534, 9600
  %scevgep543 = getelementptr i8, i8* %call, i64 %153
  %min.iters.check1023 = icmp ult i64 %152, 4
  br i1 %min.iters.check1023, label %polly.loop_header537.preheader, label %vector.ph1024

vector.ph1024:                                    ; preds = %polly.loop_header531
  %n.vec1026 = and i64 %152, -4
  br label %vector.body1022

vector.body1022:                                  ; preds = %vector.body1022, %vector.ph1024
  %index1027 = phi i64 [ 0, %vector.ph1024 ], [ %index.next1028, %vector.body1022 ]
  %154 = shl nuw nsw i64 %index1027, 3
  %155 = getelementptr i8, i8* %scevgep543, i64 %154
  %156 = bitcast i8* %155 to <4 x double>*
  %wide.load1031 = load <4 x double>, <4 x double>* %156, align 8, !alias.scope !88, !noalias !90
  %157 = fmul fast <4 x double> %wide.load1031, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %158 = bitcast i8* %155 to <4 x double>*
  store <4 x double> %157, <4 x double>* %158, align 8, !alias.scope !88, !noalias !90
  %index.next1028 = add i64 %index1027, 4
  %159 = icmp eq i64 %index.next1028, %n.vec1026
  br i1 %159, label %middle.block1020, label %vector.body1022, !llvm.loop !94

middle.block1020:                                 ; preds = %vector.body1022
  %cmp.n1030 = icmp eq i64 %152, %n.vec1026
  br i1 %cmp.n1030, label %polly.loop_exit539, label %polly.loop_header537.preheader

polly.loop_header537.preheader:                   ; preds = %polly.loop_header531, %middle.block1020
  %polly.indvar540.ph = phi i64 [ 0, %polly.loop_header531 ], [ %n.vec1026, %middle.block1020 ]
  br label %polly.loop_header537

polly.loop_exit539:                               ; preds = %polly.loop_header537, %middle.block1020
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %exitcond905.not = icmp eq i64 %polly.indvar_next535, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond905.not, label %polly.loop_header547.preheader, label %polly.loop_header531

polly.loop_header547.preheader:                   ; preds = %polly.loop_exit539
  %Packed_MemRef_call2448 = bitcast i8* %malloccall447 to double*
  br label %polly.loop_header547

polly.loop_header537:                             ; preds = %polly.loop_header537.preheader, %polly.loop_header537
  %polly.indvar540 = phi i64 [ %polly.indvar_next541, %polly.loop_header537 ], [ %polly.indvar540.ph, %polly.loop_header537.preheader ]
  %160 = shl nuw nsw i64 %polly.indvar540, 3
  %scevgep544 = getelementptr i8, i8* %scevgep543, i64 %160
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_546, 1.200000e+00
  store double %p_mul.i, double* %scevgep544545, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %exitcond904.not = icmp eq i64 %polly.indvar_next541, %polly.indvar534
  br i1 %exitcond904.not, label %polly.loop_exit539, label %polly.loop_header537, !llvm.loop !95

polly.loop_header547:                             ; preds = %polly.loop_header547.preheader, %polly.loop_exit555
  %polly.indvar550 = phi i64 [ %polly.indvar_next551, %polly.loop_exit555 ], [ 0, %polly.loop_header547.preheader ]
  %161 = mul nuw nsw i64 %polly.indvar550, 50
  br label %polly.loop_header553

polly.loop_exit555:                               ; preds = %polly.loop_exit577
  %polly.indvar_next551 = add nuw nsw i64 %polly.indvar550, 1
  %exitcond903.not = icmp eq i64 %polly.indvar_next551, 20
  br i1 %exitcond903.not, label %polly.exiting446, label %polly.loop_header547

polly.loop_header553:                             ; preds = %polly.loop_exit577, %polly.loop_header547
  %indvars.iv892 = phi i64 [ %indvars.iv.next893, %polly.loop_exit577 ], [ 0, %polly.loop_header547 ]
  %indvars.iv887 = phi i64 [ %indvars.iv.next888, %polly.loop_exit577 ], [ 0, %polly.loop_header547 ]
  %indvars.iv883 = phi i64 [ %indvars.iv.next884, %polly.loop_exit577 ], [ 1200, %polly.loop_header547 ]
  %polly.indvar556 = phi i64 [ %polly.indvar_next557, %polly.loop_exit577 ], [ 0, %polly.loop_header547 ]
  %162 = shl nsw i64 %polly.indvar556, 8
  br label %polly.loop_header559

polly.loop_exit561:                               ; preds = %polly.loop_exit567
  %163 = mul nsw i64 %polly.indvar556, -256
  %164 = mul nuw nsw i64 %polly.indvar556, 5
  br label %polly.loop_header575

polly.loop_exit577:                               ; preds = %polly.loop_exit583
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %indvars.iv.next884 = add nsw i64 %indvars.iv883, -256
  %indvars.iv.next888 = add nuw nsw i64 %indvars.iv887, 6
  %indvars.iv.next893 = add nsw i64 %indvars.iv892, -6
  %exitcond902.not = icmp eq i64 %polly.indvar_next557, 5
  br i1 %exitcond902.not, label %polly.loop_exit555, label %polly.loop_header553

polly.loop_header559:                             ; preds = %polly.loop_exit567, %polly.loop_header553
  %polly.indvar562 = phi i64 [ 0, %polly.loop_header553 ], [ %polly.indvar_next563, %polly.loop_exit567 ]
  %165 = add nuw nsw i64 %polly.indvar562, %161
  %polly.access.mul.Packed_MemRef_call2448 = mul nuw nsw i64 %polly.indvar562, 1200
  br label %polly.loop_header565

polly.loop_exit567:                               ; preds = %polly.loop_header565
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %exitcond886.not = icmp eq i64 %polly.indvar_next563, 50
  br i1 %exitcond886.not, label %polly.loop_exit561, label %polly.loop_header559

polly.loop_header565:                             ; preds = %polly.loop_header565, %polly.loop_header559
  %polly.indvar568 = phi i64 [ 0, %polly.loop_header559 ], [ %polly.indvar_next569, %polly.loop_header565 ]
  %166 = add nuw nsw i64 %polly.indvar568, %162
  %polly.access.mul.call2572 = mul nuw nsw i64 %166, 1000
  %polly.access.add.call2573 = add nuw nsw i64 %165, %polly.access.mul.call2572
  %polly.access.call2574 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2573
  %polly.access.call2574.load = load double, double* %polly.access.call2574, align 8, !alias.scope !92, !noalias !96
  %polly.access.add.Packed_MemRef_call2448 = add nuw nsw i64 %polly.indvar568, %polly.access.mul.Packed_MemRef_call2448
  %polly.access.Packed_MemRef_call2448 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448
  store double %polly.access.call2574.load, double* %polly.access.Packed_MemRef_call2448, align 8
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %exitcond885.not = icmp eq i64 %polly.indvar_next569, %indvars.iv883
  br i1 %exitcond885.not, label %polly.loop_exit567, label %polly.loop_header565

polly.loop_header575:                             ; preds = %polly.loop_exit583, %polly.loop_exit561
  %indvars.iv894 = phi i64 [ %indvars.iv.next895, %polly.loop_exit583 ], [ %indvars.iv892, %polly.loop_exit561 ]
  %indvars.iv889 = phi i64 [ %indvars.iv.next890, %polly.loop_exit583 ], [ %indvars.iv887, %polly.loop_exit561 ]
  %polly.indvar578 = phi i64 [ %polly.indvar_next579, %polly.loop_exit583 ], [ %164, %polly.loop_exit561 ]
  %smax891 = call i64 @llvm.smax.i64(i64 %indvars.iv889, i64 0)
  %167 = add i64 %smax891, %indvars.iv894
  %168 = mul nuw nsw i64 %polly.indvar578, 50
  %169 = sub nsw i64 %162, %168
  %170 = icmp sgt i64 %169, 0
  %171 = select i1 %170, i64 %169, i64 0
  br label %polly.loop_header581

polly.loop_exit583:                               ; preds = %polly.loop_exit589
  %polly.indvar_next579 = add nuw nsw i64 %polly.indvar578, 1
  %indvars.iv.next890 = add nsw i64 %indvars.iv889, -50
  %indvars.iv.next895 = add nsw i64 %indvars.iv894, 50
  %exitcond901.not = icmp eq i64 %polly.indvar_next579, 24
  br i1 %exitcond901.not, label %polly.loop_exit577, label %polly.loop_header575

polly.loop_header581:                             ; preds = %polly.loop_exit589, %polly.loop_header575
  %polly.indvar584 = phi i64 [ 0, %polly.loop_header575 ], [ %polly.indvar_next585, %polly.loop_exit589 ]
  %172 = add nuw nsw i64 %polly.indvar584, %161
  %173 = shl i64 %172, 3
  %polly.access.mul.Packed_MemRef_call2448604 = mul nuw nsw i64 %polly.indvar584, 1200
  br label %polly.loop_header587

polly.loop_exit589:                               ; preds = %polly.loop_exit596
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %exitcond900.not = icmp eq i64 %polly.indvar_next585, 50
  br i1 %exitcond900.not, label %polly.loop_exit583, label %polly.loop_header581

polly.loop_header587:                             ; preds = %polly.loop_exit596, %polly.loop_header581
  %indvars.iv896 = phi i64 [ %indvars.iv.next897, %polly.loop_exit596 ], [ %167, %polly.loop_header581 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit596 ], [ %171, %polly.loop_header581 ]
  %smin898 = call i64 @llvm.smin.i64(i64 %indvars.iv896, i64 255)
  %174 = add nuw i64 %polly.indvar590, %168
  %175 = add i64 %174, %163
  %polly.loop_guard597939 = icmp sgt i64 %175, -1
  br i1 %polly.loop_guard597939, label %polly.loop_header594.preheader, label %polly.loop_exit596

polly.loop_header594.preheader:                   ; preds = %polly.loop_header587
  %polly.access.add.Packed_MemRef_call2448605 = add nsw i64 %polly.access.mul.Packed_MemRef_call2448604, %175
  %polly.access.Packed_MemRef_call2448606 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448605
  %_p_scalar_607 = load double, double* %polly.access.Packed_MemRef_call2448606, align 8
  %176 = mul i64 %174, 8000
  %177 = add i64 %176, %173
  %scevgep612 = getelementptr i8, i8* %call1, i64 %177
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !91, !noalias !97
  %178 = mul i64 %174, 9600
  br label %polly.loop_header594

polly.loop_exit596:                               ; preds = %polly.loop_header594, %polly.loop_header587
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %polly.loop_cond592 = icmp ult i64 %polly.indvar590, 49
  %indvars.iv.next897 = add i64 %indvars.iv896, 1
  br i1 %polly.loop_cond592, label %polly.loop_header587, label %polly.loop_exit589

polly.loop_header594:                             ; preds = %polly.loop_header594.preheader, %polly.loop_header594
  %polly.indvar598 = phi i64 [ %polly.indvar_next599, %polly.loop_header594 ], [ 0, %polly.loop_header594.preheader ]
  %179 = add nuw nsw i64 %polly.indvar598, %162
  %180 = mul nuw nsw i64 %179, 8000
  %181 = add nuw nsw i64 %180, %173
  %scevgep601 = getelementptr i8, i8* %call1, i64 %181
  %scevgep601602 = bitcast i8* %scevgep601 to double*
  %_p_scalar_603 = load double, double* %scevgep601602, align 8, !alias.scope !91, !noalias !97
  %p_mul27.i = fmul fast double %_p_scalar_607, %_p_scalar_603
  %polly.access.add.Packed_MemRef_call2448609 = add nuw nsw i64 %polly.indvar598, %polly.access.mul.Packed_MemRef_call2448604
  %polly.access.Packed_MemRef_call2448610 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448609
  %_p_scalar_611 = load double, double* %polly.access.Packed_MemRef_call2448610, align 8
  %p_mul37.i = fmul fast double %_p_scalar_614, %_p_scalar_611
  %182 = shl i64 %179, 3
  %183 = add i64 %182, %178
  %scevgep615 = getelementptr i8, i8* %call, i64 %183
  %scevgep615616 = bitcast i8* %scevgep615 to double*
  %_p_scalar_617 = load double, double* %scevgep615616, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_617
  store double %p_add42.i, double* %scevgep615616, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %exitcond899.not = icmp eq i64 %polly.indvar598, %smin898
  br i1 %exitcond899.not, label %polly.loop_exit596, label %polly.loop_header594

polly.loop_header744:                             ; preds = %entry, %polly.loop_exit752
  %indvars.iv930 = phi i64 [ %indvars.iv.next931, %polly.loop_exit752 ], [ 0, %entry ]
  %polly.indvar747 = phi i64 [ %polly.indvar_next748, %polly.loop_exit752 ], [ 0, %entry ]
  %smin932 = call i64 @llvm.smin.i64(i64 %indvars.iv930, i64 -1168)
  %184 = shl nsw i64 %polly.indvar747, 5
  %185 = add nsw i64 %smin932, 1199
  br label %polly.loop_header750

polly.loop_exit752:                               ; preds = %polly.loop_exit758
  %polly.indvar_next748 = add nuw nsw i64 %polly.indvar747, 1
  %indvars.iv.next931 = add nsw i64 %indvars.iv930, -32
  %exitcond935.not = icmp eq i64 %polly.indvar_next748, 38
  br i1 %exitcond935.not, label %polly.loop_header771, label %polly.loop_header744

polly.loop_header750:                             ; preds = %polly.loop_exit758, %polly.loop_header744
  %indvars.iv926 = phi i64 [ %indvars.iv.next927, %polly.loop_exit758 ], [ 0, %polly.loop_header744 ]
  %polly.indvar753 = phi i64 [ %polly.indvar_next754, %polly.loop_exit758 ], [ 0, %polly.loop_header744 ]
  %186 = mul nsw i64 %polly.indvar753, -32
  %smin961 = call i64 @llvm.smin.i64(i64 %186, i64 -1168)
  %187 = add nsw i64 %smin961, 1200
  %smin928 = call i64 @llvm.smin.i64(i64 %indvars.iv926, i64 -1168)
  %188 = shl nsw i64 %polly.indvar753, 5
  %189 = add nsw i64 %smin928, 1199
  br label %polly.loop_header756

polly.loop_exit758:                               ; preds = %polly.loop_exit764
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %indvars.iv.next927 = add nsw i64 %indvars.iv926, -32
  %exitcond934.not = icmp eq i64 %polly.indvar_next754, 38
  br i1 %exitcond934.not, label %polly.loop_exit752, label %polly.loop_header750

polly.loop_header756:                             ; preds = %polly.loop_exit764, %polly.loop_header750
  %polly.indvar759 = phi i64 [ 0, %polly.loop_header750 ], [ %polly.indvar_next760, %polly.loop_exit764 ]
  %190 = add nuw nsw i64 %polly.indvar759, %184
  %191 = trunc i64 %190 to i32
  %192 = mul nuw nsw i64 %190, 9600
  %min.iters.check = icmp eq i64 %187, 0
  br i1 %min.iters.check, label %polly.loop_header762, label %vector.ph962

vector.ph962:                                     ; preds = %polly.loop_header756
  %broadcast.splatinsert969 = insertelement <4 x i64> poison, i64 %188, i32 0
  %broadcast.splat970 = shufflevector <4 x i64> %broadcast.splatinsert969, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert971 = insertelement <4 x i32> poison, i32 %191, i32 0
  %broadcast.splat972 = shufflevector <4 x i32> %broadcast.splatinsert971, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body960

vector.body960:                                   ; preds = %vector.body960, %vector.ph962
  %index963 = phi i64 [ 0, %vector.ph962 ], [ %index.next964, %vector.body960 ]
  %vec.ind967 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph962 ], [ %vec.ind.next968, %vector.body960 ]
  %193 = add nuw nsw <4 x i64> %vec.ind967, %broadcast.splat970
  %194 = trunc <4 x i64> %193 to <4 x i32>
  %195 = mul <4 x i32> %broadcast.splat972, %194
  %196 = add <4 x i32> %195, <i32 3, i32 3, i32 3, i32 3>
  %197 = urem <4 x i32> %196, <i32 1200, i32 1200, i32 1200, i32 1200>
  %198 = sitofp <4 x i32> %197 to <4 x double>
  %199 = fmul fast <4 x double> %198, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %200 = extractelement <4 x i64> %193, i32 0
  %201 = shl i64 %200, 3
  %202 = add nuw nsw i64 %201, %192
  %203 = getelementptr i8, i8* %call, i64 %202
  %204 = bitcast i8* %203 to <4 x double>*
  store <4 x double> %199, <4 x double>* %204, align 8, !alias.scope !98, !noalias !100
  %index.next964 = add i64 %index963, 4
  %vec.ind.next968 = add <4 x i64> %vec.ind967, <i64 4, i64 4, i64 4, i64 4>
  %205 = icmp eq i64 %index.next964, %187
  br i1 %205, label %polly.loop_exit764, label %vector.body960, !llvm.loop !103

polly.loop_exit764:                               ; preds = %vector.body960, %polly.loop_header762
  %polly.indvar_next760 = add nuw nsw i64 %polly.indvar759, 1
  %exitcond933.not = icmp eq i64 %polly.indvar759, %185
  br i1 %exitcond933.not, label %polly.loop_exit758, label %polly.loop_header756

polly.loop_header762:                             ; preds = %polly.loop_header756, %polly.loop_header762
  %polly.indvar765 = phi i64 [ %polly.indvar_next766, %polly.loop_header762 ], [ 0, %polly.loop_header756 ]
  %206 = add nuw nsw i64 %polly.indvar765, %188
  %207 = trunc i64 %206 to i32
  %208 = mul i32 %207, %191
  %209 = add i32 %208, 3
  %210 = urem i32 %209, 1200
  %p_conv31.i = sitofp i32 %210 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %211 = shl i64 %206, 3
  %212 = add nuw nsw i64 %211, %192
  %scevgep768 = getelementptr i8, i8* %call, i64 %212
  %scevgep768769 = bitcast i8* %scevgep768 to double*
  store double %p_div33.i, double* %scevgep768769, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next766 = add nuw nsw i64 %polly.indvar765, 1
  %exitcond929.not = icmp eq i64 %polly.indvar765, %189
  br i1 %exitcond929.not, label %polly.loop_exit764, label %polly.loop_header762, !llvm.loop !104

polly.loop_header771:                             ; preds = %polly.loop_exit752, %polly.loop_exit779
  %indvars.iv920 = phi i64 [ %indvars.iv.next921, %polly.loop_exit779 ], [ 0, %polly.loop_exit752 ]
  %polly.indvar774 = phi i64 [ %polly.indvar_next775, %polly.loop_exit779 ], [ 0, %polly.loop_exit752 ]
  %smin922 = call i64 @llvm.smin.i64(i64 %indvars.iv920, i64 -1168)
  %213 = shl nsw i64 %polly.indvar774, 5
  %214 = add nsw i64 %smin922, 1199
  br label %polly.loop_header777

polly.loop_exit779:                               ; preds = %polly.loop_exit785
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %indvars.iv.next921 = add nsw i64 %indvars.iv920, -32
  %exitcond925.not = icmp eq i64 %polly.indvar_next775, 38
  br i1 %exitcond925.not, label %polly.loop_header797, label %polly.loop_header771

polly.loop_header777:                             ; preds = %polly.loop_exit785, %polly.loop_header771
  %indvars.iv916 = phi i64 [ %indvars.iv.next917, %polly.loop_exit785 ], [ 0, %polly.loop_header771 ]
  %polly.indvar780 = phi i64 [ %polly.indvar_next781, %polly.loop_exit785 ], [ 0, %polly.loop_header771 ]
  %215 = mul nsw i64 %polly.indvar780, -32
  %smin976 = call i64 @llvm.smin.i64(i64 %215, i64 -968)
  %216 = add nsw i64 %smin976, 1000
  %smin918 = call i64 @llvm.smin.i64(i64 %indvars.iv916, i64 -968)
  %217 = shl nsw i64 %polly.indvar780, 5
  %218 = add nsw i64 %smin918, 999
  br label %polly.loop_header783

polly.loop_exit785:                               ; preds = %polly.loop_exit791
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %indvars.iv.next917 = add nsw i64 %indvars.iv916, -32
  %exitcond924.not = icmp eq i64 %polly.indvar_next781, 32
  br i1 %exitcond924.not, label %polly.loop_exit779, label %polly.loop_header777

polly.loop_header783:                             ; preds = %polly.loop_exit791, %polly.loop_header777
  %polly.indvar786 = phi i64 [ 0, %polly.loop_header777 ], [ %polly.indvar_next787, %polly.loop_exit791 ]
  %219 = add nuw nsw i64 %polly.indvar786, %213
  %220 = trunc i64 %219 to i32
  %221 = mul nuw nsw i64 %219, 8000
  %min.iters.check977 = icmp eq i64 %216, 0
  br i1 %min.iters.check977, label %polly.loop_header789, label %vector.ph978

vector.ph978:                                     ; preds = %polly.loop_header783
  %broadcast.splatinsert987 = insertelement <4 x i64> poison, i64 %217, i32 0
  %broadcast.splat988 = shufflevector <4 x i64> %broadcast.splatinsert987, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert989 = insertelement <4 x i32> poison, i32 %220, i32 0
  %broadcast.splat990 = shufflevector <4 x i32> %broadcast.splatinsert989, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body975

vector.body975:                                   ; preds = %vector.body975, %vector.ph978
  %index981 = phi i64 [ 0, %vector.ph978 ], [ %index.next982, %vector.body975 ]
  %vec.ind985 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph978 ], [ %vec.ind.next986, %vector.body975 ]
  %222 = add nuw nsw <4 x i64> %vec.ind985, %broadcast.splat988
  %223 = trunc <4 x i64> %222 to <4 x i32>
  %224 = mul <4 x i32> %broadcast.splat990, %223
  %225 = add <4 x i32> %224, <i32 2, i32 2, i32 2, i32 2>
  %226 = urem <4 x i32> %225, <i32 1000, i32 1000, i32 1000, i32 1000>
  %227 = sitofp <4 x i32> %226 to <4 x double>
  %228 = fmul fast <4 x double> %227, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %229 = extractelement <4 x i64> %222, i32 0
  %230 = shl i64 %229, 3
  %231 = add nuw nsw i64 %230, %221
  %232 = getelementptr i8, i8* %call2, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %228, <4 x double>* %233, align 8, !alias.scope !102, !noalias !105
  %index.next982 = add i64 %index981, 4
  %vec.ind.next986 = add <4 x i64> %vec.ind985, <i64 4, i64 4, i64 4, i64 4>
  %234 = icmp eq i64 %index.next982, %216
  br i1 %234, label %polly.loop_exit791, label %vector.body975, !llvm.loop !106

polly.loop_exit791:                               ; preds = %vector.body975, %polly.loop_header789
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %exitcond923.not = icmp eq i64 %polly.indvar786, %214
  br i1 %exitcond923.not, label %polly.loop_exit785, label %polly.loop_header783

polly.loop_header789:                             ; preds = %polly.loop_header783, %polly.loop_header789
  %polly.indvar792 = phi i64 [ %polly.indvar_next793, %polly.loop_header789 ], [ 0, %polly.loop_header783 ]
  %235 = add nuw nsw i64 %polly.indvar792, %217
  %236 = trunc i64 %235 to i32
  %237 = mul i32 %236, %220
  %238 = add i32 %237, 2
  %239 = urem i32 %238, 1000
  %p_conv10.i = sitofp i32 %239 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %240 = shl i64 %235, 3
  %241 = add nuw nsw i64 %240, %221
  %scevgep795 = getelementptr i8, i8* %call2, i64 %241
  %scevgep795796 = bitcast i8* %scevgep795 to double*
  store double %p_div12.i, double* %scevgep795796, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %exitcond919.not = icmp eq i64 %polly.indvar792, %218
  br i1 %exitcond919.not, label %polly.loop_exit791, label %polly.loop_header789, !llvm.loop !107

polly.loop_header797:                             ; preds = %polly.loop_exit779, %polly.loop_exit805
  %indvars.iv910 = phi i64 [ %indvars.iv.next911, %polly.loop_exit805 ], [ 0, %polly.loop_exit779 ]
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_exit805 ], [ 0, %polly.loop_exit779 ]
  %smin912 = call i64 @llvm.smin.i64(i64 %indvars.iv910, i64 -1168)
  %242 = shl nsw i64 %polly.indvar800, 5
  %243 = add nsw i64 %smin912, 1199
  br label %polly.loop_header803

polly.loop_exit805:                               ; preds = %polly.loop_exit811
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %indvars.iv.next911 = add nsw i64 %indvars.iv910, -32
  %exitcond915.not = icmp eq i64 %polly.indvar_next801, 38
  br i1 %exitcond915.not, label %init_array.exit, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_exit811, %polly.loop_header797
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %polly.loop_exit811 ], [ 0, %polly.loop_header797 ]
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_exit811 ], [ 0, %polly.loop_header797 ]
  %244 = mul nsw i64 %polly.indvar806, -32
  %smin994 = call i64 @llvm.smin.i64(i64 %244, i64 -968)
  %245 = add nsw i64 %smin994, 1000
  %smin908 = call i64 @llvm.smin.i64(i64 %indvars.iv906, i64 -968)
  %246 = shl nsw i64 %polly.indvar806, 5
  %247 = add nsw i64 %smin908, 999
  br label %polly.loop_header809

polly.loop_exit811:                               ; preds = %polly.loop_exit817
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %indvars.iv.next907 = add nsw i64 %indvars.iv906, -32
  %exitcond914.not = icmp eq i64 %polly.indvar_next807, 32
  br i1 %exitcond914.not, label %polly.loop_exit805, label %polly.loop_header803

polly.loop_header809:                             ; preds = %polly.loop_exit817, %polly.loop_header803
  %polly.indvar812 = phi i64 [ 0, %polly.loop_header803 ], [ %polly.indvar_next813, %polly.loop_exit817 ]
  %248 = add nuw nsw i64 %polly.indvar812, %242
  %249 = trunc i64 %248 to i32
  %250 = mul nuw nsw i64 %248, 8000
  %min.iters.check995 = icmp eq i64 %245, 0
  br i1 %min.iters.check995, label %polly.loop_header815, label %vector.ph996

vector.ph996:                                     ; preds = %polly.loop_header809
  %broadcast.splatinsert1005 = insertelement <4 x i64> poison, i64 %246, i32 0
  %broadcast.splat1006 = shufflevector <4 x i64> %broadcast.splatinsert1005, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1007 = insertelement <4 x i32> poison, i32 %249, i32 0
  %broadcast.splat1008 = shufflevector <4 x i32> %broadcast.splatinsert1007, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body993

vector.body993:                                   ; preds = %vector.body993, %vector.ph996
  %index999 = phi i64 [ 0, %vector.ph996 ], [ %index.next1000, %vector.body993 ]
  %vec.ind1003 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph996 ], [ %vec.ind.next1004, %vector.body993 ]
  %251 = add nuw nsw <4 x i64> %vec.ind1003, %broadcast.splat1006
  %252 = trunc <4 x i64> %251 to <4 x i32>
  %253 = mul <4 x i32> %broadcast.splat1008, %252
  %254 = add <4 x i32> %253, <i32 1, i32 1, i32 1, i32 1>
  %255 = urem <4 x i32> %254, <i32 1200, i32 1200, i32 1200, i32 1200>
  %256 = sitofp <4 x i32> %255 to <4 x double>
  %257 = fmul fast <4 x double> %256, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %258 = extractelement <4 x i64> %251, i32 0
  %259 = shl i64 %258, 3
  %260 = add nuw nsw i64 %259, %250
  %261 = getelementptr i8, i8* %call1, i64 %260
  %262 = bitcast i8* %261 to <4 x double>*
  store <4 x double> %257, <4 x double>* %262, align 8, !alias.scope !101, !noalias !108
  %index.next1000 = add i64 %index999, 4
  %vec.ind.next1004 = add <4 x i64> %vec.ind1003, <i64 4, i64 4, i64 4, i64 4>
  %263 = icmp eq i64 %index.next1000, %245
  br i1 %263, label %polly.loop_exit817, label %vector.body993, !llvm.loop !109

polly.loop_exit817:                               ; preds = %vector.body993, %polly.loop_header815
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %exitcond913.not = icmp eq i64 %polly.indvar812, %243
  br i1 %exitcond913.not, label %polly.loop_exit811, label %polly.loop_header809

polly.loop_header815:                             ; preds = %polly.loop_header809, %polly.loop_header815
  %polly.indvar818 = phi i64 [ %polly.indvar_next819, %polly.loop_header815 ], [ 0, %polly.loop_header809 ]
  %264 = add nuw nsw i64 %polly.indvar818, %246
  %265 = trunc i64 %264 to i32
  %266 = mul i32 %265, %249
  %267 = add i32 %266, 1
  %268 = urem i32 %267, 1200
  %p_conv.i = sitofp i32 %268 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %269 = shl i64 %264, 3
  %270 = add nuw nsw i64 %269, %250
  %scevgep822 = getelementptr i8, i8* %call1, i64 %270
  %scevgep822823 = bitcast i8* %scevgep822 to double*
  store double %p_div.i, double* %scevgep822823, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next819 = add nuw nsw i64 %polly.indvar818, 1
  %exitcond909.not = icmp eq i64 %polly.indvar818, %247
  br i1 %exitcond909.not, label %polly.loop_exit817, label %polly.loop_header815, !llvm.loop !110
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
!25 = !{!"llvm.loop.tile.size", i32 256}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 50}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !34, !45, !56}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50, !51}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.interchange.enable", i1 true}
!49 = !{!"llvm.loop.interchange.depth", i32 5}
!50 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!51 = !{!"llvm.loop.interchange.followup_interchanged", !52}
!52 = distinct !{!52, !12, !23, !47, !53, !54, !55}
!53 = !{!"llvm.data.pack.enable", i1 true}
!54 = !{!"llvm.data.pack.array", !21}
!55 = !{!"llvm.data.pack.allocate", !"malloc"}
!56 = !{!"llvm.loop.tile.followup_tile", !57}
!57 = distinct !{!57, !12, !23, !58}
!58 = !{!"llvm.loop.id", !"i2"}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !4, i64 0}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !68, !"polly.alias.scope.MemRef_call"}
!68 = distinct !{!68, !"polly.alias.scope.domain"}
!69 = !{!70, !71, !72}
!70 = distinct !{!70, !68, !"polly.alias.scope.MemRef_call1"}
!71 = distinct !{!71, !68, !"polly.alias.scope.MemRef_call2"}
!72 = distinct !{!72, !68, !"polly.alias.scope.Packed_MemRef_call2"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !75, !13}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!67, !70, !72}
!77 = !{!67, !71, !72}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call2"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !75, !13}
!86 = !{!78, !81, !83}
!87 = !{!78, !82, !83}
!88 = distinct !{!88, !89, !"polly.alias.scope.MemRef_call"}
!89 = distinct !{!89, !"polly.alias.scope.domain"}
!90 = !{!91, !92, !93}
!91 = distinct !{!91, !89, !"polly.alias.scope.MemRef_call1"}
!92 = distinct !{!92, !89, !"polly.alias.scope.MemRef_call2"}
!93 = distinct !{!93, !89, !"polly.alias.scope.Packed_MemRef_call2"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !75, !13}
!96 = !{!88, !91, !93}
!97 = !{!88, !92, !93}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !75, !13}
!105 = !{!101, !98}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !75, !13}
!108 = !{!102, !98}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !75, !13}
