; ModuleID = 'syr2k_exhaustive/mmp_all_SM_3363.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_3363.c"
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
  %call815 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1667 = bitcast i8* %call1 to double*
  %polly.access.call1676 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1676, %call2
  %polly.access.call2696 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2696, %call1
  %2 = or i1 %0, %1
  %polly.access.call716 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call716, %call2
  %4 = icmp ule i8* %polly.access.call2696, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call716, %call1
  %8 = icmp ule i8* %polly.access.call1676, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header789, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep987 = getelementptr i8, i8* %call2, i64 %12
  %scevgep986 = getelementptr i8, i8* %call2, i64 %11
  %scevgep985 = getelementptr i8, i8* %call1, i64 %12
  %scevgep984 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep984, %scevgep987
  %bound1 = icmp ult i8* %scevgep986, %scevgep985
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
  br i1 %exitcond18.not.i, label %vector.ph991, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph991:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert998 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat999 = shufflevector <4 x i64> %broadcast.splatinsert998, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body990

vector.body990:                                   ; preds = %vector.body990, %vector.ph991
  %index992 = phi i64 [ 0, %vector.ph991 ], [ %index.next993, %vector.body990 ]
  %vec.ind996 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph991 ], [ %vec.ind.next997, %vector.body990 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind996, %broadcast.splat999
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call815, i64 %indvars.iv7.i, i64 %index992
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next993 = add i64 %index992, 4
  %vec.ind.next997 = add <4 x i64> %vec.ind996, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next993, 1200
  br i1 %40, label %for.inc41.i, label %vector.body990, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body990
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph991, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit850
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start475, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1054 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1054, label %for.body3.i46.preheader1131, label %vector.ph1055

vector.ph1055:                                    ; preds = %for.body3.i46.preheader
  %n.vec1057 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1053

vector.body1053:                                  ; preds = %vector.body1053, %vector.ph1055
  %index1058 = phi i64 [ 0, %vector.ph1055 ], [ %index.next1059, %vector.body1053 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call815, i64 %indvars.iv21.i, i64 %index1058
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1059 = add i64 %index1058, 4
  %46 = icmp eq i64 %index.next1059, %n.vec1057
  br i1 %46, label %middle.block1051, label %vector.body1053, !llvm.loop !18

middle.block1051:                                 ; preds = %vector.body1053
  %cmp.n1061 = icmp eq i64 %indvars.iv21.i, %n.vec1057
  br i1 %cmp.n1061, label %for.inc6.i, label %for.body3.i46.preheader1131

for.body3.i46.preheader1131:                      ; preds = %for.body3.i46.preheader, %middle.block1051
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1057, %middle.block1051 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1131, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1131 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call815, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1051, %for.cond1.preheader.i45
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
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call815, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting476
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start285, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1077 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1077, label %for.body3.i60.preheader1129, label %vector.ph1078

vector.ph1078:                                    ; preds = %for.body3.i60.preheader
  %n.vec1080 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1076

vector.body1076:                                  ; preds = %vector.body1076, %vector.ph1078
  %index1081 = phi i64 [ 0, %vector.ph1078 ], [ %index.next1082, %vector.body1076 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call815, i64 %indvars.iv21.i52, i64 %index1081
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1085 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1085, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1082 = add i64 %index1081, 4
  %57 = icmp eq i64 %index.next1082, %n.vec1080
  br i1 %57, label %middle.block1074, label %vector.body1076, !llvm.loop !59

middle.block1074:                                 ; preds = %vector.body1076
  %cmp.n1084 = icmp eq i64 %indvars.iv21.i52, %n.vec1080
  br i1 %cmp.n1084, label %for.inc6.i63, label %for.body3.i60.preheader1129

for.body3.i60.preheader1129:                      ; preds = %for.body3.i60.preheader, %middle.block1074
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1080, %middle.block1074 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1129, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1129 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call815, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1074, %for.cond1.preheader.i54
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
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call815, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting286
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1103 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1103, label %for.body3.i99.preheader1127, label %vector.ph1104

vector.ph1104:                                    ; preds = %for.body3.i99.preheader
  %n.vec1106 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1102

vector.body1102:                                  ; preds = %vector.body1102, %vector.ph1104
  %index1107 = phi i64 [ 0, %vector.ph1104 ], [ %index.next1108, %vector.body1102 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call815, i64 %indvars.iv21.i91, i64 %index1107
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1111 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1111, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1108 = add i64 %index1107, 4
  %68 = icmp eq i64 %index.next1108, %n.vec1106
  br i1 %68, label %middle.block1100, label %vector.body1102, !llvm.loop !61

middle.block1100:                                 ; preds = %vector.body1102
  %cmp.n1110 = icmp eq i64 %indvars.iv21.i91, %n.vec1106
  br i1 %cmp.n1110, label %for.inc6.i102, label %for.body3.i99.preheader1127

for.body3.i99.preheader1127:                      ; preds = %for.body3.i99.preheader, %middle.block1100
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1106, %middle.block1100 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1127, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1127 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call815, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1100, %for.cond1.preheader.i93
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
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call815, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !45

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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call815, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1115 = phi i64 [ %indvar.next1116, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1115, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1117 = icmp ult i64 %88, 4
  br i1 %min.iters.check1117, label %polly.loop_header191.preheader, label %vector.ph1118

vector.ph1118:                                    ; preds = %polly.loop_header
  %n.vec1120 = and i64 %88, -4
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %vector.ph1118
  %index1121 = phi i64 [ 0, %vector.ph1118 ], [ %index.next1122, %vector.body1114 ]
  %90 = shl nuw nsw i64 %index1121, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1125 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1125, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1122 = add i64 %index1121, 4
  %95 = icmp eq i64 %index.next1122, %n.vec1120
  br i1 %95, label %middle.block1112, label %vector.body1114, !llvm.loop !73

middle.block1112:                                 ; preds = %vector.body1114
  %cmp.n1124 = icmp eq i64 %88, %n.vec1120
  br i1 %cmp.n1124, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1112
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1120, %middle.block1112 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1112
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond909.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1116 = add i64 %indvar1115, 1
  br i1 %exitcond909.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
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
  %exitcond908.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond908.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, 100
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond907.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond907.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %98 = shl nuw nsw i64 %polly.indvar208, 1
  %99 = mul nsw i64 %polly.indvar208, -100
  %100 = mul nuw nsw i64 %polly.indvar208, 100
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit250
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond906.not = icmp eq i64 %polly.indvar_next209, 12
  br i1 %exitcond906.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit250, %polly.loop_header205
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit250 ], [ 0, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit250 ], [ %98, %polly.loop_header205 ]
  %101 = mul nuw nsw i64 %polly.indvar214, 50
  %102 = add nsw i64 %101, %99
  %103 = add nsw i64 %102, -1
  %.inv = icmp ugt i64 %102, 99
  %104 = select i1 %.inv, i64 99, i64 %103
  %polly.loop_guard = icmp sgt i64 %104, -1
  %105 = add nuw nsw i64 %102, 49
  br i1 %polly.loop_guard, label %polly.loop_header217.us, label %polly.loop_header217

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit236.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit236.us ], [ 0, %polly.loop_header211 ]
  %106 = add nuw nsw i64 %polly.indvar220.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header217.us ]
  %107 = add nuw nsw i64 %polly.indvar226.us, %100
  %polly.access.mul.call1230.us = mul nuw nsw i64 %107, 1000
  %polly.access.add.call1231.us = add nuw nsw i64 %106, %polly.access.mul.call1230.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1667, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw i64 %polly.indvar226.us, 1
  %exitcond898.not = icmp eq i64 %polly.indvar226.us, %104
  br i1 %exitcond898.not, label %polly.loop_header234.us, label %polly.loop_header223.us

polly.loop_header234.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header234.us
  %polly.indvar238.us = phi i64 [ %polly.indvar_next239.us, %polly.loop_header234.us ], [ %102, %polly.loop_header223.us ]
  %108 = add nuw nsw i64 %polly.indvar238.us, %100
  %polly.access.mul.call1242.us = mul nuw nsw i64 %108, 1000
  %polly.access.add.call1243.us = add nuw nsw i64 %106, %polly.access.mul.call1242.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1667, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1246.us = add nuw nsw i64 %polly.indvar238.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  %polly.indvar_next239.us = add nuw nsw i64 %polly.indvar238.us, 1
  %polly.loop_cond240.not.not.us = icmp ult i64 %polly.indvar238.us, %105
  br i1 %polly.loop_cond240.not.not.us, label %polly.loop_header234.us, label %polly.loop_exit236.us

polly.loop_exit236.us:                            ; preds = %polly.loop_header234.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond899.not = icmp eq i64 %polly.indvar_next221.us, 100
  br i1 %exitcond899.not, label %polly.loop_header248.preheader, label %polly.loop_header217.us

polly.loop_header248.preheader:                   ; preds = %polly.loop_exit236, %polly.loop_exit236.us
  br label %polly.loop_header248

polly.loop_exit250:                               ; preds = %polly.loop_exit256
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 50
  %exitcond905.not = icmp eq i64 %polly.indvar_next215, 24
  br i1 %exitcond905.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211, %polly.loop_exit236
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit236 ], [ 0, %polly.loop_header211 ]
  %109 = add nuw nsw i64 %polly.indvar220, %97
  %polly.access.mul.Packed_MemRef_call1245 = mul nuw nsw i64 %polly.indvar220, 1200
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_header234
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 100
  br i1 %exitcond.not, label %polly.loop_header248.preheader, label %polly.loop_header217

polly.loop_header234:                             ; preds = %polly.loop_header217, %polly.loop_header234
  %polly.indvar238 = phi i64 [ %polly.indvar_next239, %polly.loop_header234 ], [ %102, %polly.loop_header217 ]
  %110 = add nuw nsw i64 %polly.indvar238, %100
  %polly.access.mul.call1242 = mul nuw nsw i64 %110, 1000
  %polly.access.add.call1243 = add nuw nsw i64 %109, %polly.access.mul.call1242
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1667, i64 %polly.access.add.call1243
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1246 = add nuw nsw i64 %polly.indvar238, %polly.access.mul.Packed_MemRef_call1245
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.indvar_next239 = add nuw nsw i64 %polly.indvar238, 1
  %polly.loop_cond240.not.not = icmp ult i64 %polly.indvar238, %105
  br i1 %polly.loop_cond240.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header248:                             ; preds = %polly.loop_header248.preheader, %polly.loop_exit256
  %polly.indvar251 = phi i64 [ %polly.indvar_next252, %polly.loop_exit256 ], [ 0, %polly.loop_header248.preheader ]
  %111 = add nuw nsw i64 %polly.indvar251, %97
  %polly.access.mul.Packed_MemRef_call1266 = mul nuw nsw i64 %polly.indvar251, 1200
  %112 = shl i64 %111, 3
  br label %polly.loop_header254

polly.loop_exit256:                               ; preds = %polly.loop_exit262
  %polly.indvar_next252 = add nuw nsw i64 %polly.indvar251, 1
  %exitcond904.not = icmp eq i64 %polly.indvar_next252, 100
  br i1 %exitcond904.not, label %polly.loop_exit250, label %polly.loop_header248

polly.loop_header254:                             ; preds = %polly.loop_exit262, %polly.loop_header248
  %indvars.iv900 = phi i64 [ %indvars.iv.next901, %polly.loop_exit262 ], [ %indvars.iv, %polly.loop_header248 ]
  %polly.indvar257 = phi i64 [ %polly.indvar_next258, %polly.loop_exit262 ], [ 0, %polly.loop_header248 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv900, i64 99)
  %113 = add nuw nsw i64 %polly.indvar257, %102
  %114 = add nuw nsw i64 %polly.indvar257, %101
  %115 = mul nuw nsw i64 %114, 8000
  %116 = add nuw nsw i64 %115, %112
  %scevgep270 = getelementptr i8, i8* %call2, i64 %116
  %scevgep270271 = bitcast i8* %scevgep270 to double*
  %_p_scalar_272 = load double, double* %scevgep270271, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1277 = add nuw nsw i64 %113, %polly.access.mul.Packed_MemRef_call1266
  %polly.access.Packed_MemRef_call1278 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1277
  %_p_scalar_279 = load double, double* %polly.access.Packed_MemRef_call1278, align 8
  %117 = mul nuw nsw i64 %114, 9600
  br label %polly.loop_header260

polly.loop_exit262:                               ; preds = %polly.loop_header260
  %polly.indvar_next258 = add nuw nsw i64 %polly.indvar257, 1
  %indvars.iv.next901 = add nuw nsw i64 %indvars.iv900, 1
  %exitcond903.not = icmp eq i64 %polly.indvar_next258, 50
  br i1 %exitcond903.not, label %polly.loop_exit256, label %polly.loop_header254

polly.loop_header260:                             ; preds = %polly.loop_header260, %polly.loop_header254
  %polly.indvar263 = phi i64 [ 0, %polly.loop_header254 ], [ %polly.indvar_next264, %polly.loop_header260 ]
  %118 = add nuw nsw i64 %polly.indvar263, %100
  %polly.access.add.Packed_MemRef_call1267 = add nuw nsw i64 %polly.indvar263, %polly.access.mul.Packed_MemRef_call1266
  %polly.access.Packed_MemRef_call1268 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1267
  %_p_scalar_269 = load double, double* %polly.access.Packed_MemRef_call1268, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_272, %_p_scalar_269
  %119 = mul nuw nsw i64 %118, 8000
  %120 = add nuw nsw i64 %119, %112
  %scevgep273 = getelementptr i8, i8* %call2, i64 %120
  %scevgep273274 = bitcast i8* %scevgep273 to double*
  %_p_scalar_275 = load double, double* %scevgep273274, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114 = fmul fast double %_p_scalar_279, %_p_scalar_275
  %121 = shl i64 %118, 3
  %122 = add nuw nsw i64 %121, %117
  %scevgep280 = getelementptr i8, i8* %call, i64 %122
  %scevgep280281 = bitcast i8* %scevgep280 to double*
  %_p_scalar_282 = load double, double* %scevgep280281, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_282
  store double %p_add42.i118, double* %scevgep280281, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next264 = add nuw nsw i64 %polly.indvar263, 1
  %exitcond902.not = icmp eq i64 %polly.indvar263, %smin
  br i1 %exitcond902.not, label %polly.loop_exit262, label %polly.loop_header260

polly.start285:                                   ; preds = %kernel_syr2k.exit
  %malloccall287 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header371

polly.exiting286:                                 ; preds = %polly.loop_exit395
  tail call void @free(i8* nonnull %malloccall287)
  br label %kernel_syr2k.exit90

polly.loop_header371:                             ; preds = %polly.loop_exit379, %polly.start285
  %indvar1089 = phi i64 [ %indvar.next1090, %polly.loop_exit379 ], [ 0, %polly.start285 ]
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_exit379 ], [ 1, %polly.start285 ]
  %123 = add i64 %indvar1089, 1
  %124 = mul nuw nsw i64 %polly.indvar374, 9600
  %scevgep383 = getelementptr i8, i8* %call, i64 %124
  %min.iters.check1091 = icmp ult i64 %123, 4
  br i1 %min.iters.check1091, label %polly.loop_header377.preheader, label %vector.ph1092

vector.ph1092:                                    ; preds = %polly.loop_header371
  %n.vec1094 = and i64 %123, -4
  br label %vector.body1088

vector.body1088:                                  ; preds = %vector.body1088, %vector.ph1092
  %index1095 = phi i64 [ 0, %vector.ph1092 ], [ %index.next1096, %vector.body1088 ]
  %125 = shl nuw nsw i64 %index1095, 3
  %126 = getelementptr i8, i8* %scevgep383, i64 %125
  %127 = bitcast i8* %126 to <4 x double>*
  %wide.load1099 = load <4 x double>, <4 x double>* %127, align 8, !alias.scope !78, !noalias !80
  %128 = fmul fast <4 x double> %wide.load1099, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %129 = bitcast i8* %126 to <4 x double>*
  store <4 x double> %128, <4 x double>* %129, align 8, !alias.scope !78, !noalias !80
  %index.next1096 = add i64 %index1095, 4
  %130 = icmp eq i64 %index.next1096, %n.vec1094
  br i1 %130, label %middle.block1086, label %vector.body1088, !llvm.loop !84

middle.block1086:                                 ; preds = %vector.body1088
  %cmp.n1098 = icmp eq i64 %123, %n.vec1094
  br i1 %cmp.n1098, label %polly.loop_exit379, label %polly.loop_header377.preheader

polly.loop_header377.preheader:                   ; preds = %polly.loop_header371, %middle.block1086
  %polly.indvar380.ph = phi i64 [ 0, %polly.loop_header371 ], [ %n.vec1094, %middle.block1086 ]
  br label %polly.loop_header377

polly.loop_exit379:                               ; preds = %polly.loop_header377, %middle.block1086
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond925.not = icmp eq i64 %polly.indvar_next375, 1200
  %indvar.next1090 = add i64 %indvar1089, 1
  br i1 %exitcond925.not, label %polly.loop_header387.preheader, label %polly.loop_header371

polly.loop_header387.preheader:                   ; preds = %polly.loop_exit379
  %Packed_MemRef_call1288 = bitcast i8* %malloccall287 to double*
  br label %polly.loop_header387

polly.loop_header377:                             ; preds = %polly.loop_header377.preheader, %polly.loop_header377
  %polly.indvar380 = phi i64 [ %polly.indvar_next381, %polly.loop_header377 ], [ %polly.indvar380.ph, %polly.loop_header377.preheader ]
  %131 = shl nuw nsw i64 %polly.indvar380, 3
  %scevgep384 = getelementptr i8, i8* %scevgep383, i64 %131
  %scevgep384385 = bitcast i8* %scevgep384 to double*
  %_p_scalar_386 = load double, double* %scevgep384385, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_386, 1.200000e+00
  store double %p_mul.i57, double* %scevgep384385, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next381 = add nuw nsw i64 %polly.indvar380, 1
  %exitcond924.not = icmp eq i64 %polly.indvar_next381, %polly.indvar374
  br i1 %exitcond924.not, label %polly.loop_exit379, label %polly.loop_header377, !llvm.loop !85

polly.loop_header387:                             ; preds = %polly.loop_header387.preheader, %polly.loop_exit395
  %polly.indvar390 = phi i64 [ %polly.indvar_next391, %polly.loop_exit395 ], [ 0, %polly.loop_header387.preheader ]
  %132 = mul nuw nsw i64 %polly.indvar390, 100
  br label %polly.loop_header393

polly.loop_exit395:                               ; preds = %polly.loop_exit401
  %polly.indvar_next391 = add nuw nsw i64 %polly.indvar390, 1
  %exitcond923.not = icmp eq i64 %polly.indvar_next391, 10
  br i1 %exitcond923.not, label %polly.exiting286, label %polly.loop_header387

polly.loop_header393:                             ; preds = %polly.loop_exit401, %polly.loop_header387
  %polly.indvar396 = phi i64 [ 0, %polly.loop_header387 ], [ %polly.indvar_next397, %polly.loop_exit401 ]
  %133 = shl nuw nsw i64 %polly.indvar396, 1
  %134 = mul nsw i64 %polly.indvar396, -100
  %135 = mul nuw nsw i64 %polly.indvar396, 100
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit440
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %exitcond922.not = icmp eq i64 %polly.indvar_next397, 12
  br i1 %exitcond922.not, label %polly.loop_exit395, label %polly.loop_header393

polly.loop_header399:                             ; preds = %polly.loop_exit440, %polly.loop_header393
  %indvars.iv913 = phi i64 [ %indvars.iv.next914, %polly.loop_exit440 ], [ 0, %polly.loop_header393 ]
  %polly.indvar402 = phi i64 [ %polly.indvar_next403, %polly.loop_exit440 ], [ %133, %polly.loop_header393 ]
  %136 = mul nuw nsw i64 %polly.indvar402, 50
  %137 = add nsw i64 %136, %134
  %138 = add nsw i64 %137, -1
  %.inv869 = icmp ugt i64 %137, 99
  %139 = select i1 %.inv869, i64 99, i64 %138
  %polly.loop_guard415 = icmp sgt i64 %139, -1
  %140 = add nuw nsw i64 %137, 49
  br i1 %polly.loop_guard415, label %polly.loop_header405.us, label %polly.loop_header405

polly.loop_header405.us:                          ; preds = %polly.loop_header399, %polly.loop_exit426.us
  %polly.indvar408.us = phi i64 [ %polly.indvar_next409.us, %polly.loop_exit426.us ], [ 0, %polly.loop_header399 ]
  %141 = add nuw nsw i64 %polly.indvar408.us, %132
  %polly.access.mul.Packed_MemRef_call1288.us = mul nuw nsw i64 %polly.indvar408.us, 1200
  br label %polly.loop_header412.us

polly.loop_header412.us:                          ; preds = %polly.loop_header405.us, %polly.loop_header412.us
  %polly.indvar416.us = phi i64 [ %polly.indvar_next417.us, %polly.loop_header412.us ], [ 0, %polly.loop_header405.us ]
  %142 = add nuw nsw i64 %polly.indvar416.us, %135
  %polly.access.mul.call1420.us = mul nuw nsw i64 %142, 1000
  %polly.access.add.call1421.us = add nuw nsw i64 %141, %polly.access.mul.call1420.us
  %polly.access.call1422.us = getelementptr double, double* %polly.access.cast.call1667, i64 %polly.access.add.call1421.us
  %polly.access.call1422.load.us = load double, double* %polly.access.call1422.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1288.us = add nuw nsw i64 %polly.indvar416.us, %polly.access.mul.Packed_MemRef_call1288.us
  %polly.access.Packed_MemRef_call1288.us = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288.us
  store double %polly.access.call1422.load.us, double* %polly.access.Packed_MemRef_call1288.us, align 8
  %polly.indvar_next417.us = add nuw i64 %polly.indvar416.us, 1
  %exitcond911.not = icmp eq i64 %polly.indvar416.us, %139
  br i1 %exitcond911.not, label %polly.loop_header424.us, label %polly.loop_header412.us

polly.loop_header424.us:                          ; preds = %polly.loop_header412.us, %polly.loop_header424.us
  %polly.indvar428.us = phi i64 [ %polly.indvar_next429.us, %polly.loop_header424.us ], [ %137, %polly.loop_header412.us ]
  %143 = add nuw nsw i64 %polly.indvar428.us, %135
  %polly.access.mul.call1432.us = mul nuw nsw i64 %143, 1000
  %polly.access.add.call1433.us = add nuw nsw i64 %141, %polly.access.mul.call1432.us
  %polly.access.call1434.us = getelementptr double, double* %polly.access.cast.call1667, i64 %polly.access.add.call1433.us
  %polly.access.call1434.load.us = load double, double* %polly.access.call1434.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1288436.us = add nuw nsw i64 %polly.indvar428.us, %polly.access.mul.Packed_MemRef_call1288.us
  %polly.access.Packed_MemRef_call1288437.us = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288436.us
  store double %polly.access.call1434.load.us, double* %polly.access.Packed_MemRef_call1288437.us, align 8
  %polly.indvar_next429.us = add nuw nsw i64 %polly.indvar428.us, 1
  %polly.loop_cond430.not.not.us = icmp ult i64 %polly.indvar428.us, %140
  br i1 %polly.loop_cond430.not.not.us, label %polly.loop_header424.us, label %polly.loop_exit426.us

polly.loop_exit426.us:                            ; preds = %polly.loop_header424.us
  %polly.indvar_next409.us = add nuw nsw i64 %polly.indvar408.us, 1
  %exitcond912.not = icmp eq i64 %polly.indvar_next409.us, 100
  br i1 %exitcond912.not, label %polly.loop_header438.preheader, label %polly.loop_header405.us

polly.loop_header438.preheader:                   ; preds = %polly.loop_exit426, %polly.loop_exit426.us
  br label %polly.loop_header438

polly.loop_exit440:                               ; preds = %polly.loop_exit446
  %polly.indvar_next403 = add nuw nsw i64 %polly.indvar402, 1
  %indvars.iv.next914 = add nuw nsw i64 %indvars.iv913, 50
  %exitcond921.not = icmp eq i64 %polly.indvar_next403, 24
  br i1 %exitcond921.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header405:                             ; preds = %polly.loop_header399, %polly.loop_exit426
  %polly.indvar408 = phi i64 [ %polly.indvar_next409, %polly.loop_exit426 ], [ 0, %polly.loop_header399 ]
  %144 = add nuw nsw i64 %polly.indvar408, %132
  %polly.access.mul.Packed_MemRef_call1288435 = mul nuw nsw i64 %polly.indvar408, 1200
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_header424
  %polly.indvar_next409 = add nuw nsw i64 %polly.indvar408, 1
  %exitcond910.not = icmp eq i64 %polly.indvar_next409, 100
  br i1 %exitcond910.not, label %polly.loop_header438.preheader, label %polly.loop_header405

polly.loop_header424:                             ; preds = %polly.loop_header405, %polly.loop_header424
  %polly.indvar428 = phi i64 [ %polly.indvar_next429, %polly.loop_header424 ], [ %137, %polly.loop_header405 ]
  %145 = add nuw nsw i64 %polly.indvar428, %135
  %polly.access.mul.call1432 = mul nuw nsw i64 %145, 1000
  %polly.access.add.call1433 = add nuw nsw i64 %144, %polly.access.mul.call1432
  %polly.access.call1434 = getelementptr double, double* %polly.access.cast.call1667, i64 %polly.access.add.call1433
  %polly.access.call1434.load = load double, double* %polly.access.call1434, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1288436 = add nuw nsw i64 %polly.indvar428, %polly.access.mul.Packed_MemRef_call1288435
  %polly.access.Packed_MemRef_call1288437 = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288436
  store double %polly.access.call1434.load, double* %polly.access.Packed_MemRef_call1288437, align 8
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %polly.loop_cond430.not.not = icmp ult i64 %polly.indvar428, %140
  br i1 %polly.loop_cond430.not.not, label %polly.loop_header424, label %polly.loop_exit426

polly.loop_header438:                             ; preds = %polly.loop_header438.preheader, %polly.loop_exit446
  %polly.indvar441 = phi i64 [ %polly.indvar_next442, %polly.loop_exit446 ], [ 0, %polly.loop_header438.preheader ]
  %146 = add nuw nsw i64 %polly.indvar441, %132
  %polly.access.mul.Packed_MemRef_call1288456 = mul nuw nsw i64 %polly.indvar441, 1200
  %147 = shl i64 %146, 3
  br label %polly.loop_header444

polly.loop_exit446:                               ; preds = %polly.loop_exit452
  %polly.indvar_next442 = add nuw nsw i64 %polly.indvar441, 1
  %exitcond920.not = icmp eq i64 %polly.indvar_next442, 100
  br i1 %exitcond920.not, label %polly.loop_exit440, label %polly.loop_header438

polly.loop_header444:                             ; preds = %polly.loop_exit452, %polly.loop_header438
  %indvars.iv915 = phi i64 [ %indvars.iv.next916, %polly.loop_exit452 ], [ %indvars.iv913, %polly.loop_header438 ]
  %polly.indvar447 = phi i64 [ %polly.indvar_next448, %polly.loop_exit452 ], [ 0, %polly.loop_header438 ]
  %smin917 = call i64 @llvm.smin.i64(i64 %indvars.iv915, i64 99)
  %148 = add nuw nsw i64 %polly.indvar447, %137
  %149 = add nuw nsw i64 %polly.indvar447, %136
  %150 = mul nuw nsw i64 %149, 8000
  %151 = add nuw nsw i64 %150, %147
  %scevgep460 = getelementptr i8, i8* %call2, i64 %151
  %scevgep460461 = bitcast i8* %scevgep460 to double*
  %_p_scalar_462 = load double, double* %scevgep460461, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1288467 = add nuw nsw i64 %148, %polly.access.mul.Packed_MemRef_call1288456
  %polly.access.Packed_MemRef_call1288468 = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288467
  %_p_scalar_469 = load double, double* %polly.access.Packed_MemRef_call1288468, align 8
  %152 = mul nuw nsw i64 %149, 9600
  br label %polly.loop_header450

polly.loop_exit452:                               ; preds = %polly.loop_header450
  %polly.indvar_next448 = add nuw nsw i64 %polly.indvar447, 1
  %indvars.iv.next916 = add nuw nsw i64 %indvars.iv915, 1
  %exitcond919.not = icmp eq i64 %polly.indvar_next448, 50
  br i1 %exitcond919.not, label %polly.loop_exit446, label %polly.loop_header444

polly.loop_header450:                             ; preds = %polly.loop_header450, %polly.loop_header444
  %polly.indvar453 = phi i64 [ 0, %polly.loop_header444 ], [ %polly.indvar_next454, %polly.loop_header450 ]
  %153 = add nuw nsw i64 %polly.indvar453, %135
  %polly.access.add.Packed_MemRef_call1288457 = add nuw nsw i64 %polly.indvar453, %polly.access.mul.Packed_MemRef_call1288456
  %polly.access.Packed_MemRef_call1288458 = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288457
  %_p_scalar_459 = load double, double* %polly.access.Packed_MemRef_call1288458, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_462, %_p_scalar_459
  %154 = mul nuw nsw i64 %153, 8000
  %155 = add nuw nsw i64 %154, %147
  %scevgep463 = getelementptr i8, i8* %call2, i64 %155
  %scevgep463464 = bitcast i8* %scevgep463 to double*
  %_p_scalar_465 = load double, double* %scevgep463464, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75 = fmul fast double %_p_scalar_469, %_p_scalar_465
  %156 = shl i64 %153, 3
  %157 = add nuw nsw i64 %156, %152
  %scevgep470 = getelementptr i8, i8* %call, i64 %157
  %scevgep470471 = bitcast i8* %scevgep470 to double*
  %_p_scalar_472 = load double, double* %scevgep470471, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_472
  store double %p_add42.i79, double* %scevgep470471, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next454 = add nuw nsw i64 %polly.indvar453, 1
  %exitcond918.not = icmp eq i64 %polly.indvar453, %smin917
  br i1 %exitcond918.not, label %polly.loop_exit452, label %polly.loop_header450

polly.start475:                                   ; preds = %init_array.exit
  %malloccall477 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header561

polly.exiting476:                                 ; preds = %polly.loop_exit585
  tail call void @free(i8* nonnull %malloccall477)
  br label %kernel_syr2k.exit

polly.loop_header561:                             ; preds = %polly.loop_exit569, %polly.start475
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit569 ], [ 0, %polly.start475 ]
  %polly.indvar564 = phi i64 [ %polly.indvar_next565, %polly.loop_exit569 ], [ 1, %polly.start475 ]
  %158 = add i64 %indvar, 1
  %159 = mul nuw nsw i64 %polly.indvar564, 9600
  %scevgep573 = getelementptr i8, i8* %call, i64 %159
  %min.iters.check1065 = icmp ult i64 %158, 4
  br i1 %min.iters.check1065, label %polly.loop_header567.preheader, label %vector.ph1066

vector.ph1066:                                    ; preds = %polly.loop_header561
  %n.vec1068 = and i64 %158, -4
  br label %vector.body1064

vector.body1064:                                  ; preds = %vector.body1064, %vector.ph1066
  %index1069 = phi i64 [ 0, %vector.ph1066 ], [ %index.next1070, %vector.body1064 ]
  %160 = shl nuw nsw i64 %index1069, 3
  %161 = getelementptr i8, i8* %scevgep573, i64 %160
  %162 = bitcast i8* %161 to <4 x double>*
  %wide.load1073 = load <4 x double>, <4 x double>* %162, align 8, !alias.scope !88, !noalias !90
  %163 = fmul fast <4 x double> %wide.load1073, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %164 = bitcast i8* %161 to <4 x double>*
  store <4 x double> %163, <4 x double>* %164, align 8, !alias.scope !88, !noalias !90
  %index.next1070 = add i64 %index1069, 4
  %165 = icmp eq i64 %index.next1070, %n.vec1068
  br i1 %165, label %middle.block1062, label %vector.body1064, !llvm.loop !94

middle.block1062:                                 ; preds = %vector.body1064
  %cmp.n1072 = icmp eq i64 %158, %n.vec1068
  br i1 %cmp.n1072, label %polly.loop_exit569, label %polly.loop_header567.preheader

polly.loop_header567.preheader:                   ; preds = %polly.loop_header561, %middle.block1062
  %polly.indvar570.ph = phi i64 [ 0, %polly.loop_header561 ], [ %n.vec1068, %middle.block1062 ]
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_header567, %middle.block1062
  %polly.indvar_next565 = add nuw nsw i64 %polly.indvar564, 1
  %exitcond941.not = icmp eq i64 %polly.indvar_next565, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond941.not, label %polly.loop_header577.preheader, label %polly.loop_header561

polly.loop_header577.preheader:                   ; preds = %polly.loop_exit569
  %Packed_MemRef_call1478 = bitcast i8* %malloccall477 to double*
  br label %polly.loop_header577

polly.loop_header567:                             ; preds = %polly.loop_header567.preheader, %polly.loop_header567
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_header567 ], [ %polly.indvar570.ph, %polly.loop_header567.preheader ]
  %166 = shl nuw nsw i64 %polly.indvar570, 3
  %scevgep574 = getelementptr i8, i8* %scevgep573, i64 %166
  %scevgep574575 = bitcast i8* %scevgep574 to double*
  %_p_scalar_576 = load double, double* %scevgep574575, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_576, 1.200000e+00
  store double %p_mul.i, double* %scevgep574575, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %exitcond940.not = icmp eq i64 %polly.indvar_next571, %polly.indvar564
  br i1 %exitcond940.not, label %polly.loop_exit569, label %polly.loop_header567, !llvm.loop !95

polly.loop_header577:                             ; preds = %polly.loop_header577.preheader, %polly.loop_exit585
  %polly.indvar580 = phi i64 [ %polly.indvar_next581, %polly.loop_exit585 ], [ 0, %polly.loop_header577.preheader ]
  %167 = mul nuw nsw i64 %polly.indvar580, 100
  br label %polly.loop_header583

polly.loop_exit585:                               ; preds = %polly.loop_exit591
  %polly.indvar_next581 = add nuw nsw i64 %polly.indvar580, 1
  %exitcond939.not = icmp eq i64 %polly.indvar_next581, 10
  br i1 %exitcond939.not, label %polly.exiting476, label %polly.loop_header577

polly.loop_header583:                             ; preds = %polly.loop_exit591, %polly.loop_header577
  %polly.indvar586 = phi i64 [ 0, %polly.loop_header577 ], [ %polly.indvar_next587, %polly.loop_exit591 ]
  %168 = shl nuw nsw i64 %polly.indvar586, 1
  %169 = mul nsw i64 %polly.indvar586, -100
  %170 = mul nuw nsw i64 %polly.indvar586, 100
  br label %polly.loop_header589

polly.loop_exit591:                               ; preds = %polly.loop_exit630
  %polly.indvar_next587 = add nuw nsw i64 %polly.indvar586, 1
  %exitcond938.not = icmp eq i64 %polly.indvar_next587, 12
  br i1 %exitcond938.not, label %polly.loop_exit585, label %polly.loop_header583

polly.loop_header589:                             ; preds = %polly.loop_exit630, %polly.loop_header583
  %indvars.iv929 = phi i64 [ %indvars.iv.next930, %polly.loop_exit630 ], [ 0, %polly.loop_header583 ]
  %polly.indvar592 = phi i64 [ %polly.indvar_next593, %polly.loop_exit630 ], [ %168, %polly.loop_header583 ]
  %171 = mul nuw nsw i64 %polly.indvar592, 50
  %172 = add nsw i64 %171, %169
  %173 = add nsw i64 %172, -1
  %.inv870 = icmp ugt i64 %172, 99
  %174 = select i1 %.inv870, i64 99, i64 %173
  %polly.loop_guard605 = icmp sgt i64 %174, -1
  %175 = add nuw nsw i64 %172, 49
  br i1 %polly.loop_guard605, label %polly.loop_header595.us, label %polly.loop_header595

polly.loop_header595.us:                          ; preds = %polly.loop_header589, %polly.loop_exit616.us
  %polly.indvar598.us = phi i64 [ %polly.indvar_next599.us, %polly.loop_exit616.us ], [ 0, %polly.loop_header589 ]
  %176 = add nuw nsw i64 %polly.indvar598.us, %167
  %polly.access.mul.Packed_MemRef_call1478.us = mul nuw nsw i64 %polly.indvar598.us, 1200
  br label %polly.loop_header602.us

polly.loop_header602.us:                          ; preds = %polly.loop_header595.us, %polly.loop_header602.us
  %polly.indvar606.us = phi i64 [ %polly.indvar_next607.us, %polly.loop_header602.us ], [ 0, %polly.loop_header595.us ]
  %177 = add nuw nsw i64 %polly.indvar606.us, %170
  %polly.access.mul.call1610.us = mul nuw nsw i64 %177, 1000
  %polly.access.add.call1611.us = add nuw nsw i64 %176, %polly.access.mul.call1610.us
  %polly.access.call1612.us = getelementptr double, double* %polly.access.cast.call1667, i64 %polly.access.add.call1611.us
  %polly.access.call1612.load.us = load double, double* %polly.access.call1612.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1478.us = add nuw nsw i64 %polly.indvar606.us, %polly.access.mul.Packed_MemRef_call1478.us
  %polly.access.Packed_MemRef_call1478.us = getelementptr double, double* %Packed_MemRef_call1478, i64 %polly.access.add.Packed_MemRef_call1478.us
  store double %polly.access.call1612.load.us, double* %polly.access.Packed_MemRef_call1478.us, align 8
  %polly.indvar_next607.us = add nuw i64 %polly.indvar606.us, 1
  %exitcond927.not = icmp eq i64 %polly.indvar606.us, %174
  br i1 %exitcond927.not, label %polly.loop_header614.us, label %polly.loop_header602.us

polly.loop_header614.us:                          ; preds = %polly.loop_header602.us, %polly.loop_header614.us
  %polly.indvar618.us = phi i64 [ %polly.indvar_next619.us, %polly.loop_header614.us ], [ %172, %polly.loop_header602.us ]
  %178 = add nuw nsw i64 %polly.indvar618.us, %170
  %polly.access.mul.call1622.us = mul nuw nsw i64 %178, 1000
  %polly.access.add.call1623.us = add nuw nsw i64 %176, %polly.access.mul.call1622.us
  %polly.access.call1624.us = getelementptr double, double* %polly.access.cast.call1667, i64 %polly.access.add.call1623.us
  %polly.access.call1624.load.us = load double, double* %polly.access.call1624.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1478626.us = add nuw nsw i64 %polly.indvar618.us, %polly.access.mul.Packed_MemRef_call1478.us
  %polly.access.Packed_MemRef_call1478627.us = getelementptr double, double* %Packed_MemRef_call1478, i64 %polly.access.add.Packed_MemRef_call1478626.us
  store double %polly.access.call1624.load.us, double* %polly.access.Packed_MemRef_call1478627.us, align 8
  %polly.indvar_next619.us = add nuw nsw i64 %polly.indvar618.us, 1
  %polly.loop_cond620.not.not.us = icmp ult i64 %polly.indvar618.us, %175
  br i1 %polly.loop_cond620.not.not.us, label %polly.loop_header614.us, label %polly.loop_exit616.us

polly.loop_exit616.us:                            ; preds = %polly.loop_header614.us
  %polly.indvar_next599.us = add nuw nsw i64 %polly.indvar598.us, 1
  %exitcond928.not = icmp eq i64 %polly.indvar_next599.us, 100
  br i1 %exitcond928.not, label %polly.loop_header628.preheader, label %polly.loop_header595.us

polly.loop_header628.preheader:                   ; preds = %polly.loop_exit616, %polly.loop_exit616.us
  br label %polly.loop_header628

polly.loop_exit630:                               ; preds = %polly.loop_exit636
  %polly.indvar_next593 = add nuw nsw i64 %polly.indvar592, 1
  %indvars.iv.next930 = add nuw nsw i64 %indvars.iv929, 50
  %exitcond937.not = icmp eq i64 %polly.indvar_next593, 24
  br i1 %exitcond937.not, label %polly.loop_exit591, label %polly.loop_header589

polly.loop_header595:                             ; preds = %polly.loop_header589, %polly.loop_exit616
  %polly.indvar598 = phi i64 [ %polly.indvar_next599, %polly.loop_exit616 ], [ 0, %polly.loop_header589 ]
  %179 = add nuw nsw i64 %polly.indvar598, %167
  %polly.access.mul.Packed_MemRef_call1478625 = mul nuw nsw i64 %polly.indvar598, 1200
  br label %polly.loop_header614

polly.loop_exit616:                               ; preds = %polly.loop_header614
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %exitcond926.not = icmp eq i64 %polly.indvar_next599, 100
  br i1 %exitcond926.not, label %polly.loop_header628.preheader, label %polly.loop_header595

polly.loop_header614:                             ; preds = %polly.loop_header595, %polly.loop_header614
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_header614 ], [ %172, %polly.loop_header595 ]
  %180 = add nuw nsw i64 %polly.indvar618, %170
  %polly.access.mul.call1622 = mul nuw nsw i64 %180, 1000
  %polly.access.add.call1623 = add nuw nsw i64 %179, %polly.access.mul.call1622
  %polly.access.call1624 = getelementptr double, double* %polly.access.cast.call1667, i64 %polly.access.add.call1623
  %polly.access.call1624.load = load double, double* %polly.access.call1624, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1478626 = add nuw nsw i64 %polly.indvar618, %polly.access.mul.Packed_MemRef_call1478625
  %polly.access.Packed_MemRef_call1478627 = getelementptr double, double* %Packed_MemRef_call1478, i64 %polly.access.add.Packed_MemRef_call1478626
  store double %polly.access.call1624.load, double* %polly.access.Packed_MemRef_call1478627, align 8
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %polly.loop_cond620.not.not = icmp ult i64 %polly.indvar618, %175
  br i1 %polly.loop_cond620.not.not, label %polly.loop_header614, label %polly.loop_exit616

polly.loop_header628:                             ; preds = %polly.loop_header628.preheader, %polly.loop_exit636
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.loop_exit636 ], [ 0, %polly.loop_header628.preheader ]
  %181 = add nuw nsw i64 %polly.indvar631, %167
  %polly.access.mul.Packed_MemRef_call1478646 = mul nuw nsw i64 %polly.indvar631, 1200
  %182 = shl i64 %181, 3
  br label %polly.loop_header634

polly.loop_exit636:                               ; preds = %polly.loop_exit642
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %exitcond936.not = icmp eq i64 %polly.indvar_next632, 100
  br i1 %exitcond936.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header634:                             ; preds = %polly.loop_exit642, %polly.loop_header628
  %indvars.iv931 = phi i64 [ %indvars.iv.next932, %polly.loop_exit642 ], [ %indvars.iv929, %polly.loop_header628 ]
  %polly.indvar637 = phi i64 [ %polly.indvar_next638, %polly.loop_exit642 ], [ 0, %polly.loop_header628 ]
  %smin933 = call i64 @llvm.smin.i64(i64 %indvars.iv931, i64 99)
  %183 = add nuw nsw i64 %polly.indvar637, %172
  %184 = add nuw nsw i64 %polly.indvar637, %171
  %185 = mul nuw nsw i64 %184, 8000
  %186 = add nuw nsw i64 %185, %182
  %scevgep650 = getelementptr i8, i8* %call2, i64 %186
  %scevgep650651 = bitcast i8* %scevgep650 to double*
  %_p_scalar_652 = load double, double* %scevgep650651, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1478657 = add nuw nsw i64 %183, %polly.access.mul.Packed_MemRef_call1478646
  %polly.access.Packed_MemRef_call1478658 = getelementptr double, double* %Packed_MemRef_call1478, i64 %polly.access.add.Packed_MemRef_call1478657
  %_p_scalar_659 = load double, double* %polly.access.Packed_MemRef_call1478658, align 8
  %187 = mul nuw nsw i64 %184, 9600
  br label %polly.loop_header640

polly.loop_exit642:                               ; preds = %polly.loop_header640
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %indvars.iv.next932 = add nuw nsw i64 %indvars.iv931, 1
  %exitcond935.not = icmp eq i64 %polly.indvar_next638, 50
  br i1 %exitcond935.not, label %polly.loop_exit636, label %polly.loop_header634

polly.loop_header640:                             ; preds = %polly.loop_header640, %polly.loop_header634
  %polly.indvar643 = phi i64 [ 0, %polly.loop_header634 ], [ %polly.indvar_next644, %polly.loop_header640 ]
  %188 = add nuw nsw i64 %polly.indvar643, %170
  %polly.access.add.Packed_MemRef_call1478647 = add nuw nsw i64 %polly.indvar643, %polly.access.mul.Packed_MemRef_call1478646
  %polly.access.Packed_MemRef_call1478648 = getelementptr double, double* %Packed_MemRef_call1478, i64 %polly.access.add.Packed_MemRef_call1478647
  %_p_scalar_649 = load double, double* %polly.access.Packed_MemRef_call1478648, align 8
  %p_mul27.i = fmul fast double %_p_scalar_652, %_p_scalar_649
  %189 = mul nuw nsw i64 %188, 8000
  %190 = add nuw nsw i64 %189, %182
  %scevgep653 = getelementptr i8, i8* %call2, i64 %190
  %scevgep653654 = bitcast i8* %scevgep653 to double*
  %_p_scalar_655 = load double, double* %scevgep653654, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i = fmul fast double %_p_scalar_659, %_p_scalar_655
  %191 = shl i64 %188, 3
  %192 = add nuw nsw i64 %191, %187
  %scevgep660 = getelementptr i8, i8* %call, i64 %192
  %scevgep660661 = bitcast i8* %scevgep660 to double*
  %_p_scalar_662 = load double, double* %scevgep660661, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_662
  store double %p_add42.i, double* %scevgep660661, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %exitcond934.not = icmp eq i64 %polly.indvar643, %smin933
  br i1 %exitcond934.not, label %polly.loop_exit642, label %polly.loop_header640

polly.loop_header789:                             ; preds = %entry, %polly.loop_exit797
  %indvars.iv966 = phi i64 [ %indvars.iv.next967, %polly.loop_exit797 ], [ 0, %entry ]
  %polly.indvar792 = phi i64 [ %polly.indvar_next793, %polly.loop_exit797 ], [ 0, %entry ]
  %smin968 = call i64 @llvm.smin.i64(i64 %indvars.iv966, i64 -1168)
  %193 = shl nsw i64 %polly.indvar792, 5
  %194 = add nsw i64 %smin968, 1199
  br label %polly.loop_header795

polly.loop_exit797:                               ; preds = %polly.loop_exit803
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %indvars.iv.next967 = add nsw i64 %indvars.iv966, -32
  %exitcond971.not = icmp eq i64 %polly.indvar_next793, 38
  br i1 %exitcond971.not, label %polly.loop_header816, label %polly.loop_header789

polly.loop_header795:                             ; preds = %polly.loop_exit803, %polly.loop_header789
  %indvars.iv962 = phi i64 [ %indvars.iv.next963, %polly.loop_exit803 ], [ 0, %polly.loop_header789 ]
  %polly.indvar798 = phi i64 [ %polly.indvar_next799, %polly.loop_exit803 ], [ 0, %polly.loop_header789 ]
  %195 = mul nsw i64 %polly.indvar798, -32
  %smin1003 = call i64 @llvm.smin.i64(i64 %195, i64 -1168)
  %196 = add nsw i64 %smin1003, 1200
  %smin964 = call i64 @llvm.smin.i64(i64 %indvars.iv962, i64 -1168)
  %197 = shl nsw i64 %polly.indvar798, 5
  %198 = add nsw i64 %smin964, 1199
  br label %polly.loop_header801

polly.loop_exit803:                               ; preds = %polly.loop_exit809
  %polly.indvar_next799 = add nuw nsw i64 %polly.indvar798, 1
  %indvars.iv.next963 = add nsw i64 %indvars.iv962, -32
  %exitcond970.not = icmp eq i64 %polly.indvar_next799, 38
  br i1 %exitcond970.not, label %polly.loop_exit797, label %polly.loop_header795

polly.loop_header801:                             ; preds = %polly.loop_exit809, %polly.loop_header795
  %polly.indvar804 = phi i64 [ 0, %polly.loop_header795 ], [ %polly.indvar_next805, %polly.loop_exit809 ]
  %199 = add nuw nsw i64 %polly.indvar804, %193
  %200 = trunc i64 %199 to i32
  %201 = mul nuw nsw i64 %199, 9600
  %min.iters.check = icmp eq i64 %196, 0
  br i1 %min.iters.check, label %polly.loop_header807, label %vector.ph1004

vector.ph1004:                                    ; preds = %polly.loop_header801
  %broadcast.splatinsert1011 = insertelement <4 x i64> poison, i64 %197, i32 0
  %broadcast.splat1012 = shufflevector <4 x i64> %broadcast.splatinsert1011, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1013 = insertelement <4 x i32> poison, i32 %200, i32 0
  %broadcast.splat1014 = shufflevector <4 x i32> %broadcast.splatinsert1013, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1002

vector.body1002:                                  ; preds = %vector.body1002, %vector.ph1004
  %index1005 = phi i64 [ 0, %vector.ph1004 ], [ %index.next1006, %vector.body1002 ]
  %vec.ind1009 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1004 ], [ %vec.ind.next1010, %vector.body1002 ]
  %202 = add nuw nsw <4 x i64> %vec.ind1009, %broadcast.splat1012
  %203 = trunc <4 x i64> %202 to <4 x i32>
  %204 = mul <4 x i32> %broadcast.splat1014, %203
  %205 = add <4 x i32> %204, <i32 3, i32 3, i32 3, i32 3>
  %206 = urem <4 x i32> %205, <i32 1200, i32 1200, i32 1200, i32 1200>
  %207 = sitofp <4 x i32> %206 to <4 x double>
  %208 = fmul fast <4 x double> %207, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %209 = extractelement <4 x i64> %202, i32 0
  %210 = shl i64 %209, 3
  %211 = add nuw nsw i64 %210, %201
  %212 = getelementptr i8, i8* %call, i64 %211
  %213 = bitcast i8* %212 to <4 x double>*
  store <4 x double> %208, <4 x double>* %213, align 8, !alias.scope !98, !noalias !100
  %index.next1006 = add i64 %index1005, 4
  %vec.ind.next1010 = add <4 x i64> %vec.ind1009, <i64 4, i64 4, i64 4, i64 4>
  %214 = icmp eq i64 %index.next1006, %196
  br i1 %214, label %polly.loop_exit809, label %vector.body1002, !llvm.loop !103

polly.loop_exit809:                               ; preds = %vector.body1002, %polly.loop_header807
  %polly.indvar_next805 = add nuw nsw i64 %polly.indvar804, 1
  %exitcond969.not = icmp eq i64 %polly.indvar804, %194
  br i1 %exitcond969.not, label %polly.loop_exit803, label %polly.loop_header801

polly.loop_header807:                             ; preds = %polly.loop_header801, %polly.loop_header807
  %polly.indvar810 = phi i64 [ %polly.indvar_next811, %polly.loop_header807 ], [ 0, %polly.loop_header801 ]
  %215 = add nuw nsw i64 %polly.indvar810, %197
  %216 = trunc i64 %215 to i32
  %217 = mul i32 %216, %200
  %218 = add i32 %217, 3
  %219 = urem i32 %218, 1200
  %p_conv31.i = sitofp i32 %219 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %220 = shl i64 %215, 3
  %221 = add nuw nsw i64 %220, %201
  %scevgep813 = getelementptr i8, i8* %call, i64 %221
  %scevgep813814 = bitcast i8* %scevgep813 to double*
  store double %p_div33.i, double* %scevgep813814, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next811 = add nuw nsw i64 %polly.indvar810, 1
  %exitcond965.not = icmp eq i64 %polly.indvar810, %198
  br i1 %exitcond965.not, label %polly.loop_exit809, label %polly.loop_header807, !llvm.loop !104

polly.loop_header816:                             ; preds = %polly.loop_exit797, %polly.loop_exit824
  %indvars.iv956 = phi i64 [ %indvars.iv.next957, %polly.loop_exit824 ], [ 0, %polly.loop_exit797 ]
  %polly.indvar819 = phi i64 [ %polly.indvar_next820, %polly.loop_exit824 ], [ 0, %polly.loop_exit797 ]
  %smin958 = call i64 @llvm.smin.i64(i64 %indvars.iv956, i64 -1168)
  %222 = shl nsw i64 %polly.indvar819, 5
  %223 = add nsw i64 %smin958, 1199
  br label %polly.loop_header822

polly.loop_exit824:                               ; preds = %polly.loop_exit830
  %polly.indvar_next820 = add nuw nsw i64 %polly.indvar819, 1
  %indvars.iv.next957 = add nsw i64 %indvars.iv956, -32
  %exitcond961.not = icmp eq i64 %polly.indvar_next820, 38
  br i1 %exitcond961.not, label %polly.loop_header842, label %polly.loop_header816

polly.loop_header822:                             ; preds = %polly.loop_exit830, %polly.loop_header816
  %indvars.iv952 = phi i64 [ %indvars.iv.next953, %polly.loop_exit830 ], [ 0, %polly.loop_header816 ]
  %polly.indvar825 = phi i64 [ %polly.indvar_next826, %polly.loop_exit830 ], [ 0, %polly.loop_header816 ]
  %224 = mul nsw i64 %polly.indvar825, -32
  %smin1018 = call i64 @llvm.smin.i64(i64 %224, i64 -968)
  %225 = add nsw i64 %smin1018, 1000
  %smin954 = call i64 @llvm.smin.i64(i64 %indvars.iv952, i64 -968)
  %226 = shl nsw i64 %polly.indvar825, 5
  %227 = add nsw i64 %smin954, 999
  br label %polly.loop_header828

polly.loop_exit830:                               ; preds = %polly.loop_exit836
  %polly.indvar_next826 = add nuw nsw i64 %polly.indvar825, 1
  %indvars.iv.next953 = add nsw i64 %indvars.iv952, -32
  %exitcond960.not = icmp eq i64 %polly.indvar_next826, 32
  br i1 %exitcond960.not, label %polly.loop_exit824, label %polly.loop_header822

polly.loop_header828:                             ; preds = %polly.loop_exit836, %polly.loop_header822
  %polly.indvar831 = phi i64 [ 0, %polly.loop_header822 ], [ %polly.indvar_next832, %polly.loop_exit836 ]
  %228 = add nuw nsw i64 %polly.indvar831, %222
  %229 = trunc i64 %228 to i32
  %230 = mul nuw nsw i64 %228, 8000
  %min.iters.check1019 = icmp eq i64 %225, 0
  br i1 %min.iters.check1019, label %polly.loop_header834, label %vector.ph1020

vector.ph1020:                                    ; preds = %polly.loop_header828
  %broadcast.splatinsert1029 = insertelement <4 x i64> poison, i64 %226, i32 0
  %broadcast.splat1030 = shufflevector <4 x i64> %broadcast.splatinsert1029, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1031 = insertelement <4 x i32> poison, i32 %229, i32 0
  %broadcast.splat1032 = shufflevector <4 x i32> %broadcast.splatinsert1031, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1017

vector.body1017:                                  ; preds = %vector.body1017, %vector.ph1020
  %index1023 = phi i64 [ 0, %vector.ph1020 ], [ %index.next1024, %vector.body1017 ]
  %vec.ind1027 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1020 ], [ %vec.ind.next1028, %vector.body1017 ]
  %231 = add nuw nsw <4 x i64> %vec.ind1027, %broadcast.splat1030
  %232 = trunc <4 x i64> %231 to <4 x i32>
  %233 = mul <4 x i32> %broadcast.splat1032, %232
  %234 = add <4 x i32> %233, <i32 2, i32 2, i32 2, i32 2>
  %235 = urem <4 x i32> %234, <i32 1000, i32 1000, i32 1000, i32 1000>
  %236 = sitofp <4 x i32> %235 to <4 x double>
  %237 = fmul fast <4 x double> %236, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %238 = extractelement <4 x i64> %231, i32 0
  %239 = shl i64 %238, 3
  %240 = add nuw nsw i64 %239, %230
  %241 = getelementptr i8, i8* %call2, i64 %240
  %242 = bitcast i8* %241 to <4 x double>*
  store <4 x double> %237, <4 x double>* %242, align 8, !alias.scope !102, !noalias !105
  %index.next1024 = add i64 %index1023, 4
  %vec.ind.next1028 = add <4 x i64> %vec.ind1027, <i64 4, i64 4, i64 4, i64 4>
  %243 = icmp eq i64 %index.next1024, %225
  br i1 %243, label %polly.loop_exit836, label %vector.body1017, !llvm.loop !106

polly.loop_exit836:                               ; preds = %vector.body1017, %polly.loop_header834
  %polly.indvar_next832 = add nuw nsw i64 %polly.indvar831, 1
  %exitcond959.not = icmp eq i64 %polly.indvar831, %223
  br i1 %exitcond959.not, label %polly.loop_exit830, label %polly.loop_header828

polly.loop_header834:                             ; preds = %polly.loop_header828, %polly.loop_header834
  %polly.indvar837 = phi i64 [ %polly.indvar_next838, %polly.loop_header834 ], [ 0, %polly.loop_header828 ]
  %244 = add nuw nsw i64 %polly.indvar837, %226
  %245 = trunc i64 %244 to i32
  %246 = mul i32 %245, %229
  %247 = add i32 %246, 2
  %248 = urem i32 %247, 1000
  %p_conv10.i = sitofp i32 %248 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %249 = shl i64 %244, 3
  %250 = add nuw nsw i64 %249, %230
  %scevgep840 = getelementptr i8, i8* %call2, i64 %250
  %scevgep840841 = bitcast i8* %scevgep840 to double*
  store double %p_div12.i, double* %scevgep840841, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %exitcond955.not = icmp eq i64 %polly.indvar837, %227
  br i1 %exitcond955.not, label %polly.loop_exit836, label %polly.loop_header834, !llvm.loop !107

polly.loop_header842:                             ; preds = %polly.loop_exit824, %polly.loop_exit850
  %indvars.iv946 = phi i64 [ %indvars.iv.next947, %polly.loop_exit850 ], [ 0, %polly.loop_exit824 ]
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_exit850 ], [ 0, %polly.loop_exit824 ]
  %smin948 = call i64 @llvm.smin.i64(i64 %indvars.iv946, i64 -1168)
  %251 = shl nsw i64 %polly.indvar845, 5
  %252 = add nsw i64 %smin948, 1199
  br label %polly.loop_header848

polly.loop_exit850:                               ; preds = %polly.loop_exit856
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %indvars.iv.next947 = add nsw i64 %indvars.iv946, -32
  %exitcond951.not = icmp eq i64 %polly.indvar_next846, 38
  br i1 %exitcond951.not, label %init_array.exit, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_exit856, %polly.loop_header842
  %indvars.iv942 = phi i64 [ %indvars.iv.next943, %polly.loop_exit856 ], [ 0, %polly.loop_header842 ]
  %polly.indvar851 = phi i64 [ %polly.indvar_next852, %polly.loop_exit856 ], [ 0, %polly.loop_header842 ]
  %253 = mul nsw i64 %polly.indvar851, -32
  %smin1036 = call i64 @llvm.smin.i64(i64 %253, i64 -968)
  %254 = add nsw i64 %smin1036, 1000
  %smin944 = call i64 @llvm.smin.i64(i64 %indvars.iv942, i64 -968)
  %255 = shl nsw i64 %polly.indvar851, 5
  %256 = add nsw i64 %smin944, 999
  br label %polly.loop_header854

polly.loop_exit856:                               ; preds = %polly.loop_exit862
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %indvars.iv.next943 = add nsw i64 %indvars.iv942, -32
  %exitcond950.not = icmp eq i64 %polly.indvar_next852, 32
  br i1 %exitcond950.not, label %polly.loop_exit850, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_exit862, %polly.loop_header848
  %polly.indvar857 = phi i64 [ 0, %polly.loop_header848 ], [ %polly.indvar_next858, %polly.loop_exit862 ]
  %257 = add nuw nsw i64 %polly.indvar857, %251
  %258 = trunc i64 %257 to i32
  %259 = mul nuw nsw i64 %257, 8000
  %min.iters.check1037 = icmp eq i64 %254, 0
  br i1 %min.iters.check1037, label %polly.loop_header860, label %vector.ph1038

vector.ph1038:                                    ; preds = %polly.loop_header854
  %broadcast.splatinsert1047 = insertelement <4 x i64> poison, i64 %255, i32 0
  %broadcast.splat1048 = shufflevector <4 x i64> %broadcast.splatinsert1047, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1049 = insertelement <4 x i32> poison, i32 %258, i32 0
  %broadcast.splat1050 = shufflevector <4 x i32> %broadcast.splatinsert1049, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1035

vector.body1035:                                  ; preds = %vector.body1035, %vector.ph1038
  %index1041 = phi i64 [ 0, %vector.ph1038 ], [ %index.next1042, %vector.body1035 ]
  %vec.ind1045 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1038 ], [ %vec.ind.next1046, %vector.body1035 ]
  %260 = add nuw nsw <4 x i64> %vec.ind1045, %broadcast.splat1048
  %261 = trunc <4 x i64> %260 to <4 x i32>
  %262 = mul <4 x i32> %broadcast.splat1050, %261
  %263 = add <4 x i32> %262, <i32 1, i32 1, i32 1, i32 1>
  %264 = urem <4 x i32> %263, <i32 1200, i32 1200, i32 1200, i32 1200>
  %265 = sitofp <4 x i32> %264 to <4 x double>
  %266 = fmul fast <4 x double> %265, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %267 = extractelement <4 x i64> %260, i32 0
  %268 = shl i64 %267, 3
  %269 = add nuw nsw i64 %268, %259
  %270 = getelementptr i8, i8* %call1, i64 %269
  %271 = bitcast i8* %270 to <4 x double>*
  store <4 x double> %266, <4 x double>* %271, align 8, !alias.scope !101, !noalias !108
  %index.next1042 = add i64 %index1041, 4
  %vec.ind.next1046 = add <4 x i64> %vec.ind1045, <i64 4, i64 4, i64 4, i64 4>
  %272 = icmp eq i64 %index.next1042, %254
  br i1 %272, label %polly.loop_exit862, label %vector.body1035, !llvm.loop !109

polly.loop_exit862:                               ; preds = %vector.body1035, %polly.loop_header860
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %exitcond949.not = icmp eq i64 %polly.indvar857, %252
  br i1 %exitcond949.not, label %polly.loop_exit856, label %polly.loop_header854

polly.loop_header860:                             ; preds = %polly.loop_header854, %polly.loop_header860
  %polly.indvar863 = phi i64 [ %polly.indvar_next864, %polly.loop_header860 ], [ 0, %polly.loop_header854 ]
  %273 = add nuw nsw i64 %polly.indvar863, %255
  %274 = trunc i64 %273 to i32
  %275 = mul i32 %274, %258
  %276 = add i32 %275, 1
  %277 = urem i32 %276, 1200
  %p_conv.i = sitofp i32 %277 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %278 = shl i64 %273, 3
  %279 = add nuw nsw i64 %278, %259
  %scevgep867 = getelementptr i8, i8* %call1, i64 %279
  %scevgep867868 = bitcast i8* %scevgep867 to double*
  store double %p_div.i, double* %scevgep867868, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %exitcond945.not = icmp eq i64 %polly.indvar863, %256
  br i1 %exitcond945.not, label %polly.loop_exit862, label %polly.loop_header860, !llvm.loop !110
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
!21 = distinct !{!"A"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 100}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !25, !34, !37}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !23, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !23, !39, !40}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = !{!"llvm.loop.interchange.followup_interchanged", !41}
!41 = distinct !{!41, !12, !23, !39, !42, !43, !44}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !23, !46, !47, !48, !49, !50, !56}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 50}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !23, !52, !53, !54, !55}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.loop.interchange.enable", i1 true}
!54 = !{!"llvm.loop.interchange.depth", i32 5}
!55 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
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
!72 = distinct !{!72, !68, !"polly.alias.scope.Packed_MemRef_call1"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !75, !13}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!67, !71, !72}
!77 = !{!67, !70, !72}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !75, !13}
!86 = !{!78, !82, !83}
!87 = !{!78, !81, !83}
!88 = distinct !{!88, !89, !"polly.alias.scope.MemRef_call"}
!89 = distinct !{!89, !"polly.alias.scope.domain"}
!90 = !{!91, !92, !93}
!91 = distinct !{!91, !89, !"polly.alias.scope.MemRef_call1"}
!92 = distinct !{!92, !89, !"polly.alias.scope.MemRef_call2"}
!93 = distinct !{!93, !89, !"polly.alias.scope.Packed_MemRef_call1"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !75, !13}
!96 = !{!88, !92, !93}
!97 = !{!88, !91, !93}
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
