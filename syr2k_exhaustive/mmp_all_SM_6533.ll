; ModuleID = 'syr2k_exhaustive/mmp_all_SM_6533.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_6533.c"
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
  %call772 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1633 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2634 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1633, %call2
  %polly.access.call2653 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2653, %call1
  %2 = or i1 %0, %1
  %polly.access.call673 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call673, %call2
  %4 = icmp ule i8* %polly.access.call2653, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call673, %call1
  %8 = icmp ule i8* %polly.access.call1633, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header746, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep944 = getelementptr i8, i8* %call2, i64 %12
  %scevgep943 = getelementptr i8, i8* %call2, i64 %11
  %scevgep942 = getelementptr i8, i8* %call1, i64 %12
  %scevgep941 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep941, %scevgep944
  %bound1 = icmp ult i8* %scevgep943, %scevgep942
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
  br i1 %exitcond18.not.i, label %vector.ph948, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph948:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert955 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat956 = shufflevector <4 x i64> %broadcast.splatinsert955, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body947

vector.body947:                                   ; preds = %vector.body947, %vector.ph948
  %index949 = phi i64 [ 0, %vector.ph948 ], [ %index.next950, %vector.body947 ]
  %vec.ind953 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph948 ], [ %vec.ind.next954, %vector.body947 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind953, %broadcast.splat956
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv7.i, i64 %index949
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next950 = add i64 %index949, 4
  %vec.ind.next954 = add <4 x i64> %vec.ind953, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next950, 1200
  br i1 %40, label %for.inc41.i, label %vector.body947, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body947
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph948, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit807
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start446, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1011 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1011, label %for.body3.i46.preheader1085, label %vector.ph1012

vector.ph1012:                                    ; preds = %for.body3.i46.preheader
  %n.vec1014 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %vector.ph1012
  %index1015 = phi i64 [ 0, %vector.ph1012 ], [ %index.next1016, %vector.body1010 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i, i64 %index1015
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1016 = add i64 %index1015, 4
  %46 = icmp eq i64 %index.next1016, %n.vec1014
  br i1 %46, label %middle.block1008, label %vector.body1010, !llvm.loop !18

middle.block1008:                                 ; preds = %vector.body1010
  %cmp.n1018 = icmp eq i64 %indvars.iv21.i, %n.vec1014
  br i1 %cmp.n1018, label %for.inc6.i, label %for.body3.i46.preheader1085

for.body3.i46.preheader1085:                      ; preds = %for.body3.i46.preheader, %middle.block1008
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1014, %middle.block1008 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1085, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1085 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1008, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting447
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start270, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1034 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1034, label %for.body3.i60.preheader1084, label %vector.ph1035

vector.ph1035:                                    ; preds = %for.body3.i60.preheader
  %n.vec1037 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1033

vector.body1033:                                  ; preds = %vector.body1033, %vector.ph1035
  %index1038 = phi i64 [ 0, %vector.ph1035 ], [ %index.next1039, %vector.body1033 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i52, i64 %index1038
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1042 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1042, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1039 = add i64 %index1038, 4
  %57 = icmp eq i64 %index.next1039, %n.vec1037
  br i1 %57, label %middle.block1031, label %vector.body1033, !llvm.loop !60

middle.block1031:                                 ; preds = %vector.body1033
  %cmp.n1041 = icmp eq i64 %indvars.iv21.i52, %n.vec1037
  br i1 %cmp.n1041, label %for.inc6.i63, label %for.body3.i60.preheader1084

for.body3.i60.preheader1084:                      ; preds = %for.body3.i60.preheader, %middle.block1031
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1037, %middle.block1031 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1084, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1084 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1031, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1060 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1060, label %for.body3.i99.preheader1083, label %vector.ph1061

vector.ph1061:                                    ; preds = %for.body3.i99.preheader
  %n.vec1063 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1059

vector.body1059:                                  ; preds = %vector.body1059, %vector.ph1061
  %index1064 = phi i64 [ 0, %vector.ph1061 ], [ %index.next1065, %vector.body1059 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i91, i64 %index1064
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1068 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1068, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1065 = add i64 %index1064, 4
  %68 = icmp eq i64 %index.next1065, %n.vec1063
  br i1 %68, label %middle.block1057, label %vector.body1059, !llvm.loop !62

middle.block1057:                                 ; preds = %vector.body1059
  %cmp.n1067 = icmp eq i64 %indvars.iv21.i91, %n.vec1063
  br i1 %cmp.n1067, label %for.inc6.i102, label %for.body3.i99.preheader1083

for.body3.i99.preheader1083:                      ; preds = %for.body3.i99.preheader, %middle.block1057
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1063, %middle.block1057 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1083, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1083 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1057, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1072 = phi i64 [ %indvar.next1073, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1072, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1074 = icmp ult i64 %88, 4
  br i1 %min.iters.check1074, label %polly.loop_header191.preheader, label %vector.ph1075

vector.ph1075:                                    ; preds = %polly.loop_header
  %n.vec1077 = and i64 %88, -4
  br label %vector.body1071

vector.body1071:                                  ; preds = %vector.body1071, %vector.ph1075
  %index1078 = phi i64 [ 0, %vector.ph1075 ], [ %index.next1079, %vector.body1071 ]
  %90 = shl nuw nsw i64 %index1078, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1082 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1082, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1079 = add i64 %index1078, 4
  %95 = icmp eq i64 %index.next1079, %n.vec1077
  br i1 %95, label %middle.block1069, label %vector.body1071, !llvm.loop !74

middle.block1069:                                 ; preds = %vector.body1071
  %cmp.n1081 = icmp eq i64 %88, %n.vec1077
  br i1 %cmp.n1081, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1069
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1077, %middle.block1069 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1069
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1073 = add i64 %indvar1072, 1
  br i1 %exitcond858.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond857.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond857.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit223
  %indvars.iv848 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next849, %polly.loop_exit223 ]
  %indvars.iv844 = phi i64 [ 24, %polly.loop_header199.preheader ], [ %indvars.iv.next845, %polly.loop_exit223 ]
  %indvars.iv842 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next843, %polly.loop_exit223 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit223 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit223 ]
  %97 = udiv i64 %indvars.iv844, 25
  %98 = mul nuw nsw i64 %97, 100
  %99 = add i64 %indvars.iv842, %98
  %100 = sub nsw i64 %indvars.iv848, %98
  %101 = shl nsw i64 %polly.indvar202, 8
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %102 = mul nsw i64 %polly.indvar202, -256
  %103 = mul nuw nsw i64 %polly.indvar202, 3
  %104 = mul nuw nsw i64 %polly.indvar202, 11
  %105 = add nuw nsw i64 %104, 24
  %pexp.p_div_q = udiv i64 %105, 25
  %106 = sub nsw i64 %103, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %106, 12
  br i1 %polly.loop_guard, label %polly.loop_header221, label %polly.loop_exit223

polly.loop_exit223:                               ; preds = %polly.loop_exit229, %polly.loop_exit207
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  %indvars.iv.next843 = add nsw i64 %indvars.iv842, -44
  %indvars.iv.next845 = add nuw nsw i64 %indvars.iv844, 11
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 44
  %exitcond856.not = icmp eq i64 %polly.indvar_next203, 5
  br i1 %exitcond856.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar208, 1200
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_header211
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next209, 1000
  br i1 %exitcond841.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_header211 ]
  %107 = add nuw nsw i64 %polly.indvar214, %101
  %polly.access.mul.call2218 = mul nuw nsw i64 %107, 1000
  %polly.access.add.call2219 = add nuw nsw i64 %polly.access.mul.call2218, %polly.indvar208
  %polly.access.call2220 = getelementptr double, double* %polly.access.cast.call2634, i64 %polly.access.add.call2219
  %polly.access.call2220.load = load double, double* %polly.access.call2220, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar214, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2220.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header221:                             ; preds = %polly.loop_exit207, %polly.loop_exit229
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %polly.loop_exit229 ], [ %100, %polly.loop_exit207 ]
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %polly.loop_exit229 ], [ %99, %polly.loop_exit207 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ %106, %polly.loop_exit207 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv846, i64 0)
  %108 = add i64 %smax, %indvars.iv850
  %109 = mul nsw i64 %polly.indvar224, 100
  %110 = sub nsw i64 %101, %109
  %111 = icmp sgt i64 %110, 0
  %112 = select i1 %111, i64 %110, i64 0
  %polly.loop_guard237 = icmp slt i64 %112, 100
  br i1 %polly.loop_guard237, label %polly.loop_header227.us, label %polly.loop_exit229

polly.loop_header227.us:                          ; preds = %polly.loop_header221, %polly.loop_exit236.loopexit.us
  %polly.indvar230.us = phi i64 [ %polly.indvar_next231.us, %polly.loop_exit236.loopexit.us ], [ 0, %polly.loop_header221 ]
  %113 = shl nuw nsw i64 %polly.indvar230.us, 3
  %scevgep249.us = getelementptr i8, i8* %call1, i64 %113
  %polly.access.mul.Packed_MemRef_call2253.us = mul nuw nsw i64 %polly.indvar230.us, 1200
  br label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_exit244.us, %polly.loop_header227.us
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %polly.loop_exit244.us ], [ %108, %polly.loop_header227.us ]
  %polly.indvar238.us = phi i64 [ %polly.indvar_next239.us, %polly.loop_exit244.us ], [ %112, %polly.loop_header227.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv852, i64 255)
  %114 = add i64 %polly.indvar238.us, %109
  %115 = add i64 %114, %102
  %polly.loop_guard245.us936 = icmp sgt i64 %115, -1
  br i1 %polly.loop_guard245.us936, label %polly.loop_header242.preheader.us, label %polly.loop_exit244.us

polly.loop_header242.us:                          ; preds = %polly.loop_header242.preheader.us, %polly.loop_header242.us
  %polly.indvar246.us = phi i64 [ %polly.indvar_next247.us, %polly.loop_header242.us ], [ 0, %polly.loop_header242.preheader.us ]
  %116 = add nuw nsw i64 %polly.indvar246.us, %101
  %117 = mul nuw nsw i64 %116, 8000
  %scevgep250.us = getelementptr i8, i8* %scevgep249.us, i64 %117
  %scevgep250251.us = bitcast i8* %scevgep250.us to double*
  %_p_scalar_252.us = load double, double* %scevgep250251.us, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.us = fmul fast double %_p_scalar_256.us, %_p_scalar_252.us
  %polly.access.add.Packed_MemRef_call2258.us = add nuw nsw i64 %polly.indvar246.us, %polly.access.mul.Packed_MemRef_call2253.us
  %polly.access.Packed_MemRef_call2259.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2258.us
  %_p_scalar_260.us = load double, double* %polly.access.Packed_MemRef_call2259.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_264.us, %_p_scalar_260.us
  %118 = shl i64 %116, 3
  %119 = add i64 %118, %121
  %scevgep265.us = getelementptr i8, i8* %call, i64 %119
  %scevgep265266.us = bitcast i8* %scevgep265.us to double*
  %_p_scalar_267.us = load double, double* %scevgep265266.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_267.us
  store double %p_add42.i118.us, double* %scevgep265266.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next247.us = add nuw nsw i64 %polly.indvar246.us, 1
  %exitcond854.not = icmp eq i64 %polly.indvar246.us, %smin
  br i1 %exitcond854.not, label %polly.loop_exit244.us, label %polly.loop_header242.us

polly.loop_exit244.us:                            ; preds = %polly.loop_header242.us, %polly.loop_header234.us
  %polly.indvar_next239.us = add nuw nsw i64 %polly.indvar238.us, 1
  %polly.loop_cond240.us = icmp ult i64 %polly.indvar238.us, 99
  %indvars.iv.next853 = add i64 %indvars.iv852, 1
  br i1 %polly.loop_cond240.us, label %polly.loop_header234.us, label %polly.loop_exit236.loopexit.us

polly.loop_header242.preheader.us:                ; preds = %polly.loop_header234.us
  %polly.access.add.Packed_MemRef_call2254.us = add nsw i64 %polly.access.mul.Packed_MemRef_call2253.us, %115
  %polly.access.Packed_MemRef_call2255.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.us
  %_p_scalar_256.us = load double, double* %polly.access.Packed_MemRef_call2255.us, align 8
  %120 = mul i64 %114, 8000
  %scevgep262.us = getelementptr i8, i8* %scevgep249.us, i64 %120
  %scevgep262263.us = bitcast i8* %scevgep262.us to double*
  %_p_scalar_264.us = load double, double* %scevgep262263.us, align 8, !alias.scope !71, !noalias !78
  %121 = mul i64 %114, 9600
  br label %polly.loop_header242.us

polly.loop_exit236.loopexit.us:                   ; preds = %polly.loop_exit244.us
  %polly.indvar_next231.us = add nuw nsw i64 %polly.indvar230.us, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next231.us, 1000
  br i1 %exitcond855.not, label %polly.loop_exit229, label %polly.loop_header227.us

polly.loop_exit229:                               ; preds = %polly.loop_exit236.loopexit.us, %polly.loop_header221
  %polly.indvar_next225 = add nsw i64 %polly.indvar224, 1
  %polly.loop_cond226 = icmp slt i64 %polly.indvar224, 11
  %indvars.iv.next847 = add i64 %indvars.iv846, -100
  %indvars.iv.next851 = add i64 %indvars.iv850, 100
  br i1 %polly.loop_cond226, label %polly.loop_header221, label %polly.loop_exit223

polly.start270:                                   ; preds = %kernel_syr2k.exit
  %malloccall272 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header356

polly.exiting271:                                 ; preds = %polly.loop_exit398
  tail call void @free(i8* %malloccall272)
  br label %kernel_syr2k.exit90

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.start270
  %indvar1046 = phi i64 [ %indvar.next1047, %polly.loop_exit364 ], [ 0, %polly.start270 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 1, %polly.start270 ]
  %122 = add i64 %indvar1046, 1
  %123 = mul nuw nsw i64 %polly.indvar359, 9600
  %scevgep368 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check1048 = icmp ult i64 %122, 4
  br i1 %min.iters.check1048, label %polly.loop_header362.preheader, label %vector.ph1049

vector.ph1049:                                    ; preds = %polly.loop_header356
  %n.vec1051 = and i64 %122, -4
  br label %vector.body1045

vector.body1045:                                  ; preds = %vector.body1045, %vector.ph1049
  %index1052 = phi i64 [ 0, %vector.ph1049 ], [ %index.next1053, %vector.body1045 ]
  %124 = shl nuw nsw i64 %index1052, 3
  %125 = getelementptr i8, i8* %scevgep368, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1056 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !79, !noalias !81
  %127 = fmul fast <4 x double> %wide.load1056, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !79, !noalias !81
  %index.next1053 = add i64 %index1052, 4
  %129 = icmp eq i64 %index.next1053, %n.vec1051
  br i1 %129, label %middle.block1043, label %vector.body1045, !llvm.loop !85

middle.block1043:                                 ; preds = %vector.body1045
  %cmp.n1055 = icmp eq i64 %122, %n.vec1051
  br i1 %cmp.n1055, label %polly.loop_exit364, label %polly.loop_header362.preheader

polly.loop_header362.preheader:                   ; preds = %polly.loop_header356, %middle.block1043
  %polly.indvar365.ph = phi i64 [ 0, %polly.loop_header356 ], [ %n.vec1051, %middle.block1043 ]
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_header362, %middle.block1043
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next360, 1200
  %indvar.next1047 = add i64 %indvar1046, 1
  br i1 %exitcond881.not, label %polly.loop_header372.preheader, label %polly.loop_header356

polly.loop_header372.preheader:                   ; preds = %polly.loop_exit364
  %Packed_MemRef_call2273 = bitcast i8* %malloccall272 to double*
  br label %polly.loop_header372

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_header362
  %polly.indvar365 = phi i64 [ %polly.indvar_next366, %polly.loop_header362 ], [ %polly.indvar365.ph, %polly.loop_header362.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep369 = getelementptr i8, i8* %scevgep368, i64 %130
  %scevgep369370 = bitcast i8* %scevgep369 to double*
  %_p_scalar_371 = load double, double* %scevgep369370, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_371, 1.200000e+00
  store double %p_mul.i57, double* %scevgep369370, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next366, %polly.indvar359
  br i1 %exitcond880.not, label %polly.loop_exit364, label %polly.loop_header362, !llvm.loop !86

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_exit398
  %indvars.iv870 = phi i64 [ 0, %polly.loop_header372.preheader ], [ %indvars.iv.next871, %polly.loop_exit398 ]
  %indvars.iv865 = phi i64 [ 24, %polly.loop_header372.preheader ], [ %indvars.iv.next866, %polly.loop_exit398 ]
  %indvars.iv863 = phi i64 [ 0, %polly.loop_header372.preheader ], [ %indvars.iv.next864, %polly.loop_exit398 ]
  %indvars.iv859 = phi i64 [ 1200, %polly.loop_header372.preheader ], [ %indvars.iv.next860, %polly.loop_exit398 ]
  %polly.indvar375 = phi i64 [ 0, %polly.loop_header372.preheader ], [ %polly.indvar_next376, %polly.loop_exit398 ]
  %131 = udiv i64 %indvars.iv865, 25
  %132 = mul nuw nsw i64 %131, 100
  %133 = add i64 %indvars.iv863, %132
  %134 = sub nsw i64 %indvars.iv870, %132
  %135 = shl nsw i64 %polly.indvar375, 8
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_exit386
  %136 = mul nsw i64 %polly.indvar375, -256
  %137 = mul nuw nsw i64 %polly.indvar375, 3
  %138 = mul nuw nsw i64 %polly.indvar375, 11
  %139 = add nuw nsw i64 %138, 24
  %pexp.p_div_q394 = udiv i64 %139, 25
  %140 = sub nsw i64 %137, %pexp.p_div_q394
  %polly.loop_guard399 = icmp slt i64 %140, 12
  br i1 %polly.loop_guard399, label %polly.loop_header396, label %polly.loop_exit398

polly.loop_exit398:                               ; preds = %polly.loop_exit405, %polly.loop_exit380
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %indvars.iv.next860 = add nsw i64 %indvars.iv859, -256
  %indvars.iv.next864 = add nsw i64 %indvars.iv863, -44
  %indvars.iv.next866 = add nuw nsw i64 %indvars.iv865, 11
  %indvars.iv.next871 = add nuw nsw i64 %indvars.iv870, 44
  %exitcond879.not = icmp eq i64 %polly.indvar_next376, 5
  br i1 %exitcond879.not, label %polly.exiting271, label %polly.loop_header372

polly.loop_header378:                             ; preds = %polly.loop_exit386, %polly.loop_header372
  %polly.indvar381 = phi i64 [ 0, %polly.loop_header372 ], [ %polly.indvar_next382, %polly.loop_exit386 ]
  %polly.access.mul.Packed_MemRef_call2273 = mul nuw nsw i64 %polly.indvar381, 1200
  br label %polly.loop_header384

polly.loop_exit386:                               ; preds = %polly.loop_header384
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next382, 1000
  br i1 %exitcond862.not, label %polly.loop_exit380, label %polly.loop_header378

polly.loop_header384:                             ; preds = %polly.loop_header384, %polly.loop_header378
  %polly.indvar387 = phi i64 [ 0, %polly.loop_header378 ], [ %polly.indvar_next388, %polly.loop_header384 ]
  %141 = add nuw nsw i64 %polly.indvar387, %135
  %polly.access.mul.call2391 = mul nuw nsw i64 %141, 1000
  %polly.access.add.call2392 = add nuw nsw i64 %polly.access.mul.call2391, %polly.indvar381
  %polly.access.call2393 = getelementptr double, double* %polly.access.cast.call2634, i64 %polly.access.add.call2392
  %polly.access.call2393.load = load double, double* %polly.access.call2393, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2273 = add nuw nsw i64 %polly.indvar387, %polly.access.mul.Packed_MemRef_call2273
  %polly.access.Packed_MemRef_call2273 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273
  store double %polly.access.call2393.load, double* %polly.access.Packed_MemRef_call2273, align 8
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next388, %indvars.iv859
  br i1 %exitcond861.not, label %polly.loop_exit386, label %polly.loop_header384

polly.loop_header396:                             ; preds = %polly.loop_exit380, %polly.loop_exit405
  %indvars.iv872 = phi i64 [ %indvars.iv.next873, %polly.loop_exit405 ], [ %134, %polly.loop_exit380 ]
  %indvars.iv867 = phi i64 [ %indvars.iv.next868, %polly.loop_exit405 ], [ %133, %polly.loop_exit380 ]
  %polly.indvar400 = phi i64 [ %polly.indvar_next401, %polly.loop_exit405 ], [ %140, %polly.loop_exit380 ]
  %smax869 = call i64 @llvm.smax.i64(i64 %indvars.iv867, i64 0)
  %142 = add i64 %smax869, %indvars.iv872
  %143 = mul nsw i64 %polly.indvar400, 100
  %144 = sub nsw i64 %135, %143
  %145 = icmp sgt i64 %144, 0
  %146 = select i1 %145, i64 %144, i64 0
  %polly.loop_guard413 = icmp slt i64 %146, 100
  br i1 %polly.loop_guard413, label %polly.loop_header403.us, label %polly.loop_exit405

polly.loop_header403.us:                          ; preds = %polly.loop_header396, %polly.loop_exit412.loopexit.us
  %polly.indvar406.us = phi i64 [ %polly.indvar_next407.us, %polly.loop_exit412.loopexit.us ], [ 0, %polly.loop_header396 ]
  %147 = shl nuw nsw i64 %polly.indvar406.us, 3
  %scevgep425.us = getelementptr i8, i8* %call1, i64 %147
  %polly.access.mul.Packed_MemRef_call2273429.us = mul nuw nsw i64 %polly.indvar406.us, 1200
  br label %polly.loop_header410.us

polly.loop_header410.us:                          ; preds = %polly.loop_exit420.us, %polly.loop_header403.us
  %indvars.iv874 = phi i64 [ %indvars.iv.next875, %polly.loop_exit420.us ], [ %142, %polly.loop_header403.us ]
  %polly.indvar414.us = phi i64 [ %polly.indvar_next415.us, %polly.loop_exit420.us ], [ %146, %polly.loop_header403.us ]
  %smin876 = call i64 @llvm.smin.i64(i64 %indvars.iv874, i64 255)
  %148 = add i64 %polly.indvar414.us, %143
  %149 = add i64 %148, %136
  %polly.loop_guard421.us937 = icmp sgt i64 %149, -1
  br i1 %polly.loop_guard421.us937, label %polly.loop_header418.preheader.us, label %polly.loop_exit420.us

polly.loop_header418.us:                          ; preds = %polly.loop_header418.preheader.us, %polly.loop_header418.us
  %polly.indvar422.us = phi i64 [ %polly.indvar_next423.us, %polly.loop_header418.us ], [ 0, %polly.loop_header418.preheader.us ]
  %150 = add nuw nsw i64 %polly.indvar422.us, %135
  %151 = mul nuw nsw i64 %150, 8000
  %scevgep426.us = getelementptr i8, i8* %scevgep425.us, i64 %151
  %scevgep426427.us = bitcast i8* %scevgep426.us to double*
  %_p_scalar_428.us = load double, double* %scevgep426427.us, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.us = fmul fast double %_p_scalar_432.us, %_p_scalar_428.us
  %polly.access.add.Packed_MemRef_call2273434.us = add nuw nsw i64 %polly.indvar422.us, %polly.access.mul.Packed_MemRef_call2273429.us
  %polly.access.Packed_MemRef_call2273435.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273434.us
  %_p_scalar_436.us = load double, double* %polly.access.Packed_MemRef_call2273435.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_440.us, %_p_scalar_436.us
  %152 = shl i64 %150, 3
  %153 = add i64 %152, %155
  %scevgep441.us = getelementptr i8, i8* %call, i64 %153
  %scevgep441442.us = bitcast i8* %scevgep441.us to double*
  %_p_scalar_443.us = load double, double* %scevgep441442.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_443.us
  store double %p_add42.i79.us, double* %scevgep441442.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next423.us = add nuw nsw i64 %polly.indvar422.us, 1
  %exitcond877.not = icmp eq i64 %polly.indvar422.us, %smin876
  br i1 %exitcond877.not, label %polly.loop_exit420.us, label %polly.loop_header418.us

polly.loop_exit420.us:                            ; preds = %polly.loop_header418.us, %polly.loop_header410.us
  %polly.indvar_next415.us = add nuw nsw i64 %polly.indvar414.us, 1
  %polly.loop_cond416.us = icmp ult i64 %polly.indvar414.us, 99
  %indvars.iv.next875 = add i64 %indvars.iv874, 1
  br i1 %polly.loop_cond416.us, label %polly.loop_header410.us, label %polly.loop_exit412.loopexit.us

polly.loop_header418.preheader.us:                ; preds = %polly.loop_header410.us
  %polly.access.add.Packed_MemRef_call2273430.us = add nsw i64 %polly.access.mul.Packed_MemRef_call2273429.us, %149
  %polly.access.Packed_MemRef_call2273431.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273430.us
  %_p_scalar_432.us = load double, double* %polly.access.Packed_MemRef_call2273431.us, align 8
  %154 = mul i64 %148, 8000
  %scevgep438.us = getelementptr i8, i8* %scevgep425.us, i64 %154
  %scevgep438439.us = bitcast i8* %scevgep438.us to double*
  %_p_scalar_440.us = load double, double* %scevgep438439.us, align 8, !alias.scope !82, !noalias !88
  %155 = mul i64 %148, 9600
  br label %polly.loop_header418.us

polly.loop_exit412.loopexit.us:                   ; preds = %polly.loop_exit420.us
  %polly.indvar_next407.us = add nuw nsw i64 %polly.indvar406.us, 1
  %exitcond878.not = icmp eq i64 %polly.indvar_next407.us, 1000
  br i1 %exitcond878.not, label %polly.loop_exit405, label %polly.loop_header403.us

polly.loop_exit405:                               ; preds = %polly.loop_exit412.loopexit.us, %polly.loop_header396
  %polly.indvar_next401 = add nsw i64 %polly.indvar400, 1
  %polly.loop_cond402 = icmp slt i64 %polly.indvar400, 11
  %indvars.iv.next868 = add i64 %indvars.iv867, -100
  %indvars.iv.next873 = add i64 %indvars.iv872, 100
  br i1 %polly.loop_cond402, label %polly.loop_header396, label %polly.loop_exit398

polly.start446:                                   ; preds = %init_array.exit
  %malloccall448 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header532

polly.exiting447:                                 ; preds = %polly.loop_exit574
  tail call void @free(i8* %malloccall448)
  br label %kernel_syr2k.exit

polly.loop_header532:                             ; preds = %polly.loop_exit540, %polly.start446
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit540 ], [ 0, %polly.start446 ]
  %polly.indvar535 = phi i64 [ %polly.indvar_next536, %polly.loop_exit540 ], [ 1, %polly.start446 ]
  %156 = add i64 %indvar, 1
  %157 = mul nuw nsw i64 %polly.indvar535, 9600
  %scevgep544 = getelementptr i8, i8* %call, i64 %157
  %min.iters.check1022 = icmp ult i64 %156, 4
  br i1 %min.iters.check1022, label %polly.loop_header538.preheader, label %vector.ph1023

vector.ph1023:                                    ; preds = %polly.loop_header532
  %n.vec1025 = and i64 %156, -4
  br label %vector.body1021

vector.body1021:                                  ; preds = %vector.body1021, %vector.ph1023
  %index1026 = phi i64 [ 0, %vector.ph1023 ], [ %index.next1027, %vector.body1021 ]
  %158 = shl nuw nsw i64 %index1026, 3
  %159 = getelementptr i8, i8* %scevgep544, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load1030 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !89, !noalias !91
  %161 = fmul fast <4 x double> %wide.load1030, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %162 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !89, !noalias !91
  %index.next1027 = add i64 %index1026, 4
  %163 = icmp eq i64 %index.next1027, %n.vec1025
  br i1 %163, label %middle.block1019, label %vector.body1021, !llvm.loop !95

middle.block1019:                                 ; preds = %vector.body1021
  %cmp.n1029 = icmp eq i64 %156, %n.vec1025
  br i1 %cmp.n1029, label %polly.loop_exit540, label %polly.loop_header538.preheader

polly.loop_header538.preheader:                   ; preds = %polly.loop_header532, %middle.block1019
  %polly.indvar541.ph = phi i64 [ 0, %polly.loop_header532 ], [ %n.vec1025, %middle.block1019 ]
  br label %polly.loop_header538

polly.loop_exit540:                               ; preds = %polly.loop_header538, %middle.block1019
  %polly.indvar_next536 = add nuw nsw i64 %polly.indvar535, 1
  %exitcond904.not = icmp eq i64 %polly.indvar_next536, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond904.not, label %polly.loop_header548.preheader, label %polly.loop_header532

polly.loop_header548.preheader:                   ; preds = %polly.loop_exit540
  %Packed_MemRef_call2449 = bitcast i8* %malloccall448 to double*
  br label %polly.loop_header548

polly.loop_header538:                             ; preds = %polly.loop_header538.preheader, %polly.loop_header538
  %polly.indvar541 = phi i64 [ %polly.indvar_next542, %polly.loop_header538 ], [ %polly.indvar541.ph, %polly.loop_header538.preheader ]
  %164 = shl nuw nsw i64 %polly.indvar541, 3
  %scevgep545 = getelementptr i8, i8* %scevgep544, i64 %164
  %scevgep545546 = bitcast i8* %scevgep545 to double*
  %_p_scalar_547 = load double, double* %scevgep545546, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_547, 1.200000e+00
  store double %p_mul.i, double* %scevgep545546, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next542 = add nuw nsw i64 %polly.indvar541, 1
  %exitcond903.not = icmp eq i64 %polly.indvar_next542, %polly.indvar535
  br i1 %exitcond903.not, label %polly.loop_exit540, label %polly.loop_header538, !llvm.loop !96

polly.loop_header548:                             ; preds = %polly.loop_header548.preheader, %polly.loop_exit574
  %indvars.iv893 = phi i64 [ 0, %polly.loop_header548.preheader ], [ %indvars.iv.next894, %polly.loop_exit574 ]
  %indvars.iv888 = phi i64 [ 24, %polly.loop_header548.preheader ], [ %indvars.iv.next889, %polly.loop_exit574 ]
  %indvars.iv886 = phi i64 [ 0, %polly.loop_header548.preheader ], [ %indvars.iv.next887, %polly.loop_exit574 ]
  %indvars.iv882 = phi i64 [ 1200, %polly.loop_header548.preheader ], [ %indvars.iv.next883, %polly.loop_exit574 ]
  %polly.indvar551 = phi i64 [ 0, %polly.loop_header548.preheader ], [ %polly.indvar_next552, %polly.loop_exit574 ]
  %165 = udiv i64 %indvars.iv888, 25
  %166 = mul nuw nsw i64 %165, 100
  %167 = add i64 %indvars.iv886, %166
  %168 = sub nsw i64 %indvars.iv893, %166
  %169 = shl nsw i64 %polly.indvar551, 8
  br label %polly.loop_header554

polly.loop_exit556:                               ; preds = %polly.loop_exit562
  %170 = mul nsw i64 %polly.indvar551, -256
  %171 = mul nuw nsw i64 %polly.indvar551, 3
  %172 = mul nuw nsw i64 %polly.indvar551, 11
  %173 = add nuw nsw i64 %172, 24
  %pexp.p_div_q570 = udiv i64 %173, 25
  %174 = sub nsw i64 %171, %pexp.p_div_q570
  %polly.loop_guard575 = icmp slt i64 %174, 12
  br i1 %polly.loop_guard575, label %polly.loop_header572, label %polly.loop_exit574

polly.loop_exit574:                               ; preds = %polly.loop_exit581, %polly.loop_exit556
  %polly.indvar_next552 = add nuw nsw i64 %polly.indvar551, 1
  %indvars.iv.next883 = add nsw i64 %indvars.iv882, -256
  %indvars.iv.next887 = add nsw i64 %indvars.iv886, -44
  %indvars.iv.next889 = add nuw nsw i64 %indvars.iv888, 11
  %indvars.iv.next894 = add nuw nsw i64 %indvars.iv893, 44
  %exitcond902.not = icmp eq i64 %polly.indvar_next552, 5
  br i1 %exitcond902.not, label %polly.exiting447, label %polly.loop_header548

polly.loop_header554:                             ; preds = %polly.loop_exit562, %polly.loop_header548
  %polly.indvar557 = phi i64 [ 0, %polly.loop_header548 ], [ %polly.indvar_next558, %polly.loop_exit562 ]
  %polly.access.mul.Packed_MemRef_call2449 = mul nuw nsw i64 %polly.indvar557, 1200
  br label %polly.loop_header560

polly.loop_exit562:                               ; preds = %polly.loop_header560
  %polly.indvar_next558 = add nuw nsw i64 %polly.indvar557, 1
  %exitcond885.not = icmp eq i64 %polly.indvar_next558, 1000
  br i1 %exitcond885.not, label %polly.loop_exit556, label %polly.loop_header554

polly.loop_header560:                             ; preds = %polly.loop_header560, %polly.loop_header554
  %polly.indvar563 = phi i64 [ 0, %polly.loop_header554 ], [ %polly.indvar_next564, %polly.loop_header560 ]
  %175 = add nuw nsw i64 %polly.indvar563, %169
  %polly.access.mul.call2567 = mul nuw nsw i64 %175, 1000
  %polly.access.add.call2568 = add nuw nsw i64 %polly.access.mul.call2567, %polly.indvar557
  %polly.access.call2569 = getelementptr double, double* %polly.access.cast.call2634, i64 %polly.access.add.call2568
  %polly.access.call2569.load = load double, double* %polly.access.call2569, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2449 = add nuw nsw i64 %polly.indvar563, %polly.access.mul.Packed_MemRef_call2449
  %polly.access.Packed_MemRef_call2449 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449
  store double %polly.access.call2569.load, double* %polly.access.Packed_MemRef_call2449, align 8
  %polly.indvar_next564 = add nuw nsw i64 %polly.indvar563, 1
  %exitcond884.not = icmp eq i64 %polly.indvar_next564, %indvars.iv882
  br i1 %exitcond884.not, label %polly.loop_exit562, label %polly.loop_header560

polly.loop_header572:                             ; preds = %polly.loop_exit556, %polly.loop_exit581
  %indvars.iv895 = phi i64 [ %indvars.iv.next896, %polly.loop_exit581 ], [ %168, %polly.loop_exit556 ]
  %indvars.iv890 = phi i64 [ %indvars.iv.next891, %polly.loop_exit581 ], [ %167, %polly.loop_exit556 ]
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit581 ], [ %174, %polly.loop_exit556 ]
  %smax892 = call i64 @llvm.smax.i64(i64 %indvars.iv890, i64 0)
  %176 = add i64 %smax892, %indvars.iv895
  %177 = mul nsw i64 %polly.indvar576, 100
  %178 = sub nsw i64 %169, %177
  %179 = icmp sgt i64 %178, 0
  %180 = select i1 %179, i64 %178, i64 0
  %polly.loop_guard589 = icmp slt i64 %180, 100
  br i1 %polly.loop_guard589, label %polly.loop_header579.us, label %polly.loop_exit581

polly.loop_header579.us:                          ; preds = %polly.loop_header572, %polly.loop_exit588.loopexit.us
  %polly.indvar582.us = phi i64 [ %polly.indvar_next583.us, %polly.loop_exit588.loopexit.us ], [ 0, %polly.loop_header572 ]
  %181 = shl nuw nsw i64 %polly.indvar582.us, 3
  %scevgep601.us = getelementptr i8, i8* %call1, i64 %181
  %polly.access.mul.Packed_MemRef_call2449605.us = mul nuw nsw i64 %polly.indvar582.us, 1200
  br label %polly.loop_header586.us

polly.loop_header586.us:                          ; preds = %polly.loop_exit596.us, %polly.loop_header579.us
  %indvars.iv897 = phi i64 [ %indvars.iv.next898, %polly.loop_exit596.us ], [ %176, %polly.loop_header579.us ]
  %polly.indvar590.us = phi i64 [ %polly.indvar_next591.us, %polly.loop_exit596.us ], [ %180, %polly.loop_header579.us ]
  %smin899 = call i64 @llvm.smin.i64(i64 %indvars.iv897, i64 255)
  %182 = add i64 %polly.indvar590.us, %177
  %183 = add i64 %182, %170
  %polly.loop_guard597.us938 = icmp sgt i64 %183, -1
  br i1 %polly.loop_guard597.us938, label %polly.loop_header594.preheader.us, label %polly.loop_exit596.us

polly.loop_header594.us:                          ; preds = %polly.loop_header594.preheader.us, %polly.loop_header594.us
  %polly.indvar598.us = phi i64 [ %polly.indvar_next599.us, %polly.loop_header594.us ], [ 0, %polly.loop_header594.preheader.us ]
  %184 = add nuw nsw i64 %polly.indvar598.us, %169
  %185 = mul nuw nsw i64 %184, 8000
  %scevgep602.us = getelementptr i8, i8* %scevgep601.us, i64 %185
  %scevgep602603.us = bitcast i8* %scevgep602.us to double*
  %_p_scalar_604.us = load double, double* %scevgep602603.us, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.us = fmul fast double %_p_scalar_608.us, %_p_scalar_604.us
  %polly.access.add.Packed_MemRef_call2449610.us = add nuw nsw i64 %polly.indvar598.us, %polly.access.mul.Packed_MemRef_call2449605.us
  %polly.access.Packed_MemRef_call2449611.us = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449610.us
  %_p_scalar_612.us = load double, double* %polly.access.Packed_MemRef_call2449611.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_616.us, %_p_scalar_612.us
  %186 = shl i64 %184, 3
  %187 = add i64 %186, %189
  %scevgep617.us = getelementptr i8, i8* %call, i64 %187
  %scevgep617618.us = bitcast i8* %scevgep617.us to double*
  %_p_scalar_619.us = load double, double* %scevgep617618.us, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_619.us
  store double %p_add42.i.us, double* %scevgep617618.us, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next599.us = add nuw nsw i64 %polly.indvar598.us, 1
  %exitcond900.not = icmp eq i64 %polly.indvar598.us, %smin899
  br i1 %exitcond900.not, label %polly.loop_exit596.us, label %polly.loop_header594.us

polly.loop_exit596.us:                            ; preds = %polly.loop_header594.us, %polly.loop_header586.us
  %polly.indvar_next591.us = add nuw nsw i64 %polly.indvar590.us, 1
  %polly.loop_cond592.us = icmp ult i64 %polly.indvar590.us, 99
  %indvars.iv.next898 = add i64 %indvars.iv897, 1
  br i1 %polly.loop_cond592.us, label %polly.loop_header586.us, label %polly.loop_exit588.loopexit.us

polly.loop_header594.preheader.us:                ; preds = %polly.loop_header586.us
  %polly.access.add.Packed_MemRef_call2449606.us = add nsw i64 %polly.access.mul.Packed_MemRef_call2449605.us, %183
  %polly.access.Packed_MemRef_call2449607.us = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449606.us
  %_p_scalar_608.us = load double, double* %polly.access.Packed_MemRef_call2449607.us, align 8
  %188 = mul i64 %182, 8000
  %scevgep614.us = getelementptr i8, i8* %scevgep601.us, i64 %188
  %scevgep614615.us = bitcast i8* %scevgep614.us to double*
  %_p_scalar_616.us = load double, double* %scevgep614615.us, align 8, !alias.scope !92, !noalias !98
  %189 = mul i64 %182, 9600
  br label %polly.loop_header594.us

polly.loop_exit588.loopexit.us:                   ; preds = %polly.loop_exit596.us
  %polly.indvar_next583.us = add nuw nsw i64 %polly.indvar582.us, 1
  %exitcond901.not = icmp eq i64 %polly.indvar_next583.us, 1000
  br i1 %exitcond901.not, label %polly.loop_exit581, label %polly.loop_header579.us

polly.loop_exit581:                               ; preds = %polly.loop_exit588.loopexit.us, %polly.loop_header572
  %polly.indvar_next577 = add nsw i64 %polly.indvar576, 1
  %polly.loop_cond578 = icmp slt i64 %polly.indvar576, 11
  %indvars.iv.next891 = add i64 %indvars.iv890, -100
  %indvars.iv.next896 = add i64 %indvars.iv895, 100
  br i1 %polly.loop_cond578, label %polly.loop_header572, label %polly.loop_exit574

polly.loop_header746:                             ; preds = %entry, %polly.loop_exit754
  %indvars.iv929 = phi i64 [ %indvars.iv.next930, %polly.loop_exit754 ], [ 0, %entry ]
  %polly.indvar749 = phi i64 [ %polly.indvar_next750, %polly.loop_exit754 ], [ 0, %entry ]
  %smin931 = call i64 @llvm.smin.i64(i64 %indvars.iv929, i64 -1168)
  %190 = shl nsw i64 %polly.indvar749, 5
  %191 = add nsw i64 %smin931, 1199
  br label %polly.loop_header752

polly.loop_exit754:                               ; preds = %polly.loop_exit760
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %indvars.iv.next930 = add nsw i64 %indvars.iv929, -32
  %exitcond934.not = icmp eq i64 %polly.indvar_next750, 38
  br i1 %exitcond934.not, label %polly.loop_header773, label %polly.loop_header746

polly.loop_header752:                             ; preds = %polly.loop_exit760, %polly.loop_header746
  %indvars.iv925 = phi i64 [ %indvars.iv.next926, %polly.loop_exit760 ], [ 0, %polly.loop_header746 ]
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %polly.loop_header746 ]
  %192 = mul nsw i64 %polly.indvar755, -32
  %smin960 = call i64 @llvm.smin.i64(i64 %192, i64 -1168)
  %193 = add nsw i64 %smin960, 1200
  %smin927 = call i64 @llvm.smin.i64(i64 %indvars.iv925, i64 -1168)
  %194 = shl nsw i64 %polly.indvar755, 5
  %195 = add nsw i64 %smin927, 1199
  br label %polly.loop_header758

polly.loop_exit760:                               ; preds = %polly.loop_exit766
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %indvars.iv.next926 = add nsw i64 %indvars.iv925, -32
  %exitcond933.not = icmp eq i64 %polly.indvar_next756, 38
  br i1 %exitcond933.not, label %polly.loop_exit754, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_exit766, %polly.loop_header752
  %polly.indvar761 = phi i64 [ 0, %polly.loop_header752 ], [ %polly.indvar_next762, %polly.loop_exit766 ]
  %196 = add nuw nsw i64 %polly.indvar761, %190
  %197 = trunc i64 %196 to i32
  %198 = mul nuw nsw i64 %196, 9600
  %min.iters.check = icmp eq i64 %193, 0
  br i1 %min.iters.check, label %polly.loop_header764, label %vector.ph961

vector.ph961:                                     ; preds = %polly.loop_header758
  %broadcast.splatinsert968 = insertelement <4 x i64> poison, i64 %194, i32 0
  %broadcast.splat969 = shufflevector <4 x i64> %broadcast.splatinsert968, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert970 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat971 = shufflevector <4 x i32> %broadcast.splatinsert970, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body959

vector.body959:                                   ; preds = %vector.body959, %vector.ph961
  %index962 = phi i64 [ 0, %vector.ph961 ], [ %index.next963, %vector.body959 ]
  %vec.ind966 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph961 ], [ %vec.ind.next967, %vector.body959 ]
  %199 = add nuw nsw <4 x i64> %vec.ind966, %broadcast.splat969
  %200 = trunc <4 x i64> %199 to <4 x i32>
  %201 = mul <4 x i32> %broadcast.splat971, %200
  %202 = add <4 x i32> %201, <i32 3, i32 3, i32 3, i32 3>
  %203 = urem <4 x i32> %202, <i32 1200, i32 1200, i32 1200, i32 1200>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %206 = extractelement <4 x i64> %199, i32 0
  %207 = shl i64 %206, 3
  %208 = add nuw nsw i64 %207, %198
  %209 = getelementptr i8, i8* %call, i64 %208
  %210 = bitcast i8* %209 to <4 x double>*
  store <4 x double> %205, <4 x double>* %210, align 8, !alias.scope !99, !noalias !101
  %index.next963 = add i64 %index962, 4
  %vec.ind.next967 = add <4 x i64> %vec.ind966, <i64 4, i64 4, i64 4, i64 4>
  %211 = icmp eq i64 %index.next963, %193
  br i1 %211, label %polly.loop_exit766, label %vector.body959, !llvm.loop !104

polly.loop_exit766:                               ; preds = %vector.body959, %polly.loop_header764
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %exitcond932.not = icmp eq i64 %polly.indvar761, %191
  br i1 %exitcond932.not, label %polly.loop_exit760, label %polly.loop_header758

polly.loop_header764:                             ; preds = %polly.loop_header758, %polly.loop_header764
  %polly.indvar767 = phi i64 [ %polly.indvar_next768, %polly.loop_header764 ], [ 0, %polly.loop_header758 ]
  %212 = add nuw nsw i64 %polly.indvar767, %194
  %213 = trunc i64 %212 to i32
  %214 = mul i32 %213, %197
  %215 = add i32 %214, 3
  %216 = urem i32 %215, 1200
  %p_conv31.i = sitofp i32 %216 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %217 = shl i64 %212, 3
  %218 = add nuw nsw i64 %217, %198
  %scevgep770 = getelementptr i8, i8* %call, i64 %218
  %scevgep770771 = bitcast i8* %scevgep770 to double*
  store double %p_div33.i, double* %scevgep770771, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next768 = add nuw nsw i64 %polly.indvar767, 1
  %exitcond928.not = icmp eq i64 %polly.indvar767, %195
  br i1 %exitcond928.not, label %polly.loop_exit766, label %polly.loop_header764, !llvm.loop !105

polly.loop_header773:                             ; preds = %polly.loop_exit754, %polly.loop_exit781
  %indvars.iv919 = phi i64 [ %indvars.iv.next920, %polly.loop_exit781 ], [ 0, %polly.loop_exit754 ]
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_exit754 ]
  %smin921 = call i64 @llvm.smin.i64(i64 %indvars.iv919, i64 -1168)
  %219 = shl nsw i64 %polly.indvar776, 5
  %220 = add nsw i64 %smin921, 1199
  br label %polly.loop_header779

polly.loop_exit781:                               ; preds = %polly.loop_exit787
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %indvars.iv.next920 = add nsw i64 %indvars.iv919, -32
  %exitcond924.not = icmp eq i64 %polly.indvar_next777, 38
  br i1 %exitcond924.not, label %polly.loop_header799, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_exit787, %polly.loop_header773
  %indvars.iv915 = phi i64 [ %indvars.iv.next916, %polly.loop_exit787 ], [ 0, %polly.loop_header773 ]
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %polly.loop_header773 ]
  %221 = mul nsw i64 %polly.indvar782, -32
  %smin975 = call i64 @llvm.smin.i64(i64 %221, i64 -968)
  %222 = add nsw i64 %smin975, 1000
  %smin917 = call i64 @llvm.smin.i64(i64 %indvars.iv915, i64 -968)
  %223 = shl nsw i64 %polly.indvar782, 5
  %224 = add nsw i64 %smin917, 999
  br label %polly.loop_header785

polly.loop_exit787:                               ; preds = %polly.loop_exit793
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %indvars.iv.next916 = add nsw i64 %indvars.iv915, -32
  %exitcond923.not = icmp eq i64 %polly.indvar_next783, 32
  br i1 %exitcond923.not, label %polly.loop_exit781, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_exit793, %polly.loop_header779
  %polly.indvar788 = phi i64 [ 0, %polly.loop_header779 ], [ %polly.indvar_next789, %polly.loop_exit793 ]
  %225 = add nuw nsw i64 %polly.indvar788, %219
  %226 = trunc i64 %225 to i32
  %227 = mul nuw nsw i64 %225, 8000
  %min.iters.check976 = icmp eq i64 %222, 0
  br i1 %min.iters.check976, label %polly.loop_header791, label %vector.ph977

vector.ph977:                                     ; preds = %polly.loop_header785
  %broadcast.splatinsert986 = insertelement <4 x i64> poison, i64 %223, i32 0
  %broadcast.splat987 = shufflevector <4 x i64> %broadcast.splatinsert986, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert988 = insertelement <4 x i32> poison, i32 %226, i32 0
  %broadcast.splat989 = shufflevector <4 x i32> %broadcast.splatinsert988, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body974

vector.body974:                                   ; preds = %vector.body974, %vector.ph977
  %index980 = phi i64 [ 0, %vector.ph977 ], [ %index.next981, %vector.body974 ]
  %vec.ind984 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph977 ], [ %vec.ind.next985, %vector.body974 ]
  %228 = add nuw nsw <4 x i64> %vec.ind984, %broadcast.splat987
  %229 = trunc <4 x i64> %228 to <4 x i32>
  %230 = mul <4 x i32> %broadcast.splat989, %229
  %231 = add <4 x i32> %230, <i32 2, i32 2, i32 2, i32 2>
  %232 = urem <4 x i32> %231, <i32 1000, i32 1000, i32 1000, i32 1000>
  %233 = sitofp <4 x i32> %232 to <4 x double>
  %234 = fmul fast <4 x double> %233, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %235 = extractelement <4 x i64> %228, i32 0
  %236 = shl i64 %235, 3
  %237 = add nuw nsw i64 %236, %227
  %238 = getelementptr i8, i8* %call2, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %234, <4 x double>* %239, align 8, !alias.scope !103, !noalias !106
  %index.next981 = add i64 %index980, 4
  %vec.ind.next985 = add <4 x i64> %vec.ind984, <i64 4, i64 4, i64 4, i64 4>
  %240 = icmp eq i64 %index.next981, %222
  br i1 %240, label %polly.loop_exit793, label %vector.body974, !llvm.loop !107

polly.loop_exit793:                               ; preds = %vector.body974, %polly.loop_header791
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond922.not = icmp eq i64 %polly.indvar788, %220
  br i1 %exitcond922.not, label %polly.loop_exit787, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_header785, %polly.loop_header791
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_header791 ], [ 0, %polly.loop_header785 ]
  %241 = add nuw nsw i64 %polly.indvar794, %223
  %242 = trunc i64 %241 to i32
  %243 = mul i32 %242, %226
  %244 = add i32 %243, 2
  %245 = urem i32 %244, 1000
  %p_conv10.i = sitofp i32 %245 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %246 = shl i64 %241, 3
  %247 = add nuw nsw i64 %246, %227
  %scevgep797 = getelementptr i8, i8* %call2, i64 %247
  %scevgep797798 = bitcast i8* %scevgep797 to double*
  store double %p_div12.i, double* %scevgep797798, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond918.not = icmp eq i64 %polly.indvar794, %224
  br i1 %exitcond918.not, label %polly.loop_exit793, label %polly.loop_header791, !llvm.loop !108

polly.loop_header799:                             ; preds = %polly.loop_exit781, %polly.loop_exit807
  %indvars.iv909 = phi i64 [ %indvars.iv.next910, %polly.loop_exit807 ], [ 0, %polly.loop_exit781 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_exit781 ]
  %smin911 = call i64 @llvm.smin.i64(i64 %indvars.iv909, i64 -1168)
  %248 = shl nsw i64 %polly.indvar802, 5
  %249 = add nsw i64 %smin911, 1199
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next910 = add nsw i64 %indvars.iv909, -32
  %exitcond914.not = icmp eq i64 %polly.indvar_next803, 38
  br i1 %exitcond914.not, label %init_array.exit, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %indvars.iv905 = phi i64 [ %indvars.iv.next906, %polly.loop_exit813 ], [ 0, %polly.loop_header799 ]
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_header799 ]
  %250 = mul nsw i64 %polly.indvar808, -32
  %smin993 = call i64 @llvm.smin.i64(i64 %250, i64 -968)
  %251 = add nsw i64 %smin993, 1000
  %smin907 = call i64 @llvm.smin.i64(i64 %indvars.iv905, i64 -968)
  %252 = shl nsw i64 %polly.indvar808, 5
  %253 = add nsw i64 %smin907, 999
  br label %polly.loop_header811

polly.loop_exit813:                               ; preds = %polly.loop_exit819
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %indvars.iv.next906 = add nsw i64 %indvars.iv905, -32
  %exitcond913.not = icmp eq i64 %polly.indvar_next809, 32
  br i1 %exitcond913.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_exit819, %polly.loop_header805
  %polly.indvar814 = phi i64 [ 0, %polly.loop_header805 ], [ %polly.indvar_next815, %polly.loop_exit819 ]
  %254 = add nuw nsw i64 %polly.indvar814, %248
  %255 = trunc i64 %254 to i32
  %256 = mul nuw nsw i64 %254, 8000
  %min.iters.check994 = icmp eq i64 %251, 0
  br i1 %min.iters.check994, label %polly.loop_header817, label %vector.ph995

vector.ph995:                                     ; preds = %polly.loop_header811
  %broadcast.splatinsert1004 = insertelement <4 x i64> poison, i64 %252, i32 0
  %broadcast.splat1005 = shufflevector <4 x i64> %broadcast.splatinsert1004, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1006 = insertelement <4 x i32> poison, i32 %255, i32 0
  %broadcast.splat1007 = shufflevector <4 x i32> %broadcast.splatinsert1006, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph995
  %index998 = phi i64 [ 0, %vector.ph995 ], [ %index.next999, %vector.body992 ]
  %vec.ind1002 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph995 ], [ %vec.ind.next1003, %vector.body992 ]
  %257 = add nuw nsw <4 x i64> %vec.ind1002, %broadcast.splat1005
  %258 = trunc <4 x i64> %257 to <4 x i32>
  %259 = mul <4 x i32> %broadcast.splat1007, %258
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 1200, i32 1200, i32 1200, i32 1200>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %264 = extractelement <4 x i64> %257, i32 0
  %265 = shl i64 %264, 3
  %266 = add nuw nsw i64 %265, %256
  %267 = getelementptr i8, i8* %call1, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %263, <4 x double>* %268, align 8, !alias.scope !102, !noalias !109
  %index.next999 = add i64 %index998, 4
  %vec.ind.next1003 = add <4 x i64> %vec.ind1002, <i64 4, i64 4, i64 4, i64 4>
  %269 = icmp eq i64 %index.next999, %251
  br i1 %269, label %polly.loop_exit819, label %vector.body992, !llvm.loop !110

polly.loop_exit819:                               ; preds = %vector.body992, %polly.loop_header817
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond912.not = icmp eq i64 %polly.indvar814, %249
  br i1 %exitcond912.not, label %polly.loop_exit813, label %polly.loop_header811

polly.loop_header817:                             ; preds = %polly.loop_header811, %polly.loop_header817
  %polly.indvar820 = phi i64 [ %polly.indvar_next821, %polly.loop_header817 ], [ 0, %polly.loop_header811 ]
  %270 = add nuw nsw i64 %polly.indvar820, %252
  %271 = trunc i64 %270 to i32
  %272 = mul i32 %271, %255
  %273 = add i32 %272, 1
  %274 = urem i32 %273, 1200
  %p_conv.i = sitofp i32 %274 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %275 = shl i64 %270, 3
  %276 = add nuw nsw i64 %275, %256
  %scevgep824 = getelementptr i8, i8* %call1, i64 %276
  %scevgep824825 = bitcast i8* %scevgep824 to double*
  store double %p_div.i, double* %scevgep824825, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond908.not = icmp eq i64 %polly.indvar820, %253
  br i1 %exitcond908.not, label %polly.loop_exit819, label %polly.loop_header817, !llvm.loop !111
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
!45 = !{!"llvm.loop.tile.size", i32 100}
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
