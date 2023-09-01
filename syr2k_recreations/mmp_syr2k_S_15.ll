; ModuleID = 'syr2k_recreations//mmp_syr2k_S_15.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_15.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 6400, i32 8) #6
  %call880 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1732 = bitcast i8* %call1 to double*
  %polly.access.call1741 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2742 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1741, %call2
  %polly.access.call2761 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2761, %call1
  %2 = or i1 %0, %1
  %polly.access.call781 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call781, %call2
  %4 = icmp ule i8* %polly.access.call2761, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call781, %call1
  %8 = icmp ule i8* %polly.access.call1741, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header866, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1249 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1248 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1247 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1246 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1246, %scevgep1249
  %bound1 = icmp ult i8* %scevgep1248, %scevgep1247
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
  %16 = urem <4 x i32> %15, <i32 80, i32 80, i32 80, i32 80>
  %17 = sitofp <4 x i32> %16 to <4 x double>
  %18 = fmul fast <4 x double> %17, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %19 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %index
  %20 = bitcast double* %19 to <4 x double>*
  store <4 x double> %18, <4 x double>* %20, align 8, !tbaa !2, !alias.scope !6, !noalias !9
  %21 = add <4 x i32> %14, <i32 2, i32 2, i32 2, i32 2>
  %22 = urem <4 x i32> %21, <i32 60, i32 60, i32 60, i32 60>
  %23 = sitofp <4 x i32> %22 to <4 x double>
  %24 = fmul fast <4 x double> %23, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %25 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %index
  %26 = bitcast double* %25 to <4 x double>*
  store <4 x double> %24, <4 x double>* %26, align 8, !tbaa !2, !alias.scope !9
  %index.next = add i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 4, i64 4, i64 4, i64 4>
  %27 = icmp eq i64 %index.next, 60
  br i1 %27, label %for.inc17.i, label %vector.body, !llvm.loop !11

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %28 = mul nuw nsw i64 %indvars.iv10.i, %indvars.iv16.i
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, 1
  %rem.i = urem i32 %30, 80
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fmul fast double %conv.i, 1.250000e-02
  %arrayidx6.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %31 = add i32 %29, 2
  %rem9.i = urem i32 %31, 60
  %conv10.i = sitofp i32 %rem9.i to double
  %div12.i = fmul fast double %conv10.i, 0x3F91111111111111
  %arrayidx16.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div12.i, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next11.i, 60
  br i1 %exitcond15.not.i, label %for.inc17.i, label %for.body3.i, !llvm.loop !14

for.inc17.i:                                      ; preds = %vector.body, %for.body3.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 80
  br i1 %exitcond18.not.i, label %vector.ph1253, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1253:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1260 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1261 = shufflevector <4 x i64> %broadcast.splatinsert1260, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.body1252, %vector.ph1253
  %index1254 = phi i64 [ 0, %vector.ph1253 ], [ %index.next1255, %vector.body1252 ]
  %vec.ind1258 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1253 ], [ %vec.ind.next1259, %vector.body1252 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1258, %broadcast.splat1261
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call880, i64 %indvars.iv7.i, i64 %index1254
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1255 = add i64 %index1254, 4
  %vec.ind.next1259 = add <4 x i64> %vec.ind1258, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1255, 80
  br i1 %40, label %for.inc41.i, label %vector.body1252, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1252
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1253, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit927.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start518, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1948, label %vector.ph1535

vector.ph1535:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1534

vector.body1534:                                  ; preds = %vector.body1534, %vector.ph1535
  %index1536 = phi i64 [ 0, %vector.ph1535 ], [ %index.next1537, %vector.body1534 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call880, i64 %indvars.iv21.i, i64 %index1536
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1537 = add i64 %index1536, 4
  %46 = icmp eq i64 %index.next1537, %n.vec
  br i1 %46, label %middle.block1532, label %vector.body1534, !llvm.loop !18

middle.block1532:                                 ; preds = %vector.body1534
  %cmp.n1539 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1539, label %for.inc6.i, label %for.body3.i46.preheader1948

for.body3.i46.preheader1948:                      ; preds = %for.body3.i46.preheader, %middle.block1532
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1532 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1948, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1948 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call880, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1532, %for.cond1.preheader.i45
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next22.i, 80
  br i1 %exitcond23.not.i, label %for.cond12.preheader.i, label %for.cond1.preheader.i45, !llvm.loop !20

for.cond12.preheader.i:                           ; preds = %for.inc6.i, %for.inc49.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %for.inc49.i ], [ 0, %for.inc6.i ]
  %indvars.iv13.i = phi i64 [ %indvars.iv.next14.i, %for.inc49.i ], [ 1, %for.inc6.i ]
  br label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %for.inc46.i, %for.cond12.preheader.i
  %indvars.iv10.i47 = phi i64 [ 0, %for.cond12.preheader.i ], [ %indvars.iv.next11.i51, %for.inc46.i ]
  %arrayidx26.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  %arrayidx36.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond15.preheader.i
  %indvars.iv.i48 = phi i64 [ 0, %for.cond15.preheader.i ], [ %indvars.iv.next.i49, %for.body17.i ]
  %arrayidx21.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !22
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !22
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call880, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 60
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !33

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 80
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !47

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting519
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start306, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1668 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1668, label %for.body3.i60.preheader1946, label %vector.ph1669

vector.ph1669:                                    ; preds = %for.body3.i60.preheader
  %n.vec1671 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1667

vector.body1667:                                  ; preds = %vector.body1667, %vector.ph1669
  %index1672 = phi i64 [ 0, %vector.ph1669 ], [ %index.next1673, %vector.body1667 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call880, i64 %indvars.iv21.i52, i64 %index1672
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1676 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1676, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1673 = add i64 %index1672, 4
  %57 = icmp eq i64 %index.next1673, %n.vec1671
  br i1 %57, label %middle.block1665, label %vector.body1667, !llvm.loop !63

middle.block1665:                                 ; preds = %vector.body1667
  %cmp.n1675 = icmp eq i64 %indvars.iv21.i52, %n.vec1671
  br i1 %cmp.n1675, label %for.inc6.i63, label %for.body3.i60.preheader1946

for.body3.i60.preheader1946:                      ; preds = %for.body3.i60.preheader, %middle.block1665
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1671, %middle.block1665 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1946, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1946 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call880, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1665, %for.cond1.preheader.i54
  %indvars.iv.next22.i61 = add nuw nsw i64 %indvars.iv21.i52, 1
  %exitcond23.not.i62 = icmp eq i64 %indvars.iv.next22.i61, 80
  br i1 %exitcond23.not.i62, label %for.cond12.preheader.i66, label %for.cond1.preheader.i54, !llvm.loop !20

for.cond12.preheader.i66:                         ; preds = %for.inc6.i63, %for.inc49.i89
  %indvars.iv15.i64 = phi i64 [ %indvars.iv.next16.i86, %for.inc49.i89 ], [ 0, %for.inc6.i63 ]
  %indvars.iv13.i65 = phi i64 [ %indvars.iv.next14.i87, %for.inc49.i89 ], [ 1, %for.inc6.i63 ]
  br label %for.cond15.preheader.i70

for.cond15.preheader.i70:                         ; preds = %for.inc46.i85, %for.cond12.preheader.i66
  %indvars.iv10.i67 = phi i64 [ 0, %for.cond12.preheader.i66 ], [ %indvars.iv.next11.i83, %for.inc46.i85 ]
  %arrayidx26.i68 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  %arrayidx36.i69 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  br label %for.body17.i82

for.body17.i82:                                   ; preds = %for.body17.i82, %for.cond15.preheader.i70
  %indvars.iv.i71 = phi i64 [ 0, %for.cond15.preheader.i70 ], [ %indvars.iv.next.i80, %for.body17.i82 ]
  %arrayidx21.i72 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !22
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !22
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call880, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 60
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !33

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 80
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !47

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting307
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1807 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1807, label %for.body3.i99.preheader1944, label %vector.ph1808

vector.ph1808:                                    ; preds = %for.body3.i99.preheader
  %n.vec1810 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1806

vector.body1806:                                  ; preds = %vector.body1806, %vector.ph1808
  %index1811 = phi i64 [ 0, %vector.ph1808 ], [ %index.next1812, %vector.body1806 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call880, i64 %indvars.iv21.i91, i64 %index1811
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1815 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1815, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1812 = add i64 %index1811, 4
  %68 = icmp eq i64 %index.next1812, %n.vec1810
  br i1 %68, label %middle.block1804, label %vector.body1806, !llvm.loop !65

middle.block1804:                                 ; preds = %vector.body1806
  %cmp.n1814 = icmp eq i64 %indvars.iv21.i91, %n.vec1810
  br i1 %cmp.n1814, label %for.inc6.i102, label %for.body3.i99.preheader1944

for.body3.i99.preheader1944:                      ; preds = %for.body3.i99.preheader, %middle.block1804
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1810, %middle.block1804 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1944, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1944 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call880, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1804, %for.cond1.preheader.i93
  %indvars.iv.next22.i100 = add nuw nsw i64 %indvars.iv21.i91, 1
  %exitcond23.not.i101 = icmp eq i64 %indvars.iv.next22.i100, 80
  br i1 %exitcond23.not.i101, label %for.cond12.preheader.i105, label %for.cond1.preheader.i93, !llvm.loop !20

for.cond12.preheader.i105:                        ; preds = %for.inc6.i102, %for.inc49.i128
  %indvars.iv15.i103 = phi i64 [ %indvars.iv.next16.i125, %for.inc49.i128 ], [ 0, %for.inc6.i102 ]
  %indvars.iv13.i104 = phi i64 [ %indvars.iv.next14.i126, %for.inc49.i128 ], [ 1, %for.inc6.i102 ]
  br label %for.cond15.preheader.i109

for.cond15.preheader.i109:                        ; preds = %for.inc46.i124, %for.cond12.preheader.i105
  %indvars.iv10.i106 = phi i64 [ 0, %for.cond12.preheader.i105 ], [ %indvars.iv.next11.i122, %for.inc46.i124 ]
  %arrayidx26.i107 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  %arrayidx36.i108 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  br label %for.body17.i121

for.body17.i121:                                  ; preds = %for.body17.i121, %for.cond15.preheader.i109
  %indvars.iv.i110 = phi i64 [ 0, %for.cond15.preheader.i109 ], [ %indvars.iv.next.i119, %for.body17.i121 ]
  %arrayidx21.i111 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !22
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !22
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call880, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 60
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !33

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 80
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !47

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !67
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %79 = mul nuw nsw i64 %indvars.iv4.i, 80
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i41 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i43, %if.end.i ]
  %80 = add nuw nsw i64 %indvars.iv.i41, %79
  %81 = trunc i64 %80 to i32
  %rem.i42 = urem i32 %81, 20
  %cmp5.i = icmp eq i32 %rem.i42, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call880, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !69

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !70

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  %malloccall136 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1819 = phi i64 [ %indvar.next1820, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1819, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1821 = icmp ult i64 %88, 4
  br i1 %min.iters.check1821, label %polly.loop_header192.preheader, label %vector.ph1822

vector.ph1822:                                    ; preds = %polly.loop_header
  %n.vec1824 = and i64 %88, -4
  br label %vector.body1818

vector.body1818:                                  ; preds = %vector.body1818, %vector.ph1822
  %index1825 = phi i64 [ 0, %vector.ph1822 ], [ %index.next1826, %vector.body1818 ]
  %90 = shl nuw nsw i64 %index1825, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1829 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1829, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1826 = add i64 %index1825, 4
  %95 = icmp eq i64 %index.next1826, %n.vec1824
  br i1 %95, label %middle.block1816, label %vector.body1818, !llvm.loop !78

middle.block1816:                                 ; preds = %vector.body1818
  %cmp.n1828 = icmp eq i64 %88, %n.vec1824
  br i1 %cmp.n1828, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1816
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1824, %middle.block1816 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1816
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1820 = add i64 %indvar1819, 1
  br i1 %exitcond1100.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  %scevgep1856 = getelementptr i8, i8* %malloccall, i64 1280
  %scevgep1857 = getelementptr i8, i8* %malloccall, i64 1288
  %scevgep1887 = getelementptr i8, i8* %malloccall, i64 640
  %scevgep1888 = getelementptr i8, i8* %malloccall, i64 648
  %scevgep1918 = getelementptr i8, i8* %malloccall, i64 8
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1099.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1099.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !79

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = shl nsw i64 %polly.indvar203, 2
  %98 = or i64 %97, 1
  %99 = or i64 %97, 2
  %100 = or i64 %97, 3
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next204, 15
  br i1 %exitcond1098.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 80, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %101 = mul nuw nsw i64 %polly.indvar209, 20736
  %102 = or i64 %101, 8
  %103 = mul nuw nsw i64 %polly.indvar209, 20736
  %104 = or i64 %103, 8
  %105 = mul nuw nsw i64 %polly.indvar209, 20736
  %106 = or i64 %105, 8
  %107 = mul nsw i64 %polly.indvar209, -32
  %108 = shl nsw i64 %polly.indvar209, 5
  br label %polly.loop_header218

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %indvars.iv.next1090 = add nsw i64 %indvars.iv1089, -32
  %exitcond1097.not = icmp eq i64 %polly.indvar_next210, 3
  br i1 %exitcond1097.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header206
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %109 = add nuw nsw i64 %polly.indvar221, %108
  %polly.access.mul.call2225 = mul nuw nsw i64 %109, 60
  %polly.access.add.call2226 = add nuw nsw i64 %97, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !75, !noalias !81
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar221
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header218.1, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit220.3, %polly.loop_exit267
  %indvar1833 = phi i64 [ 0, %polly.loop_exit220.3 ], [ %indvar.next1834, %polly.loop_exit267 ]
  %indvars.iv1091 = phi i64 [ %indvars.iv1089, %polly.loop_exit220.3 ], [ %indvars.iv.next1092, %polly.loop_exit267 ]
  %indvars.iv1084 = phi i64 [ 0, %polly.loop_exit220.3 ], [ %indvars.iv.next1085, %polly.loop_exit267 ]
  %polly.indvar231 = phi i64 [ %polly.indvar209, %polly.loop_exit220.3 ], [ %polly.indvar_next232, %polly.loop_exit267 ]
  %110 = shl nuw nsw i64 %indvar1833, 5
  %111 = mul nuw nsw i64 %indvar1833, 20480
  %112 = add i64 %101, %111
  %113 = add i64 %102, %111
  %114 = shl nuw nsw i64 %indvar1833, 5
  %115 = shl nuw nsw i64 %indvar1833, 5
  %116 = mul nuw nsw i64 %indvar1833, 20480
  %117 = add i64 %103, %116
  %118 = add i64 %104, %116
  %119 = shl nuw nsw i64 %indvar1833, 5
  %120 = shl nuw nsw i64 %indvar1833, 5
  %121 = mul nuw nsw i64 %indvar1833, 20480
  %122 = add i64 %105, %121
  %123 = add i64 %106, %121
  %124 = shl nuw nsw i64 %indvar1833, 5
  %125 = shl nuw nsw i64 %indvar1833, 5
  %smin1093 = call i64 @llvm.smin.i64(i64 %indvars.iv1091, i64 -48)
  %126 = add nsw i64 %smin1093, 79
  %smax = call i64 @llvm.smax.i64(i64 %126, i64 0)
  %127 = shl nsw i64 %polly.indvar231, 5
  %128 = add nsw i64 %127, %107
  %.inv.not = icmp eq i64 %128, 0
  %129 = or i64 %128, 31
  %130 = icmp ult i64 %358, %129
  %131 = select i1 %130, i64 %358, i64 %129
  %polly.loop_guard254.not = icmp ugt i64 %128, %131
  br i1 %.inv.not, label %polly.loop_header228.split, label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header228, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header228 ]
  %132 = add nuw nsw i64 %polly.indvar243.us, %108
  %polly.access.mul.call1247.us = mul nuw nsw i64 %132, 60
  %polly.access.add.call1248.us = add nuw nsw i64 %97, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar243.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next244.us, 32
  br i1 %exitcond1082.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %128, %polly.loop_exit242.loopexit.us ]
  %133 = add nuw nsw i64 %polly.indvar255.us, %108
  %polly.access.mul.call1259.us = mul nuw nsw i64 %133, 60
  %polly.access.add.call1260.us = add nuw nsw i64 %97, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar255.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp ult i64 %polly.indvar255.us, %131
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_header240.us.1.preheader

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.1.preheader, label %polly.loop_header251.us

polly.loop_header240.us.1.preheader:              ; preds = %polly.loop_header251.us, %polly.loop_exit242.loopexit.us
  br label %polly.loop_header240.us.1

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header251

polly.loop_exit267:                               ; preds = %polly.loop_exit281.us.3, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1085 = add nuw nsw i64 %indvars.iv1084, 32
  %indvars.iv.next1092 = add nsw i64 %indvars.iv1091, -32
  %exitcond1096.not = icmp eq i64 %polly.indvar_next232, 3
  %indvar.next1834 = add i64 %indvar1833, 1
  br i1 %exitcond1096.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header265.preheader:                   ; preds = %polly.loop_header251.us.3, %polly.loop_header251.3, %polly.loop_exit242.loopexit.us.3, %polly.loop_header228.split
  %134 = mul nsw i64 %polly.indvar231, -32
  %polly.loop_guard2751235 = icmp sgt i64 %134, -80
  br i1 %polly.loop_guard2751235, label %polly.loop_header272.us, label %polly.loop_exit267

polly.loop_header272.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit281.us
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit281.us ], [ %indvars.iv1084, %polly.loop_header265.preheader ]
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_exit281.us ], [ 0, %polly.loop_header265.preheader ]
  %135 = add i64 %110, %polly.indvar276.us
  %smin1927 = call i64 @llvm.smin.i64(i64 %135, i64 31)
  %136 = add nuw nsw i64 %smin1927, 1
  %137 = mul nuw nsw i64 %polly.indvar276.us, 640
  %138 = add i64 %114, %polly.indvar276.us
  %smin1916 = call i64 @llvm.smin.i64(i64 %138, i64 31)
  %139 = shl nuw nsw i64 %smin1916, 3
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1086, i64 31)
  %140 = add nuw nsw i64 %polly.indvar276.us, %128
  %141 = add nuw nsw i64 %polly.indvar276.us, %127
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %140
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %polly.access.Packed_MemRef_call1299.us = getelementptr double, double* %Packed_MemRef_call1, i64 %140
  %_p_scalar_300.us = load double, double* %polly.access.Packed_MemRef_call1299.us, align 8
  %142 = mul nuw nsw i64 %141, 640
  %min.iters.check1928 = icmp ult i64 %smin1927, 3
  br i1 %min.iters.check1928, label %polly.loop_header279.us.preheader, label %vector.memcheck1913

vector.memcheck1913:                              ; preds = %polly.loop_header272.us
  %scevgep1919 = getelementptr i8, i8* %scevgep1918, i64 %139
  %143 = add i64 %113, %137
  %scevgep1915 = getelementptr i8, i8* %call, i64 %143
  %scevgep1917 = getelementptr i8, i8* %scevgep1915, i64 %139
  %144 = add i64 %112, %137
  %scevgep1914 = getelementptr i8, i8* %call, i64 %144
  %bound01920 = icmp ult i8* %scevgep1914, %scevgep1919
  %bound11921 = icmp ult i8* %malloccall, %scevgep1917
  %found.conflict1922 = and i1 %bound01920, %bound11921
  br i1 %found.conflict1922, label %polly.loop_header279.us.preheader, label %vector.ph1929

vector.ph1929:                                    ; preds = %vector.memcheck1913
  %n.vec1931 = and i64 %136, -4
  %broadcast.splatinsert1937 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1938 = shufflevector <4 x double> %broadcast.splatinsert1937, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1940 = insertelement <4 x double> poison, double %_p_scalar_300.us, i32 0
  %broadcast.splat1941 = shufflevector <4 x double> %broadcast.splatinsert1940, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1926

vector.body1926:                                  ; preds = %vector.body1926, %vector.ph1929
  %index1932 = phi i64 [ 0, %vector.ph1929 ], [ %index.next1933, %vector.body1926 ]
  %145 = add nuw nsw i64 %index1932, %108
  %146 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1932
  %147 = bitcast double* %146 to <4 x double>*
  %wide.load1936 = load <4 x double>, <4 x double>* %147, align 8, !alias.scope !83
  %148 = fmul fast <4 x double> %broadcast.splat1938, %wide.load1936
  %149 = getelementptr double, double* %Packed_MemRef_call2, i64 %index1932
  %150 = bitcast double* %149 to <4 x double>*
  %wide.load1939 = load <4 x double>, <4 x double>* %150, align 8
  %151 = fmul fast <4 x double> %broadcast.splat1941, %wide.load1939
  %152 = shl i64 %145, 3
  %153 = add nuw nsw i64 %152, %142
  %154 = getelementptr i8, i8* %call, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  %wide.load1942 = load <4 x double>, <4 x double>* %155, align 8, !alias.scope !86, !noalias !88
  %156 = fadd fast <4 x double> %151, %148
  %157 = fmul fast <4 x double> %156, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %158 = fadd fast <4 x double> %157, %wide.load1942
  %159 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %158, <4 x double>* %159, align 8, !alias.scope !86, !noalias !88
  %index.next1933 = add i64 %index1932, 4
  %160 = icmp eq i64 %index.next1933, %n.vec1931
  br i1 %160, label %middle.block1924, label %vector.body1926, !llvm.loop !89

middle.block1924:                                 ; preds = %vector.body1926
  %cmp.n1935 = icmp eq i64 %136, %n.vec1931
  br i1 %cmp.n1935, label %polly.loop_exit281.us, label %polly.loop_header279.us.preheader

polly.loop_header279.us.preheader:                ; preds = %vector.memcheck1913, %polly.loop_header272.us, %middle.block1924
  %polly.indvar282.us.ph = phi i64 [ 0, %vector.memcheck1913 ], [ 0, %polly.loop_header272.us ], [ %n.vec1931, %middle.block1924 ]
  br label %polly.loop_header279.us

polly.loop_header279.us:                          ; preds = %polly.loop_header279.us.preheader, %polly.loop_header279.us
  %polly.indvar282.us = phi i64 [ %polly.indvar_next283.us, %polly.loop_header279.us ], [ %polly.indvar282.us.ph, %polly.loop_header279.us.preheader ]
  %161 = add nuw nsw i64 %polly.indvar282.us, %108
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar282.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %polly.access.Packed_MemRef_call2295.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar282.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call2295.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_300.us, %_p_scalar_296.us
  %162 = shl i64 %161, 3
  %163 = add nuw nsw i64 %162, %142
  %scevgep301.us = getelementptr i8, i8* %call, i64 %163
  %scevgep301302.us = bitcast i8* %scevgep301.us to double*
  %_p_scalar_303.us = load double, double* %scevgep301302.us, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_303.us
  store double %p_add42.i118.us, double* %scevgep301302.us, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283.us = add nuw nsw i64 %polly.indvar282.us, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar282.us, %smin
  br i1 %exitcond1088.not, label %polly.loop_exit281.us, label %polly.loop_header279.us, !llvm.loop !90

polly.loop_exit281.us:                            ; preds = %polly.loop_header279.us, %middle.block1924
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %indvars.iv.next1087 = add nuw nsw i64 %indvars.iv1086, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar276.us, %smax
  br i1 %exitcond1094.not, label %polly.loop_header272.us.1, label %polly.loop_header272.us

polly.loop_header251:                             ; preds = %polly.loop_header228.split, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ 0, %polly.loop_header228.split ]
  %164 = add nuw nsw i64 %polly.indvar255, %108
  %polly.access.mul.call1259 = mul nuw nsw i64 %164, 60
  %polly.access.add.call1260 = add nuw nsw i64 %97, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar255
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp ult i64 %polly.indvar255, %131
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_header251.1

polly.start306:                                   ; preds = %kernel_syr2k.exit
  %malloccall308 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  %malloccall310 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  br label %polly.loop_header394

polly.exiting307:                                 ; preds = %polly.loop_exit418
  tail call void @free(i8* %malloccall308)
  tail call void @free(i8* %malloccall310)
  br label %kernel_syr2k.exit90

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.start306
  %indvar1680 = phi i64 [ %indvar.next1681, %polly.loop_exit402 ], [ 0, %polly.start306 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 1, %polly.start306 ]
  %165 = add i64 %indvar1680, 1
  %166 = mul nuw nsw i64 %polly.indvar397, 640
  %scevgep406 = getelementptr i8, i8* %call, i64 %166
  %min.iters.check1682 = icmp ult i64 %165, 4
  br i1 %min.iters.check1682, label %polly.loop_header400.preheader, label %vector.ph1683

vector.ph1683:                                    ; preds = %polly.loop_header394
  %n.vec1685 = and i64 %165, -4
  br label %vector.body1679

vector.body1679:                                  ; preds = %vector.body1679, %vector.ph1683
  %index1686 = phi i64 [ 0, %vector.ph1683 ], [ %index.next1687, %vector.body1679 ]
  %167 = shl nuw nsw i64 %index1686, 3
  %168 = getelementptr i8, i8* %scevgep406, i64 %167
  %169 = bitcast i8* %168 to <4 x double>*
  %wide.load1690 = load <4 x double>, <4 x double>* %169, align 8, !alias.scope !91, !noalias !93
  %170 = fmul fast <4 x double> %wide.load1690, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %171 = bitcast i8* %168 to <4 x double>*
  store <4 x double> %170, <4 x double>* %171, align 8, !alias.scope !91, !noalias !93
  %index.next1687 = add i64 %index1686, 4
  %172 = icmp eq i64 %index.next1687, %n.vec1685
  br i1 %172, label %middle.block1677, label %vector.body1679, !llvm.loop !98

middle.block1677:                                 ; preds = %vector.body1679
  %cmp.n1689 = icmp eq i64 %165, %n.vec1685
  br i1 %cmp.n1689, label %polly.loop_exit402, label %polly.loop_header400.preheader

polly.loop_header400.preheader:                   ; preds = %polly.loop_header394, %middle.block1677
  %polly.indvar403.ph = phi i64 [ 0, %polly.loop_header394 ], [ %n.vec1685, %middle.block1677 ]
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_header400, %middle.block1677
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar_next398, 80
  %indvar.next1681 = add i64 %indvar1680, 1
  br i1 %exitcond1126.not, label %polly.loop_header410.preheader, label %polly.loop_header394

polly.loop_header410.preheader:                   ; preds = %polly.loop_exit402
  %Packed_MemRef_call1309 = bitcast i8* %malloccall308 to double*
  %Packed_MemRef_call2311 = bitcast i8* %malloccall310 to double*
  %scevgep1717 = getelementptr i8, i8* %malloccall308, i64 1280
  %scevgep1718 = getelementptr i8, i8* %malloccall308, i64 1288
  %scevgep1748 = getelementptr i8, i8* %malloccall308, i64 640
  %scevgep1749 = getelementptr i8, i8* %malloccall308, i64 648
  %scevgep1779 = getelementptr i8, i8* %malloccall308, i64 8
  br label %polly.loop_header410

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_header400
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_header400 ], [ %polly.indvar403.ph, %polly.loop_header400.preheader ]
  %173 = shl nuw nsw i64 %polly.indvar403, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %173
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !91, !noalias !93
  %p_mul.i57 = fmul fast double %_p_scalar_409, 1.200000e+00
  store double %p_mul.i57, double* %scevgep407408, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar_next404, %polly.indvar397
  br i1 %exitcond1125.not, label %polly.loop_exit402, label %polly.loop_header400, !llvm.loop !99

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit418
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit418 ], [ 0, %polly.loop_header410.preheader ]
  %174 = shl nsw i64 %polly.indvar413, 2
  %175 = or i64 %174, 1
  %176 = or i64 %174, 2
  %177 = or i64 %174, 3
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit440
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar_next414, 15
  br i1 %exitcond1124.not, label %polly.exiting307, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit440, %polly.loop_header410
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %polly.loop_exit440 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit440 ], [ 80, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %polly.indvar_next420, %polly.loop_exit440 ], [ 0, %polly.loop_header410 ]
  %178 = mul nuw nsw i64 %polly.indvar419, 20736
  %179 = or i64 %178, 8
  %180 = mul nuw nsw i64 %polly.indvar419, 20736
  %181 = or i64 %180, 8
  %182 = mul nuw nsw i64 %polly.indvar419, 20736
  %183 = or i64 %182, 8
  %184 = mul nsw i64 %polly.indvar419, -32
  %185 = shl nsw i64 %polly.indvar419, 5
  br label %polly.loop_header428

polly.loop_exit440:                               ; preds = %polly.loop_exit479
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next1102 = add nsw i64 %indvars.iv1101, -32
  %indvars.iv.next1115 = add nsw i64 %indvars.iv1114, -32
  %exitcond1123.not = icmp eq i64 %polly.indvar_next420, 3
  br i1 %exitcond1123.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header428:                             ; preds = %polly.loop_header428, %polly.loop_header416
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next432, %polly.loop_header428 ]
  %186 = add nuw nsw i64 %polly.indvar431, %185
  %polly.access.mul.call2435 = mul nuw nsw i64 %186, 60
  %polly.access.add.call2436 = add nuw nsw i64 %174, %polly.access.mul.call2435
  %polly.access.call2437 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2436
  %polly.access.call2437.load = load double, double* %polly.access.call2437, align 8, !alias.scope !95, !noalias !100
  %polly.access.Packed_MemRef_call2311 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.indvar431
  store double %polly.access.call2437.load, double* %polly.access.Packed_MemRef_call2311, align 8
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next432, %indvars.iv1101
  br i1 %exitcond1103.not, label %polly.loop_header428.1, label %polly.loop_header428

polly.loop_header438:                             ; preds = %polly.loop_exit430.3, %polly.loop_exit479
  %indvar1694 = phi i64 [ 0, %polly.loop_exit430.3 ], [ %indvar.next1695, %polly.loop_exit479 ]
  %indvars.iv1116 = phi i64 [ %indvars.iv1114, %polly.loop_exit430.3 ], [ %indvars.iv.next1117, %polly.loop_exit479 ]
  %indvars.iv1108 = phi i64 [ 0, %polly.loop_exit430.3 ], [ %indvars.iv.next1109, %polly.loop_exit479 ]
  %polly.indvar441 = phi i64 [ %polly.indvar419, %polly.loop_exit430.3 ], [ %polly.indvar_next442, %polly.loop_exit479 ]
  %187 = shl nuw nsw i64 %indvar1694, 5
  %188 = mul nuw nsw i64 %indvar1694, 20480
  %189 = add i64 %178, %188
  %190 = add i64 %179, %188
  %191 = shl nuw nsw i64 %indvar1694, 5
  %192 = shl nuw nsw i64 %indvar1694, 5
  %193 = mul nuw nsw i64 %indvar1694, 20480
  %194 = add i64 %180, %193
  %195 = add i64 %181, %193
  %196 = shl nuw nsw i64 %indvar1694, 5
  %197 = shl nuw nsw i64 %indvar1694, 5
  %198 = mul nuw nsw i64 %indvar1694, 20480
  %199 = add i64 %182, %198
  %200 = add i64 %183, %198
  %201 = shl nuw nsw i64 %indvar1694, 5
  %202 = shl nuw nsw i64 %indvar1694, 5
  %smin1118 = call i64 @llvm.smin.i64(i64 %indvars.iv1116, i64 -48)
  %203 = add nsw i64 %smin1118, 79
  %smax1119 = call i64 @llvm.smax.i64(i64 %203, i64 0)
  %204 = shl nsw i64 %polly.indvar441, 5
  %205 = add nsw i64 %204, %184
  %.inv934.not = icmp eq i64 %205, 0
  %206 = or i64 %205, 31
  %207 = icmp ult i64 %456, %206
  %208 = select i1 %207, i64 %456, i64 %206
  %polly.loop_guard466.not = icmp ugt i64 %205, %208
  br i1 %.inv934.not, label %polly.loop_header438.split, label %polly.loop_header451.us

polly.loop_header451.us:                          ; preds = %polly.loop_header438, %polly.loop_header451.us
  %polly.indvar455.us = phi i64 [ %polly.indvar_next456.us, %polly.loop_header451.us ], [ 0, %polly.loop_header438 ]
  %209 = add nuw nsw i64 %polly.indvar455.us, %185
  %polly.access.mul.call1459.us = mul nuw nsw i64 %209, 60
  %polly.access.add.call1460.us = add nuw nsw i64 %174, %polly.access.mul.call1459.us
  %polly.access.call1461.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1460.us
  %polly.access.call1461.load.us = load double, double* %polly.access.call1461.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.Packed_MemRef_call1309.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar455.us
  store double %polly.access.call1461.load.us, double* %polly.access.Packed_MemRef_call1309.us, align 8
  %polly.indvar_next456.us = add nuw i64 %polly.indvar455.us, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next456.us, 32
  br i1 %exitcond1106.not, label %polly.loop_exit453.loopexit.us, label %polly.loop_header451.us

polly.loop_header463.us:                          ; preds = %polly.loop_exit453.loopexit.us, %polly.loop_header463.us
  %polly.indvar467.us = phi i64 [ %polly.indvar_next468.us, %polly.loop_header463.us ], [ %205, %polly.loop_exit453.loopexit.us ]
  %210 = add nuw nsw i64 %polly.indvar467.us, %185
  %polly.access.mul.call1471.us = mul nuw nsw i64 %210, 60
  %polly.access.add.call1472.us = add nuw nsw i64 %174, %polly.access.mul.call1471.us
  %polly.access.call1473.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.us
  %polly.access.call1473.load.us = load double, double* %polly.access.call1473.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.Packed_MemRef_call1309476.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar467.us
  store double %polly.access.call1473.load.us, double* %polly.access.Packed_MemRef_call1309476.us, align 8
  %polly.indvar_next468.us = add nuw nsw i64 %polly.indvar467.us, 1
  %polly.loop_cond469.not.not.us = icmp ult i64 %polly.indvar467.us, %208
  br i1 %polly.loop_cond469.not.not.us, label %polly.loop_header463.us, label %polly.loop_header451.us.1.preheader

polly.loop_exit453.loopexit.us:                   ; preds = %polly.loop_header451.us
  br i1 %polly.loop_guard466.not, label %polly.loop_header451.us.1.preheader, label %polly.loop_header463.us

polly.loop_header451.us.1.preheader:              ; preds = %polly.loop_header463.us, %polly.loop_exit453.loopexit.us
  br label %polly.loop_header451.us.1

polly.loop_header438.split:                       ; preds = %polly.loop_header438
  br i1 %polly.loop_guard466.not, label %polly.loop_header477.preheader, label %polly.loop_header463

polly.loop_exit479:                               ; preds = %polly.loop_exit493.us.3, %polly.loop_header477.preheader
  %polly.indvar_next442 = add nuw nsw i64 %polly.indvar441, 1
  %indvars.iv.next1109 = add nuw nsw i64 %indvars.iv1108, 32
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -32
  %exitcond1122.not = icmp eq i64 %polly.indvar_next442, 3
  %indvar.next1695 = add i64 %indvar1694, 1
  br i1 %exitcond1122.not, label %polly.loop_exit440, label %polly.loop_header438

polly.loop_header477.preheader:                   ; preds = %polly.loop_header463.us.3, %polly.loop_header463.3, %polly.loop_exit453.loopexit.us.3, %polly.loop_header438.split
  %211 = mul nsw i64 %polly.indvar441, -32
  %polly.loop_guard4871236 = icmp sgt i64 %211, -80
  br i1 %polly.loop_guard4871236, label %polly.loop_header484.us, label %polly.loop_exit479

polly.loop_header484.us:                          ; preds = %polly.loop_header477.preheader, %polly.loop_exit493.us
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit493.us ], [ %indvars.iv1108, %polly.loop_header477.preheader ]
  %polly.indvar488.us = phi i64 [ %polly.indvar_next489.us, %polly.loop_exit493.us ], [ 0, %polly.loop_header477.preheader ]
  %212 = add i64 %187, %polly.indvar488.us
  %smin1788 = call i64 @llvm.smin.i64(i64 %212, i64 31)
  %213 = add nuw nsw i64 %smin1788, 1
  %214 = mul nuw nsw i64 %polly.indvar488.us, 640
  %215 = add i64 %191, %polly.indvar488.us
  %smin1777 = call i64 @llvm.smin.i64(i64 %215, i64 31)
  %216 = shl nuw nsw i64 %smin1777, 3
  %smin1112 = call i64 @llvm.smin.i64(i64 %indvars.iv1110, i64 31)
  %217 = add nuw nsw i64 %polly.indvar488.us, %205
  %218 = add nuw nsw i64 %polly.indvar488.us, %204
  %polly.access.Packed_MemRef_call2311503.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %217
  %_p_scalar_504.us = load double, double* %polly.access.Packed_MemRef_call2311503.us, align 8
  %polly.access.Packed_MemRef_call1309511.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %217
  %_p_scalar_512.us = load double, double* %polly.access.Packed_MemRef_call1309511.us, align 8
  %219 = mul nuw nsw i64 %218, 640
  %min.iters.check1789 = icmp ult i64 %smin1788, 3
  br i1 %min.iters.check1789, label %polly.loop_header491.us.preheader, label %vector.memcheck1774

vector.memcheck1774:                              ; preds = %polly.loop_header484.us
  %scevgep1780 = getelementptr i8, i8* %scevgep1779, i64 %216
  %220 = add i64 %190, %214
  %scevgep1776 = getelementptr i8, i8* %call, i64 %220
  %scevgep1778 = getelementptr i8, i8* %scevgep1776, i64 %216
  %221 = add i64 %189, %214
  %scevgep1775 = getelementptr i8, i8* %call, i64 %221
  %bound01781 = icmp ult i8* %scevgep1775, %scevgep1780
  %bound11782 = icmp ult i8* %malloccall308, %scevgep1778
  %found.conflict1783 = and i1 %bound01781, %bound11782
  br i1 %found.conflict1783, label %polly.loop_header491.us.preheader, label %vector.ph1790

vector.ph1790:                                    ; preds = %vector.memcheck1774
  %n.vec1792 = and i64 %213, -4
  %broadcast.splatinsert1798 = insertelement <4 x double> poison, double %_p_scalar_504.us, i32 0
  %broadcast.splat1799 = shufflevector <4 x double> %broadcast.splatinsert1798, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1801 = insertelement <4 x double> poison, double %_p_scalar_512.us, i32 0
  %broadcast.splat1802 = shufflevector <4 x double> %broadcast.splatinsert1801, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1787

vector.body1787:                                  ; preds = %vector.body1787, %vector.ph1790
  %index1793 = phi i64 [ 0, %vector.ph1790 ], [ %index.next1794, %vector.body1787 ]
  %222 = add nuw nsw i64 %index1793, %185
  %223 = getelementptr double, double* %Packed_MemRef_call1309, i64 %index1793
  %224 = bitcast double* %223 to <4 x double>*
  %wide.load1797 = load <4 x double>, <4 x double>* %224, align 8, !alias.scope !102
  %225 = fmul fast <4 x double> %broadcast.splat1799, %wide.load1797
  %226 = getelementptr double, double* %Packed_MemRef_call2311, i64 %index1793
  %227 = bitcast double* %226 to <4 x double>*
  %wide.load1800 = load <4 x double>, <4 x double>* %227, align 8
  %228 = fmul fast <4 x double> %broadcast.splat1802, %wide.load1800
  %229 = shl i64 %222, 3
  %230 = add nuw nsw i64 %229, %219
  %231 = getelementptr i8, i8* %call, i64 %230
  %232 = bitcast i8* %231 to <4 x double>*
  %wide.load1803 = load <4 x double>, <4 x double>* %232, align 8, !alias.scope !105, !noalias !107
  %233 = fadd fast <4 x double> %228, %225
  %234 = fmul fast <4 x double> %233, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %235 = fadd fast <4 x double> %234, %wide.load1803
  %236 = bitcast i8* %231 to <4 x double>*
  store <4 x double> %235, <4 x double>* %236, align 8, !alias.scope !105, !noalias !107
  %index.next1794 = add i64 %index1793, 4
  %237 = icmp eq i64 %index.next1794, %n.vec1792
  br i1 %237, label %middle.block1785, label %vector.body1787, !llvm.loop !108

middle.block1785:                                 ; preds = %vector.body1787
  %cmp.n1796 = icmp eq i64 %213, %n.vec1792
  br i1 %cmp.n1796, label %polly.loop_exit493.us, label %polly.loop_header491.us.preheader

polly.loop_header491.us.preheader:                ; preds = %vector.memcheck1774, %polly.loop_header484.us, %middle.block1785
  %polly.indvar494.us.ph = phi i64 [ 0, %vector.memcheck1774 ], [ 0, %polly.loop_header484.us ], [ %n.vec1792, %middle.block1785 ]
  br label %polly.loop_header491.us

polly.loop_header491.us:                          ; preds = %polly.loop_header491.us.preheader, %polly.loop_header491.us
  %polly.indvar494.us = phi i64 [ %polly.indvar_next495.us, %polly.loop_header491.us ], [ %polly.indvar494.us.ph, %polly.loop_header491.us.preheader ]
  %238 = add nuw nsw i64 %polly.indvar494.us, %185
  %polly.access.Packed_MemRef_call1309499.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar494.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call1309499.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_504.us, %_p_scalar_500.us
  %polly.access.Packed_MemRef_call2311507.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.indvar494.us
  %_p_scalar_508.us = load double, double* %polly.access.Packed_MemRef_call2311507.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_512.us, %_p_scalar_508.us
  %239 = shl i64 %238, 3
  %240 = add nuw nsw i64 %239, %219
  %scevgep513.us = getelementptr i8, i8* %call, i64 %240
  %scevgep513514.us = bitcast i8* %scevgep513.us to double*
  %_p_scalar_515.us = load double, double* %scevgep513514.us, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_515.us
  store double %p_add42.i79.us, double* %scevgep513514.us, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next495.us = add nuw nsw i64 %polly.indvar494.us, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar494.us, %smin1112
  br i1 %exitcond1113.not, label %polly.loop_exit493.us, label %polly.loop_header491.us, !llvm.loop !109

polly.loop_exit493.us:                            ; preds = %polly.loop_header491.us, %middle.block1785
  %polly.indvar_next489.us = add nuw nsw i64 %polly.indvar488.us, 1
  %indvars.iv.next1111 = add nuw nsw i64 %indvars.iv1110, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar488.us, %smax1119
  br i1 %exitcond1120.not, label %polly.loop_header484.us.1, label %polly.loop_header484.us

polly.loop_header463:                             ; preds = %polly.loop_header438.split, %polly.loop_header463
  %polly.indvar467 = phi i64 [ %polly.indvar_next468, %polly.loop_header463 ], [ 0, %polly.loop_header438.split ]
  %241 = add nuw nsw i64 %polly.indvar467, %185
  %polly.access.mul.call1471 = mul nuw nsw i64 %241, 60
  %polly.access.add.call1472 = add nuw nsw i64 %174, %polly.access.mul.call1471
  %polly.access.call1473 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472
  %polly.access.call1473.load = load double, double* %polly.access.call1473, align 8, !alias.scope !94, !noalias !101
  %polly.access.Packed_MemRef_call1309476 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar467
  store double %polly.access.call1473.load, double* %polly.access.Packed_MemRef_call1309476, align 8
  %polly.indvar_next468 = add nuw nsw i64 %polly.indvar467, 1
  %polly.loop_cond469.not.not = icmp ult i64 %polly.indvar467, %208
  br i1 %polly.loop_cond469.not.not, label %polly.loop_header463, label %polly.loop_header463.1

polly.start518:                                   ; preds = %init_array.exit
  %malloccall520 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  %malloccall522 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  br label %polly.loop_header606

polly.exiting519:                                 ; preds = %polly.loop_exit630
  tail call void @free(i8* %malloccall520)
  tail call void @free(i8* %malloccall522)
  br label %kernel_syr2k.exit

polly.loop_header606:                             ; preds = %polly.loop_exit614, %polly.start518
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit614 ], [ 0, %polly.start518 ]
  %polly.indvar609 = phi i64 [ %polly.indvar_next610, %polly.loop_exit614 ], [ 1, %polly.start518 ]
  %242 = add i64 %indvar, 1
  %243 = mul nuw nsw i64 %polly.indvar609, 640
  %scevgep618 = getelementptr i8, i8* %call, i64 %243
  %min.iters.check1543 = icmp ult i64 %242, 4
  br i1 %min.iters.check1543, label %polly.loop_header612.preheader, label %vector.ph1544

vector.ph1544:                                    ; preds = %polly.loop_header606
  %n.vec1546 = and i64 %242, -4
  br label %vector.body1542

vector.body1542:                                  ; preds = %vector.body1542, %vector.ph1544
  %index1547 = phi i64 [ 0, %vector.ph1544 ], [ %index.next1548, %vector.body1542 ]
  %244 = shl nuw nsw i64 %index1547, 3
  %245 = getelementptr i8, i8* %scevgep618, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  %wide.load1551 = load <4 x double>, <4 x double>* %246, align 8, !alias.scope !110, !noalias !112
  %247 = fmul fast <4 x double> %wide.load1551, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %248 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %247, <4 x double>* %248, align 8, !alias.scope !110, !noalias !112
  %index.next1548 = add i64 %index1547, 4
  %249 = icmp eq i64 %index.next1548, %n.vec1546
  br i1 %249, label %middle.block1540, label %vector.body1542, !llvm.loop !117

middle.block1540:                                 ; preds = %vector.body1542
  %cmp.n1550 = icmp eq i64 %242, %n.vec1546
  br i1 %cmp.n1550, label %polly.loop_exit614, label %polly.loop_header612.preheader

polly.loop_header612.preheader:                   ; preds = %polly.loop_header606, %middle.block1540
  %polly.indvar615.ph = phi i64 [ 0, %polly.loop_header606 ], [ %n.vec1546, %middle.block1540 ]
  br label %polly.loop_header612

polly.loop_exit614:                               ; preds = %polly.loop_header612, %middle.block1540
  %polly.indvar_next610 = add nuw nsw i64 %polly.indvar609, 1
  %exitcond1152.not = icmp eq i64 %polly.indvar_next610, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1152.not, label %polly.loop_header622.preheader, label %polly.loop_header606

polly.loop_header622.preheader:                   ; preds = %polly.loop_exit614
  %Packed_MemRef_call1521 = bitcast i8* %malloccall520 to double*
  %Packed_MemRef_call2523 = bitcast i8* %malloccall522 to double*
  %scevgep1578 = getelementptr i8, i8* %malloccall520, i64 1280
  %scevgep1579 = getelementptr i8, i8* %malloccall520, i64 1288
  %scevgep1609 = getelementptr i8, i8* %malloccall520, i64 640
  %scevgep1610 = getelementptr i8, i8* %malloccall520, i64 648
  %scevgep1640 = getelementptr i8, i8* %malloccall520, i64 8
  br label %polly.loop_header622

polly.loop_header612:                             ; preds = %polly.loop_header612.preheader, %polly.loop_header612
  %polly.indvar615 = phi i64 [ %polly.indvar_next616, %polly.loop_header612 ], [ %polly.indvar615.ph, %polly.loop_header612.preheader ]
  %250 = shl nuw nsw i64 %polly.indvar615, 3
  %scevgep619 = getelementptr i8, i8* %scevgep618, i64 %250
  %scevgep619620 = bitcast i8* %scevgep619 to double*
  %_p_scalar_621 = load double, double* %scevgep619620, align 8, !alias.scope !110, !noalias !112
  %p_mul.i = fmul fast double %_p_scalar_621, 1.200000e+00
  store double %p_mul.i, double* %scevgep619620, align 8, !alias.scope !110, !noalias !112
  %polly.indvar_next616 = add nuw nsw i64 %polly.indvar615, 1
  %exitcond1151.not = icmp eq i64 %polly.indvar_next616, %polly.indvar609
  br i1 %exitcond1151.not, label %polly.loop_exit614, label %polly.loop_header612, !llvm.loop !118

polly.loop_header622:                             ; preds = %polly.loop_header622.preheader, %polly.loop_exit630
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit630 ], [ 0, %polly.loop_header622.preheader ]
  %251 = shl nsw i64 %polly.indvar625, 2
  %252 = or i64 %251, 1
  %253 = or i64 %251, 2
  %254 = or i64 %251, 3
  br label %polly.loop_header628

polly.loop_exit630:                               ; preds = %polly.loop_exit652
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %exitcond1150.not = icmp eq i64 %polly.indvar_next626, 15
  br i1 %exitcond1150.not, label %polly.exiting519, label %polly.loop_header622

polly.loop_header628:                             ; preds = %polly.loop_exit652, %polly.loop_header622
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %polly.loop_exit652 ], [ 0, %polly.loop_header622 ]
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %polly.loop_exit652 ], [ 80, %polly.loop_header622 ]
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.loop_exit652 ], [ 0, %polly.loop_header622 ]
  %255 = mul nuw nsw i64 %polly.indvar631, 20736
  %256 = or i64 %255, 8
  %257 = mul nuw nsw i64 %polly.indvar631, 20736
  %258 = or i64 %257, 8
  %259 = mul nuw nsw i64 %polly.indvar631, 20736
  %260 = or i64 %259, 8
  %261 = mul nsw i64 %polly.indvar631, -32
  %262 = shl nsw i64 %polly.indvar631, 5
  br label %polly.loop_header640

polly.loop_exit652:                               ; preds = %polly.loop_exit691
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %indvars.iv.next1128 = add nsw i64 %indvars.iv1127, -32
  %indvars.iv.next1141 = add nsw i64 %indvars.iv1140, -32
  %exitcond1149.not = icmp eq i64 %polly.indvar_next632, 3
  br i1 %exitcond1149.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header640:                             ; preds = %polly.loop_header640, %polly.loop_header628
  %polly.indvar643 = phi i64 [ 0, %polly.loop_header628 ], [ %polly.indvar_next644, %polly.loop_header640 ]
  %263 = add nuw nsw i64 %polly.indvar643, %262
  %polly.access.mul.call2647 = mul nuw nsw i64 %263, 60
  %polly.access.add.call2648 = add nuw nsw i64 %251, %polly.access.mul.call2647
  %polly.access.call2649 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2648
  %polly.access.call2649.load = load double, double* %polly.access.call2649, align 8, !alias.scope !114, !noalias !119
  %polly.access.Packed_MemRef_call2523 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.indvar643
  store double %polly.access.call2649.load, double* %polly.access.Packed_MemRef_call2523, align 8
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar_next644, %indvars.iv1127
  br i1 %exitcond1129.not, label %polly.loop_header640.1, label %polly.loop_header640

polly.loop_header650:                             ; preds = %polly.loop_exit642.3, %polly.loop_exit691
  %indvar1555 = phi i64 [ 0, %polly.loop_exit642.3 ], [ %indvar.next1556, %polly.loop_exit691 ]
  %indvars.iv1142 = phi i64 [ %indvars.iv1140, %polly.loop_exit642.3 ], [ %indvars.iv.next1143, %polly.loop_exit691 ]
  %indvars.iv1134 = phi i64 [ 0, %polly.loop_exit642.3 ], [ %indvars.iv.next1135, %polly.loop_exit691 ]
  %polly.indvar653 = phi i64 [ %polly.indvar631, %polly.loop_exit642.3 ], [ %polly.indvar_next654, %polly.loop_exit691 ]
  %264 = shl nuw nsw i64 %indvar1555, 5
  %265 = mul nuw nsw i64 %indvar1555, 20480
  %266 = add i64 %255, %265
  %267 = add i64 %256, %265
  %268 = shl nuw nsw i64 %indvar1555, 5
  %269 = shl nuw nsw i64 %indvar1555, 5
  %270 = mul nuw nsw i64 %indvar1555, 20480
  %271 = add i64 %257, %270
  %272 = add i64 %258, %270
  %273 = shl nuw nsw i64 %indvar1555, 5
  %274 = shl nuw nsw i64 %indvar1555, 5
  %275 = mul nuw nsw i64 %indvar1555, 20480
  %276 = add i64 %259, %275
  %277 = add i64 %260, %275
  %278 = shl nuw nsw i64 %indvar1555, 5
  %279 = shl nuw nsw i64 %indvar1555, 5
  %smin1144 = call i64 @llvm.smin.i64(i64 %indvars.iv1142, i64 -48)
  %280 = add nsw i64 %smin1144, 79
  %smax1145 = call i64 @llvm.smax.i64(i64 %280, i64 0)
  %281 = shl nsw i64 %polly.indvar653, 5
  %282 = add nsw i64 %281, %261
  %.inv935.not = icmp eq i64 %282, 0
  %283 = or i64 %282, 31
  %284 = icmp ult i64 %554, %283
  %285 = select i1 %284, i64 %554, i64 %283
  %polly.loop_guard678.not = icmp ugt i64 %282, %285
  br i1 %.inv935.not, label %polly.loop_header650.split, label %polly.loop_header663.us

polly.loop_header663.us:                          ; preds = %polly.loop_header650, %polly.loop_header663.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.loop_header663.us ], [ 0, %polly.loop_header650 ]
  %286 = add nuw nsw i64 %polly.indvar667.us, %262
  %polly.access.mul.call1671.us = mul nuw nsw i64 %286, 60
  %polly.access.add.call1672.us = add nuw nsw i64 %251, %polly.access.mul.call1671.us
  %polly.access.call1673.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1672.us
  %polly.access.call1673.load.us = load double, double* %polly.access.call1673.us, align 8, !alias.scope !113, !noalias !120
  %polly.access.Packed_MemRef_call1521.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.indvar667.us
  store double %polly.access.call1673.load.us, double* %polly.access.Packed_MemRef_call1521.us, align 8
  %polly.indvar_next668.us = add nuw i64 %polly.indvar667.us, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar_next668.us, 32
  br i1 %exitcond1132.not, label %polly.loop_exit665.loopexit.us, label %polly.loop_header663.us

polly.loop_header675.us:                          ; preds = %polly.loop_exit665.loopexit.us, %polly.loop_header675.us
  %polly.indvar679.us = phi i64 [ %polly.indvar_next680.us, %polly.loop_header675.us ], [ %282, %polly.loop_exit665.loopexit.us ]
  %287 = add nuw nsw i64 %polly.indvar679.us, %262
  %polly.access.mul.call1683.us = mul nuw nsw i64 %287, 60
  %polly.access.add.call1684.us = add nuw nsw i64 %251, %polly.access.mul.call1683.us
  %polly.access.call1685.us = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.us
  %polly.access.call1685.load.us = load double, double* %polly.access.call1685.us, align 8, !alias.scope !113, !noalias !120
  %polly.access.Packed_MemRef_call1521688.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.indvar679.us
  store double %polly.access.call1685.load.us, double* %polly.access.Packed_MemRef_call1521688.us, align 8
  %polly.indvar_next680.us = add nuw nsw i64 %polly.indvar679.us, 1
  %polly.loop_cond681.not.not.us = icmp ult i64 %polly.indvar679.us, %285
  br i1 %polly.loop_cond681.not.not.us, label %polly.loop_header675.us, label %polly.loop_header663.us.1.preheader

polly.loop_exit665.loopexit.us:                   ; preds = %polly.loop_header663.us
  br i1 %polly.loop_guard678.not, label %polly.loop_header663.us.1.preheader, label %polly.loop_header675.us

polly.loop_header663.us.1.preheader:              ; preds = %polly.loop_header675.us, %polly.loop_exit665.loopexit.us
  br label %polly.loop_header663.us.1

polly.loop_header650.split:                       ; preds = %polly.loop_header650
  br i1 %polly.loop_guard678.not, label %polly.loop_header689.preheader, label %polly.loop_header675

polly.loop_exit691:                               ; preds = %polly.loop_exit705.us.3, %polly.loop_header689.preheader
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %indvars.iv.next1135 = add nuw nsw i64 %indvars.iv1134, 32
  %indvars.iv.next1143 = add nsw i64 %indvars.iv1142, -32
  %exitcond1148.not = icmp eq i64 %polly.indvar_next654, 3
  %indvar.next1556 = add i64 %indvar1555, 1
  br i1 %exitcond1148.not, label %polly.loop_exit652, label %polly.loop_header650

polly.loop_header689.preheader:                   ; preds = %polly.loop_header675.us.3, %polly.loop_header675.3, %polly.loop_exit665.loopexit.us.3, %polly.loop_header650.split
  %288 = mul nsw i64 %polly.indvar653, -32
  %polly.loop_guard6991237 = icmp sgt i64 %288, -80
  br i1 %polly.loop_guard6991237, label %polly.loop_header696.us, label %polly.loop_exit691

polly.loop_header696.us:                          ; preds = %polly.loop_header689.preheader, %polly.loop_exit705.us
  %indvars.iv1136 = phi i64 [ %indvars.iv.next1137, %polly.loop_exit705.us ], [ %indvars.iv1134, %polly.loop_header689.preheader ]
  %polly.indvar700.us = phi i64 [ %polly.indvar_next701.us, %polly.loop_exit705.us ], [ 0, %polly.loop_header689.preheader ]
  %289 = add i64 %264, %polly.indvar700.us
  %smin1649 = call i64 @llvm.smin.i64(i64 %289, i64 31)
  %290 = add nuw nsw i64 %smin1649, 1
  %291 = mul nuw nsw i64 %polly.indvar700.us, 640
  %292 = add i64 %268, %polly.indvar700.us
  %smin1638 = call i64 @llvm.smin.i64(i64 %292, i64 31)
  %293 = shl nuw nsw i64 %smin1638, 3
  %smin1138 = call i64 @llvm.smin.i64(i64 %indvars.iv1136, i64 31)
  %294 = add nuw nsw i64 %polly.indvar700.us, %282
  %295 = add nuw nsw i64 %polly.indvar700.us, %281
  %polly.access.Packed_MemRef_call2523715.us = getelementptr double, double* %Packed_MemRef_call2523, i64 %294
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call2523715.us, align 8
  %polly.access.Packed_MemRef_call1521723.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %294
  %_p_scalar_724.us = load double, double* %polly.access.Packed_MemRef_call1521723.us, align 8
  %296 = mul nuw nsw i64 %295, 640
  %min.iters.check1650 = icmp ult i64 %smin1649, 3
  br i1 %min.iters.check1650, label %polly.loop_header703.us.preheader, label %vector.memcheck1635

vector.memcheck1635:                              ; preds = %polly.loop_header696.us
  %scevgep1641 = getelementptr i8, i8* %scevgep1640, i64 %293
  %297 = add i64 %267, %291
  %scevgep1637 = getelementptr i8, i8* %call, i64 %297
  %scevgep1639 = getelementptr i8, i8* %scevgep1637, i64 %293
  %298 = add i64 %266, %291
  %scevgep1636 = getelementptr i8, i8* %call, i64 %298
  %bound01642 = icmp ult i8* %scevgep1636, %scevgep1641
  %bound11643 = icmp ult i8* %malloccall520, %scevgep1639
  %found.conflict1644 = and i1 %bound01642, %bound11643
  br i1 %found.conflict1644, label %polly.loop_header703.us.preheader, label %vector.ph1651

vector.ph1651:                                    ; preds = %vector.memcheck1635
  %n.vec1653 = and i64 %290, -4
  %broadcast.splatinsert1659 = insertelement <4 x double> poison, double %_p_scalar_716.us, i32 0
  %broadcast.splat1660 = shufflevector <4 x double> %broadcast.splatinsert1659, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1662 = insertelement <4 x double> poison, double %_p_scalar_724.us, i32 0
  %broadcast.splat1663 = shufflevector <4 x double> %broadcast.splatinsert1662, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1648

vector.body1648:                                  ; preds = %vector.body1648, %vector.ph1651
  %index1654 = phi i64 [ 0, %vector.ph1651 ], [ %index.next1655, %vector.body1648 ]
  %299 = add nuw nsw i64 %index1654, %262
  %300 = getelementptr double, double* %Packed_MemRef_call1521, i64 %index1654
  %301 = bitcast double* %300 to <4 x double>*
  %wide.load1658 = load <4 x double>, <4 x double>* %301, align 8, !alias.scope !121
  %302 = fmul fast <4 x double> %broadcast.splat1660, %wide.load1658
  %303 = getelementptr double, double* %Packed_MemRef_call2523, i64 %index1654
  %304 = bitcast double* %303 to <4 x double>*
  %wide.load1661 = load <4 x double>, <4 x double>* %304, align 8
  %305 = fmul fast <4 x double> %broadcast.splat1663, %wide.load1661
  %306 = shl i64 %299, 3
  %307 = add nuw nsw i64 %306, %296
  %308 = getelementptr i8, i8* %call, i64 %307
  %309 = bitcast i8* %308 to <4 x double>*
  %wide.load1664 = load <4 x double>, <4 x double>* %309, align 8, !alias.scope !124, !noalias !126
  %310 = fadd fast <4 x double> %305, %302
  %311 = fmul fast <4 x double> %310, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %312 = fadd fast <4 x double> %311, %wide.load1664
  %313 = bitcast i8* %308 to <4 x double>*
  store <4 x double> %312, <4 x double>* %313, align 8, !alias.scope !124, !noalias !126
  %index.next1655 = add i64 %index1654, 4
  %314 = icmp eq i64 %index.next1655, %n.vec1653
  br i1 %314, label %middle.block1646, label %vector.body1648, !llvm.loop !127

middle.block1646:                                 ; preds = %vector.body1648
  %cmp.n1657 = icmp eq i64 %290, %n.vec1653
  br i1 %cmp.n1657, label %polly.loop_exit705.us, label %polly.loop_header703.us.preheader

polly.loop_header703.us.preheader:                ; preds = %vector.memcheck1635, %polly.loop_header696.us, %middle.block1646
  %polly.indvar706.us.ph = phi i64 [ 0, %vector.memcheck1635 ], [ 0, %polly.loop_header696.us ], [ %n.vec1653, %middle.block1646 ]
  br label %polly.loop_header703.us

polly.loop_header703.us:                          ; preds = %polly.loop_header703.us.preheader, %polly.loop_header703.us
  %polly.indvar706.us = phi i64 [ %polly.indvar_next707.us, %polly.loop_header703.us ], [ %polly.indvar706.us.ph, %polly.loop_header703.us.preheader ]
  %315 = add nuw nsw i64 %polly.indvar706.us, %262
  %polly.access.Packed_MemRef_call1521711.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.indvar706.us
  %_p_scalar_712.us = load double, double* %polly.access.Packed_MemRef_call1521711.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_716.us, %_p_scalar_712.us
  %polly.access.Packed_MemRef_call2523719.us = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.indvar706.us
  %_p_scalar_720.us = load double, double* %polly.access.Packed_MemRef_call2523719.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_724.us, %_p_scalar_720.us
  %316 = shl i64 %315, 3
  %317 = add nuw nsw i64 %316, %296
  %scevgep725.us = getelementptr i8, i8* %call, i64 %317
  %scevgep725726.us = bitcast i8* %scevgep725.us to double*
  %_p_scalar_727.us = load double, double* %scevgep725726.us, align 8, !alias.scope !110, !noalias !112
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_727.us
  store double %p_add42.i.us, double* %scevgep725726.us, align 8, !alias.scope !110, !noalias !112
  %polly.indvar_next707.us = add nuw nsw i64 %polly.indvar706.us, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar706.us, %smin1138
  br i1 %exitcond1139.not, label %polly.loop_exit705.us, label %polly.loop_header703.us, !llvm.loop !128

polly.loop_exit705.us:                            ; preds = %polly.loop_header703.us, %middle.block1646
  %polly.indvar_next701.us = add nuw nsw i64 %polly.indvar700.us, 1
  %indvars.iv.next1137 = add nuw nsw i64 %indvars.iv1136, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar700.us, %smax1145
  br i1 %exitcond1146.not, label %polly.loop_header696.us.1, label %polly.loop_header696.us

polly.loop_header675:                             ; preds = %polly.loop_header650.split, %polly.loop_header675
  %polly.indvar679 = phi i64 [ %polly.indvar_next680, %polly.loop_header675 ], [ 0, %polly.loop_header650.split ]
  %318 = add nuw nsw i64 %polly.indvar679, %262
  %polly.access.mul.call1683 = mul nuw nsw i64 %318, 60
  %polly.access.add.call1684 = add nuw nsw i64 %251, %polly.access.mul.call1683
  %polly.access.call1685 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684
  %polly.access.call1685.load = load double, double* %polly.access.call1685, align 8, !alias.scope !113, !noalias !120
  %polly.access.Packed_MemRef_call1521688 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.indvar679
  store double %polly.access.call1685.load, double* %polly.access.Packed_MemRef_call1521688, align 8
  %polly.indvar_next680 = add nuw nsw i64 %polly.indvar679, 1
  %polly.loop_cond681.not.not = icmp ult i64 %polly.indvar679, %285
  br i1 %polly.loop_cond681.not.not, label %polly.loop_header675, label %polly.loop_header675.1

polly.loop_header866:                             ; preds = %entry, %polly.loop_exit874
  %polly.indvar869 = phi i64 [ %polly.indvar_next870, %polly.loop_exit874 ], [ 0, %entry ]
  %319 = mul nuw nsw i64 %polly.indvar869, 640
  %320 = trunc i64 %polly.indvar869 to i32
  %broadcast.splatinsert1274 = insertelement <4 x i32> poison, i32 %320, i32 0
  %broadcast.splat1275 = shufflevector <4 x i32> %broadcast.splatinsert1274, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1264

vector.body1264:                                  ; preds = %vector.body1264, %polly.loop_header866
  %index1266 = phi i64 [ 0, %polly.loop_header866 ], [ %index.next1267, %vector.body1264 ]
  %vec.ind1272 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header866 ], [ %vec.ind.next1273, %vector.body1264 ]
  %321 = mul <4 x i32> %vec.ind1272, %broadcast.splat1275
  %322 = add <4 x i32> %321, <i32 3, i32 3, i32 3, i32 3>
  %323 = urem <4 x i32> %322, <i32 80, i32 80, i32 80, i32 80>
  %324 = sitofp <4 x i32> %323 to <4 x double>
  %325 = fmul fast <4 x double> %324, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %326 = shl i64 %index1266, 3
  %327 = add nuw nsw i64 %326, %319
  %328 = getelementptr i8, i8* %call, i64 %327
  %329 = bitcast i8* %328 to <4 x double>*
  store <4 x double> %325, <4 x double>* %329, align 8, !alias.scope !129, !noalias !131
  %index.next1267 = add i64 %index1266, 4
  %vec.ind.next1273 = add <4 x i32> %vec.ind1272, <i32 4, i32 4, i32 4, i32 4>
  %330 = icmp eq i64 %index.next1267, 32
  br i1 %330, label %polly.loop_exit874, label %vector.body1264, !llvm.loop !134

polly.loop_exit874:                               ; preds = %vector.body1264
  %polly.indvar_next870 = add nuw nsw i64 %polly.indvar869, 1
  %exitcond1172.not = icmp eq i64 %polly.indvar_next870, 32
  br i1 %exitcond1172.not, label %polly.loop_header866.1, label %polly.loop_header866

polly.loop_header893:                             ; preds = %polly.loop_exit874.2.2, %polly.loop_exit901
  %polly.indvar896 = phi i64 [ %polly.indvar_next897, %polly.loop_exit901 ], [ 0, %polly.loop_exit874.2.2 ]
  %331 = mul nuw nsw i64 %polly.indvar896, 480
  %332 = trunc i64 %polly.indvar896 to i32
  %broadcast.splatinsert1388 = insertelement <4 x i32> poison, i32 %332, i32 0
  %broadcast.splat1389 = shufflevector <4 x i32> %broadcast.splatinsert1388, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1378

vector.body1378:                                  ; preds = %vector.body1378, %polly.loop_header893
  %index1380 = phi i64 [ 0, %polly.loop_header893 ], [ %index.next1381, %vector.body1378 ]
  %vec.ind1386 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header893 ], [ %vec.ind.next1387, %vector.body1378 ]
  %333 = mul <4 x i32> %vec.ind1386, %broadcast.splat1389
  %334 = add <4 x i32> %333, <i32 2, i32 2, i32 2, i32 2>
  %335 = urem <4 x i32> %334, <i32 60, i32 60, i32 60, i32 60>
  %336 = sitofp <4 x i32> %335 to <4 x double>
  %337 = fmul fast <4 x double> %336, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %338 = shl i64 %index1380, 3
  %339 = add i64 %338, %331
  %340 = getelementptr i8, i8* %call2, i64 %339
  %341 = bitcast i8* %340 to <4 x double>*
  store <4 x double> %337, <4 x double>* %341, align 8, !alias.scope !133, !noalias !135
  %index.next1381 = add i64 %index1380, 4
  %vec.ind.next1387 = add <4 x i32> %vec.ind1386, <i32 4, i32 4, i32 4, i32 4>
  %342 = icmp eq i64 %index.next1381, 32
  br i1 %342, label %polly.loop_exit901, label %vector.body1378, !llvm.loop !136

polly.loop_exit901:                               ; preds = %vector.body1378
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar_next897, 32
  br i1 %exitcond1163.not, label %polly.loop_header893.1, label %polly.loop_header893

polly.loop_header919:                             ; preds = %polly.loop_exit901.1.2, %polly.loop_exit927
  %polly.indvar922 = phi i64 [ %polly.indvar_next923, %polly.loop_exit927 ], [ 0, %polly.loop_exit901.1.2 ]
  %343 = mul nuw nsw i64 %polly.indvar922, 480
  %344 = trunc i64 %polly.indvar922 to i32
  %broadcast.splatinsert1466 = insertelement <4 x i32> poison, i32 %344, i32 0
  %broadcast.splat1467 = shufflevector <4 x i32> %broadcast.splatinsert1466, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1456

vector.body1456:                                  ; preds = %vector.body1456, %polly.loop_header919
  %index1458 = phi i64 [ 0, %polly.loop_header919 ], [ %index.next1459, %vector.body1456 ]
  %vec.ind1464 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header919 ], [ %vec.ind.next1465, %vector.body1456 ]
  %345 = mul <4 x i32> %vec.ind1464, %broadcast.splat1467
  %346 = add <4 x i32> %345, <i32 1, i32 1, i32 1, i32 1>
  %347 = urem <4 x i32> %346, <i32 80, i32 80, i32 80, i32 80>
  %348 = sitofp <4 x i32> %347 to <4 x double>
  %349 = fmul fast <4 x double> %348, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %350 = shl i64 %index1458, 3
  %351 = add i64 %350, %343
  %352 = getelementptr i8, i8* %call1, i64 %351
  %353 = bitcast i8* %352 to <4 x double>*
  store <4 x double> %349, <4 x double>* %353, align 8, !alias.scope !132, !noalias !137
  %index.next1459 = add i64 %index1458, 4
  %vec.ind.next1465 = add <4 x i32> %vec.ind1464, <i32 4, i32 4, i32 4, i32 4>
  %354 = icmp eq i64 %index.next1459, 32
  br i1 %354, label %polly.loop_exit927, label %vector.body1456, !llvm.loop !138

polly.loop_exit927:                               ; preds = %vector.body1456
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar_next923, 32
  br i1 %exitcond1157.not, label %polly.loop_header919.1, label %polly.loop_header919

polly.loop_header218.1:                           ; preds = %polly.loop_header218, %polly.loop_header218.1
  %polly.indvar221.1 = phi i64 [ %polly.indvar_next222.1, %polly.loop_header218.1 ], [ 0, %polly.loop_header218 ]
  %355 = add nuw nsw i64 %polly.indvar221.1, %108
  %polly.access.mul.call2225.1 = mul nuw nsw i64 %355, 60
  %polly.access.add.call2226.1 = add nuw nsw i64 %98, %polly.access.mul.call2225.1
  %polly.access.call2227.1 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2226.1
  %polly.access.call2227.load.1 = load double, double* %polly.access.call2227.1, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar221.1, 80
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2227.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next222.1 = add nuw nsw i64 %polly.indvar221.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next222.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_header218.2, label %polly.loop_header218.1

polly.loop_header218.2:                           ; preds = %polly.loop_header218.1, %polly.loop_header218.2
  %polly.indvar221.2 = phi i64 [ %polly.indvar_next222.2, %polly.loop_header218.2 ], [ 0, %polly.loop_header218.1 ]
  %356 = add nuw nsw i64 %polly.indvar221.2, %108
  %polly.access.mul.call2225.2 = mul nuw nsw i64 %356, 60
  %polly.access.add.call2226.2 = add nuw nsw i64 %99, %polly.access.mul.call2225.2
  %polly.access.call2227.2 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2226.2
  %polly.access.call2227.load.2 = load double, double* %polly.access.call2227.2, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2.2 = add nuw nsw i64 %polly.indvar221.2, 160
  %polly.access.Packed_MemRef_call2.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.2
  store double %polly.access.call2227.load.2, double* %polly.access.Packed_MemRef_call2.2, align 8
  %polly.indvar_next222.2 = add nuw nsw i64 %polly.indvar221.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next222.2, %indvars.iv
  br i1 %exitcond.2.not, label %polly.loop_header218.3, label %polly.loop_header218.2

polly.loop_header218.3:                           ; preds = %polly.loop_header218.2, %polly.loop_header218.3
  %polly.indvar221.3 = phi i64 [ %polly.indvar_next222.3, %polly.loop_header218.3 ], [ 0, %polly.loop_header218.2 ]
  %357 = add nuw nsw i64 %polly.indvar221.3, %108
  %polly.access.mul.call2225.3 = mul nuw nsw i64 %357, 60
  %polly.access.add.call2226.3 = add nuw nsw i64 %100, %polly.access.mul.call2225.3
  %polly.access.call2227.3 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2226.3
  %polly.access.call2227.load.3 = load double, double* %polly.access.call2227.3, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2.3 = add nuw nsw i64 %polly.indvar221.3, 240
  %polly.access.Packed_MemRef_call2.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.3
  store double %polly.access.call2227.load.3, double* %polly.access.Packed_MemRef_call2.3, align 8
  %polly.indvar_next222.3 = add nuw nsw i64 %polly.indvar221.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next222.3, %indvars.iv
  br i1 %exitcond.3.not, label %polly.loop_exit220.3, label %polly.loop_header218.3

polly.loop_exit220.3:                             ; preds = %polly.loop_header218.3
  %358 = add nsw i64 %107, 79
  br label %polly.loop_header228

polly.loop_header251.1:                           ; preds = %polly.loop_header251, %polly.loop_header251.1
  %polly.indvar255.1 = phi i64 [ %polly.indvar_next256.1, %polly.loop_header251.1 ], [ %128, %polly.loop_header251 ]
  %359 = add nuw nsw i64 %polly.indvar255.1, %108
  %polly.access.mul.call1259.1 = mul nuw nsw i64 %359, 60
  %polly.access.add.call1260.1 = add nuw nsw i64 %98, %polly.access.mul.call1259.1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.1 = add nuw nsw i64 %polly.indvar255.1, 80
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.indvar_next256.1 = add nuw nsw i64 %polly.indvar255.1, 1
  %polly.loop_cond257.not.not.1 = icmp ult i64 %polly.indvar255.1, %131
  br i1 %polly.loop_cond257.not.not.1, label %polly.loop_header251.1, label %polly.loop_header251.2

polly.loop_header251.2:                           ; preds = %polly.loop_header251.1, %polly.loop_header251.2
  %polly.indvar255.2 = phi i64 [ %polly.indvar_next256.2, %polly.loop_header251.2 ], [ %128, %polly.loop_header251.1 ]
  %360 = add nuw nsw i64 %polly.indvar255.2, %108
  %polly.access.mul.call1259.2 = mul nuw nsw i64 %360, 60
  %polly.access.add.call1260.2 = add nuw nsw i64 %99, %polly.access.mul.call1259.2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.2 = add nuw nsw i64 %polly.indvar255.2, 160
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.indvar_next256.2 = add nuw nsw i64 %polly.indvar255.2, 1
  %polly.loop_cond257.not.not.2 = icmp ult i64 %polly.indvar255.2, %131
  br i1 %polly.loop_cond257.not.not.2, label %polly.loop_header251.2, label %polly.loop_header251.3

polly.loop_header251.3:                           ; preds = %polly.loop_header251.2, %polly.loop_header251.3
  %polly.indvar255.3 = phi i64 [ %polly.indvar_next256.3, %polly.loop_header251.3 ], [ %128, %polly.loop_header251.2 ]
  %361 = add nuw nsw i64 %polly.indvar255.3, %108
  %polly.access.mul.call1259.3 = mul nuw nsw i64 %361, 60
  %polly.access.add.call1260.3 = add nuw nsw i64 %100, %polly.access.mul.call1259.3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.3 = add nuw nsw i64 %polly.indvar255.3, 240
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  %polly.indvar_next256.3 = add nuw nsw i64 %polly.indvar255.3, 1
  %polly.loop_cond257.not.not.3 = icmp ult i64 %polly.indvar255.3, %131
  br i1 %polly.loop_cond257.not.not.3, label %polly.loop_header251.3, label %polly.loop_header265.preheader

polly.loop_header240.us.1:                        ; preds = %polly.loop_header240.us.1.preheader, %polly.loop_header240.us.1
  %polly.indvar243.us.1 = phi i64 [ %polly.indvar_next244.us.1, %polly.loop_header240.us.1 ], [ 0, %polly.loop_header240.us.1.preheader ]
  %362 = add nuw nsw i64 %polly.indvar243.us.1, %108
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %362, 60
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar243.us.1, 80
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next244.us.1 = add nuw i64 %polly.indvar243.us.1, 1
  %exitcond1082.1.not = icmp eq i64 %polly.indvar_next244.us.1, 32
  br i1 %exitcond1082.1.not, label %polly.loop_exit242.loopexit.us.1, label %polly.loop_header240.us.1

polly.loop_exit242.loopexit.us.1:                 ; preds = %polly.loop_header240.us.1
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.2.preheader, label %polly.loop_header251.us.1

polly.loop_header251.us.1:                        ; preds = %polly.loop_exit242.loopexit.us.1, %polly.loop_header251.us.1
  %polly.indvar255.us.1 = phi i64 [ %polly.indvar_next256.us.1, %polly.loop_header251.us.1 ], [ %128, %polly.loop_exit242.loopexit.us.1 ]
  %363 = add nuw nsw i64 %polly.indvar255.us.1, %108
  %polly.access.mul.call1259.us.1 = mul nuw nsw i64 %363, 60
  %polly.access.add.call1260.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1259.us.1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nuw nsw i64 %polly.indvar255.us.1, 80
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  %polly.indvar_next256.us.1 = add nuw nsw i64 %polly.indvar255.us.1, 1
  %polly.loop_cond257.not.not.us.1 = icmp ult i64 %polly.indvar255.us.1, %131
  br i1 %polly.loop_cond257.not.not.us.1, label %polly.loop_header251.us.1, label %polly.loop_header240.us.2.preheader

polly.loop_header240.us.2.preheader:              ; preds = %polly.loop_header251.us.1, %polly.loop_exit242.loopexit.us.1
  br label %polly.loop_header240.us.2

polly.loop_header240.us.2:                        ; preds = %polly.loop_header240.us.2.preheader, %polly.loop_header240.us.2
  %polly.indvar243.us.2 = phi i64 [ %polly.indvar_next244.us.2, %polly.loop_header240.us.2 ], [ 0, %polly.loop_header240.us.2.preheader ]
  %364 = add nuw nsw i64 %polly.indvar243.us.2, %108
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %364, 60
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar243.us.2, 160
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next244.us.2 = add nuw i64 %polly.indvar243.us.2, 1
  %exitcond1082.2.not = icmp eq i64 %polly.indvar_next244.us.2, 32
  br i1 %exitcond1082.2.not, label %polly.loop_exit242.loopexit.us.2, label %polly.loop_header240.us.2

polly.loop_exit242.loopexit.us.2:                 ; preds = %polly.loop_header240.us.2
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.3.preheader, label %polly.loop_header251.us.2

polly.loop_header251.us.2:                        ; preds = %polly.loop_exit242.loopexit.us.2, %polly.loop_header251.us.2
  %polly.indvar255.us.2 = phi i64 [ %polly.indvar_next256.us.2, %polly.loop_header251.us.2 ], [ %128, %polly.loop_exit242.loopexit.us.2 ]
  %365 = add nuw nsw i64 %polly.indvar255.us.2, %108
  %polly.access.mul.call1259.us.2 = mul nuw nsw i64 %365, 60
  %polly.access.add.call1260.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1259.us.2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nuw nsw i64 %polly.indvar255.us.2, 160
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  %polly.indvar_next256.us.2 = add nuw nsw i64 %polly.indvar255.us.2, 1
  %polly.loop_cond257.not.not.us.2 = icmp ult i64 %polly.indvar255.us.2, %131
  br i1 %polly.loop_cond257.not.not.us.2, label %polly.loop_header251.us.2, label %polly.loop_header240.us.3.preheader

polly.loop_header240.us.3.preheader:              ; preds = %polly.loop_header251.us.2, %polly.loop_exit242.loopexit.us.2
  br label %polly.loop_header240.us.3

polly.loop_header240.us.3:                        ; preds = %polly.loop_header240.us.3.preheader, %polly.loop_header240.us.3
  %polly.indvar243.us.3 = phi i64 [ %polly.indvar_next244.us.3, %polly.loop_header240.us.3 ], [ 0, %polly.loop_header240.us.3.preheader ]
  %366 = add nuw nsw i64 %polly.indvar243.us.3, %108
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %366, 60
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar243.us.3, 240
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next244.us.3 = add nuw i64 %polly.indvar243.us.3, 1
  %exitcond1082.3.not = icmp eq i64 %polly.indvar_next244.us.3, 32
  br i1 %exitcond1082.3.not, label %polly.loop_exit242.loopexit.us.3, label %polly.loop_header240.us.3

polly.loop_exit242.loopexit.us.3:                 ; preds = %polly.loop_header240.us.3
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header251.us.3

polly.loop_header251.us.3:                        ; preds = %polly.loop_exit242.loopexit.us.3, %polly.loop_header251.us.3
  %polly.indvar255.us.3 = phi i64 [ %polly.indvar_next256.us.3, %polly.loop_header251.us.3 ], [ %128, %polly.loop_exit242.loopexit.us.3 ]
  %367 = add nuw nsw i64 %polly.indvar255.us.3, %108
  %polly.access.mul.call1259.us.3 = mul nuw nsw i64 %367, 60
  %polly.access.add.call1260.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1259.us.3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nuw nsw i64 %polly.indvar255.us.3, 240
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  %polly.indvar_next256.us.3 = add nuw nsw i64 %polly.indvar255.us.3, 1
  %polly.loop_cond257.not.not.us.3 = icmp ult i64 %polly.indvar255.us.3, %131
  br i1 %polly.loop_cond257.not.not.us.3, label %polly.loop_header251.us.3, label %polly.loop_header265.preheader

polly.loop_header272.us.1:                        ; preds = %polly.loop_exit281.us, %polly.loop_exit281.us.1
  %indvars.iv1086.1 = phi i64 [ %indvars.iv.next1087.1, %polly.loop_exit281.us.1 ], [ %indvars.iv1084, %polly.loop_exit281.us ]
  %polly.indvar276.us.1 = phi i64 [ %polly.indvar_next277.us.1, %polly.loop_exit281.us.1 ], [ 0, %polly.loop_exit281.us ]
  %368 = add i64 %115, %polly.indvar276.us.1
  %smin1897 = call i64 @llvm.smin.i64(i64 %368, i64 31)
  %369 = add nuw nsw i64 %smin1897, 1
  %370 = mul nuw nsw i64 %polly.indvar276.us.1, 640
  %371 = add i64 %119, %polly.indvar276.us.1
  %smin1885 = call i64 @llvm.smin.i64(i64 %371, i64 31)
  %372 = shl nuw nsw i64 %smin1885, 3
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1086.1, i64 31)
  %373 = add nuw nsw i64 %polly.indvar276.us.1, %128
  %374 = add nuw nsw i64 %polly.indvar276.us.1, %127
  %polly.access.add.Packed_MemRef_call2290.us.1 = add nuw nsw i64 %373, 80
  %polly.access.Packed_MemRef_call2291.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.1
  %_p_scalar_292.us.1 = load double, double* %polly.access.Packed_MemRef_call2291.us.1, align 8
  %polly.access.Packed_MemRef_call1299.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us.1
  %_p_scalar_300.us.1 = load double, double* %polly.access.Packed_MemRef_call1299.us.1, align 8
  %375 = mul nuw nsw i64 %374, 640
  %min.iters.check1898 = icmp ult i64 %smin1897, 3
  br i1 %min.iters.check1898, label %polly.loop_header279.us.1.preheader, label %vector.memcheck1882

vector.memcheck1882:                              ; preds = %polly.loop_header272.us.1
  %scevgep1889 = getelementptr i8, i8* %scevgep1888, i64 %372
  %376 = add i64 %118, %370
  %scevgep1884 = getelementptr i8, i8* %call, i64 %376
  %scevgep1886 = getelementptr i8, i8* %scevgep1884, i64 %372
  %377 = add i64 %117, %370
  %scevgep1883 = getelementptr i8, i8* %call, i64 %377
  %bound01890 = icmp ult i8* %scevgep1883, %scevgep1889
  %bound11891 = icmp ult i8* %scevgep1887, %scevgep1886
  %found.conflict1892 = and i1 %bound01890, %bound11891
  br i1 %found.conflict1892, label %polly.loop_header279.us.1.preheader, label %vector.ph1899

vector.ph1899:                                    ; preds = %vector.memcheck1882
  %n.vec1901 = and i64 %369, -4
  %broadcast.splatinsert1907 = insertelement <4 x double> poison, double %_p_scalar_292.us.1, i32 0
  %broadcast.splat1908 = shufflevector <4 x double> %broadcast.splatinsert1907, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1910 = insertelement <4 x double> poison, double %_p_scalar_300.us.1, i32 0
  %broadcast.splat1911 = shufflevector <4 x double> %broadcast.splatinsert1910, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1896

vector.body1896:                                  ; preds = %vector.body1896, %vector.ph1899
  %index1902 = phi i64 [ 0, %vector.ph1899 ], [ %index.next1903, %vector.body1896 ]
  %378 = add nuw nsw i64 %index1902, %108
  %379 = add nuw nsw i64 %index1902, 80
  %380 = getelementptr double, double* %Packed_MemRef_call1, i64 %379
  %381 = bitcast double* %380 to <4 x double>*
  %wide.load1906 = load <4 x double>, <4 x double>* %381, align 8, !alias.scope !139
  %382 = fmul fast <4 x double> %broadcast.splat1908, %wide.load1906
  %383 = getelementptr double, double* %Packed_MemRef_call2, i64 %379
  %384 = bitcast double* %383 to <4 x double>*
  %wide.load1909 = load <4 x double>, <4 x double>* %384, align 8
  %385 = fmul fast <4 x double> %broadcast.splat1911, %wide.load1909
  %386 = shl i64 %378, 3
  %387 = add nuw nsw i64 %386, %375
  %388 = getelementptr i8, i8* %call, i64 %387
  %389 = bitcast i8* %388 to <4 x double>*
  %wide.load1912 = load <4 x double>, <4 x double>* %389, align 8, !alias.scope !142, !noalias !144
  %390 = fadd fast <4 x double> %385, %382
  %391 = fmul fast <4 x double> %390, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %392 = fadd fast <4 x double> %391, %wide.load1912
  %393 = bitcast i8* %388 to <4 x double>*
  store <4 x double> %392, <4 x double>* %393, align 8, !alias.scope !142, !noalias !144
  %index.next1903 = add i64 %index1902, 4
  %394 = icmp eq i64 %index.next1903, %n.vec1901
  br i1 %394, label %middle.block1894, label %vector.body1896, !llvm.loop !145

middle.block1894:                                 ; preds = %vector.body1896
  %cmp.n1905 = icmp eq i64 %369, %n.vec1901
  br i1 %cmp.n1905, label %polly.loop_exit281.us.1, label %polly.loop_header279.us.1.preheader

polly.loop_header279.us.1.preheader:              ; preds = %vector.memcheck1882, %polly.loop_header272.us.1, %middle.block1894
  %polly.indvar282.us.1.ph = phi i64 [ 0, %vector.memcheck1882 ], [ 0, %polly.loop_header272.us.1 ], [ %n.vec1901, %middle.block1894 ]
  br label %polly.loop_header279.us.1

polly.loop_header279.us.1:                        ; preds = %polly.loop_header279.us.1.preheader, %polly.loop_header279.us.1
  %polly.indvar282.us.1 = phi i64 [ %polly.indvar_next283.us.1, %polly.loop_header279.us.1 ], [ %polly.indvar282.us.1.ph, %polly.loop_header279.us.1.preheader ]
  %395 = add nuw nsw i64 %polly.indvar282.us.1, %108
  %polly.access.add.Packed_MemRef_call1286.us.1 = add nuw nsw i64 %polly.indvar282.us.1, 80
  %polly.access.Packed_MemRef_call1287.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us.1
  %_p_scalar_288.us.1 = load double, double* %polly.access.Packed_MemRef_call1287.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_292.us.1, %_p_scalar_288.us.1
  %polly.access.Packed_MemRef_call2295.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us.1
  %_p_scalar_296.us.1 = load double, double* %polly.access.Packed_MemRef_call2295.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_300.us.1, %_p_scalar_296.us.1
  %396 = shl i64 %395, 3
  %397 = add nuw nsw i64 %396, %375
  %scevgep301.us.1 = getelementptr i8, i8* %call, i64 %397
  %scevgep301302.us.1 = bitcast i8* %scevgep301.us.1 to double*
  %_p_scalar_303.us.1 = load double, double* %scevgep301302.us.1, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_303.us.1
  store double %p_add42.i118.us.1, double* %scevgep301302.us.1, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283.us.1 = add nuw nsw i64 %polly.indvar282.us.1, 1
  %exitcond1088.1.not = icmp eq i64 %polly.indvar282.us.1, %smin.1
  br i1 %exitcond1088.1.not, label %polly.loop_exit281.us.1, label %polly.loop_header279.us.1, !llvm.loop !146

polly.loop_exit281.us.1:                          ; preds = %polly.loop_header279.us.1, %middle.block1894
  %polly.indvar_next277.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1
  %indvars.iv.next1087.1 = add nuw nsw i64 %indvars.iv1086.1, 1
  %exitcond1094.1.not = icmp eq i64 %polly.indvar276.us.1, %smax
  br i1 %exitcond1094.1.not, label %polly.loop_header272.us.2, label %polly.loop_header272.us.1

polly.loop_header272.us.2:                        ; preds = %polly.loop_exit281.us.1, %polly.loop_exit281.us.2
  %indvars.iv1086.2 = phi i64 [ %indvars.iv.next1087.2, %polly.loop_exit281.us.2 ], [ %indvars.iv1084, %polly.loop_exit281.us.1 ]
  %polly.indvar276.us.2 = phi i64 [ %polly.indvar_next277.us.2, %polly.loop_exit281.us.2 ], [ 0, %polly.loop_exit281.us.1 ]
  %398 = add i64 %120, %polly.indvar276.us.2
  %smin1866 = call i64 @llvm.smin.i64(i64 %398, i64 31)
  %399 = add nuw nsw i64 %smin1866, 1
  %400 = mul nuw nsw i64 %polly.indvar276.us.2, 640
  %401 = add i64 %124, %polly.indvar276.us.2
  %smin1854 = call i64 @llvm.smin.i64(i64 %401, i64 31)
  %402 = shl nuw nsw i64 %smin1854, 3
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1086.2, i64 31)
  %403 = add nuw nsw i64 %polly.indvar276.us.2, %128
  %404 = add nuw nsw i64 %polly.indvar276.us.2, %127
  %polly.access.add.Packed_MemRef_call2290.us.2 = add nuw nsw i64 %403, 160
  %polly.access.Packed_MemRef_call2291.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.2
  %_p_scalar_292.us.2 = load double, double* %polly.access.Packed_MemRef_call2291.us.2, align 8
  %polly.access.Packed_MemRef_call1299.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us.2
  %_p_scalar_300.us.2 = load double, double* %polly.access.Packed_MemRef_call1299.us.2, align 8
  %405 = mul nuw nsw i64 %404, 640
  %min.iters.check1867 = icmp ult i64 %smin1866, 3
  br i1 %min.iters.check1867, label %polly.loop_header279.us.2.preheader, label %vector.memcheck1851

vector.memcheck1851:                              ; preds = %polly.loop_header272.us.2
  %scevgep1858 = getelementptr i8, i8* %scevgep1857, i64 %402
  %406 = add i64 %123, %400
  %scevgep1853 = getelementptr i8, i8* %call, i64 %406
  %scevgep1855 = getelementptr i8, i8* %scevgep1853, i64 %402
  %407 = add i64 %122, %400
  %scevgep1852 = getelementptr i8, i8* %call, i64 %407
  %bound01859 = icmp ult i8* %scevgep1852, %scevgep1858
  %bound11860 = icmp ult i8* %scevgep1856, %scevgep1855
  %found.conflict1861 = and i1 %bound01859, %bound11860
  br i1 %found.conflict1861, label %polly.loop_header279.us.2.preheader, label %vector.ph1868

vector.ph1868:                                    ; preds = %vector.memcheck1851
  %n.vec1870 = and i64 %399, -4
  %broadcast.splatinsert1876 = insertelement <4 x double> poison, double %_p_scalar_292.us.2, i32 0
  %broadcast.splat1877 = shufflevector <4 x double> %broadcast.splatinsert1876, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1879 = insertelement <4 x double> poison, double %_p_scalar_300.us.2, i32 0
  %broadcast.splat1880 = shufflevector <4 x double> %broadcast.splatinsert1879, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1865

vector.body1865:                                  ; preds = %vector.body1865, %vector.ph1868
  %index1871 = phi i64 [ 0, %vector.ph1868 ], [ %index.next1872, %vector.body1865 ]
  %408 = add nuw nsw i64 %index1871, %108
  %409 = add nuw nsw i64 %index1871, 160
  %410 = getelementptr double, double* %Packed_MemRef_call1, i64 %409
  %411 = bitcast double* %410 to <4 x double>*
  %wide.load1875 = load <4 x double>, <4 x double>* %411, align 8, !alias.scope !147
  %412 = fmul fast <4 x double> %broadcast.splat1877, %wide.load1875
  %413 = getelementptr double, double* %Packed_MemRef_call2, i64 %409
  %414 = bitcast double* %413 to <4 x double>*
  %wide.load1878 = load <4 x double>, <4 x double>* %414, align 8
  %415 = fmul fast <4 x double> %broadcast.splat1880, %wide.load1878
  %416 = shl i64 %408, 3
  %417 = add nuw nsw i64 %416, %405
  %418 = getelementptr i8, i8* %call, i64 %417
  %419 = bitcast i8* %418 to <4 x double>*
  %wide.load1881 = load <4 x double>, <4 x double>* %419, align 8, !alias.scope !150, !noalias !152
  %420 = fadd fast <4 x double> %415, %412
  %421 = fmul fast <4 x double> %420, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %422 = fadd fast <4 x double> %421, %wide.load1881
  %423 = bitcast i8* %418 to <4 x double>*
  store <4 x double> %422, <4 x double>* %423, align 8, !alias.scope !150, !noalias !152
  %index.next1872 = add i64 %index1871, 4
  %424 = icmp eq i64 %index.next1872, %n.vec1870
  br i1 %424, label %middle.block1863, label %vector.body1865, !llvm.loop !153

middle.block1863:                                 ; preds = %vector.body1865
  %cmp.n1874 = icmp eq i64 %399, %n.vec1870
  br i1 %cmp.n1874, label %polly.loop_exit281.us.2, label %polly.loop_header279.us.2.preheader

polly.loop_header279.us.2.preheader:              ; preds = %vector.memcheck1851, %polly.loop_header272.us.2, %middle.block1863
  %polly.indvar282.us.2.ph = phi i64 [ 0, %vector.memcheck1851 ], [ 0, %polly.loop_header272.us.2 ], [ %n.vec1870, %middle.block1863 ]
  br label %polly.loop_header279.us.2

polly.loop_header279.us.2:                        ; preds = %polly.loop_header279.us.2.preheader, %polly.loop_header279.us.2
  %polly.indvar282.us.2 = phi i64 [ %polly.indvar_next283.us.2, %polly.loop_header279.us.2 ], [ %polly.indvar282.us.2.ph, %polly.loop_header279.us.2.preheader ]
  %425 = add nuw nsw i64 %polly.indvar282.us.2, %108
  %polly.access.add.Packed_MemRef_call1286.us.2 = add nuw nsw i64 %polly.indvar282.us.2, 160
  %polly.access.Packed_MemRef_call1287.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us.2
  %_p_scalar_288.us.2 = load double, double* %polly.access.Packed_MemRef_call1287.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_292.us.2, %_p_scalar_288.us.2
  %polly.access.Packed_MemRef_call2295.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us.2
  %_p_scalar_296.us.2 = load double, double* %polly.access.Packed_MemRef_call2295.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_300.us.2, %_p_scalar_296.us.2
  %426 = shl i64 %425, 3
  %427 = add nuw nsw i64 %426, %405
  %scevgep301.us.2 = getelementptr i8, i8* %call, i64 %427
  %scevgep301302.us.2 = bitcast i8* %scevgep301.us.2 to double*
  %_p_scalar_303.us.2 = load double, double* %scevgep301302.us.2, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_303.us.2
  store double %p_add42.i118.us.2, double* %scevgep301302.us.2, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283.us.2 = add nuw nsw i64 %polly.indvar282.us.2, 1
  %exitcond1088.2.not = icmp eq i64 %polly.indvar282.us.2, %smin.2
  br i1 %exitcond1088.2.not, label %polly.loop_exit281.us.2, label %polly.loop_header279.us.2, !llvm.loop !154

polly.loop_exit281.us.2:                          ; preds = %polly.loop_header279.us.2, %middle.block1863
  %polly.indvar_next277.us.2 = add nuw nsw i64 %polly.indvar276.us.2, 1
  %indvars.iv.next1087.2 = add nuw nsw i64 %indvars.iv1086.2, 1
  %exitcond1094.2.not = icmp eq i64 %polly.indvar276.us.2, %smax
  br i1 %exitcond1094.2.not, label %polly.loop_header272.us.3, label %polly.loop_header272.us.2

polly.loop_header272.us.3:                        ; preds = %polly.loop_exit281.us.2, %polly.loop_exit281.us.3
  %indvars.iv1086.3 = phi i64 [ %indvars.iv.next1087.3, %polly.loop_exit281.us.3 ], [ %indvars.iv1084, %polly.loop_exit281.us.2 ]
  %polly.indvar276.us.3 = phi i64 [ %polly.indvar_next277.us.3, %polly.loop_exit281.us.3 ], [ 0, %polly.loop_exit281.us.2 ]
  %428 = add i64 %125, %polly.indvar276.us.3
  %smin1835 = call i64 @llvm.smin.i64(i64 %428, i64 31)
  %429 = add nuw nsw i64 %smin1835, 1
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1086.3, i64 31)
  %430 = add nuw nsw i64 %polly.indvar276.us.3, %128
  %431 = add nuw nsw i64 %polly.indvar276.us.3, %127
  %polly.access.add.Packed_MemRef_call2290.us.3 = add nuw nsw i64 %430, 240
  %polly.access.Packed_MemRef_call2291.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.3
  %_p_scalar_292.us.3 = load double, double* %polly.access.Packed_MemRef_call2291.us.3, align 8
  %polly.access.Packed_MemRef_call1299.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us.3
  %_p_scalar_300.us.3 = load double, double* %polly.access.Packed_MemRef_call1299.us.3, align 8
  %432 = mul nuw nsw i64 %431, 640
  %min.iters.check1836 = icmp ult i64 %smin1835, 3
  br i1 %min.iters.check1836, label %polly.loop_header279.us.3.preheader, label %vector.ph1837

vector.ph1837:                                    ; preds = %polly.loop_header272.us.3
  %n.vec1839 = and i64 %429, -4
  %broadcast.splatinsert1845 = insertelement <4 x double> poison, double %_p_scalar_292.us.3, i32 0
  %broadcast.splat1846 = shufflevector <4 x double> %broadcast.splatinsert1845, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1848 = insertelement <4 x double> poison, double %_p_scalar_300.us.3, i32 0
  %broadcast.splat1849 = shufflevector <4 x double> %broadcast.splatinsert1848, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1832

vector.body1832:                                  ; preds = %vector.body1832, %vector.ph1837
  %index1840 = phi i64 [ 0, %vector.ph1837 ], [ %index.next1841, %vector.body1832 ]
  %433 = add nuw nsw i64 %index1840, %108
  %434 = add nuw nsw i64 %index1840, 240
  %435 = getelementptr double, double* %Packed_MemRef_call1, i64 %434
  %436 = bitcast double* %435 to <4 x double>*
  %wide.load1844 = load <4 x double>, <4 x double>* %436, align 8
  %437 = fmul fast <4 x double> %broadcast.splat1846, %wide.load1844
  %438 = getelementptr double, double* %Packed_MemRef_call2, i64 %434
  %439 = bitcast double* %438 to <4 x double>*
  %wide.load1847 = load <4 x double>, <4 x double>* %439, align 8
  %440 = fmul fast <4 x double> %broadcast.splat1849, %wide.load1847
  %441 = shl i64 %433, 3
  %442 = add nuw nsw i64 %441, %432
  %443 = getelementptr i8, i8* %call, i64 %442
  %444 = bitcast i8* %443 to <4 x double>*
  %wide.load1850 = load <4 x double>, <4 x double>* %444, align 8, !alias.scope !71, !noalias !73
  %445 = fadd fast <4 x double> %440, %437
  %446 = fmul fast <4 x double> %445, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %447 = fadd fast <4 x double> %446, %wide.load1850
  %448 = bitcast i8* %443 to <4 x double>*
  store <4 x double> %447, <4 x double>* %448, align 8, !alias.scope !71, !noalias !73
  %index.next1841 = add i64 %index1840, 4
  %449 = icmp eq i64 %index.next1841, %n.vec1839
  br i1 %449, label %middle.block1830, label %vector.body1832, !llvm.loop !155

middle.block1830:                                 ; preds = %vector.body1832
  %cmp.n1843 = icmp eq i64 %429, %n.vec1839
  br i1 %cmp.n1843, label %polly.loop_exit281.us.3, label %polly.loop_header279.us.3.preheader

polly.loop_header279.us.3.preheader:              ; preds = %polly.loop_header272.us.3, %middle.block1830
  %polly.indvar282.us.3.ph = phi i64 [ 0, %polly.loop_header272.us.3 ], [ %n.vec1839, %middle.block1830 ]
  br label %polly.loop_header279.us.3

polly.loop_header279.us.3:                        ; preds = %polly.loop_header279.us.3.preheader, %polly.loop_header279.us.3
  %polly.indvar282.us.3 = phi i64 [ %polly.indvar_next283.us.3, %polly.loop_header279.us.3 ], [ %polly.indvar282.us.3.ph, %polly.loop_header279.us.3.preheader ]
  %450 = add nuw nsw i64 %polly.indvar282.us.3, %108
  %polly.access.add.Packed_MemRef_call1286.us.3 = add nuw nsw i64 %polly.indvar282.us.3, 240
  %polly.access.Packed_MemRef_call1287.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us.3
  %_p_scalar_288.us.3 = load double, double* %polly.access.Packed_MemRef_call1287.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_292.us.3, %_p_scalar_288.us.3
  %polly.access.Packed_MemRef_call2295.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us.3
  %_p_scalar_296.us.3 = load double, double* %polly.access.Packed_MemRef_call2295.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_300.us.3, %_p_scalar_296.us.3
  %451 = shl i64 %450, 3
  %452 = add nuw nsw i64 %451, %432
  %scevgep301.us.3 = getelementptr i8, i8* %call, i64 %452
  %scevgep301302.us.3 = bitcast i8* %scevgep301.us.3 to double*
  %_p_scalar_303.us.3 = load double, double* %scevgep301302.us.3, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_303.us.3
  store double %p_add42.i118.us.3, double* %scevgep301302.us.3, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283.us.3 = add nuw nsw i64 %polly.indvar282.us.3, 1
  %exitcond1088.3.not = icmp eq i64 %polly.indvar282.us.3, %smin.3
  br i1 %exitcond1088.3.not, label %polly.loop_exit281.us.3, label %polly.loop_header279.us.3, !llvm.loop !156

polly.loop_exit281.us.3:                          ; preds = %polly.loop_header279.us.3, %middle.block1830
  %polly.indvar_next277.us.3 = add nuw nsw i64 %polly.indvar276.us.3, 1
  %indvars.iv.next1087.3 = add nuw nsw i64 %indvars.iv1086.3, 1
  %exitcond1094.3.not = icmp eq i64 %polly.indvar276.us.3, %smax
  br i1 %exitcond1094.3.not, label %polly.loop_exit267, label %polly.loop_header272.us.3

polly.loop_header428.1:                           ; preds = %polly.loop_header428, %polly.loop_header428.1
  %polly.indvar431.1 = phi i64 [ %polly.indvar_next432.1, %polly.loop_header428.1 ], [ 0, %polly.loop_header428 ]
  %453 = add nuw nsw i64 %polly.indvar431.1, %185
  %polly.access.mul.call2435.1 = mul nuw nsw i64 %453, 60
  %polly.access.add.call2436.1 = add nuw nsw i64 %175, %polly.access.mul.call2435.1
  %polly.access.call2437.1 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2436.1
  %polly.access.call2437.load.1 = load double, double* %polly.access.call2437.1, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2311.1 = add nuw nsw i64 %polly.indvar431.1, 80
  %polly.access.Packed_MemRef_call2311.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.1
  store double %polly.access.call2437.load.1, double* %polly.access.Packed_MemRef_call2311.1, align 8
  %polly.indvar_next432.1 = add nuw nsw i64 %polly.indvar431.1, 1
  %exitcond1103.1.not = icmp eq i64 %polly.indvar_next432.1, %indvars.iv1101
  br i1 %exitcond1103.1.not, label %polly.loop_header428.2, label %polly.loop_header428.1

polly.loop_header428.2:                           ; preds = %polly.loop_header428.1, %polly.loop_header428.2
  %polly.indvar431.2 = phi i64 [ %polly.indvar_next432.2, %polly.loop_header428.2 ], [ 0, %polly.loop_header428.1 ]
  %454 = add nuw nsw i64 %polly.indvar431.2, %185
  %polly.access.mul.call2435.2 = mul nuw nsw i64 %454, 60
  %polly.access.add.call2436.2 = add nuw nsw i64 %176, %polly.access.mul.call2435.2
  %polly.access.call2437.2 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2436.2
  %polly.access.call2437.load.2 = load double, double* %polly.access.call2437.2, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2311.2 = add nuw nsw i64 %polly.indvar431.2, 160
  %polly.access.Packed_MemRef_call2311.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.2
  store double %polly.access.call2437.load.2, double* %polly.access.Packed_MemRef_call2311.2, align 8
  %polly.indvar_next432.2 = add nuw nsw i64 %polly.indvar431.2, 1
  %exitcond1103.2.not = icmp eq i64 %polly.indvar_next432.2, %indvars.iv1101
  br i1 %exitcond1103.2.not, label %polly.loop_header428.3, label %polly.loop_header428.2

polly.loop_header428.3:                           ; preds = %polly.loop_header428.2, %polly.loop_header428.3
  %polly.indvar431.3 = phi i64 [ %polly.indvar_next432.3, %polly.loop_header428.3 ], [ 0, %polly.loop_header428.2 ]
  %455 = add nuw nsw i64 %polly.indvar431.3, %185
  %polly.access.mul.call2435.3 = mul nuw nsw i64 %455, 60
  %polly.access.add.call2436.3 = add nuw nsw i64 %177, %polly.access.mul.call2435.3
  %polly.access.call2437.3 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2436.3
  %polly.access.call2437.load.3 = load double, double* %polly.access.call2437.3, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2311.3 = add nuw nsw i64 %polly.indvar431.3, 240
  %polly.access.Packed_MemRef_call2311.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.3
  store double %polly.access.call2437.load.3, double* %polly.access.Packed_MemRef_call2311.3, align 8
  %polly.indvar_next432.3 = add nuw nsw i64 %polly.indvar431.3, 1
  %exitcond1103.3.not = icmp eq i64 %polly.indvar_next432.3, %indvars.iv1101
  br i1 %exitcond1103.3.not, label %polly.loop_exit430.3, label %polly.loop_header428.3

polly.loop_exit430.3:                             ; preds = %polly.loop_header428.3
  %456 = add nsw i64 %184, 79
  br label %polly.loop_header438

polly.loop_header463.1:                           ; preds = %polly.loop_header463, %polly.loop_header463.1
  %polly.indvar467.1 = phi i64 [ %polly.indvar_next468.1, %polly.loop_header463.1 ], [ %205, %polly.loop_header463 ]
  %457 = add nuw nsw i64 %polly.indvar467.1, %185
  %polly.access.mul.call1471.1 = mul nuw nsw i64 %457, 60
  %polly.access.add.call1472.1 = add nuw nsw i64 %175, %polly.access.mul.call1471.1
  %polly.access.call1473.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.1
  %polly.access.call1473.load.1 = load double, double* %polly.access.call1473.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309475.1 = add nuw nsw i64 %polly.indvar467.1, 80
  %polly.access.Packed_MemRef_call1309476.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.1
  store double %polly.access.call1473.load.1, double* %polly.access.Packed_MemRef_call1309476.1, align 8
  %polly.indvar_next468.1 = add nuw nsw i64 %polly.indvar467.1, 1
  %polly.loop_cond469.not.not.1 = icmp ult i64 %polly.indvar467.1, %208
  br i1 %polly.loop_cond469.not.not.1, label %polly.loop_header463.1, label %polly.loop_header463.2

polly.loop_header463.2:                           ; preds = %polly.loop_header463.1, %polly.loop_header463.2
  %polly.indvar467.2 = phi i64 [ %polly.indvar_next468.2, %polly.loop_header463.2 ], [ %205, %polly.loop_header463.1 ]
  %458 = add nuw nsw i64 %polly.indvar467.2, %185
  %polly.access.mul.call1471.2 = mul nuw nsw i64 %458, 60
  %polly.access.add.call1472.2 = add nuw nsw i64 %176, %polly.access.mul.call1471.2
  %polly.access.call1473.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.2
  %polly.access.call1473.load.2 = load double, double* %polly.access.call1473.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309475.2 = add nuw nsw i64 %polly.indvar467.2, 160
  %polly.access.Packed_MemRef_call1309476.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.2
  store double %polly.access.call1473.load.2, double* %polly.access.Packed_MemRef_call1309476.2, align 8
  %polly.indvar_next468.2 = add nuw nsw i64 %polly.indvar467.2, 1
  %polly.loop_cond469.not.not.2 = icmp ult i64 %polly.indvar467.2, %208
  br i1 %polly.loop_cond469.not.not.2, label %polly.loop_header463.2, label %polly.loop_header463.3

polly.loop_header463.3:                           ; preds = %polly.loop_header463.2, %polly.loop_header463.3
  %polly.indvar467.3 = phi i64 [ %polly.indvar_next468.3, %polly.loop_header463.3 ], [ %205, %polly.loop_header463.2 ]
  %459 = add nuw nsw i64 %polly.indvar467.3, %185
  %polly.access.mul.call1471.3 = mul nuw nsw i64 %459, 60
  %polly.access.add.call1472.3 = add nuw nsw i64 %177, %polly.access.mul.call1471.3
  %polly.access.call1473.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.3
  %polly.access.call1473.load.3 = load double, double* %polly.access.call1473.3, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309475.3 = add nuw nsw i64 %polly.indvar467.3, 240
  %polly.access.Packed_MemRef_call1309476.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.3
  store double %polly.access.call1473.load.3, double* %polly.access.Packed_MemRef_call1309476.3, align 8
  %polly.indvar_next468.3 = add nuw nsw i64 %polly.indvar467.3, 1
  %polly.loop_cond469.not.not.3 = icmp ult i64 %polly.indvar467.3, %208
  br i1 %polly.loop_cond469.not.not.3, label %polly.loop_header463.3, label %polly.loop_header477.preheader

polly.loop_header451.us.1:                        ; preds = %polly.loop_header451.us.1.preheader, %polly.loop_header451.us.1
  %polly.indvar455.us.1 = phi i64 [ %polly.indvar_next456.us.1, %polly.loop_header451.us.1 ], [ 0, %polly.loop_header451.us.1.preheader ]
  %460 = add nuw nsw i64 %polly.indvar455.us.1, %185
  %polly.access.mul.call1459.us.1 = mul nuw nsw i64 %460, 60
  %polly.access.add.call1460.us.1 = add nuw nsw i64 %175, %polly.access.mul.call1459.us.1
  %polly.access.call1461.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1460.us.1
  %polly.access.call1461.load.us.1 = load double, double* %polly.access.call1461.us.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309.us.1 = add nuw nsw i64 %polly.indvar455.us.1, 80
  %polly.access.Packed_MemRef_call1309.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.1
  store double %polly.access.call1461.load.us.1, double* %polly.access.Packed_MemRef_call1309.us.1, align 8
  %polly.indvar_next456.us.1 = add nuw i64 %polly.indvar455.us.1, 1
  %exitcond1106.1.not = icmp eq i64 %polly.indvar_next456.us.1, 32
  br i1 %exitcond1106.1.not, label %polly.loop_exit453.loopexit.us.1, label %polly.loop_header451.us.1

polly.loop_exit453.loopexit.us.1:                 ; preds = %polly.loop_header451.us.1
  br i1 %polly.loop_guard466.not, label %polly.loop_header451.us.2.preheader, label %polly.loop_header463.us.1

polly.loop_header463.us.1:                        ; preds = %polly.loop_exit453.loopexit.us.1, %polly.loop_header463.us.1
  %polly.indvar467.us.1 = phi i64 [ %polly.indvar_next468.us.1, %polly.loop_header463.us.1 ], [ %205, %polly.loop_exit453.loopexit.us.1 ]
  %461 = add nuw nsw i64 %polly.indvar467.us.1, %185
  %polly.access.mul.call1471.us.1 = mul nuw nsw i64 %461, 60
  %polly.access.add.call1472.us.1 = add nuw nsw i64 %175, %polly.access.mul.call1471.us.1
  %polly.access.call1473.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.us.1
  %polly.access.call1473.load.us.1 = load double, double* %polly.access.call1473.us.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309475.us.1 = add nuw nsw i64 %polly.indvar467.us.1, 80
  %polly.access.Packed_MemRef_call1309476.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.us.1
  store double %polly.access.call1473.load.us.1, double* %polly.access.Packed_MemRef_call1309476.us.1, align 8
  %polly.indvar_next468.us.1 = add nuw nsw i64 %polly.indvar467.us.1, 1
  %polly.loop_cond469.not.not.us.1 = icmp ult i64 %polly.indvar467.us.1, %208
  br i1 %polly.loop_cond469.not.not.us.1, label %polly.loop_header463.us.1, label %polly.loop_header451.us.2.preheader

polly.loop_header451.us.2.preheader:              ; preds = %polly.loop_header463.us.1, %polly.loop_exit453.loopexit.us.1
  br label %polly.loop_header451.us.2

polly.loop_header451.us.2:                        ; preds = %polly.loop_header451.us.2.preheader, %polly.loop_header451.us.2
  %polly.indvar455.us.2 = phi i64 [ %polly.indvar_next456.us.2, %polly.loop_header451.us.2 ], [ 0, %polly.loop_header451.us.2.preheader ]
  %462 = add nuw nsw i64 %polly.indvar455.us.2, %185
  %polly.access.mul.call1459.us.2 = mul nuw nsw i64 %462, 60
  %polly.access.add.call1460.us.2 = add nuw nsw i64 %176, %polly.access.mul.call1459.us.2
  %polly.access.call1461.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1460.us.2
  %polly.access.call1461.load.us.2 = load double, double* %polly.access.call1461.us.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309.us.2 = add nuw nsw i64 %polly.indvar455.us.2, 160
  %polly.access.Packed_MemRef_call1309.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.2
  store double %polly.access.call1461.load.us.2, double* %polly.access.Packed_MemRef_call1309.us.2, align 8
  %polly.indvar_next456.us.2 = add nuw i64 %polly.indvar455.us.2, 1
  %exitcond1106.2.not = icmp eq i64 %polly.indvar_next456.us.2, 32
  br i1 %exitcond1106.2.not, label %polly.loop_exit453.loopexit.us.2, label %polly.loop_header451.us.2

polly.loop_exit453.loopexit.us.2:                 ; preds = %polly.loop_header451.us.2
  br i1 %polly.loop_guard466.not, label %polly.loop_header451.us.3.preheader, label %polly.loop_header463.us.2

polly.loop_header463.us.2:                        ; preds = %polly.loop_exit453.loopexit.us.2, %polly.loop_header463.us.2
  %polly.indvar467.us.2 = phi i64 [ %polly.indvar_next468.us.2, %polly.loop_header463.us.2 ], [ %205, %polly.loop_exit453.loopexit.us.2 ]
  %463 = add nuw nsw i64 %polly.indvar467.us.2, %185
  %polly.access.mul.call1471.us.2 = mul nuw nsw i64 %463, 60
  %polly.access.add.call1472.us.2 = add nuw nsw i64 %176, %polly.access.mul.call1471.us.2
  %polly.access.call1473.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.us.2
  %polly.access.call1473.load.us.2 = load double, double* %polly.access.call1473.us.2, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309475.us.2 = add nuw nsw i64 %polly.indvar467.us.2, 160
  %polly.access.Packed_MemRef_call1309476.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.us.2
  store double %polly.access.call1473.load.us.2, double* %polly.access.Packed_MemRef_call1309476.us.2, align 8
  %polly.indvar_next468.us.2 = add nuw nsw i64 %polly.indvar467.us.2, 1
  %polly.loop_cond469.not.not.us.2 = icmp ult i64 %polly.indvar467.us.2, %208
  br i1 %polly.loop_cond469.not.not.us.2, label %polly.loop_header463.us.2, label %polly.loop_header451.us.3.preheader

polly.loop_header451.us.3.preheader:              ; preds = %polly.loop_header463.us.2, %polly.loop_exit453.loopexit.us.2
  br label %polly.loop_header451.us.3

polly.loop_header451.us.3:                        ; preds = %polly.loop_header451.us.3.preheader, %polly.loop_header451.us.3
  %polly.indvar455.us.3 = phi i64 [ %polly.indvar_next456.us.3, %polly.loop_header451.us.3 ], [ 0, %polly.loop_header451.us.3.preheader ]
  %464 = add nuw nsw i64 %polly.indvar455.us.3, %185
  %polly.access.mul.call1459.us.3 = mul nuw nsw i64 %464, 60
  %polly.access.add.call1460.us.3 = add nuw nsw i64 %177, %polly.access.mul.call1459.us.3
  %polly.access.call1461.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1460.us.3
  %polly.access.call1461.load.us.3 = load double, double* %polly.access.call1461.us.3, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309.us.3 = add nuw nsw i64 %polly.indvar455.us.3, 240
  %polly.access.Packed_MemRef_call1309.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.3
  store double %polly.access.call1461.load.us.3, double* %polly.access.Packed_MemRef_call1309.us.3, align 8
  %polly.indvar_next456.us.3 = add nuw i64 %polly.indvar455.us.3, 1
  %exitcond1106.3.not = icmp eq i64 %polly.indvar_next456.us.3, 32
  br i1 %exitcond1106.3.not, label %polly.loop_exit453.loopexit.us.3, label %polly.loop_header451.us.3

polly.loop_exit453.loopexit.us.3:                 ; preds = %polly.loop_header451.us.3
  br i1 %polly.loop_guard466.not, label %polly.loop_header477.preheader, label %polly.loop_header463.us.3

polly.loop_header463.us.3:                        ; preds = %polly.loop_exit453.loopexit.us.3, %polly.loop_header463.us.3
  %polly.indvar467.us.3 = phi i64 [ %polly.indvar_next468.us.3, %polly.loop_header463.us.3 ], [ %205, %polly.loop_exit453.loopexit.us.3 ]
  %465 = add nuw nsw i64 %polly.indvar467.us.3, %185
  %polly.access.mul.call1471.us.3 = mul nuw nsw i64 %465, 60
  %polly.access.add.call1472.us.3 = add nuw nsw i64 %177, %polly.access.mul.call1471.us.3
  %polly.access.call1473.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1472.us.3
  %polly.access.call1473.load.us.3 = load double, double* %polly.access.call1473.us.3, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1309475.us.3 = add nuw nsw i64 %polly.indvar467.us.3, 240
  %polly.access.Packed_MemRef_call1309476.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309475.us.3
  store double %polly.access.call1473.load.us.3, double* %polly.access.Packed_MemRef_call1309476.us.3, align 8
  %polly.indvar_next468.us.3 = add nuw nsw i64 %polly.indvar467.us.3, 1
  %polly.loop_cond469.not.not.us.3 = icmp ult i64 %polly.indvar467.us.3, %208
  br i1 %polly.loop_cond469.not.not.us.3, label %polly.loop_header463.us.3, label %polly.loop_header477.preheader

polly.loop_header484.us.1:                        ; preds = %polly.loop_exit493.us, %polly.loop_exit493.us.1
  %indvars.iv1110.1 = phi i64 [ %indvars.iv.next1111.1, %polly.loop_exit493.us.1 ], [ %indvars.iv1108, %polly.loop_exit493.us ]
  %polly.indvar488.us.1 = phi i64 [ %polly.indvar_next489.us.1, %polly.loop_exit493.us.1 ], [ 0, %polly.loop_exit493.us ]
  %466 = add i64 %192, %polly.indvar488.us.1
  %smin1758 = call i64 @llvm.smin.i64(i64 %466, i64 31)
  %467 = add nuw nsw i64 %smin1758, 1
  %468 = mul nuw nsw i64 %polly.indvar488.us.1, 640
  %469 = add i64 %196, %polly.indvar488.us.1
  %smin1746 = call i64 @llvm.smin.i64(i64 %469, i64 31)
  %470 = shl nuw nsw i64 %smin1746, 3
  %smin1112.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1110.1, i64 31)
  %471 = add nuw nsw i64 %polly.indvar488.us.1, %205
  %472 = add nuw nsw i64 %polly.indvar488.us.1, %204
  %polly.access.add.Packed_MemRef_call2311502.us.1 = add nuw nsw i64 %471, 80
  %polly.access.Packed_MemRef_call2311503.us.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311502.us.1
  %_p_scalar_504.us.1 = load double, double* %polly.access.Packed_MemRef_call2311503.us.1, align 8
  %polly.access.Packed_MemRef_call1309511.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311502.us.1
  %_p_scalar_512.us.1 = load double, double* %polly.access.Packed_MemRef_call1309511.us.1, align 8
  %473 = mul nuw nsw i64 %472, 640
  %min.iters.check1759 = icmp ult i64 %smin1758, 3
  br i1 %min.iters.check1759, label %polly.loop_header491.us.1.preheader, label %vector.memcheck1743

vector.memcheck1743:                              ; preds = %polly.loop_header484.us.1
  %scevgep1750 = getelementptr i8, i8* %scevgep1749, i64 %470
  %474 = add i64 %195, %468
  %scevgep1745 = getelementptr i8, i8* %call, i64 %474
  %scevgep1747 = getelementptr i8, i8* %scevgep1745, i64 %470
  %475 = add i64 %194, %468
  %scevgep1744 = getelementptr i8, i8* %call, i64 %475
  %bound01751 = icmp ult i8* %scevgep1744, %scevgep1750
  %bound11752 = icmp ult i8* %scevgep1748, %scevgep1747
  %found.conflict1753 = and i1 %bound01751, %bound11752
  br i1 %found.conflict1753, label %polly.loop_header491.us.1.preheader, label %vector.ph1760

vector.ph1760:                                    ; preds = %vector.memcheck1743
  %n.vec1762 = and i64 %467, -4
  %broadcast.splatinsert1768 = insertelement <4 x double> poison, double %_p_scalar_504.us.1, i32 0
  %broadcast.splat1769 = shufflevector <4 x double> %broadcast.splatinsert1768, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1771 = insertelement <4 x double> poison, double %_p_scalar_512.us.1, i32 0
  %broadcast.splat1772 = shufflevector <4 x double> %broadcast.splatinsert1771, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1757

vector.body1757:                                  ; preds = %vector.body1757, %vector.ph1760
  %index1763 = phi i64 [ 0, %vector.ph1760 ], [ %index.next1764, %vector.body1757 ]
  %476 = add nuw nsw i64 %index1763, %185
  %477 = add nuw nsw i64 %index1763, 80
  %478 = getelementptr double, double* %Packed_MemRef_call1309, i64 %477
  %479 = bitcast double* %478 to <4 x double>*
  %wide.load1767 = load <4 x double>, <4 x double>* %479, align 8, !alias.scope !157
  %480 = fmul fast <4 x double> %broadcast.splat1769, %wide.load1767
  %481 = getelementptr double, double* %Packed_MemRef_call2311, i64 %477
  %482 = bitcast double* %481 to <4 x double>*
  %wide.load1770 = load <4 x double>, <4 x double>* %482, align 8
  %483 = fmul fast <4 x double> %broadcast.splat1772, %wide.load1770
  %484 = shl i64 %476, 3
  %485 = add nuw nsw i64 %484, %473
  %486 = getelementptr i8, i8* %call, i64 %485
  %487 = bitcast i8* %486 to <4 x double>*
  %wide.load1773 = load <4 x double>, <4 x double>* %487, align 8, !alias.scope !160, !noalias !162
  %488 = fadd fast <4 x double> %483, %480
  %489 = fmul fast <4 x double> %488, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %490 = fadd fast <4 x double> %489, %wide.load1773
  %491 = bitcast i8* %486 to <4 x double>*
  store <4 x double> %490, <4 x double>* %491, align 8, !alias.scope !160, !noalias !162
  %index.next1764 = add i64 %index1763, 4
  %492 = icmp eq i64 %index.next1764, %n.vec1762
  br i1 %492, label %middle.block1755, label %vector.body1757, !llvm.loop !163

middle.block1755:                                 ; preds = %vector.body1757
  %cmp.n1766 = icmp eq i64 %467, %n.vec1762
  br i1 %cmp.n1766, label %polly.loop_exit493.us.1, label %polly.loop_header491.us.1.preheader

polly.loop_header491.us.1.preheader:              ; preds = %vector.memcheck1743, %polly.loop_header484.us.1, %middle.block1755
  %polly.indvar494.us.1.ph = phi i64 [ 0, %vector.memcheck1743 ], [ 0, %polly.loop_header484.us.1 ], [ %n.vec1762, %middle.block1755 ]
  br label %polly.loop_header491.us.1

polly.loop_header491.us.1:                        ; preds = %polly.loop_header491.us.1.preheader, %polly.loop_header491.us.1
  %polly.indvar494.us.1 = phi i64 [ %polly.indvar_next495.us.1, %polly.loop_header491.us.1 ], [ %polly.indvar494.us.1.ph, %polly.loop_header491.us.1.preheader ]
  %493 = add nuw nsw i64 %polly.indvar494.us.1, %185
  %polly.access.add.Packed_MemRef_call1309498.us.1 = add nuw nsw i64 %polly.indvar494.us.1, 80
  %polly.access.Packed_MemRef_call1309499.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309498.us.1
  %_p_scalar_500.us.1 = load double, double* %polly.access.Packed_MemRef_call1309499.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_504.us.1, %_p_scalar_500.us.1
  %polly.access.Packed_MemRef_call2311507.us.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309498.us.1
  %_p_scalar_508.us.1 = load double, double* %polly.access.Packed_MemRef_call2311507.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_512.us.1, %_p_scalar_508.us.1
  %494 = shl i64 %493, 3
  %495 = add nuw nsw i64 %494, %473
  %scevgep513.us.1 = getelementptr i8, i8* %call, i64 %495
  %scevgep513514.us.1 = bitcast i8* %scevgep513.us.1 to double*
  %_p_scalar_515.us.1 = load double, double* %scevgep513514.us.1, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_515.us.1
  store double %p_add42.i79.us.1, double* %scevgep513514.us.1, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next495.us.1 = add nuw nsw i64 %polly.indvar494.us.1, 1
  %exitcond1113.1.not = icmp eq i64 %polly.indvar494.us.1, %smin1112.1
  br i1 %exitcond1113.1.not, label %polly.loop_exit493.us.1, label %polly.loop_header491.us.1, !llvm.loop !164

polly.loop_exit493.us.1:                          ; preds = %polly.loop_header491.us.1, %middle.block1755
  %polly.indvar_next489.us.1 = add nuw nsw i64 %polly.indvar488.us.1, 1
  %indvars.iv.next1111.1 = add nuw nsw i64 %indvars.iv1110.1, 1
  %exitcond1120.1.not = icmp eq i64 %polly.indvar488.us.1, %smax1119
  br i1 %exitcond1120.1.not, label %polly.loop_header484.us.2, label %polly.loop_header484.us.1

polly.loop_header484.us.2:                        ; preds = %polly.loop_exit493.us.1, %polly.loop_exit493.us.2
  %indvars.iv1110.2 = phi i64 [ %indvars.iv.next1111.2, %polly.loop_exit493.us.2 ], [ %indvars.iv1108, %polly.loop_exit493.us.1 ]
  %polly.indvar488.us.2 = phi i64 [ %polly.indvar_next489.us.2, %polly.loop_exit493.us.2 ], [ 0, %polly.loop_exit493.us.1 ]
  %496 = add i64 %197, %polly.indvar488.us.2
  %smin1727 = call i64 @llvm.smin.i64(i64 %496, i64 31)
  %497 = add nuw nsw i64 %smin1727, 1
  %498 = mul nuw nsw i64 %polly.indvar488.us.2, 640
  %499 = add i64 %201, %polly.indvar488.us.2
  %smin1715 = call i64 @llvm.smin.i64(i64 %499, i64 31)
  %500 = shl nuw nsw i64 %smin1715, 3
  %smin1112.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1110.2, i64 31)
  %501 = add nuw nsw i64 %polly.indvar488.us.2, %205
  %502 = add nuw nsw i64 %polly.indvar488.us.2, %204
  %polly.access.add.Packed_MemRef_call2311502.us.2 = add nuw nsw i64 %501, 160
  %polly.access.Packed_MemRef_call2311503.us.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311502.us.2
  %_p_scalar_504.us.2 = load double, double* %polly.access.Packed_MemRef_call2311503.us.2, align 8
  %polly.access.Packed_MemRef_call1309511.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311502.us.2
  %_p_scalar_512.us.2 = load double, double* %polly.access.Packed_MemRef_call1309511.us.2, align 8
  %503 = mul nuw nsw i64 %502, 640
  %min.iters.check1728 = icmp ult i64 %smin1727, 3
  br i1 %min.iters.check1728, label %polly.loop_header491.us.2.preheader, label %vector.memcheck1712

vector.memcheck1712:                              ; preds = %polly.loop_header484.us.2
  %scevgep1719 = getelementptr i8, i8* %scevgep1718, i64 %500
  %504 = add i64 %200, %498
  %scevgep1714 = getelementptr i8, i8* %call, i64 %504
  %scevgep1716 = getelementptr i8, i8* %scevgep1714, i64 %500
  %505 = add i64 %199, %498
  %scevgep1713 = getelementptr i8, i8* %call, i64 %505
  %bound01720 = icmp ult i8* %scevgep1713, %scevgep1719
  %bound11721 = icmp ult i8* %scevgep1717, %scevgep1716
  %found.conflict1722 = and i1 %bound01720, %bound11721
  br i1 %found.conflict1722, label %polly.loop_header491.us.2.preheader, label %vector.ph1729

vector.ph1729:                                    ; preds = %vector.memcheck1712
  %n.vec1731 = and i64 %497, -4
  %broadcast.splatinsert1737 = insertelement <4 x double> poison, double %_p_scalar_504.us.2, i32 0
  %broadcast.splat1738 = shufflevector <4 x double> %broadcast.splatinsert1737, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1740 = insertelement <4 x double> poison, double %_p_scalar_512.us.2, i32 0
  %broadcast.splat1741 = shufflevector <4 x double> %broadcast.splatinsert1740, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1726

vector.body1726:                                  ; preds = %vector.body1726, %vector.ph1729
  %index1732 = phi i64 [ 0, %vector.ph1729 ], [ %index.next1733, %vector.body1726 ]
  %506 = add nuw nsw i64 %index1732, %185
  %507 = add nuw nsw i64 %index1732, 160
  %508 = getelementptr double, double* %Packed_MemRef_call1309, i64 %507
  %509 = bitcast double* %508 to <4 x double>*
  %wide.load1736 = load <4 x double>, <4 x double>* %509, align 8, !alias.scope !165
  %510 = fmul fast <4 x double> %broadcast.splat1738, %wide.load1736
  %511 = getelementptr double, double* %Packed_MemRef_call2311, i64 %507
  %512 = bitcast double* %511 to <4 x double>*
  %wide.load1739 = load <4 x double>, <4 x double>* %512, align 8
  %513 = fmul fast <4 x double> %broadcast.splat1741, %wide.load1739
  %514 = shl i64 %506, 3
  %515 = add nuw nsw i64 %514, %503
  %516 = getelementptr i8, i8* %call, i64 %515
  %517 = bitcast i8* %516 to <4 x double>*
  %wide.load1742 = load <4 x double>, <4 x double>* %517, align 8, !alias.scope !168, !noalias !170
  %518 = fadd fast <4 x double> %513, %510
  %519 = fmul fast <4 x double> %518, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %520 = fadd fast <4 x double> %519, %wide.load1742
  %521 = bitcast i8* %516 to <4 x double>*
  store <4 x double> %520, <4 x double>* %521, align 8, !alias.scope !168, !noalias !170
  %index.next1733 = add i64 %index1732, 4
  %522 = icmp eq i64 %index.next1733, %n.vec1731
  br i1 %522, label %middle.block1724, label %vector.body1726, !llvm.loop !171

middle.block1724:                                 ; preds = %vector.body1726
  %cmp.n1735 = icmp eq i64 %497, %n.vec1731
  br i1 %cmp.n1735, label %polly.loop_exit493.us.2, label %polly.loop_header491.us.2.preheader

polly.loop_header491.us.2.preheader:              ; preds = %vector.memcheck1712, %polly.loop_header484.us.2, %middle.block1724
  %polly.indvar494.us.2.ph = phi i64 [ 0, %vector.memcheck1712 ], [ 0, %polly.loop_header484.us.2 ], [ %n.vec1731, %middle.block1724 ]
  br label %polly.loop_header491.us.2

polly.loop_header491.us.2:                        ; preds = %polly.loop_header491.us.2.preheader, %polly.loop_header491.us.2
  %polly.indvar494.us.2 = phi i64 [ %polly.indvar_next495.us.2, %polly.loop_header491.us.2 ], [ %polly.indvar494.us.2.ph, %polly.loop_header491.us.2.preheader ]
  %523 = add nuw nsw i64 %polly.indvar494.us.2, %185
  %polly.access.add.Packed_MemRef_call1309498.us.2 = add nuw nsw i64 %polly.indvar494.us.2, 160
  %polly.access.Packed_MemRef_call1309499.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309498.us.2
  %_p_scalar_500.us.2 = load double, double* %polly.access.Packed_MemRef_call1309499.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_504.us.2, %_p_scalar_500.us.2
  %polly.access.Packed_MemRef_call2311507.us.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309498.us.2
  %_p_scalar_508.us.2 = load double, double* %polly.access.Packed_MemRef_call2311507.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_512.us.2, %_p_scalar_508.us.2
  %524 = shl i64 %523, 3
  %525 = add nuw nsw i64 %524, %503
  %scevgep513.us.2 = getelementptr i8, i8* %call, i64 %525
  %scevgep513514.us.2 = bitcast i8* %scevgep513.us.2 to double*
  %_p_scalar_515.us.2 = load double, double* %scevgep513514.us.2, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_515.us.2
  store double %p_add42.i79.us.2, double* %scevgep513514.us.2, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next495.us.2 = add nuw nsw i64 %polly.indvar494.us.2, 1
  %exitcond1113.2.not = icmp eq i64 %polly.indvar494.us.2, %smin1112.2
  br i1 %exitcond1113.2.not, label %polly.loop_exit493.us.2, label %polly.loop_header491.us.2, !llvm.loop !172

polly.loop_exit493.us.2:                          ; preds = %polly.loop_header491.us.2, %middle.block1724
  %polly.indvar_next489.us.2 = add nuw nsw i64 %polly.indvar488.us.2, 1
  %indvars.iv.next1111.2 = add nuw nsw i64 %indvars.iv1110.2, 1
  %exitcond1120.2.not = icmp eq i64 %polly.indvar488.us.2, %smax1119
  br i1 %exitcond1120.2.not, label %polly.loop_header484.us.3, label %polly.loop_header484.us.2

polly.loop_header484.us.3:                        ; preds = %polly.loop_exit493.us.2, %polly.loop_exit493.us.3
  %indvars.iv1110.3 = phi i64 [ %indvars.iv.next1111.3, %polly.loop_exit493.us.3 ], [ %indvars.iv1108, %polly.loop_exit493.us.2 ]
  %polly.indvar488.us.3 = phi i64 [ %polly.indvar_next489.us.3, %polly.loop_exit493.us.3 ], [ 0, %polly.loop_exit493.us.2 ]
  %526 = add i64 %202, %polly.indvar488.us.3
  %smin1696 = call i64 @llvm.smin.i64(i64 %526, i64 31)
  %527 = add nuw nsw i64 %smin1696, 1
  %smin1112.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1110.3, i64 31)
  %528 = add nuw nsw i64 %polly.indvar488.us.3, %205
  %529 = add nuw nsw i64 %polly.indvar488.us.3, %204
  %polly.access.add.Packed_MemRef_call2311502.us.3 = add nuw nsw i64 %528, 240
  %polly.access.Packed_MemRef_call2311503.us.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311502.us.3
  %_p_scalar_504.us.3 = load double, double* %polly.access.Packed_MemRef_call2311503.us.3, align 8
  %polly.access.Packed_MemRef_call1309511.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311502.us.3
  %_p_scalar_512.us.3 = load double, double* %polly.access.Packed_MemRef_call1309511.us.3, align 8
  %530 = mul nuw nsw i64 %529, 640
  %min.iters.check1697 = icmp ult i64 %smin1696, 3
  br i1 %min.iters.check1697, label %polly.loop_header491.us.3.preheader, label %vector.ph1698

vector.ph1698:                                    ; preds = %polly.loop_header484.us.3
  %n.vec1700 = and i64 %527, -4
  %broadcast.splatinsert1706 = insertelement <4 x double> poison, double %_p_scalar_504.us.3, i32 0
  %broadcast.splat1707 = shufflevector <4 x double> %broadcast.splatinsert1706, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1709 = insertelement <4 x double> poison, double %_p_scalar_512.us.3, i32 0
  %broadcast.splat1710 = shufflevector <4 x double> %broadcast.splatinsert1709, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1693

vector.body1693:                                  ; preds = %vector.body1693, %vector.ph1698
  %index1701 = phi i64 [ 0, %vector.ph1698 ], [ %index.next1702, %vector.body1693 ]
  %531 = add nuw nsw i64 %index1701, %185
  %532 = add nuw nsw i64 %index1701, 240
  %533 = getelementptr double, double* %Packed_MemRef_call1309, i64 %532
  %534 = bitcast double* %533 to <4 x double>*
  %wide.load1705 = load <4 x double>, <4 x double>* %534, align 8
  %535 = fmul fast <4 x double> %broadcast.splat1707, %wide.load1705
  %536 = getelementptr double, double* %Packed_MemRef_call2311, i64 %532
  %537 = bitcast double* %536 to <4 x double>*
  %wide.load1708 = load <4 x double>, <4 x double>* %537, align 8
  %538 = fmul fast <4 x double> %broadcast.splat1710, %wide.load1708
  %539 = shl i64 %531, 3
  %540 = add nuw nsw i64 %539, %530
  %541 = getelementptr i8, i8* %call, i64 %540
  %542 = bitcast i8* %541 to <4 x double>*
  %wide.load1711 = load <4 x double>, <4 x double>* %542, align 8, !alias.scope !91, !noalias !93
  %543 = fadd fast <4 x double> %538, %535
  %544 = fmul fast <4 x double> %543, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %545 = fadd fast <4 x double> %544, %wide.load1711
  %546 = bitcast i8* %541 to <4 x double>*
  store <4 x double> %545, <4 x double>* %546, align 8, !alias.scope !91, !noalias !93
  %index.next1702 = add i64 %index1701, 4
  %547 = icmp eq i64 %index.next1702, %n.vec1700
  br i1 %547, label %middle.block1691, label %vector.body1693, !llvm.loop !173

middle.block1691:                                 ; preds = %vector.body1693
  %cmp.n1704 = icmp eq i64 %527, %n.vec1700
  br i1 %cmp.n1704, label %polly.loop_exit493.us.3, label %polly.loop_header491.us.3.preheader

polly.loop_header491.us.3.preheader:              ; preds = %polly.loop_header484.us.3, %middle.block1691
  %polly.indvar494.us.3.ph = phi i64 [ 0, %polly.loop_header484.us.3 ], [ %n.vec1700, %middle.block1691 ]
  br label %polly.loop_header491.us.3

polly.loop_header491.us.3:                        ; preds = %polly.loop_header491.us.3.preheader, %polly.loop_header491.us.3
  %polly.indvar494.us.3 = phi i64 [ %polly.indvar_next495.us.3, %polly.loop_header491.us.3 ], [ %polly.indvar494.us.3.ph, %polly.loop_header491.us.3.preheader ]
  %548 = add nuw nsw i64 %polly.indvar494.us.3, %185
  %polly.access.add.Packed_MemRef_call1309498.us.3 = add nuw nsw i64 %polly.indvar494.us.3, 240
  %polly.access.Packed_MemRef_call1309499.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309498.us.3
  %_p_scalar_500.us.3 = load double, double* %polly.access.Packed_MemRef_call1309499.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_504.us.3, %_p_scalar_500.us.3
  %polly.access.Packed_MemRef_call2311507.us.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309498.us.3
  %_p_scalar_508.us.3 = load double, double* %polly.access.Packed_MemRef_call2311507.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_512.us.3, %_p_scalar_508.us.3
  %549 = shl i64 %548, 3
  %550 = add nuw nsw i64 %549, %530
  %scevgep513.us.3 = getelementptr i8, i8* %call, i64 %550
  %scevgep513514.us.3 = bitcast i8* %scevgep513.us.3 to double*
  %_p_scalar_515.us.3 = load double, double* %scevgep513514.us.3, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_515.us.3
  store double %p_add42.i79.us.3, double* %scevgep513514.us.3, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next495.us.3 = add nuw nsw i64 %polly.indvar494.us.3, 1
  %exitcond1113.3.not = icmp eq i64 %polly.indvar494.us.3, %smin1112.3
  br i1 %exitcond1113.3.not, label %polly.loop_exit493.us.3, label %polly.loop_header491.us.3, !llvm.loop !174

polly.loop_exit493.us.3:                          ; preds = %polly.loop_header491.us.3, %middle.block1691
  %polly.indvar_next489.us.3 = add nuw nsw i64 %polly.indvar488.us.3, 1
  %indvars.iv.next1111.3 = add nuw nsw i64 %indvars.iv1110.3, 1
  %exitcond1120.3.not = icmp eq i64 %polly.indvar488.us.3, %smax1119
  br i1 %exitcond1120.3.not, label %polly.loop_exit479, label %polly.loop_header484.us.3

polly.loop_header640.1:                           ; preds = %polly.loop_header640, %polly.loop_header640.1
  %polly.indvar643.1 = phi i64 [ %polly.indvar_next644.1, %polly.loop_header640.1 ], [ 0, %polly.loop_header640 ]
  %551 = add nuw nsw i64 %polly.indvar643.1, %262
  %polly.access.mul.call2647.1 = mul nuw nsw i64 %551, 60
  %polly.access.add.call2648.1 = add nuw nsw i64 %252, %polly.access.mul.call2647.1
  %polly.access.call2649.1 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2648.1
  %polly.access.call2649.load.1 = load double, double* %polly.access.call2649.1, align 8, !alias.scope !114, !noalias !119
  %polly.access.add.Packed_MemRef_call2523.1 = add nuw nsw i64 %polly.indvar643.1, 80
  %polly.access.Packed_MemRef_call2523.1 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523.1
  store double %polly.access.call2649.load.1, double* %polly.access.Packed_MemRef_call2523.1, align 8
  %polly.indvar_next644.1 = add nuw nsw i64 %polly.indvar643.1, 1
  %exitcond1129.1.not = icmp eq i64 %polly.indvar_next644.1, %indvars.iv1127
  br i1 %exitcond1129.1.not, label %polly.loop_header640.2, label %polly.loop_header640.1

polly.loop_header640.2:                           ; preds = %polly.loop_header640.1, %polly.loop_header640.2
  %polly.indvar643.2 = phi i64 [ %polly.indvar_next644.2, %polly.loop_header640.2 ], [ 0, %polly.loop_header640.1 ]
  %552 = add nuw nsw i64 %polly.indvar643.2, %262
  %polly.access.mul.call2647.2 = mul nuw nsw i64 %552, 60
  %polly.access.add.call2648.2 = add nuw nsw i64 %253, %polly.access.mul.call2647.2
  %polly.access.call2649.2 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2648.2
  %polly.access.call2649.load.2 = load double, double* %polly.access.call2649.2, align 8, !alias.scope !114, !noalias !119
  %polly.access.add.Packed_MemRef_call2523.2 = add nuw nsw i64 %polly.indvar643.2, 160
  %polly.access.Packed_MemRef_call2523.2 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523.2
  store double %polly.access.call2649.load.2, double* %polly.access.Packed_MemRef_call2523.2, align 8
  %polly.indvar_next644.2 = add nuw nsw i64 %polly.indvar643.2, 1
  %exitcond1129.2.not = icmp eq i64 %polly.indvar_next644.2, %indvars.iv1127
  br i1 %exitcond1129.2.not, label %polly.loop_header640.3, label %polly.loop_header640.2

polly.loop_header640.3:                           ; preds = %polly.loop_header640.2, %polly.loop_header640.3
  %polly.indvar643.3 = phi i64 [ %polly.indvar_next644.3, %polly.loop_header640.3 ], [ 0, %polly.loop_header640.2 ]
  %553 = add nuw nsw i64 %polly.indvar643.3, %262
  %polly.access.mul.call2647.3 = mul nuw nsw i64 %553, 60
  %polly.access.add.call2648.3 = add nuw nsw i64 %254, %polly.access.mul.call2647.3
  %polly.access.call2649.3 = getelementptr double, double* %polly.access.cast.call2742, i64 %polly.access.add.call2648.3
  %polly.access.call2649.load.3 = load double, double* %polly.access.call2649.3, align 8, !alias.scope !114, !noalias !119
  %polly.access.add.Packed_MemRef_call2523.3 = add nuw nsw i64 %polly.indvar643.3, 240
  %polly.access.Packed_MemRef_call2523.3 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523.3
  store double %polly.access.call2649.load.3, double* %polly.access.Packed_MemRef_call2523.3, align 8
  %polly.indvar_next644.3 = add nuw nsw i64 %polly.indvar643.3, 1
  %exitcond1129.3.not = icmp eq i64 %polly.indvar_next644.3, %indvars.iv1127
  br i1 %exitcond1129.3.not, label %polly.loop_exit642.3, label %polly.loop_header640.3

polly.loop_exit642.3:                             ; preds = %polly.loop_header640.3
  %554 = add nsw i64 %261, 79
  br label %polly.loop_header650

polly.loop_header675.1:                           ; preds = %polly.loop_header675, %polly.loop_header675.1
  %polly.indvar679.1 = phi i64 [ %polly.indvar_next680.1, %polly.loop_header675.1 ], [ %282, %polly.loop_header675 ]
  %555 = add nuw nsw i64 %polly.indvar679.1, %262
  %polly.access.mul.call1683.1 = mul nuw nsw i64 %555, 60
  %polly.access.add.call1684.1 = add nuw nsw i64 %252, %polly.access.mul.call1683.1
  %polly.access.call1685.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.1
  %polly.access.call1685.load.1 = load double, double* %polly.access.call1685.1, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521687.1 = add nuw nsw i64 %polly.indvar679.1, 80
  %polly.access.Packed_MemRef_call1521688.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.1
  store double %polly.access.call1685.load.1, double* %polly.access.Packed_MemRef_call1521688.1, align 8
  %polly.indvar_next680.1 = add nuw nsw i64 %polly.indvar679.1, 1
  %polly.loop_cond681.not.not.1 = icmp ult i64 %polly.indvar679.1, %285
  br i1 %polly.loop_cond681.not.not.1, label %polly.loop_header675.1, label %polly.loop_header675.2

polly.loop_header675.2:                           ; preds = %polly.loop_header675.1, %polly.loop_header675.2
  %polly.indvar679.2 = phi i64 [ %polly.indvar_next680.2, %polly.loop_header675.2 ], [ %282, %polly.loop_header675.1 ]
  %556 = add nuw nsw i64 %polly.indvar679.2, %262
  %polly.access.mul.call1683.2 = mul nuw nsw i64 %556, 60
  %polly.access.add.call1684.2 = add nuw nsw i64 %253, %polly.access.mul.call1683.2
  %polly.access.call1685.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.2
  %polly.access.call1685.load.2 = load double, double* %polly.access.call1685.2, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521687.2 = add nuw nsw i64 %polly.indvar679.2, 160
  %polly.access.Packed_MemRef_call1521688.2 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.2
  store double %polly.access.call1685.load.2, double* %polly.access.Packed_MemRef_call1521688.2, align 8
  %polly.indvar_next680.2 = add nuw nsw i64 %polly.indvar679.2, 1
  %polly.loop_cond681.not.not.2 = icmp ult i64 %polly.indvar679.2, %285
  br i1 %polly.loop_cond681.not.not.2, label %polly.loop_header675.2, label %polly.loop_header675.3

polly.loop_header675.3:                           ; preds = %polly.loop_header675.2, %polly.loop_header675.3
  %polly.indvar679.3 = phi i64 [ %polly.indvar_next680.3, %polly.loop_header675.3 ], [ %282, %polly.loop_header675.2 ]
  %557 = add nuw nsw i64 %polly.indvar679.3, %262
  %polly.access.mul.call1683.3 = mul nuw nsw i64 %557, 60
  %polly.access.add.call1684.3 = add nuw nsw i64 %254, %polly.access.mul.call1683.3
  %polly.access.call1685.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.3
  %polly.access.call1685.load.3 = load double, double* %polly.access.call1685.3, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521687.3 = add nuw nsw i64 %polly.indvar679.3, 240
  %polly.access.Packed_MemRef_call1521688.3 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.3
  store double %polly.access.call1685.load.3, double* %polly.access.Packed_MemRef_call1521688.3, align 8
  %polly.indvar_next680.3 = add nuw nsw i64 %polly.indvar679.3, 1
  %polly.loop_cond681.not.not.3 = icmp ult i64 %polly.indvar679.3, %285
  br i1 %polly.loop_cond681.not.not.3, label %polly.loop_header675.3, label %polly.loop_header689.preheader

polly.loop_header663.us.1:                        ; preds = %polly.loop_header663.us.1.preheader, %polly.loop_header663.us.1
  %polly.indvar667.us.1 = phi i64 [ %polly.indvar_next668.us.1, %polly.loop_header663.us.1 ], [ 0, %polly.loop_header663.us.1.preheader ]
  %558 = add nuw nsw i64 %polly.indvar667.us.1, %262
  %polly.access.mul.call1671.us.1 = mul nuw nsw i64 %558, 60
  %polly.access.add.call1672.us.1 = add nuw nsw i64 %252, %polly.access.mul.call1671.us.1
  %polly.access.call1673.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1672.us.1
  %polly.access.call1673.load.us.1 = load double, double* %polly.access.call1673.us.1, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521.us.1 = add nuw nsw i64 %polly.indvar667.us.1, 80
  %polly.access.Packed_MemRef_call1521.us.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521.us.1
  store double %polly.access.call1673.load.us.1, double* %polly.access.Packed_MemRef_call1521.us.1, align 8
  %polly.indvar_next668.us.1 = add nuw i64 %polly.indvar667.us.1, 1
  %exitcond1132.1.not = icmp eq i64 %polly.indvar_next668.us.1, 32
  br i1 %exitcond1132.1.not, label %polly.loop_exit665.loopexit.us.1, label %polly.loop_header663.us.1

polly.loop_exit665.loopexit.us.1:                 ; preds = %polly.loop_header663.us.1
  br i1 %polly.loop_guard678.not, label %polly.loop_header663.us.2.preheader, label %polly.loop_header675.us.1

polly.loop_header675.us.1:                        ; preds = %polly.loop_exit665.loopexit.us.1, %polly.loop_header675.us.1
  %polly.indvar679.us.1 = phi i64 [ %polly.indvar_next680.us.1, %polly.loop_header675.us.1 ], [ %282, %polly.loop_exit665.loopexit.us.1 ]
  %559 = add nuw nsw i64 %polly.indvar679.us.1, %262
  %polly.access.mul.call1683.us.1 = mul nuw nsw i64 %559, 60
  %polly.access.add.call1684.us.1 = add nuw nsw i64 %252, %polly.access.mul.call1683.us.1
  %polly.access.call1685.us.1 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.us.1
  %polly.access.call1685.load.us.1 = load double, double* %polly.access.call1685.us.1, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521687.us.1 = add nuw nsw i64 %polly.indvar679.us.1, 80
  %polly.access.Packed_MemRef_call1521688.us.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.us.1
  store double %polly.access.call1685.load.us.1, double* %polly.access.Packed_MemRef_call1521688.us.1, align 8
  %polly.indvar_next680.us.1 = add nuw nsw i64 %polly.indvar679.us.1, 1
  %polly.loop_cond681.not.not.us.1 = icmp ult i64 %polly.indvar679.us.1, %285
  br i1 %polly.loop_cond681.not.not.us.1, label %polly.loop_header675.us.1, label %polly.loop_header663.us.2.preheader

polly.loop_header663.us.2.preheader:              ; preds = %polly.loop_header675.us.1, %polly.loop_exit665.loopexit.us.1
  br label %polly.loop_header663.us.2

polly.loop_header663.us.2:                        ; preds = %polly.loop_header663.us.2.preheader, %polly.loop_header663.us.2
  %polly.indvar667.us.2 = phi i64 [ %polly.indvar_next668.us.2, %polly.loop_header663.us.2 ], [ 0, %polly.loop_header663.us.2.preheader ]
  %560 = add nuw nsw i64 %polly.indvar667.us.2, %262
  %polly.access.mul.call1671.us.2 = mul nuw nsw i64 %560, 60
  %polly.access.add.call1672.us.2 = add nuw nsw i64 %253, %polly.access.mul.call1671.us.2
  %polly.access.call1673.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1672.us.2
  %polly.access.call1673.load.us.2 = load double, double* %polly.access.call1673.us.2, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521.us.2 = add nuw nsw i64 %polly.indvar667.us.2, 160
  %polly.access.Packed_MemRef_call1521.us.2 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521.us.2
  store double %polly.access.call1673.load.us.2, double* %polly.access.Packed_MemRef_call1521.us.2, align 8
  %polly.indvar_next668.us.2 = add nuw i64 %polly.indvar667.us.2, 1
  %exitcond1132.2.not = icmp eq i64 %polly.indvar_next668.us.2, 32
  br i1 %exitcond1132.2.not, label %polly.loop_exit665.loopexit.us.2, label %polly.loop_header663.us.2

polly.loop_exit665.loopexit.us.2:                 ; preds = %polly.loop_header663.us.2
  br i1 %polly.loop_guard678.not, label %polly.loop_header663.us.3.preheader, label %polly.loop_header675.us.2

polly.loop_header675.us.2:                        ; preds = %polly.loop_exit665.loopexit.us.2, %polly.loop_header675.us.2
  %polly.indvar679.us.2 = phi i64 [ %polly.indvar_next680.us.2, %polly.loop_header675.us.2 ], [ %282, %polly.loop_exit665.loopexit.us.2 ]
  %561 = add nuw nsw i64 %polly.indvar679.us.2, %262
  %polly.access.mul.call1683.us.2 = mul nuw nsw i64 %561, 60
  %polly.access.add.call1684.us.2 = add nuw nsw i64 %253, %polly.access.mul.call1683.us.2
  %polly.access.call1685.us.2 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.us.2
  %polly.access.call1685.load.us.2 = load double, double* %polly.access.call1685.us.2, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521687.us.2 = add nuw nsw i64 %polly.indvar679.us.2, 160
  %polly.access.Packed_MemRef_call1521688.us.2 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.us.2
  store double %polly.access.call1685.load.us.2, double* %polly.access.Packed_MemRef_call1521688.us.2, align 8
  %polly.indvar_next680.us.2 = add nuw nsw i64 %polly.indvar679.us.2, 1
  %polly.loop_cond681.not.not.us.2 = icmp ult i64 %polly.indvar679.us.2, %285
  br i1 %polly.loop_cond681.not.not.us.2, label %polly.loop_header675.us.2, label %polly.loop_header663.us.3.preheader

polly.loop_header663.us.3.preheader:              ; preds = %polly.loop_header675.us.2, %polly.loop_exit665.loopexit.us.2
  br label %polly.loop_header663.us.3

polly.loop_header663.us.3:                        ; preds = %polly.loop_header663.us.3.preheader, %polly.loop_header663.us.3
  %polly.indvar667.us.3 = phi i64 [ %polly.indvar_next668.us.3, %polly.loop_header663.us.3 ], [ 0, %polly.loop_header663.us.3.preheader ]
  %562 = add nuw nsw i64 %polly.indvar667.us.3, %262
  %polly.access.mul.call1671.us.3 = mul nuw nsw i64 %562, 60
  %polly.access.add.call1672.us.3 = add nuw nsw i64 %254, %polly.access.mul.call1671.us.3
  %polly.access.call1673.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1672.us.3
  %polly.access.call1673.load.us.3 = load double, double* %polly.access.call1673.us.3, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521.us.3 = add nuw nsw i64 %polly.indvar667.us.3, 240
  %polly.access.Packed_MemRef_call1521.us.3 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521.us.3
  store double %polly.access.call1673.load.us.3, double* %polly.access.Packed_MemRef_call1521.us.3, align 8
  %polly.indvar_next668.us.3 = add nuw i64 %polly.indvar667.us.3, 1
  %exitcond1132.3.not = icmp eq i64 %polly.indvar_next668.us.3, 32
  br i1 %exitcond1132.3.not, label %polly.loop_exit665.loopexit.us.3, label %polly.loop_header663.us.3

polly.loop_exit665.loopexit.us.3:                 ; preds = %polly.loop_header663.us.3
  br i1 %polly.loop_guard678.not, label %polly.loop_header689.preheader, label %polly.loop_header675.us.3

polly.loop_header675.us.3:                        ; preds = %polly.loop_exit665.loopexit.us.3, %polly.loop_header675.us.3
  %polly.indvar679.us.3 = phi i64 [ %polly.indvar_next680.us.3, %polly.loop_header675.us.3 ], [ %282, %polly.loop_exit665.loopexit.us.3 ]
  %563 = add nuw nsw i64 %polly.indvar679.us.3, %262
  %polly.access.mul.call1683.us.3 = mul nuw nsw i64 %563, 60
  %polly.access.add.call1684.us.3 = add nuw nsw i64 %254, %polly.access.mul.call1683.us.3
  %polly.access.call1685.us.3 = getelementptr double, double* %polly.access.cast.call1732, i64 %polly.access.add.call1684.us.3
  %polly.access.call1685.load.us.3 = load double, double* %polly.access.call1685.us.3, align 8, !alias.scope !113, !noalias !120
  %polly.access.add.Packed_MemRef_call1521687.us.3 = add nuw nsw i64 %polly.indvar679.us.3, 240
  %polly.access.Packed_MemRef_call1521688.us.3 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521687.us.3
  store double %polly.access.call1685.load.us.3, double* %polly.access.Packed_MemRef_call1521688.us.3, align 8
  %polly.indvar_next680.us.3 = add nuw nsw i64 %polly.indvar679.us.3, 1
  %polly.loop_cond681.not.not.us.3 = icmp ult i64 %polly.indvar679.us.3, %285
  br i1 %polly.loop_cond681.not.not.us.3, label %polly.loop_header675.us.3, label %polly.loop_header689.preheader

polly.loop_header696.us.1:                        ; preds = %polly.loop_exit705.us, %polly.loop_exit705.us.1
  %indvars.iv1136.1 = phi i64 [ %indvars.iv.next1137.1, %polly.loop_exit705.us.1 ], [ %indvars.iv1134, %polly.loop_exit705.us ]
  %polly.indvar700.us.1 = phi i64 [ %polly.indvar_next701.us.1, %polly.loop_exit705.us.1 ], [ 0, %polly.loop_exit705.us ]
  %564 = add i64 %269, %polly.indvar700.us.1
  %smin1619 = call i64 @llvm.smin.i64(i64 %564, i64 31)
  %565 = add nuw nsw i64 %smin1619, 1
  %566 = mul nuw nsw i64 %polly.indvar700.us.1, 640
  %567 = add i64 %273, %polly.indvar700.us.1
  %smin1607 = call i64 @llvm.smin.i64(i64 %567, i64 31)
  %568 = shl nuw nsw i64 %smin1607, 3
  %smin1138.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1136.1, i64 31)
  %569 = add nuw nsw i64 %polly.indvar700.us.1, %282
  %570 = add nuw nsw i64 %polly.indvar700.us.1, %281
  %polly.access.add.Packed_MemRef_call2523714.us.1 = add nuw nsw i64 %569, 80
  %polly.access.Packed_MemRef_call2523715.us.1 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523714.us.1
  %_p_scalar_716.us.1 = load double, double* %polly.access.Packed_MemRef_call2523715.us.1, align 8
  %polly.access.Packed_MemRef_call1521723.us.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call2523714.us.1
  %_p_scalar_724.us.1 = load double, double* %polly.access.Packed_MemRef_call1521723.us.1, align 8
  %571 = mul nuw nsw i64 %570, 640
  %min.iters.check1620 = icmp ult i64 %smin1619, 3
  br i1 %min.iters.check1620, label %polly.loop_header703.us.1.preheader, label %vector.memcheck1604

vector.memcheck1604:                              ; preds = %polly.loop_header696.us.1
  %scevgep1611 = getelementptr i8, i8* %scevgep1610, i64 %568
  %572 = add i64 %272, %566
  %scevgep1606 = getelementptr i8, i8* %call, i64 %572
  %scevgep1608 = getelementptr i8, i8* %scevgep1606, i64 %568
  %573 = add i64 %271, %566
  %scevgep1605 = getelementptr i8, i8* %call, i64 %573
  %bound01612 = icmp ult i8* %scevgep1605, %scevgep1611
  %bound11613 = icmp ult i8* %scevgep1609, %scevgep1608
  %found.conflict1614 = and i1 %bound01612, %bound11613
  br i1 %found.conflict1614, label %polly.loop_header703.us.1.preheader, label %vector.ph1621

vector.ph1621:                                    ; preds = %vector.memcheck1604
  %n.vec1623 = and i64 %565, -4
  %broadcast.splatinsert1629 = insertelement <4 x double> poison, double %_p_scalar_716.us.1, i32 0
  %broadcast.splat1630 = shufflevector <4 x double> %broadcast.splatinsert1629, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1632 = insertelement <4 x double> poison, double %_p_scalar_724.us.1, i32 0
  %broadcast.splat1633 = shufflevector <4 x double> %broadcast.splatinsert1632, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1618

vector.body1618:                                  ; preds = %vector.body1618, %vector.ph1621
  %index1624 = phi i64 [ 0, %vector.ph1621 ], [ %index.next1625, %vector.body1618 ]
  %574 = add nuw nsw i64 %index1624, %262
  %575 = add nuw nsw i64 %index1624, 80
  %576 = getelementptr double, double* %Packed_MemRef_call1521, i64 %575
  %577 = bitcast double* %576 to <4 x double>*
  %wide.load1628 = load <4 x double>, <4 x double>* %577, align 8, !alias.scope !175
  %578 = fmul fast <4 x double> %broadcast.splat1630, %wide.load1628
  %579 = getelementptr double, double* %Packed_MemRef_call2523, i64 %575
  %580 = bitcast double* %579 to <4 x double>*
  %wide.load1631 = load <4 x double>, <4 x double>* %580, align 8
  %581 = fmul fast <4 x double> %broadcast.splat1633, %wide.load1631
  %582 = shl i64 %574, 3
  %583 = add nuw nsw i64 %582, %571
  %584 = getelementptr i8, i8* %call, i64 %583
  %585 = bitcast i8* %584 to <4 x double>*
  %wide.load1634 = load <4 x double>, <4 x double>* %585, align 8, !alias.scope !178, !noalias !180
  %586 = fadd fast <4 x double> %581, %578
  %587 = fmul fast <4 x double> %586, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %588 = fadd fast <4 x double> %587, %wide.load1634
  %589 = bitcast i8* %584 to <4 x double>*
  store <4 x double> %588, <4 x double>* %589, align 8, !alias.scope !178, !noalias !180
  %index.next1625 = add i64 %index1624, 4
  %590 = icmp eq i64 %index.next1625, %n.vec1623
  br i1 %590, label %middle.block1616, label %vector.body1618, !llvm.loop !181

middle.block1616:                                 ; preds = %vector.body1618
  %cmp.n1627 = icmp eq i64 %565, %n.vec1623
  br i1 %cmp.n1627, label %polly.loop_exit705.us.1, label %polly.loop_header703.us.1.preheader

polly.loop_header703.us.1.preheader:              ; preds = %vector.memcheck1604, %polly.loop_header696.us.1, %middle.block1616
  %polly.indvar706.us.1.ph = phi i64 [ 0, %vector.memcheck1604 ], [ 0, %polly.loop_header696.us.1 ], [ %n.vec1623, %middle.block1616 ]
  br label %polly.loop_header703.us.1

polly.loop_header703.us.1:                        ; preds = %polly.loop_header703.us.1.preheader, %polly.loop_header703.us.1
  %polly.indvar706.us.1 = phi i64 [ %polly.indvar_next707.us.1, %polly.loop_header703.us.1 ], [ %polly.indvar706.us.1.ph, %polly.loop_header703.us.1.preheader ]
  %591 = add nuw nsw i64 %polly.indvar706.us.1, %262
  %polly.access.add.Packed_MemRef_call1521710.us.1 = add nuw nsw i64 %polly.indvar706.us.1, 80
  %polly.access.Packed_MemRef_call1521711.us.1 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521710.us.1
  %_p_scalar_712.us.1 = load double, double* %polly.access.Packed_MemRef_call1521711.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_716.us.1, %_p_scalar_712.us.1
  %polly.access.Packed_MemRef_call2523719.us.1 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call1521710.us.1
  %_p_scalar_720.us.1 = load double, double* %polly.access.Packed_MemRef_call2523719.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_724.us.1, %_p_scalar_720.us.1
  %592 = shl i64 %591, 3
  %593 = add nuw nsw i64 %592, %571
  %scevgep725.us.1 = getelementptr i8, i8* %call, i64 %593
  %scevgep725726.us.1 = bitcast i8* %scevgep725.us.1 to double*
  %_p_scalar_727.us.1 = load double, double* %scevgep725726.us.1, align 8, !alias.scope !110, !noalias !112
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_727.us.1
  store double %p_add42.i.us.1, double* %scevgep725726.us.1, align 8, !alias.scope !110, !noalias !112
  %polly.indvar_next707.us.1 = add nuw nsw i64 %polly.indvar706.us.1, 1
  %exitcond1139.1.not = icmp eq i64 %polly.indvar706.us.1, %smin1138.1
  br i1 %exitcond1139.1.not, label %polly.loop_exit705.us.1, label %polly.loop_header703.us.1, !llvm.loop !182

polly.loop_exit705.us.1:                          ; preds = %polly.loop_header703.us.1, %middle.block1616
  %polly.indvar_next701.us.1 = add nuw nsw i64 %polly.indvar700.us.1, 1
  %indvars.iv.next1137.1 = add nuw nsw i64 %indvars.iv1136.1, 1
  %exitcond1146.1.not = icmp eq i64 %polly.indvar700.us.1, %smax1145
  br i1 %exitcond1146.1.not, label %polly.loop_header696.us.2, label %polly.loop_header696.us.1

polly.loop_header696.us.2:                        ; preds = %polly.loop_exit705.us.1, %polly.loop_exit705.us.2
  %indvars.iv1136.2 = phi i64 [ %indvars.iv.next1137.2, %polly.loop_exit705.us.2 ], [ %indvars.iv1134, %polly.loop_exit705.us.1 ]
  %polly.indvar700.us.2 = phi i64 [ %polly.indvar_next701.us.2, %polly.loop_exit705.us.2 ], [ 0, %polly.loop_exit705.us.1 ]
  %594 = add i64 %274, %polly.indvar700.us.2
  %smin1588 = call i64 @llvm.smin.i64(i64 %594, i64 31)
  %595 = add nuw nsw i64 %smin1588, 1
  %596 = mul nuw nsw i64 %polly.indvar700.us.2, 640
  %597 = add i64 %278, %polly.indvar700.us.2
  %smin1576 = call i64 @llvm.smin.i64(i64 %597, i64 31)
  %598 = shl nuw nsw i64 %smin1576, 3
  %smin1138.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1136.2, i64 31)
  %599 = add nuw nsw i64 %polly.indvar700.us.2, %282
  %600 = add nuw nsw i64 %polly.indvar700.us.2, %281
  %polly.access.add.Packed_MemRef_call2523714.us.2 = add nuw nsw i64 %599, 160
  %polly.access.Packed_MemRef_call2523715.us.2 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523714.us.2
  %_p_scalar_716.us.2 = load double, double* %polly.access.Packed_MemRef_call2523715.us.2, align 8
  %polly.access.Packed_MemRef_call1521723.us.2 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call2523714.us.2
  %_p_scalar_724.us.2 = load double, double* %polly.access.Packed_MemRef_call1521723.us.2, align 8
  %601 = mul nuw nsw i64 %600, 640
  %min.iters.check1589 = icmp ult i64 %smin1588, 3
  br i1 %min.iters.check1589, label %polly.loop_header703.us.2.preheader, label %vector.memcheck1573

vector.memcheck1573:                              ; preds = %polly.loop_header696.us.2
  %scevgep1580 = getelementptr i8, i8* %scevgep1579, i64 %598
  %602 = add i64 %277, %596
  %scevgep1575 = getelementptr i8, i8* %call, i64 %602
  %scevgep1577 = getelementptr i8, i8* %scevgep1575, i64 %598
  %603 = add i64 %276, %596
  %scevgep1574 = getelementptr i8, i8* %call, i64 %603
  %bound01581 = icmp ult i8* %scevgep1574, %scevgep1580
  %bound11582 = icmp ult i8* %scevgep1578, %scevgep1577
  %found.conflict1583 = and i1 %bound01581, %bound11582
  br i1 %found.conflict1583, label %polly.loop_header703.us.2.preheader, label %vector.ph1590

vector.ph1590:                                    ; preds = %vector.memcheck1573
  %n.vec1592 = and i64 %595, -4
  %broadcast.splatinsert1598 = insertelement <4 x double> poison, double %_p_scalar_716.us.2, i32 0
  %broadcast.splat1599 = shufflevector <4 x double> %broadcast.splatinsert1598, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1601 = insertelement <4 x double> poison, double %_p_scalar_724.us.2, i32 0
  %broadcast.splat1602 = shufflevector <4 x double> %broadcast.splatinsert1601, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1587

vector.body1587:                                  ; preds = %vector.body1587, %vector.ph1590
  %index1593 = phi i64 [ 0, %vector.ph1590 ], [ %index.next1594, %vector.body1587 ]
  %604 = add nuw nsw i64 %index1593, %262
  %605 = add nuw nsw i64 %index1593, 160
  %606 = getelementptr double, double* %Packed_MemRef_call1521, i64 %605
  %607 = bitcast double* %606 to <4 x double>*
  %wide.load1597 = load <4 x double>, <4 x double>* %607, align 8, !alias.scope !183
  %608 = fmul fast <4 x double> %broadcast.splat1599, %wide.load1597
  %609 = getelementptr double, double* %Packed_MemRef_call2523, i64 %605
  %610 = bitcast double* %609 to <4 x double>*
  %wide.load1600 = load <4 x double>, <4 x double>* %610, align 8
  %611 = fmul fast <4 x double> %broadcast.splat1602, %wide.load1600
  %612 = shl i64 %604, 3
  %613 = add nuw nsw i64 %612, %601
  %614 = getelementptr i8, i8* %call, i64 %613
  %615 = bitcast i8* %614 to <4 x double>*
  %wide.load1603 = load <4 x double>, <4 x double>* %615, align 8, !alias.scope !186, !noalias !188
  %616 = fadd fast <4 x double> %611, %608
  %617 = fmul fast <4 x double> %616, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %618 = fadd fast <4 x double> %617, %wide.load1603
  %619 = bitcast i8* %614 to <4 x double>*
  store <4 x double> %618, <4 x double>* %619, align 8, !alias.scope !186, !noalias !188
  %index.next1594 = add i64 %index1593, 4
  %620 = icmp eq i64 %index.next1594, %n.vec1592
  br i1 %620, label %middle.block1585, label %vector.body1587, !llvm.loop !189

middle.block1585:                                 ; preds = %vector.body1587
  %cmp.n1596 = icmp eq i64 %595, %n.vec1592
  br i1 %cmp.n1596, label %polly.loop_exit705.us.2, label %polly.loop_header703.us.2.preheader

polly.loop_header703.us.2.preheader:              ; preds = %vector.memcheck1573, %polly.loop_header696.us.2, %middle.block1585
  %polly.indvar706.us.2.ph = phi i64 [ 0, %vector.memcheck1573 ], [ 0, %polly.loop_header696.us.2 ], [ %n.vec1592, %middle.block1585 ]
  br label %polly.loop_header703.us.2

polly.loop_header703.us.2:                        ; preds = %polly.loop_header703.us.2.preheader, %polly.loop_header703.us.2
  %polly.indvar706.us.2 = phi i64 [ %polly.indvar_next707.us.2, %polly.loop_header703.us.2 ], [ %polly.indvar706.us.2.ph, %polly.loop_header703.us.2.preheader ]
  %621 = add nuw nsw i64 %polly.indvar706.us.2, %262
  %polly.access.add.Packed_MemRef_call1521710.us.2 = add nuw nsw i64 %polly.indvar706.us.2, 160
  %polly.access.Packed_MemRef_call1521711.us.2 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521710.us.2
  %_p_scalar_712.us.2 = load double, double* %polly.access.Packed_MemRef_call1521711.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_716.us.2, %_p_scalar_712.us.2
  %polly.access.Packed_MemRef_call2523719.us.2 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call1521710.us.2
  %_p_scalar_720.us.2 = load double, double* %polly.access.Packed_MemRef_call2523719.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_724.us.2, %_p_scalar_720.us.2
  %622 = shl i64 %621, 3
  %623 = add nuw nsw i64 %622, %601
  %scevgep725.us.2 = getelementptr i8, i8* %call, i64 %623
  %scevgep725726.us.2 = bitcast i8* %scevgep725.us.2 to double*
  %_p_scalar_727.us.2 = load double, double* %scevgep725726.us.2, align 8, !alias.scope !110, !noalias !112
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_727.us.2
  store double %p_add42.i.us.2, double* %scevgep725726.us.2, align 8, !alias.scope !110, !noalias !112
  %polly.indvar_next707.us.2 = add nuw nsw i64 %polly.indvar706.us.2, 1
  %exitcond1139.2.not = icmp eq i64 %polly.indvar706.us.2, %smin1138.2
  br i1 %exitcond1139.2.not, label %polly.loop_exit705.us.2, label %polly.loop_header703.us.2, !llvm.loop !190

polly.loop_exit705.us.2:                          ; preds = %polly.loop_header703.us.2, %middle.block1585
  %polly.indvar_next701.us.2 = add nuw nsw i64 %polly.indvar700.us.2, 1
  %indvars.iv.next1137.2 = add nuw nsw i64 %indvars.iv1136.2, 1
  %exitcond1146.2.not = icmp eq i64 %polly.indvar700.us.2, %smax1145
  br i1 %exitcond1146.2.not, label %polly.loop_header696.us.3, label %polly.loop_header696.us.2

polly.loop_header696.us.3:                        ; preds = %polly.loop_exit705.us.2, %polly.loop_exit705.us.3
  %indvars.iv1136.3 = phi i64 [ %indvars.iv.next1137.3, %polly.loop_exit705.us.3 ], [ %indvars.iv1134, %polly.loop_exit705.us.2 ]
  %polly.indvar700.us.3 = phi i64 [ %polly.indvar_next701.us.3, %polly.loop_exit705.us.3 ], [ 0, %polly.loop_exit705.us.2 ]
  %624 = add i64 %279, %polly.indvar700.us.3
  %smin1557 = call i64 @llvm.smin.i64(i64 %624, i64 31)
  %625 = add nuw nsw i64 %smin1557, 1
  %smin1138.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1136.3, i64 31)
  %626 = add nuw nsw i64 %polly.indvar700.us.3, %282
  %627 = add nuw nsw i64 %polly.indvar700.us.3, %281
  %polly.access.add.Packed_MemRef_call2523714.us.3 = add nuw nsw i64 %626, 240
  %polly.access.Packed_MemRef_call2523715.us.3 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call2523714.us.3
  %_p_scalar_716.us.3 = load double, double* %polly.access.Packed_MemRef_call2523715.us.3, align 8
  %polly.access.Packed_MemRef_call1521723.us.3 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call2523714.us.3
  %_p_scalar_724.us.3 = load double, double* %polly.access.Packed_MemRef_call1521723.us.3, align 8
  %628 = mul nuw nsw i64 %627, 640
  %min.iters.check1558 = icmp ult i64 %smin1557, 3
  br i1 %min.iters.check1558, label %polly.loop_header703.us.3.preheader, label %vector.ph1559

vector.ph1559:                                    ; preds = %polly.loop_header696.us.3
  %n.vec1561 = and i64 %625, -4
  %broadcast.splatinsert1567 = insertelement <4 x double> poison, double %_p_scalar_716.us.3, i32 0
  %broadcast.splat1568 = shufflevector <4 x double> %broadcast.splatinsert1567, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1570 = insertelement <4 x double> poison, double %_p_scalar_724.us.3, i32 0
  %broadcast.splat1571 = shufflevector <4 x double> %broadcast.splatinsert1570, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1554

vector.body1554:                                  ; preds = %vector.body1554, %vector.ph1559
  %index1562 = phi i64 [ 0, %vector.ph1559 ], [ %index.next1563, %vector.body1554 ]
  %629 = add nuw nsw i64 %index1562, %262
  %630 = add nuw nsw i64 %index1562, 240
  %631 = getelementptr double, double* %Packed_MemRef_call1521, i64 %630
  %632 = bitcast double* %631 to <4 x double>*
  %wide.load1566 = load <4 x double>, <4 x double>* %632, align 8
  %633 = fmul fast <4 x double> %broadcast.splat1568, %wide.load1566
  %634 = getelementptr double, double* %Packed_MemRef_call2523, i64 %630
  %635 = bitcast double* %634 to <4 x double>*
  %wide.load1569 = load <4 x double>, <4 x double>* %635, align 8
  %636 = fmul fast <4 x double> %broadcast.splat1571, %wide.load1569
  %637 = shl i64 %629, 3
  %638 = add nuw nsw i64 %637, %628
  %639 = getelementptr i8, i8* %call, i64 %638
  %640 = bitcast i8* %639 to <4 x double>*
  %wide.load1572 = load <4 x double>, <4 x double>* %640, align 8, !alias.scope !110, !noalias !112
  %641 = fadd fast <4 x double> %636, %633
  %642 = fmul fast <4 x double> %641, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %643 = fadd fast <4 x double> %642, %wide.load1572
  %644 = bitcast i8* %639 to <4 x double>*
  store <4 x double> %643, <4 x double>* %644, align 8, !alias.scope !110, !noalias !112
  %index.next1563 = add i64 %index1562, 4
  %645 = icmp eq i64 %index.next1563, %n.vec1561
  br i1 %645, label %middle.block1552, label %vector.body1554, !llvm.loop !191

middle.block1552:                                 ; preds = %vector.body1554
  %cmp.n1565 = icmp eq i64 %625, %n.vec1561
  br i1 %cmp.n1565, label %polly.loop_exit705.us.3, label %polly.loop_header703.us.3.preheader

polly.loop_header703.us.3.preheader:              ; preds = %polly.loop_header696.us.3, %middle.block1552
  %polly.indvar706.us.3.ph = phi i64 [ 0, %polly.loop_header696.us.3 ], [ %n.vec1561, %middle.block1552 ]
  br label %polly.loop_header703.us.3

polly.loop_header703.us.3:                        ; preds = %polly.loop_header703.us.3.preheader, %polly.loop_header703.us.3
  %polly.indvar706.us.3 = phi i64 [ %polly.indvar_next707.us.3, %polly.loop_header703.us.3 ], [ %polly.indvar706.us.3.ph, %polly.loop_header703.us.3.preheader ]
  %646 = add nuw nsw i64 %polly.indvar706.us.3, %262
  %polly.access.add.Packed_MemRef_call1521710.us.3 = add nuw nsw i64 %polly.indvar706.us.3, 240
  %polly.access.Packed_MemRef_call1521711.us.3 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521710.us.3
  %_p_scalar_712.us.3 = load double, double* %polly.access.Packed_MemRef_call1521711.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_716.us.3, %_p_scalar_712.us.3
  %polly.access.Packed_MemRef_call2523719.us.3 = getelementptr double, double* %Packed_MemRef_call2523, i64 %polly.access.add.Packed_MemRef_call1521710.us.3
  %_p_scalar_720.us.3 = load double, double* %polly.access.Packed_MemRef_call2523719.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_724.us.3, %_p_scalar_720.us.3
  %647 = shl i64 %646, 3
  %648 = add nuw nsw i64 %647, %628
  %scevgep725.us.3 = getelementptr i8, i8* %call, i64 %648
  %scevgep725726.us.3 = bitcast i8* %scevgep725.us.3 to double*
  %_p_scalar_727.us.3 = load double, double* %scevgep725726.us.3, align 8, !alias.scope !110, !noalias !112
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_727.us.3
  store double %p_add42.i.us.3, double* %scevgep725726.us.3, align 8, !alias.scope !110, !noalias !112
  %polly.indvar_next707.us.3 = add nuw nsw i64 %polly.indvar706.us.3, 1
  %exitcond1139.3.not = icmp eq i64 %polly.indvar706.us.3, %smin1138.3
  br i1 %exitcond1139.3.not, label %polly.loop_exit705.us.3, label %polly.loop_header703.us.3, !llvm.loop !192

polly.loop_exit705.us.3:                          ; preds = %polly.loop_header703.us.3, %middle.block1552
  %polly.indvar_next701.us.3 = add nuw nsw i64 %polly.indvar700.us.3, 1
  %indvars.iv.next1137.3 = add nuw nsw i64 %indvars.iv1136.3, 1
  %exitcond1146.3.not = icmp eq i64 %polly.indvar700.us.3, %smax1145
  br i1 %exitcond1146.3.not, label %polly.loop_exit691, label %polly.loop_header696.us.3

polly.loop_header919.1:                           ; preds = %polly.loop_exit927, %polly.loop_exit927.1
  %polly.indvar922.1 = phi i64 [ %polly.indvar_next923.1, %polly.loop_exit927.1 ], [ 0, %polly.loop_exit927 ]
  %649 = mul nuw nsw i64 %polly.indvar922.1, 480
  %650 = trunc i64 %polly.indvar922.1 to i32
  %broadcast.splatinsert1478 = insertelement <4 x i32> poison, i32 %650, i32 0
  %broadcast.splat1479 = shufflevector <4 x i32> %broadcast.splatinsert1478, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1470

vector.body1470:                                  ; preds = %vector.body1470, %polly.loop_header919.1
  %index1472 = phi i64 [ 0, %polly.loop_header919.1 ], [ %index.next1473, %vector.body1470 ]
  %vec.ind1476 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header919.1 ], [ %vec.ind.next1477, %vector.body1470 ]
  %651 = add nuw nsw <4 x i64> %vec.ind1476, <i64 32, i64 32, i64 32, i64 32>
  %652 = trunc <4 x i64> %651 to <4 x i32>
  %653 = mul <4 x i32> %broadcast.splat1479, %652
  %654 = add <4 x i32> %653, <i32 1, i32 1, i32 1, i32 1>
  %655 = urem <4 x i32> %654, <i32 80, i32 80, i32 80, i32 80>
  %656 = sitofp <4 x i32> %655 to <4 x double>
  %657 = fmul fast <4 x double> %656, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %658 = extractelement <4 x i64> %651, i32 0
  %659 = shl i64 %658, 3
  %660 = add i64 %659, %649
  %661 = getelementptr i8, i8* %call1, i64 %660
  %662 = bitcast i8* %661 to <4 x double>*
  store <4 x double> %657, <4 x double>* %662, align 8, !alias.scope !132, !noalias !137
  %index.next1473 = add i64 %index1472, 4
  %vec.ind.next1477 = add <4 x i64> %vec.ind1476, <i64 4, i64 4, i64 4, i64 4>
  %663 = icmp eq i64 %index.next1473, 28
  br i1 %663, label %polly.loop_exit927.1, label %vector.body1470, !llvm.loop !193

polly.loop_exit927.1:                             ; preds = %vector.body1470
  %polly.indvar_next923.1 = add nuw nsw i64 %polly.indvar922.1, 1
  %exitcond1157.1.not = icmp eq i64 %polly.indvar_next923.1, 32
  br i1 %exitcond1157.1.not, label %polly.loop_header919.11180, label %polly.loop_header919.1

polly.loop_header919.11180:                       ; preds = %polly.loop_exit927.1, %polly.loop_exit927.11191
  %polly.indvar922.11179 = phi i64 [ %polly.indvar_next923.11189, %polly.loop_exit927.11191 ], [ 0, %polly.loop_exit927.1 ]
  %664 = add nuw nsw i64 %polly.indvar922.11179, 32
  %665 = mul nuw nsw i64 %664, 480
  %666 = trunc i64 %664 to i32
  %broadcast.splatinsert1492 = insertelement <4 x i32> poison, i32 %666, i32 0
  %broadcast.splat1493 = shufflevector <4 x i32> %broadcast.splatinsert1492, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1482

vector.body1482:                                  ; preds = %vector.body1482, %polly.loop_header919.11180
  %index1484 = phi i64 [ 0, %polly.loop_header919.11180 ], [ %index.next1485, %vector.body1482 ]
  %vec.ind1490 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header919.11180 ], [ %vec.ind.next1491, %vector.body1482 ]
  %667 = mul <4 x i32> %vec.ind1490, %broadcast.splat1493
  %668 = add <4 x i32> %667, <i32 1, i32 1, i32 1, i32 1>
  %669 = urem <4 x i32> %668, <i32 80, i32 80, i32 80, i32 80>
  %670 = sitofp <4 x i32> %669 to <4 x double>
  %671 = fmul fast <4 x double> %670, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %672 = shl i64 %index1484, 3
  %673 = add i64 %672, %665
  %674 = getelementptr i8, i8* %call1, i64 %673
  %675 = bitcast i8* %674 to <4 x double>*
  store <4 x double> %671, <4 x double>* %675, align 8, !alias.scope !132, !noalias !137
  %index.next1485 = add i64 %index1484, 4
  %vec.ind.next1491 = add <4 x i32> %vec.ind1490, <i32 4, i32 4, i32 4, i32 4>
  %676 = icmp eq i64 %index.next1485, 32
  br i1 %676, label %polly.loop_exit927.11191, label %vector.body1482, !llvm.loop !194

polly.loop_exit927.11191:                         ; preds = %vector.body1482
  %polly.indvar_next923.11189 = add nuw nsw i64 %polly.indvar922.11179, 1
  %exitcond1157.11190.not = icmp eq i64 %polly.indvar_next923.11189, 32
  br i1 %exitcond1157.11190.not, label %polly.loop_header919.1.1, label %polly.loop_header919.11180

polly.loop_header919.1.1:                         ; preds = %polly.loop_exit927.11191, %polly.loop_exit927.1.1
  %polly.indvar922.1.1 = phi i64 [ %polly.indvar_next923.1.1, %polly.loop_exit927.1.1 ], [ 0, %polly.loop_exit927.11191 ]
  %677 = add nuw nsw i64 %polly.indvar922.1.1, 32
  %678 = mul nuw nsw i64 %677, 480
  %679 = trunc i64 %677 to i32
  %broadcast.splatinsert1504 = insertelement <4 x i32> poison, i32 %679, i32 0
  %broadcast.splat1505 = shufflevector <4 x i32> %broadcast.splatinsert1504, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1496

vector.body1496:                                  ; preds = %vector.body1496, %polly.loop_header919.1.1
  %index1498 = phi i64 [ 0, %polly.loop_header919.1.1 ], [ %index.next1499, %vector.body1496 ]
  %vec.ind1502 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header919.1.1 ], [ %vec.ind.next1503, %vector.body1496 ]
  %680 = add nuw nsw <4 x i64> %vec.ind1502, <i64 32, i64 32, i64 32, i64 32>
  %681 = trunc <4 x i64> %680 to <4 x i32>
  %682 = mul <4 x i32> %broadcast.splat1505, %681
  %683 = add <4 x i32> %682, <i32 1, i32 1, i32 1, i32 1>
  %684 = urem <4 x i32> %683, <i32 80, i32 80, i32 80, i32 80>
  %685 = sitofp <4 x i32> %684 to <4 x double>
  %686 = fmul fast <4 x double> %685, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %687 = extractelement <4 x i64> %680, i32 0
  %688 = shl i64 %687, 3
  %689 = add i64 %688, %678
  %690 = getelementptr i8, i8* %call1, i64 %689
  %691 = bitcast i8* %690 to <4 x double>*
  store <4 x double> %686, <4 x double>* %691, align 8, !alias.scope !132, !noalias !137
  %index.next1499 = add i64 %index1498, 4
  %vec.ind.next1503 = add <4 x i64> %vec.ind1502, <i64 4, i64 4, i64 4, i64 4>
  %692 = icmp eq i64 %index.next1499, 28
  br i1 %692, label %polly.loop_exit927.1.1, label %vector.body1496, !llvm.loop !195

polly.loop_exit927.1.1:                           ; preds = %vector.body1496
  %polly.indvar_next923.1.1 = add nuw nsw i64 %polly.indvar922.1.1, 1
  %exitcond1157.1.1.not = icmp eq i64 %polly.indvar_next923.1.1, 32
  br i1 %exitcond1157.1.1.not, label %polly.loop_header919.2, label %polly.loop_header919.1.1

polly.loop_header919.2:                           ; preds = %polly.loop_exit927.1.1, %polly.loop_exit927.2
  %polly.indvar922.2 = phi i64 [ %polly.indvar_next923.2, %polly.loop_exit927.2 ], [ 0, %polly.loop_exit927.1.1 ]
  %693 = add nuw nsw i64 %polly.indvar922.2, 64
  %694 = mul nuw nsw i64 %693, 480
  %695 = trunc i64 %693 to i32
  %broadcast.splatinsert1518 = insertelement <4 x i32> poison, i32 %695, i32 0
  %broadcast.splat1519 = shufflevector <4 x i32> %broadcast.splatinsert1518, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1508

vector.body1508:                                  ; preds = %vector.body1508, %polly.loop_header919.2
  %index1510 = phi i64 [ 0, %polly.loop_header919.2 ], [ %index.next1511, %vector.body1508 ]
  %vec.ind1516 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header919.2 ], [ %vec.ind.next1517, %vector.body1508 ]
  %696 = mul <4 x i32> %vec.ind1516, %broadcast.splat1519
  %697 = add <4 x i32> %696, <i32 1, i32 1, i32 1, i32 1>
  %698 = urem <4 x i32> %697, <i32 80, i32 80, i32 80, i32 80>
  %699 = sitofp <4 x i32> %698 to <4 x double>
  %700 = fmul fast <4 x double> %699, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %701 = shl i64 %index1510, 3
  %702 = add i64 %701, %694
  %703 = getelementptr i8, i8* %call1, i64 %702
  %704 = bitcast i8* %703 to <4 x double>*
  store <4 x double> %700, <4 x double>* %704, align 8, !alias.scope !132, !noalias !137
  %index.next1511 = add i64 %index1510, 4
  %vec.ind.next1517 = add <4 x i32> %vec.ind1516, <i32 4, i32 4, i32 4, i32 4>
  %705 = icmp eq i64 %index.next1511, 32
  br i1 %705, label %polly.loop_exit927.2, label %vector.body1508, !llvm.loop !196

polly.loop_exit927.2:                             ; preds = %vector.body1508
  %polly.indvar_next923.2 = add nuw nsw i64 %polly.indvar922.2, 1
  %exitcond1157.2.not = icmp eq i64 %polly.indvar_next923.2, 16
  br i1 %exitcond1157.2.not, label %polly.loop_header919.1.2, label %polly.loop_header919.2

polly.loop_header919.1.2:                         ; preds = %polly.loop_exit927.2, %polly.loop_exit927.1.2
  %polly.indvar922.1.2 = phi i64 [ %polly.indvar_next923.1.2, %polly.loop_exit927.1.2 ], [ 0, %polly.loop_exit927.2 ]
  %706 = add nuw nsw i64 %polly.indvar922.1.2, 64
  %707 = mul nuw nsw i64 %706, 480
  %708 = trunc i64 %706 to i32
  %broadcast.splatinsert1530 = insertelement <4 x i32> poison, i32 %708, i32 0
  %broadcast.splat1531 = shufflevector <4 x i32> %broadcast.splatinsert1530, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1522

vector.body1522:                                  ; preds = %vector.body1522, %polly.loop_header919.1.2
  %index1524 = phi i64 [ 0, %polly.loop_header919.1.2 ], [ %index.next1525, %vector.body1522 ]
  %vec.ind1528 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header919.1.2 ], [ %vec.ind.next1529, %vector.body1522 ]
  %709 = add nuw nsw <4 x i64> %vec.ind1528, <i64 32, i64 32, i64 32, i64 32>
  %710 = trunc <4 x i64> %709 to <4 x i32>
  %711 = mul <4 x i32> %broadcast.splat1531, %710
  %712 = add <4 x i32> %711, <i32 1, i32 1, i32 1, i32 1>
  %713 = urem <4 x i32> %712, <i32 80, i32 80, i32 80, i32 80>
  %714 = sitofp <4 x i32> %713 to <4 x double>
  %715 = fmul fast <4 x double> %714, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %716 = extractelement <4 x i64> %709, i32 0
  %717 = shl i64 %716, 3
  %718 = add i64 %717, %707
  %719 = getelementptr i8, i8* %call1, i64 %718
  %720 = bitcast i8* %719 to <4 x double>*
  store <4 x double> %715, <4 x double>* %720, align 8, !alias.scope !132, !noalias !137
  %index.next1525 = add i64 %index1524, 4
  %vec.ind.next1529 = add <4 x i64> %vec.ind1528, <i64 4, i64 4, i64 4, i64 4>
  %721 = icmp eq i64 %index.next1525, 28
  br i1 %721, label %polly.loop_exit927.1.2, label %vector.body1522, !llvm.loop !197

polly.loop_exit927.1.2:                           ; preds = %vector.body1522
  %polly.indvar_next923.1.2 = add nuw nsw i64 %polly.indvar922.1.2, 1
  %exitcond1157.1.2.not = icmp eq i64 %polly.indvar_next923.1.2, 16
  br i1 %exitcond1157.1.2.not, label %init_array.exit, label %polly.loop_header919.1.2

polly.loop_header893.1:                           ; preds = %polly.loop_exit901, %polly.loop_exit901.1
  %polly.indvar896.1 = phi i64 [ %polly.indvar_next897.1, %polly.loop_exit901.1 ], [ 0, %polly.loop_exit901 ]
  %722 = mul nuw nsw i64 %polly.indvar896.1, 480
  %723 = trunc i64 %polly.indvar896.1 to i32
  %broadcast.splatinsert1400 = insertelement <4 x i32> poison, i32 %723, i32 0
  %broadcast.splat1401 = shufflevector <4 x i32> %broadcast.splatinsert1400, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1392

vector.body1392:                                  ; preds = %vector.body1392, %polly.loop_header893.1
  %index1394 = phi i64 [ 0, %polly.loop_header893.1 ], [ %index.next1395, %vector.body1392 ]
  %vec.ind1398 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header893.1 ], [ %vec.ind.next1399, %vector.body1392 ]
  %724 = add nuw nsw <4 x i64> %vec.ind1398, <i64 32, i64 32, i64 32, i64 32>
  %725 = trunc <4 x i64> %724 to <4 x i32>
  %726 = mul <4 x i32> %broadcast.splat1401, %725
  %727 = add <4 x i32> %726, <i32 2, i32 2, i32 2, i32 2>
  %728 = urem <4 x i32> %727, <i32 60, i32 60, i32 60, i32 60>
  %729 = sitofp <4 x i32> %728 to <4 x double>
  %730 = fmul fast <4 x double> %729, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %731 = extractelement <4 x i64> %724, i32 0
  %732 = shl i64 %731, 3
  %733 = add i64 %732, %722
  %734 = getelementptr i8, i8* %call2, i64 %733
  %735 = bitcast i8* %734 to <4 x double>*
  store <4 x double> %730, <4 x double>* %735, align 8, !alias.scope !133, !noalias !135
  %index.next1395 = add i64 %index1394, 4
  %vec.ind.next1399 = add <4 x i64> %vec.ind1398, <i64 4, i64 4, i64 4, i64 4>
  %736 = icmp eq i64 %index.next1395, 28
  br i1 %736, label %polly.loop_exit901.1, label %vector.body1392, !llvm.loop !198

polly.loop_exit901.1:                             ; preds = %vector.body1392
  %polly.indvar_next897.1 = add nuw nsw i64 %polly.indvar896.1, 1
  %exitcond1163.1.not = icmp eq i64 %polly.indvar_next897.1, 32
  br i1 %exitcond1163.1.not, label %polly.loop_header893.11194, label %polly.loop_header893.1

polly.loop_header893.11194:                       ; preds = %polly.loop_exit901.1, %polly.loop_exit901.11205
  %polly.indvar896.11193 = phi i64 [ %polly.indvar_next897.11203, %polly.loop_exit901.11205 ], [ 0, %polly.loop_exit901.1 ]
  %737 = add nuw nsw i64 %polly.indvar896.11193, 32
  %738 = mul nuw nsw i64 %737, 480
  %739 = trunc i64 %737 to i32
  %broadcast.splatinsert1414 = insertelement <4 x i32> poison, i32 %739, i32 0
  %broadcast.splat1415 = shufflevector <4 x i32> %broadcast.splatinsert1414, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1404

vector.body1404:                                  ; preds = %vector.body1404, %polly.loop_header893.11194
  %index1406 = phi i64 [ 0, %polly.loop_header893.11194 ], [ %index.next1407, %vector.body1404 ]
  %vec.ind1412 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header893.11194 ], [ %vec.ind.next1413, %vector.body1404 ]
  %740 = mul <4 x i32> %vec.ind1412, %broadcast.splat1415
  %741 = add <4 x i32> %740, <i32 2, i32 2, i32 2, i32 2>
  %742 = urem <4 x i32> %741, <i32 60, i32 60, i32 60, i32 60>
  %743 = sitofp <4 x i32> %742 to <4 x double>
  %744 = fmul fast <4 x double> %743, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %745 = shl i64 %index1406, 3
  %746 = add i64 %745, %738
  %747 = getelementptr i8, i8* %call2, i64 %746
  %748 = bitcast i8* %747 to <4 x double>*
  store <4 x double> %744, <4 x double>* %748, align 8, !alias.scope !133, !noalias !135
  %index.next1407 = add i64 %index1406, 4
  %vec.ind.next1413 = add <4 x i32> %vec.ind1412, <i32 4, i32 4, i32 4, i32 4>
  %749 = icmp eq i64 %index.next1407, 32
  br i1 %749, label %polly.loop_exit901.11205, label %vector.body1404, !llvm.loop !199

polly.loop_exit901.11205:                         ; preds = %vector.body1404
  %polly.indvar_next897.11203 = add nuw nsw i64 %polly.indvar896.11193, 1
  %exitcond1163.11204.not = icmp eq i64 %polly.indvar_next897.11203, 32
  br i1 %exitcond1163.11204.not, label %polly.loop_header893.1.1, label %polly.loop_header893.11194

polly.loop_header893.1.1:                         ; preds = %polly.loop_exit901.11205, %polly.loop_exit901.1.1
  %polly.indvar896.1.1 = phi i64 [ %polly.indvar_next897.1.1, %polly.loop_exit901.1.1 ], [ 0, %polly.loop_exit901.11205 ]
  %750 = add nuw nsw i64 %polly.indvar896.1.1, 32
  %751 = mul nuw nsw i64 %750, 480
  %752 = trunc i64 %750 to i32
  %broadcast.splatinsert1426 = insertelement <4 x i32> poison, i32 %752, i32 0
  %broadcast.splat1427 = shufflevector <4 x i32> %broadcast.splatinsert1426, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1418

vector.body1418:                                  ; preds = %vector.body1418, %polly.loop_header893.1.1
  %index1420 = phi i64 [ 0, %polly.loop_header893.1.1 ], [ %index.next1421, %vector.body1418 ]
  %vec.ind1424 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header893.1.1 ], [ %vec.ind.next1425, %vector.body1418 ]
  %753 = add nuw nsw <4 x i64> %vec.ind1424, <i64 32, i64 32, i64 32, i64 32>
  %754 = trunc <4 x i64> %753 to <4 x i32>
  %755 = mul <4 x i32> %broadcast.splat1427, %754
  %756 = add <4 x i32> %755, <i32 2, i32 2, i32 2, i32 2>
  %757 = urem <4 x i32> %756, <i32 60, i32 60, i32 60, i32 60>
  %758 = sitofp <4 x i32> %757 to <4 x double>
  %759 = fmul fast <4 x double> %758, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %760 = extractelement <4 x i64> %753, i32 0
  %761 = shl i64 %760, 3
  %762 = add i64 %761, %751
  %763 = getelementptr i8, i8* %call2, i64 %762
  %764 = bitcast i8* %763 to <4 x double>*
  store <4 x double> %759, <4 x double>* %764, align 8, !alias.scope !133, !noalias !135
  %index.next1421 = add i64 %index1420, 4
  %vec.ind.next1425 = add <4 x i64> %vec.ind1424, <i64 4, i64 4, i64 4, i64 4>
  %765 = icmp eq i64 %index.next1421, 28
  br i1 %765, label %polly.loop_exit901.1.1, label %vector.body1418, !llvm.loop !200

polly.loop_exit901.1.1:                           ; preds = %vector.body1418
  %polly.indvar_next897.1.1 = add nuw nsw i64 %polly.indvar896.1.1, 1
  %exitcond1163.1.1.not = icmp eq i64 %polly.indvar_next897.1.1, 32
  br i1 %exitcond1163.1.1.not, label %polly.loop_header893.2, label %polly.loop_header893.1.1

polly.loop_header893.2:                           ; preds = %polly.loop_exit901.1.1, %polly.loop_exit901.2
  %polly.indvar896.2 = phi i64 [ %polly.indvar_next897.2, %polly.loop_exit901.2 ], [ 0, %polly.loop_exit901.1.1 ]
  %766 = add nuw nsw i64 %polly.indvar896.2, 64
  %767 = mul nuw nsw i64 %766, 480
  %768 = trunc i64 %766 to i32
  %broadcast.splatinsert1440 = insertelement <4 x i32> poison, i32 %768, i32 0
  %broadcast.splat1441 = shufflevector <4 x i32> %broadcast.splatinsert1440, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1430

vector.body1430:                                  ; preds = %vector.body1430, %polly.loop_header893.2
  %index1432 = phi i64 [ 0, %polly.loop_header893.2 ], [ %index.next1433, %vector.body1430 ]
  %vec.ind1438 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header893.2 ], [ %vec.ind.next1439, %vector.body1430 ]
  %769 = mul <4 x i32> %vec.ind1438, %broadcast.splat1441
  %770 = add <4 x i32> %769, <i32 2, i32 2, i32 2, i32 2>
  %771 = urem <4 x i32> %770, <i32 60, i32 60, i32 60, i32 60>
  %772 = sitofp <4 x i32> %771 to <4 x double>
  %773 = fmul fast <4 x double> %772, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %774 = shl i64 %index1432, 3
  %775 = add i64 %774, %767
  %776 = getelementptr i8, i8* %call2, i64 %775
  %777 = bitcast i8* %776 to <4 x double>*
  store <4 x double> %773, <4 x double>* %777, align 8, !alias.scope !133, !noalias !135
  %index.next1433 = add i64 %index1432, 4
  %vec.ind.next1439 = add <4 x i32> %vec.ind1438, <i32 4, i32 4, i32 4, i32 4>
  %778 = icmp eq i64 %index.next1433, 32
  br i1 %778, label %polly.loop_exit901.2, label %vector.body1430, !llvm.loop !201

polly.loop_exit901.2:                             ; preds = %vector.body1430
  %polly.indvar_next897.2 = add nuw nsw i64 %polly.indvar896.2, 1
  %exitcond1163.2.not = icmp eq i64 %polly.indvar_next897.2, 16
  br i1 %exitcond1163.2.not, label %polly.loop_header893.1.2, label %polly.loop_header893.2

polly.loop_header893.1.2:                         ; preds = %polly.loop_exit901.2, %polly.loop_exit901.1.2
  %polly.indvar896.1.2 = phi i64 [ %polly.indvar_next897.1.2, %polly.loop_exit901.1.2 ], [ 0, %polly.loop_exit901.2 ]
  %779 = add nuw nsw i64 %polly.indvar896.1.2, 64
  %780 = mul nuw nsw i64 %779, 480
  %781 = trunc i64 %779 to i32
  %broadcast.splatinsert1452 = insertelement <4 x i32> poison, i32 %781, i32 0
  %broadcast.splat1453 = shufflevector <4 x i32> %broadcast.splatinsert1452, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1444

vector.body1444:                                  ; preds = %vector.body1444, %polly.loop_header893.1.2
  %index1446 = phi i64 [ 0, %polly.loop_header893.1.2 ], [ %index.next1447, %vector.body1444 ]
  %vec.ind1450 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header893.1.2 ], [ %vec.ind.next1451, %vector.body1444 ]
  %782 = add nuw nsw <4 x i64> %vec.ind1450, <i64 32, i64 32, i64 32, i64 32>
  %783 = trunc <4 x i64> %782 to <4 x i32>
  %784 = mul <4 x i32> %broadcast.splat1453, %783
  %785 = add <4 x i32> %784, <i32 2, i32 2, i32 2, i32 2>
  %786 = urem <4 x i32> %785, <i32 60, i32 60, i32 60, i32 60>
  %787 = sitofp <4 x i32> %786 to <4 x double>
  %788 = fmul fast <4 x double> %787, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %789 = extractelement <4 x i64> %782, i32 0
  %790 = shl i64 %789, 3
  %791 = add i64 %790, %780
  %792 = getelementptr i8, i8* %call2, i64 %791
  %793 = bitcast i8* %792 to <4 x double>*
  store <4 x double> %788, <4 x double>* %793, align 8, !alias.scope !133, !noalias !135
  %index.next1447 = add i64 %index1446, 4
  %vec.ind.next1451 = add <4 x i64> %vec.ind1450, <i64 4, i64 4, i64 4, i64 4>
  %794 = icmp eq i64 %index.next1447, 28
  br i1 %794, label %polly.loop_exit901.1.2, label %vector.body1444, !llvm.loop !202

polly.loop_exit901.1.2:                           ; preds = %vector.body1444
  %polly.indvar_next897.1.2 = add nuw nsw i64 %polly.indvar896.1.2, 1
  %exitcond1163.1.2.not = icmp eq i64 %polly.indvar_next897.1.2, 16
  br i1 %exitcond1163.1.2.not, label %polly.loop_header919, label %polly.loop_header893.1.2

polly.loop_header866.1:                           ; preds = %polly.loop_exit874, %polly.loop_exit874.1
  %polly.indvar869.1 = phi i64 [ %polly.indvar_next870.1, %polly.loop_exit874.1 ], [ 0, %polly.loop_exit874 ]
  %795 = mul nuw nsw i64 %polly.indvar869.1, 640
  %796 = trunc i64 %polly.indvar869.1 to i32
  %broadcast.splatinsert1286 = insertelement <4 x i32> poison, i32 %796, i32 0
  %broadcast.splat1287 = shufflevector <4 x i32> %broadcast.splatinsert1286, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %polly.loop_header866.1
  %index1280 = phi i64 [ 0, %polly.loop_header866.1 ], [ %index.next1281, %vector.body1278 ]
  %vec.ind1284 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header866.1 ], [ %vec.ind.next1285, %vector.body1278 ]
  %797 = add nuw nsw <4 x i64> %vec.ind1284, <i64 32, i64 32, i64 32, i64 32>
  %798 = trunc <4 x i64> %797 to <4 x i32>
  %799 = mul <4 x i32> %broadcast.splat1287, %798
  %800 = add <4 x i32> %799, <i32 3, i32 3, i32 3, i32 3>
  %801 = urem <4 x i32> %800, <i32 80, i32 80, i32 80, i32 80>
  %802 = sitofp <4 x i32> %801 to <4 x double>
  %803 = fmul fast <4 x double> %802, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %804 = extractelement <4 x i64> %797, i32 0
  %805 = shl i64 %804, 3
  %806 = add nuw nsw i64 %805, %795
  %807 = getelementptr i8, i8* %call, i64 %806
  %808 = bitcast i8* %807 to <4 x double>*
  store <4 x double> %803, <4 x double>* %808, align 8, !alias.scope !129, !noalias !131
  %index.next1281 = add i64 %index1280, 4
  %vec.ind.next1285 = add <4 x i64> %vec.ind1284, <i64 4, i64 4, i64 4, i64 4>
  %809 = icmp eq i64 %index.next1281, 32
  br i1 %809, label %polly.loop_exit874.1, label %vector.body1278, !llvm.loop !203

polly.loop_exit874.1:                             ; preds = %vector.body1278
  %polly.indvar_next870.1 = add nuw nsw i64 %polly.indvar869.1, 1
  %exitcond1172.1.not = icmp eq i64 %polly.indvar_next870.1, 32
  br i1 %exitcond1172.1.not, label %polly.loop_header866.2, label %polly.loop_header866.1

polly.loop_header866.2:                           ; preds = %polly.loop_exit874.1, %polly.loop_exit874.2
  %polly.indvar869.2 = phi i64 [ %polly.indvar_next870.2, %polly.loop_exit874.2 ], [ 0, %polly.loop_exit874.1 ]
  %810 = mul nuw nsw i64 %polly.indvar869.2, 640
  %811 = trunc i64 %polly.indvar869.2 to i32
  %broadcast.splatinsert1298 = insertelement <4 x i32> poison, i32 %811, i32 0
  %broadcast.splat1299 = shufflevector <4 x i32> %broadcast.splatinsert1298, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %polly.loop_header866.2
  %index1292 = phi i64 [ 0, %polly.loop_header866.2 ], [ %index.next1293, %vector.body1290 ]
  %vec.ind1296 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header866.2 ], [ %vec.ind.next1297, %vector.body1290 ]
  %812 = add nuw nsw <4 x i64> %vec.ind1296, <i64 64, i64 64, i64 64, i64 64>
  %813 = trunc <4 x i64> %812 to <4 x i32>
  %814 = mul <4 x i32> %broadcast.splat1299, %813
  %815 = add <4 x i32> %814, <i32 3, i32 3, i32 3, i32 3>
  %816 = urem <4 x i32> %815, <i32 80, i32 80, i32 80, i32 80>
  %817 = sitofp <4 x i32> %816 to <4 x double>
  %818 = fmul fast <4 x double> %817, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %819 = extractelement <4 x i64> %812, i32 0
  %820 = shl i64 %819, 3
  %821 = add nuw nsw i64 %820, %810
  %822 = getelementptr i8, i8* %call, i64 %821
  %823 = bitcast i8* %822 to <4 x double>*
  store <4 x double> %818, <4 x double>* %823, align 8, !alias.scope !129, !noalias !131
  %index.next1293 = add i64 %index1292, 4
  %vec.ind.next1297 = add <4 x i64> %vec.ind1296, <i64 4, i64 4, i64 4, i64 4>
  %824 = icmp eq i64 %index.next1293, 16
  br i1 %824, label %polly.loop_exit874.2, label %vector.body1290, !llvm.loop !204

polly.loop_exit874.2:                             ; preds = %vector.body1290
  %polly.indvar_next870.2 = add nuw nsw i64 %polly.indvar869.2, 1
  %exitcond1172.2.not = icmp eq i64 %polly.indvar_next870.2, 32
  br i1 %exitcond1172.2.not, label %polly.loop_header866.11208, label %polly.loop_header866.2

polly.loop_header866.11208:                       ; preds = %polly.loop_exit874.2, %polly.loop_exit874.11219
  %polly.indvar869.11207 = phi i64 [ %polly.indvar_next870.11217, %polly.loop_exit874.11219 ], [ 0, %polly.loop_exit874.2 ]
  %825 = add nuw nsw i64 %polly.indvar869.11207, 32
  %826 = mul nuw nsw i64 %825, 640
  %827 = trunc i64 %825 to i32
  %broadcast.splatinsert1312 = insertelement <4 x i32> poison, i32 %827, i32 0
  %broadcast.splat1313 = shufflevector <4 x i32> %broadcast.splatinsert1312, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1302

vector.body1302:                                  ; preds = %vector.body1302, %polly.loop_header866.11208
  %index1304 = phi i64 [ 0, %polly.loop_header866.11208 ], [ %index.next1305, %vector.body1302 ]
  %vec.ind1310 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header866.11208 ], [ %vec.ind.next1311, %vector.body1302 ]
  %828 = mul <4 x i32> %vec.ind1310, %broadcast.splat1313
  %829 = add <4 x i32> %828, <i32 3, i32 3, i32 3, i32 3>
  %830 = urem <4 x i32> %829, <i32 80, i32 80, i32 80, i32 80>
  %831 = sitofp <4 x i32> %830 to <4 x double>
  %832 = fmul fast <4 x double> %831, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %833 = shl i64 %index1304, 3
  %834 = add nuw nsw i64 %833, %826
  %835 = getelementptr i8, i8* %call, i64 %834
  %836 = bitcast i8* %835 to <4 x double>*
  store <4 x double> %832, <4 x double>* %836, align 8, !alias.scope !129, !noalias !131
  %index.next1305 = add i64 %index1304, 4
  %vec.ind.next1311 = add <4 x i32> %vec.ind1310, <i32 4, i32 4, i32 4, i32 4>
  %837 = icmp eq i64 %index.next1305, 32
  br i1 %837, label %polly.loop_exit874.11219, label %vector.body1302, !llvm.loop !205

polly.loop_exit874.11219:                         ; preds = %vector.body1302
  %polly.indvar_next870.11217 = add nuw nsw i64 %polly.indvar869.11207, 1
  %exitcond1172.11218.not = icmp eq i64 %polly.indvar_next870.11217, 32
  br i1 %exitcond1172.11218.not, label %polly.loop_header866.1.1, label %polly.loop_header866.11208

polly.loop_header866.1.1:                         ; preds = %polly.loop_exit874.11219, %polly.loop_exit874.1.1
  %polly.indvar869.1.1 = phi i64 [ %polly.indvar_next870.1.1, %polly.loop_exit874.1.1 ], [ 0, %polly.loop_exit874.11219 ]
  %838 = add nuw nsw i64 %polly.indvar869.1.1, 32
  %839 = mul nuw nsw i64 %838, 640
  %840 = trunc i64 %838 to i32
  %broadcast.splatinsert1324 = insertelement <4 x i32> poison, i32 %840, i32 0
  %broadcast.splat1325 = shufflevector <4 x i32> %broadcast.splatinsert1324, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1316

vector.body1316:                                  ; preds = %vector.body1316, %polly.loop_header866.1.1
  %index1318 = phi i64 [ 0, %polly.loop_header866.1.1 ], [ %index.next1319, %vector.body1316 ]
  %vec.ind1322 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header866.1.1 ], [ %vec.ind.next1323, %vector.body1316 ]
  %841 = add nuw nsw <4 x i64> %vec.ind1322, <i64 32, i64 32, i64 32, i64 32>
  %842 = trunc <4 x i64> %841 to <4 x i32>
  %843 = mul <4 x i32> %broadcast.splat1325, %842
  %844 = add <4 x i32> %843, <i32 3, i32 3, i32 3, i32 3>
  %845 = urem <4 x i32> %844, <i32 80, i32 80, i32 80, i32 80>
  %846 = sitofp <4 x i32> %845 to <4 x double>
  %847 = fmul fast <4 x double> %846, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %848 = extractelement <4 x i64> %841, i32 0
  %849 = shl i64 %848, 3
  %850 = add nuw nsw i64 %849, %839
  %851 = getelementptr i8, i8* %call, i64 %850
  %852 = bitcast i8* %851 to <4 x double>*
  store <4 x double> %847, <4 x double>* %852, align 8, !alias.scope !129, !noalias !131
  %index.next1319 = add i64 %index1318, 4
  %vec.ind.next1323 = add <4 x i64> %vec.ind1322, <i64 4, i64 4, i64 4, i64 4>
  %853 = icmp eq i64 %index.next1319, 32
  br i1 %853, label %polly.loop_exit874.1.1, label %vector.body1316, !llvm.loop !206

polly.loop_exit874.1.1:                           ; preds = %vector.body1316
  %polly.indvar_next870.1.1 = add nuw nsw i64 %polly.indvar869.1.1, 1
  %exitcond1172.1.1.not = icmp eq i64 %polly.indvar_next870.1.1, 32
  br i1 %exitcond1172.1.1.not, label %polly.loop_header866.2.1, label %polly.loop_header866.1.1

polly.loop_header866.2.1:                         ; preds = %polly.loop_exit874.1.1, %polly.loop_exit874.2.1
  %polly.indvar869.2.1 = phi i64 [ %polly.indvar_next870.2.1, %polly.loop_exit874.2.1 ], [ 0, %polly.loop_exit874.1.1 ]
  %854 = add nuw nsw i64 %polly.indvar869.2.1, 32
  %855 = mul nuw nsw i64 %854, 640
  %856 = trunc i64 %854 to i32
  %broadcast.splatinsert1336 = insertelement <4 x i32> poison, i32 %856, i32 0
  %broadcast.splat1337 = shufflevector <4 x i32> %broadcast.splatinsert1336, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1328

vector.body1328:                                  ; preds = %vector.body1328, %polly.loop_header866.2.1
  %index1330 = phi i64 [ 0, %polly.loop_header866.2.1 ], [ %index.next1331, %vector.body1328 ]
  %vec.ind1334 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header866.2.1 ], [ %vec.ind.next1335, %vector.body1328 ]
  %857 = add nuw nsw <4 x i64> %vec.ind1334, <i64 64, i64 64, i64 64, i64 64>
  %858 = trunc <4 x i64> %857 to <4 x i32>
  %859 = mul <4 x i32> %broadcast.splat1337, %858
  %860 = add <4 x i32> %859, <i32 3, i32 3, i32 3, i32 3>
  %861 = urem <4 x i32> %860, <i32 80, i32 80, i32 80, i32 80>
  %862 = sitofp <4 x i32> %861 to <4 x double>
  %863 = fmul fast <4 x double> %862, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %864 = extractelement <4 x i64> %857, i32 0
  %865 = shl i64 %864, 3
  %866 = add nuw nsw i64 %865, %855
  %867 = getelementptr i8, i8* %call, i64 %866
  %868 = bitcast i8* %867 to <4 x double>*
  store <4 x double> %863, <4 x double>* %868, align 8, !alias.scope !129, !noalias !131
  %index.next1331 = add i64 %index1330, 4
  %vec.ind.next1335 = add <4 x i64> %vec.ind1334, <i64 4, i64 4, i64 4, i64 4>
  %869 = icmp eq i64 %index.next1331, 16
  br i1 %869, label %polly.loop_exit874.2.1, label %vector.body1328, !llvm.loop !207

polly.loop_exit874.2.1:                           ; preds = %vector.body1328
  %polly.indvar_next870.2.1 = add nuw nsw i64 %polly.indvar869.2.1, 1
  %exitcond1172.2.1.not = icmp eq i64 %polly.indvar_next870.2.1, 32
  br i1 %exitcond1172.2.1.not, label %polly.loop_header866.21222, label %polly.loop_header866.2.1

polly.loop_header866.21222:                       ; preds = %polly.loop_exit874.2.1, %polly.loop_exit874.21233
  %polly.indvar869.21221 = phi i64 [ %polly.indvar_next870.21231, %polly.loop_exit874.21233 ], [ 0, %polly.loop_exit874.2.1 ]
  %870 = add nuw nsw i64 %polly.indvar869.21221, 64
  %871 = mul nuw nsw i64 %870, 640
  %872 = trunc i64 %870 to i32
  %broadcast.splatinsert1350 = insertelement <4 x i32> poison, i32 %872, i32 0
  %broadcast.splat1351 = shufflevector <4 x i32> %broadcast.splatinsert1350, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %polly.loop_header866.21222
  %index1342 = phi i64 [ 0, %polly.loop_header866.21222 ], [ %index.next1343, %vector.body1340 ]
  %vec.ind1348 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header866.21222 ], [ %vec.ind.next1349, %vector.body1340 ]
  %873 = mul <4 x i32> %vec.ind1348, %broadcast.splat1351
  %874 = add <4 x i32> %873, <i32 3, i32 3, i32 3, i32 3>
  %875 = urem <4 x i32> %874, <i32 80, i32 80, i32 80, i32 80>
  %876 = sitofp <4 x i32> %875 to <4 x double>
  %877 = fmul fast <4 x double> %876, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %878 = shl i64 %index1342, 3
  %879 = add nuw nsw i64 %878, %871
  %880 = getelementptr i8, i8* %call, i64 %879
  %881 = bitcast i8* %880 to <4 x double>*
  store <4 x double> %877, <4 x double>* %881, align 8, !alias.scope !129, !noalias !131
  %index.next1343 = add i64 %index1342, 4
  %vec.ind.next1349 = add <4 x i32> %vec.ind1348, <i32 4, i32 4, i32 4, i32 4>
  %882 = icmp eq i64 %index.next1343, 32
  br i1 %882, label %polly.loop_exit874.21233, label %vector.body1340, !llvm.loop !208

polly.loop_exit874.21233:                         ; preds = %vector.body1340
  %polly.indvar_next870.21231 = add nuw nsw i64 %polly.indvar869.21221, 1
  %exitcond1172.21232.not = icmp eq i64 %polly.indvar_next870.21231, 16
  br i1 %exitcond1172.21232.not, label %polly.loop_header866.1.2, label %polly.loop_header866.21222

polly.loop_header866.1.2:                         ; preds = %polly.loop_exit874.21233, %polly.loop_exit874.1.2
  %polly.indvar869.1.2 = phi i64 [ %polly.indvar_next870.1.2, %polly.loop_exit874.1.2 ], [ 0, %polly.loop_exit874.21233 ]
  %883 = add nuw nsw i64 %polly.indvar869.1.2, 64
  %884 = mul nuw nsw i64 %883, 640
  %885 = trunc i64 %883 to i32
  %broadcast.splatinsert1362 = insertelement <4 x i32> poison, i32 %885, i32 0
  %broadcast.splat1363 = shufflevector <4 x i32> %broadcast.splatinsert1362, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1354

vector.body1354:                                  ; preds = %vector.body1354, %polly.loop_header866.1.2
  %index1356 = phi i64 [ 0, %polly.loop_header866.1.2 ], [ %index.next1357, %vector.body1354 ]
  %vec.ind1360 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header866.1.2 ], [ %vec.ind.next1361, %vector.body1354 ]
  %886 = add nuw nsw <4 x i64> %vec.ind1360, <i64 32, i64 32, i64 32, i64 32>
  %887 = trunc <4 x i64> %886 to <4 x i32>
  %888 = mul <4 x i32> %broadcast.splat1363, %887
  %889 = add <4 x i32> %888, <i32 3, i32 3, i32 3, i32 3>
  %890 = urem <4 x i32> %889, <i32 80, i32 80, i32 80, i32 80>
  %891 = sitofp <4 x i32> %890 to <4 x double>
  %892 = fmul fast <4 x double> %891, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %893 = extractelement <4 x i64> %886, i32 0
  %894 = shl i64 %893, 3
  %895 = add nuw nsw i64 %894, %884
  %896 = getelementptr i8, i8* %call, i64 %895
  %897 = bitcast i8* %896 to <4 x double>*
  store <4 x double> %892, <4 x double>* %897, align 8, !alias.scope !129, !noalias !131
  %index.next1357 = add i64 %index1356, 4
  %vec.ind.next1361 = add <4 x i64> %vec.ind1360, <i64 4, i64 4, i64 4, i64 4>
  %898 = icmp eq i64 %index.next1357, 32
  br i1 %898, label %polly.loop_exit874.1.2, label %vector.body1354, !llvm.loop !209

polly.loop_exit874.1.2:                           ; preds = %vector.body1354
  %polly.indvar_next870.1.2 = add nuw nsw i64 %polly.indvar869.1.2, 1
  %exitcond1172.1.2.not = icmp eq i64 %polly.indvar_next870.1.2, 16
  br i1 %exitcond1172.1.2.not, label %polly.loop_header866.2.2, label %polly.loop_header866.1.2

polly.loop_header866.2.2:                         ; preds = %polly.loop_exit874.1.2, %polly.loop_exit874.2.2
  %polly.indvar869.2.2 = phi i64 [ %polly.indvar_next870.2.2, %polly.loop_exit874.2.2 ], [ 0, %polly.loop_exit874.1.2 ]
  %899 = add nuw nsw i64 %polly.indvar869.2.2, 64
  %900 = mul nuw nsw i64 %899, 640
  %901 = trunc i64 %899 to i32
  %broadcast.splatinsert1374 = insertelement <4 x i32> poison, i32 %901, i32 0
  %broadcast.splat1375 = shufflevector <4 x i32> %broadcast.splatinsert1374, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1366

vector.body1366:                                  ; preds = %vector.body1366, %polly.loop_header866.2.2
  %index1368 = phi i64 [ 0, %polly.loop_header866.2.2 ], [ %index.next1369, %vector.body1366 ]
  %vec.ind1372 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header866.2.2 ], [ %vec.ind.next1373, %vector.body1366 ]
  %902 = add nuw nsw <4 x i64> %vec.ind1372, <i64 64, i64 64, i64 64, i64 64>
  %903 = trunc <4 x i64> %902 to <4 x i32>
  %904 = mul <4 x i32> %broadcast.splat1375, %903
  %905 = add <4 x i32> %904, <i32 3, i32 3, i32 3, i32 3>
  %906 = urem <4 x i32> %905, <i32 80, i32 80, i32 80, i32 80>
  %907 = sitofp <4 x i32> %906 to <4 x double>
  %908 = fmul fast <4 x double> %907, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %909 = extractelement <4 x i64> %902, i32 0
  %910 = shl i64 %909, 3
  %911 = add nuw nsw i64 %910, %900
  %912 = getelementptr i8, i8* %call, i64 %911
  %913 = bitcast i8* %912 to <4 x double>*
  store <4 x double> %908, <4 x double>* %913, align 8, !alias.scope !129, !noalias !131
  %index.next1369 = add i64 %index1368, 4
  %vec.ind.next1373 = add <4 x i64> %vec.ind1372, <i64 4, i64 4, i64 4, i64 4>
  %914 = icmp eq i64 %index.next1369, 16
  br i1 %914, label %polly.loop_exit874.2.2, label %vector.body1366, !llvm.loop !210

polly.loop_exit874.2.2:                           ; preds = %vector.body1366
  %polly.indvar_next870.2.2 = add nuw nsw i64 %polly.indvar869.2.2, 1
  %exitcond1172.2.2.not = icmp eq i64 %polly.indvar_next870.2.2, 16
  br i1 %exitcond1172.2.2.not, label %polly.loop_header893, label %polly.loop_header866.2.2
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

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
!26 = !{!"llvm.loop.tile.size", i32 32}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 4}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !24, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.loop.interchange.followup_interchanged", !43}
!43 = distinct !{!43, !12, !24, !41, !44, !45, !46}
!44 = !{!"llvm.data.pack.enable", i1 true}
!45 = !{!"llvm.data.pack.array", !21}
!46 = !{!"llvm.data.pack.allocate", !"malloc"}
!47 = distinct !{!47, !12, !24, !48, !49, !50, !26, !51, !60}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !24, !53, !54, !55, !56, !57}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.interchange.followup_interchanged", !58}
!58 = distinct !{!58, !12, !24, !53, !44, !59, !46}
!59 = !{!"llvm.data.pack.array", !22}
!60 = !{!"llvm.loop.tile.followup_tile", !61}
!61 = distinct !{!61, !12, !24, !62}
!62 = !{!"llvm.loop.id", !"i2"}
!63 = distinct !{!63, !12, !13}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = !{!68, !68, i64 0}
!68 = !{!"any pointer", !4, i64 0}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !72, !"polly.alias.scope.MemRef_call"}
!72 = distinct !{!72, !"polly.alias.scope.domain"}
!73 = !{!74, !75, !76, !77}
!74 = distinct !{!74, !72, !"polly.alias.scope.MemRef_call1"}
!75 = distinct !{!75, !72, !"polly.alias.scope.MemRef_call2"}
!76 = distinct !{!76, !72, !"polly.alias.scope.Packed_MemRef_call1"}
!77 = distinct !{!77, !72, !"polly.alias.scope.Packed_MemRef_call2"}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !80, !13}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!71, !74, !76, !77}
!82 = !{!71, !75, !76, !77}
!83 = !{!84}
!84 = distinct !{!84, !85}
!85 = distinct !{!85, !"LVerDomain"}
!86 = !{!71, !72, !"polly.alias.scope.MemRef_call", !87}
!87 = distinct !{!87, !85}
!88 = !{!74, !75, !76, !77, !84}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !92, !"polly.alias.scope.MemRef_call"}
!92 = distinct !{!92, !"polly.alias.scope.domain"}
!93 = !{!94, !95, !96, !97}
!94 = distinct !{!94, !92, !"polly.alias.scope.MemRef_call1"}
!95 = distinct !{!95, !92, !"polly.alias.scope.MemRef_call2"}
!96 = distinct !{!96, !92, !"polly.alias.scope.Packed_MemRef_call1"}
!97 = distinct !{!97, !92, !"polly.alias.scope.Packed_MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !80, !13}
!100 = !{!91, !94, !96, !97}
!101 = !{!91, !95, !96, !97}
!102 = !{!103}
!103 = distinct !{!103, !104}
!104 = distinct !{!104, !"LVerDomain"}
!105 = !{!91, !92, !"polly.alias.scope.MemRef_call", !106}
!106 = distinct !{!106, !104}
!107 = !{!94, !95, !96, !97, !103}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !111, !"polly.alias.scope.MemRef_call"}
!111 = distinct !{!111, !"polly.alias.scope.domain"}
!112 = !{!113, !114, !115, !116}
!113 = distinct !{!113, !111, !"polly.alias.scope.MemRef_call1"}
!114 = distinct !{!114, !111, !"polly.alias.scope.MemRef_call2"}
!115 = distinct !{!115, !111, !"polly.alias.scope.Packed_MemRef_call1"}
!116 = distinct !{!116, !111, !"polly.alias.scope.Packed_MemRef_call2"}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !80, !13}
!119 = !{!110, !113, !115, !116}
!120 = !{!110, !114, !115, !116}
!121 = !{!122}
!122 = distinct !{!122, !123}
!123 = distinct !{!123, !"LVerDomain"}
!124 = !{!110, !111, !"polly.alias.scope.MemRef_call", !125}
!125 = distinct !{!125, !123}
!126 = !{!113, !114, !115, !116, !122}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !130, !"polly.alias.scope.MemRef_call"}
!130 = distinct !{!130, !"polly.alias.scope.domain"}
!131 = !{!132, !133}
!132 = distinct !{!132, !130, !"polly.alias.scope.MemRef_call1"}
!133 = distinct !{!133, !130, !"polly.alias.scope.MemRef_call2"}
!134 = distinct !{!134, !13}
!135 = !{!132, !129}
!136 = distinct !{!136, !13}
!137 = !{!133, !129}
!138 = distinct !{!138, !13}
!139 = !{!140}
!140 = distinct !{!140, !141}
!141 = distinct !{!141, !"LVerDomain"}
!142 = !{!71, !72, !"polly.alias.scope.MemRef_call", !143}
!143 = distinct !{!143, !141}
!144 = !{!74, !75, !76, !77, !140}
!145 = distinct !{!145, !13}
!146 = distinct !{!146, !13}
!147 = !{!148}
!148 = distinct !{!148, !149}
!149 = distinct !{!149, !"LVerDomain"}
!150 = !{!71, !72, !"polly.alias.scope.MemRef_call", !151}
!151 = distinct !{!151, !149}
!152 = !{!74, !75, !76, !77, !148}
!153 = distinct !{!153, !13}
!154 = distinct !{!154, !13}
!155 = distinct !{!155, !13}
!156 = distinct !{!156, !80, !13}
!157 = !{!158}
!158 = distinct !{!158, !159}
!159 = distinct !{!159, !"LVerDomain"}
!160 = !{!91, !92, !"polly.alias.scope.MemRef_call", !161}
!161 = distinct !{!161, !159}
!162 = !{!94, !95, !96, !97, !158}
!163 = distinct !{!163, !13}
!164 = distinct !{!164, !13}
!165 = !{!166}
!166 = distinct !{!166, !167}
!167 = distinct !{!167, !"LVerDomain"}
!168 = !{!91, !92, !"polly.alias.scope.MemRef_call", !169}
!169 = distinct !{!169, !167}
!170 = !{!94, !95, !96, !97, !166}
!171 = distinct !{!171, !13}
!172 = distinct !{!172, !13}
!173 = distinct !{!173, !13}
!174 = distinct !{!174, !80, !13}
!175 = !{!176}
!176 = distinct !{!176, !177}
!177 = distinct !{!177, !"LVerDomain"}
!178 = !{!110, !111, !"polly.alias.scope.MemRef_call", !179}
!179 = distinct !{!179, !177}
!180 = !{!113, !114, !115, !116, !176}
!181 = distinct !{!181, !13}
!182 = distinct !{!182, !13}
!183 = !{!184}
!184 = distinct !{!184, !185}
!185 = distinct !{!185, !"LVerDomain"}
!186 = !{!110, !111, !"polly.alias.scope.MemRef_call", !187}
!187 = distinct !{!187, !185}
!188 = !{!113, !114, !115, !116, !184}
!189 = distinct !{!189, !13}
!190 = distinct !{!190, !13}
!191 = distinct !{!191, !13}
!192 = distinct !{!192, !80, !13}
!193 = distinct !{!193, !13}
!194 = distinct !{!194, !13}
!195 = distinct !{!195, !13}
!196 = distinct !{!196, !13}
!197 = distinct !{!197, !13}
!198 = distinct !{!198, !13}
!199 = distinct !{!199, !13}
!200 = distinct !{!200, !13}
!201 = distinct !{!201, !13}
!202 = distinct !{!202, !13}
!203 = distinct !{!203, !13}
!204 = distinct !{!204, !13}
!205 = distinct !{!205, !13}
!206 = distinct !{!206, !13}
!207 = distinct !{!207, !13}
!208 = distinct !{!208, !13}
!209 = distinct !{!209, !13}
!210 = distinct !{!210, !13}
