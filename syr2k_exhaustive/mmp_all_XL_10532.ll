; ModuleID = 'syr2k_exhaustive/mmp_all_XL_10532.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_10532.c"
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
  %scevgep995 = getelementptr i8, i8* %call2, i64 %12
  %scevgep994 = getelementptr i8, i8* %call2, i64 %11
  %scevgep993 = getelementptr i8, i8* %call1, i64 %12
  %scevgep992 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep992, %scevgep995
  %bound1 = icmp ult i8* %scevgep994, %scevgep993
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
  br i1 %exitcond18.not.i, label %vector.ph999, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph999:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1006 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1007 = shufflevector <4 x i64> %broadcast.splatinsert1006, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %vector.ph999
  %index1000 = phi i64 [ 0, %vector.ph999 ], [ %index.next1001, %vector.body998 ]
  %vec.ind1004 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph999 ], [ %vec.ind.next1005, %vector.body998 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1004, %broadcast.splat1007
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv7.i, i64 %index1000
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1001 = add i64 %index1000, 4
  %vec.ind.next1005 = add <4 x i64> %vec.ind1004, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1001, 1200
  br i1 %40, label %for.inc41.i, label %vector.body998, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body998
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph999, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit761
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header500, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1062 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1062, label %for.body3.i46.preheader1139, label %vector.ph1063

vector.ph1063:                                    ; preds = %for.body3.i46.preheader
  %n.vec1065 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1061

vector.body1061:                                  ; preds = %vector.body1061, %vector.ph1063
  %index1066 = phi i64 [ 0, %vector.ph1063 ], [ %index.next1067, %vector.body1061 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i, i64 %index1066
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1067 = add i64 %index1066, 4
  %46 = icmp eq i64 %index.next1067, %n.vec1065
  br i1 %46, label %middle.block1059, label %vector.body1061, !llvm.loop !18

middle.block1059:                                 ; preds = %vector.body1061
  %cmp.n1069 = icmp eq i64 %indvars.iv21.i, %n.vec1065
  br i1 %cmp.n1069, label %for.inc6.i, label %for.body3.i46.preheader1139

for.body3.i46.preheader1139:                      ; preds = %for.body3.i46.preheader, %middle.block1059
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1065, %middle.block1059 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1139, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1139 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1059, %for.cond1.preheader.i45
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
  %min.iters.check1085 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1085, label %for.body3.i60.preheader1137, label %vector.ph1086

vector.ph1086:                                    ; preds = %for.body3.i60.preheader
  %n.vec1088 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1084

vector.body1084:                                  ; preds = %vector.body1084, %vector.ph1086
  %index1089 = phi i64 [ 0, %vector.ph1086 ], [ %index.next1090, %vector.body1084 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i52, i64 %index1089
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1093 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1093, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1090 = add i64 %index1089, 4
  %57 = icmp eq i64 %index.next1090, %n.vec1088
  br i1 %57, label %middle.block1082, label %vector.body1084, !llvm.loop !51

middle.block1082:                                 ; preds = %vector.body1084
  %cmp.n1092 = icmp eq i64 %indvars.iv21.i52, %n.vec1088
  br i1 %cmp.n1092, label %for.inc6.i63, label %for.body3.i60.preheader1137

for.body3.i60.preheader1137:                      ; preds = %for.body3.i60.preheader, %middle.block1082
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1088, %middle.block1082 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1137, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1137 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1082, %for.cond1.preheader.i54
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
  %min.iters.check1111 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1111, label %for.body3.i99.preheader1135, label %vector.ph1112

vector.ph1112:                                    ; preds = %for.body3.i99.preheader
  %n.vec1114 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1110

vector.body1110:                                  ; preds = %vector.body1110, %vector.ph1112
  %index1115 = phi i64 [ 0, %vector.ph1112 ], [ %index.next1116, %vector.body1110 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i91, i64 %index1115
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1119 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1119, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1116 = add i64 %index1115, 4
  %68 = icmp eq i64 %index.next1116, %n.vec1114
  br i1 %68, label %middle.block1108, label %vector.body1110, !llvm.loop !53

middle.block1108:                                 ; preds = %vector.body1110
  %cmp.n1118 = icmp eq i64 %indvars.iv21.i91, %n.vec1114
  br i1 %cmp.n1118, label %for.inc6.i102, label %for.body3.i99.preheader1135

for.body3.i99.preheader1135:                      ; preds = %for.body3.i99.preheader, %middle.block1108
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1114, %middle.block1108 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1135, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1135 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1108, %for.cond1.preheader.i93
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call726, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1123 = phi i64 [ %indvar.next1124, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1123, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1125 = icmp ult i64 %88, 4
  br i1 %min.iters.check1125, label %polly.loop_header191.preheader, label %vector.ph1126

vector.ph1126:                                    ; preds = %polly.loop_header
  %n.vec1128 = and i64 %88, -4
  br label %vector.body1122

vector.body1122:                                  ; preds = %vector.body1122, %vector.ph1126
  %index1129 = phi i64 [ 0, %vector.ph1126 ], [ %index.next1130, %vector.body1122 ]
  %90 = shl nuw nsw i64 %index1129, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1133 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1133, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1130 = add i64 %index1129, 4
  %95 = icmp eq i64 %index.next1130, %n.vec1128
  br i1 %95, label %middle.block1120, label %vector.body1122, !llvm.loop !64

middle.block1120:                                 ; preds = %vector.body1122
  %cmp.n1132 = icmp eq i64 %88, %n.vec1128
  br i1 %cmp.n1132, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1120
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1128, %middle.block1120 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1120
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond908.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1124 = add i64 %indvar1123, 1
  br i1 %exitcond908.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond907.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond907.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv897 = phi i64 [ %indvars.iv.next898, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = shl nuw nsw i64 %polly.indvar202, 1
  %98 = add nuw nsw i64 %97, 2
  %pexp.p_div_q = udiv i64 %98, 5
  %99 = sub nsw i64 %97, %pexp.p_div_q
  %100 = add nsw i64 %99, 1
  %.inv = icmp slt i64 %99, 14
  %101 = select i1 %.inv, i64 %100, i64 14
  %polly.loop_guard = icmp sgt i64 %101, -1
  %102 = mul nsw i64 %polly.indvar202, -128
  %103 = icmp slt i64 %102, -1072
  %104 = select i1 %103, i64 %102, i64 -1072
  %105 = add nsw i64 %104, 1199
  %106 = shl nsw i64 %polly.indvar202, 7
  br i1 %polly.loop_guard, label %polly.loop_header205.us, label %polly.loop_exit207

polly.loop_header205.us:                          ; preds = %polly.loop_header199, %polly.loop_exit213.loopexit.us
  %polly.indvar208.us = phi i64 [ %polly.indvar_next209.us, %polly.loop_exit213.loopexit.us ], [ 0, %polly.loop_header199 ]
  %107 = shl i64 %polly.indvar208.us, 5
  %108 = shl i64 %polly.indvar208.us, 5
  %109 = shl i64 %polly.indvar208.us, 5
  %110 = or i64 %109, 8
  %111 = shl i64 %polly.indvar208.us, 5
  %112 = or i64 %111, 16
  %113 = or i64 %107, 24
  br label %polly.loop_header211.us

polly.loop_header211.us:                          ; preds = %polly.loop_header205.us, %polly.loop_exit220.us
  %indvars.iv899 = phi i64 [ %indvars.iv897, %polly.loop_header205.us ], [ %indvars.iv.next900, %polly.loop_exit220.us ]
  %indvars.iv895 = phi i64 [ %indvars.iv, %polly.loop_header205.us ], [ %indvars.iv.next896, %polly.loop_exit220.us ]
  %polly.indvar214.us = phi i64 [ 0, %polly.loop_header205.us ], [ %polly.indvar_next215.us, %polly.loop_exit220.us ]
  %114 = mul nsw i64 %polly.indvar214.us, 80
  %115 = add nsw i64 %114, %102
  %116 = icmp sgt i64 %115, 0
  %117 = select i1 %116, i64 %115, i64 0
  %polly.loop_guard221.not.us = icmp sgt i64 %117, %105
  br i1 %polly.loop_guard221.not.us, label %polly.loop_exit220.us, label %polly.loop_header218.preheader.us

polly.loop_header218.us:                          ; preds = %polly.loop_header218.preheader.us, %polly.loop_exit227.us
  %indvars.iv901 = phi i64 [ %123, %polly.loop_header218.preheader.us ], [ %indvars.iv.next902, %polly.loop_exit227.us ]
  %polly.indvar222.us = phi i64 [ %117, %polly.loop_header218.preheader.us ], [ %polly.indvar_next223.us, %polly.loop_exit227.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv901, i64 79)
  %118 = add nsw i64 %polly.indvar222.us, %124
  %polly.loop_guard235.us981 = icmp sgt i64 %118, -1
  %119 = add nuw nsw i64 %polly.indvar222.us, %106
  %120 = mul i64 %119, 8000
  %121 = mul i64 %119, 9600
  br i1 %polly.loop_guard235.us981, label %polly.loop_header225.us.us.preheader, label %polly.loop_exit227.us

polly.loop_header225.us.us.preheader:             ; preds = %polly.loop_header218.us
  %122 = add i64 %108, %120
  %scevgep242.us.us = getelementptr i8, i8* %call2, i64 %122
  %scevgep242243.us.us = bitcast i8* %scevgep242.us.us to double*
  %_p_scalar_244.us.us = load double, double* %scevgep242243.us.us, align 8, !alias.scope !63, !noalias !67
  %scevgep248.us.us = getelementptr i8, i8* %call1, i64 %122
  %scevgep248249.us.us = bitcast i8* %scevgep248.us.us to double*
  %_p_scalar_250.us.us = load double, double* %scevgep248249.us.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header232.us.us

polly.loop_exit227.us:                            ; preds = %polly.loop_header232.us.us.3, %polly.loop_header218.us
  %polly.indvar_next223.us = add nuw nsw i64 %polly.indvar222.us, 1
  %polly.loop_cond224.not.not.us = icmp ult i64 %polly.indvar222.us, %105
  %indvars.iv.next902 = add i64 %indvars.iv901, 1
  br i1 %polly.loop_cond224.not.not.us, label %polly.loop_header218.us, label %polly.loop_exit220.us

polly.loop_exit220.us:                            ; preds = %polly.loop_exit227.us, %polly.loop_header211.us
  %polly.indvar_next215.us = add nuw i64 %polly.indvar214.us, 1
  %indvars.iv.next896 = add i64 %indvars.iv895, 80
  %indvars.iv.next900 = add i64 %indvars.iv899, -80
  %exitcond904.not = icmp eq i64 %polly.indvar214.us, %101
  br i1 %exitcond904.not, label %polly.loop_exit213.loopexit.us, label %polly.loop_header211.us

polly.loop_header218.preheader.us:                ; preds = %polly.loop_header211.us
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv895, i64 0)
  %123 = add i64 %smax, %indvars.iv899
  %124 = sub nsw i64 %106, %114
  br label %polly.loop_header218.us

polly.loop_exit213.loopexit.us:                   ; preds = %polly.loop_exit220.us
  %polly.indvar_next209.us = add nuw nsw i64 %polly.indvar208.us, 1
  %exitcond905.not = icmp eq i64 %polly.indvar_next209.us, 250
  br i1 %exitcond905.not, label %polly.loop_exit207, label %polly.loop_header205.us

polly.loop_exit234.loopexit.us.us:                ; preds = %polly.loop_header232.us.us
  %125 = add i64 %110, %120
  %scevgep242.us.us.1 = getelementptr i8, i8* %call2, i64 %125
  %scevgep242243.us.us.1 = bitcast i8* %scevgep242.us.us.1 to double*
  %_p_scalar_244.us.us.1 = load double, double* %scevgep242243.us.us.1, align 8, !alias.scope !63, !noalias !67
  %scevgep248.us.us.1 = getelementptr i8, i8* %call1, i64 %125
  %scevgep248249.us.us.1 = bitcast i8* %scevgep248.us.us.1 to double*
  %_p_scalar_250.us.us.1 = load double, double* %scevgep248249.us.us.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header232.us.us.1

polly.loop_header232.us.us:                       ; preds = %polly.loop_header232.us.us, %polly.loop_header225.us.us.preheader
  %polly.indvar236.us.us = phi i64 [ %polly.indvar_next237.us.us, %polly.loop_header232.us.us ], [ 0, %polly.loop_header225.us.us.preheader ]
  %126 = add nuw nsw i64 %polly.indvar236.us.us, %114
  %127 = mul i64 %126, 8000
  %128 = add i64 %127, %108
  %scevgep239.us.us = getelementptr i8, i8* %call1, i64 %128
  %scevgep239240.us.us = bitcast i8* %scevgep239.us.us to double*
  %_p_scalar_241.us.us = load double, double* %scevgep239240.us.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.us = fmul fast double %_p_scalar_244.us.us, %_p_scalar_241.us.us
  %scevgep245.us.us = getelementptr i8, i8* %call2, i64 %128
  %scevgep245246.us.us = bitcast i8* %scevgep245.us.us to double*
  %_p_scalar_247.us.us = load double, double* %scevgep245246.us.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.us = fmul fast double %_p_scalar_250.us.us, %_p_scalar_247.us.us
  %129 = shl i64 %126, 3
  %130 = add i64 %129, %121
  %scevgep251.us.us = getelementptr i8, i8* %call, i64 %130
  %scevgep251252.us.us = bitcast i8* %scevgep251.us.us to double*
  %_p_scalar_253.us.us = load double, double* %scevgep251252.us.us, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.us = fadd fast double %p_mul37.i114.us.us, %p_mul27.i112.us.us
  %p_reass.mul.i117.us.us = fmul fast double %p_reass.add.i116.us.us, 1.500000e+00
  %p_add42.i118.us.us = fadd fast double %p_reass.mul.i117.us.us, %_p_scalar_253.us.us
  store double %p_add42.i118.us.us, double* %scevgep251252.us.us, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next237.us.us = add nuw nsw i64 %polly.indvar236.us.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar236.us.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit234.loopexit.us.us, label %polly.loop_header232.us.us

polly.loop_exit207:                               ; preds = %polly.loop_exit213.loopexit.us, %polly.loop_header199
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %indvars.iv.next898 = add nuw nsw i64 %indvars.iv897, 128
  %exitcond906.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond906.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header340:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit348
  %indvar1097 = phi i64 [ %indvar.next1098, %polly.loop_exit348 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar343 = phi i64 [ %polly.indvar_next344, %polly.loop_exit348 ], [ 1, %kernel_syr2k.exit ]
  %131 = add i64 %indvar1097, 1
  %132 = mul nuw nsw i64 %polly.indvar343, 9600
  %scevgep352 = getelementptr i8, i8* %call, i64 %132
  %min.iters.check1099 = icmp ult i64 %131, 4
  br i1 %min.iters.check1099, label %polly.loop_header346.preheader, label %vector.ph1100

vector.ph1100:                                    ; preds = %polly.loop_header340
  %n.vec1102 = and i64 %131, -4
  br label %vector.body1096

vector.body1096:                                  ; preds = %vector.body1096, %vector.ph1100
  %index1103 = phi i64 [ 0, %vector.ph1100 ], [ %index.next1104, %vector.body1096 ]
  %133 = shl nuw nsw i64 %index1103, 3
  %134 = getelementptr i8, i8* %scevgep352, i64 %133
  %135 = bitcast i8* %134 to <4 x double>*
  %wide.load1107 = load <4 x double>, <4 x double>* %135, align 8, !alias.scope !69, !noalias !71
  %136 = fmul fast <4 x double> %wide.load1107, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %137 = bitcast i8* %134 to <4 x double>*
  store <4 x double> %136, <4 x double>* %137, align 8, !alias.scope !69, !noalias !71
  %index.next1104 = add i64 %index1103, 4
  %138 = icmp eq i64 %index.next1104, %n.vec1102
  br i1 %138, label %middle.block1094, label %vector.body1096, !llvm.loop !74

middle.block1094:                                 ; preds = %vector.body1096
  %cmp.n1106 = icmp eq i64 %131, %n.vec1102
  br i1 %cmp.n1106, label %polly.loop_exit348, label %polly.loop_header346.preheader

polly.loop_header346.preheader:                   ; preds = %polly.loop_header340, %middle.block1094
  %polly.indvar349.ph = phi i64 [ 0, %polly.loop_header340 ], [ %n.vec1102, %middle.block1094 ]
  br label %polly.loop_header346

polly.loop_exit348:                               ; preds = %polly.loop_header346, %middle.block1094
  %polly.indvar_next344 = add nuw nsw i64 %polly.indvar343, 1
  %exitcond927.not = icmp eq i64 %polly.indvar_next344, 1200
  %indvar.next1098 = add i64 %indvar1097, 1
  br i1 %exitcond927.not, label %polly.loop_header356, label %polly.loop_header340

polly.loop_header346:                             ; preds = %polly.loop_header346.preheader, %polly.loop_header346
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_header346 ], [ %polly.indvar349.ph, %polly.loop_header346.preheader ]
  %139 = shl nuw nsw i64 %polly.indvar349, 3
  %scevgep353 = getelementptr i8, i8* %scevgep352, i64 %139
  %scevgep353354 = bitcast i8* %scevgep353 to double*
  %_p_scalar_355 = load double, double* %scevgep353354, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_355, 1.200000e+00
  store double %p_mul.i57, double* %scevgep353354, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %exitcond926.not = icmp eq i64 %polly.indvar_next350, %polly.indvar343
  br i1 %exitcond926.not, label %polly.loop_exit348, label %polly.loop_header346, !llvm.loop !75

polly.loop_header356:                             ; preds = %polly.loop_exit348, %polly.loop_exit364
  %indvars.iv914 = phi i64 [ %indvars.iv.next915, %polly.loop_exit364 ], [ 0, %polly.loop_exit348 ]
  %indvars.iv909 = phi i64 [ %indvars.iv.next910, %polly.loop_exit364 ], [ 0, %polly.loop_exit348 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 0, %polly.loop_exit348 ]
  %140 = shl nuw nsw i64 %polly.indvar359, 1
  %141 = add nuw nsw i64 %140, 2
  %pexp.p_div_q368 = udiv i64 %141, 5
  %142 = sub nsw i64 %140, %pexp.p_div_q368
  %143 = add nsw i64 %142, 1
  %.inv780 = icmp slt i64 %142, 14
  %144 = select i1 %.inv780, i64 %143, i64 14
  %polly.loop_guard373 = icmp sgt i64 %144, -1
  %145 = mul nsw i64 %polly.indvar359, -128
  %146 = icmp slt i64 %145, -1072
  %147 = select i1 %146, i64 %145, i64 -1072
  %148 = add nsw i64 %147, 1199
  %149 = shl nsw i64 %polly.indvar359, 7
  br i1 %polly.loop_guard373, label %polly.loop_header362.us, label %polly.loop_exit364

polly.loop_header362.us:                          ; preds = %polly.loop_header356, %polly.loop_exit372.loopexit.us
  %polly.indvar365.us = phi i64 [ %polly.indvar_next366.us, %polly.loop_exit372.loopexit.us ], [ 0, %polly.loop_header356 ]
  %150 = shl i64 %polly.indvar365.us, 5
  %151 = shl i64 %polly.indvar365.us, 5
  %152 = shl i64 %polly.indvar365.us, 5
  %153 = or i64 %152, 8
  %154 = shl i64 %polly.indvar365.us, 5
  %155 = or i64 %154, 16
  %156 = or i64 %150, 24
  br label %polly.loop_header370.us

polly.loop_header370.us:                          ; preds = %polly.loop_header362.us, %polly.loop_exit380.us
  %indvars.iv916 = phi i64 [ %indvars.iv914, %polly.loop_header362.us ], [ %indvars.iv.next917, %polly.loop_exit380.us ]
  %indvars.iv911 = phi i64 [ %indvars.iv909, %polly.loop_header362.us ], [ %indvars.iv.next912, %polly.loop_exit380.us ]
  %polly.indvar374.us = phi i64 [ 0, %polly.loop_header362.us ], [ %polly.indvar_next375.us, %polly.loop_exit380.us ]
  %157 = mul nsw i64 %polly.indvar374.us, 80
  %158 = add nsw i64 %157, %145
  %159 = icmp sgt i64 %158, 0
  %160 = select i1 %159, i64 %158, i64 0
  %polly.loop_guard381.not.us = icmp sgt i64 %160, %148
  br i1 %polly.loop_guard381.not.us, label %polly.loop_exit380.us, label %polly.loop_header378.preheader.us

polly.loop_header378.us:                          ; preds = %polly.loop_header378.preheader.us, %polly.loop_exit387.us
  %indvars.iv918 = phi i64 [ %166, %polly.loop_header378.preheader.us ], [ %indvars.iv.next919, %polly.loop_exit387.us ]
  %polly.indvar382.us = phi i64 [ %160, %polly.loop_header378.preheader.us ], [ %polly.indvar_next383.us, %polly.loop_exit387.us ]
  %smin920 = call i64 @llvm.smin.i64(i64 %indvars.iv918, i64 79)
  %161 = add nsw i64 %polly.indvar382.us, %167
  %polly.loop_guard395.us982 = icmp sgt i64 %161, -1
  %162 = add nuw nsw i64 %polly.indvar382.us, %149
  %163 = mul i64 %162, 8000
  %164 = mul i64 %162, 9600
  br i1 %polly.loop_guard395.us982, label %polly.loop_header385.us.us.preheader, label %polly.loop_exit387.us

polly.loop_header385.us.us.preheader:             ; preds = %polly.loop_header378.us
  %165 = add i64 %151, %163
  %scevgep402.us.us = getelementptr i8, i8* %call2, i64 %165
  %scevgep402403.us.us = bitcast i8* %scevgep402.us.us to double*
  %_p_scalar_404.us.us = load double, double* %scevgep402403.us.us, align 8, !alias.scope !73, !noalias !76
  %scevgep408.us.us = getelementptr i8, i8* %call1, i64 %165
  %scevgep408409.us.us = bitcast i8* %scevgep408.us.us to double*
  %_p_scalar_410.us.us = load double, double* %scevgep408409.us.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header392.us.us

polly.loop_exit387.us:                            ; preds = %polly.loop_header392.us.us.3, %polly.loop_header378.us
  %polly.indvar_next383.us = add nuw nsw i64 %polly.indvar382.us, 1
  %polly.loop_cond384.not.not.us = icmp ult i64 %polly.indvar382.us, %148
  %indvars.iv.next919 = add i64 %indvars.iv918, 1
  br i1 %polly.loop_cond384.not.not.us, label %polly.loop_header378.us, label %polly.loop_exit380.us

polly.loop_exit380.us:                            ; preds = %polly.loop_exit387.us, %polly.loop_header370.us
  %polly.indvar_next375.us = add nuw i64 %polly.indvar374.us, 1
  %indvars.iv.next912 = add i64 %indvars.iv911, 80
  %indvars.iv.next917 = add i64 %indvars.iv916, -80
  %exitcond923.not = icmp eq i64 %polly.indvar374.us, %144
  br i1 %exitcond923.not, label %polly.loop_exit372.loopexit.us, label %polly.loop_header370.us

polly.loop_header378.preheader.us:                ; preds = %polly.loop_header370.us
  %smax913 = call i64 @llvm.smax.i64(i64 %indvars.iv911, i64 0)
  %166 = add i64 %smax913, %indvars.iv916
  %167 = sub nsw i64 %149, %157
  br label %polly.loop_header378.us

polly.loop_exit372.loopexit.us:                   ; preds = %polly.loop_exit380.us
  %polly.indvar_next366.us = add nuw nsw i64 %polly.indvar365.us, 1
  %exitcond924.not = icmp eq i64 %polly.indvar_next366.us, 250
  br i1 %exitcond924.not, label %polly.loop_exit364, label %polly.loop_header362.us

polly.loop_exit394.loopexit.us.us:                ; preds = %polly.loop_header392.us.us
  %168 = add i64 %153, %163
  %scevgep402.us.us.1 = getelementptr i8, i8* %call2, i64 %168
  %scevgep402403.us.us.1 = bitcast i8* %scevgep402.us.us.1 to double*
  %_p_scalar_404.us.us.1 = load double, double* %scevgep402403.us.us.1, align 8, !alias.scope !73, !noalias !76
  %scevgep408.us.us.1 = getelementptr i8, i8* %call1, i64 %168
  %scevgep408409.us.us.1 = bitcast i8* %scevgep408.us.us.1 to double*
  %_p_scalar_410.us.us.1 = load double, double* %scevgep408409.us.us.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header392.us.us.1

polly.loop_header392.us.us:                       ; preds = %polly.loop_header392.us.us, %polly.loop_header385.us.us.preheader
  %polly.indvar396.us.us = phi i64 [ %polly.indvar_next397.us.us, %polly.loop_header392.us.us ], [ 0, %polly.loop_header385.us.us.preheader ]
  %169 = add nuw nsw i64 %polly.indvar396.us.us, %157
  %170 = mul i64 %169, 8000
  %171 = add i64 %170, %151
  %scevgep399.us.us = getelementptr i8, i8* %call1, i64 %171
  %scevgep399400.us.us = bitcast i8* %scevgep399.us.us to double*
  %_p_scalar_401.us.us = load double, double* %scevgep399400.us.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.us = fmul fast double %_p_scalar_404.us.us, %_p_scalar_401.us.us
  %scevgep405.us.us = getelementptr i8, i8* %call2, i64 %171
  %scevgep405406.us.us = bitcast i8* %scevgep405.us.us to double*
  %_p_scalar_407.us.us = load double, double* %scevgep405406.us.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.us = fmul fast double %_p_scalar_410.us.us, %_p_scalar_407.us.us
  %172 = shl i64 %169, 3
  %173 = add i64 %172, %164
  %scevgep411.us.us = getelementptr i8, i8* %call, i64 %173
  %scevgep411412.us.us = bitcast i8* %scevgep411.us.us to double*
  %_p_scalar_413.us.us = load double, double* %scevgep411412.us.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.us = fadd fast double %p_mul37.i75.us.us, %p_mul27.i73.us.us
  %p_reass.mul.i78.us.us = fmul fast double %p_reass.add.i77.us.us, 1.500000e+00
  %p_add42.i79.us.us = fadd fast double %p_reass.mul.i78.us.us, %_p_scalar_413.us.us
  store double %p_add42.i79.us.us, double* %scevgep411412.us.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next397.us.us = add nuw nsw i64 %polly.indvar396.us.us, 1
  %exitcond921.not = icmp eq i64 %polly.indvar396.us.us, %smin920
  br i1 %exitcond921.not, label %polly.loop_exit394.loopexit.us.us, label %polly.loop_header392.us.us

polly.loop_exit364:                               ; preds = %polly.loop_exit372.loopexit.us, %polly.loop_header356
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %indvars.iv.next910 = add nsw i64 %indvars.iv909, -128
  %indvars.iv.next915 = add nuw nsw i64 %indvars.iv914, 128
  %exitcond925.not = icmp eq i64 %polly.indvar_next360, 10
  br i1 %exitcond925.not, label %kernel_syr2k.exit90, label %polly.loop_header356

polly.loop_header500:                             ; preds = %init_array.exit, %polly.loop_exit508
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit508 ], [ 0, %init_array.exit ]
  %polly.indvar503 = phi i64 [ %polly.indvar_next504, %polly.loop_exit508 ], [ 1, %init_array.exit ]
  %174 = add i64 %indvar, 1
  %175 = mul nuw nsw i64 %polly.indvar503, 9600
  %scevgep512 = getelementptr i8, i8* %call, i64 %175
  %min.iters.check1073 = icmp ult i64 %174, 4
  br i1 %min.iters.check1073, label %polly.loop_header506.preheader, label %vector.ph1074

vector.ph1074:                                    ; preds = %polly.loop_header500
  %n.vec1076 = and i64 %174, -4
  br label %vector.body1072

vector.body1072:                                  ; preds = %vector.body1072, %vector.ph1074
  %index1077 = phi i64 [ 0, %vector.ph1074 ], [ %index.next1078, %vector.body1072 ]
  %176 = shl nuw nsw i64 %index1077, 3
  %177 = getelementptr i8, i8* %scevgep512, i64 %176
  %178 = bitcast i8* %177 to <4 x double>*
  %wide.load1081 = load <4 x double>, <4 x double>* %178, align 8, !alias.scope !78, !noalias !80
  %179 = fmul fast <4 x double> %wide.load1081, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %180 = bitcast i8* %177 to <4 x double>*
  store <4 x double> %179, <4 x double>* %180, align 8, !alias.scope !78, !noalias !80
  %index.next1078 = add i64 %index1077, 4
  %181 = icmp eq i64 %index.next1078, %n.vec1076
  br i1 %181, label %middle.block1070, label %vector.body1072, !llvm.loop !83

middle.block1070:                                 ; preds = %vector.body1072
  %cmp.n1080 = icmp eq i64 %174, %n.vec1076
  br i1 %cmp.n1080, label %polly.loop_exit508, label %polly.loop_header506.preheader

polly.loop_header506.preheader:                   ; preds = %polly.loop_header500, %middle.block1070
  %polly.indvar509.ph = phi i64 [ 0, %polly.loop_header500 ], [ %n.vec1076, %middle.block1070 ]
  br label %polly.loop_header506

polly.loop_exit508:                               ; preds = %polly.loop_header506, %middle.block1070
  %polly.indvar_next504 = add nuw nsw i64 %polly.indvar503, 1
  %exitcond946.not = icmp eq i64 %polly.indvar_next504, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond946.not, label %polly.loop_header516, label %polly.loop_header500

polly.loop_header506:                             ; preds = %polly.loop_header506.preheader, %polly.loop_header506
  %polly.indvar509 = phi i64 [ %polly.indvar_next510, %polly.loop_header506 ], [ %polly.indvar509.ph, %polly.loop_header506.preheader ]
  %182 = shl nuw nsw i64 %polly.indvar509, 3
  %scevgep513 = getelementptr i8, i8* %scevgep512, i64 %182
  %scevgep513514 = bitcast i8* %scevgep513 to double*
  %_p_scalar_515 = load double, double* %scevgep513514, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_515, 1.200000e+00
  store double %p_mul.i, double* %scevgep513514, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next510 = add nuw nsw i64 %polly.indvar509, 1
  %exitcond945.not = icmp eq i64 %polly.indvar_next510, %polly.indvar503
  br i1 %exitcond945.not, label %polly.loop_exit508, label %polly.loop_header506, !llvm.loop !84

polly.loop_header516:                             ; preds = %polly.loop_exit508, %polly.loop_exit524
  %indvars.iv933 = phi i64 [ %indvars.iv.next934, %polly.loop_exit524 ], [ 0, %polly.loop_exit508 ]
  %indvars.iv928 = phi i64 [ %indvars.iv.next929, %polly.loop_exit524 ], [ 0, %polly.loop_exit508 ]
  %polly.indvar519 = phi i64 [ %polly.indvar_next520, %polly.loop_exit524 ], [ 0, %polly.loop_exit508 ]
  %183 = shl nuw nsw i64 %polly.indvar519, 1
  %184 = add nuw nsw i64 %183, 2
  %pexp.p_div_q528 = udiv i64 %184, 5
  %185 = sub nsw i64 %183, %pexp.p_div_q528
  %186 = add nsw i64 %185, 1
  %.inv781 = icmp slt i64 %185, 14
  %187 = select i1 %.inv781, i64 %186, i64 14
  %polly.loop_guard533 = icmp sgt i64 %187, -1
  %188 = mul nsw i64 %polly.indvar519, -128
  %189 = icmp slt i64 %188, -1072
  %190 = select i1 %189, i64 %188, i64 -1072
  %191 = add nsw i64 %190, 1199
  %192 = shl nsw i64 %polly.indvar519, 7
  br i1 %polly.loop_guard533, label %polly.loop_header522.us, label %polly.loop_exit524

polly.loop_header522.us:                          ; preds = %polly.loop_header516, %polly.loop_exit532.loopexit.us
  %polly.indvar525.us = phi i64 [ %polly.indvar_next526.us, %polly.loop_exit532.loopexit.us ], [ 0, %polly.loop_header516 ]
  %193 = shl i64 %polly.indvar525.us, 5
  %194 = shl i64 %polly.indvar525.us, 5
  %195 = shl i64 %polly.indvar525.us, 5
  %196 = or i64 %195, 8
  %197 = shl i64 %polly.indvar525.us, 5
  %198 = or i64 %197, 16
  %199 = or i64 %193, 24
  br label %polly.loop_header530.us

polly.loop_header530.us:                          ; preds = %polly.loop_header522.us, %polly.loop_exit540.us
  %indvars.iv935 = phi i64 [ %indvars.iv933, %polly.loop_header522.us ], [ %indvars.iv.next936, %polly.loop_exit540.us ]
  %indvars.iv930 = phi i64 [ %indvars.iv928, %polly.loop_header522.us ], [ %indvars.iv.next931, %polly.loop_exit540.us ]
  %polly.indvar534.us = phi i64 [ 0, %polly.loop_header522.us ], [ %polly.indvar_next535.us, %polly.loop_exit540.us ]
  %200 = mul nsw i64 %polly.indvar534.us, 80
  %201 = add nsw i64 %200, %188
  %202 = icmp sgt i64 %201, 0
  %203 = select i1 %202, i64 %201, i64 0
  %polly.loop_guard541.not.us = icmp sgt i64 %203, %191
  br i1 %polly.loop_guard541.not.us, label %polly.loop_exit540.us, label %polly.loop_header538.preheader.us

polly.loop_header538.us:                          ; preds = %polly.loop_header538.preheader.us, %polly.loop_exit547.us
  %indvars.iv937 = phi i64 [ %209, %polly.loop_header538.preheader.us ], [ %indvars.iv.next938, %polly.loop_exit547.us ]
  %polly.indvar542.us = phi i64 [ %203, %polly.loop_header538.preheader.us ], [ %polly.indvar_next543.us, %polly.loop_exit547.us ]
  %smin939 = call i64 @llvm.smin.i64(i64 %indvars.iv937, i64 79)
  %204 = add nsw i64 %polly.indvar542.us, %210
  %polly.loop_guard555.us983 = icmp sgt i64 %204, -1
  %205 = add nuw nsw i64 %polly.indvar542.us, %192
  %206 = mul i64 %205, 8000
  %207 = mul i64 %205, 9600
  br i1 %polly.loop_guard555.us983, label %polly.loop_header545.us.us.preheader, label %polly.loop_exit547.us

polly.loop_header545.us.us.preheader:             ; preds = %polly.loop_header538.us
  %208 = add i64 %194, %206
  %scevgep562.us.us = getelementptr i8, i8* %call2, i64 %208
  %scevgep562563.us.us = bitcast i8* %scevgep562.us.us to double*
  %_p_scalar_564.us.us = load double, double* %scevgep562563.us.us, align 8, !alias.scope !82, !noalias !85
  %scevgep568.us.us = getelementptr i8, i8* %call1, i64 %208
  %scevgep568569.us.us = bitcast i8* %scevgep568.us.us to double*
  %_p_scalar_570.us.us = load double, double* %scevgep568569.us.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header552.us.us

polly.loop_exit547.us:                            ; preds = %polly.loop_header552.us.us.3, %polly.loop_header538.us
  %polly.indvar_next543.us = add nuw nsw i64 %polly.indvar542.us, 1
  %polly.loop_cond544.not.not.us = icmp ult i64 %polly.indvar542.us, %191
  %indvars.iv.next938 = add i64 %indvars.iv937, 1
  br i1 %polly.loop_cond544.not.not.us, label %polly.loop_header538.us, label %polly.loop_exit540.us

polly.loop_exit540.us:                            ; preds = %polly.loop_exit547.us, %polly.loop_header530.us
  %polly.indvar_next535.us = add nuw i64 %polly.indvar534.us, 1
  %indvars.iv.next931 = add i64 %indvars.iv930, 80
  %indvars.iv.next936 = add i64 %indvars.iv935, -80
  %exitcond942.not = icmp eq i64 %polly.indvar534.us, %187
  br i1 %exitcond942.not, label %polly.loop_exit532.loopexit.us, label %polly.loop_header530.us

polly.loop_header538.preheader.us:                ; preds = %polly.loop_header530.us
  %smax932 = call i64 @llvm.smax.i64(i64 %indvars.iv930, i64 0)
  %209 = add i64 %smax932, %indvars.iv935
  %210 = sub nsw i64 %192, %200
  br label %polly.loop_header538.us

polly.loop_exit532.loopexit.us:                   ; preds = %polly.loop_exit540.us
  %polly.indvar_next526.us = add nuw nsw i64 %polly.indvar525.us, 1
  %exitcond943.not = icmp eq i64 %polly.indvar_next526.us, 250
  br i1 %exitcond943.not, label %polly.loop_exit524, label %polly.loop_header522.us

polly.loop_exit554.loopexit.us.us:                ; preds = %polly.loop_header552.us.us
  %211 = add i64 %196, %206
  %scevgep562.us.us.1 = getelementptr i8, i8* %call2, i64 %211
  %scevgep562563.us.us.1 = bitcast i8* %scevgep562.us.us.1 to double*
  %_p_scalar_564.us.us.1 = load double, double* %scevgep562563.us.us.1, align 8, !alias.scope !82, !noalias !85
  %scevgep568.us.us.1 = getelementptr i8, i8* %call1, i64 %211
  %scevgep568569.us.us.1 = bitcast i8* %scevgep568.us.us.1 to double*
  %_p_scalar_570.us.us.1 = load double, double* %scevgep568569.us.us.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header552.us.us.1

polly.loop_header552.us.us:                       ; preds = %polly.loop_header552.us.us, %polly.loop_header545.us.us.preheader
  %polly.indvar556.us.us = phi i64 [ %polly.indvar_next557.us.us, %polly.loop_header552.us.us ], [ 0, %polly.loop_header545.us.us.preheader ]
  %212 = add nuw nsw i64 %polly.indvar556.us.us, %200
  %213 = mul i64 %212, 8000
  %214 = add i64 %213, %194
  %scevgep559.us.us = getelementptr i8, i8* %call1, i64 %214
  %scevgep559560.us.us = bitcast i8* %scevgep559.us.us to double*
  %_p_scalar_561.us.us = load double, double* %scevgep559560.us.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.us = fmul fast double %_p_scalar_564.us.us, %_p_scalar_561.us.us
  %scevgep565.us.us = getelementptr i8, i8* %call2, i64 %214
  %scevgep565566.us.us = bitcast i8* %scevgep565.us.us to double*
  %_p_scalar_567.us.us = load double, double* %scevgep565566.us.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.us = fmul fast double %_p_scalar_570.us.us, %_p_scalar_567.us.us
  %215 = shl i64 %212, 3
  %216 = add i64 %215, %207
  %scevgep571.us.us = getelementptr i8, i8* %call, i64 %216
  %scevgep571572.us.us = bitcast i8* %scevgep571.us.us to double*
  %_p_scalar_573.us.us = load double, double* %scevgep571572.us.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.us = fadd fast double %p_mul37.i.us.us, %p_mul27.i.us.us
  %p_reass.mul.i.us.us = fmul fast double %p_reass.add.i.us.us, 1.500000e+00
  %p_add42.i.us.us = fadd fast double %p_reass.mul.i.us.us, %_p_scalar_573.us.us
  store double %p_add42.i.us.us, double* %scevgep571572.us.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next557.us.us = add nuw nsw i64 %polly.indvar556.us.us, 1
  %exitcond940.not = icmp eq i64 %polly.indvar556.us.us, %smin939
  br i1 %exitcond940.not, label %polly.loop_exit554.loopexit.us.us, label %polly.loop_header552.us.us

polly.loop_exit524:                               ; preds = %polly.loop_exit532.loopexit.us, %polly.loop_header516
  %polly.indvar_next520 = add nuw nsw i64 %polly.indvar519, 1
  %indvars.iv.next929 = add nsw i64 %indvars.iv928, -128
  %indvars.iv.next934 = add nuw nsw i64 %indvars.iv933, 128
  %exitcond944.not = icmp eq i64 %polly.indvar_next520, 10
  br i1 %exitcond944.not, label %kernel_syr2k.exit, label %polly.loop_header516

polly.loop_header700:                             ; preds = %entry, %polly.loop_exit708
  %indvars.iv971 = phi i64 [ %indvars.iv.next972, %polly.loop_exit708 ], [ 0, %entry ]
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %entry ]
  %smin973 = call i64 @llvm.smin.i64(i64 %indvars.iv971, i64 -1168)
  %217 = shl nsw i64 %polly.indvar703, 5
  %218 = add nsw i64 %smin973, 1199
  br label %polly.loop_header706

polly.loop_exit708:                               ; preds = %polly.loop_exit714
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %indvars.iv.next972 = add nsw i64 %indvars.iv971, -32
  %exitcond976.not = icmp eq i64 %polly.indvar_next704, 38
  br i1 %exitcond976.not, label %polly.loop_header727, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_exit714, %polly.loop_header700
  %indvars.iv967 = phi i64 [ %indvars.iv.next968, %polly.loop_exit714 ], [ 0, %polly.loop_header700 ]
  %polly.indvar709 = phi i64 [ %polly.indvar_next710, %polly.loop_exit714 ], [ 0, %polly.loop_header700 ]
  %219 = mul nsw i64 %polly.indvar709, -32
  %smin1011 = call i64 @llvm.smin.i64(i64 %219, i64 -1168)
  %220 = add nsw i64 %smin1011, 1200
  %smin969 = call i64 @llvm.smin.i64(i64 %indvars.iv967, i64 -1168)
  %221 = shl nsw i64 %polly.indvar709, 5
  %222 = add nsw i64 %smin969, 1199
  br label %polly.loop_header712

polly.loop_exit714:                               ; preds = %polly.loop_exit720
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %indvars.iv.next968 = add nsw i64 %indvars.iv967, -32
  %exitcond975.not = icmp eq i64 %polly.indvar_next710, 38
  br i1 %exitcond975.not, label %polly.loop_exit708, label %polly.loop_header706

polly.loop_header712:                             ; preds = %polly.loop_exit720, %polly.loop_header706
  %polly.indvar715 = phi i64 [ 0, %polly.loop_header706 ], [ %polly.indvar_next716, %polly.loop_exit720 ]
  %223 = add nuw nsw i64 %polly.indvar715, %217
  %224 = trunc i64 %223 to i32
  %225 = mul nuw nsw i64 %223, 9600
  %min.iters.check = icmp eq i64 %220, 0
  br i1 %min.iters.check, label %polly.loop_header718, label %vector.ph1012

vector.ph1012:                                    ; preds = %polly.loop_header712
  %broadcast.splatinsert1019 = insertelement <4 x i64> poison, i64 %221, i32 0
  %broadcast.splat1020 = shufflevector <4 x i64> %broadcast.splatinsert1019, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1021 = insertelement <4 x i32> poison, i32 %224, i32 0
  %broadcast.splat1022 = shufflevector <4 x i32> %broadcast.splatinsert1021, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %vector.ph1012
  %index1013 = phi i64 [ 0, %vector.ph1012 ], [ %index.next1014, %vector.body1010 ]
  %vec.ind1017 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1012 ], [ %vec.ind.next1018, %vector.body1010 ]
  %226 = add nuw nsw <4 x i64> %vec.ind1017, %broadcast.splat1020
  %227 = trunc <4 x i64> %226 to <4 x i32>
  %228 = mul <4 x i32> %broadcast.splat1022, %227
  %229 = add <4 x i32> %228, <i32 3, i32 3, i32 3, i32 3>
  %230 = urem <4 x i32> %229, <i32 1200, i32 1200, i32 1200, i32 1200>
  %231 = sitofp <4 x i32> %230 to <4 x double>
  %232 = fmul fast <4 x double> %231, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %233 = extractelement <4 x i64> %226, i32 0
  %234 = shl i64 %233, 3
  %235 = add nuw nsw i64 %234, %225
  %236 = getelementptr i8, i8* %call, i64 %235
  %237 = bitcast i8* %236 to <4 x double>*
  store <4 x double> %232, <4 x double>* %237, align 8, !alias.scope !87, !noalias !89
  %index.next1014 = add i64 %index1013, 4
  %vec.ind.next1018 = add <4 x i64> %vec.ind1017, <i64 4, i64 4, i64 4, i64 4>
  %238 = icmp eq i64 %index.next1014, %220
  br i1 %238, label %polly.loop_exit720, label %vector.body1010, !llvm.loop !92

polly.loop_exit720:                               ; preds = %vector.body1010, %polly.loop_header718
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond974.not = icmp eq i64 %polly.indvar715, %218
  br i1 %exitcond974.not, label %polly.loop_exit714, label %polly.loop_header712

polly.loop_header718:                             ; preds = %polly.loop_header712, %polly.loop_header718
  %polly.indvar721 = phi i64 [ %polly.indvar_next722, %polly.loop_header718 ], [ 0, %polly.loop_header712 ]
  %239 = add nuw nsw i64 %polly.indvar721, %221
  %240 = trunc i64 %239 to i32
  %241 = mul i32 %240, %224
  %242 = add i32 %241, 3
  %243 = urem i32 %242, 1200
  %p_conv31.i = sitofp i32 %243 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %244 = shl i64 %239, 3
  %245 = add nuw nsw i64 %244, %225
  %scevgep724 = getelementptr i8, i8* %call, i64 %245
  %scevgep724725 = bitcast i8* %scevgep724 to double*
  store double %p_div33.i, double* %scevgep724725, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next722 = add nuw nsw i64 %polly.indvar721, 1
  %exitcond970.not = icmp eq i64 %polly.indvar721, %222
  br i1 %exitcond970.not, label %polly.loop_exit720, label %polly.loop_header718, !llvm.loop !93

polly.loop_header727:                             ; preds = %polly.loop_exit708, %polly.loop_exit735
  %indvars.iv961 = phi i64 [ %indvars.iv.next962, %polly.loop_exit735 ], [ 0, %polly.loop_exit708 ]
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_exit708 ]
  %smin963 = call i64 @llvm.smin.i64(i64 %indvars.iv961, i64 -1168)
  %246 = shl nsw i64 %polly.indvar730, 5
  %247 = add nsw i64 %smin963, 1199
  br label %polly.loop_header733

polly.loop_exit735:                               ; preds = %polly.loop_exit741
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %indvars.iv.next962 = add nsw i64 %indvars.iv961, -32
  %exitcond966.not = icmp eq i64 %polly.indvar_next731, 38
  br i1 %exitcond966.not, label %polly.loop_header753, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_exit741, %polly.loop_header727
  %indvars.iv957 = phi i64 [ %indvars.iv.next958, %polly.loop_exit741 ], [ 0, %polly.loop_header727 ]
  %polly.indvar736 = phi i64 [ %polly.indvar_next737, %polly.loop_exit741 ], [ 0, %polly.loop_header727 ]
  %248 = mul nsw i64 %polly.indvar736, -32
  %smin1026 = call i64 @llvm.smin.i64(i64 %248, i64 -968)
  %249 = add nsw i64 %smin1026, 1000
  %smin959 = call i64 @llvm.smin.i64(i64 %indvars.iv957, i64 -968)
  %250 = shl nsw i64 %polly.indvar736, 5
  %251 = add nsw i64 %smin959, 999
  br label %polly.loop_header739

polly.loop_exit741:                               ; preds = %polly.loop_exit747
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %indvars.iv.next958 = add nsw i64 %indvars.iv957, -32
  %exitcond965.not = icmp eq i64 %polly.indvar_next737, 32
  br i1 %exitcond965.not, label %polly.loop_exit735, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_exit747, %polly.loop_header733
  %polly.indvar742 = phi i64 [ 0, %polly.loop_header733 ], [ %polly.indvar_next743, %polly.loop_exit747 ]
  %252 = add nuw nsw i64 %polly.indvar742, %246
  %253 = trunc i64 %252 to i32
  %254 = mul nuw nsw i64 %252, 8000
  %min.iters.check1027 = icmp eq i64 %249, 0
  br i1 %min.iters.check1027, label %polly.loop_header745, label %vector.ph1028

vector.ph1028:                                    ; preds = %polly.loop_header739
  %broadcast.splatinsert1037 = insertelement <4 x i64> poison, i64 %250, i32 0
  %broadcast.splat1038 = shufflevector <4 x i64> %broadcast.splatinsert1037, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1039 = insertelement <4 x i32> poison, i32 %253, i32 0
  %broadcast.splat1040 = shufflevector <4 x i32> %broadcast.splatinsert1039, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1025

vector.body1025:                                  ; preds = %vector.body1025, %vector.ph1028
  %index1031 = phi i64 [ 0, %vector.ph1028 ], [ %index.next1032, %vector.body1025 ]
  %vec.ind1035 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1028 ], [ %vec.ind.next1036, %vector.body1025 ]
  %255 = add nuw nsw <4 x i64> %vec.ind1035, %broadcast.splat1038
  %256 = trunc <4 x i64> %255 to <4 x i32>
  %257 = mul <4 x i32> %broadcast.splat1040, %256
  %258 = add <4 x i32> %257, <i32 2, i32 2, i32 2, i32 2>
  %259 = urem <4 x i32> %258, <i32 1000, i32 1000, i32 1000, i32 1000>
  %260 = sitofp <4 x i32> %259 to <4 x double>
  %261 = fmul fast <4 x double> %260, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %262 = extractelement <4 x i64> %255, i32 0
  %263 = shl i64 %262, 3
  %264 = add nuw nsw i64 %263, %254
  %265 = getelementptr i8, i8* %call2, i64 %264
  %266 = bitcast i8* %265 to <4 x double>*
  store <4 x double> %261, <4 x double>* %266, align 8, !alias.scope !91, !noalias !94
  %index.next1032 = add i64 %index1031, 4
  %vec.ind.next1036 = add <4 x i64> %vec.ind1035, <i64 4, i64 4, i64 4, i64 4>
  %267 = icmp eq i64 %index.next1032, %249
  br i1 %267, label %polly.loop_exit747, label %vector.body1025, !llvm.loop !95

polly.loop_exit747:                               ; preds = %vector.body1025, %polly.loop_header745
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %exitcond964.not = icmp eq i64 %polly.indvar742, %247
  br i1 %exitcond964.not, label %polly.loop_exit741, label %polly.loop_header739

polly.loop_header745:                             ; preds = %polly.loop_header739, %polly.loop_header745
  %polly.indvar748 = phi i64 [ %polly.indvar_next749, %polly.loop_header745 ], [ 0, %polly.loop_header739 ]
  %268 = add nuw nsw i64 %polly.indvar748, %250
  %269 = trunc i64 %268 to i32
  %270 = mul i32 %269, %253
  %271 = add i32 %270, 2
  %272 = urem i32 %271, 1000
  %p_conv10.i = sitofp i32 %272 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %273 = shl i64 %268, 3
  %274 = add nuw nsw i64 %273, %254
  %scevgep751 = getelementptr i8, i8* %call2, i64 %274
  %scevgep751752 = bitcast i8* %scevgep751 to double*
  store double %p_div12.i, double* %scevgep751752, align 8, !alias.scope !91, !noalias !94
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %exitcond960.not = icmp eq i64 %polly.indvar748, %251
  br i1 %exitcond960.not, label %polly.loop_exit747, label %polly.loop_header745, !llvm.loop !96

polly.loop_header753:                             ; preds = %polly.loop_exit735, %polly.loop_exit761
  %indvars.iv951 = phi i64 [ %indvars.iv.next952, %polly.loop_exit761 ], [ 0, %polly.loop_exit735 ]
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_exit735 ]
  %smin953 = call i64 @llvm.smin.i64(i64 %indvars.iv951, i64 -1168)
  %275 = shl nsw i64 %polly.indvar756, 5
  %276 = add nsw i64 %smin953, 1199
  br label %polly.loop_header759

polly.loop_exit761:                               ; preds = %polly.loop_exit767
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %indvars.iv.next952 = add nsw i64 %indvars.iv951, -32
  %exitcond956.not = icmp eq i64 %polly.indvar_next757, 38
  br i1 %exitcond956.not, label %init_array.exit, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_exit767, %polly.loop_header753
  %indvars.iv947 = phi i64 [ %indvars.iv.next948, %polly.loop_exit767 ], [ 0, %polly.loop_header753 ]
  %polly.indvar762 = phi i64 [ %polly.indvar_next763, %polly.loop_exit767 ], [ 0, %polly.loop_header753 ]
  %277 = mul nsw i64 %polly.indvar762, -32
  %smin1044 = call i64 @llvm.smin.i64(i64 %277, i64 -968)
  %278 = add nsw i64 %smin1044, 1000
  %smin949 = call i64 @llvm.smin.i64(i64 %indvars.iv947, i64 -968)
  %279 = shl nsw i64 %polly.indvar762, 5
  %280 = add nsw i64 %smin949, 999
  br label %polly.loop_header765

polly.loop_exit767:                               ; preds = %polly.loop_exit773
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %indvars.iv.next948 = add nsw i64 %indvars.iv947, -32
  %exitcond955.not = icmp eq i64 %polly.indvar_next763, 32
  br i1 %exitcond955.not, label %polly.loop_exit761, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_exit773, %polly.loop_header759
  %polly.indvar768 = phi i64 [ 0, %polly.loop_header759 ], [ %polly.indvar_next769, %polly.loop_exit773 ]
  %281 = add nuw nsw i64 %polly.indvar768, %275
  %282 = trunc i64 %281 to i32
  %283 = mul nuw nsw i64 %281, 8000
  %min.iters.check1045 = icmp eq i64 %278, 0
  br i1 %min.iters.check1045, label %polly.loop_header771, label %vector.ph1046

vector.ph1046:                                    ; preds = %polly.loop_header765
  %broadcast.splatinsert1055 = insertelement <4 x i64> poison, i64 %279, i32 0
  %broadcast.splat1056 = shufflevector <4 x i64> %broadcast.splatinsert1055, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1057 = insertelement <4 x i32> poison, i32 %282, i32 0
  %broadcast.splat1058 = shufflevector <4 x i32> %broadcast.splatinsert1057, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %vector.ph1046
  %index1049 = phi i64 [ 0, %vector.ph1046 ], [ %index.next1050, %vector.body1043 ]
  %vec.ind1053 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1046 ], [ %vec.ind.next1054, %vector.body1043 ]
  %284 = add nuw nsw <4 x i64> %vec.ind1053, %broadcast.splat1056
  %285 = trunc <4 x i64> %284 to <4 x i32>
  %286 = mul <4 x i32> %broadcast.splat1058, %285
  %287 = add <4 x i32> %286, <i32 1, i32 1, i32 1, i32 1>
  %288 = urem <4 x i32> %287, <i32 1200, i32 1200, i32 1200, i32 1200>
  %289 = sitofp <4 x i32> %288 to <4 x double>
  %290 = fmul fast <4 x double> %289, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %291 = extractelement <4 x i64> %284, i32 0
  %292 = shl i64 %291, 3
  %293 = add nuw nsw i64 %292, %283
  %294 = getelementptr i8, i8* %call1, i64 %293
  %295 = bitcast i8* %294 to <4 x double>*
  store <4 x double> %290, <4 x double>* %295, align 8, !alias.scope !90, !noalias !97
  %index.next1050 = add i64 %index1049, 4
  %vec.ind.next1054 = add <4 x i64> %vec.ind1053, <i64 4, i64 4, i64 4, i64 4>
  %296 = icmp eq i64 %index.next1050, %278
  br i1 %296, label %polly.loop_exit773, label %vector.body1043, !llvm.loop !98

polly.loop_exit773:                               ; preds = %vector.body1043, %polly.loop_header771
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %exitcond954.not = icmp eq i64 %polly.indvar768, %276
  br i1 %exitcond954.not, label %polly.loop_exit767, label %polly.loop_header765

polly.loop_header771:                             ; preds = %polly.loop_header765, %polly.loop_header771
  %polly.indvar774 = phi i64 [ %polly.indvar_next775, %polly.loop_header771 ], [ 0, %polly.loop_header765 ]
  %297 = add nuw nsw i64 %polly.indvar774, %279
  %298 = trunc i64 %297 to i32
  %299 = mul i32 %298, %282
  %300 = add i32 %299, 1
  %301 = urem i32 %300, 1200
  %p_conv.i = sitofp i32 %301 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %302 = shl i64 %297, 3
  %303 = add nuw nsw i64 %302, %283
  %scevgep778 = getelementptr i8, i8* %call1, i64 %303
  %scevgep778779 = bitcast i8* %scevgep778 to double*
  store double %p_div.i, double* %scevgep778779, align 8, !alias.scope !90, !noalias !97
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %exitcond950.not = icmp eq i64 %polly.indvar774, %280
  br i1 %exitcond950.not, label %polly.loop_exit773, label %polly.loop_header771, !llvm.loop !99

polly.loop_header232.us.us.1:                     ; preds = %polly.loop_header232.us.us.1, %polly.loop_exit234.loopexit.us.us
  %polly.indvar236.us.us.1 = phi i64 [ %polly.indvar_next237.us.us.1, %polly.loop_header232.us.us.1 ], [ 0, %polly.loop_exit234.loopexit.us.us ]
  %304 = add nuw nsw i64 %polly.indvar236.us.us.1, %114
  %305 = mul i64 %304, 8000
  %306 = add i64 %305, %110
  %scevgep239.us.us.1 = getelementptr i8, i8* %call1, i64 %306
  %scevgep239240.us.us.1 = bitcast i8* %scevgep239.us.us.1 to double*
  %_p_scalar_241.us.us.1 = load double, double* %scevgep239240.us.us.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.us.1 = fmul fast double %_p_scalar_244.us.us.1, %_p_scalar_241.us.us.1
  %scevgep245.us.us.1 = getelementptr i8, i8* %call2, i64 %306
  %scevgep245246.us.us.1 = bitcast i8* %scevgep245.us.us.1 to double*
  %_p_scalar_247.us.us.1 = load double, double* %scevgep245246.us.us.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.us.1 = fmul fast double %_p_scalar_250.us.us.1, %_p_scalar_247.us.us.1
  %307 = shl i64 %304, 3
  %308 = add i64 %307, %121
  %scevgep251.us.us.1 = getelementptr i8, i8* %call, i64 %308
  %scevgep251252.us.us.1 = bitcast i8* %scevgep251.us.us.1 to double*
  %_p_scalar_253.us.us.1 = load double, double* %scevgep251252.us.us.1, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.us.1 = fadd fast double %p_mul37.i114.us.us.1, %p_mul27.i112.us.us.1
  %p_reass.mul.i117.us.us.1 = fmul fast double %p_reass.add.i116.us.us.1, 1.500000e+00
  %p_add42.i118.us.us.1 = fadd fast double %p_reass.mul.i117.us.us.1, %_p_scalar_253.us.us.1
  store double %p_add42.i118.us.us.1, double* %scevgep251252.us.us.1, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next237.us.us.1 = add nuw nsw i64 %polly.indvar236.us.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar236.us.us.1, %smin
  br i1 %exitcond.1.not, label %polly.loop_exit234.loopexit.us.us.1, label %polly.loop_header232.us.us.1

polly.loop_exit234.loopexit.us.us.1:              ; preds = %polly.loop_header232.us.us.1
  %309 = add i64 %112, %120
  %scevgep242.us.us.2 = getelementptr i8, i8* %call2, i64 %309
  %scevgep242243.us.us.2 = bitcast i8* %scevgep242.us.us.2 to double*
  %_p_scalar_244.us.us.2 = load double, double* %scevgep242243.us.us.2, align 8, !alias.scope !63, !noalias !67
  %scevgep248.us.us.2 = getelementptr i8, i8* %call1, i64 %309
  %scevgep248249.us.us.2 = bitcast i8* %scevgep248.us.us.2 to double*
  %_p_scalar_250.us.us.2 = load double, double* %scevgep248249.us.us.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header232.us.us.2

polly.loop_header232.us.us.2:                     ; preds = %polly.loop_header232.us.us.2, %polly.loop_exit234.loopexit.us.us.1
  %polly.indvar236.us.us.2 = phi i64 [ %polly.indvar_next237.us.us.2, %polly.loop_header232.us.us.2 ], [ 0, %polly.loop_exit234.loopexit.us.us.1 ]
  %310 = add nuw nsw i64 %polly.indvar236.us.us.2, %114
  %311 = mul i64 %310, 8000
  %312 = add i64 %311, %112
  %scevgep239.us.us.2 = getelementptr i8, i8* %call1, i64 %312
  %scevgep239240.us.us.2 = bitcast i8* %scevgep239.us.us.2 to double*
  %_p_scalar_241.us.us.2 = load double, double* %scevgep239240.us.us.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.us.2 = fmul fast double %_p_scalar_244.us.us.2, %_p_scalar_241.us.us.2
  %scevgep245.us.us.2 = getelementptr i8, i8* %call2, i64 %312
  %scevgep245246.us.us.2 = bitcast i8* %scevgep245.us.us.2 to double*
  %_p_scalar_247.us.us.2 = load double, double* %scevgep245246.us.us.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.us.2 = fmul fast double %_p_scalar_250.us.us.2, %_p_scalar_247.us.us.2
  %313 = shl i64 %310, 3
  %314 = add i64 %313, %121
  %scevgep251.us.us.2 = getelementptr i8, i8* %call, i64 %314
  %scevgep251252.us.us.2 = bitcast i8* %scevgep251.us.us.2 to double*
  %_p_scalar_253.us.us.2 = load double, double* %scevgep251252.us.us.2, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.us.2 = fadd fast double %p_mul37.i114.us.us.2, %p_mul27.i112.us.us.2
  %p_reass.mul.i117.us.us.2 = fmul fast double %p_reass.add.i116.us.us.2, 1.500000e+00
  %p_add42.i118.us.us.2 = fadd fast double %p_reass.mul.i117.us.us.2, %_p_scalar_253.us.us.2
  store double %p_add42.i118.us.us.2, double* %scevgep251252.us.us.2, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next237.us.us.2 = add nuw nsw i64 %polly.indvar236.us.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar236.us.us.2, %smin
  br i1 %exitcond.2.not, label %polly.loop_exit234.loopexit.us.us.2, label %polly.loop_header232.us.us.2

polly.loop_exit234.loopexit.us.us.2:              ; preds = %polly.loop_header232.us.us.2
  %315 = add i64 %113, %120
  %scevgep242.us.us.3 = getelementptr i8, i8* %call2, i64 %315
  %scevgep242243.us.us.3 = bitcast i8* %scevgep242.us.us.3 to double*
  %_p_scalar_244.us.us.3 = load double, double* %scevgep242243.us.us.3, align 8, !alias.scope !63, !noalias !67
  %scevgep248.us.us.3 = getelementptr i8, i8* %call1, i64 %315
  %scevgep248249.us.us.3 = bitcast i8* %scevgep248.us.us.3 to double*
  %_p_scalar_250.us.us.3 = load double, double* %scevgep248249.us.us.3, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header232.us.us.3

polly.loop_header232.us.us.3:                     ; preds = %polly.loop_header232.us.us.3, %polly.loop_exit234.loopexit.us.us.2
  %polly.indvar236.us.us.3 = phi i64 [ %polly.indvar_next237.us.us.3, %polly.loop_header232.us.us.3 ], [ 0, %polly.loop_exit234.loopexit.us.us.2 ]
  %316 = add nuw nsw i64 %polly.indvar236.us.us.3, %114
  %317 = mul i64 %316, 8000
  %318 = add i64 %317, %113
  %scevgep239.us.us.3 = getelementptr i8, i8* %call1, i64 %318
  %scevgep239240.us.us.3 = bitcast i8* %scevgep239.us.us.3 to double*
  %_p_scalar_241.us.us.3 = load double, double* %scevgep239240.us.us.3, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.us.3 = fmul fast double %_p_scalar_244.us.us.3, %_p_scalar_241.us.us.3
  %scevgep245.us.us.3 = getelementptr i8, i8* %call2, i64 %318
  %scevgep245246.us.us.3 = bitcast i8* %scevgep245.us.us.3 to double*
  %_p_scalar_247.us.us.3 = load double, double* %scevgep245246.us.us.3, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.us.3 = fmul fast double %_p_scalar_250.us.us.3, %_p_scalar_247.us.us.3
  %319 = shl i64 %316, 3
  %320 = add i64 %319, %121
  %scevgep251.us.us.3 = getelementptr i8, i8* %call, i64 %320
  %scevgep251252.us.us.3 = bitcast i8* %scevgep251.us.us.3 to double*
  %_p_scalar_253.us.us.3 = load double, double* %scevgep251252.us.us.3, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.us.3 = fadd fast double %p_mul37.i114.us.us.3, %p_mul27.i112.us.us.3
  %p_reass.mul.i117.us.us.3 = fmul fast double %p_reass.add.i116.us.us.3, 1.500000e+00
  %p_add42.i118.us.us.3 = fadd fast double %p_reass.mul.i117.us.us.3, %_p_scalar_253.us.us.3
  store double %p_add42.i118.us.us.3, double* %scevgep251252.us.us.3, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next237.us.us.3 = add nuw nsw i64 %polly.indvar236.us.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar236.us.us.3, %smin
  br i1 %exitcond.3.not, label %polly.loop_exit227.us, label %polly.loop_header232.us.us.3

polly.loop_header392.us.us.1:                     ; preds = %polly.loop_header392.us.us.1, %polly.loop_exit394.loopexit.us.us
  %polly.indvar396.us.us.1 = phi i64 [ %polly.indvar_next397.us.us.1, %polly.loop_header392.us.us.1 ], [ 0, %polly.loop_exit394.loopexit.us.us ]
  %321 = add nuw nsw i64 %polly.indvar396.us.us.1, %157
  %322 = mul i64 %321, 8000
  %323 = add i64 %322, %153
  %scevgep399.us.us.1 = getelementptr i8, i8* %call1, i64 %323
  %scevgep399400.us.us.1 = bitcast i8* %scevgep399.us.us.1 to double*
  %_p_scalar_401.us.us.1 = load double, double* %scevgep399400.us.us.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.us.1 = fmul fast double %_p_scalar_404.us.us.1, %_p_scalar_401.us.us.1
  %scevgep405.us.us.1 = getelementptr i8, i8* %call2, i64 %323
  %scevgep405406.us.us.1 = bitcast i8* %scevgep405.us.us.1 to double*
  %_p_scalar_407.us.us.1 = load double, double* %scevgep405406.us.us.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.us.1 = fmul fast double %_p_scalar_410.us.us.1, %_p_scalar_407.us.us.1
  %324 = shl i64 %321, 3
  %325 = add i64 %324, %164
  %scevgep411.us.us.1 = getelementptr i8, i8* %call, i64 %325
  %scevgep411412.us.us.1 = bitcast i8* %scevgep411.us.us.1 to double*
  %_p_scalar_413.us.us.1 = load double, double* %scevgep411412.us.us.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.us.1 = fadd fast double %p_mul37.i75.us.us.1, %p_mul27.i73.us.us.1
  %p_reass.mul.i78.us.us.1 = fmul fast double %p_reass.add.i77.us.us.1, 1.500000e+00
  %p_add42.i79.us.us.1 = fadd fast double %p_reass.mul.i78.us.us.1, %_p_scalar_413.us.us.1
  store double %p_add42.i79.us.us.1, double* %scevgep411412.us.us.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next397.us.us.1 = add nuw nsw i64 %polly.indvar396.us.us.1, 1
  %exitcond921.1.not = icmp eq i64 %polly.indvar396.us.us.1, %smin920
  br i1 %exitcond921.1.not, label %polly.loop_exit394.loopexit.us.us.1, label %polly.loop_header392.us.us.1

polly.loop_exit394.loopexit.us.us.1:              ; preds = %polly.loop_header392.us.us.1
  %326 = add i64 %155, %163
  %scevgep402.us.us.2 = getelementptr i8, i8* %call2, i64 %326
  %scevgep402403.us.us.2 = bitcast i8* %scevgep402.us.us.2 to double*
  %_p_scalar_404.us.us.2 = load double, double* %scevgep402403.us.us.2, align 8, !alias.scope !73, !noalias !76
  %scevgep408.us.us.2 = getelementptr i8, i8* %call1, i64 %326
  %scevgep408409.us.us.2 = bitcast i8* %scevgep408.us.us.2 to double*
  %_p_scalar_410.us.us.2 = load double, double* %scevgep408409.us.us.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header392.us.us.2

polly.loop_header392.us.us.2:                     ; preds = %polly.loop_header392.us.us.2, %polly.loop_exit394.loopexit.us.us.1
  %polly.indvar396.us.us.2 = phi i64 [ %polly.indvar_next397.us.us.2, %polly.loop_header392.us.us.2 ], [ 0, %polly.loop_exit394.loopexit.us.us.1 ]
  %327 = add nuw nsw i64 %polly.indvar396.us.us.2, %157
  %328 = mul i64 %327, 8000
  %329 = add i64 %328, %155
  %scevgep399.us.us.2 = getelementptr i8, i8* %call1, i64 %329
  %scevgep399400.us.us.2 = bitcast i8* %scevgep399.us.us.2 to double*
  %_p_scalar_401.us.us.2 = load double, double* %scevgep399400.us.us.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.us.2 = fmul fast double %_p_scalar_404.us.us.2, %_p_scalar_401.us.us.2
  %scevgep405.us.us.2 = getelementptr i8, i8* %call2, i64 %329
  %scevgep405406.us.us.2 = bitcast i8* %scevgep405.us.us.2 to double*
  %_p_scalar_407.us.us.2 = load double, double* %scevgep405406.us.us.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.us.2 = fmul fast double %_p_scalar_410.us.us.2, %_p_scalar_407.us.us.2
  %330 = shl i64 %327, 3
  %331 = add i64 %330, %164
  %scevgep411.us.us.2 = getelementptr i8, i8* %call, i64 %331
  %scevgep411412.us.us.2 = bitcast i8* %scevgep411.us.us.2 to double*
  %_p_scalar_413.us.us.2 = load double, double* %scevgep411412.us.us.2, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.us.2 = fadd fast double %p_mul37.i75.us.us.2, %p_mul27.i73.us.us.2
  %p_reass.mul.i78.us.us.2 = fmul fast double %p_reass.add.i77.us.us.2, 1.500000e+00
  %p_add42.i79.us.us.2 = fadd fast double %p_reass.mul.i78.us.us.2, %_p_scalar_413.us.us.2
  store double %p_add42.i79.us.us.2, double* %scevgep411412.us.us.2, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next397.us.us.2 = add nuw nsw i64 %polly.indvar396.us.us.2, 1
  %exitcond921.2.not = icmp eq i64 %polly.indvar396.us.us.2, %smin920
  br i1 %exitcond921.2.not, label %polly.loop_exit394.loopexit.us.us.2, label %polly.loop_header392.us.us.2

polly.loop_exit394.loopexit.us.us.2:              ; preds = %polly.loop_header392.us.us.2
  %332 = add i64 %156, %163
  %scevgep402.us.us.3 = getelementptr i8, i8* %call2, i64 %332
  %scevgep402403.us.us.3 = bitcast i8* %scevgep402.us.us.3 to double*
  %_p_scalar_404.us.us.3 = load double, double* %scevgep402403.us.us.3, align 8, !alias.scope !73, !noalias !76
  %scevgep408.us.us.3 = getelementptr i8, i8* %call1, i64 %332
  %scevgep408409.us.us.3 = bitcast i8* %scevgep408.us.us.3 to double*
  %_p_scalar_410.us.us.3 = load double, double* %scevgep408409.us.us.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header392.us.us.3

polly.loop_header392.us.us.3:                     ; preds = %polly.loop_header392.us.us.3, %polly.loop_exit394.loopexit.us.us.2
  %polly.indvar396.us.us.3 = phi i64 [ %polly.indvar_next397.us.us.3, %polly.loop_header392.us.us.3 ], [ 0, %polly.loop_exit394.loopexit.us.us.2 ]
  %333 = add nuw nsw i64 %polly.indvar396.us.us.3, %157
  %334 = mul i64 %333, 8000
  %335 = add i64 %334, %156
  %scevgep399.us.us.3 = getelementptr i8, i8* %call1, i64 %335
  %scevgep399400.us.us.3 = bitcast i8* %scevgep399.us.us.3 to double*
  %_p_scalar_401.us.us.3 = load double, double* %scevgep399400.us.us.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.us.3 = fmul fast double %_p_scalar_404.us.us.3, %_p_scalar_401.us.us.3
  %scevgep405.us.us.3 = getelementptr i8, i8* %call2, i64 %335
  %scevgep405406.us.us.3 = bitcast i8* %scevgep405.us.us.3 to double*
  %_p_scalar_407.us.us.3 = load double, double* %scevgep405406.us.us.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.us.3 = fmul fast double %_p_scalar_410.us.us.3, %_p_scalar_407.us.us.3
  %336 = shl i64 %333, 3
  %337 = add i64 %336, %164
  %scevgep411.us.us.3 = getelementptr i8, i8* %call, i64 %337
  %scevgep411412.us.us.3 = bitcast i8* %scevgep411.us.us.3 to double*
  %_p_scalar_413.us.us.3 = load double, double* %scevgep411412.us.us.3, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.us.3 = fadd fast double %p_mul37.i75.us.us.3, %p_mul27.i73.us.us.3
  %p_reass.mul.i78.us.us.3 = fmul fast double %p_reass.add.i77.us.us.3, 1.500000e+00
  %p_add42.i79.us.us.3 = fadd fast double %p_reass.mul.i78.us.us.3, %_p_scalar_413.us.us.3
  store double %p_add42.i79.us.us.3, double* %scevgep411412.us.us.3, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next397.us.us.3 = add nuw nsw i64 %polly.indvar396.us.us.3, 1
  %exitcond921.3.not = icmp eq i64 %polly.indvar396.us.us.3, %smin920
  br i1 %exitcond921.3.not, label %polly.loop_exit387.us, label %polly.loop_header392.us.us.3

polly.loop_header552.us.us.1:                     ; preds = %polly.loop_header552.us.us.1, %polly.loop_exit554.loopexit.us.us
  %polly.indvar556.us.us.1 = phi i64 [ %polly.indvar_next557.us.us.1, %polly.loop_header552.us.us.1 ], [ 0, %polly.loop_exit554.loopexit.us.us ]
  %338 = add nuw nsw i64 %polly.indvar556.us.us.1, %200
  %339 = mul i64 %338, 8000
  %340 = add i64 %339, %196
  %scevgep559.us.us.1 = getelementptr i8, i8* %call1, i64 %340
  %scevgep559560.us.us.1 = bitcast i8* %scevgep559.us.us.1 to double*
  %_p_scalar_561.us.us.1 = load double, double* %scevgep559560.us.us.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.us.1 = fmul fast double %_p_scalar_564.us.us.1, %_p_scalar_561.us.us.1
  %scevgep565.us.us.1 = getelementptr i8, i8* %call2, i64 %340
  %scevgep565566.us.us.1 = bitcast i8* %scevgep565.us.us.1 to double*
  %_p_scalar_567.us.us.1 = load double, double* %scevgep565566.us.us.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.us.1 = fmul fast double %_p_scalar_570.us.us.1, %_p_scalar_567.us.us.1
  %341 = shl i64 %338, 3
  %342 = add i64 %341, %207
  %scevgep571.us.us.1 = getelementptr i8, i8* %call, i64 %342
  %scevgep571572.us.us.1 = bitcast i8* %scevgep571.us.us.1 to double*
  %_p_scalar_573.us.us.1 = load double, double* %scevgep571572.us.us.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.us.1 = fadd fast double %p_mul37.i.us.us.1, %p_mul27.i.us.us.1
  %p_reass.mul.i.us.us.1 = fmul fast double %p_reass.add.i.us.us.1, 1.500000e+00
  %p_add42.i.us.us.1 = fadd fast double %p_reass.mul.i.us.us.1, %_p_scalar_573.us.us.1
  store double %p_add42.i.us.us.1, double* %scevgep571572.us.us.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next557.us.us.1 = add nuw nsw i64 %polly.indvar556.us.us.1, 1
  %exitcond940.1.not = icmp eq i64 %polly.indvar556.us.us.1, %smin939
  br i1 %exitcond940.1.not, label %polly.loop_exit554.loopexit.us.us.1, label %polly.loop_header552.us.us.1

polly.loop_exit554.loopexit.us.us.1:              ; preds = %polly.loop_header552.us.us.1
  %343 = add i64 %198, %206
  %scevgep562.us.us.2 = getelementptr i8, i8* %call2, i64 %343
  %scevgep562563.us.us.2 = bitcast i8* %scevgep562.us.us.2 to double*
  %_p_scalar_564.us.us.2 = load double, double* %scevgep562563.us.us.2, align 8, !alias.scope !82, !noalias !85
  %scevgep568.us.us.2 = getelementptr i8, i8* %call1, i64 %343
  %scevgep568569.us.us.2 = bitcast i8* %scevgep568.us.us.2 to double*
  %_p_scalar_570.us.us.2 = load double, double* %scevgep568569.us.us.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header552.us.us.2

polly.loop_header552.us.us.2:                     ; preds = %polly.loop_header552.us.us.2, %polly.loop_exit554.loopexit.us.us.1
  %polly.indvar556.us.us.2 = phi i64 [ %polly.indvar_next557.us.us.2, %polly.loop_header552.us.us.2 ], [ 0, %polly.loop_exit554.loopexit.us.us.1 ]
  %344 = add nuw nsw i64 %polly.indvar556.us.us.2, %200
  %345 = mul i64 %344, 8000
  %346 = add i64 %345, %198
  %scevgep559.us.us.2 = getelementptr i8, i8* %call1, i64 %346
  %scevgep559560.us.us.2 = bitcast i8* %scevgep559.us.us.2 to double*
  %_p_scalar_561.us.us.2 = load double, double* %scevgep559560.us.us.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.us.2 = fmul fast double %_p_scalar_564.us.us.2, %_p_scalar_561.us.us.2
  %scevgep565.us.us.2 = getelementptr i8, i8* %call2, i64 %346
  %scevgep565566.us.us.2 = bitcast i8* %scevgep565.us.us.2 to double*
  %_p_scalar_567.us.us.2 = load double, double* %scevgep565566.us.us.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.us.2 = fmul fast double %_p_scalar_570.us.us.2, %_p_scalar_567.us.us.2
  %347 = shl i64 %344, 3
  %348 = add i64 %347, %207
  %scevgep571.us.us.2 = getelementptr i8, i8* %call, i64 %348
  %scevgep571572.us.us.2 = bitcast i8* %scevgep571.us.us.2 to double*
  %_p_scalar_573.us.us.2 = load double, double* %scevgep571572.us.us.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.us.2 = fadd fast double %p_mul37.i.us.us.2, %p_mul27.i.us.us.2
  %p_reass.mul.i.us.us.2 = fmul fast double %p_reass.add.i.us.us.2, 1.500000e+00
  %p_add42.i.us.us.2 = fadd fast double %p_reass.mul.i.us.us.2, %_p_scalar_573.us.us.2
  store double %p_add42.i.us.us.2, double* %scevgep571572.us.us.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next557.us.us.2 = add nuw nsw i64 %polly.indvar556.us.us.2, 1
  %exitcond940.2.not = icmp eq i64 %polly.indvar556.us.us.2, %smin939
  br i1 %exitcond940.2.not, label %polly.loop_exit554.loopexit.us.us.2, label %polly.loop_header552.us.us.2

polly.loop_exit554.loopexit.us.us.2:              ; preds = %polly.loop_header552.us.us.2
  %349 = add i64 %199, %206
  %scevgep562.us.us.3 = getelementptr i8, i8* %call2, i64 %349
  %scevgep562563.us.us.3 = bitcast i8* %scevgep562.us.us.3 to double*
  %_p_scalar_564.us.us.3 = load double, double* %scevgep562563.us.us.3, align 8, !alias.scope !82, !noalias !85
  %scevgep568.us.us.3 = getelementptr i8, i8* %call1, i64 %349
  %scevgep568569.us.us.3 = bitcast i8* %scevgep568.us.us.3 to double*
  %_p_scalar_570.us.us.3 = load double, double* %scevgep568569.us.us.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header552.us.us.3

polly.loop_header552.us.us.3:                     ; preds = %polly.loop_header552.us.us.3, %polly.loop_exit554.loopexit.us.us.2
  %polly.indvar556.us.us.3 = phi i64 [ %polly.indvar_next557.us.us.3, %polly.loop_header552.us.us.3 ], [ 0, %polly.loop_exit554.loopexit.us.us.2 ]
  %350 = add nuw nsw i64 %polly.indvar556.us.us.3, %200
  %351 = mul i64 %350, 8000
  %352 = add i64 %351, %199
  %scevgep559.us.us.3 = getelementptr i8, i8* %call1, i64 %352
  %scevgep559560.us.us.3 = bitcast i8* %scevgep559.us.us.3 to double*
  %_p_scalar_561.us.us.3 = load double, double* %scevgep559560.us.us.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.us.3 = fmul fast double %_p_scalar_564.us.us.3, %_p_scalar_561.us.us.3
  %scevgep565.us.us.3 = getelementptr i8, i8* %call2, i64 %352
  %scevgep565566.us.us.3 = bitcast i8* %scevgep565.us.us.3 to double*
  %_p_scalar_567.us.us.3 = load double, double* %scevgep565566.us.us.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.us.3 = fmul fast double %_p_scalar_570.us.us.3, %_p_scalar_567.us.us.3
  %353 = shl i64 %350, 3
  %354 = add i64 %353, %207
  %scevgep571.us.us.3 = getelementptr i8, i8* %call, i64 %354
  %scevgep571572.us.us.3 = bitcast i8* %scevgep571.us.us.3 to double*
  %_p_scalar_573.us.us.3 = load double, double* %scevgep571572.us.us.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.us.3 = fadd fast double %p_mul37.i.us.us.3, %p_mul27.i.us.us.3
  %p_reass.mul.i.us.us.3 = fmul fast double %p_reass.add.i.us.us.3, 1.500000e+00
  %p_add42.i.us.us.3 = fadd fast double %p_reass.mul.i.us.us.3, %_p_scalar_573.us.us.3
  store double %p_add42.i.us.us.3, double* %scevgep571572.us.us.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next557.us.us.3 = add nuw nsw i64 %polly.indvar556.us.us.3, 1
  %exitcond940.3.not = icmp eq i64 %polly.indvar556.us.us.3, %smin939
  br i1 %exitcond940.3.not, label %polly.loop_exit547.us, label %polly.loop_header552.us.us.3
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
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 4}
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
!44 = !{!"llvm.loop.tile.size", i32 128}
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
