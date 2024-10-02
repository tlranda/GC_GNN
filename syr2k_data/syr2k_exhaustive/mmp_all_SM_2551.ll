; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2551.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2551.c"
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
  %call866 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1718 = bitcast i8* %call1 to double*
  %polly.access.call1727 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2728 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1727, %call2
  %polly.access.call2747 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2747, %call1
  %2 = or i1 %0, %1
  %polly.access.call767 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call767, %call2
  %4 = icmp ule i8* %polly.access.call2747, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call767, %call1
  %8 = icmp ule i8* %polly.access.call1727, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header840, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1146 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1145 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1144 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1143 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1143, %scevgep1146
  %bound1 = icmp ult i8* %scevgep1145, %scevgep1144
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
  br i1 %exitcond18.not.i, label %vector.ph1150, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1150:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1157 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1158 = shufflevector <4 x i64> %broadcast.splatinsert1157, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1149

vector.body1149:                                  ; preds = %vector.body1149, %vector.ph1150
  %index1151 = phi i64 [ 0, %vector.ph1150 ], [ %index.next1152, %vector.body1149 ]
  %vec.ind1155 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1150 ], [ %vec.ind.next1156, %vector.body1149 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1155, %broadcast.splat1158
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv7.i, i64 %index1151
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1152 = add i64 %index1151, 4
  %vec.ind.next1156 = add <4 x i64> %vec.ind1155, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1152, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1149, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1149
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1150, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit901
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start507, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1212 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1212, label %for.body3.i46.preheader1619, label %vector.ph1213

vector.ph1213:                                    ; preds = %for.body3.i46.preheader
  %n.vec1215 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %vector.ph1213
  %index1216 = phi i64 [ 0, %vector.ph1213 ], [ %index.next1217, %vector.body1211 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i, i64 %index1216
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1217 = add i64 %index1216, 4
  %46 = icmp eq i64 %index.next1217, %n.vec1215
  br i1 %46, label %middle.block1209, label %vector.body1211, !llvm.loop !18

middle.block1209:                                 ; preds = %vector.body1211
  %cmp.n1219 = icmp eq i64 %indvars.iv21.i, %n.vec1215
  br i1 %cmp.n1219, label %for.inc6.i, label %for.body3.i46.preheader1619

for.body3.i46.preheader1619:                      ; preds = %for.body3.i46.preheader, %middle.block1209
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1215, %middle.block1209 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1619, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1619 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1209, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !22
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !22
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !23

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !33

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting508
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start298, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1346 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1346, label %for.body3.i60.preheader1618, label %vector.ph1347

vector.ph1347:                                    ; preds = %for.body3.i60.preheader
  %n.vec1349 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1345

vector.body1345:                                  ; preds = %vector.body1345, %vector.ph1347
  %index1350 = phi i64 [ 0, %vector.ph1347 ], [ %index.next1351, %vector.body1345 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i52, i64 %index1350
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1354, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1351 = add i64 %index1350, 4
  %57 = icmp eq i64 %index.next1351, %n.vec1349
  br i1 %57, label %middle.block1343, label %vector.body1345, !llvm.loop !57

middle.block1343:                                 ; preds = %vector.body1345
  %cmp.n1353 = icmp eq i64 %indvars.iv21.i52, %n.vec1349
  br i1 %cmp.n1353, label %for.inc6.i63, label %for.body3.i60.preheader1618

for.body3.i60.preheader1618:                      ; preds = %for.body3.i60.preheader, %middle.block1343
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1349, %middle.block1343 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1618, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1618 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1343, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !22
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !22
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !23

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !33

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting299
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1483 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1483, label %for.body3.i99.preheader1617, label %vector.ph1484

vector.ph1484:                                    ; preds = %for.body3.i99.preheader
  %n.vec1486 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1482

vector.body1482:                                  ; preds = %vector.body1482, %vector.ph1484
  %index1487 = phi i64 [ 0, %vector.ph1484 ], [ %index.next1488, %vector.body1482 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i91, i64 %index1487
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1491 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1491, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1488 = add i64 %index1487, 4
  %68 = icmp eq i64 %index.next1488, %n.vec1486
  br i1 %68, label %middle.block1480, label %vector.body1482, !llvm.loop !59

middle.block1480:                                 ; preds = %vector.body1482
  %cmp.n1490 = icmp eq i64 %indvars.iv21.i91, %n.vec1486
  br i1 %cmp.n1490, label %for.inc6.i102, label %for.body3.i99.preheader1617

for.body3.i99.preheader1617:                      ; preds = %for.body3.i99.preheader, %middle.block1480
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1486, %middle.block1480 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1617, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1617 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1480, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !22
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !22
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !23

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !33

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
  %75 = load i8*, i8** %argv, align 8, !tbaa !61
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !63

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !64

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1495 = phi i64 [ %indvar.next1496, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1495, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1497 = icmp ult i64 %88, 4
  br i1 %min.iters.check1497, label %polly.loop_header192.preheader, label %vector.ph1498

vector.ph1498:                                    ; preds = %polly.loop_header
  %n.vec1500 = and i64 %88, -4
  br label %vector.body1494

vector.body1494:                                  ; preds = %vector.body1494, %vector.ph1498
  %index1501 = phi i64 [ 0, %vector.ph1498 ], [ %index.next1502, %vector.body1494 ]
  %90 = shl nuw nsw i64 %index1501, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1505 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1505, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1502 = add i64 %index1501, 4
  %95 = icmp eq i64 %index.next1502, %n.vec1500
  br i1 %95, label %middle.block1492, label %vector.body1494, !llvm.loop !72

middle.block1492:                                 ; preds = %vector.body1494
  %cmp.n1504 = icmp eq i64 %88, %n.vec1500
  br i1 %cmp.n1504, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1492
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1500, %middle.block1492 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1492
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1496 = add i64 %indvar1495, 1
  br i1 %exitcond1055.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1054.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1053.not, label %polly.loop_header216.preheader, label %polly.loop_header200

polly.loop_header216.preheader:                   ; preds = %polly.loop_exit208
  %scevgep1530 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep1531 = getelementptr i8, i8* %malloccall, i64 19208
  %scevgep1561 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep1562 = getelementptr i8, i8* %malloccall, i64 9608
  %scevgep1592 = getelementptr i8, i8* %malloccall, i64 8
  br label %polly.loop_header216

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2728, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1052.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_header216.preheader, %polly.loop_exit224
  %indvars.iv1045 = phi i64 [ %indvars.iv.next1046, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %97 = shl nuw nsw i64 %polly.indvar219, 7
  %98 = mul nuw nsw i64 %polly.indvar219, 1228800
  %99 = or i64 %98, 8
  %100 = shl nuw nsw i64 %polly.indvar219, 7
  %101 = shl nuw nsw i64 %polly.indvar219, 7
  %102 = mul nuw nsw i64 %polly.indvar219, 1228800
  %103 = or i64 %102, 8
  %104 = shl nuw nsw i64 %polly.indvar219, 7
  %105 = shl nuw nsw i64 %polly.indvar219, 7
  %106 = mul nuw nsw i64 %polly.indvar219, 1228800
  %107 = or i64 %106, 8
  %108 = shl nuw nsw i64 %polly.indvar219, 7
  %109 = shl nuw nsw i64 %polly.indvar219, 7
  %110 = lshr i64 %polly.indvar219, 1
  %smin1047 = call i64 @llvm.smin.i64(i64 %indvars.iv1045, i64 -1072)
  %111 = shl nsw i64 %polly.indvar219, 7
  %112 = add nsw i64 %smin1047, 1199
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 128
  %indvars.iv.next1046 = add nsw i64 %indvars.iv1045, -128
  %exitcond1051.not = icmp eq i64 %polly.indvar_next220, 10
  br i1 %exitcond1051.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %113 = shl nsw i64 %polly.indvar225, 2
  %114 = or i64 %113, 1
  %115 = or i64 %113, 2
  %116 = or i64 %113, 3
  %polly.access.mul.Packed_MemRef_call2281.us = mul nsw i64 %polly.indvar225, 4800
  %117 = or i64 %113, 1
  %polly.access.mul.Packed_MemRef_call2281.us.1 = mul nuw nsw i64 %117, 1200
  %118 = or i64 %113, 2
  %polly.access.mul.Packed_MemRef_call2281.us.2 = mul nuw nsw i64 %118, 1200
  %119 = or i64 %113, 3
  %polly.access.mul.Packed_MemRef_call2281.us.3 = mul nuw nsw i64 %119, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next226, 250
  br i1 %exitcond1050.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %120 = mul nsw i64 %polly.indvar231, -256
  %121 = add i64 %97, %120
  %122 = shl nuw nsw i64 %polly.indvar231, 11
  %123 = add nuw i64 %98, %122
  %124 = add nuw i64 %99, %122
  %125 = mul nsw i64 %polly.indvar231, -256
  %126 = add i64 %100, %125
  %127 = mul nsw i64 %polly.indvar231, -256
  %128 = add i64 %101, %127
  %129 = shl nuw nsw i64 %polly.indvar231, 11
  %130 = add nuw i64 %102, %129
  %131 = add nuw i64 %103, %129
  %132 = mul nsw i64 %polly.indvar231, -256
  %133 = add i64 %104, %132
  %134 = mul nsw i64 %polly.indvar231, -256
  %135 = add i64 %105, %134
  %136 = shl nuw nsw i64 %polly.indvar231, 11
  %137 = add nuw i64 %106, %136
  %138 = add nuw i64 %107, %136
  %139 = mul nsw i64 %polly.indvar231, -256
  %140 = add i64 %108, %139
  %141 = mul nsw i64 %polly.indvar231, -256
  %142 = add i64 %109, %141
  %143 = shl nsw i64 %polly.indvar231, 8
  %144 = sub nsw i64 %111, %143
  %145 = add nuw nsw i64 %143, 256
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit265
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, -256
  %exitcond1049.not = icmp eq i64 %polly.indvar231, %110
  br i1 %exitcond1049.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_exit265, %polly.loop_header228
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit265 ], [ %indvars.iv1036, %polly.loop_header228 ]
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit265 ], [ 0, %polly.loop_header228 ]
  %146 = add i64 %121, %polly.indvar237
  %smin1601 = call i64 @llvm.smin.i64(i64 %146, i64 255)
  %147 = add nsw i64 %smin1601, 1
  %148 = mul i64 %polly.indvar237, 9600
  %149 = add i64 %123, %148
  %scevgep1588 = getelementptr i8, i8* %call, i64 %149
  %150 = add i64 %124, %148
  %scevgep1589 = getelementptr i8, i8* %call, i64 %150
  %151 = add i64 %126, %polly.indvar237
  %smin1590 = call i64 @llvm.smin.i64(i64 %151, i64 255)
  %152 = shl nsw i64 %smin1590, 3
  %scevgep1591 = getelementptr i8, i8* %scevgep1589, i64 %152
  %scevgep1593 = getelementptr i8, i8* %scevgep1592, i64 %152
  %153 = add i64 %128, %polly.indvar237
  %smin1571 = call i64 @llvm.smin.i64(i64 %153, i64 255)
  %154 = add nsw i64 %smin1571, 1
  %155 = mul i64 %polly.indvar237, 9600
  %156 = add i64 %130, %155
  %scevgep1557 = getelementptr i8, i8* %call, i64 %156
  %157 = add i64 %131, %155
  %scevgep1558 = getelementptr i8, i8* %call, i64 %157
  %158 = add i64 %133, %polly.indvar237
  %smin1559 = call i64 @llvm.smin.i64(i64 %158, i64 255)
  %159 = shl nsw i64 %smin1559, 3
  %scevgep1560 = getelementptr i8, i8* %scevgep1558, i64 %159
  %scevgep1563 = getelementptr i8, i8* %scevgep1562, i64 %159
  %160 = add i64 %135, %polly.indvar237
  %smin1540 = call i64 @llvm.smin.i64(i64 %160, i64 255)
  %161 = add nsw i64 %smin1540, 1
  %162 = mul i64 %polly.indvar237, 9600
  %163 = add i64 %137, %162
  %scevgep1526 = getelementptr i8, i8* %call, i64 %163
  %164 = add i64 %138, %162
  %scevgep1527 = getelementptr i8, i8* %call, i64 %164
  %165 = add i64 %140, %polly.indvar237
  %smin1528 = call i64 @llvm.smin.i64(i64 %165, i64 255)
  %166 = shl nsw i64 %smin1528, 3
  %scevgep1529 = getelementptr i8, i8* %scevgep1527, i64 %166
  %scevgep1532 = getelementptr i8, i8* %scevgep1531, i64 %166
  %167 = add i64 %142, %polly.indvar237
  %smin1509 = call i64 @llvm.smin.i64(i64 %167, i64 255)
  %168 = add nsw i64 %smin1509, 1
  %smin1042 = call i64 @llvm.smin.i64(i64 %indvars.iv1038, i64 255)
  %169 = add nsw i64 %polly.indvar237, %144
  %polly.loop_guard1138 = icmp sgt i64 %169, -1
  %170 = add nuw nsw i64 %polly.indvar237, %111
  %.not = icmp ult i64 %170, %145
  %polly.access.mul.call1257 = mul nuw nsw i64 %170, 1000
  %171 = add nuw nsw i64 %polly.access.mul.call1257, %113
  br i1 %polly.loop_guard1138, label %polly.loop_header246.us, label %polly.loop_header234.split

polly.loop_header246.us:                          ; preds = %polly.loop_header234, %polly.loop_header246.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header246.us ], [ 0, %polly.loop_header234 ]
  %172 = add nuw nsw i64 %polly.indvar249.us, %143
  %polly.access.mul.call1253.us = mul nuw nsw i64 %172, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %113, %polly.access.mul.call1253.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar249.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar249.us, %smin1042
  br i1 %exitcond1040.not, label %polly.cond.loopexit.us, label %polly.loop_header246.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1718, i64 %171
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %169
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  br label %polly.loop_header246.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header246.us
  br i1 %.not, label %polly.loop_header246.us.1.preheader, label %polly.then.us

polly.loop_header246.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header246.us.1

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit265, label %polly.loop_header240.preheader

polly.loop_header240.preheader:                   ; preds = %polly.loop_header234.split
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1718, i64 %171
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %169
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.access.add.call1258.1 = or i64 %171, 1
  %polly.access.call1259.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.1
  %polly.access.call1259.load.1 = load double, double* %polly.access.call1259.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.1 = add nsw i64 %169, 1200
  %polly.access.Packed_MemRef_call1262.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.1
  store double %polly.access.call1259.load.1, double* %polly.access.Packed_MemRef_call1262.1, align 8
  %polly.access.add.call1258.2 = or i64 %171, 2
  %polly.access.call1259.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.2
  %polly.access.call1259.load.2 = load double, double* %polly.access.call1259.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.2 = add nsw i64 %169, 2400
  %polly.access.Packed_MemRef_call1262.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.2
  store double %polly.access.call1259.load.2, double* %polly.access.Packed_MemRef_call1262.2, align 8
  %polly.access.add.call1258.3 = or i64 %171, 3
  %polly.access.call1259.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.3
  %polly.access.call1259.load.3 = load double, double* %polly.access.call1259.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.3 = add nsw i64 %169, 3600
  %polly.access.Packed_MemRef_call1262.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.3
  store double %polly.access.call1259.load.3, double* %polly.access.Packed_MemRef_call1262.3, align 8
  br label %polly.loop_exit265

polly.loop_exit265:                               ; preds = %polly.loop_header270.us.3, %middle.block1506, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header263.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar237, %112
  br i1 %exitcond1048.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %173 = mul nuw nsw i64 %170, 9600
  br i1 %polly.loop_guard1138, label %polly.loop_header263.us.preheader, label %polly.loop_exit265

polly.loop_header263.us.preheader:                ; preds = %polly.loop_header263.preheader
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us, %170
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %polly.access.Packed_MemRef_call1291.us = getelementptr double, double* %Packed_MemRef_call1, i64 %169
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call1291.us, align 8
  %min.iters.check1602 = icmp ult i64 %147, 4
  br i1 %min.iters.check1602, label %polly.loop_header270.us.preheader, label %vector.memcheck1587

vector.memcheck1587:                              ; preds = %polly.loop_header263.us.preheader
  %bound01594 = icmp ult i8* %scevgep1588, %scevgep1593
  %bound11595 = icmp ult i8* %malloccall, %scevgep1591
  %found.conflict1596 = and i1 %bound01594, %bound11595
  br i1 %found.conflict1596, label %polly.loop_header270.us.preheader, label %vector.ph1603

vector.ph1603:                                    ; preds = %vector.memcheck1587
  %n.vec1605 = and i64 %147, -4
  %broadcast.splatinsert1611 = insertelement <4 x double> poison, double %_p_scalar_284.us, i32 0
  %broadcast.splat1612 = shufflevector <4 x double> %broadcast.splatinsert1611, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1614 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1615 = shufflevector <4 x double> %broadcast.splatinsert1614, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1600

vector.body1600:                                  ; preds = %vector.body1600, %vector.ph1603
  %index1606 = phi i64 [ 0, %vector.ph1603 ], [ %index.next1607, %vector.body1600 ]
  %174 = add nuw nsw i64 %index1606, %143
  %175 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1606
  %176 = bitcast double* %175 to <4 x double>*
  %wide.load1610 = load <4 x double>, <4 x double>* %176, align 8, !alias.scope !77
  %177 = fmul fast <4 x double> %broadcast.splat1612, %wide.load1610
  %178 = add nuw nsw i64 %174, %polly.access.mul.Packed_MemRef_call2281.us
  %179 = getelementptr double, double* %Packed_MemRef_call2, i64 %178
  %180 = bitcast double* %179 to <4 x double>*
  %wide.load1613 = load <4 x double>, <4 x double>* %180, align 8
  %181 = fmul fast <4 x double> %broadcast.splat1615, %wide.load1613
  %182 = shl i64 %174, 3
  %183 = add nuw nsw i64 %182, %173
  %184 = getelementptr i8, i8* %call, i64 %183
  %185 = bitcast i8* %184 to <4 x double>*
  %wide.load1616 = load <4 x double>, <4 x double>* %185, align 8, !alias.scope !80, !noalias !82
  %186 = fadd fast <4 x double> %181, %177
  %187 = fmul fast <4 x double> %186, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %188 = fadd fast <4 x double> %187, %wide.load1616
  %189 = bitcast i8* %184 to <4 x double>*
  store <4 x double> %188, <4 x double>* %189, align 8, !alias.scope !80, !noalias !82
  %index.next1607 = add i64 %index1606, 4
  %190 = icmp eq i64 %index.next1607, %n.vec1605
  br i1 %190, label %middle.block1598, label %vector.body1600, !llvm.loop !83

middle.block1598:                                 ; preds = %vector.body1600
  %cmp.n1609 = icmp eq i64 %147, %n.vec1605
  br i1 %cmp.n1609, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us.preheader

polly.loop_header270.us.preheader:                ; preds = %vector.memcheck1587, %polly.loop_header263.us.preheader, %middle.block1598
  %polly.indvar274.us.ph = phi i64 [ 0, %vector.memcheck1587 ], [ 0, %polly.loop_header263.us.preheader ], [ %n.vec1605, %middle.block1598 ]
  br label %polly.loop_header270.us

polly.loop_header270.us:                          ; preds = %polly.loop_header270.us.preheader, %polly.loop_header270.us
  %polly.indvar274.us = phi i64 [ %polly.indvar_next275.us, %polly.loop_header270.us ], [ %polly.indvar274.us.ph, %polly.loop_header270.us.preheader ]
  %191 = add nuw nsw i64 %polly.indvar274.us, %143
  %polly.access.Packed_MemRef_call1279.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar274.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call1279.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_284.us, %_p_scalar_280.us
  %polly.access.add.Packed_MemRef_call2286.us = add nuw nsw i64 %191, %polly.access.mul.Packed_MemRef_call2281.us
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %192 = shl i64 %191, 3
  %193 = add nuw nsw i64 %192, %173
  %scevgep293.us = getelementptr i8, i8* %call, i64 %193
  %scevgep293294.us = bitcast i8* %scevgep293.us to double*
  %_p_scalar_295.us = load double, double* %scevgep293294.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_295.us
  store double %p_add42.i118.us, double* %scevgep293294.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar274.us, %smin1042
  br i1 %exitcond1043.not, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us, !llvm.loop !84

polly.loop_exit272.loopexit.us:                   ; preds = %polly.loop_header270.us, %middle.block1598
  %polly.access.add.Packed_MemRef_call2282.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us.1, %170
  %polly.access.Packed_MemRef_call2283.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us.1
  %_p_scalar_284.us.1 = load double, double* %polly.access.Packed_MemRef_call2283.us.1, align 8
  %polly.access.add.Packed_MemRef_call1290.us.1 = add nsw i64 %169, 1200
  %polly.access.Packed_MemRef_call1291.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us.1
  %_p_scalar_292.us.1 = load double, double* %polly.access.Packed_MemRef_call1291.us.1, align 8
  %min.iters.check1572 = icmp ult i64 %154, 4
  br i1 %min.iters.check1572, label %polly.loop_header270.us.1.preheader, label %vector.memcheck1556

vector.memcheck1556:                              ; preds = %polly.loop_exit272.loopexit.us
  %bound01564 = icmp ult i8* %scevgep1557, %scevgep1563
  %bound11565 = icmp ult i8* %scevgep1561, %scevgep1560
  %found.conflict1566 = and i1 %bound01564, %bound11565
  br i1 %found.conflict1566, label %polly.loop_header270.us.1.preheader, label %vector.ph1573

vector.ph1573:                                    ; preds = %vector.memcheck1556
  %n.vec1575 = and i64 %154, -4
  %broadcast.splatinsert1581 = insertelement <4 x double> poison, double %_p_scalar_284.us.1, i32 0
  %broadcast.splat1582 = shufflevector <4 x double> %broadcast.splatinsert1581, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1584 = insertelement <4 x double> poison, double %_p_scalar_292.us.1, i32 0
  %broadcast.splat1585 = shufflevector <4 x double> %broadcast.splatinsert1584, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1570

vector.body1570:                                  ; preds = %vector.body1570, %vector.ph1573
  %index1576 = phi i64 [ 0, %vector.ph1573 ], [ %index.next1577, %vector.body1570 ]
  %194 = add nuw nsw i64 %index1576, %143
  %195 = add nuw nsw i64 %index1576, 1200
  %196 = getelementptr double, double* %Packed_MemRef_call1, i64 %195
  %197 = bitcast double* %196 to <4 x double>*
  %wide.load1580 = load <4 x double>, <4 x double>* %197, align 8, !alias.scope !85
  %198 = fmul fast <4 x double> %broadcast.splat1582, %wide.load1580
  %199 = add nuw nsw i64 %194, %polly.access.mul.Packed_MemRef_call2281.us.1
  %200 = getelementptr double, double* %Packed_MemRef_call2, i64 %199
  %201 = bitcast double* %200 to <4 x double>*
  %wide.load1583 = load <4 x double>, <4 x double>* %201, align 8
  %202 = fmul fast <4 x double> %broadcast.splat1585, %wide.load1583
  %203 = shl i64 %194, 3
  %204 = add nuw nsw i64 %203, %173
  %205 = getelementptr i8, i8* %call, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  %wide.load1586 = load <4 x double>, <4 x double>* %206, align 8, !alias.scope !88, !noalias !90
  %207 = fadd fast <4 x double> %202, %198
  %208 = fmul fast <4 x double> %207, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %209 = fadd fast <4 x double> %208, %wide.load1586
  %210 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %209, <4 x double>* %210, align 8, !alias.scope !88, !noalias !90
  %index.next1577 = add i64 %index1576, 4
  %211 = icmp eq i64 %index.next1577, %n.vec1575
  br i1 %211, label %middle.block1568, label %vector.body1570, !llvm.loop !91

middle.block1568:                                 ; preds = %vector.body1570
  %cmp.n1579 = icmp eq i64 %154, %n.vec1575
  br i1 %cmp.n1579, label %polly.loop_exit272.loopexit.us.1, label %polly.loop_header270.us.1.preheader

polly.loop_header270.us.1.preheader:              ; preds = %vector.memcheck1556, %polly.loop_exit272.loopexit.us, %middle.block1568
  %polly.indvar274.us.1.ph = phi i64 [ 0, %vector.memcheck1556 ], [ 0, %polly.loop_exit272.loopexit.us ], [ %n.vec1575, %middle.block1568 ]
  br label %polly.loop_header270.us.1

polly.start298:                                   ; preds = %kernel_syr2k.exit
  %malloccall300 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall302 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header386

polly.exiting299:                                 ; preds = %polly.loop_exit426
  tail call void @free(i8* %malloccall300)
  tail call void @free(i8* %malloccall302)
  br label %kernel_syr2k.exit90

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.start298
  %indvar1358 = phi i64 [ %indvar.next1359, %polly.loop_exit394 ], [ 0, %polly.start298 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 1, %polly.start298 ]
  %212 = add i64 %indvar1358, 1
  %213 = mul nuw nsw i64 %polly.indvar389, 9600
  %scevgep398 = getelementptr i8, i8* %call, i64 %213
  %min.iters.check1360 = icmp ult i64 %212, 4
  br i1 %min.iters.check1360, label %polly.loop_header392.preheader, label %vector.ph1361

vector.ph1361:                                    ; preds = %polly.loop_header386
  %n.vec1363 = and i64 %212, -4
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.body1357, %vector.ph1361
  %index1364 = phi i64 [ 0, %vector.ph1361 ], [ %index.next1365, %vector.body1357 ]
  %214 = shl nuw nsw i64 %index1364, 3
  %215 = getelementptr i8, i8* %scevgep398, i64 %214
  %216 = bitcast i8* %215 to <4 x double>*
  %wide.load1368 = load <4 x double>, <4 x double>* %216, align 8, !alias.scope !92, !noalias !94
  %217 = fmul fast <4 x double> %wide.load1368, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %218 = bitcast i8* %215 to <4 x double>*
  store <4 x double> %217, <4 x double>* %218, align 8, !alias.scope !92, !noalias !94
  %index.next1365 = add i64 %index1364, 4
  %219 = icmp eq i64 %index.next1365, %n.vec1363
  br i1 %219, label %middle.block1355, label %vector.body1357, !llvm.loop !99

middle.block1355:                                 ; preds = %vector.body1357
  %cmp.n1367 = icmp eq i64 %212, %n.vec1363
  br i1 %cmp.n1367, label %polly.loop_exit394, label %polly.loop_header392.preheader

polly.loop_header392.preheader:                   ; preds = %polly.loop_header386, %middle.block1355
  %polly.indvar395.ph = phi i64 [ 0, %polly.loop_header386 ], [ %n.vec1363, %middle.block1355 ]
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392, %middle.block1355
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next390, 1200
  %indvar.next1359 = add i64 %indvar1358, 1
  br i1 %exitcond1079.not, label %polly.loop_header402.preheader, label %polly.loop_header386

polly.loop_header402.preheader:                   ; preds = %polly.loop_exit394
  %Packed_MemRef_call1301 = bitcast i8* %malloccall300 to double*
  %Packed_MemRef_call2303 = bitcast i8* %malloccall302 to double*
  br label %polly.loop_header402

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_header392
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_header392 ], [ %polly.indvar395.ph, %polly.loop_header392.preheader ]
  %220 = shl nuw nsw i64 %polly.indvar395, 3
  %scevgep399 = getelementptr i8, i8* %scevgep398, i64 %220
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !92, !noalias !94
  %p_mul.i57 = fmul fast double %_p_scalar_401, 1.200000e+00
  store double %p_mul.i57, double* %scevgep399400, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1078.not = icmp eq i64 %polly.indvar_next396, %polly.indvar389
  br i1 %exitcond1078.not, label %polly.loop_exit394, label %polly.loop_header392, !llvm.loop !100

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit410
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit410 ], [ 0, %polly.loop_header402.preheader ]
  %polly.access.mul.Packed_MemRef_call2303 = mul nuw nsw i64 %polly.indvar405, 1200
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar_next406, 1000
  br i1 %exitcond1077.not, label %polly.loop_header418.preheader, label %polly.loop_header402

polly.loop_header418.preheader:                   ; preds = %polly.loop_exit410
  %scevgep1393 = getelementptr i8, i8* %malloccall300, i64 19200
  %scevgep1394 = getelementptr i8, i8* %malloccall300, i64 19208
  %scevgep1424 = getelementptr i8, i8* %malloccall300, i64 9600
  %scevgep1425 = getelementptr i8, i8* %malloccall300, i64 9608
  %scevgep1455 = getelementptr i8, i8* %malloccall300, i64 8
  br label %polly.loop_header418

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %polly.access.mul.call2415 = mul nuw nsw i64 %polly.indvar411, 1000
  %polly.access.add.call2416 = add nuw nsw i64 %polly.access.mul.call2415, %polly.indvar405
  %polly.access.call2417 = getelementptr double, double* %polly.access.cast.call2728, i64 %polly.access.add.call2416
  %polly.access.call2417.load = load double, double* %polly.access.call2417, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2303 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call2303
  %polly.access.Packed_MemRef_call2303 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303
  store double %polly.access.call2417.load, double* %polly.access.Packed_MemRef_call2303, align 8
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar_next412, 1200
  br i1 %exitcond1076.not, label %polly.loop_exit410, label %polly.loop_header408

polly.loop_header418:                             ; preds = %polly.loop_header418.preheader, %polly.loop_exit426
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit426 ], [ 0, %polly.loop_header418.preheader ]
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit426 ], [ 0, %polly.loop_header418.preheader ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit426 ], [ 0, %polly.loop_header418.preheader ]
  %221 = shl nuw nsw i64 %polly.indvar421, 7
  %222 = mul nuw nsw i64 %polly.indvar421, 1228800
  %223 = or i64 %222, 8
  %224 = shl nuw nsw i64 %polly.indvar421, 7
  %225 = shl nuw nsw i64 %polly.indvar421, 7
  %226 = mul nuw nsw i64 %polly.indvar421, 1228800
  %227 = or i64 %226, 8
  %228 = shl nuw nsw i64 %polly.indvar421, 7
  %229 = shl nuw nsw i64 %polly.indvar421, 7
  %230 = mul nuw nsw i64 %polly.indvar421, 1228800
  %231 = or i64 %230, 8
  %232 = shl nuw nsw i64 %polly.indvar421, 7
  %233 = shl nuw nsw i64 %polly.indvar421, 7
  %234 = lshr i64 %polly.indvar421, 1
  %smin1071 = call i64 @llvm.smin.i64(i64 %indvars.iv1069, i64 -1072)
  %235 = shl nsw i64 %polly.indvar421, 7
  %236 = add nsw i64 %smin1071, 1199
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit433
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1058 = add nuw nsw i64 %indvars.iv1057, 128
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -128
  %exitcond1075.not = icmp eq i64 %polly.indvar_next422, 10
  br i1 %exitcond1075.not, label %polly.exiting299, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit433, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit433 ]
  %237 = shl nsw i64 %polly.indvar427, 2
  %238 = or i64 %237, 1
  %239 = or i64 %237, 2
  %240 = or i64 %237, 3
  %polly.access.mul.Packed_MemRef_call2303490.us = mul nsw i64 %polly.indvar427, 4800
  %241 = or i64 %237, 1
  %polly.access.mul.Packed_MemRef_call2303490.us.1 = mul nuw nsw i64 %241, 1200
  %242 = or i64 %237, 2
  %polly.access.mul.Packed_MemRef_call2303490.us.2 = mul nuw nsw i64 %242, 1200
  %243 = or i64 %237, 3
  %polly.access.mul.Packed_MemRef_call2303490.us.3 = mul nuw nsw i64 %243, 1200
  br label %polly.loop_header431

polly.loop_exit433:                               ; preds = %polly.loop_exit439
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next428, 250
  br i1 %exitcond1074.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header431:                             ; preds = %polly.loop_exit439, %polly.loop_header424
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit439 ], [ %indvars.iv1057, %polly.loop_header424 ]
  %polly.indvar434 = phi i64 [ %polly.indvar_next435, %polly.loop_exit439 ], [ 0, %polly.loop_header424 ]
  %244 = mul nsw i64 %polly.indvar434, -256
  %245 = add i64 %221, %244
  %246 = shl nuw nsw i64 %polly.indvar434, 11
  %247 = add nuw i64 %222, %246
  %248 = add nuw i64 %223, %246
  %249 = mul nsw i64 %polly.indvar434, -256
  %250 = add i64 %224, %249
  %251 = mul nsw i64 %polly.indvar434, -256
  %252 = add i64 %225, %251
  %253 = shl nuw nsw i64 %polly.indvar434, 11
  %254 = add nuw i64 %226, %253
  %255 = add nuw i64 %227, %253
  %256 = mul nsw i64 %polly.indvar434, -256
  %257 = add i64 %228, %256
  %258 = mul nsw i64 %polly.indvar434, -256
  %259 = add i64 %229, %258
  %260 = shl nuw nsw i64 %polly.indvar434, 11
  %261 = add nuw i64 %230, %260
  %262 = add nuw i64 %231, %260
  %263 = mul nsw i64 %polly.indvar434, -256
  %264 = add i64 %232, %263
  %265 = mul nsw i64 %polly.indvar434, -256
  %266 = add i64 %233, %265
  %267 = shl nsw i64 %polly.indvar434, 8
  %268 = sub nsw i64 %235, %267
  %269 = add nuw nsw i64 %267, 256
  br label %polly.loop_header437

polly.loop_exit439:                               ; preds = %polly.loop_exit474
  %polly.indvar_next435 = add nuw nsw i64 %polly.indvar434, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -256
  %exitcond1073.not = icmp eq i64 %polly.indvar434, %234
  br i1 %exitcond1073.not, label %polly.loop_exit433, label %polly.loop_header431

polly.loop_header437:                             ; preds = %polly.loop_exit474, %polly.loop_header431
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit474 ], [ %indvars.iv1059, %polly.loop_header431 ]
  %polly.indvar440 = phi i64 [ %polly.indvar_next441, %polly.loop_exit474 ], [ 0, %polly.loop_header431 ]
  %270 = add i64 %245, %polly.indvar440
  %smin1464 = call i64 @llvm.smin.i64(i64 %270, i64 255)
  %271 = add nsw i64 %smin1464, 1
  %272 = mul i64 %polly.indvar440, 9600
  %273 = add i64 %247, %272
  %scevgep1451 = getelementptr i8, i8* %call, i64 %273
  %274 = add i64 %248, %272
  %scevgep1452 = getelementptr i8, i8* %call, i64 %274
  %275 = add i64 %250, %polly.indvar440
  %smin1453 = call i64 @llvm.smin.i64(i64 %275, i64 255)
  %276 = shl nsw i64 %smin1453, 3
  %scevgep1454 = getelementptr i8, i8* %scevgep1452, i64 %276
  %scevgep1456 = getelementptr i8, i8* %scevgep1455, i64 %276
  %277 = add i64 %252, %polly.indvar440
  %smin1434 = call i64 @llvm.smin.i64(i64 %277, i64 255)
  %278 = add nsw i64 %smin1434, 1
  %279 = mul i64 %polly.indvar440, 9600
  %280 = add i64 %254, %279
  %scevgep1420 = getelementptr i8, i8* %call, i64 %280
  %281 = add i64 %255, %279
  %scevgep1421 = getelementptr i8, i8* %call, i64 %281
  %282 = add i64 %257, %polly.indvar440
  %smin1422 = call i64 @llvm.smin.i64(i64 %282, i64 255)
  %283 = shl nsw i64 %smin1422, 3
  %scevgep1423 = getelementptr i8, i8* %scevgep1421, i64 %283
  %scevgep1426 = getelementptr i8, i8* %scevgep1425, i64 %283
  %284 = add i64 %259, %polly.indvar440
  %smin1403 = call i64 @llvm.smin.i64(i64 %284, i64 255)
  %285 = add nsw i64 %smin1403, 1
  %286 = mul i64 %polly.indvar440, 9600
  %287 = add i64 %261, %286
  %scevgep1389 = getelementptr i8, i8* %call, i64 %287
  %288 = add i64 %262, %286
  %scevgep1390 = getelementptr i8, i8* %call, i64 %288
  %289 = add i64 %264, %polly.indvar440
  %smin1391 = call i64 @llvm.smin.i64(i64 %289, i64 255)
  %290 = shl nsw i64 %smin1391, 3
  %scevgep1392 = getelementptr i8, i8* %scevgep1390, i64 %290
  %scevgep1395 = getelementptr i8, i8* %scevgep1394, i64 %290
  %291 = add i64 %266, %polly.indvar440
  %smin1372 = call i64 @llvm.smin.i64(i64 %291, i64 255)
  %292 = add nsw i64 %smin1372, 1
  %smin1066 = call i64 @llvm.smin.i64(i64 %indvars.iv1061, i64 255)
  %293 = add nsw i64 %polly.indvar440, %268
  %polly.loop_guard4531139 = icmp sgt i64 %293, -1
  %294 = add nuw nsw i64 %polly.indvar440, %235
  %.not920 = icmp ult i64 %294, %269
  %polly.access.mul.call1466 = mul nuw nsw i64 %294, 1000
  %295 = add nuw nsw i64 %polly.access.mul.call1466, %237
  br i1 %polly.loop_guard4531139, label %polly.loop_header450.us, label %polly.loop_header437.split

polly.loop_header450.us:                          ; preds = %polly.loop_header437, %polly.loop_header450.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.loop_header450.us ], [ 0, %polly.loop_header437 ]
  %296 = add nuw nsw i64 %polly.indvar454.us, %267
  %polly.access.mul.call1458.us = mul nuw nsw i64 %296, 1000
  %polly.access.add.call1459.us = add nuw nsw i64 %237, %polly.access.mul.call1458.us
  %polly.access.call1460.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1459.us
  %polly.access.call1460.load.us = load double, double* %polly.access.call1460.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.indvar454.us
  store double %polly.access.call1460.load.us, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar454.us, %smin1066
  br i1 %exitcond1064.not, label %polly.cond461.loopexit.us, label %polly.loop_header450.us

polly.then463.us:                                 ; preds = %polly.cond461.loopexit.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1718, i64 %295
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1301471.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %293
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1301471.us, align 8
  br label %polly.loop_header450.us.1.preheader

polly.cond461.loopexit.us:                        ; preds = %polly.loop_header450.us
  br i1 %.not920, label %polly.loop_header450.us.1.preheader, label %polly.then463.us

polly.loop_header450.us.1.preheader:              ; preds = %polly.then463.us, %polly.cond461.loopexit.us
  br label %polly.loop_header450.us.1

polly.loop_header437.split:                       ; preds = %polly.loop_header437
  br i1 %.not920, label %polly.loop_exit474, label %polly.loop_header443.preheader

polly.loop_header443.preheader:                   ; preds = %polly.loop_header437.split
  %polly.access.call1468 = getelementptr double, double* %polly.access.cast.call1718, i64 %295
  %polly.access.call1468.load = load double, double* %polly.access.call1468, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1301471 = getelementptr double, double* %Packed_MemRef_call1301, i64 %293
  store double %polly.access.call1468.load, double* %polly.access.Packed_MemRef_call1301471, align 8
  %polly.access.add.call1467.1 = or i64 %295, 1
  %polly.access.call1468.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.1
  %polly.access.call1468.load.1 = load double, double* %polly.access.call1468.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1301470.1 = add nsw i64 %293, 1200
  %polly.access.Packed_MemRef_call1301471.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.1
  store double %polly.access.call1468.load.1, double* %polly.access.Packed_MemRef_call1301471.1, align 8
  %polly.access.add.call1467.2 = or i64 %295, 2
  %polly.access.call1468.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.2
  %polly.access.call1468.load.2 = load double, double* %polly.access.call1468.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1301470.2 = add nsw i64 %293, 2400
  %polly.access.Packed_MemRef_call1301471.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.2
  store double %polly.access.call1468.load.2, double* %polly.access.Packed_MemRef_call1301471.2, align 8
  %polly.access.add.call1467.3 = or i64 %295, 3
  %polly.access.call1468.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.3
  %polly.access.call1468.load.3 = load double, double* %polly.access.call1468.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1301470.3 = add nsw i64 %293, 3600
  %polly.access.Packed_MemRef_call1301471.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.3
  store double %polly.access.call1468.load.3, double* %polly.access.Packed_MemRef_call1301471.3, align 8
  br label %polly.loop_exit474

polly.loop_exit474:                               ; preds = %polly.loop_header479.us.3, %middle.block1369, %polly.loop_header437.split, %polly.loop_header443.preheader, %polly.loop_header472.preheader
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar440, %236
  br i1 %exitcond1072.not, label %polly.loop_exit439, label %polly.loop_header437

polly.loop_header472.preheader:                   ; preds = %polly.cond461.loopexit.us.3, %polly.then463.us.3
  %297 = mul nuw nsw i64 %294, 9600
  br i1 %polly.loop_guard4531139, label %polly.loop_header472.us.preheader, label %polly.loop_exit474

polly.loop_header472.us.preheader:                ; preds = %polly.loop_header472.preheader
  %polly.access.add.Packed_MemRef_call2303491.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303490.us, %294
  %polly.access.Packed_MemRef_call2303492.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303491.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call2303492.us, align 8
  %polly.access.Packed_MemRef_call1301500.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %293
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call1301500.us, align 8
  %min.iters.check1465 = icmp ult i64 %271, 4
  br i1 %min.iters.check1465, label %polly.loop_header479.us.preheader, label %vector.memcheck1450

vector.memcheck1450:                              ; preds = %polly.loop_header472.us.preheader
  %bound01457 = icmp ult i8* %scevgep1451, %scevgep1456
  %bound11458 = icmp ult i8* %malloccall300, %scevgep1454
  %found.conflict1459 = and i1 %bound01457, %bound11458
  br i1 %found.conflict1459, label %polly.loop_header479.us.preheader, label %vector.ph1466

vector.ph1466:                                    ; preds = %vector.memcheck1450
  %n.vec1468 = and i64 %271, -4
  %broadcast.splatinsert1474 = insertelement <4 x double> poison, double %_p_scalar_493.us, i32 0
  %broadcast.splat1475 = shufflevector <4 x double> %broadcast.splatinsert1474, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1477 = insertelement <4 x double> poison, double %_p_scalar_501.us, i32 0
  %broadcast.splat1478 = shufflevector <4 x double> %broadcast.splatinsert1477, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1463

vector.body1463:                                  ; preds = %vector.body1463, %vector.ph1466
  %index1469 = phi i64 [ 0, %vector.ph1466 ], [ %index.next1470, %vector.body1463 ]
  %298 = add nuw nsw i64 %index1469, %267
  %299 = getelementptr double, double* %Packed_MemRef_call1301, i64 %index1469
  %300 = bitcast double* %299 to <4 x double>*
  %wide.load1473 = load <4 x double>, <4 x double>* %300, align 8, !alias.scope !103
  %301 = fmul fast <4 x double> %broadcast.splat1475, %wide.load1473
  %302 = add nuw nsw i64 %298, %polly.access.mul.Packed_MemRef_call2303490.us
  %303 = getelementptr double, double* %Packed_MemRef_call2303, i64 %302
  %304 = bitcast double* %303 to <4 x double>*
  %wide.load1476 = load <4 x double>, <4 x double>* %304, align 8
  %305 = fmul fast <4 x double> %broadcast.splat1478, %wide.load1476
  %306 = shl i64 %298, 3
  %307 = add nuw nsw i64 %306, %297
  %308 = getelementptr i8, i8* %call, i64 %307
  %309 = bitcast i8* %308 to <4 x double>*
  %wide.load1479 = load <4 x double>, <4 x double>* %309, align 8, !alias.scope !106, !noalias !108
  %310 = fadd fast <4 x double> %305, %301
  %311 = fmul fast <4 x double> %310, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %312 = fadd fast <4 x double> %311, %wide.load1479
  %313 = bitcast i8* %308 to <4 x double>*
  store <4 x double> %312, <4 x double>* %313, align 8, !alias.scope !106, !noalias !108
  %index.next1470 = add i64 %index1469, 4
  %314 = icmp eq i64 %index.next1470, %n.vec1468
  br i1 %314, label %middle.block1461, label %vector.body1463, !llvm.loop !109

middle.block1461:                                 ; preds = %vector.body1463
  %cmp.n1472 = icmp eq i64 %271, %n.vec1468
  br i1 %cmp.n1472, label %polly.loop_exit481.loopexit.us, label %polly.loop_header479.us.preheader

polly.loop_header479.us.preheader:                ; preds = %vector.memcheck1450, %polly.loop_header472.us.preheader, %middle.block1461
  %polly.indvar483.us.ph = phi i64 [ 0, %vector.memcheck1450 ], [ 0, %polly.loop_header472.us.preheader ], [ %n.vec1468, %middle.block1461 ]
  br label %polly.loop_header479.us

polly.loop_header479.us:                          ; preds = %polly.loop_header479.us.preheader, %polly.loop_header479.us
  %polly.indvar483.us = phi i64 [ %polly.indvar_next484.us, %polly.loop_header479.us ], [ %polly.indvar483.us.ph, %polly.loop_header479.us.preheader ]
  %315 = add nuw nsw i64 %polly.indvar483.us, %267
  %polly.access.Packed_MemRef_call1301488.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.indvar483.us
  %_p_scalar_489.us = load double, double* %polly.access.Packed_MemRef_call1301488.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_493.us, %_p_scalar_489.us
  %polly.access.add.Packed_MemRef_call2303495.us = add nuw nsw i64 %315, %polly.access.mul.Packed_MemRef_call2303490.us
  %polly.access.Packed_MemRef_call2303496.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2303496.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_501.us, %_p_scalar_497.us
  %316 = shl i64 %315, 3
  %317 = add nuw nsw i64 %316, %297
  %scevgep502.us = getelementptr i8, i8* %call, i64 %317
  %scevgep502503.us = bitcast i8* %scevgep502.us to double*
  %_p_scalar_504.us = load double, double* %scevgep502503.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_504.us
  store double %p_add42.i79.us, double* %scevgep502503.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next484.us = add nuw nsw i64 %polly.indvar483.us, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar483.us, %smin1066
  br i1 %exitcond1067.not, label %polly.loop_exit481.loopexit.us, label %polly.loop_header479.us, !llvm.loop !110

polly.loop_exit481.loopexit.us:                   ; preds = %polly.loop_header479.us, %middle.block1461
  %polly.access.add.Packed_MemRef_call2303491.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303490.us.1, %294
  %polly.access.Packed_MemRef_call2303492.us.1 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303491.us.1
  %_p_scalar_493.us.1 = load double, double* %polly.access.Packed_MemRef_call2303492.us.1, align 8
  %polly.access.add.Packed_MemRef_call1301499.us.1 = add nsw i64 %293, 1200
  %polly.access.Packed_MemRef_call1301500.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301499.us.1
  %_p_scalar_501.us.1 = load double, double* %polly.access.Packed_MemRef_call1301500.us.1, align 8
  %min.iters.check1435 = icmp ult i64 %278, 4
  br i1 %min.iters.check1435, label %polly.loop_header479.us.1.preheader, label %vector.memcheck1419

vector.memcheck1419:                              ; preds = %polly.loop_exit481.loopexit.us
  %bound01427 = icmp ult i8* %scevgep1420, %scevgep1426
  %bound11428 = icmp ult i8* %scevgep1424, %scevgep1423
  %found.conflict1429 = and i1 %bound01427, %bound11428
  br i1 %found.conflict1429, label %polly.loop_header479.us.1.preheader, label %vector.ph1436

vector.ph1436:                                    ; preds = %vector.memcheck1419
  %n.vec1438 = and i64 %278, -4
  %broadcast.splatinsert1444 = insertelement <4 x double> poison, double %_p_scalar_493.us.1, i32 0
  %broadcast.splat1445 = shufflevector <4 x double> %broadcast.splatinsert1444, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1447 = insertelement <4 x double> poison, double %_p_scalar_501.us.1, i32 0
  %broadcast.splat1448 = shufflevector <4 x double> %broadcast.splatinsert1447, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1433

vector.body1433:                                  ; preds = %vector.body1433, %vector.ph1436
  %index1439 = phi i64 [ 0, %vector.ph1436 ], [ %index.next1440, %vector.body1433 ]
  %318 = add nuw nsw i64 %index1439, %267
  %319 = add nuw nsw i64 %index1439, 1200
  %320 = getelementptr double, double* %Packed_MemRef_call1301, i64 %319
  %321 = bitcast double* %320 to <4 x double>*
  %wide.load1443 = load <4 x double>, <4 x double>* %321, align 8, !alias.scope !111
  %322 = fmul fast <4 x double> %broadcast.splat1445, %wide.load1443
  %323 = add nuw nsw i64 %318, %polly.access.mul.Packed_MemRef_call2303490.us.1
  %324 = getelementptr double, double* %Packed_MemRef_call2303, i64 %323
  %325 = bitcast double* %324 to <4 x double>*
  %wide.load1446 = load <4 x double>, <4 x double>* %325, align 8
  %326 = fmul fast <4 x double> %broadcast.splat1448, %wide.load1446
  %327 = shl i64 %318, 3
  %328 = add nuw nsw i64 %327, %297
  %329 = getelementptr i8, i8* %call, i64 %328
  %330 = bitcast i8* %329 to <4 x double>*
  %wide.load1449 = load <4 x double>, <4 x double>* %330, align 8, !alias.scope !114, !noalias !116
  %331 = fadd fast <4 x double> %326, %322
  %332 = fmul fast <4 x double> %331, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %333 = fadd fast <4 x double> %332, %wide.load1449
  %334 = bitcast i8* %329 to <4 x double>*
  store <4 x double> %333, <4 x double>* %334, align 8, !alias.scope !114, !noalias !116
  %index.next1440 = add i64 %index1439, 4
  %335 = icmp eq i64 %index.next1440, %n.vec1438
  br i1 %335, label %middle.block1431, label %vector.body1433, !llvm.loop !117

middle.block1431:                                 ; preds = %vector.body1433
  %cmp.n1442 = icmp eq i64 %278, %n.vec1438
  br i1 %cmp.n1442, label %polly.loop_exit481.loopexit.us.1, label %polly.loop_header479.us.1.preheader

polly.loop_header479.us.1.preheader:              ; preds = %vector.memcheck1419, %polly.loop_exit481.loopexit.us, %middle.block1431
  %polly.indvar483.us.1.ph = phi i64 [ 0, %vector.memcheck1419 ], [ 0, %polly.loop_exit481.loopexit.us ], [ %n.vec1438, %middle.block1431 ]
  br label %polly.loop_header479.us.1

polly.start507:                                   ; preds = %init_array.exit
  %malloccall509 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall511 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header595

polly.exiting508:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall509)
  tail call void @free(i8* %malloccall511)
  br label %kernel_syr2k.exit

polly.loop_header595:                             ; preds = %polly.loop_exit603, %polly.start507
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit603 ], [ 0, %polly.start507 ]
  %polly.indvar598 = phi i64 [ %polly.indvar_next599, %polly.loop_exit603 ], [ 1, %polly.start507 ]
  %336 = add i64 %indvar, 1
  %337 = mul nuw nsw i64 %polly.indvar598, 9600
  %scevgep607 = getelementptr i8, i8* %call, i64 %337
  %min.iters.check1223 = icmp ult i64 %336, 4
  br i1 %min.iters.check1223, label %polly.loop_header601.preheader, label %vector.ph1224

vector.ph1224:                                    ; preds = %polly.loop_header595
  %n.vec1226 = and i64 %336, -4
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %vector.ph1224
  %index1227 = phi i64 [ 0, %vector.ph1224 ], [ %index.next1228, %vector.body1222 ]
  %338 = shl nuw nsw i64 %index1227, 3
  %339 = getelementptr i8, i8* %scevgep607, i64 %338
  %340 = bitcast i8* %339 to <4 x double>*
  %wide.load1231 = load <4 x double>, <4 x double>* %340, align 8, !alias.scope !118, !noalias !120
  %341 = fmul fast <4 x double> %wide.load1231, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %342 = bitcast i8* %339 to <4 x double>*
  store <4 x double> %341, <4 x double>* %342, align 8, !alias.scope !118, !noalias !120
  %index.next1228 = add i64 %index1227, 4
  %343 = icmp eq i64 %index.next1228, %n.vec1226
  br i1 %343, label %middle.block1220, label %vector.body1222, !llvm.loop !125

middle.block1220:                                 ; preds = %vector.body1222
  %cmp.n1230 = icmp eq i64 %336, %n.vec1226
  br i1 %cmp.n1230, label %polly.loop_exit603, label %polly.loop_header601.preheader

polly.loop_header601.preheader:                   ; preds = %polly.loop_header595, %middle.block1220
  %polly.indvar604.ph = phi i64 [ 0, %polly.loop_header595 ], [ %n.vec1226, %middle.block1220 ]
  br label %polly.loop_header601

polly.loop_exit603:                               ; preds = %polly.loop_header601, %middle.block1220
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next599, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1103.not, label %polly.loop_header611.preheader, label %polly.loop_header595

polly.loop_header611.preheader:                   ; preds = %polly.loop_exit603
  %Packed_MemRef_call1510 = bitcast i8* %malloccall509 to double*
  %Packed_MemRef_call2512 = bitcast i8* %malloccall511 to double*
  br label %polly.loop_header611

polly.loop_header601:                             ; preds = %polly.loop_header601.preheader, %polly.loop_header601
  %polly.indvar604 = phi i64 [ %polly.indvar_next605, %polly.loop_header601 ], [ %polly.indvar604.ph, %polly.loop_header601.preheader ]
  %344 = shl nuw nsw i64 %polly.indvar604, 3
  %scevgep608 = getelementptr i8, i8* %scevgep607, i64 %344
  %scevgep608609 = bitcast i8* %scevgep608 to double*
  %_p_scalar_610 = load double, double* %scevgep608609, align 8, !alias.scope !118, !noalias !120
  %p_mul.i = fmul fast double %_p_scalar_610, 1.200000e+00
  store double %p_mul.i, double* %scevgep608609, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar_next605, %polly.indvar598
  br i1 %exitcond1102.not, label %polly.loop_exit603, label %polly.loop_header601, !llvm.loop !126

polly.loop_header611:                             ; preds = %polly.loop_header611.preheader, %polly.loop_exit619
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 0, %polly.loop_header611.preheader ]
  %polly.access.mul.Packed_MemRef_call2512 = mul nuw nsw i64 %polly.indvar614, 1200
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1101.not = icmp eq i64 %polly.indvar_next615, 1000
  br i1 %exitcond1101.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %scevgep1256 = getelementptr i8, i8* %malloccall509, i64 19200
  %scevgep1257 = getelementptr i8, i8* %malloccall509, i64 19208
  %scevgep1287 = getelementptr i8, i8* %malloccall509, i64 9600
  %scevgep1288 = getelementptr i8, i8* %malloccall509, i64 9608
  %scevgep1318 = getelementptr i8, i8* %malloccall509, i64 8
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617, %polly.loop_header611
  %polly.indvar620 = phi i64 [ 0, %polly.loop_header611 ], [ %polly.indvar_next621, %polly.loop_header617 ]
  %polly.access.mul.call2624 = mul nuw nsw i64 %polly.indvar620, 1000
  %polly.access.add.call2625 = add nuw nsw i64 %polly.access.mul.call2624, %polly.indvar614
  %polly.access.call2626 = getelementptr double, double* %polly.access.cast.call2728, i64 %polly.access.add.call2625
  %polly.access.call2626.load = load double, double* %polly.access.call2626, align 8, !alias.scope !122, !noalias !127
  %polly.access.add.Packed_MemRef_call2512 = add nuw nsw i64 %polly.indvar620, %polly.access.mul.Packed_MemRef_call2512
  %polly.access.Packed_MemRef_call2512 = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512
  store double %polly.access.call2626.load, double* %polly.access.Packed_MemRef_call2512, align 8
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar_next621, 1200
  br i1 %exitcond1100.not, label %polly.loop_exit619, label %polly.loop_header617

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %345 = shl nuw nsw i64 %polly.indvar630, 7
  %346 = mul nuw nsw i64 %polly.indvar630, 1228800
  %347 = or i64 %346, 8
  %348 = shl nuw nsw i64 %polly.indvar630, 7
  %349 = shl nuw nsw i64 %polly.indvar630, 7
  %350 = mul nuw nsw i64 %polly.indvar630, 1228800
  %351 = or i64 %350, 8
  %352 = shl nuw nsw i64 %polly.indvar630, 7
  %353 = shl nuw nsw i64 %polly.indvar630, 7
  %354 = mul nuw nsw i64 %polly.indvar630, 1228800
  %355 = or i64 %354, 8
  %356 = shl nuw nsw i64 %polly.indvar630, 7
  %357 = shl nuw nsw i64 %polly.indvar630, 7
  %358 = lshr i64 %polly.indvar630, 1
  %smin1095 = call i64 @llvm.smin.i64(i64 %indvars.iv1093, i64 -1072)
  %359 = shl nsw i64 %polly.indvar630, 7
  %360 = add nsw i64 %smin1095, 1199
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit642
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %indvars.iv.next1082 = add nuw nsw i64 %indvars.iv1081, 128
  %indvars.iv.next1094 = add nsw i64 %indvars.iv1093, -128
  %exitcond1099.not = icmp eq i64 %polly.indvar_next631, 10
  br i1 %exitcond1099.not, label %polly.exiting508, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit642, %polly.loop_header627
  %polly.indvar636 = phi i64 [ 0, %polly.loop_header627 ], [ %polly.indvar_next637, %polly.loop_exit642 ]
  %361 = shl nsw i64 %polly.indvar636, 2
  %362 = or i64 %361, 1
  %363 = or i64 %361, 2
  %364 = or i64 %361, 3
  %polly.access.mul.Packed_MemRef_call2512699.us = mul nsw i64 %polly.indvar636, 4800
  %365 = or i64 %361, 1
  %polly.access.mul.Packed_MemRef_call2512699.us.1 = mul nuw nsw i64 %365, 1200
  %366 = or i64 %361, 2
  %polly.access.mul.Packed_MemRef_call2512699.us.2 = mul nuw nsw i64 %366, 1200
  %367 = or i64 %361, 3
  %polly.access.mul.Packed_MemRef_call2512699.us.3 = mul nuw nsw i64 %367, 1200
  br label %polly.loop_header640

polly.loop_exit642:                               ; preds = %polly.loop_exit648
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next637, 250
  br i1 %exitcond1098.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header640:                             ; preds = %polly.loop_exit648, %polly.loop_header633
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %polly.loop_exit648 ], [ %indvars.iv1081, %polly.loop_header633 ]
  %polly.indvar643 = phi i64 [ %polly.indvar_next644, %polly.loop_exit648 ], [ 0, %polly.loop_header633 ]
  %368 = mul nsw i64 %polly.indvar643, -256
  %369 = add i64 %345, %368
  %370 = shl nuw nsw i64 %polly.indvar643, 11
  %371 = add nuw i64 %346, %370
  %372 = add nuw i64 %347, %370
  %373 = mul nsw i64 %polly.indvar643, -256
  %374 = add i64 %348, %373
  %375 = mul nsw i64 %polly.indvar643, -256
  %376 = add i64 %349, %375
  %377 = shl nuw nsw i64 %polly.indvar643, 11
  %378 = add nuw i64 %350, %377
  %379 = add nuw i64 %351, %377
  %380 = mul nsw i64 %polly.indvar643, -256
  %381 = add i64 %352, %380
  %382 = mul nsw i64 %polly.indvar643, -256
  %383 = add i64 %353, %382
  %384 = shl nuw nsw i64 %polly.indvar643, 11
  %385 = add nuw i64 %354, %384
  %386 = add nuw i64 %355, %384
  %387 = mul nsw i64 %polly.indvar643, -256
  %388 = add i64 %356, %387
  %389 = mul nsw i64 %polly.indvar643, -256
  %390 = add i64 %357, %389
  %391 = shl nsw i64 %polly.indvar643, 8
  %392 = sub nsw i64 %359, %391
  %393 = add nuw nsw i64 %391, 256
  br label %polly.loop_header646

polly.loop_exit648:                               ; preds = %polly.loop_exit683
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %indvars.iv.next1084 = add nsw i64 %indvars.iv1083, -256
  %exitcond1097.not = icmp eq i64 %polly.indvar643, %358
  br i1 %exitcond1097.not, label %polly.loop_exit642, label %polly.loop_header640

polly.loop_header646:                             ; preds = %polly.loop_exit683, %polly.loop_header640
  %indvars.iv1085 = phi i64 [ %indvars.iv.next1086, %polly.loop_exit683 ], [ %indvars.iv1083, %polly.loop_header640 ]
  %polly.indvar649 = phi i64 [ %polly.indvar_next650, %polly.loop_exit683 ], [ 0, %polly.loop_header640 ]
  %394 = add i64 %369, %polly.indvar649
  %smin1327 = call i64 @llvm.smin.i64(i64 %394, i64 255)
  %395 = add nsw i64 %smin1327, 1
  %396 = mul i64 %polly.indvar649, 9600
  %397 = add i64 %371, %396
  %scevgep1314 = getelementptr i8, i8* %call, i64 %397
  %398 = add i64 %372, %396
  %scevgep1315 = getelementptr i8, i8* %call, i64 %398
  %399 = add i64 %374, %polly.indvar649
  %smin1316 = call i64 @llvm.smin.i64(i64 %399, i64 255)
  %400 = shl nsw i64 %smin1316, 3
  %scevgep1317 = getelementptr i8, i8* %scevgep1315, i64 %400
  %scevgep1319 = getelementptr i8, i8* %scevgep1318, i64 %400
  %401 = add i64 %376, %polly.indvar649
  %smin1297 = call i64 @llvm.smin.i64(i64 %401, i64 255)
  %402 = add nsw i64 %smin1297, 1
  %403 = mul i64 %polly.indvar649, 9600
  %404 = add i64 %378, %403
  %scevgep1283 = getelementptr i8, i8* %call, i64 %404
  %405 = add i64 %379, %403
  %scevgep1284 = getelementptr i8, i8* %call, i64 %405
  %406 = add i64 %381, %polly.indvar649
  %smin1285 = call i64 @llvm.smin.i64(i64 %406, i64 255)
  %407 = shl nsw i64 %smin1285, 3
  %scevgep1286 = getelementptr i8, i8* %scevgep1284, i64 %407
  %scevgep1289 = getelementptr i8, i8* %scevgep1288, i64 %407
  %408 = add i64 %383, %polly.indvar649
  %smin1266 = call i64 @llvm.smin.i64(i64 %408, i64 255)
  %409 = add nsw i64 %smin1266, 1
  %410 = mul i64 %polly.indvar649, 9600
  %411 = add i64 %385, %410
  %scevgep1252 = getelementptr i8, i8* %call, i64 %411
  %412 = add i64 %386, %410
  %scevgep1253 = getelementptr i8, i8* %call, i64 %412
  %413 = add i64 %388, %polly.indvar649
  %smin1254 = call i64 @llvm.smin.i64(i64 %413, i64 255)
  %414 = shl nsw i64 %smin1254, 3
  %scevgep1255 = getelementptr i8, i8* %scevgep1253, i64 %414
  %scevgep1258 = getelementptr i8, i8* %scevgep1257, i64 %414
  %415 = add i64 %390, %polly.indvar649
  %smin1235 = call i64 @llvm.smin.i64(i64 %415, i64 255)
  %416 = add nsw i64 %smin1235, 1
  %smin1090 = call i64 @llvm.smin.i64(i64 %indvars.iv1085, i64 255)
  %417 = add nsw i64 %polly.indvar649, %392
  %polly.loop_guard6621140 = icmp sgt i64 %417, -1
  %418 = add nuw nsw i64 %polly.indvar649, %359
  %.not921 = icmp ult i64 %418, %393
  %polly.access.mul.call1675 = mul nuw nsw i64 %418, 1000
  %419 = add nuw nsw i64 %polly.access.mul.call1675, %361
  br i1 %polly.loop_guard6621140, label %polly.loop_header659.us, label %polly.loop_header646.split

polly.loop_header659.us:                          ; preds = %polly.loop_header646, %polly.loop_header659.us
  %polly.indvar663.us = phi i64 [ %polly.indvar_next664.us, %polly.loop_header659.us ], [ 0, %polly.loop_header646 ]
  %420 = add nuw nsw i64 %polly.indvar663.us, %391
  %polly.access.mul.call1667.us = mul nuw nsw i64 %420, 1000
  %polly.access.add.call1668.us = add nuw nsw i64 %361, %polly.access.mul.call1667.us
  %polly.access.call1669.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1668.us
  %polly.access.call1669.load.us = load double, double* %polly.access.call1669.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1510.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.indvar663.us
  store double %polly.access.call1669.load.us, double* %polly.access.Packed_MemRef_call1510.us, align 8
  %polly.indvar_next664.us = add nuw nsw i64 %polly.indvar663.us, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar663.us, %smin1090
  br i1 %exitcond1088.not, label %polly.cond670.loopexit.us, label %polly.loop_header659.us

polly.then672.us:                                 ; preds = %polly.cond670.loopexit.us
  %polly.access.call1677.us = getelementptr double, double* %polly.access.cast.call1718, i64 %419
  %polly.access.call1677.load.us = load double, double* %polly.access.call1677.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1510680.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %417
  store double %polly.access.call1677.load.us, double* %polly.access.Packed_MemRef_call1510680.us, align 8
  br label %polly.loop_header659.us.1.preheader

polly.cond670.loopexit.us:                        ; preds = %polly.loop_header659.us
  br i1 %.not921, label %polly.loop_header659.us.1.preheader, label %polly.then672.us

polly.loop_header659.us.1.preheader:              ; preds = %polly.then672.us, %polly.cond670.loopexit.us
  br label %polly.loop_header659.us.1

polly.loop_header646.split:                       ; preds = %polly.loop_header646
  br i1 %.not921, label %polly.loop_exit683, label %polly.loop_header652.preheader

polly.loop_header652.preheader:                   ; preds = %polly.loop_header646.split
  %polly.access.call1677 = getelementptr double, double* %polly.access.cast.call1718, i64 %419
  %polly.access.call1677.load = load double, double* %polly.access.call1677, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1510680 = getelementptr double, double* %Packed_MemRef_call1510, i64 %417
  store double %polly.access.call1677.load, double* %polly.access.Packed_MemRef_call1510680, align 8
  %polly.access.add.call1676.1 = or i64 %419, 1
  %polly.access.call1677.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.1
  %polly.access.call1677.load.1 = load double, double* %polly.access.call1677.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1510679.1 = add nsw i64 %417, 1200
  %polly.access.Packed_MemRef_call1510680.1 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.1
  store double %polly.access.call1677.load.1, double* %polly.access.Packed_MemRef_call1510680.1, align 8
  %polly.access.add.call1676.2 = or i64 %419, 2
  %polly.access.call1677.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.2
  %polly.access.call1677.load.2 = load double, double* %polly.access.call1677.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1510679.2 = add nsw i64 %417, 2400
  %polly.access.Packed_MemRef_call1510680.2 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.2
  store double %polly.access.call1677.load.2, double* %polly.access.Packed_MemRef_call1510680.2, align 8
  %polly.access.add.call1676.3 = or i64 %419, 3
  %polly.access.call1677.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.3
  %polly.access.call1677.load.3 = load double, double* %polly.access.call1677.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1510679.3 = add nsw i64 %417, 3600
  %polly.access.Packed_MemRef_call1510680.3 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.3
  store double %polly.access.call1677.load.3, double* %polly.access.Packed_MemRef_call1510680.3, align 8
  br label %polly.loop_exit683

polly.loop_exit683:                               ; preds = %polly.loop_header688.us.3, %middle.block1232, %polly.loop_header646.split, %polly.loop_header652.preheader, %polly.loop_header681.preheader
  %polly.indvar_next650 = add nuw nsw i64 %polly.indvar649, 1
  %indvars.iv.next1086 = add nsw i64 %indvars.iv1085, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar649, %360
  br i1 %exitcond1096.not, label %polly.loop_exit648, label %polly.loop_header646

polly.loop_header681.preheader:                   ; preds = %polly.cond670.loopexit.us.3, %polly.then672.us.3
  %421 = mul nuw nsw i64 %418, 9600
  br i1 %polly.loop_guard6621140, label %polly.loop_header681.us.preheader, label %polly.loop_exit683

polly.loop_header681.us.preheader:                ; preds = %polly.loop_header681.preheader
  %polly.access.add.Packed_MemRef_call2512700.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2512699.us, %418
  %polly.access.Packed_MemRef_call2512701.us = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512700.us
  %_p_scalar_702.us = load double, double* %polly.access.Packed_MemRef_call2512701.us, align 8
  %polly.access.Packed_MemRef_call1510709.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %417
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call1510709.us, align 8
  %min.iters.check1328 = icmp ult i64 %395, 4
  br i1 %min.iters.check1328, label %polly.loop_header688.us.preheader, label %vector.memcheck1313

vector.memcheck1313:                              ; preds = %polly.loop_header681.us.preheader
  %bound01320 = icmp ult i8* %scevgep1314, %scevgep1319
  %bound11321 = icmp ult i8* %malloccall509, %scevgep1317
  %found.conflict1322 = and i1 %bound01320, %bound11321
  br i1 %found.conflict1322, label %polly.loop_header688.us.preheader, label %vector.ph1329

vector.ph1329:                                    ; preds = %vector.memcheck1313
  %n.vec1331 = and i64 %395, -4
  %broadcast.splatinsert1337 = insertelement <4 x double> poison, double %_p_scalar_702.us, i32 0
  %broadcast.splat1338 = shufflevector <4 x double> %broadcast.splatinsert1337, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1340 = insertelement <4 x double> poison, double %_p_scalar_710.us, i32 0
  %broadcast.splat1341 = shufflevector <4 x double> %broadcast.splatinsert1340, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1326

vector.body1326:                                  ; preds = %vector.body1326, %vector.ph1329
  %index1332 = phi i64 [ 0, %vector.ph1329 ], [ %index.next1333, %vector.body1326 ]
  %422 = add nuw nsw i64 %index1332, %391
  %423 = getelementptr double, double* %Packed_MemRef_call1510, i64 %index1332
  %424 = bitcast double* %423 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %424, align 8, !alias.scope !129
  %425 = fmul fast <4 x double> %broadcast.splat1338, %wide.load1336
  %426 = add nuw nsw i64 %422, %polly.access.mul.Packed_MemRef_call2512699.us
  %427 = getelementptr double, double* %Packed_MemRef_call2512, i64 %426
  %428 = bitcast double* %427 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %428, align 8
  %429 = fmul fast <4 x double> %broadcast.splat1341, %wide.load1339
  %430 = shl i64 %422, 3
  %431 = add nuw nsw i64 %430, %421
  %432 = getelementptr i8, i8* %call, i64 %431
  %433 = bitcast i8* %432 to <4 x double>*
  %wide.load1342 = load <4 x double>, <4 x double>* %433, align 8, !alias.scope !132, !noalias !134
  %434 = fadd fast <4 x double> %429, %425
  %435 = fmul fast <4 x double> %434, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %436 = fadd fast <4 x double> %435, %wide.load1342
  %437 = bitcast i8* %432 to <4 x double>*
  store <4 x double> %436, <4 x double>* %437, align 8, !alias.scope !132, !noalias !134
  %index.next1333 = add i64 %index1332, 4
  %438 = icmp eq i64 %index.next1333, %n.vec1331
  br i1 %438, label %middle.block1324, label %vector.body1326, !llvm.loop !135

middle.block1324:                                 ; preds = %vector.body1326
  %cmp.n1335 = icmp eq i64 %395, %n.vec1331
  br i1 %cmp.n1335, label %polly.loop_exit690.loopexit.us, label %polly.loop_header688.us.preheader

polly.loop_header688.us.preheader:                ; preds = %vector.memcheck1313, %polly.loop_header681.us.preheader, %middle.block1324
  %polly.indvar692.us.ph = phi i64 [ 0, %vector.memcheck1313 ], [ 0, %polly.loop_header681.us.preheader ], [ %n.vec1331, %middle.block1324 ]
  br label %polly.loop_header688.us

polly.loop_header688.us:                          ; preds = %polly.loop_header688.us.preheader, %polly.loop_header688.us
  %polly.indvar692.us = phi i64 [ %polly.indvar_next693.us, %polly.loop_header688.us ], [ %polly.indvar692.us.ph, %polly.loop_header688.us.preheader ]
  %439 = add nuw nsw i64 %polly.indvar692.us, %391
  %polly.access.Packed_MemRef_call1510697.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.indvar692.us
  %_p_scalar_698.us = load double, double* %polly.access.Packed_MemRef_call1510697.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_702.us, %_p_scalar_698.us
  %polly.access.add.Packed_MemRef_call2512704.us = add nuw nsw i64 %439, %polly.access.mul.Packed_MemRef_call2512699.us
  %polly.access.Packed_MemRef_call2512705.us = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512704.us
  %_p_scalar_706.us = load double, double* %polly.access.Packed_MemRef_call2512705.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_710.us, %_p_scalar_706.us
  %440 = shl i64 %439, 3
  %441 = add nuw nsw i64 %440, %421
  %scevgep711.us = getelementptr i8, i8* %call, i64 %441
  %scevgep711712.us = bitcast i8* %scevgep711.us to double*
  %_p_scalar_713.us = load double, double* %scevgep711712.us, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_713.us
  store double %p_add42.i.us, double* %scevgep711712.us, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next693.us = add nuw nsw i64 %polly.indvar692.us, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar692.us, %smin1090
  br i1 %exitcond1091.not, label %polly.loop_exit690.loopexit.us, label %polly.loop_header688.us, !llvm.loop !136

polly.loop_exit690.loopexit.us:                   ; preds = %polly.loop_header688.us, %middle.block1324
  %polly.access.add.Packed_MemRef_call2512700.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2512699.us.1, %418
  %polly.access.Packed_MemRef_call2512701.us.1 = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512700.us.1
  %_p_scalar_702.us.1 = load double, double* %polly.access.Packed_MemRef_call2512701.us.1, align 8
  %polly.access.add.Packed_MemRef_call1510708.us.1 = add nsw i64 %417, 1200
  %polly.access.Packed_MemRef_call1510709.us.1 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510708.us.1
  %_p_scalar_710.us.1 = load double, double* %polly.access.Packed_MemRef_call1510709.us.1, align 8
  %min.iters.check1298 = icmp ult i64 %402, 4
  br i1 %min.iters.check1298, label %polly.loop_header688.us.1.preheader, label %vector.memcheck1282

vector.memcheck1282:                              ; preds = %polly.loop_exit690.loopexit.us
  %bound01290 = icmp ult i8* %scevgep1283, %scevgep1289
  %bound11291 = icmp ult i8* %scevgep1287, %scevgep1286
  %found.conflict1292 = and i1 %bound01290, %bound11291
  br i1 %found.conflict1292, label %polly.loop_header688.us.1.preheader, label %vector.ph1299

vector.ph1299:                                    ; preds = %vector.memcheck1282
  %n.vec1301 = and i64 %402, -4
  %broadcast.splatinsert1307 = insertelement <4 x double> poison, double %_p_scalar_702.us.1, i32 0
  %broadcast.splat1308 = shufflevector <4 x double> %broadcast.splatinsert1307, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1310 = insertelement <4 x double> poison, double %_p_scalar_710.us.1, i32 0
  %broadcast.splat1311 = shufflevector <4 x double> %broadcast.splatinsert1310, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1296

vector.body1296:                                  ; preds = %vector.body1296, %vector.ph1299
  %index1302 = phi i64 [ 0, %vector.ph1299 ], [ %index.next1303, %vector.body1296 ]
  %442 = add nuw nsw i64 %index1302, %391
  %443 = add nuw nsw i64 %index1302, 1200
  %444 = getelementptr double, double* %Packed_MemRef_call1510, i64 %443
  %445 = bitcast double* %444 to <4 x double>*
  %wide.load1306 = load <4 x double>, <4 x double>* %445, align 8, !alias.scope !137
  %446 = fmul fast <4 x double> %broadcast.splat1308, %wide.load1306
  %447 = add nuw nsw i64 %442, %polly.access.mul.Packed_MemRef_call2512699.us.1
  %448 = getelementptr double, double* %Packed_MemRef_call2512, i64 %447
  %449 = bitcast double* %448 to <4 x double>*
  %wide.load1309 = load <4 x double>, <4 x double>* %449, align 8
  %450 = fmul fast <4 x double> %broadcast.splat1311, %wide.load1309
  %451 = shl i64 %442, 3
  %452 = add nuw nsw i64 %451, %421
  %453 = getelementptr i8, i8* %call, i64 %452
  %454 = bitcast i8* %453 to <4 x double>*
  %wide.load1312 = load <4 x double>, <4 x double>* %454, align 8, !alias.scope !140, !noalias !142
  %455 = fadd fast <4 x double> %450, %446
  %456 = fmul fast <4 x double> %455, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %457 = fadd fast <4 x double> %456, %wide.load1312
  %458 = bitcast i8* %453 to <4 x double>*
  store <4 x double> %457, <4 x double>* %458, align 8, !alias.scope !140, !noalias !142
  %index.next1303 = add i64 %index1302, 4
  %459 = icmp eq i64 %index.next1303, %n.vec1301
  br i1 %459, label %middle.block1294, label %vector.body1296, !llvm.loop !143

middle.block1294:                                 ; preds = %vector.body1296
  %cmp.n1305 = icmp eq i64 %402, %n.vec1301
  br i1 %cmp.n1305, label %polly.loop_exit690.loopexit.us.1, label %polly.loop_header688.us.1.preheader

polly.loop_header688.us.1.preheader:              ; preds = %vector.memcheck1282, %polly.loop_exit690.loopexit.us, %middle.block1294
  %polly.indvar692.us.1.ph = phi i64 [ 0, %vector.memcheck1282 ], [ 0, %polly.loop_exit690.loopexit.us ], [ %n.vec1301, %middle.block1294 ]
  br label %polly.loop_header688.us.1

polly.loop_header840:                             ; preds = %entry, %polly.loop_exit848
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit848 ], [ 0, %entry ]
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_exit848 ], [ 0, %entry ]
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 -1168)
  %460 = shl nsw i64 %polly.indvar843, 5
  %461 = add nsw i64 %smin1130, 1199
  br label %polly.loop_header846

polly.loop_exit848:                               ; preds = %polly.loop_exit854
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -32
  %exitcond1133.not = icmp eq i64 %polly.indvar_next844, 38
  br i1 %exitcond1133.not, label %polly.loop_header867, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_exit854, %polly.loop_header840
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %462 = mul nsw i64 %polly.indvar849, -32
  %smin = call i64 @llvm.smin.i64(i64 %462, i64 -1168)
  %463 = add nsw i64 %smin, 1200
  %smin1126 = call i64 @llvm.smin.i64(i64 %indvars.iv1124, i64 -1168)
  %464 = shl nsw i64 %polly.indvar849, 5
  %465 = add nsw i64 %smin1126, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1125 = add nsw i64 %indvars.iv1124, -32
  %exitcond1132.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1132.not, label %polly.loop_exit848, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %polly.indvar855 = phi i64 [ 0, %polly.loop_header846 ], [ %polly.indvar_next856, %polly.loop_exit860 ]
  %466 = add nuw nsw i64 %polly.indvar855, %460
  %467 = trunc i64 %466 to i32
  %468 = mul nuw nsw i64 %466, 9600
  %min.iters.check = icmp eq i64 %463, 0
  br i1 %min.iters.check, label %polly.loop_header858, label %vector.ph1162

vector.ph1162:                                    ; preds = %polly.loop_header852
  %broadcast.splatinsert1169 = insertelement <4 x i64> poison, i64 %464, i32 0
  %broadcast.splat1170 = shufflevector <4 x i64> %broadcast.splatinsert1169, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1171 = insertelement <4 x i32> poison, i32 %467, i32 0
  %broadcast.splat1172 = shufflevector <4 x i32> %broadcast.splatinsert1171, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1161

vector.body1161:                                  ; preds = %vector.body1161, %vector.ph1162
  %index1163 = phi i64 [ 0, %vector.ph1162 ], [ %index.next1164, %vector.body1161 ]
  %vec.ind1167 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1162 ], [ %vec.ind.next1168, %vector.body1161 ]
  %469 = add nuw nsw <4 x i64> %vec.ind1167, %broadcast.splat1170
  %470 = trunc <4 x i64> %469 to <4 x i32>
  %471 = mul <4 x i32> %broadcast.splat1172, %470
  %472 = add <4 x i32> %471, <i32 3, i32 3, i32 3, i32 3>
  %473 = urem <4 x i32> %472, <i32 1200, i32 1200, i32 1200, i32 1200>
  %474 = sitofp <4 x i32> %473 to <4 x double>
  %475 = fmul fast <4 x double> %474, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %476 = extractelement <4 x i64> %469, i32 0
  %477 = shl i64 %476, 3
  %478 = add nuw nsw i64 %477, %468
  %479 = getelementptr i8, i8* %call, i64 %478
  %480 = bitcast i8* %479 to <4 x double>*
  store <4 x double> %475, <4 x double>* %480, align 8, !alias.scope !144, !noalias !146
  %index.next1164 = add i64 %index1163, 4
  %vec.ind.next1168 = add <4 x i64> %vec.ind1167, <i64 4, i64 4, i64 4, i64 4>
  %481 = icmp eq i64 %index.next1164, %463
  br i1 %481, label %polly.loop_exit860, label %vector.body1161, !llvm.loop !149

polly.loop_exit860:                               ; preds = %vector.body1161, %polly.loop_header858
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar855, %461
  br i1 %exitcond1131.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_header852, %polly.loop_header858
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_header858 ], [ 0, %polly.loop_header852 ]
  %482 = add nuw nsw i64 %polly.indvar861, %464
  %483 = trunc i64 %482 to i32
  %484 = mul i32 %483, %467
  %485 = add i32 %484, 3
  %486 = urem i32 %485, 1200
  %p_conv31.i = sitofp i32 %486 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %487 = shl i64 %482, 3
  %488 = add nuw nsw i64 %487, %468
  %scevgep864 = getelementptr i8, i8* %call, i64 %488
  %scevgep864865 = bitcast i8* %scevgep864 to double*
  store double %p_div33.i, double* %scevgep864865, align 8, !alias.scope !144, !noalias !146
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar861, %465
  br i1 %exitcond1127.not, label %polly.loop_exit860, label %polly.loop_header858, !llvm.loop !150

polly.loop_header867:                             ; preds = %polly.loop_exit848, %polly.loop_exit875
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit875 ], [ 0, %polly.loop_exit848 ]
  %polly.indvar870 = phi i64 [ %polly.indvar_next871, %polly.loop_exit875 ], [ 0, %polly.loop_exit848 ]
  %smin1120 = call i64 @llvm.smin.i64(i64 %indvars.iv1118, i64 -1168)
  %489 = shl nsw i64 %polly.indvar870, 5
  %490 = add nsw i64 %smin1120, 1199
  br label %polly.loop_header873

polly.loop_exit875:                               ; preds = %polly.loop_exit881
  %polly.indvar_next871 = add nuw nsw i64 %polly.indvar870, 1
  %indvars.iv.next1119 = add nsw i64 %indvars.iv1118, -32
  %exitcond1123.not = icmp eq i64 %polly.indvar_next871, 38
  br i1 %exitcond1123.not, label %polly.loop_header893, label %polly.loop_header867

polly.loop_header873:                             ; preds = %polly.loop_exit881, %polly.loop_header867
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %polly.loop_exit881 ], [ 0, %polly.loop_header867 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_header867 ]
  %491 = mul nsw i64 %polly.indvar876, -32
  %smin1176 = call i64 @llvm.smin.i64(i64 %491, i64 -968)
  %492 = add nsw i64 %smin1176, 1000
  %smin1116 = call i64 @llvm.smin.i64(i64 %indvars.iv1114, i64 -968)
  %493 = shl nsw i64 %polly.indvar876, 5
  %494 = add nsw i64 %smin1116, 999
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1115 = add nsw i64 %indvars.iv1114, -32
  %exitcond1122.not = icmp eq i64 %polly.indvar_next877, 32
  br i1 %exitcond1122.not, label %polly.loop_exit875, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %polly.indvar882 = phi i64 [ 0, %polly.loop_header873 ], [ %polly.indvar_next883, %polly.loop_exit887 ]
  %495 = add nuw nsw i64 %polly.indvar882, %489
  %496 = trunc i64 %495 to i32
  %497 = mul nuw nsw i64 %495, 8000
  %min.iters.check1177 = icmp eq i64 %492, 0
  br i1 %min.iters.check1177, label %polly.loop_header885, label %vector.ph1178

vector.ph1178:                                    ; preds = %polly.loop_header879
  %broadcast.splatinsert1187 = insertelement <4 x i64> poison, i64 %493, i32 0
  %broadcast.splat1188 = shufflevector <4 x i64> %broadcast.splatinsert1187, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1189 = insertelement <4 x i32> poison, i32 %496, i32 0
  %broadcast.splat1190 = shufflevector <4 x i32> %broadcast.splatinsert1189, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %vector.ph1178
  %index1181 = phi i64 [ 0, %vector.ph1178 ], [ %index.next1182, %vector.body1175 ]
  %vec.ind1185 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1178 ], [ %vec.ind.next1186, %vector.body1175 ]
  %498 = add nuw nsw <4 x i64> %vec.ind1185, %broadcast.splat1188
  %499 = trunc <4 x i64> %498 to <4 x i32>
  %500 = mul <4 x i32> %broadcast.splat1190, %499
  %501 = add <4 x i32> %500, <i32 2, i32 2, i32 2, i32 2>
  %502 = urem <4 x i32> %501, <i32 1000, i32 1000, i32 1000, i32 1000>
  %503 = sitofp <4 x i32> %502 to <4 x double>
  %504 = fmul fast <4 x double> %503, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %505 = extractelement <4 x i64> %498, i32 0
  %506 = shl i64 %505, 3
  %507 = add nuw nsw i64 %506, %497
  %508 = getelementptr i8, i8* %call2, i64 %507
  %509 = bitcast i8* %508 to <4 x double>*
  store <4 x double> %504, <4 x double>* %509, align 8, !alias.scope !148, !noalias !151
  %index.next1182 = add i64 %index1181, 4
  %vec.ind.next1186 = add <4 x i64> %vec.ind1185, <i64 4, i64 4, i64 4, i64 4>
  %510 = icmp eq i64 %index.next1182, %492
  br i1 %510, label %polly.loop_exit887, label %vector.body1175, !llvm.loop !152

polly.loop_exit887:                               ; preds = %vector.body1175, %polly.loop_header885
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar882, %490
  br i1 %exitcond1121.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_header879, %polly.loop_header885
  %polly.indvar888 = phi i64 [ %polly.indvar_next889, %polly.loop_header885 ], [ 0, %polly.loop_header879 ]
  %511 = add nuw nsw i64 %polly.indvar888, %493
  %512 = trunc i64 %511 to i32
  %513 = mul i32 %512, %496
  %514 = add i32 %513, 2
  %515 = urem i32 %514, 1000
  %p_conv10.i = sitofp i32 %515 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %516 = shl i64 %511, 3
  %517 = add nuw nsw i64 %516, %497
  %scevgep891 = getelementptr i8, i8* %call2, i64 %517
  %scevgep891892 = bitcast i8* %scevgep891 to double*
  store double %p_div12.i, double* %scevgep891892, align 8, !alias.scope !148, !noalias !151
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar888, %494
  br i1 %exitcond1117.not, label %polly.loop_exit887, label %polly.loop_header885, !llvm.loop !153

polly.loop_header893:                             ; preds = %polly.loop_exit875, %polly.loop_exit901
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit901 ], [ 0, %polly.loop_exit875 ]
  %polly.indvar896 = phi i64 [ %polly.indvar_next897, %polly.loop_exit901 ], [ 0, %polly.loop_exit875 ]
  %smin1110 = call i64 @llvm.smin.i64(i64 %indvars.iv1108, i64 -1168)
  %518 = shl nsw i64 %polly.indvar896, 5
  %519 = add nsw i64 %smin1110, 1199
  br label %polly.loop_header899

polly.loop_exit901:                               ; preds = %polly.loop_exit907
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %indvars.iv.next1109 = add nsw i64 %indvars.iv1108, -32
  %exitcond1113.not = icmp eq i64 %polly.indvar_next897, 38
  br i1 %exitcond1113.not, label %init_array.exit, label %polly.loop_header893

polly.loop_header899:                             ; preds = %polly.loop_exit907, %polly.loop_header893
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit907 ], [ 0, %polly.loop_header893 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_header893 ]
  %520 = mul nsw i64 %polly.indvar902, -32
  %smin1194 = call i64 @llvm.smin.i64(i64 %520, i64 -968)
  %521 = add nsw i64 %smin1194, 1000
  %smin1106 = call i64 @llvm.smin.i64(i64 %indvars.iv1104, i64 -968)
  %522 = shl nsw i64 %polly.indvar902, 5
  %523 = add nsw i64 %smin1106, 999
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -32
  %exitcond1112.not = icmp eq i64 %polly.indvar_next903, 32
  br i1 %exitcond1112.not, label %polly.loop_exit901, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %polly.indvar908 = phi i64 [ 0, %polly.loop_header899 ], [ %polly.indvar_next909, %polly.loop_exit913 ]
  %524 = add nuw nsw i64 %polly.indvar908, %518
  %525 = trunc i64 %524 to i32
  %526 = mul nuw nsw i64 %524, 8000
  %min.iters.check1195 = icmp eq i64 %521, 0
  br i1 %min.iters.check1195, label %polly.loop_header911, label %vector.ph1196

vector.ph1196:                                    ; preds = %polly.loop_header905
  %broadcast.splatinsert1205 = insertelement <4 x i64> poison, i64 %522, i32 0
  %broadcast.splat1206 = shufflevector <4 x i64> %broadcast.splatinsert1205, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1207 = insertelement <4 x i32> poison, i32 %525, i32 0
  %broadcast.splat1208 = shufflevector <4 x i32> %broadcast.splatinsert1207, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1193

vector.body1193:                                  ; preds = %vector.body1193, %vector.ph1196
  %index1199 = phi i64 [ 0, %vector.ph1196 ], [ %index.next1200, %vector.body1193 ]
  %vec.ind1203 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1196 ], [ %vec.ind.next1204, %vector.body1193 ]
  %527 = add nuw nsw <4 x i64> %vec.ind1203, %broadcast.splat1206
  %528 = trunc <4 x i64> %527 to <4 x i32>
  %529 = mul <4 x i32> %broadcast.splat1208, %528
  %530 = add <4 x i32> %529, <i32 1, i32 1, i32 1, i32 1>
  %531 = urem <4 x i32> %530, <i32 1200, i32 1200, i32 1200, i32 1200>
  %532 = sitofp <4 x i32> %531 to <4 x double>
  %533 = fmul fast <4 x double> %532, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %534 = extractelement <4 x i64> %527, i32 0
  %535 = shl i64 %534, 3
  %536 = add nuw nsw i64 %535, %526
  %537 = getelementptr i8, i8* %call1, i64 %536
  %538 = bitcast i8* %537 to <4 x double>*
  store <4 x double> %533, <4 x double>* %538, align 8, !alias.scope !147, !noalias !154
  %index.next1200 = add i64 %index1199, 4
  %vec.ind.next1204 = add <4 x i64> %vec.ind1203, <i64 4, i64 4, i64 4, i64 4>
  %539 = icmp eq i64 %index.next1200, %521
  br i1 %539, label %polly.loop_exit913, label %vector.body1193, !llvm.loop !155

polly.loop_exit913:                               ; preds = %vector.body1193, %polly.loop_header911
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar908, %519
  br i1 %exitcond1111.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_header905, %polly.loop_header911
  %polly.indvar914 = phi i64 [ %polly.indvar_next915, %polly.loop_header911 ], [ 0, %polly.loop_header905 ]
  %540 = add nuw nsw i64 %polly.indvar914, %522
  %541 = trunc i64 %540 to i32
  %542 = mul i32 %541, %525
  %543 = add i32 %542, 1
  %544 = urem i32 %543, 1200
  %p_conv.i = sitofp i32 %544 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %545 = shl i64 %540, 3
  %546 = add nuw nsw i64 %545, %526
  %scevgep918 = getelementptr i8, i8* %call1, i64 %546
  %scevgep918919 = bitcast i8* %scevgep918 to double*
  store double %p_div.i, double* %scevgep918919, align 8, !alias.scope !147, !noalias !154
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar914, %523
  br i1 %exitcond1107.not, label %polly.loop_exit913, label %polly.loop_header911, !llvm.loop !156

polly.loop_header246.us.1:                        ; preds = %polly.loop_header246.us.1.preheader, %polly.loop_header246.us.1
  %polly.indvar249.us.1 = phi i64 [ %polly.indvar_next250.us.1, %polly.loop_header246.us.1 ], [ 0, %polly.loop_header246.us.1.preheader ]
  %547 = add nuw nsw i64 %polly.indvar249.us.1, %143
  %polly.access.mul.call1253.us.1 = mul nuw nsw i64 %547, 1000
  %polly.access.add.call1254.us.1 = add nuw nsw i64 %114, %polly.access.mul.call1253.us.1
  %polly.access.call1255.us.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1254.us.1
  %polly.access.call1255.load.us.1 = load double, double* %polly.access.call1255.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar249.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1255.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next250.us.1 = add nuw nsw i64 %polly.indvar249.us.1, 1
  %exitcond1040.1.not = icmp eq i64 %polly.indvar249.us.1, %smin1042
  br i1 %exitcond1040.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header246.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header246.us.1
  br i1 %.not, label %polly.loop_header246.us.2.preheader, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1258.us.1 = or i64 %171, 1
  %polly.access.call1259.us.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.us.1
  %polly.access.call1259.load.us.1 = load double, double* %polly.access.call1259.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.us.1 = add nsw i64 %169, 1200
  %polly.access.Packed_MemRef_call1262.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.1
  store double %polly.access.call1259.load.us.1, double* %polly.access.Packed_MemRef_call1262.us.1, align 8
  br label %polly.loop_header246.us.2.preheader

polly.loop_header246.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header246.us.2

polly.loop_header246.us.2:                        ; preds = %polly.loop_header246.us.2.preheader, %polly.loop_header246.us.2
  %polly.indvar249.us.2 = phi i64 [ %polly.indvar_next250.us.2, %polly.loop_header246.us.2 ], [ 0, %polly.loop_header246.us.2.preheader ]
  %548 = add nuw nsw i64 %polly.indvar249.us.2, %143
  %polly.access.mul.call1253.us.2 = mul nuw nsw i64 %548, 1000
  %polly.access.add.call1254.us.2 = add nuw nsw i64 %115, %polly.access.mul.call1253.us.2
  %polly.access.call1255.us.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1254.us.2
  %polly.access.call1255.load.us.2 = load double, double* %polly.access.call1255.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar249.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1255.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next250.us.2 = add nuw nsw i64 %polly.indvar249.us.2, 1
  %exitcond1040.2.not = icmp eq i64 %polly.indvar249.us.2, %smin1042
  br i1 %exitcond1040.2.not, label %polly.cond.loopexit.us.2, label %polly.loop_header246.us.2

polly.cond.loopexit.us.2:                         ; preds = %polly.loop_header246.us.2
  br i1 %.not, label %polly.loop_header246.us.3.preheader, label %polly.then.us.2

polly.then.us.2:                                  ; preds = %polly.cond.loopexit.us.2
  %polly.access.add.call1258.us.2 = or i64 %171, 2
  %polly.access.call1259.us.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.us.2
  %polly.access.call1259.load.us.2 = load double, double* %polly.access.call1259.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.us.2 = add nsw i64 %169, 2400
  %polly.access.Packed_MemRef_call1262.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.2
  store double %polly.access.call1259.load.us.2, double* %polly.access.Packed_MemRef_call1262.us.2, align 8
  br label %polly.loop_header246.us.3.preheader

polly.loop_header246.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header246.us.3

polly.loop_header246.us.3:                        ; preds = %polly.loop_header246.us.3.preheader, %polly.loop_header246.us.3
  %polly.indvar249.us.3 = phi i64 [ %polly.indvar_next250.us.3, %polly.loop_header246.us.3 ], [ 0, %polly.loop_header246.us.3.preheader ]
  %549 = add nuw nsw i64 %polly.indvar249.us.3, %143
  %polly.access.mul.call1253.us.3 = mul nuw nsw i64 %549, 1000
  %polly.access.add.call1254.us.3 = add nuw nsw i64 %116, %polly.access.mul.call1253.us.3
  %polly.access.call1255.us.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1254.us.3
  %polly.access.call1255.load.us.3 = load double, double* %polly.access.call1255.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar249.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1255.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next250.us.3 = add nuw nsw i64 %polly.indvar249.us.3, 1
  %exitcond1040.3.not = icmp eq i64 %polly.indvar249.us.3, %smin1042
  br i1 %exitcond1040.3.not, label %polly.cond.loopexit.us.3, label %polly.loop_header246.us.3

polly.cond.loopexit.us.3:                         ; preds = %polly.loop_header246.us.3
  br i1 %.not, label %polly.loop_header263.preheader, label %polly.then.us.3

polly.then.us.3:                                  ; preds = %polly.cond.loopexit.us.3
  %polly.access.add.call1258.us.3 = or i64 %171, 3
  %polly.access.call1259.us.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.us.3
  %polly.access.call1259.load.us.3 = load double, double* %polly.access.call1259.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.us.3 = add nsw i64 %169, 3600
  %polly.access.Packed_MemRef_call1262.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.3
  store double %polly.access.call1259.load.us.3, double* %polly.access.Packed_MemRef_call1262.us.3, align 8
  br label %polly.loop_header263.preheader

polly.loop_header270.us.1:                        ; preds = %polly.loop_header270.us.1.preheader, %polly.loop_header270.us.1
  %polly.indvar274.us.1 = phi i64 [ %polly.indvar_next275.us.1, %polly.loop_header270.us.1 ], [ %polly.indvar274.us.1.ph, %polly.loop_header270.us.1.preheader ]
  %550 = add nuw nsw i64 %polly.indvar274.us.1, %143
  %polly.access.add.Packed_MemRef_call1278.us.1 = add nuw nsw i64 %polly.indvar274.us.1, 1200
  %polly.access.Packed_MemRef_call1279.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us.1
  %_p_scalar_280.us.1 = load double, double* %polly.access.Packed_MemRef_call1279.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_284.us.1, %_p_scalar_280.us.1
  %polly.access.add.Packed_MemRef_call2286.us.1 = add nuw nsw i64 %550, %polly.access.mul.Packed_MemRef_call2281.us.1
  %polly.access.Packed_MemRef_call2287.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.1
  %_p_scalar_288.us.1 = load double, double* %polly.access.Packed_MemRef_call2287.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_292.us.1, %_p_scalar_288.us.1
  %551 = shl i64 %550, 3
  %552 = add nuw nsw i64 %551, %173
  %scevgep293.us.1 = getelementptr i8, i8* %call, i64 %552
  %scevgep293294.us.1 = bitcast i8* %scevgep293.us.1 to double*
  %_p_scalar_295.us.1 = load double, double* %scevgep293294.us.1, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_295.us.1
  store double %p_add42.i118.us.1, double* %scevgep293294.us.1, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next275.us.1 = add nuw nsw i64 %polly.indvar274.us.1, 1
  %exitcond1043.1.not = icmp eq i64 %polly.indvar274.us.1, %smin1042
  br i1 %exitcond1043.1.not, label %polly.loop_exit272.loopexit.us.1, label %polly.loop_header270.us.1, !llvm.loop !157

polly.loop_exit272.loopexit.us.1:                 ; preds = %polly.loop_header270.us.1, %middle.block1568
  %polly.access.add.Packed_MemRef_call2282.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us.2, %170
  %polly.access.Packed_MemRef_call2283.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us.2
  %_p_scalar_284.us.2 = load double, double* %polly.access.Packed_MemRef_call2283.us.2, align 8
  %polly.access.add.Packed_MemRef_call1290.us.2 = add nsw i64 %169, 2400
  %polly.access.Packed_MemRef_call1291.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us.2
  %_p_scalar_292.us.2 = load double, double* %polly.access.Packed_MemRef_call1291.us.2, align 8
  %min.iters.check1541 = icmp ult i64 %161, 4
  br i1 %min.iters.check1541, label %polly.loop_header270.us.2.preheader, label %vector.memcheck1525

vector.memcheck1525:                              ; preds = %polly.loop_exit272.loopexit.us.1
  %bound01533 = icmp ult i8* %scevgep1526, %scevgep1532
  %bound11534 = icmp ult i8* %scevgep1530, %scevgep1529
  %found.conflict1535 = and i1 %bound01533, %bound11534
  br i1 %found.conflict1535, label %polly.loop_header270.us.2.preheader, label %vector.ph1542

vector.ph1542:                                    ; preds = %vector.memcheck1525
  %n.vec1544 = and i64 %161, -4
  %broadcast.splatinsert1550 = insertelement <4 x double> poison, double %_p_scalar_284.us.2, i32 0
  %broadcast.splat1551 = shufflevector <4 x double> %broadcast.splatinsert1550, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1553 = insertelement <4 x double> poison, double %_p_scalar_292.us.2, i32 0
  %broadcast.splat1554 = shufflevector <4 x double> %broadcast.splatinsert1553, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1539

vector.body1539:                                  ; preds = %vector.body1539, %vector.ph1542
  %index1545 = phi i64 [ 0, %vector.ph1542 ], [ %index.next1546, %vector.body1539 ]
  %553 = add nuw nsw i64 %index1545, %143
  %554 = add nuw nsw i64 %index1545, 2400
  %555 = getelementptr double, double* %Packed_MemRef_call1, i64 %554
  %556 = bitcast double* %555 to <4 x double>*
  %wide.load1549 = load <4 x double>, <4 x double>* %556, align 8, !alias.scope !158
  %557 = fmul fast <4 x double> %broadcast.splat1551, %wide.load1549
  %558 = add nuw nsw i64 %553, %polly.access.mul.Packed_MemRef_call2281.us.2
  %559 = getelementptr double, double* %Packed_MemRef_call2, i64 %558
  %560 = bitcast double* %559 to <4 x double>*
  %wide.load1552 = load <4 x double>, <4 x double>* %560, align 8
  %561 = fmul fast <4 x double> %broadcast.splat1554, %wide.load1552
  %562 = shl i64 %553, 3
  %563 = add nuw nsw i64 %562, %173
  %564 = getelementptr i8, i8* %call, i64 %563
  %565 = bitcast i8* %564 to <4 x double>*
  %wide.load1555 = load <4 x double>, <4 x double>* %565, align 8, !alias.scope !161, !noalias !163
  %566 = fadd fast <4 x double> %561, %557
  %567 = fmul fast <4 x double> %566, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %568 = fadd fast <4 x double> %567, %wide.load1555
  %569 = bitcast i8* %564 to <4 x double>*
  store <4 x double> %568, <4 x double>* %569, align 8, !alias.scope !161, !noalias !163
  %index.next1546 = add i64 %index1545, 4
  %570 = icmp eq i64 %index.next1546, %n.vec1544
  br i1 %570, label %middle.block1537, label %vector.body1539, !llvm.loop !164

middle.block1537:                                 ; preds = %vector.body1539
  %cmp.n1548 = icmp eq i64 %161, %n.vec1544
  br i1 %cmp.n1548, label %polly.loop_exit272.loopexit.us.2, label %polly.loop_header270.us.2.preheader

polly.loop_header270.us.2.preheader:              ; preds = %vector.memcheck1525, %polly.loop_exit272.loopexit.us.1, %middle.block1537
  %polly.indvar274.us.2.ph = phi i64 [ 0, %vector.memcheck1525 ], [ 0, %polly.loop_exit272.loopexit.us.1 ], [ %n.vec1544, %middle.block1537 ]
  br label %polly.loop_header270.us.2

polly.loop_header270.us.2:                        ; preds = %polly.loop_header270.us.2.preheader, %polly.loop_header270.us.2
  %polly.indvar274.us.2 = phi i64 [ %polly.indvar_next275.us.2, %polly.loop_header270.us.2 ], [ %polly.indvar274.us.2.ph, %polly.loop_header270.us.2.preheader ]
  %571 = add nuw nsw i64 %polly.indvar274.us.2, %143
  %polly.access.add.Packed_MemRef_call1278.us.2 = add nuw nsw i64 %polly.indvar274.us.2, 2400
  %polly.access.Packed_MemRef_call1279.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us.2
  %_p_scalar_280.us.2 = load double, double* %polly.access.Packed_MemRef_call1279.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_284.us.2, %_p_scalar_280.us.2
  %polly.access.add.Packed_MemRef_call2286.us.2 = add nuw nsw i64 %571, %polly.access.mul.Packed_MemRef_call2281.us.2
  %polly.access.Packed_MemRef_call2287.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.2
  %_p_scalar_288.us.2 = load double, double* %polly.access.Packed_MemRef_call2287.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_292.us.2, %_p_scalar_288.us.2
  %572 = shl i64 %571, 3
  %573 = add nuw nsw i64 %572, %173
  %scevgep293.us.2 = getelementptr i8, i8* %call, i64 %573
  %scevgep293294.us.2 = bitcast i8* %scevgep293.us.2 to double*
  %_p_scalar_295.us.2 = load double, double* %scevgep293294.us.2, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_295.us.2
  store double %p_add42.i118.us.2, double* %scevgep293294.us.2, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next275.us.2 = add nuw nsw i64 %polly.indvar274.us.2, 1
  %exitcond1043.2.not = icmp eq i64 %polly.indvar274.us.2, %smin1042
  br i1 %exitcond1043.2.not, label %polly.loop_exit272.loopexit.us.2, label %polly.loop_header270.us.2, !llvm.loop !165

polly.loop_exit272.loopexit.us.2:                 ; preds = %polly.loop_header270.us.2, %middle.block1537
  %polly.access.add.Packed_MemRef_call2282.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us.3, %170
  %polly.access.Packed_MemRef_call2283.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us.3
  %_p_scalar_284.us.3 = load double, double* %polly.access.Packed_MemRef_call2283.us.3, align 8
  %polly.access.add.Packed_MemRef_call1290.us.3 = add nsw i64 %169, 3600
  %polly.access.Packed_MemRef_call1291.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us.3
  %_p_scalar_292.us.3 = load double, double* %polly.access.Packed_MemRef_call1291.us.3, align 8
  %min.iters.check1510 = icmp ult i64 %168, 4
  br i1 %min.iters.check1510, label %polly.loop_header270.us.3.preheader, label %vector.ph1511

vector.ph1511:                                    ; preds = %polly.loop_exit272.loopexit.us.2
  %n.vec1513 = and i64 %168, -4
  %broadcast.splatinsert1519 = insertelement <4 x double> poison, double %_p_scalar_284.us.3, i32 0
  %broadcast.splat1520 = shufflevector <4 x double> %broadcast.splatinsert1519, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1522 = insertelement <4 x double> poison, double %_p_scalar_292.us.3, i32 0
  %broadcast.splat1523 = shufflevector <4 x double> %broadcast.splatinsert1522, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1508

vector.body1508:                                  ; preds = %vector.body1508, %vector.ph1511
  %index1514 = phi i64 [ 0, %vector.ph1511 ], [ %index.next1515, %vector.body1508 ]
  %574 = add nuw nsw i64 %index1514, %143
  %575 = add nuw nsw i64 %index1514, 3600
  %576 = getelementptr double, double* %Packed_MemRef_call1, i64 %575
  %577 = bitcast double* %576 to <4 x double>*
  %wide.load1518 = load <4 x double>, <4 x double>* %577, align 8
  %578 = fmul fast <4 x double> %broadcast.splat1520, %wide.load1518
  %579 = add nuw nsw i64 %574, %polly.access.mul.Packed_MemRef_call2281.us.3
  %580 = getelementptr double, double* %Packed_MemRef_call2, i64 %579
  %581 = bitcast double* %580 to <4 x double>*
  %wide.load1521 = load <4 x double>, <4 x double>* %581, align 8
  %582 = fmul fast <4 x double> %broadcast.splat1523, %wide.load1521
  %583 = shl i64 %574, 3
  %584 = add nuw nsw i64 %583, %173
  %585 = getelementptr i8, i8* %call, i64 %584
  %586 = bitcast i8* %585 to <4 x double>*
  %wide.load1524 = load <4 x double>, <4 x double>* %586, align 8, !alias.scope !65, !noalias !67
  %587 = fadd fast <4 x double> %582, %578
  %588 = fmul fast <4 x double> %587, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %589 = fadd fast <4 x double> %588, %wide.load1524
  %590 = bitcast i8* %585 to <4 x double>*
  store <4 x double> %589, <4 x double>* %590, align 8, !alias.scope !65, !noalias !67
  %index.next1515 = add i64 %index1514, 4
  %591 = icmp eq i64 %index.next1515, %n.vec1513
  br i1 %591, label %middle.block1506, label %vector.body1508, !llvm.loop !166

middle.block1506:                                 ; preds = %vector.body1508
  %cmp.n1517 = icmp eq i64 %168, %n.vec1513
  br i1 %cmp.n1517, label %polly.loop_exit265, label %polly.loop_header270.us.3.preheader

polly.loop_header270.us.3.preheader:              ; preds = %polly.loop_exit272.loopexit.us.2, %middle.block1506
  %polly.indvar274.us.3.ph = phi i64 [ 0, %polly.loop_exit272.loopexit.us.2 ], [ %n.vec1513, %middle.block1506 ]
  br label %polly.loop_header270.us.3

polly.loop_header270.us.3:                        ; preds = %polly.loop_header270.us.3.preheader, %polly.loop_header270.us.3
  %polly.indvar274.us.3 = phi i64 [ %polly.indvar_next275.us.3, %polly.loop_header270.us.3 ], [ %polly.indvar274.us.3.ph, %polly.loop_header270.us.3.preheader ]
  %592 = add nuw nsw i64 %polly.indvar274.us.3, %143
  %polly.access.add.Packed_MemRef_call1278.us.3 = add nuw nsw i64 %polly.indvar274.us.3, 3600
  %polly.access.Packed_MemRef_call1279.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us.3
  %_p_scalar_280.us.3 = load double, double* %polly.access.Packed_MemRef_call1279.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_284.us.3, %_p_scalar_280.us.3
  %polly.access.add.Packed_MemRef_call2286.us.3 = add nuw nsw i64 %592, %polly.access.mul.Packed_MemRef_call2281.us.3
  %polly.access.Packed_MemRef_call2287.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.3
  %_p_scalar_288.us.3 = load double, double* %polly.access.Packed_MemRef_call2287.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_292.us.3, %_p_scalar_288.us.3
  %593 = shl i64 %592, 3
  %594 = add nuw nsw i64 %593, %173
  %scevgep293.us.3 = getelementptr i8, i8* %call, i64 %594
  %scevgep293294.us.3 = bitcast i8* %scevgep293.us.3 to double*
  %_p_scalar_295.us.3 = load double, double* %scevgep293294.us.3, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_295.us.3
  store double %p_add42.i118.us.3, double* %scevgep293294.us.3, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next275.us.3 = add nuw nsw i64 %polly.indvar274.us.3, 1
  %exitcond1043.3.not = icmp eq i64 %polly.indvar274.us.3, %smin1042
  br i1 %exitcond1043.3.not, label %polly.loop_exit265, label %polly.loop_header270.us.3, !llvm.loop !167

polly.loop_header450.us.1:                        ; preds = %polly.loop_header450.us.1.preheader, %polly.loop_header450.us.1
  %polly.indvar454.us.1 = phi i64 [ %polly.indvar_next455.us.1, %polly.loop_header450.us.1 ], [ 0, %polly.loop_header450.us.1.preheader ]
  %595 = add nuw nsw i64 %polly.indvar454.us.1, %267
  %polly.access.mul.call1458.us.1 = mul nuw nsw i64 %595, 1000
  %polly.access.add.call1459.us.1 = add nuw nsw i64 %238, %polly.access.mul.call1458.us.1
  %polly.access.call1460.us.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1459.us.1
  %polly.access.call1460.load.us.1 = load double, double* %polly.access.call1460.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1301.us.1 = add nuw nsw i64 %polly.indvar454.us.1, 1200
  %polly.access.Packed_MemRef_call1301.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.1
  store double %polly.access.call1460.load.us.1, double* %polly.access.Packed_MemRef_call1301.us.1, align 8
  %polly.indvar_next455.us.1 = add nuw nsw i64 %polly.indvar454.us.1, 1
  %exitcond1064.1.not = icmp eq i64 %polly.indvar454.us.1, %smin1066
  br i1 %exitcond1064.1.not, label %polly.cond461.loopexit.us.1, label %polly.loop_header450.us.1

polly.cond461.loopexit.us.1:                      ; preds = %polly.loop_header450.us.1
  br i1 %.not920, label %polly.loop_header450.us.2.preheader, label %polly.then463.us.1

polly.then463.us.1:                               ; preds = %polly.cond461.loopexit.us.1
  %polly.access.add.call1467.us.1 = or i64 %295, 1
  %polly.access.call1468.us.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.us.1
  %polly.access.call1468.load.us.1 = load double, double* %polly.access.call1468.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1301470.us.1 = add nsw i64 %293, 1200
  %polly.access.Packed_MemRef_call1301471.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.us.1
  store double %polly.access.call1468.load.us.1, double* %polly.access.Packed_MemRef_call1301471.us.1, align 8
  br label %polly.loop_header450.us.2.preheader

polly.loop_header450.us.2.preheader:              ; preds = %polly.then463.us.1, %polly.cond461.loopexit.us.1
  br label %polly.loop_header450.us.2

polly.loop_header450.us.2:                        ; preds = %polly.loop_header450.us.2.preheader, %polly.loop_header450.us.2
  %polly.indvar454.us.2 = phi i64 [ %polly.indvar_next455.us.2, %polly.loop_header450.us.2 ], [ 0, %polly.loop_header450.us.2.preheader ]
  %596 = add nuw nsw i64 %polly.indvar454.us.2, %267
  %polly.access.mul.call1458.us.2 = mul nuw nsw i64 %596, 1000
  %polly.access.add.call1459.us.2 = add nuw nsw i64 %239, %polly.access.mul.call1458.us.2
  %polly.access.call1460.us.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1459.us.2
  %polly.access.call1460.load.us.2 = load double, double* %polly.access.call1460.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1301.us.2 = add nuw nsw i64 %polly.indvar454.us.2, 2400
  %polly.access.Packed_MemRef_call1301.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.2
  store double %polly.access.call1460.load.us.2, double* %polly.access.Packed_MemRef_call1301.us.2, align 8
  %polly.indvar_next455.us.2 = add nuw nsw i64 %polly.indvar454.us.2, 1
  %exitcond1064.2.not = icmp eq i64 %polly.indvar454.us.2, %smin1066
  br i1 %exitcond1064.2.not, label %polly.cond461.loopexit.us.2, label %polly.loop_header450.us.2

polly.cond461.loopexit.us.2:                      ; preds = %polly.loop_header450.us.2
  br i1 %.not920, label %polly.loop_header450.us.3.preheader, label %polly.then463.us.2

polly.then463.us.2:                               ; preds = %polly.cond461.loopexit.us.2
  %polly.access.add.call1467.us.2 = or i64 %295, 2
  %polly.access.call1468.us.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.us.2
  %polly.access.call1468.load.us.2 = load double, double* %polly.access.call1468.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1301470.us.2 = add nsw i64 %293, 2400
  %polly.access.Packed_MemRef_call1301471.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.us.2
  store double %polly.access.call1468.load.us.2, double* %polly.access.Packed_MemRef_call1301471.us.2, align 8
  br label %polly.loop_header450.us.3.preheader

polly.loop_header450.us.3.preheader:              ; preds = %polly.then463.us.2, %polly.cond461.loopexit.us.2
  br label %polly.loop_header450.us.3

polly.loop_header450.us.3:                        ; preds = %polly.loop_header450.us.3.preheader, %polly.loop_header450.us.3
  %polly.indvar454.us.3 = phi i64 [ %polly.indvar_next455.us.3, %polly.loop_header450.us.3 ], [ 0, %polly.loop_header450.us.3.preheader ]
  %597 = add nuw nsw i64 %polly.indvar454.us.3, %267
  %polly.access.mul.call1458.us.3 = mul nuw nsw i64 %597, 1000
  %polly.access.add.call1459.us.3 = add nuw nsw i64 %240, %polly.access.mul.call1458.us.3
  %polly.access.call1460.us.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1459.us.3
  %polly.access.call1460.load.us.3 = load double, double* %polly.access.call1460.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1301.us.3 = add nuw nsw i64 %polly.indvar454.us.3, 3600
  %polly.access.Packed_MemRef_call1301.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us.3
  store double %polly.access.call1460.load.us.3, double* %polly.access.Packed_MemRef_call1301.us.3, align 8
  %polly.indvar_next455.us.3 = add nuw nsw i64 %polly.indvar454.us.3, 1
  %exitcond1064.3.not = icmp eq i64 %polly.indvar454.us.3, %smin1066
  br i1 %exitcond1064.3.not, label %polly.cond461.loopexit.us.3, label %polly.loop_header450.us.3

polly.cond461.loopexit.us.3:                      ; preds = %polly.loop_header450.us.3
  br i1 %.not920, label %polly.loop_header472.preheader, label %polly.then463.us.3

polly.then463.us.3:                               ; preds = %polly.cond461.loopexit.us.3
  %polly.access.add.call1467.us.3 = or i64 %295, 3
  %polly.access.call1468.us.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.us.3
  %polly.access.call1468.load.us.3 = load double, double* %polly.access.call1468.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1301470.us.3 = add nsw i64 %293, 3600
  %polly.access.Packed_MemRef_call1301471.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.us.3
  store double %polly.access.call1468.load.us.3, double* %polly.access.Packed_MemRef_call1301471.us.3, align 8
  br label %polly.loop_header472.preheader

polly.loop_header479.us.1:                        ; preds = %polly.loop_header479.us.1.preheader, %polly.loop_header479.us.1
  %polly.indvar483.us.1 = phi i64 [ %polly.indvar_next484.us.1, %polly.loop_header479.us.1 ], [ %polly.indvar483.us.1.ph, %polly.loop_header479.us.1.preheader ]
  %598 = add nuw nsw i64 %polly.indvar483.us.1, %267
  %polly.access.add.Packed_MemRef_call1301487.us.1 = add nuw nsw i64 %polly.indvar483.us.1, 1200
  %polly.access.Packed_MemRef_call1301488.us.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301487.us.1
  %_p_scalar_489.us.1 = load double, double* %polly.access.Packed_MemRef_call1301488.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_493.us.1, %_p_scalar_489.us.1
  %polly.access.add.Packed_MemRef_call2303495.us.1 = add nuw nsw i64 %598, %polly.access.mul.Packed_MemRef_call2303490.us.1
  %polly.access.Packed_MemRef_call2303496.us.1 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303495.us.1
  %_p_scalar_497.us.1 = load double, double* %polly.access.Packed_MemRef_call2303496.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_501.us.1, %_p_scalar_497.us.1
  %599 = shl i64 %598, 3
  %600 = add nuw nsw i64 %599, %297
  %scevgep502.us.1 = getelementptr i8, i8* %call, i64 %600
  %scevgep502503.us.1 = bitcast i8* %scevgep502.us.1 to double*
  %_p_scalar_504.us.1 = load double, double* %scevgep502503.us.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_504.us.1
  store double %p_add42.i79.us.1, double* %scevgep502503.us.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next484.us.1 = add nuw nsw i64 %polly.indvar483.us.1, 1
  %exitcond1067.1.not = icmp eq i64 %polly.indvar483.us.1, %smin1066
  br i1 %exitcond1067.1.not, label %polly.loop_exit481.loopexit.us.1, label %polly.loop_header479.us.1, !llvm.loop !168

polly.loop_exit481.loopexit.us.1:                 ; preds = %polly.loop_header479.us.1, %middle.block1431
  %polly.access.add.Packed_MemRef_call2303491.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303490.us.2, %294
  %polly.access.Packed_MemRef_call2303492.us.2 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303491.us.2
  %_p_scalar_493.us.2 = load double, double* %polly.access.Packed_MemRef_call2303492.us.2, align 8
  %polly.access.add.Packed_MemRef_call1301499.us.2 = add nsw i64 %293, 2400
  %polly.access.Packed_MemRef_call1301500.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301499.us.2
  %_p_scalar_501.us.2 = load double, double* %polly.access.Packed_MemRef_call1301500.us.2, align 8
  %min.iters.check1404 = icmp ult i64 %285, 4
  br i1 %min.iters.check1404, label %polly.loop_header479.us.2.preheader, label %vector.memcheck1388

vector.memcheck1388:                              ; preds = %polly.loop_exit481.loopexit.us.1
  %bound01396 = icmp ult i8* %scevgep1389, %scevgep1395
  %bound11397 = icmp ult i8* %scevgep1393, %scevgep1392
  %found.conflict1398 = and i1 %bound01396, %bound11397
  br i1 %found.conflict1398, label %polly.loop_header479.us.2.preheader, label %vector.ph1405

vector.ph1405:                                    ; preds = %vector.memcheck1388
  %n.vec1407 = and i64 %285, -4
  %broadcast.splatinsert1413 = insertelement <4 x double> poison, double %_p_scalar_493.us.2, i32 0
  %broadcast.splat1414 = shufflevector <4 x double> %broadcast.splatinsert1413, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1416 = insertelement <4 x double> poison, double %_p_scalar_501.us.2, i32 0
  %broadcast.splat1417 = shufflevector <4 x double> %broadcast.splatinsert1416, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1402

vector.body1402:                                  ; preds = %vector.body1402, %vector.ph1405
  %index1408 = phi i64 [ 0, %vector.ph1405 ], [ %index.next1409, %vector.body1402 ]
  %601 = add nuw nsw i64 %index1408, %267
  %602 = add nuw nsw i64 %index1408, 2400
  %603 = getelementptr double, double* %Packed_MemRef_call1301, i64 %602
  %604 = bitcast double* %603 to <4 x double>*
  %wide.load1412 = load <4 x double>, <4 x double>* %604, align 8, !alias.scope !169
  %605 = fmul fast <4 x double> %broadcast.splat1414, %wide.load1412
  %606 = add nuw nsw i64 %601, %polly.access.mul.Packed_MemRef_call2303490.us.2
  %607 = getelementptr double, double* %Packed_MemRef_call2303, i64 %606
  %608 = bitcast double* %607 to <4 x double>*
  %wide.load1415 = load <4 x double>, <4 x double>* %608, align 8
  %609 = fmul fast <4 x double> %broadcast.splat1417, %wide.load1415
  %610 = shl i64 %601, 3
  %611 = add nuw nsw i64 %610, %297
  %612 = getelementptr i8, i8* %call, i64 %611
  %613 = bitcast i8* %612 to <4 x double>*
  %wide.load1418 = load <4 x double>, <4 x double>* %613, align 8, !alias.scope !172, !noalias !174
  %614 = fadd fast <4 x double> %609, %605
  %615 = fmul fast <4 x double> %614, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %616 = fadd fast <4 x double> %615, %wide.load1418
  %617 = bitcast i8* %612 to <4 x double>*
  store <4 x double> %616, <4 x double>* %617, align 8, !alias.scope !172, !noalias !174
  %index.next1409 = add i64 %index1408, 4
  %618 = icmp eq i64 %index.next1409, %n.vec1407
  br i1 %618, label %middle.block1400, label %vector.body1402, !llvm.loop !175

middle.block1400:                                 ; preds = %vector.body1402
  %cmp.n1411 = icmp eq i64 %285, %n.vec1407
  br i1 %cmp.n1411, label %polly.loop_exit481.loopexit.us.2, label %polly.loop_header479.us.2.preheader

polly.loop_header479.us.2.preheader:              ; preds = %vector.memcheck1388, %polly.loop_exit481.loopexit.us.1, %middle.block1400
  %polly.indvar483.us.2.ph = phi i64 [ 0, %vector.memcheck1388 ], [ 0, %polly.loop_exit481.loopexit.us.1 ], [ %n.vec1407, %middle.block1400 ]
  br label %polly.loop_header479.us.2

polly.loop_header479.us.2:                        ; preds = %polly.loop_header479.us.2.preheader, %polly.loop_header479.us.2
  %polly.indvar483.us.2 = phi i64 [ %polly.indvar_next484.us.2, %polly.loop_header479.us.2 ], [ %polly.indvar483.us.2.ph, %polly.loop_header479.us.2.preheader ]
  %619 = add nuw nsw i64 %polly.indvar483.us.2, %267
  %polly.access.add.Packed_MemRef_call1301487.us.2 = add nuw nsw i64 %polly.indvar483.us.2, 2400
  %polly.access.Packed_MemRef_call1301488.us.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301487.us.2
  %_p_scalar_489.us.2 = load double, double* %polly.access.Packed_MemRef_call1301488.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_493.us.2, %_p_scalar_489.us.2
  %polly.access.add.Packed_MemRef_call2303495.us.2 = add nuw nsw i64 %619, %polly.access.mul.Packed_MemRef_call2303490.us.2
  %polly.access.Packed_MemRef_call2303496.us.2 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303495.us.2
  %_p_scalar_497.us.2 = load double, double* %polly.access.Packed_MemRef_call2303496.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_501.us.2, %_p_scalar_497.us.2
  %620 = shl i64 %619, 3
  %621 = add nuw nsw i64 %620, %297
  %scevgep502.us.2 = getelementptr i8, i8* %call, i64 %621
  %scevgep502503.us.2 = bitcast i8* %scevgep502.us.2 to double*
  %_p_scalar_504.us.2 = load double, double* %scevgep502503.us.2, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_504.us.2
  store double %p_add42.i79.us.2, double* %scevgep502503.us.2, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next484.us.2 = add nuw nsw i64 %polly.indvar483.us.2, 1
  %exitcond1067.2.not = icmp eq i64 %polly.indvar483.us.2, %smin1066
  br i1 %exitcond1067.2.not, label %polly.loop_exit481.loopexit.us.2, label %polly.loop_header479.us.2, !llvm.loop !176

polly.loop_exit481.loopexit.us.2:                 ; preds = %polly.loop_header479.us.2, %middle.block1400
  %polly.access.add.Packed_MemRef_call2303491.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303490.us.3, %294
  %polly.access.Packed_MemRef_call2303492.us.3 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303491.us.3
  %_p_scalar_493.us.3 = load double, double* %polly.access.Packed_MemRef_call2303492.us.3, align 8
  %polly.access.add.Packed_MemRef_call1301499.us.3 = add nsw i64 %293, 3600
  %polly.access.Packed_MemRef_call1301500.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301499.us.3
  %_p_scalar_501.us.3 = load double, double* %polly.access.Packed_MemRef_call1301500.us.3, align 8
  %min.iters.check1373 = icmp ult i64 %292, 4
  br i1 %min.iters.check1373, label %polly.loop_header479.us.3.preheader, label %vector.ph1374

vector.ph1374:                                    ; preds = %polly.loop_exit481.loopexit.us.2
  %n.vec1376 = and i64 %292, -4
  %broadcast.splatinsert1382 = insertelement <4 x double> poison, double %_p_scalar_493.us.3, i32 0
  %broadcast.splat1383 = shufflevector <4 x double> %broadcast.splatinsert1382, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1385 = insertelement <4 x double> poison, double %_p_scalar_501.us.3, i32 0
  %broadcast.splat1386 = shufflevector <4 x double> %broadcast.splatinsert1385, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1371

vector.body1371:                                  ; preds = %vector.body1371, %vector.ph1374
  %index1377 = phi i64 [ 0, %vector.ph1374 ], [ %index.next1378, %vector.body1371 ]
  %622 = add nuw nsw i64 %index1377, %267
  %623 = add nuw nsw i64 %index1377, 3600
  %624 = getelementptr double, double* %Packed_MemRef_call1301, i64 %623
  %625 = bitcast double* %624 to <4 x double>*
  %wide.load1381 = load <4 x double>, <4 x double>* %625, align 8
  %626 = fmul fast <4 x double> %broadcast.splat1383, %wide.load1381
  %627 = add nuw nsw i64 %622, %polly.access.mul.Packed_MemRef_call2303490.us.3
  %628 = getelementptr double, double* %Packed_MemRef_call2303, i64 %627
  %629 = bitcast double* %628 to <4 x double>*
  %wide.load1384 = load <4 x double>, <4 x double>* %629, align 8
  %630 = fmul fast <4 x double> %broadcast.splat1386, %wide.load1384
  %631 = shl i64 %622, 3
  %632 = add nuw nsw i64 %631, %297
  %633 = getelementptr i8, i8* %call, i64 %632
  %634 = bitcast i8* %633 to <4 x double>*
  %wide.load1387 = load <4 x double>, <4 x double>* %634, align 8, !alias.scope !92, !noalias !94
  %635 = fadd fast <4 x double> %630, %626
  %636 = fmul fast <4 x double> %635, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %637 = fadd fast <4 x double> %636, %wide.load1387
  %638 = bitcast i8* %633 to <4 x double>*
  store <4 x double> %637, <4 x double>* %638, align 8, !alias.scope !92, !noalias !94
  %index.next1378 = add i64 %index1377, 4
  %639 = icmp eq i64 %index.next1378, %n.vec1376
  br i1 %639, label %middle.block1369, label %vector.body1371, !llvm.loop !177

middle.block1369:                                 ; preds = %vector.body1371
  %cmp.n1380 = icmp eq i64 %292, %n.vec1376
  br i1 %cmp.n1380, label %polly.loop_exit474, label %polly.loop_header479.us.3.preheader

polly.loop_header479.us.3.preheader:              ; preds = %polly.loop_exit481.loopexit.us.2, %middle.block1369
  %polly.indvar483.us.3.ph = phi i64 [ 0, %polly.loop_exit481.loopexit.us.2 ], [ %n.vec1376, %middle.block1369 ]
  br label %polly.loop_header479.us.3

polly.loop_header479.us.3:                        ; preds = %polly.loop_header479.us.3.preheader, %polly.loop_header479.us.3
  %polly.indvar483.us.3 = phi i64 [ %polly.indvar_next484.us.3, %polly.loop_header479.us.3 ], [ %polly.indvar483.us.3.ph, %polly.loop_header479.us.3.preheader ]
  %640 = add nuw nsw i64 %polly.indvar483.us.3, %267
  %polly.access.add.Packed_MemRef_call1301487.us.3 = add nuw nsw i64 %polly.indvar483.us.3, 3600
  %polly.access.Packed_MemRef_call1301488.us.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301487.us.3
  %_p_scalar_489.us.3 = load double, double* %polly.access.Packed_MemRef_call1301488.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_493.us.3, %_p_scalar_489.us.3
  %polly.access.add.Packed_MemRef_call2303495.us.3 = add nuw nsw i64 %640, %polly.access.mul.Packed_MemRef_call2303490.us.3
  %polly.access.Packed_MemRef_call2303496.us.3 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303495.us.3
  %_p_scalar_497.us.3 = load double, double* %polly.access.Packed_MemRef_call2303496.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_501.us.3, %_p_scalar_497.us.3
  %641 = shl i64 %640, 3
  %642 = add nuw nsw i64 %641, %297
  %scevgep502.us.3 = getelementptr i8, i8* %call, i64 %642
  %scevgep502503.us.3 = bitcast i8* %scevgep502.us.3 to double*
  %_p_scalar_504.us.3 = load double, double* %scevgep502503.us.3, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_504.us.3
  store double %p_add42.i79.us.3, double* %scevgep502503.us.3, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next484.us.3 = add nuw nsw i64 %polly.indvar483.us.3, 1
  %exitcond1067.3.not = icmp eq i64 %polly.indvar483.us.3, %smin1066
  br i1 %exitcond1067.3.not, label %polly.loop_exit474, label %polly.loop_header479.us.3, !llvm.loop !178

polly.loop_header659.us.1:                        ; preds = %polly.loop_header659.us.1.preheader, %polly.loop_header659.us.1
  %polly.indvar663.us.1 = phi i64 [ %polly.indvar_next664.us.1, %polly.loop_header659.us.1 ], [ 0, %polly.loop_header659.us.1.preheader ]
  %643 = add nuw nsw i64 %polly.indvar663.us.1, %391
  %polly.access.mul.call1667.us.1 = mul nuw nsw i64 %643, 1000
  %polly.access.add.call1668.us.1 = add nuw nsw i64 %362, %polly.access.mul.call1667.us.1
  %polly.access.call1669.us.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1668.us.1
  %polly.access.call1669.load.us.1 = load double, double* %polly.access.call1669.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1510.us.1 = add nuw nsw i64 %polly.indvar663.us.1, 1200
  %polly.access.Packed_MemRef_call1510.us.1 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510.us.1
  store double %polly.access.call1669.load.us.1, double* %polly.access.Packed_MemRef_call1510.us.1, align 8
  %polly.indvar_next664.us.1 = add nuw nsw i64 %polly.indvar663.us.1, 1
  %exitcond1088.1.not = icmp eq i64 %polly.indvar663.us.1, %smin1090
  br i1 %exitcond1088.1.not, label %polly.cond670.loopexit.us.1, label %polly.loop_header659.us.1

polly.cond670.loopexit.us.1:                      ; preds = %polly.loop_header659.us.1
  br i1 %.not921, label %polly.loop_header659.us.2.preheader, label %polly.then672.us.1

polly.then672.us.1:                               ; preds = %polly.cond670.loopexit.us.1
  %polly.access.add.call1676.us.1 = or i64 %419, 1
  %polly.access.call1677.us.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.us.1
  %polly.access.call1677.load.us.1 = load double, double* %polly.access.call1677.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1510679.us.1 = add nsw i64 %417, 1200
  %polly.access.Packed_MemRef_call1510680.us.1 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.us.1
  store double %polly.access.call1677.load.us.1, double* %polly.access.Packed_MemRef_call1510680.us.1, align 8
  br label %polly.loop_header659.us.2.preheader

polly.loop_header659.us.2.preheader:              ; preds = %polly.then672.us.1, %polly.cond670.loopexit.us.1
  br label %polly.loop_header659.us.2

polly.loop_header659.us.2:                        ; preds = %polly.loop_header659.us.2.preheader, %polly.loop_header659.us.2
  %polly.indvar663.us.2 = phi i64 [ %polly.indvar_next664.us.2, %polly.loop_header659.us.2 ], [ 0, %polly.loop_header659.us.2.preheader ]
  %644 = add nuw nsw i64 %polly.indvar663.us.2, %391
  %polly.access.mul.call1667.us.2 = mul nuw nsw i64 %644, 1000
  %polly.access.add.call1668.us.2 = add nuw nsw i64 %363, %polly.access.mul.call1667.us.2
  %polly.access.call1669.us.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1668.us.2
  %polly.access.call1669.load.us.2 = load double, double* %polly.access.call1669.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1510.us.2 = add nuw nsw i64 %polly.indvar663.us.2, 2400
  %polly.access.Packed_MemRef_call1510.us.2 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510.us.2
  store double %polly.access.call1669.load.us.2, double* %polly.access.Packed_MemRef_call1510.us.2, align 8
  %polly.indvar_next664.us.2 = add nuw nsw i64 %polly.indvar663.us.2, 1
  %exitcond1088.2.not = icmp eq i64 %polly.indvar663.us.2, %smin1090
  br i1 %exitcond1088.2.not, label %polly.cond670.loopexit.us.2, label %polly.loop_header659.us.2

polly.cond670.loopexit.us.2:                      ; preds = %polly.loop_header659.us.2
  br i1 %.not921, label %polly.loop_header659.us.3.preheader, label %polly.then672.us.2

polly.then672.us.2:                               ; preds = %polly.cond670.loopexit.us.2
  %polly.access.add.call1676.us.2 = or i64 %419, 2
  %polly.access.call1677.us.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.us.2
  %polly.access.call1677.load.us.2 = load double, double* %polly.access.call1677.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1510679.us.2 = add nsw i64 %417, 2400
  %polly.access.Packed_MemRef_call1510680.us.2 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.us.2
  store double %polly.access.call1677.load.us.2, double* %polly.access.Packed_MemRef_call1510680.us.2, align 8
  br label %polly.loop_header659.us.3.preheader

polly.loop_header659.us.3.preheader:              ; preds = %polly.then672.us.2, %polly.cond670.loopexit.us.2
  br label %polly.loop_header659.us.3

polly.loop_header659.us.3:                        ; preds = %polly.loop_header659.us.3.preheader, %polly.loop_header659.us.3
  %polly.indvar663.us.3 = phi i64 [ %polly.indvar_next664.us.3, %polly.loop_header659.us.3 ], [ 0, %polly.loop_header659.us.3.preheader ]
  %645 = add nuw nsw i64 %polly.indvar663.us.3, %391
  %polly.access.mul.call1667.us.3 = mul nuw nsw i64 %645, 1000
  %polly.access.add.call1668.us.3 = add nuw nsw i64 %364, %polly.access.mul.call1667.us.3
  %polly.access.call1669.us.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1668.us.3
  %polly.access.call1669.load.us.3 = load double, double* %polly.access.call1669.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1510.us.3 = add nuw nsw i64 %polly.indvar663.us.3, 3600
  %polly.access.Packed_MemRef_call1510.us.3 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510.us.3
  store double %polly.access.call1669.load.us.3, double* %polly.access.Packed_MemRef_call1510.us.3, align 8
  %polly.indvar_next664.us.3 = add nuw nsw i64 %polly.indvar663.us.3, 1
  %exitcond1088.3.not = icmp eq i64 %polly.indvar663.us.3, %smin1090
  br i1 %exitcond1088.3.not, label %polly.cond670.loopexit.us.3, label %polly.loop_header659.us.3

polly.cond670.loopexit.us.3:                      ; preds = %polly.loop_header659.us.3
  br i1 %.not921, label %polly.loop_header681.preheader, label %polly.then672.us.3

polly.then672.us.3:                               ; preds = %polly.cond670.loopexit.us.3
  %polly.access.add.call1676.us.3 = or i64 %419, 3
  %polly.access.call1677.us.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.us.3
  %polly.access.call1677.load.us.3 = load double, double* %polly.access.call1677.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1510679.us.3 = add nsw i64 %417, 3600
  %polly.access.Packed_MemRef_call1510680.us.3 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.us.3
  store double %polly.access.call1677.load.us.3, double* %polly.access.Packed_MemRef_call1510680.us.3, align 8
  br label %polly.loop_header681.preheader

polly.loop_header688.us.1:                        ; preds = %polly.loop_header688.us.1.preheader, %polly.loop_header688.us.1
  %polly.indvar692.us.1 = phi i64 [ %polly.indvar_next693.us.1, %polly.loop_header688.us.1 ], [ %polly.indvar692.us.1.ph, %polly.loop_header688.us.1.preheader ]
  %646 = add nuw nsw i64 %polly.indvar692.us.1, %391
  %polly.access.add.Packed_MemRef_call1510696.us.1 = add nuw nsw i64 %polly.indvar692.us.1, 1200
  %polly.access.Packed_MemRef_call1510697.us.1 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510696.us.1
  %_p_scalar_698.us.1 = load double, double* %polly.access.Packed_MemRef_call1510697.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_702.us.1, %_p_scalar_698.us.1
  %polly.access.add.Packed_MemRef_call2512704.us.1 = add nuw nsw i64 %646, %polly.access.mul.Packed_MemRef_call2512699.us.1
  %polly.access.Packed_MemRef_call2512705.us.1 = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512704.us.1
  %_p_scalar_706.us.1 = load double, double* %polly.access.Packed_MemRef_call2512705.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_710.us.1, %_p_scalar_706.us.1
  %647 = shl i64 %646, 3
  %648 = add nuw nsw i64 %647, %421
  %scevgep711.us.1 = getelementptr i8, i8* %call, i64 %648
  %scevgep711712.us.1 = bitcast i8* %scevgep711.us.1 to double*
  %_p_scalar_713.us.1 = load double, double* %scevgep711712.us.1, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_713.us.1
  store double %p_add42.i.us.1, double* %scevgep711712.us.1, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next693.us.1 = add nuw nsw i64 %polly.indvar692.us.1, 1
  %exitcond1091.1.not = icmp eq i64 %polly.indvar692.us.1, %smin1090
  br i1 %exitcond1091.1.not, label %polly.loop_exit690.loopexit.us.1, label %polly.loop_header688.us.1, !llvm.loop !179

polly.loop_exit690.loopexit.us.1:                 ; preds = %polly.loop_header688.us.1, %middle.block1294
  %polly.access.add.Packed_MemRef_call2512700.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2512699.us.2, %418
  %polly.access.Packed_MemRef_call2512701.us.2 = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512700.us.2
  %_p_scalar_702.us.2 = load double, double* %polly.access.Packed_MemRef_call2512701.us.2, align 8
  %polly.access.add.Packed_MemRef_call1510708.us.2 = add nsw i64 %417, 2400
  %polly.access.Packed_MemRef_call1510709.us.2 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510708.us.2
  %_p_scalar_710.us.2 = load double, double* %polly.access.Packed_MemRef_call1510709.us.2, align 8
  %min.iters.check1267 = icmp ult i64 %409, 4
  br i1 %min.iters.check1267, label %polly.loop_header688.us.2.preheader, label %vector.memcheck1251

vector.memcheck1251:                              ; preds = %polly.loop_exit690.loopexit.us.1
  %bound01259 = icmp ult i8* %scevgep1252, %scevgep1258
  %bound11260 = icmp ult i8* %scevgep1256, %scevgep1255
  %found.conflict1261 = and i1 %bound01259, %bound11260
  br i1 %found.conflict1261, label %polly.loop_header688.us.2.preheader, label %vector.ph1268

vector.ph1268:                                    ; preds = %vector.memcheck1251
  %n.vec1270 = and i64 %409, -4
  %broadcast.splatinsert1276 = insertelement <4 x double> poison, double %_p_scalar_702.us.2, i32 0
  %broadcast.splat1277 = shufflevector <4 x double> %broadcast.splatinsert1276, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1279 = insertelement <4 x double> poison, double %_p_scalar_710.us.2, i32 0
  %broadcast.splat1280 = shufflevector <4 x double> %broadcast.splatinsert1279, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1265

vector.body1265:                                  ; preds = %vector.body1265, %vector.ph1268
  %index1271 = phi i64 [ 0, %vector.ph1268 ], [ %index.next1272, %vector.body1265 ]
  %649 = add nuw nsw i64 %index1271, %391
  %650 = add nuw nsw i64 %index1271, 2400
  %651 = getelementptr double, double* %Packed_MemRef_call1510, i64 %650
  %652 = bitcast double* %651 to <4 x double>*
  %wide.load1275 = load <4 x double>, <4 x double>* %652, align 8, !alias.scope !180
  %653 = fmul fast <4 x double> %broadcast.splat1277, %wide.load1275
  %654 = add nuw nsw i64 %649, %polly.access.mul.Packed_MemRef_call2512699.us.2
  %655 = getelementptr double, double* %Packed_MemRef_call2512, i64 %654
  %656 = bitcast double* %655 to <4 x double>*
  %wide.load1278 = load <4 x double>, <4 x double>* %656, align 8
  %657 = fmul fast <4 x double> %broadcast.splat1280, %wide.load1278
  %658 = shl i64 %649, 3
  %659 = add nuw nsw i64 %658, %421
  %660 = getelementptr i8, i8* %call, i64 %659
  %661 = bitcast i8* %660 to <4 x double>*
  %wide.load1281 = load <4 x double>, <4 x double>* %661, align 8, !alias.scope !183, !noalias !185
  %662 = fadd fast <4 x double> %657, %653
  %663 = fmul fast <4 x double> %662, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %664 = fadd fast <4 x double> %663, %wide.load1281
  %665 = bitcast i8* %660 to <4 x double>*
  store <4 x double> %664, <4 x double>* %665, align 8, !alias.scope !183, !noalias !185
  %index.next1272 = add i64 %index1271, 4
  %666 = icmp eq i64 %index.next1272, %n.vec1270
  br i1 %666, label %middle.block1263, label %vector.body1265, !llvm.loop !186

middle.block1263:                                 ; preds = %vector.body1265
  %cmp.n1274 = icmp eq i64 %409, %n.vec1270
  br i1 %cmp.n1274, label %polly.loop_exit690.loopexit.us.2, label %polly.loop_header688.us.2.preheader

polly.loop_header688.us.2.preheader:              ; preds = %vector.memcheck1251, %polly.loop_exit690.loopexit.us.1, %middle.block1263
  %polly.indvar692.us.2.ph = phi i64 [ 0, %vector.memcheck1251 ], [ 0, %polly.loop_exit690.loopexit.us.1 ], [ %n.vec1270, %middle.block1263 ]
  br label %polly.loop_header688.us.2

polly.loop_header688.us.2:                        ; preds = %polly.loop_header688.us.2.preheader, %polly.loop_header688.us.2
  %polly.indvar692.us.2 = phi i64 [ %polly.indvar_next693.us.2, %polly.loop_header688.us.2 ], [ %polly.indvar692.us.2.ph, %polly.loop_header688.us.2.preheader ]
  %667 = add nuw nsw i64 %polly.indvar692.us.2, %391
  %polly.access.add.Packed_MemRef_call1510696.us.2 = add nuw nsw i64 %polly.indvar692.us.2, 2400
  %polly.access.Packed_MemRef_call1510697.us.2 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510696.us.2
  %_p_scalar_698.us.2 = load double, double* %polly.access.Packed_MemRef_call1510697.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_702.us.2, %_p_scalar_698.us.2
  %polly.access.add.Packed_MemRef_call2512704.us.2 = add nuw nsw i64 %667, %polly.access.mul.Packed_MemRef_call2512699.us.2
  %polly.access.Packed_MemRef_call2512705.us.2 = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512704.us.2
  %_p_scalar_706.us.2 = load double, double* %polly.access.Packed_MemRef_call2512705.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_710.us.2, %_p_scalar_706.us.2
  %668 = shl i64 %667, 3
  %669 = add nuw nsw i64 %668, %421
  %scevgep711.us.2 = getelementptr i8, i8* %call, i64 %669
  %scevgep711712.us.2 = bitcast i8* %scevgep711.us.2 to double*
  %_p_scalar_713.us.2 = load double, double* %scevgep711712.us.2, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_713.us.2
  store double %p_add42.i.us.2, double* %scevgep711712.us.2, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next693.us.2 = add nuw nsw i64 %polly.indvar692.us.2, 1
  %exitcond1091.2.not = icmp eq i64 %polly.indvar692.us.2, %smin1090
  br i1 %exitcond1091.2.not, label %polly.loop_exit690.loopexit.us.2, label %polly.loop_header688.us.2, !llvm.loop !187

polly.loop_exit690.loopexit.us.2:                 ; preds = %polly.loop_header688.us.2, %middle.block1263
  %polly.access.add.Packed_MemRef_call2512700.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2512699.us.3, %418
  %polly.access.Packed_MemRef_call2512701.us.3 = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512700.us.3
  %_p_scalar_702.us.3 = load double, double* %polly.access.Packed_MemRef_call2512701.us.3, align 8
  %polly.access.add.Packed_MemRef_call1510708.us.3 = add nsw i64 %417, 3600
  %polly.access.Packed_MemRef_call1510709.us.3 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510708.us.3
  %_p_scalar_710.us.3 = load double, double* %polly.access.Packed_MemRef_call1510709.us.3, align 8
  %min.iters.check1236 = icmp ult i64 %416, 4
  br i1 %min.iters.check1236, label %polly.loop_header688.us.3.preheader, label %vector.ph1237

vector.ph1237:                                    ; preds = %polly.loop_exit690.loopexit.us.2
  %n.vec1239 = and i64 %416, -4
  %broadcast.splatinsert1245 = insertelement <4 x double> poison, double %_p_scalar_702.us.3, i32 0
  %broadcast.splat1246 = shufflevector <4 x double> %broadcast.splatinsert1245, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1248 = insertelement <4 x double> poison, double %_p_scalar_710.us.3, i32 0
  %broadcast.splat1249 = shufflevector <4 x double> %broadcast.splatinsert1248, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1234

vector.body1234:                                  ; preds = %vector.body1234, %vector.ph1237
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1241, %vector.body1234 ]
  %670 = add nuw nsw i64 %index1240, %391
  %671 = add nuw nsw i64 %index1240, 3600
  %672 = getelementptr double, double* %Packed_MemRef_call1510, i64 %671
  %673 = bitcast double* %672 to <4 x double>*
  %wide.load1244 = load <4 x double>, <4 x double>* %673, align 8
  %674 = fmul fast <4 x double> %broadcast.splat1246, %wide.load1244
  %675 = add nuw nsw i64 %670, %polly.access.mul.Packed_MemRef_call2512699.us.3
  %676 = getelementptr double, double* %Packed_MemRef_call2512, i64 %675
  %677 = bitcast double* %676 to <4 x double>*
  %wide.load1247 = load <4 x double>, <4 x double>* %677, align 8
  %678 = fmul fast <4 x double> %broadcast.splat1249, %wide.load1247
  %679 = shl i64 %670, 3
  %680 = add nuw nsw i64 %679, %421
  %681 = getelementptr i8, i8* %call, i64 %680
  %682 = bitcast i8* %681 to <4 x double>*
  %wide.load1250 = load <4 x double>, <4 x double>* %682, align 8, !alias.scope !118, !noalias !120
  %683 = fadd fast <4 x double> %678, %674
  %684 = fmul fast <4 x double> %683, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %685 = fadd fast <4 x double> %684, %wide.load1250
  %686 = bitcast i8* %681 to <4 x double>*
  store <4 x double> %685, <4 x double>* %686, align 8, !alias.scope !118, !noalias !120
  %index.next1241 = add i64 %index1240, 4
  %687 = icmp eq i64 %index.next1241, %n.vec1239
  br i1 %687, label %middle.block1232, label %vector.body1234, !llvm.loop !188

middle.block1232:                                 ; preds = %vector.body1234
  %cmp.n1243 = icmp eq i64 %416, %n.vec1239
  br i1 %cmp.n1243, label %polly.loop_exit683, label %polly.loop_header688.us.3.preheader

polly.loop_header688.us.3.preheader:              ; preds = %polly.loop_exit690.loopexit.us.2, %middle.block1232
  %polly.indvar692.us.3.ph = phi i64 [ 0, %polly.loop_exit690.loopexit.us.2 ], [ %n.vec1239, %middle.block1232 ]
  br label %polly.loop_header688.us.3

polly.loop_header688.us.3:                        ; preds = %polly.loop_header688.us.3.preheader, %polly.loop_header688.us.3
  %polly.indvar692.us.3 = phi i64 [ %polly.indvar_next693.us.3, %polly.loop_header688.us.3 ], [ %polly.indvar692.us.3.ph, %polly.loop_header688.us.3.preheader ]
  %688 = add nuw nsw i64 %polly.indvar692.us.3, %391
  %polly.access.add.Packed_MemRef_call1510696.us.3 = add nuw nsw i64 %polly.indvar692.us.3, 3600
  %polly.access.Packed_MemRef_call1510697.us.3 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510696.us.3
  %_p_scalar_698.us.3 = load double, double* %polly.access.Packed_MemRef_call1510697.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_702.us.3, %_p_scalar_698.us.3
  %polly.access.add.Packed_MemRef_call2512704.us.3 = add nuw nsw i64 %688, %polly.access.mul.Packed_MemRef_call2512699.us.3
  %polly.access.Packed_MemRef_call2512705.us.3 = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512704.us.3
  %_p_scalar_706.us.3 = load double, double* %polly.access.Packed_MemRef_call2512705.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_710.us.3, %_p_scalar_706.us.3
  %689 = shl i64 %688, 3
  %690 = add nuw nsw i64 %689, %421
  %scevgep711.us.3 = getelementptr i8, i8* %call, i64 %690
  %scevgep711712.us.3 = bitcast i8* %scevgep711.us.3 to double*
  %_p_scalar_713.us.3 = load double, double* %scevgep711712.us.3, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_713.us.3
  store double %p_add42.i.us.3, double* %scevgep711712.us.3, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next693.us.3 = add nuw nsw i64 %polly.indvar692.us.3, 1
  %exitcond1091.3.not = icmp eq i64 %polly.indvar692.us.3, %smin1090
  br i1 %exitcond1091.3.not, label %polly.loop_exit683, label %polly.loop_header688.us.3, !llvm.loop !189
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
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 256}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 4}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42, !43, !44}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !24, !46, !47, !48, !49, !50, !54}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 128}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !24, !52, !42, !53, !44}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.data.pack.array", !22}
!54 = !{!"llvm.loop.tile.followup_tile", !55}
!55 = distinct !{!55, !12, !56}
!56 = !{!"llvm.loop.id", !"i2"}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !4, i64 0}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !66, !"polly.alias.scope.MemRef_call"}
!66 = distinct !{!66, !"polly.alias.scope.domain"}
!67 = !{!68, !69, !70, !71}
!68 = distinct !{!68, !66, !"polly.alias.scope.MemRef_call1"}
!69 = distinct !{!69, !66, !"polly.alias.scope.MemRef_call2"}
!70 = distinct !{!70, !66, !"polly.alias.scope.Packed_MemRef_call1"}
!71 = distinct !{!71, !66, !"polly.alias.scope.Packed_MemRef_call2"}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !74, !13}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!65, !68, !70, !71}
!76 = !{!65, !69, !70, !71}
!77 = !{!78}
!78 = distinct !{!78, !79}
!79 = distinct !{!79, !"LVerDomain"}
!80 = !{!65, !66, !"polly.alias.scope.MemRef_call", !81}
!81 = distinct !{!81, !79}
!82 = !{!68, !69, !70, !71, !78}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = !{!86}
!86 = distinct !{!86, !87}
!87 = distinct !{!87, !"LVerDomain"}
!88 = !{!65, !66, !"polly.alias.scope.MemRef_call", !89}
!89 = distinct !{!89, !87}
!90 = !{!68, !69, !70, !71, !86}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !93, !"polly.alias.scope.MemRef_call"}
!93 = distinct !{!93, !"polly.alias.scope.domain"}
!94 = !{!95, !96, !97, !98}
!95 = distinct !{!95, !93, !"polly.alias.scope.MemRef_call1"}
!96 = distinct !{!96, !93, !"polly.alias.scope.MemRef_call2"}
!97 = distinct !{!97, !93, !"polly.alias.scope.Packed_MemRef_call1"}
!98 = distinct !{!98, !93, !"polly.alias.scope.Packed_MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !74, !13}
!101 = !{!92, !95, !97, !98}
!102 = !{!92, !96, !97, !98}
!103 = !{!104}
!104 = distinct !{!104, !105}
!105 = distinct !{!105, !"LVerDomain"}
!106 = !{!92, !93, !"polly.alias.scope.MemRef_call", !107}
!107 = distinct !{!107, !105}
!108 = !{!95, !96, !97, !98, !104}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = !{!112}
!112 = distinct !{!112, !113}
!113 = distinct !{!113, !"LVerDomain"}
!114 = !{!92, !93, !"polly.alias.scope.MemRef_call", !115}
!115 = distinct !{!115, !113}
!116 = !{!95, !96, !97, !98, !112}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !119, !"polly.alias.scope.MemRef_call"}
!119 = distinct !{!119, !"polly.alias.scope.domain"}
!120 = !{!121, !122, !123, !124}
!121 = distinct !{!121, !119, !"polly.alias.scope.MemRef_call1"}
!122 = distinct !{!122, !119, !"polly.alias.scope.MemRef_call2"}
!123 = distinct !{!123, !119, !"polly.alias.scope.Packed_MemRef_call1"}
!124 = distinct !{!124, !119, !"polly.alias.scope.Packed_MemRef_call2"}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !74, !13}
!127 = !{!118, !121, !123, !124}
!128 = !{!118, !122, !123, !124}
!129 = !{!130}
!130 = distinct !{!130, !131}
!131 = distinct !{!131, !"LVerDomain"}
!132 = !{!118, !119, !"polly.alias.scope.MemRef_call", !133}
!133 = distinct !{!133, !131}
!134 = !{!121, !122, !123, !124, !130}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !13}
!137 = !{!138}
!138 = distinct !{!138, !139}
!139 = distinct !{!139, !"LVerDomain"}
!140 = !{!118, !119, !"polly.alias.scope.MemRef_call", !141}
!141 = distinct !{!141, !139}
!142 = !{!121, !122, !123, !124, !138}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !145, !"polly.alias.scope.MemRef_call"}
!145 = distinct !{!145, !"polly.alias.scope.domain"}
!146 = !{!147, !148}
!147 = distinct !{!147, !145, !"polly.alias.scope.MemRef_call1"}
!148 = distinct !{!148, !145, !"polly.alias.scope.MemRef_call2"}
!149 = distinct !{!149, !13}
!150 = distinct !{!150, !74, !13}
!151 = !{!147, !144}
!152 = distinct !{!152, !13}
!153 = distinct !{!153, !74, !13}
!154 = !{!148, !144}
!155 = distinct !{!155, !13}
!156 = distinct !{!156, !74, !13}
!157 = distinct !{!157, !13}
!158 = !{!159}
!159 = distinct !{!159, !160}
!160 = distinct !{!160, !"LVerDomain"}
!161 = !{!65, !66, !"polly.alias.scope.MemRef_call", !162}
!162 = distinct !{!162, !160}
!163 = !{!68, !69, !70, !71, !159}
!164 = distinct !{!164, !13}
!165 = distinct !{!165, !13}
!166 = distinct !{!166, !13}
!167 = distinct !{!167, !74, !13}
!168 = distinct !{!168, !13}
!169 = !{!170}
!170 = distinct !{!170, !171}
!171 = distinct !{!171, !"LVerDomain"}
!172 = !{!92, !93, !"polly.alias.scope.MemRef_call", !173}
!173 = distinct !{!173, !171}
!174 = !{!95, !96, !97, !98, !170}
!175 = distinct !{!175, !13}
!176 = distinct !{!176, !13}
!177 = distinct !{!177, !13}
!178 = distinct !{!178, !74, !13}
!179 = distinct !{!179, !13}
!180 = !{!181}
!181 = distinct !{!181, !182}
!182 = distinct !{!182, !"LVerDomain"}
!183 = !{!118, !119, !"polly.alias.scope.MemRef_call", !184}
!184 = distinct !{!184, !182}
!185 = !{!121, !122, !123, !124, !181}
!186 = distinct !{!186, !13}
!187 = distinct !{!187, !13}
!188 = distinct !{!188, !13}
!189 = distinct !{!189, !74, !13}
