; ModuleID = 'syr2k_exhaustive/mmp_all_SM_7418.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_7418.c"
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
  %call776 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1637 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2638 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1637, %call2
  %polly.access.call2657 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2657, %call1
  %2 = or i1 %0, %1
  %polly.access.call677 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call677, %call2
  %4 = icmp ule i8* %polly.access.call2657, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call677, %call1
  %8 = icmp ule i8* %polly.access.call1637, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header750, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep938 = getelementptr i8, i8* %call2, i64 %12
  %scevgep937 = getelementptr i8, i8* %call2, i64 %11
  %scevgep936 = getelementptr i8, i8* %call1, i64 %12
  %scevgep935 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep935, %scevgep938
  %bound1 = icmp ult i8* %scevgep937, %scevgep936
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
  br i1 %exitcond18.not.i, label %vector.ph942, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph942:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert949 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat950 = shufflevector <4 x i64> %broadcast.splatinsert949, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body941

vector.body941:                                   ; preds = %vector.body941, %vector.ph942
  %index943 = phi i64 [ 0, %vector.ph942 ], [ %index.next944, %vector.body941 ]
  %vec.ind947 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph942 ], [ %vec.ind.next948, %vector.body941 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind947, %broadcast.splat950
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv7.i, i64 %index943
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next944 = add i64 %index943, 4
  %vec.ind.next948 = add <4 x i64> %vec.ind947, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next944, 1200
  br i1 %40, label %for.inc41.i, label %vector.body941, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body941
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph942, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit811
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start449, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1005 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1005, label %for.body3.i46.preheader1079, label %vector.ph1006

vector.ph1006:                                    ; preds = %for.body3.i46.preheader
  %n.vec1008 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1004

vector.body1004:                                  ; preds = %vector.body1004, %vector.ph1006
  %index1009 = phi i64 [ 0, %vector.ph1006 ], [ %index.next1010, %vector.body1004 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i, i64 %index1009
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1010 = add i64 %index1009, 4
  %46 = icmp eq i64 %index.next1010, %n.vec1008
  br i1 %46, label %middle.block1002, label %vector.body1004, !llvm.loop !18

middle.block1002:                                 ; preds = %vector.body1004
  %cmp.n1012 = icmp eq i64 %indvars.iv21.i, %n.vec1008
  br i1 %cmp.n1012, label %for.inc6.i, label %for.body3.i46.preheader1079

for.body3.i46.preheader1079:                      ; preds = %for.body3.i46.preheader, %middle.block1002
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1008, %middle.block1002 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1079, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1079 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1002, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting450
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start272, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1028 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1028, label %for.body3.i60.preheader1078, label %vector.ph1029

vector.ph1029:                                    ; preds = %for.body3.i60.preheader
  %n.vec1031 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1027

vector.body1027:                                  ; preds = %vector.body1027, %vector.ph1029
  %index1032 = phi i64 [ 0, %vector.ph1029 ], [ %index.next1033, %vector.body1027 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i52, i64 %index1032
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1036 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1036, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1033 = add i64 %index1032, 4
  %57 = icmp eq i64 %index.next1033, %n.vec1031
  br i1 %57, label %middle.block1025, label %vector.body1027, !llvm.loop !55

middle.block1025:                                 ; preds = %vector.body1027
  %cmp.n1035 = icmp eq i64 %indvars.iv21.i52, %n.vec1031
  br i1 %cmp.n1035, label %for.inc6.i63, label %for.body3.i60.preheader1078

for.body3.i60.preheader1078:                      ; preds = %for.body3.i60.preheader, %middle.block1025
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1031, %middle.block1025 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1078, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1078 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1025, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting273
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1054 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1054, label %for.body3.i99.preheader1077, label %vector.ph1055

vector.ph1055:                                    ; preds = %for.body3.i99.preheader
  %n.vec1057 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1053

vector.body1053:                                  ; preds = %vector.body1053, %vector.ph1055
  %index1058 = phi i64 [ 0, %vector.ph1055 ], [ %index.next1059, %vector.body1053 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i91, i64 %index1058
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1062 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1062, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1059 = add i64 %index1058, 4
  %68 = icmp eq i64 %index.next1059, %n.vec1057
  br i1 %68, label %middle.block1051, label %vector.body1053, !llvm.loop !57

middle.block1051:                                 ; preds = %vector.body1053
  %cmp.n1061 = icmp eq i64 %indvars.iv21.i91, %n.vec1057
  br i1 %cmp.n1061, label %for.inc6.i102, label %for.body3.i99.preheader1077

for.body3.i99.preheader1077:                      ; preds = %for.body3.i99.preheader, %middle.block1051
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1057, %middle.block1051 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1077, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1077 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1051, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !59
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !62

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %indvar1066 = phi i64 [ %indvar.next1067, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1066, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1068 = icmp ult i64 %88, 4
  br i1 %min.iters.check1068, label %polly.loop_header191.preheader, label %vector.ph1069

vector.ph1069:                                    ; preds = %polly.loop_header
  %n.vec1071 = and i64 %88, -4
  br label %vector.body1065

vector.body1065:                                  ; preds = %vector.body1065, %vector.ph1069
  %index1072 = phi i64 [ 0, %vector.ph1069 ], [ %index.next1073, %vector.body1065 ]
  %90 = shl nuw nsw i64 %index1072, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1076 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1076, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1073 = add i64 %index1072, 4
  %95 = icmp eq i64 %index.next1073, %n.vec1071
  br i1 %95, label %middle.block1063, label %vector.body1065, !llvm.loop !69

middle.block1063:                                 ; preds = %vector.body1065
  %cmp.n1075 = icmp eq i64 %88, %n.vec1071
  br i1 %cmp.n1075, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1063
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1071, %middle.block1063 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1063
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1067 = add i64 %indvar1066, 1
  br i1 %exitcond852.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond851.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond851.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 1200
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond850.not = icmp eq i64 %polly.indvar_next203, 1000
  br i1 %exitcond850.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 1000
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond849.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit223 ], [ 2, %polly.loop_exit207 ]
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = mul nsw i64 %polly.indvar218, -64
  %98 = icmp slt i64 %97, -1136
  %99 = select i1 %98, i64 %97, i64 -1136
  %100 = add nsw i64 %99, 1199
  %101 = shl nsw i64 %polly.indvar218, 6
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -64
  %indvars.iv.next838 = add nuw nsw i64 %indvars.iv837, 64
  %indvars.iv.next845 = add nuw nsw i64 %indvars.iv844, 2
  %exitcond848.not = icmp eq i64 %polly.indvar_next219, 19
  br i1 %exitcond848.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %polly.indvar224 = phi i64 [ 0, %polly.loop_header215 ], [ %polly.indvar_next225, %polly.loop_exit229 ]
  %102 = mul nuw nsw i64 %polly.indvar224, 20
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next225, 50
  br i1 %exitcond847.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv839 = phi i64 [ %indvars.iv.next840, %polly.loop_exit235 ], [ %indvars.iv837, %polly.loop_header221 ]
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit235 ], [ %indvars.iv, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %103 = shl nsw i64 %polly.indvar230, 5
  %104 = add nsw i64 %103, %97
  %105 = icmp sgt i64 %104, 0
  %106 = select i1 %105, i64 %104, i64 0
  %polly.loop_guard.not = icmp sgt i64 %106, %100
  br i1 %polly.loop_guard.not, label %polly.loop_exit235, label %polly.loop_header233.preheader

polly.loop_header233.preheader:                   ; preds = %polly.loop_header227
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv835, i64 0)
  %107 = add i64 %smax, %indvars.iv839
  %108 = sub nsw i64 %101, %103
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next836 = add nsw i64 %indvars.iv835, 32
  %indvars.iv.next840 = add nsw i64 %indvars.iv839, -32
  %exitcond846.not = icmp eq i64 %polly.indvar_next231, %indvars.iv844
  br i1 %exitcond846.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header233.preheader, %polly.loop_exit241
  %indvars.iv841 = phi i64 [ %107, %polly.loop_header233.preheader ], [ %indvars.iv.next842, %polly.loop_exit241 ]
  %polly.indvar236 = phi i64 [ %106, %polly.loop_header233.preheader ], [ %polly.indvar_next237, %polly.loop_exit241 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv841, i64 31)
  %109 = add nsw i64 %polly.indvar236, %108
  %polly.loop_guard249930 = icmp sgt i64 %109, -1
  %110 = add nuw nsw i64 %polly.indvar236, %101
  %111 = mul i64 %110, 8000
  %112 = mul i64 %110, 9600
  br i1 %polly.loop_guard249930, label %polly.loop_header239.us, label %polly.loop_exit241

polly.loop_header239.us:                          ; preds = %polly.loop_header233, %polly.loop_exit248.loopexit.us
  %polly.indvar242.us = phi i64 [ %polly.indvar_next243.us, %polly.loop_exit248.loopexit.us ], [ 0, %polly.loop_header233 ]
  %113 = add nuw nsw i64 %polly.indvar242.us, %102
  %114 = shl i64 %113, 3
  %polly.access.mul.Packed_MemRef_call2256.us = mul nuw nsw i64 %113, 1200
  %polly.access.add.Packed_MemRef_call2257.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2256.us, %110
  %polly.access.Packed_MemRef_call2258.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us
  %_p_scalar_259.us = load double, double* %polly.access.Packed_MemRef_call2258.us, align 8
  %115 = add i64 %114, %111
  %scevgep264.us = getelementptr i8, i8* %call1, i64 %115
  %scevgep264265.us = bitcast i8* %scevgep264.us to double*
  %_p_scalar_266.us = load double, double* %scevgep264265.us, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header246.us

polly.loop_header246.us:                          ; preds = %polly.loop_header239.us, %polly.loop_header246.us
  %polly.indvar250.us = phi i64 [ %polly.indvar_next251.us, %polly.loop_header246.us ], [ 0, %polly.loop_header239.us ]
  %116 = add nuw nsw i64 %polly.indvar250.us, %103
  %117 = mul nuw nsw i64 %116, 8000
  %118 = add nuw nsw i64 %117, %114
  %scevgep253.us = getelementptr i8, i8* %call1, i64 %118
  %scevgep253254.us = bitcast i8* %scevgep253.us to double*
  %_p_scalar_255.us = load double, double* %scevgep253254.us, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us = fmul fast double %_p_scalar_259.us, %_p_scalar_255.us
  %polly.access.add.Packed_MemRef_call2261.us = add nuw nsw i64 %116, %polly.access.mul.Packed_MemRef_call2256.us
  %polly.access.Packed_MemRef_call2262.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us
  %_p_scalar_263.us = load double, double* %polly.access.Packed_MemRef_call2262.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_266.us, %_p_scalar_263.us
  %119 = shl i64 %116, 3
  %120 = add i64 %119, %112
  %scevgep267.us = getelementptr i8, i8* %call, i64 %120
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_269.us
  store double %p_add42.i118.us, double* %scevgep267268.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next251.us = add nuw nsw i64 %polly.indvar250.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar250.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit248.loopexit.us, label %polly.loop_header246.us

polly.loop_exit248.loopexit.us:                   ; preds = %polly.loop_header246.us
  %polly.indvar_next243.us = add nuw nsw i64 %polly.indvar242.us, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next243.us, 20
  br i1 %exitcond843.not, label %polly.loop_exit241, label %polly.loop_header239.us

polly.loop_exit241:                               ; preds = %polly.loop_exit248.loopexit.us, %polly.loop_header233
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp ult i64 %polly.indvar236, %100
  %indvars.iv.next842 = add i64 %indvars.iv841, 1
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.start272:                                   ; preds = %kernel_syr2k.exit
  %malloccall274 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header358

polly.exiting273:                                 ; preds = %polly.loop_exit398
  tail call void @free(i8* %malloccall274)
  br label %kernel_syr2k.exit90

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.start272
  %indvar1040 = phi i64 [ %indvar.next1041, %polly.loop_exit366 ], [ 0, %polly.start272 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 1, %polly.start272 ]
  %121 = add i64 %indvar1040, 1
  %122 = mul nuw nsw i64 %polly.indvar361, 9600
  %scevgep370 = getelementptr i8, i8* %call, i64 %122
  %min.iters.check1042 = icmp ult i64 %121, 4
  br i1 %min.iters.check1042, label %polly.loop_header364.preheader, label %vector.ph1043

vector.ph1043:                                    ; preds = %polly.loop_header358
  %n.vec1045 = and i64 %121, -4
  br label %vector.body1039

vector.body1039:                                  ; preds = %vector.body1039, %vector.ph1043
  %index1046 = phi i64 [ 0, %vector.ph1043 ], [ %index.next1047, %vector.body1039 ]
  %123 = shl nuw nsw i64 %index1046, 3
  %124 = getelementptr i8, i8* %scevgep370, i64 %123
  %125 = bitcast i8* %124 to <4 x double>*
  %wide.load1050 = load <4 x double>, <4 x double>* %125, align 8, !alias.scope !74, !noalias !76
  %126 = fmul fast <4 x double> %wide.load1050, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %127 = bitcast i8* %124 to <4 x double>*
  store <4 x double> %126, <4 x double>* %127, align 8, !alias.scope !74, !noalias !76
  %index.next1047 = add i64 %index1046, 4
  %128 = icmp eq i64 %index.next1047, %n.vec1045
  br i1 %128, label %middle.block1037, label %vector.body1039, !llvm.loop !80

middle.block1037:                                 ; preds = %vector.body1039
  %cmp.n1049 = icmp eq i64 %121, %n.vec1045
  br i1 %cmp.n1049, label %polly.loop_exit366, label %polly.loop_header364.preheader

polly.loop_header364.preheader:                   ; preds = %polly.loop_header358, %middle.block1037
  %polly.indvar367.ph = phi i64 [ 0, %polly.loop_header358 ], [ %n.vec1045, %middle.block1037 ]
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_header364, %middle.block1037
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond875.not = icmp eq i64 %polly.indvar_next362, 1200
  %indvar.next1041 = add i64 %indvar1040, 1
  br i1 %exitcond875.not, label %polly.loop_header374.preheader, label %polly.loop_header358

polly.loop_header374.preheader:                   ; preds = %polly.loop_exit366
  %Packed_MemRef_call2275 = bitcast i8* %malloccall274 to double*
  br label %polly.loop_header374

polly.loop_header364:                             ; preds = %polly.loop_header364.preheader, %polly.loop_header364
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_header364 ], [ %polly.indvar367.ph, %polly.loop_header364.preheader ]
  %129 = shl nuw nsw i64 %polly.indvar367, 3
  %scevgep371 = getelementptr i8, i8* %scevgep370, i64 %129
  %scevgep371372 = bitcast i8* %scevgep371 to double*
  %_p_scalar_373 = load double, double* %scevgep371372, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_373, 1.200000e+00
  store double %p_mul.i57, double* %scevgep371372, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next368, %polly.indvar361
  br i1 %exitcond874.not, label %polly.loop_exit366, label %polly.loop_header364, !llvm.loop !81

polly.loop_header374:                             ; preds = %polly.loop_header374.preheader, %polly.loop_exit382
  %polly.indvar377 = phi i64 [ %polly.indvar_next378, %polly.loop_exit382 ], [ 0, %polly.loop_header374.preheader ]
  %polly.access.mul.Packed_MemRef_call2275 = mul nuw nsw i64 %polly.indvar377, 1200
  br label %polly.loop_header380

polly.loop_exit382:                               ; preds = %polly.loop_header380
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond873.not = icmp eq i64 %polly.indvar_next378, 1000
  br i1 %exitcond873.not, label %polly.loop_header390, label %polly.loop_header374

polly.loop_header380:                             ; preds = %polly.loop_header380, %polly.loop_header374
  %polly.indvar383 = phi i64 [ 0, %polly.loop_header374 ], [ %polly.indvar_next384, %polly.loop_header380 ]
  %polly.access.mul.call2387 = mul nuw nsw i64 %polly.indvar383, 1000
  %polly.access.add.call2388 = add nuw nsw i64 %polly.access.mul.call2387, %polly.indvar377
  %polly.access.call2389 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2388
  %polly.access.call2389.load = load double, double* %polly.access.call2389, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2275 = add nuw nsw i64 %polly.indvar383, %polly.access.mul.Packed_MemRef_call2275
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275
  store double %polly.access.call2389.load, double* %polly.access.Packed_MemRef_call2275, align 8
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond872.not = icmp eq i64 %polly.indvar_next384, 1200
  br i1 %exitcond872.not, label %polly.loop_exit382, label %polly.loop_header380

polly.loop_header390:                             ; preds = %polly.loop_exit382, %polly.loop_exit398
  %indvars.iv867 = phi i64 [ %indvars.iv.next868, %polly.loop_exit398 ], [ 2, %polly.loop_exit382 ]
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit398 ], [ 0, %polly.loop_exit382 ]
  %indvars.iv853 = phi i64 [ %indvars.iv.next854, %polly.loop_exit398 ], [ 0, %polly.loop_exit382 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 0, %polly.loop_exit382 ]
  %130 = mul nsw i64 %polly.indvar393, -64
  %131 = icmp slt i64 %130, -1136
  %132 = select i1 %131, i64 %130, i64 -1136
  %133 = add nsw i64 %132, 1199
  %134 = shl nsw i64 %polly.indvar393, 6
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_exit404
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %indvars.iv.next854 = add nsw i64 %indvars.iv853, -64
  %indvars.iv.next859 = add nuw nsw i64 %indvars.iv858, 64
  %indvars.iv.next868 = add nuw nsw i64 %indvars.iv867, 2
  %exitcond871.not = icmp eq i64 %polly.indvar_next394, 19
  br i1 %exitcond871.not, label %polly.exiting273, label %polly.loop_header390

polly.loop_header396:                             ; preds = %polly.loop_exit404, %polly.loop_header390
  %polly.indvar399 = phi i64 [ 0, %polly.loop_header390 ], [ %polly.indvar_next400, %polly.loop_exit404 ]
  %135 = mul nuw nsw i64 %polly.indvar399, 20
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit411
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond870.not = icmp eq i64 %polly.indvar_next400, 50
  br i1 %exitcond870.not, label %polly.loop_exit398, label %polly.loop_header396

polly.loop_header402:                             ; preds = %polly.loop_exit411, %polly.loop_header396
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit411 ], [ %indvars.iv858, %polly.loop_header396 ]
  %indvars.iv855 = phi i64 [ %indvars.iv.next856, %polly.loop_exit411 ], [ %indvars.iv853, %polly.loop_header396 ]
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit411 ], [ 0, %polly.loop_header396 ]
  %136 = shl nsw i64 %polly.indvar405, 5
  %137 = add nsw i64 %136, %130
  %138 = icmp sgt i64 %137, 0
  %139 = select i1 %138, i64 %137, i64 0
  %polly.loop_guard412.not = icmp sgt i64 %139, %133
  br i1 %polly.loop_guard412.not, label %polly.loop_exit411, label %polly.loop_header409.preheader

polly.loop_header409.preheader:                   ; preds = %polly.loop_header402
  %smax857 = call i64 @llvm.smax.i64(i64 %indvars.iv855, i64 0)
  %140 = add i64 %smax857, %indvars.iv860
  %141 = sub nsw i64 %134, %136
  br label %polly.loop_header409

polly.loop_exit411:                               ; preds = %polly.loop_exit418, %polly.loop_header402
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next856 = add nsw i64 %indvars.iv855, 32
  %indvars.iv.next861 = add nsw i64 %indvars.iv860, -32
  %exitcond869.not = icmp eq i64 %polly.indvar_next406, %indvars.iv867
  br i1 %exitcond869.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header409:                             ; preds = %polly.loop_header409.preheader, %polly.loop_exit418
  %indvars.iv862 = phi i64 [ %140, %polly.loop_header409.preheader ], [ %indvars.iv.next863, %polly.loop_exit418 ]
  %polly.indvar413 = phi i64 [ %139, %polly.loop_header409.preheader ], [ %polly.indvar_next414, %polly.loop_exit418 ]
  %smin864 = call i64 @llvm.smin.i64(i64 %indvars.iv862, i64 31)
  %142 = add nsw i64 %polly.indvar413, %141
  %polly.loop_guard426931 = icmp sgt i64 %142, -1
  %143 = add nuw nsw i64 %polly.indvar413, %134
  %144 = mul i64 %143, 8000
  %145 = mul i64 %143, 9600
  br i1 %polly.loop_guard426931, label %polly.loop_header416.us, label %polly.loop_exit418

polly.loop_header416.us:                          ; preds = %polly.loop_header409, %polly.loop_exit425.loopexit.us
  %polly.indvar419.us = phi i64 [ %polly.indvar_next420.us, %polly.loop_exit425.loopexit.us ], [ 0, %polly.loop_header409 ]
  %146 = add nuw nsw i64 %polly.indvar419.us, %135
  %147 = shl i64 %146, 3
  %polly.access.mul.Packed_MemRef_call2275433.us = mul nuw nsw i64 %146, 1200
  %polly.access.add.Packed_MemRef_call2275434.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2275433.us, %143
  %polly.access.Packed_MemRef_call2275435.us = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275434.us
  %_p_scalar_436.us = load double, double* %polly.access.Packed_MemRef_call2275435.us, align 8
  %148 = add i64 %147, %144
  %scevgep441.us = getelementptr i8, i8* %call1, i64 %148
  %scevgep441442.us = bitcast i8* %scevgep441.us to double*
  %_p_scalar_443.us = load double, double* %scevgep441442.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header423.us

polly.loop_header423.us:                          ; preds = %polly.loop_header416.us, %polly.loop_header423.us
  %polly.indvar427.us = phi i64 [ %polly.indvar_next428.us, %polly.loop_header423.us ], [ 0, %polly.loop_header416.us ]
  %149 = add nuw nsw i64 %polly.indvar427.us, %136
  %150 = mul nuw nsw i64 %149, 8000
  %151 = add nuw nsw i64 %150, %147
  %scevgep430.us = getelementptr i8, i8* %call1, i64 %151
  %scevgep430431.us = bitcast i8* %scevgep430.us to double*
  %_p_scalar_432.us = load double, double* %scevgep430431.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_436.us, %_p_scalar_432.us
  %polly.access.add.Packed_MemRef_call2275438.us = add nuw nsw i64 %149, %polly.access.mul.Packed_MemRef_call2275433.us
  %polly.access.Packed_MemRef_call2275439.us = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275438.us
  %_p_scalar_440.us = load double, double* %polly.access.Packed_MemRef_call2275439.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_443.us, %_p_scalar_440.us
  %152 = shl i64 %149, 3
  %153 = add i64 %152, %145
  %scevgep444.us = getelementptr i8, i8* %call, i64 %153
  %scevgep444445.us = bitcast i8* %scevgep444.us to double*
  %_p_scalar_446.us = load double, double* %scevgep444445.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_446.us
  store double %p_add42.i79.us, double* %scevgep444445.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next428.us = add nuw nsw i64 %polly.indvar427.us, 1
  %exitcond865.not = icmp eq i64 %polly.indvar427.us, %smin864
  br i1 %exitcond865.not, label %polly.loop_exit425.loopexit.us, label %polly.loop_header423.us

polly.loop_exit425.loopexit.us:                   ; preds = %polly.loop_header423.us
  %polly.indvar_next420.us = add nuw nsw i64 %polly.indvar419.us, 1
  %exitcond866.not = icmp eq i64 %polly.indvar_next420.us, 20
  br i1 %exitcond866.not, label %polly.loop_exit418, label %polly.loop_header416.us

polly.loop_exit418:                               ; preds = %polly.loop_exit425.loopexit.us, %polly.loop_header409
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %polly.loop_cond415.not.not = icmp ult i64 %polly.indvar413, %133
  %indvars.iv.next863 = add i64 %indvars.iv862, 1
  br i1 %polly.loop_cond415.not.not, label %polly.loop_header409, label %polly.loop_exit411

polly.start449:                                   ; preds = %init_array.exit
  %malloccall451 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header535

polly.exiting450:                                 ; preds = %polly.loop_exit575
  tail call void @free(i8* %malloccall451)
  br label %kernel_syr2k.exit

polly.loop_header535:                             ; preds = %polly.loop_exit543, %polly.start449
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit543 ], [ 0, %polly.start449 ]
  %polly.indvar538 = phi i64 [ %polly.indvar_next539, %polly.loop_exit543 ], [ 1, %polly.start449 ]
  %154 = add i64 %indvar, 1
  %155 = mul nuw nsw i64 %polly.indvar538, 9600
  %scevgep547 = getelementptr i8, i8* %call, i64 %155
  %min.iters.check1016 = icmp ult i64 %154, 4
  br i1 %min.iters.check1016, label %polly.loop_header541.preheader, label %vector.ph1017

vector.ph1017:                                    ; preds = %polly.loop_header535
  %n.vec1019 = and i64 %154, -4
  br label %vector.body1015

vector.body1015:                                  ; preds = %vector.body1015, %vector.ph1017
  %index1020 = phi i64 [ 0, %vector.ph1017 ], [ %index.next1021, %vector.body1015 ]
  %156 = shl nuw nsw i64 %index1020, 3
  %157 = getelementptr i8, i8* %scevgep547, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load1024 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !84, !noalias !86
  %159 = fmul fast <4 x double> %wide.load1024, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %160 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %159, <4 x double>* %160, align 8, !alias.scope !84, !noalias !86
  %index.next1021 = add i64 %index1020, 4
  %161 = icmp eq i64 %index.next1021, %n.vec1019
  br i1 %161, label %middle.block1013, label %vector.body1015, !llvm.loop !90

middle.block1013:                                 ; preds = %vector.body1015
  %cmp.n1023 = icmp eq i64 %154, %n.vec1019
  br i1 %cmp.n1023, label %polly.loop_exit543, label %polly.loop_header541.preheader

polly.loop_header541.preheader:                   ; preds = %polly.loop_header535, %middle.block1013
  %polly.indvar544.ph = phi i64 [ 0, %polly.loop_header535 ], [ %n.vec1019, %middle.block1013 ]
  br label %polly.loop_header541

polly.loop_exit543:                               ; preds = %polly.loop_header541, %middle.block1013
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %exitcond898.not = icmp eq i64 %polly.indvar_next539, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond898.not, label %polly.loop_header551.preheader, label %polly.loop_header535

polly.loop_header551.preheader:                   ; preds = %polly.loop_exit543
  %Packed_MemRef_call2452 = bitcast i8* %malloccall451 to double*
  br label %polly.loop_header551

polly.loop_header541:                             ; preds = %polly.loop_header541.preheader, %polly.loop_header541
  %polly.indvar544 = phi i64 [ %polly.indvar_next545, %polly.loop_header541 ], [ %polly.indvar544.ph, %polly.loop_header541.preheader ]
  %162 = shl nuw nsw i64 %polly.indvar544, 3
  %scevgep548 = getelementptr i8, i8* %scevgep547, i64 %162
  %scevgep548549 = bitcast i8* %scevgep548 to double*
  %_p_scalar_550 = load double, double* %scevgep548549, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_550, 1.200000e+00
  store double %p_mul.i, double* %scevgep548549, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next545 = add nuw nsw i64 %polly.indvar544, 1
  %exitcond897.not = icmp eq i64 %polly.indvar_next545, %polly.indvar538
  br i1 %exitcond897.not, label %polly.loop_exit543, label %polly.loop_header541, !llvm.loop !91

polly.loop_header551:                             ; preds = %polly.loop_header551.preheader, %polly.loop_exit559
  %polly.indvar554 = phi i64 [ %polly.indvar_next555, %polly.loop_exit559 ], [ 0, %polly.loop_header551.preheader ]
  %polly.access.mul.Packed_MemRef_call2452 = mul nuw nsw i64 %polly.indvar554, 1200
  br label %polly.loop_header557

polly.loop_exit559:                               ; preds = %polly.loop_header557
  %polly.indvar_next555 = add nuw nsw i64 %polly.indvar554, 1
  %exitcond896.not = icmp eq i64 %polly.indvar_next555, 1000
  br i1 %exitcond896.not, label %polly.loop_header567, label %polly.loop_header551

polly.loop_header557:                             ; preds = %polly.loop_header557, %polly.loop_header551
  %polly.indvar560 = phi i64 [ 0, %polly.loop_header551 ], [ %polly.indvar_next561, %polly.loop_header557 ]
  %polly.access.mul.call2564 = mul nuw nsw i64 %polly.indvar560, 1000
  %polly.access.add.call2565 = add nuw nsw i64 %polly.access.mul.call2564, %polly.indvar554
  %polly.access.call2566 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2565
  %polly.access.call2566.load = load double, double* %polly.access.call2566, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2452 = add nuw nsw i64 %polly.indvar560, %polly.access.mul.Packed_MemRef_call2452
  %polly.access.Packed_MemRef_call2452 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452
  store double %polly.access.call2566.load, double* %polly.access.Packed_MemRef_call2452, align 8
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next561, 1200
  br i1 %exitcond895.not, label %polly.loop_exit559, label %polly.loop_header557

polly.loop_header567:                             ; preds = %polly.loop_exit559, %polly.loop_exit575
  %indvars.iv890 = phi i64 [ %indvars.iv.next891, %polly.loop_exit575 ], [ 2, %polly.loop_exit559 ]
  %indvars.iv881 = phi i64 [ %indvars.iv.next882, %polly.loop_exit575 ], [ 0, %polly.loop_exit559 ]
  %indvars.iv876 = phi i64 [ %indvars.iv.next877, %polly.loop_exit575 ], [ 0, %polly.loop_exit559 ]
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_exit575 ], [ 0, %polly.loop_exit559 ]
  %163 = mul nsw i64 %polly.indvar570, -64
  %164 = icmp slt i64 %163, -1136
  %165 = select i1 %164, i64 %163, i64 -1136
  %166 = add nsw i64 %165, 1199
  %167 = shl nsw i64 %polly.indvar570, 6
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_exit581
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %indvars.iv.next877 = add nsw i64 %indvars.iv876, -64
  %indvars.iv.next882 = add nuw nsw i64 %indvars.iv881, 64
  %indvars.iv.next891 = add nuw nsw i64 %indvars.iv890, 2
  %exitcond894.not = icmp eq i64 %polly.indvar_next571, 19
  br i1 %exitcond894.not, label %polly.exiting450, label %polly.loop_header567

polly.loop_header573:                             ; preds = %polly.loop_exit581, %polly.loop_header567
  %polly.indvar576 = phi i64 [ 0, %polly.loop_header567 ], [ %polly.indvar_next577, %polly.loop_exit581 ]
  %168 = mul nuw nsw i64 %polly.indvar576, 20
  br label %polly.loop_header579

polly.loop_exit581:                               ; preds = %polly.loop_exit588
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %exitcond893.not = icmp eq i64 %polly.indvar_next577, 50
  br i1 %exitcond893.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header579:                             ; preds = %polly.loop_exit588, %polly.loop_header573
  %indvars.iv883 = phi i64 [ %indvars.iv.next884, %polly.loop_exit588 ], [ %indvars.iv881, %polly.loop_header573 ]
  %indvars.iv878 = phi i64 [ %indvars.iv.next879, %polly.loop_exit588 ], [ %indvars.iv876, %polly.loop_header573 ]
  %polly.indvar582 = phi i64 [ %polly.indvar_next583, %polly.loop_exit588 ], [ 0, %polly.loop_header573 ]
  %169 = shl nsw i64 %polly.indvar582, 5
  %170 = add nsw i64 %169, %163
  %171 = icmp sgt i64 %170, 0
  %172 = select i1 %171, i64 %170, i64 0
  %polly.loop_guard589.not = icmp sgt i64 %172, %166
  br i1 %polly.loop_guard589.not, label %polly.loop_exit588, label %polly.loop_header586.preheader

polly.loop_header586.preheader:                   ; preds = %polly.loop_header579
  %smax880 = call i64 @llvm.smax.i64(i64 %indvars.iv878, i64 0)
  %173 = add i64 %smax880, %indvars.iv883
  %174 = sub nsw i64 %167, %169
  br label %polly.loop_header586

polly.loop_exit588:                               ; preds = %polly.loop_exit595, %polly.loop_header579
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %indvars.iv.next879 = add nsw i64 %indvars.iv878, 32
  %indvars.iv.next884 = add nsw i64 %indvars.iv883, -32
  %exitcond892.not = icmp eq i64 %polly.indvar_next583, %indvars.iv890
  br i1 %exitcond892.not, label %polly.loop_exit581, label %polly.loop_header579

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_exit595
  %indvars.iv885 = phi i64 [ %173, %polly.loop_header586.preheader ], [ %indvars.iv.next886, %polly.loop_exit595 ]
  %polly.indvar590 = phi i64 [ %172, %polly.loop_header586.preheader ], [ %polly.indvar_next591, %polly.loop_exit595 ]
  %smin887 = call i64 @llvm.smin.i64(i64 %indvars.iv885, i64 31)
  %175 = add nsw i64 %polly.indvar590, %174
  %polly.loop_guard603932 = icmp sgt i64 %175, -1
  %176 = add nuw nsw i64 %polly.indvar590, %167
  %177 = mul i64 %176, 8000
  %178 = mul i64 %176, 9600
  br i1 %polly.loop_guard603932, label %polly.loop_header593.us, label %polly.loop_exit595

polly.loop_header593.us:                          ; preds = %polly.loop_header586, %polly.loop_exit602.loopexit.us
  %polly.indvar596.us = phi i64 [ %polly.indvar_next597.us, %polly.loop_exit602.loopexit.us ], [ 0, %polly.loop_header586 ]
  %179 = add nuw nsw i64 %polly.indvar596.us, %168
  %180 = shl i64 %179, 3
  %polly.access.mul.Packed_MemRef_call2452610.us = mul nuw nsw i64 %179, 1200
  %polly.access.add.Packed_MemRef_call2452611.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2452610.us, %176
  %polly.access.Packed_MemRef_call2452612.us = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452611.us
  %_p_scalar_613.us = load double, double* %polly.access.Packed_MemRef_call2452612.us, align 8
  %181 = add i64 %180, %177
  %scevgep618.us = getelementptr i8, i8* %call1, i64 %181
  %scevgep618619.us = bitcast i8* %scevgep618.us to double*
  %_p_scalar_620.us = load double, double* %scevgep618619.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header600.us

polly.loop_header600.us:                          ; preds = %polly.loop_header593.us, %polly.loop_header600.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.loop_header600.us ], [ 0, %polly.loop_header593.us ]
  %182 = add nuw nsw i64 %polly.indvar604.us, %169
  %183 = mul nuw nsw i64 %182, 8000
  %184 = add nuw nsw i64 %183, %180
  %scevgep607.us = getelementptr i8, i8* %call1, i64 %184
  %scevgep607608.us = bitcast i8* %scevgep607.us to double*
  %_p_scalar_609.us = load double, double* %scevgep607608.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_613.us, %_p_scalar_609.us
  %polly.access.add.Packed_MemRef_call2452615.us = add nuw nsw i64 %182, %polly.access.mul.Packed_MemRef_call2452610.us
  %polly.access.Packed_MemRef_call2452616.us = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452615.us
  %_p_scalar_617.us = load double, double* %polly.access.Packed_MemRef_call2452616.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_620.us, %_p_scalar_617.us
  %185 = shl i64 %182, 3
  %186 = add i64 %185, %178
  %scevgep621.us = getelementptr i8, i8* %call, i64 %186
  %scevgep621622.us = bitcast i8* %scevgep621.us to double*
  %_p_scalar_623.us = load double, double* %scevgep621622.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_623.us
  store double %p_add42.i.us, double* %scevgep621622.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond888.not = icmp eq i64 %polly.indvar604.us, %smin887
  br i1 %exitcond888.not, label %polly.loop_exit602.loopexit.us, label %polly.loop_header600.us

polly.loop_exit602.loopexit.us:                   ; preds = %polly.loop_header600.us
  %polly.indvar_next597.us = add nuw nsw i64 %polly.indvar596.us, 1
  %exitcond889.not = icmp eq i64 %polly.indvar_next597.us, 20
  br i1 %exitcond889.not, label %polly.loop_exit595, label %polly.loop_header593.us

polly.loop_exit595:                               ; preds = %polly.loop_exit602.loopexit.us, %polly.loop_header586
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %polly.loop_cond592.not.not = icmp ult i64 %polly.indvar590, %166
  %indvars.iv.next886 = add i64 %indvars.iv885, 1
  br i1 %polly.loop_cond592.not.not, label %polly.loop_header586, label %polly.loop_exit588

polly.loop_header750:                             ; preds = %entry, %polly.loop_exit758
  %indvars.iv923 = phi i64 [ %indvars.iv.next924, %polly.loop_exit758 ], [ 0, %entry ]
  %polly.indvar753 = phi i64 [ %polly.indvar_next754, %polly.loop_exit758 ], [ 0, %entry ]
  %smin925 = call i64 @llvm.smin.i64(i64 %indvars.iv923, i64 -1168)
  %187 = shl nsw i64 %polly.indvar753, 5
  %188 = add nsw i64 %smin925, 1199
  br label %polly.loop_header756

polly.loop_exit758:                               ; preds = %polly.loop_exit764
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %indvars.iv.next924 = add nsw i64 %indvars.iv923, -32
  %exitcond928.not = icmp eq i64 %polly.indvar_next754, 38
  br i1 %exitcond928.not, label %polly.loop_header777, label %polly.loop_header750

polly.loop_header756:                             ; preds = %polly.loop_exit764, %polly.loop_header750
  %indvars.iv919 = phi i64 [ %indvars.iv.next920, %polly.loop_exit764 ], [ 0, %polly.loop_header750 ]
  %polly.indvar759 = phi i64 [ %polly.indvar_next760, %polly.loop_exit764 ], [ 0, %polly.loop_header750 ]
  %189 = mul nsw i64 %polly.indvar759, -32
  %smin954 = call i64 @llvm.smin.i64(i64 %189, i64 -1168)
  %190 = add nsw i64 %smin954, 1200
  %smin921 = call i64 @llvm.smin.i64(i64 %indvars.iv919, i64 -1168)
  %191 = shl nsw i64 %polly.indvar759, 5
  %192 = add nsw i64 %smin921, 1199
  br label %polly.loop_header762

polly.loop_exit764:                               ; preds = %polly.loop_exit770
  %polly.indvar_next760 = add nuw nsw i64 %polly.indvar759, 1
  %indvars.iv.next920 = add nsw i64 %indvars.iv919, -32
  %exitcond927.not = icmp eq i64 %polly.indvar_next760, 38
  br i1 %exitcond927.not, label %polly.loop_exit758, label %polly.loop_header756

polly.loop_header762:                             ; preds = %polly.loop_exit770, %polly.loop_header756
  %polly.indvar765 = phi i64 [ 0, %polly.loop_header756 ], [ %polly.indvar_next766, %polly.loop_exit770 ]
  %193 = add nuw nsw i64 %polly.indvar765, %187
  %194 = trunc i64 %193 to i32
  %195 = mul nuw nsw i64 %193, 9600
  %min.iters.check = icmp eq i64 %190, 0
  br i1 %min.iters.check, label %polly.loop_header768, label %vector.ph955

vector.ph955:                                     ; preds = %polly.loop_header762
  %broadcast.splatinsert962 = insertelement <4 x i64> poison, i64 %191, i32 0
  %broadcast.splat963 = shufflevector <4 x i64> %broadcast.splatinsert962, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert964 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat965 = shufflevector <4 x i32> %broadcast.splatinsert964, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body953

vector.body953:                                   ; preds = %vector.body953, %vector.ph955
  %index956 = phi i64 [ 0, %vector.ph955 ], [ %index.next957, %vector.body953 ]
  %vec.ind960 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph955 ], [ %vec.ind.next961, %vector.body953 ]
  %196 = add nuw nsw <4 x i64> %vec.ind960, %broadcast.splat963
  %197 = trunc <4 x i64> %196 to <4 x i32>
  %198 = mul <4 x i32> %broadcast.splat965, %197
  %199 = add <4 x i32> %198, <i32 3, i32 3, i32 3, i32 3>
  %200 = urem <4 x i32> %199, <i32 1200, i32 1200, i32 1200, i32 1200>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %203 = extractelement <4 x i64> %196, i32 0
  %204 = shl i64 %203, 3
  %205 = add nuw nsw i64 %204, %195
  %206 = getelementptr i8, i8* %call, i64 %205
  %207 = bitcast i8* %206 to <4 x double>*
  store <4 x double> %202, <4 x double>* %207, align 8, !alias.scope !94, !noalias !96
  %index.next957 = add i64 %index956, 4
  %vec.ind.next961 = add <4 x i64> %vec.ind960, <i64 4, i64 4, i64 4, i64 4>
  %208 = icmp eq i64 %index.next957, %190
  br i1 %208, label %polly.loop_exit770, label %vector.body953, !llvm.loop !99

polly.loop_exit770:                               ; preds = %vector.body953, %polly.loop_header768
  %polly.indvar_next766 = add nuw nsw i64 %polly.indvar765, 1
  %exitcond926.not = icmp eq i64 %polly.indvar765, %188
  br i1 %exitcond926.not, label %polly.loop_exit764, label %polly.loop_header762

polly.loop_header768:                             ; preds = %polly.loop_header762, %polly.loop_header768
  %polly.indvar771 = phi i64 [ %polly.indvar_next772, %polly.loop_header768 ], [ 0, %polly.loop_header762 ]
  %209 = add nuw nsw i64 %polly.indvar771, %191
  %210 = trunc i64 %209 to i32
  %211 = mul i32 %210, %194
  %212 = add i32 %211, 3
  %213 = urem i32 %212, 1200
  %p_conv31.i = sitofp i32 %213 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %214 = shl i64 %209, 3
  %215 = add nuw nsw i64 %214, %195
  %scevgep774 = getelementptr i8, i8* %call, i64 %215
  %scevgep774775 = bitcast i8* %scevgep774 to double*
  store double %p_div33.i, double* %scevgep774775, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next772 = add nuw nsw i64 %polly.indvar771, 1
  %exitcond922.not = icmp eq i64 %polly.indvar771, %192
  br i1 %exitcond922.not, label %polly.loop_exit770, label %polly.loop_header768, !llvm.loop !100

polly.loop_header777:                             ; preds = %polly.loop_exit758, %polly.loop_exit785
  %indvars.iv913 = phi i64 [ %indvars.iv.next914, %polly.loop_exit785 ], [ 0, %polly.loop_exit758 ]
  %polly.indvar780 = phi i64 [ %polly.indvar_next781, %polly.loop_exit785 ], [ 0, %polly.loop_exit758 ]
  %smin915 = call i64 @llvm.smin.i64(i64 %indvars.iv913, i64 -1168)
  %216 = shl nsw i64 %polly.indvar780, 5
  %217 = add nsw i64 %smin915, 1199
  br label %polly.loop_header783

polly.loop_exit785:                               ; preds = %polly.loop_exit791
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %indvars.iv.next914 = add nsw i64 %indvars.iv913, -32
  %exitcond918.not = icmp eq i64 %polly.indvar_next781, 38
  br i1 %exitcond918.not, label %polly.loop_header803, label %polly.loop_header777

polly.loop_header783:                             ; preds = %polly.loop_exit791, %polly.loop_header777
  %indvars.iv909 = phi i64 [ %indvars.iv.next910, %polly.loop_exit791 ], [ 0, %polly.loop_header777 ]
  %polly.indvar786 = phi i64 [ %polly.indvar_next787, %polly.loop_exit791 ], [ 0, %polly.loop_header777 ]
  %218 = mul nsw i64 %polly.indvar786, -32
  %smin969 = call i64 @llvm.smin.i64(i64 %218, i64 -968)
  %219 = add nsw i64 %smin969, 1000
  %smin911 = call i64 @llvm.smin.i64(i64 %indvars.iv909, i64 -968)
  %220 = shl nsw i64 %polly.indvar786, 5
  %221 = add nsw i64 %smin911, 999
  br label %polly.loop_header789

polly.loop_exit791:                               ; preds = %polly.loop_exit797
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %indvars.iv.next910 = add nsw i64 %indvars.iv909, -32
  %exitcond917.not = icmp eq i64 %polly.indvar_next787, 32
  br i1 %exitcond917.not, label %polly.loop_exit785, label %polly.loop_header783

polly.loop_header789:                             ; preds = %polly.loop_exit797, %polly.loop_header783
  %polly.indvar792 = phi i64 [ 0, %polly.loop_header783 ], [ %polly.indvar_next793, %polly.loop_exit797 ]
  %222 = add nuw nsw i64 %polly.indvar792, %216
  %223 = trunc i64 %222 to i32
  %224 = mul nuw nsw i64 %222, 8000
  %min.iters.check970 = icmp eq i64 %219, 0
  br i1 %min.iters.check970, label %polly.loop_header795, label %vector.ph971

vector.ph971:                                     ; preds = %polly.loop_header789
  %broadcast.splatinsert980 = insertelement <4 x i64> poison, i64 %220, i32 0
  %broadcast.splat981 = shufflevector <4 x i64> %broadcast.splatinsert980, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert982 = insertelement <4 x i32> poison, i32 %223, i32 0
  %broadcast.splat983 = shufflevector <4 x i32> %broadcast.splatinsert982, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body968

vector.body968:                                   ; preds = %vector.body968, %vector.ph971
  %index974 = phi i64 [ 0, %vector.ph971 ], [ %index.next975, %vector.body968 ]
  %vec.ind978 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph971 ], [ %vec.ind.next979, %vector.body968 ]
  %225 = add nuw nsw <4 x i64> %vec.ind978, %broadcast.splat981
  %226 = trunc <4 x i64> %225 to <4 x i32>
  %227 = mul <4 x i32> %broadcast.splat983, %226
  %228 = add <4 x i32> %227, <i32 2, i32 2, i32 2, i32 2>
  %229 = urem <4 x i32> %228, <i32 1000, i32 1000, i32 1000, i32 1000>
  %230 = sitofp <4 x i32> %229 to <4 x double>
  %231 = fmul fast <4 x double> %230, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %232 = extractelement <4 x i64> %225, i32 0
  %233 = shl i64 %232, 3
  %234 = add nuw nsw i64 %233, %224
  %235 = getelementptr i8, i8* %call2, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %231, <4 x double>* %236, align 8, !alias.scope !98, !noalias !101
  %index.next975 = add i64 %index974, 4
  %vec.ind.next979 = add <4 x i64> %vec.ind978, <i64 4, i64 4, i64 4, i64 4>
  %237 = icmp eq i64 %index.next975, %219
  br i1 %237, label %polly.loop_exit797, label %vector.body968, !llvm.loop !102

polly.loop_exit797:                               ; preds = %vector.body968, %polly.loop_header795
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %exitcond916.not = icmp eq i64 %polly.indvar792, %217
  br i1 %exitcond916.not, label %polly.loop_exit791, label %polly.loop_header789

polly.loop_header795:                             ; preds = %polly.loop_header789, %polly.loop_header795
  %polly.indvar798 = phi i64 [ %polly.indvar_next799, %polly.loop_header795 ], [ 0, %polly.loop_header789 ]
  %238 = add nuw nsw i64 %polly.indvar798, %220
  %239 = trunc i64 %238 to i32
  %240 = mul i32 %239, %223
  %241 = add i32 %240, 2
  %242 = urem i32 %241, 1000
  %p_conv10.i = sitofp i32 %242 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %243 = shl i64 %238, 3
  %244 = add nuw nsw i64 %243, %224
  %scevgep801 = getelementptr i8, i8* %call2, i64 %244
  %scevgep801802 = bitcast i8* %scevgep801 to double*
  store double %p_div12.i, double* %scevgep801802, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next799 = add nuw nsw i64 %polly.indvar798, 1
  %exitcond912.not = icmp eq i64 %polly.indvar798, %221
  br i1 %exitcond912.not, label %polly.loop_exit797, label %polly.loop_header795, !llvm.loop !103

polly.loop_header803:                             ; preds = %polly.loop_exit785, %polly.loop_exit811
  %indvars.iv903 = phi i64 [ %indvars.iv.next904, %polly.loop_exit811 ], [ 0, %polly.loop_exit785 ]
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_exit811 ], [ 0, %polly.loop_exit785 ]
  %smin905 = call i64 @llvm.smin.i64(i64 %indvars.iv903, i64 -1168)
  %245 = shl nsw i64 %polly.indvar806, 5
  %246 = add nsw i64 %smin905, 1199
  br label %polly.loop_header809

polly.loop_exit811:                               ; preds = %polly.loop_exit817
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %indvars.iv.next904 = add nsw i64 %indvars.iv903, -32
  %exitcond908.not = icmp eq i64 %polly.indvar_next807, 38
  br i1 %exitcond908.not, label %init_array.exit, label %polly.loop_header803

polly.loop_header809:                             ; preds = %polly.loop_exit817, %polly.loop_header803
  %indvars.iv899 = phi i64 [ %indvars.iv.next900, %polly.loop_exit817 ], [ 0, %polly.loop_header803 ]
  %polly.indvar812 = phi i64 [ %polly.indvar_next813, %polly.loop_exit817 ], [ 0, %polly.loop_header803 ]
  %247 = mul nsw i64 %polly.indvar812, -32
  %smin987 = call i64 @llvm.smin.i64(i64 %247, i64 -968)
  %248 = add nsw i64 %smin987, 1000
  %smin901 = call i64 @llvm.smin.i64(i64 %indvars.iv899, i64 -968)
  %249 = shl nsw i64 %polly.indvar812, 5
  %250 = add nsw i64 %smin901, 999
  br label %polly.loop_header815

polly.loop_exit817:                               ; preds = %polly.loop_exit823
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %indvars.iv.next900 = add nsw i64 %indvars.iv899, -32
  %exitcond907.not = icmp eq i64 %polly.indvar_next813, 32
  br i1 %exitcond907.not, label %polly.loop_exit811, label %polly.loop_header809

polly.loop_header815:                             ; preds = %polly.loop_exit823, %polly.loop_header809
  %polly.indvar818 = phi i64 [ 0, %polly.loop_header809 ], [ %polly.indvar_next819, %polly.loop_exit823 ]
  %251 = add nuw nsw i64 %polly.indvar818, %245
  %252 = trunc i64 %251 to i32
  %253 = mul nuw nsw i64 %251, 8000
  %min.iters.check988 = icmp eq i64 %248, 0
  br i1 %min.iters.check988, label %polly.loop_header821, label %vector.ph989

vector.ph989:                                     ; preds = %polly.loop_header815
  %broadcast.splatinsert998 = insertelement <4 x i64> poison, i64 %249, i32 0
  %broadcast.splat999 = shufflevector <4 x i64> %broadcast.splatinsert998, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1000 = insertelement <4 x i32> poison, i32 %252, i32 0
  %broadcast.splat1001 = shufflevector <4 x i32> %broadcast.splatinsert1000, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %vector.ph989
  %index992 = phi i64 [ 0, %vector.ph989 ], [ %index.next993, %vector.body986 ]
  %vec.ind996 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph989 ], [ %vec.ind.next997, %vector.body986 ]
  %254 = add nuw nsw <4 x i64> %vec.ind996, %broadcast.splat999
  %255 = trunc <4 x i64> %254 to <4 x i32>
  %256 = mul <4 x i32> %broadcast.splat1001, %255
  %257 = add <4 x i32> %256, <i32 1, i32 1, i32 1, i32 1>
  %258 = urem <4 x i32> %257, <i32 1200, i32 1200, i32 1200, i32 1200>
  %259 = sitofp <4 x i32> %258 to <4 x double>
  %260 = fmul fast <4 x double> %259, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %261 = extractelement <4 x i64> %254, i32 0
  %262 = shl i64 %261, 3
  %263 = add nuw nsw i64 %262, %253
  %264 = getelementptr i8, i8* %call1, i64 %263
  %265 = bitcast i8* %264 to <4 x double>*
  store <4 x double> %260, <4 x double>* %265, align 8, !alias.scope !97, !noalias !104
  %index.next993 = add i64 %index992, 4
  %vec.ind.next997 = add <4 x i64> %vec.ind996, <i64 4, i64 4, i64 4, i64 4>
  %266 = icmp eq i64 %index.next993, %248
  br i1 %266, label %polly.loop_exit823, label %vector.body986, !llvm.loop !105

polly.loop_exit823:                               ; preds = %vector.body986, %polly.loop_header821
  %polly.indvar_next819 = add nuw nsw i64 %polly.indvar818, 1
  %exitcond906.not = icmp eq i64 %polly.indvar818, %246
  br i1 %exitcond906.not, label %polly.loop_exit817, label %polly.loop_header815

polly.loop_header821:                             ; preds = %polly.loop_header815, %polly.loop_header821
  %polly.indvar824 = phi i64 [ %polly.indvar_next825, %polly.loop_header821 ], [ 0, %polly.loop_header815 ]
  %267 = add nuw nsw i64 %polly.indvar824, %249
  %268 = trunc i64 %267 to i32
  %269 = mul i32 %268, %252
  %270 = add i32 %269, 1
  %271 = urem i32 %270, 1200
  %p_conv.i = sitofp i32 %271 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %272 = shl i64 %267, 3
  %273 = add nuw nsw i64 %272, %253
  %scevgep828 = getelementptr i8, i8* %call1, i64 %273
  %scevgep828829 = bitcast i8* %scevgep828 to double*
  store double %p_div.i, double* %scevgep828829, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next825 = add nuw nsw i64 %polly.indvar824, 1
  %exitcond902.not = icmp eq i64 %polly.indvar824, %250
  br i1 %exitcond902.not, label %polly.loop_exit823, label %polly.loop_header821, !llvm.loop !106
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
!25 = !{!"llvm.loop.tile.size", i32 32}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 20}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !52}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 64}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.data.pack.enable", i1 true}
!50 = !{!"llvm.data.pack.array", !21}
!51 = !{!"llvm.data.pack.allocate", !"malloc"}
!52 = !{!"llvm.loop.tile.followup_tile", !53}
!53 = distinct !{!53, !12, !54}
!54 = !{!"llvm.loop.id", !"i2"}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !4, i64 0}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !64, !"polly.alias.scope.MemRef_call"}
!64 = distinct !{!64, !"polly.alias.scope.domain"}
!65 = !{!66, !67, !68}
!66 = distinct !{!66, !64, !"polly.alias.scope.MemRef_call1"}
!67 = distinct !{!67, !64, !"polly.alias.scope.MemRef_call2"}
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call2"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !66, !68}
!73 = !{!63, !67, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call2"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !77, !79}
!83 = !{!74, !78, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call2"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !87, !89}
!93 = !{!84, !88, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !71, !13}
!101 = !{!97, !94}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !71, !13}
!104 = !{!98, !94}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !71, !13}
