; ModuleID = 'syr2k_recreations//mmp_syr2k_S_174.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_174.c"
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
  %call754 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1615 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2616 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1615, %call2
  %polly.access.call2635 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2635, %call1
  %2 = or i1 %0, %1
  %polly.access.call655 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call655, %call2
  %4 = icmp ule i8* %polly.access.call2635, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call655, %call1
  %8 = icmp ule i8* %polly.access.call1615, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header740, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
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
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv7.i, i64 %index950
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next951 = add i64 %index950, 4
  %vec.ind.next955 = add <4 x i64> %vec.ind954, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next951, 80
  br i1 %40, label %for.inc41.i, label %vector.body948, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body948
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph949, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit801.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start435, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1302, label %vector.ph1231

vector.ph1231:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1231
  %index1232 = phi i64 [ 0, %vector.ph1231 ], [ %index.next1233, %vector.body1230 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i, i64 %index1232
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1233 = add i64 %index1232, 4
  %46 = icmp eq i64 %index.next1233, %n.vec
  br i1 %46, label %middle.block1228, label %vector.body1230, !llvm.loop !18

middle.block1228:                                 ; preds = %vector.body1230
  %cmp.n1235 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1235, label %for.inc6.i, label %for.body3.i46.preheader1302

for.body3.i46.preheader1302:                      ; preds = %for.body3.i46.preheader, %middle.block1228
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1228 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1302, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1302 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1228, %for.cond1.preheader.i45
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
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !21
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !21
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 60
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !32

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 80
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !41

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit545.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start266, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1251 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1251, label %for.body3.i60.preheader1301, label %vector.ph1252

vector.ph1252:                                    ; preds = %for.body3.i60.preheader
  %n.vec1254 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1250

vector.body1250:                                  ; preds = %vector.body1250, %vector.ph1252
  %index1255 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1256, %vector.body1250 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i52, i64 %index1255
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1259 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1259, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1256 = add i64 %index1255, 4
  %57 = icmp eq i64 %index.next1256, %n.vec1254
  br i1 %57, label %middle.block1248, label %vector.body1250, !llvm.loop !60

middle.block1248:                                 ; preds = %vector.body1250
  %cmp.n1258 = icmp eq i64 %indvars.iv21.i52, %n.vec1254
  br i1 %cmp.n1258, label %for.inc6.i63, label %for.body3.i60.preheader1301

for.body3.i60.preheader1301:                      ; preds = %for.body3.i60.preheader, %middle.block1248
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1254, %middle.block1248 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1301, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1301 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1248, %for.cond1.preheader.i54
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
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !21
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !21
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 60
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !32

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 80
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !41

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit376.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1277 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1277, label %for.body3.i99.preheader1300, label %vector.ph1278

vector.ph1278:                                    ; preds = %for.body3.i99.preheader
  %n.vec1280 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1276

vector.body1276:                                  ; preds = %vector.body1276, %vector.ph1278
  %index1281 = phi i64 [ 0, %vector.ph1278 ], [ %index.next1282, %vector.body1276 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i91, i64 %index1281
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1285 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1285, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1282 = add i64 %index1281, 4
  %68 = icmp eq i64 %index.next1282, %n.vec1280
  br i1 %68, label %middle.block1274, label %vector.body1276, !llvm.loop !62

middle.block1274:                                 ; preds = %vector.body1276
  %cmp.n1284 = icmp eq i64 %indvars.iv21.i91, %n.vec1280
  br i1 %cmp.n1284, label %for.inc6.i102, label %for.body3.i99.preheader1300

for.body3.i99.preheader1300:                      ; preds = %for.body3.i99.preheader, %middle.block1274
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1280, %middle.block1274 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1300, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1300 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1274, %for.cond1.preheader.i93
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
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !21
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !21
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 60
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !32

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 80
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !41

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207.1
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
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
  %malloccall = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1289 = phi i64 [ %indvar.next1290, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1289, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1291 = icmp ult i64 %88, 4
  br i1 %min.iters.check1291, label %polly.loop_header191.preheader, label %vector.ph1292

vector.ph1292:                                    ; preds = %polly.loop_header
  %n.vec1294 = and i64 %88, -4
  br label %vector.body1288

vector.body1288:                                  ; preds = %vector.body1288, %vector.ph1292
  %index1295 = phi i64 [ 0, %vector.ph1292 ], [ %index.next1296, %vector.body1288 ]
  %90 = shl nuw nsw i64 %index1295, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1299 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1299, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1296 = add i64 %index1295, 4
  %95 = icmp eq i64 %index.next1296, %n.vec1294
  br i1 %95, label %middle.block1286, label %vector.body1288, !llvm.loop !74

middle.block1286:                                 ; preds = %vector.body1288
  %cmp.n1298 = icmp eq i64 %88, %n.vec1294
  br i1 %cmp.n1298, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1286
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1294, %middle.block1286 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1286
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond834.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1290 = add i64 %indvar1289, 1
  br i1 %exitcond834.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header205

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond833.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 80, %polly.loop_header199.preheader ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199.preheader ]
  %97 = shl nsw i64 %polly.indvar208, 4
  br label %polly.loop_header211

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -16
  %exitcond832.not = icmp eq i64 %polly.indvar_next209, 5
  br i1 %exitcond832.not, label %polly.loop_header205.1, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar214, 80
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next215, 32
  br i1 %exitcond826.not, label %polly.loop_header227.preheader, label %polly.loop_header211

polly.loop_header227.preheader:                   ; preds = %polly.loop_exit219
  %98 = mul nsw i64 %polly.indvar208, -16
  br label %polly.loop_header227

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %99 = add nuw nsw i64 %polly.indvar220, %97
  %polly.access.mul.call2224 = mul nuw nsw i64 %99, 60
  %polly.access.add.call2225 = add nuw nsw i64 %polly.indvar214, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit235
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header227.preheader ]
  %100 = shl i64 %polly.indvar230, 3
  %polly.access.mul.Packed_MemRef_call2248 = mul nuw nsw i64 %polly.indvar230, 80
  %scevgep256 = getelementptr i8, i8* %call1, i64 %100
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next231, 32
  br i1 %exitcond831.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit241 ], [ 0, %polly.loop_header227 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ %97, %polly.loop_header227 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv827, i64 15)
  %101 = add nsw i64 %polly.indvar236, %98
  %102 = mul nuw nsw i64 %polly.indvar236, 480
  %103 = mul nuw nsw i64 %polly.indvar236, 640
  %scevgep260 = getelementptr i8, i8* %call, i64 %103
  %polly.access.add.Packed_MemRef_call2249 = add nuw nsw i64 %101, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2250 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249
  %_p_scalar_251 = load double, double* %polly.access.Packed_MemRef_call2250, align 8
  %scevgep257 = getelementptr i8, i8* %scevgep256, i64 %102
  %scevgep257258 = bitcast i8* %scevgep257 to double*
  %_p_scalar_259 = load double, double* %scevgep257258, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 1
  %exitcond830.not = icmp eq i64 %indvars.iv.next828, %indvars.iv
  br i1 %exitcond830.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header233
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %104 = add nuw nsw i64 %polly.indvar242, %97
  %105 = mul nuw nsw i64 %104, 480
  %106 = add nuw nsw i64 %105, %100
  %scevgep245 = getelementptr i8, i8* %call1, i64 %106
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_251, %_p_scalar_247
  %polly.access.add.Packed_MemRef_call2253 = add nuw nsw i64 %polly.indvar242, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2254 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253
  %_p_scalar_255 = load double, double* %polly.access.Packed_MemRef_call2254, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_259, %_p_scalar_255
  %107 = shl i64 %104, 3
  %scevgep261 = getelementptr i8, i8* %scevgep260, i64 %107
  %scevgep261262 = bitcast i8* %scevgep261 to double*
  %_p_scalar_263 = load double, double* %scevgep261262, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_263
  store double %p_add42.i118, double* %scevgep261262, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond829.not = icmp eq i64 %polly.indvar242, %smin
  br i1 %exitcond829.not, label %polly.loop_exit241, label %polly.loop_header239

polly.start266:                                   ; preds = %kernel_syr2k.exit
  %malloccall268 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  br label %polly.loop_header352

polly.loop_header352:                             ; preds = %polly.loop_exit360, %polly.start266
  %indvar1263 = phi i64 [ %indvar.next1264, %polly.loop_exit360 ], [ 0, %polly.start266 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 1, %polly.start266 ]
  %108 = add i64 %indvar1263, 1
  %109 = mul nuw nsw i64 %polly.indvar355, 640
  %scevgep364 = getelementptr i8, i8* %call, i64 %109
  %min.iters.check1265 = icmp ult i64 %108, 4
  br i1 %min.iters.check1265, label %polly.loop_header358.preheader, label %vector.ph1266

vector.ph1266:                                    ; preds = %polly.loop_header352
  %n.vec1268 = and i64 %108, -4
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %vector.ph1266
  %index1269 = phi i64 [ 0, %vector.ph1266 ], [ %index.next1270, %vector.body1262 ]
  %110 = shl nuw nsw i64 %index1269, 3
  %111 = getelementptr i8, i8* %scevgep364, i64 %110
  %112 = bitcast i8* %111 to <4 x double>*
  %wide.load1273 = load <4 x double>, <4 x double>* %112, align 8, !alias.scope !79, !noalias !81
  %113 = fmul fast <4 x double> %wide.load1273, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %114 = bitcast i8* %111 to <4 x double>*
  store <4 x double> %113, <4 x double>* %114, align 8, !alias.scope !79, !noalias !81
  %index.next1270 = add i64 %index1269, 4
  %115 = icmp eq i64 %index.next1270, %n.vec1268
  br i1 %115, label %middle.block1260, label %vector.body1262, !llvm.loop !85

middle.block1260:                                 ; preds = %vector.body1262
  %cmp.n1272 = icmp eq i64 %108, %n.vec1268
  br i1 %cmp.n1272, label %polly.loop_exit360, label %polly.loop_header358.preheader

polly.loop_header358.preheader:                   ; preds = %polly.loop_header352, %middle.block1260
  %polly.indvar361.ph = phi i64 [ 0, %polly.loop_header352 ], [ %n.vec1268, %middle.block1260 ]
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_header358, %middle.block1260
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next356, 80
  %indvar.next1264 = add i64 %indvar1263, 1
  br i1 %exitcond847.not, label %polly.loop_header368.preheader, label %polly.loop_header352

polly.loop_header368.preheader:                   ; preds = %polly.loop_exit360
  %Packed_MemRef_call2269 = bitcast i8* %malloccall268 to double*
  br label %polly.loop_header374

polly.loop_header358:                             ; preds = %polly.loop_header358.preheader, %polly.loop_header358
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_header358 ], [ %polly.indvar361.ph, %polly.loop_header358.preheader ]
  %116 = shl nuw nsw i64 %polly.indvar361, 3
  %scevgep365 = getelementptr i8, i8* %scevgep364, i64 %116
  %scevgep365366 = bitcast i8* %scevgep365 to double*
  %_p_scalar_367 = load double, double* %scevgep365366, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_367, 1.200000e+00
  store double %p_mul.i57, double* %scevgep365366, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next362, %polly.indvar355
  br i1 %exitcond846.not, label %polly.loop_exit360, label %polly.loop_header358, !llvm.loop !86

polly.loop_header374:                             ; preds = %polly.loop_exit398, %polly.loop_header368.preheader
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit398 ], [ 80, %polly.loop_header368.preheader ]
  %polly.indvar377 = phi i64 [ %polly.indvar_next378, %polly.loop_exit398 ], [ 0, %polly.loop_header368.preheader ]
  %117 = shl nsw i64 %polly.indvar377, 4
  br label %polly.loop_header380

polly.loop_exit398:                               ; preds = %polly.loop_exit404
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %indvars.iv.next836 = add nsw i64 %indvars.iv835, -16
  %exitcond845.not = icmp eq i64 %polly.indvar_next378, 5
  br i1 %exitcond845.not, label %polly.loop_header374.1, label %polly.loop_header374

polly.loop_header380:                             ; preds = %polly.loop_exit388, %polly.loop_header374
  %polly.indvar383 = phi i64 [ 0, %polly.loop_header374 ], [ %polly.indvar_next384, %polly.loop_exit388 ]
  %polly.access.mul.Packed_MemRef_call2269 = mul nuw nsw i64 %polly.indvar383, 80
  br label %polly.loop_header386

polly.loop_exit388:                               ; preds = %polly.loop_header386
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next384, 32
  br i1 %exitcond838.not, label %polly.loop_header396.preheader, label %polly.loop_header380

polly.loop_header396.preheader:                   ; preds = %polly.loop_exit388
  %118 = mul nsw i64 %polly.indvar377, -16
  br label %polly.loop_header396

polly.loop_header386:                             ; preds = %polly.loop_header386, %polly.loop_header380
  %polly.indvar389 = phi i64 [ 0, %polly.loop_header380 ], [ %polly.indvar_next390, %polly.loop_header386 ]
  %119 = add nuw nsw i64 %polly.indvar389, %117
  %polly.access.mul.call2393 = mul nuw nsw i64 %119, 60
  %polly.access.add.call2394 = add nuw nsw i64 %polly.indvar383, %polly.access.mul.call2393
  %polly.access.call2395 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2394
  %polly.access.call2395.load = load double, double* %polly.access.call2395, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2269 = add nuw nsw i64 %polly.indvar389, %polly.access.mul.Packed_MemRef_call2269
  %polly.access.Packed_MemRef_call2269 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269
  store double %polly.access.call2395.load, double* %polly.access.Packed_MemRef_call2269, align 8
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next390, %indvars.iv835
  br i1 %exitcond837.not, label %polly.loop_exit388, label %polly.loop_header386

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_exit404
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 0, %polly.loop_header396.preheader ]
  %120 = shl i64 %polly.indvar399, 3
  %polly.access.mul.Packed_MemRef_call2269417 = mul nuw nsw i64 %polly.indvar399, 80
  %scevgep425 = getelementptr i8, i8* %call1, i64 %120
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit410
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next400, 32
  br i1 %exitcond844.not, label %polly.loop_exit398, label %polly.loop_header396

polly.loop_header402:                             ; preds = %polly.loop_exit410, %polly.loop_header396
  %indvars.iv839 = phi i64 [ %indvars.iv.next840, %polly.loop_exit410 ], [ 0, %polly.loop_header396 ]
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit410 ], [ %117, %polly.loop_header396 ]
  %smin841 = call i64 @llvm.smin.i64(i64 %indvars.iv839, i64 15)
  %121 = add nsw i64 %polly.indvar405, %118
  %122 = mul nuw nsw i64 %polly.indvar405, 480
  %123 = mul nuw nsw i64 %polly.indvar405, 640
  %scevgep429 = getelementptr i8, i8* %call, i64 %123
  %polly.access.add.Packed_MemRef_call2269418 = add nuw nsw i64 %121, %polly.access.mul.Packed_MemRef_call2269417
  %polly.access.Packed_MemRef_call2269419 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418
  %_p_scalar_420 = load double, double* %polly.access.Packed_MemRef_call2269419, align 8
  %scevgep426 = getelementptr i8, i8* %scevgep425, i64 %122
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next840 = add nuw nsw i64 %indvars.iv839, 1
  %exitcond843.not = icmp eq i64 %indvars.iv.next840, %indvars.iv835
  br i1 %exitcond843.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %124 = add nuw nsw i64 %polly.indvar411, %117
  %125 = mul nuw nsw i64 %124, 480
  %126 = add nuw nsw i64 %125, %120
  %scevgep414 = getelementptr i8, i8* %call1, i64 %126
  %scevgep414415 = bitcast i8* %scevgep414 to double*
  %_p_scalar_416 = load double, double* %scevgep414415, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_420, %_p_scalar_416
  %polly.access.add.Packed_MemRef_call2269422 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call2269417
  %polly.access.Packed_MemRef_call2269423 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422
  %_p_scalar_424 = load double, double* %polly.access.Packed_MemRef_call2269423, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_428, %_p_scalar_424
  %127 = shl i64 %124, 3
  %scevgep430 = getelementptr i8, i8* %scevgep429, i64 %127
  %scevgep430431 = bitcast i8* %scevgep430 to double*
  %_p_scalar_432 = load double, double* %scevgep430431, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_432
  store double %p_add42.i79, double* %scevgep430431, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond842.not = icmp eq i64 %polly.indvar411, %smin841
  br i1 %exitcond842.not, label %polly.loop_exit410, label %polly.loop_header408

polly.start435:                                   ; preds = %init_array.exit
  %malloccall437 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  br label %polly.loop_header521

polly.loop_header521:                             ; preds = %polly.loop_exit529, %polly.start435
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit529 ], [ 0, %polly.start435 ]
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_exit529 ], [ 1, %polly.start435 ]
  %128 = add i64 %indvar, 1
  %129 = mul nuw nsw i64 %polly.indvar524, 640
  %scevgep533 = getelementptr i8, i8* %call, i64 %129
  %min.iters.check1239 = icmp ult i64 %128, 4
  br i1 %min.iters.check1239, label %polly.loop_header527.preheader, label %vector.ph1240

vector.ph1240:                                    ; preds = %polly.loop_header521
  %n.vec1242 = and i64 %128, -4
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %vector.ph1240
  %index1243 = phi i64 [ 0, %vector.ph1240 ], [ %index.next1244, %vector.body1238 ]
  %130 = shl nuw nsw i64 %index1243, 3
  %131 = getelementptr i8, i8* %scevgep533, i64 %130
  %132 = bitcast i8* %131 to <4 x double>*
  %wide.load1247 = load <4 x double>, <4 x double>* %132, align 8, !alias.scope !89, !noalias !91
  %133 = fmul fast <4 x double> %wide.load1247, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %134 = bitcast i8* %131 to <4 x double>*
  store <4 x double> %133, <4 x double>* %134, align 8, !alias.scope !89, !noalias !91
  %index.next1244 = add i64 %index1243, 4
  %135 = icmp eq i64 %index.next1244, %n.vec1242
  br i1 %135, label %middle.block1236, label %vector.body1238, !llvm.loop !95

middle.block1236:                                 ; preds = %vector.body1238
  %cmp.n1246 = icmp eq i64 %128, %n.vec1242
  br i1 %cmp.n1246, label %polly.loop_exit529, label %polly.loop_header527.preheader

polly.loop_header527.preheader:                   ; preds = %polly.loop_header521, %middle.block1236
  %polly.indvar530.ph = phi i64 [ 0, %polly.loop_header521 ], [ %n.vec1242, %middle.block1236 ]
  br label %polly.loop_header527

polly.loop_exit529:                               ; preds = %polly.loop_header527, %middle.block1236
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %exitcond860.not = icmp eq i64 %polly.indvar_next525, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond860.not, label %polly.loop_header537.preheader, label %polly.loop_header521

polly.loop_header537.preheader:                   ; preds = %polly.loop_exit529
  %Packed_MemRef_call2438 = bitcast i8* %malloccall437 to double*
  br label %polly.loop_header543

polly.loop_header527:                             ; preds = %polly.loop_header527.preheader, %polly.loop_header527
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_header527 ], [ %polly.indvar530.ph, %polly.loop_header527.preheader ]
  %136 = shl nuw nsw i64 %polly.indvar530, 3
  %scevgep534 = getelementptr i8, i8* %scevgep533, i64 %136
  %scevgep534535 = bitcast i8* %scevgep534 to double*
  %_p_scalar_536 = load double, double* %scevgep534535, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_536, 1.200000e+00
  store double %p_mul.i, double* %scevgep534535, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next531, %polly.indvar524
  br i1 %exitcond859.not, label %polly.loop_exit529, label %polly.loop_header527, !llvm.loop !96

polly.loop_header543:                             ; preds = %polly.loop_exit567, %polly.loop_header537.preheader
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %polly.loop_exit567 ], [ 80, %polly.loop_header537.preheader ]
  %polly.indvar546 = phi i64 [ %polly.indvar_next547, %polly.loop_exit567 ], [ 0, %polly.loop_header537.preheader ]
  %137 = shl nsw i64 %polly.indvar546, 4
  br label %polly.loop_header549

polly.loop_exit567:                               ; preds = %polly.loop_exit573
  %polly.indvar_next547 = add nuw nsw i64 %polly.indvar546, 1
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, -16
  %exitcond858.not = icmp eq i64 %polly.indvar_next547, 5
  br i1 %exitcond858.not, label %polly.loop_header543.1, label %polly.loop_header543

polly.loop_header549:                             ; preds = %polly.loop_exit557, %polly.loop_header543
  %polly.indvar552 = phi i64 [ 0, %polly.loop_header543 ], [ %polly.indvar_next553, %polly.loop_exit557 ]
  %polly.access.mul.Packed_MemRef_call2438 = mul nuw nsw i64 %polly.indvar552, 80
  br label %polly.loop_header555

polly.loop_exit557:                               ; preds = %polly.loop_header555
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %exitcond851.not = icmp eq i64 %polly.indvar_next553, 32
  br i1 %exitcond851.not, label %polly.loop_header565.preheader, label %polly.loop_header549

polly.loop_header565.preheader:                   ; preds = %polly.loop_exit557
  %138 = mul nsw i64 %polly.indvar546, -16
  br label %polly.loop_header565

polly.loop_header555:                             ; preds = %polly.loop_header555, %polly.loop_header549
  %polly.indvar558 = phi i64 [ 0, %polly.loop_header549 ], [ %polly.indvar_next559, %polly.loop_header555 ]
  %139 = add nuw nsw i64 %polly.indvar558, %137
  %polly.access.mul.call2562 = mul nuw nsw i64 %139, 60
  %polly.access.add.call2563 = add nuw nsw i64 %polly.indvar552, %polly.access.mul.call2562
  %polly.access.call2564 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2563
  %polly.access.call2564.load = load double, double* %polly.access.call2564, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2438 = add nuw nsw i64 %polly.indvar558, %polly.access.mul.Packed_MemRef_call2438
  %polly.access.Packed_MemRef_call2438 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438
  store double %polly.access.call2564.load, double* %polly.access.Packed_MemRef_call2438, align 8
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %exitcond850.not = icmp eq i64 %polly.indvar_next559, %indvars.iv848
  br i1 %exitcond850.not, label %polly.loop_exit557, label %polly.loop_header555

polly.loop_header565:                             ; preds = %polly.loop_header565.preheader, %polly.loop_exit573
  %polly.indvar568 = phi i64 [ %polly.indvar_next569, %polly.loop_exit573 ], [ 0, %polly.loop_header565.preheader ]
  %140 = shl i64 %polly.indvar568, 3
  %polly.access.mul.Packed_MemRef_call2438586 = mul nuw nsw i64 %polly.indvar568, 80
  %scevgep594 = getelementptr i8, i8* %call1, i64 %140
  br label %polly.loop_header571

polly.loop_exit573:                               ; preds = %polly.loop_exit579
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next569, 32
  br i1 %exitcond857.not, label %polly.loop_exit567, label %polly.loop_header565

polly.loop_header571:                             ; preds = %polly.loop_exit579, %polly.loop_header565
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %polly.loop_exit579 ], [ 0, %polly.loop_header565 ]
  %polly.indvar574 = phi i64 [ %polly.indvar_next575, %polly.loop_exit579 ], [ %137, %polly.loop_header565 ]
  %smin854 = call i64 @llvm.smin.i64(i64 %indvars.iv852, i64 15)
  %141 = add nsw i64 %polly.indvar574, %138
  %142 = mul nuw nsw i64 %polly.indvar574, 480
  %143 = mul nuw nsw i64 %polly.indvar574, 640
  %scevgep598 = getelementptr i8, i8* %call, i64 %143
  %polly.access.add.Packed_MemRef_call2438587 = add nuw nsw i64 %141, %polly.access.mul.Packed_MemRef_call2438586
  %polly.access.Packed_MemRef_call2438588 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587
  %_p_scalar_589 = load double, double* %polly.access.Packed_MemRef_call2438588, align 8
  %scevgep595 = getelementptr i8, i8* %scevgep594, i64 %142
  %scevgep595596 = bitcast i8* %scevgep595 to double*
  %_p_scalar_597 = load double, double* %scevgep595596, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577

polly.loop_exit579:                               ; preds = %polly.loop_header577
  %polly.indvar_next575 = add nuw nsw i64 %polly.indvar574, 1
  %indvars.iv.next853 = add nuw nsw i64 %indvars.iv852, 1
  %exitcond856.not = icmp eq i64 %indvars.iv.next853, %indvars.iv848
  br i1 %exitcond856.not, label %polly.loop_exit573, label %polly.loop_header571

polly.loop_header577:                             ; preds = %polly.loop_header577, %polly.loop_header571
  %polly.indvar580 = phi i64 [ 0, %polly.loop_header571 ], [ %polly.indvar_next581, %polly.loop_header577 ]
  %144 = add nuw nsw i64 %polly.indvar580, %137
  %145 = mul nuw nsw i64 %144, 480
  %146 = add nuw nsw i64 %145, %140
  %scevgep583 = getelementptr i8, i8* %call1, i64 %146
  %scevgep583584 = bitcast i8* %scevgep583 to double*
  %_p_scalar_585 = load double, double* %scevgep583584, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_589, %_p_scalar_585
  %polly.access.add.Packed_MemRef_call2438591 = add nuw nsw i64 %polly.indvar580, %polly.access.mul.Packed_MemRef_call2438586
  %polly.access.Packed_MemRef_call2438592 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591
  %_p_scalar_593 = load double, double* %polly.access.Packed_MemRef_call2438592, align 8
  %p_mul37.i = fmul fast double %_p_scalar_597, %_p_scalar_593
  %147 = shl i64 %144, 3
  %scevgep599 = getelementptr i8, i8* %scevgep598, i64 %147
  %scevgep599600 = bitcast i8* %scevgep599 to double*
  %_p_scalar_601 = load double, double* %scevgep599600, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_601
  store double %p_add42.i, double* %scevgep599600, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581 = add nuw nsw i64 %polly.indvar580, 1
  %exitcond855.not = icmp eq i64 %polly.indvar580, %smin854
  br i1 %exitcond855.not, label %polly.loop_exit579, label %polly.loop_header577

polly.loop_header740:                             ; preds = %entry, %polly.loop_exit748
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit748 ], [ 0, %entry ]
  %148 = mul nuw nsw i64 %polly.indvar743, 640
  %149 = trunc i64 %polly.indvar743 to i32
  %broadcast.splatinsert970 = insertelement <4 x i32> poison, i32 %149, i32 0
  %broadcast.splat971 = shufflevector <4 x i32> %broadcast.splatinsert970, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body960

vector.body960:                                   ; preds = %vector.body960, %polly.loop_header740
  %index962 = phi i64 [ 0, %polly.loop_header740 ], [ %index.next963, %vector.body960 ]
  %vec.ind968 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740 ], [ %vec.ind.next969, %vector.body960 ]
  %150 = mul <4 x i32> %vec.ind968, %broadcast.splat971
  %151 = add <4 x i32> %150, <i32 3, i32 3, i32 3, i32 3>
  %152 = urem <4 x i32> %151, <i32 80, i32 80, i32 80, i32 80>
  %153 = sitofp <4 x i32> %152 to <4 x double>
  %154 = fmul fast <4 x double> %153, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %155 = shl i64 %index962, 3
  %156 = add nuw nsw i64 %155, %148
  %157 = getelementptr i8, i8* %call, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %154, <4 x double>* %158, align 8, !alias.scope !99, !noalias !101
  %index.next963 = add i64 %index962, 4
  %vec.ind.next969 = add <4 x i32> %vec.ind968, <i32 4, i32 4, i32 4, i32 4>
  %159 = icmp eq i64 %index.next963, 32
  br i1 %159, label %polly.loop_exit748, label %vector.body960, !llvm.loop !104

polly.loop_exit748:                               ; preds = %vector.body960
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next744, 32
  br i1 %exitcond880.not, label %polly.loop_header740.1, label %polly.loop_header740

polly.loop_header767:                             ; preds = %polly.loop_exit748.2.2, %polly.loop_exit775
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %polly.loop_exit748.2.2 ]
  %160 = mul nuw nsw i64 %polly.indvar770, 480
  %161 = trunc i64 %polly.indvar770 to i32
  %broadcast.splatinsert1084 = insertelement <4 x i32> poison, i32 %161, i32 0
  %broadcast.splat1085 = shufflevector <4 x i32> %broadcast.splatinsert1084, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %polly.loop_header767
  %index1076 = phi i64 [ 0, %polly.loop_header767 ], [ %index.next1077, %vector.body1074 ]
  %vec.ind1082 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767 ], [ %vec.ind.next1083, %vector.body1074 ]
  %162 = mul <4 x i32> %vec.ind1082, %broadcast.splat1085
  %163 = add <4 x i32> %162, <i32 2, i32 2, i32 2, i32 2>
  %164 = urem <4 x i32> %163, <i32 60, i32 60, i32 60, i32 60>
  %165 = sitofp <4 x i32> %164 to <4 x double>
  %166 = fmul fast <4 x double> %165, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %167 = shl i64 %index1076, 3
  %168 = add i64 %167, %160
  %169 = getelementptr i8, i8* %call2, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %166, <4 x double>* %170, align 8, !alias.scope !103, !noalias !105
  %index.next1077 = add i64 %index1076, 4
  %vec.ind.next1083 = add <4 x i32> %vec.ind1082, <i32 4, i32 4, i32 4, i32 4>
  %171 = icmp eq i64 %index.next1077, 32
  br i1 %171, label %polly.loop_exit775, label %vector.body1074, !llvm.loop !106

polly.loop_exit775:                               ; preds = %vector.body1074
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %exitcond871.not = icmp eq i64 %polly.indvar_next771, 32
  br i1 %exitcond871.not, label %polly.loop_header767.1, label %polly.loop_header767

polly.loop_header793:                             ; preds = %polly.loop_exit775.1.2, %polly.loop_exit801
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_exit775.1.2 ]
  %172 = mul nuw nsw i64 %polly.indvar796, 480
  %173 = trunc i64 %polly.indvar796 to i32
  %broadcast.splatinsert1162 = insertelement <4 x i32> poison, i32 %173, i32 0
  %broadcast.splat1163 = shufflevector <4 x i32> %broadcast.splatinsert1162, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %polly.loop_header793
  %index1154 = phi i64 [ 0, %polly.loop_header793 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1160 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793 ], [ %vec.ind.next1161, %vector.body1152 ]
  %174 = mul <4 x i32> %vec.ind1160, %broadcast.splat1163
  %175 = add <4 x i32> %174, <i32 1, i32 1, i32 1, i32 1>
  %176 = urem <4 x i32> %175, <i32 80, i32 80, i32 80, i32 80>
  %177 = sitofp <4 x i32> %176 to <4 x double>
  %178 = fmul fast <4 x double> %177, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %179 = shl i64 %index1154, 3
  %180 = add i64 %179, %172
  %181 = getelementptr i8, i8* %call1, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %178, <4 x double>* %182, align 8, !alias.scope !102, !noalias !107
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1161 = add <4 x i32> %vec.ind1160, <i32 4, i32 4, i32 4, i32 4>
  %183 = icmp eq i64 %index.next1155, 32
  br i1 %183, label %polly.loop_exit801, label %vector.body1152, !llvm.loop !108

polly.loop_exit801:                               ; preds = %vector.body1152
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next797, 32
  br i1 %exitcond865.not, label %polly.loop_header793.1, label %polly.loop_header793

polly.loop_header205.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit229.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit229.1 ], [ 80, %polly.loop_exit229 ]
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %184 = shl nsw i64 %polly.indvar208.1, 4
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_exit219.1, %polly.loop_header205.1
  %polly.indvar214.1 = phi i64 [ 0, %polly.loop_header205.1 ], [ %polly.indvar_next215.1, %polly.loop_exit219.1 ]
  %185 = add nuw nsw i64 %polly.indvar214.1, 32
  %polly.access.mul.Packed_MemRef_call2.1 = mul nuw nsw i64 %polly.indvar214.1, 80
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_header217.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_header217.1 ]
  %186 = add nuw nsw i64 %polly.indvar220.1, %184
  %polly.access.mul.call2224.1 = mul nuw nsw i64 %186, 60
  %polly.access.add.call2225.1 = add nuw nsw i64 %185, %polly.access.mul.call2224.1
  %polly.access.call2226.1 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2225.1
  %polly.access.call2226.load.1 = load double, double* %polly.access.call2226.1, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar220.1, %polly.access.mul.Packed_MemRef_call2.1
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2226.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next221.1, %indvars.iv.1
  br i1 %exitcond.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_header217.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond826.1.not = icmp eq i64 %polly.indvar_next215.1, 28
  br i1 %exitcond826.1.not, label %polly.loop_header227.preheader.1, label %polly.loop_header211.1

polly.loop_header227.preheader.1:                 ; preds = %polly.loop_exit219.1
  %187 = mul nsw i64 %polly.indvar208.1, -16
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_header227.preheader.1
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_header227.preheader.1 ]
  %188 = shl i64 %polly.indvar230.1, 3
  %189 = add i64 %188, 256
  %polly.access.mul.Packed_MemRef_call2248.1 = mul nuw nsw i64 %polly.indvar230.1, 80
  %scevgep256.1 = getelementptr i8, i8* %call1, i64 %189
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit241.1, %polly.loop_header227.1
  %indvars.iv827.1 = phi i64 [ %indvars.iv.next828.1, %polly.loop_exit241.1 ], [ 0, %polly.loop_header227.1 ]
  %polly.indvar236.1 = phi i64 [ %polly.indvar_next237.1, %polly.loop_exit241.1 ], [ %184, %polly.loop_header227.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv827.1, i64 15)
  %190 = add nsw i64 %polly.indvar236.1, %187
  %191 = mul nuw nsw i64 %polly.indvar236.1, 480
  %192 = mul nuw nsw i64 %polly.indvar236.1, 640
  %scevgep260.1 = getelementptr i8, i8* %call, i64 %192
  %polly.access.add.Packed_MemRef_call2249.1 = add nuw nsw i64 %190, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2250.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1
  %_p_scalar_251.1 = load double, double* %polly.access.Packed_MemRef_call2250.1, align 8
  %scevgep257.1 = getelementptr i8, i8* %scevgep256.1, i64 %191
  %scevgep257258.1 = bitcast i8* %scevgep257.1 to double*
  %_p_scalar_259.1 = load double, double* %scevgep257258.1, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header239.1

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_header233.1
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_header233.1 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %193 = add nuw nsw i64 %polly.indvar242.1, %184
  %194 = mul nuw nsw i64 %193, 480
  %195 = add nuw nsw i64 %194, %189
  %scevgep245.1 = getelementptr i8, i8* %call1, i64 %195
  %scevgep245246.1 = bitcast i8* %scevgep245.1 to double*
  %_p_scalar_247.1 = load double, double* %scevgep245246.1, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.1 = fmul fast double %_p_scalar_251.1, %_p_scalar_247.1
  %polly.access.add.Packed_MemRef_call2253.1 = add nuw nsw i64 %polly.indvar242.1, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2254.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1
  %_p_scalar_255.1 = load double, double* %polly.access.Packed_MemRef_call2254.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_259.1, %_p_scalar_255.1
  %196 = shl i64 %193, 3
  %scevgep261.1 = getelementptr i8, i8* %scevgep260.1, i64 %196
  %scevgep261262.1 = bitcast i8* %scevgep261.1 to double*
  %_p_scalar_263.1 = load double, double* %scevgep261262.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_263.1
  store double %p_add42.i118.1, double* %scevgep261262.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %exitcond829.1.not = icmp eq i64 %polly.indvar242.1, %smin.1
  br i1 %exitcond829.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.1

polly.loop_exit241.1:                             ; preds = %polly.loop_header239.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %indvars.iv.next828.1 = add nuw nsw i64 %indvars.iv827.1, 1
  %exitcond830.1.not = icmp eq i64 %indvars.iv.next828.1, %indvars.iv.1
  br i1 %exitcond830.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %exitcond831.1.not = icmp eq i64 %polly.indvar_next231.1, 28
  br i1 %exitcond831.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, -16
  %exitcond832.1.not = icmp eq i64 %polly.indvar_next209.1, 5
  br i1 %exitcond832.1.not, label %polly.loop_exit207.1, label %polly.loop_header205.1

polly.loop_exit207.1:                             ; preds = %polly.loop_exit229.1
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header374.1:                           ; preds = %polly.loop_exit398, %polly.loop_exit398.1
  %indvars.iv835.1 = phi i64 [ %indvars.iv.next836.1, %polly.loop_exit398.1 ], [ 80, %polly.loop_exit398 ]
  %polly.indvar377.1 = phi i64 [ %polly.indvar_next378.1, %polly.loop_exit398.1 ], [ 0, %polly.loop_exit398 ]
  %197 = shl nsw i64 %polly.indvar377.1, 4
  br label %polly.loop_header380.1

polly.loop_header380.1:                           ; preds = %polly.loop_exit388.1, %polly.loop_header374.1
  %polly.indvar383.1 = phi i64 [ 0, %polly.loop_header374.1 ], [ %polly.indvar_next384.1, %polly.loop_exit388.1 ]
  %198 = add nuw nsw i64 %polly.indvar383.1, 32
  %polly.access.mul.Packed_MemRef_call2269.1 = mul nuw nsw i64 %polly.indvar383.1, 80
  br label %polly.loop_header386.1

polly.loop_header386.1:                           ; preds = %polly.loop_header386.1, %polly.loop_header380.1
  %polly.indvar389.1 = phi i64 [ 0, %polly.loop_header380.1 ], [ %polly.indvar_next390.1, %polly.loop_header386.1 ]
  %199 = add nuw nsw i64 %polly.indvar389.1, %197
  %polly.access.mul.call2393.1 = mul nuw nsw i64 %199, 60
  %polly.access.add.call2394.1 = add nuw nsw i64 %198, %polly.access.mul.call2393.1
  %polly.access.call2395.1 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2394.1
  %polly.access.call2395.load.1 = load double, double* %polly.access.call2395.1, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2269.1 = add nuw nsw i64 %polly.indvar389.1, %polly.access.mul.Packed_MemRef_call2269.1
  %polly.access.Packed_MemRef_call2269.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269.1
  store double %polly.access.call2395.load.1, double* %polly.access.Packed_MemRef_call2269.1, align 8
  %polly.indvar_next390.1 = add nuw nsw i64 %polly.indvar389.1, 1
  %exitcond837.1.not = icmp eq i64 %polly.indvar_next390.1, %indvars.iv835.1
  br i1 %exitcond837.1.not, label %polly.loop_exit388.1, label %polly.loop_header386.1

polly.loop_exit388.1:                             ; preds = %polly.loop_header386.1
  %polly.indvar_next384.1 = add nuw nsw i64 %polly.indvar383.1, 1
  %exitcond838.1.not = icmp eq i64 %polly.indvar_next384.1, 28
  br i1 %exitcond838.1.not, label %polly.loop_header396.preheader.1, label %polly.loop_header380.1

polly.loop_header396.preheader.1:                 ; preds = %polly.loop_exit388.1
  %200 = mul nsw i64 %polly.indvar377.1, -16
  br label %polly.loop_header396.1

polly.loop_header396.1:                           ; preds = %polly.loop_exit404.1, %polly.loop_header396.preheader.1
  %polly.indvar399.1 = phi i64 [ %polly.indvar_next400.1, %polly.loop_exit404.1 ], [ 0, %polly.loop_header396.preheader.1 ]
  %201 = shl i64 %polly.indvar399.1, 3
  %202 = add i64 %201, 256
  %polly.access.mul.Packed_MemRef_call2269417.1 = mul nuw nsw i64 %polly.indvar399.1, 80
  %scevgep425.1 = getelementptr i8, i8* %call1, i64 %202
  br label %polly.loop_header402.1

polly.loop_header402.1:                           ; preds = %polly.loop_exit410.1, %polly.loop_header396.1
  %indvars.iv839.1 = phi i64 [ %indvars.iv.next840.1, %polly.loop_exit410.1 ], [ 0, %polly.loop_header396.1 ]
  %polly.indvar405.1 = phi i64 [ %polly.indvar_next406.1, %polly.loop_exit410.1 ], [ %197, %polly.loop_header396.1 ]
  %smin841.1 = call i64 @llvm.smin.i64(i64 %indvars.iv839.1, i64 15)
  %203 = add nsw i64 %polly.indvar405.1, %200
  %204 = mul nuw nsw i64 %polly.indvar405.1, 480
  %205 = mul nuw nsw i64 %polly.indvar405.1, 640
  %scevgep429.1 = getelementptr i8, i8* %call, i64 %205
  %polly.access.add.Packed_MemRef_call2269418.1 = add nuw nsw i64 %203, %polly.access.mul.Packed_MemRef_call2269417.1
  %polly.access.Packed_MemRef_call2269419.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269418.1
  %_p_scalar_420.1 = load double, double* %polly.access.Packed_MemRef_call2269419.1, align 8
  %scevgep426.1 = getelementptr i8, i8* %scevgep425.1, i64 %204
  %scevgep426427.1 = bitcast i8* %scevgep426.1 to double*
  %_p_scalar_428.1 = load double, double* %scevgep426427.1, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header408.1

polly.loop_header408.1:                           ; preds = %polly.loop_header408.1, %polly.loop_header402.1
  %polly.indvar411.1 = phi i64 [ 0, %polly.loop_header402.1 ], [ %polly.indvar_next412.1, %polly.loop_header408.1 ]
  %206 = add nuw nsw i64 %polly.indvar411.1, %197
  %207 = mul nuw nsw i64 %206, 480
  %208 = add nuw nsw i64 %207, %202
  %scevgep414.1 = getelementptr i8, i8* %call1, i64 %208
  %scevgep414415.1 = bitcast i8* %scevgep414.1 to double*
  %_p_scalar_416.1 = load double, double* %scevgep414415.1, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.1 = fmul fast double %_p_scalar_420.1, %_p_scalar_416.1
  %polly.access.add.Packed_MemRef_call2269422.1 = add nuw nsw i64 %polly.indvar411.1, %polly.access.mul.Packed_MemRef_call2269417.1
  %polly.access.Packed_MemRef_call2269423.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.1
  %_p_scalar_424.1 = load double, double* %polly.access.Packed_MemRef_call2269423.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_428.1, %_p_scalar_424.1
  %209 = shl i64 %206, 3
  %scevgep430.1 = getelementptr i8, i8* %scevgep429.1, i64 %209
  %scevgep430431.1 = bitcast i8* %scevgep430.1 to double*
  %_p_scalar_432.1 = load double, double* %scevgep430431.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_432.1
  store double %p_add42.i79.1, double* %scevgep430431.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next412.1 = add nuw nsw i64 %polly.indvar411.1, 1
  %exitcond842.1.not = icmp eq i64 %polly.indvar411.1, %smin841.1
  br i1 %exitcond842.1.not, label %polly.loop_exit410.1, label %polly.loop_header408.1

polly.loop_exit410.1:                             ; preds = %polly.loop_header408.1
  %polly.indvar_next406.1 = add nuw nsw i64 %polly.indvar405.1, 1
  %indvars.iv.next840.1 = add nuw nsw i64 %indvars.iv839.1, 1
  %exitcond843.1.not = icmp eq i64 %indvars.iv.next840.1, %indvars.iv835.1
  br i1 %exitcond843.1.not, label %polly.loop_exit404.1, label %polly.loop_header402.1

polly.loop_exit404.1:                             ; preds = %polly.loop_exit410.1
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %exitcond844.1.not = icmp eq i64 %polly.indvar_next400.1, 28
  br i1 %exitcond844.1.not, label %polly.loop_exit398.1, label %polly.loop_header396.1

polly.loop_exit398.1:                             ; preds = %polly.loop_exit404.1
  %polly.indvar_next378.1 = add nuw nsw i64 %polly.indvar377.1, 1
  %indvars.iv.next836.1 = add nsw i64 %indvars.iv835.1, -16
  %exitcond845.1.not = icmp eq i64 %polly.indvar_next378.1, 5
  br i1 %exitcond845.1.not, label %polly.loop_exit376.1, label %polly.loop_header374.1

polly.loop_exit376.1:                             ; preds = %polly.loop_exit398.1
  tail call void @free(i8* nonnull %malloccall268)
  br label %kernel_syr2k.exit90

polly.loop_header543.1:                           ; preds = %polly.loop_exit567, %polly.loop_exit567.1
  %indvars.iv848.1 = phi i64 [ %indvars.iv.next849.1, %polly.loop_exit567.1 ], [ 80, %polly.loop_exit567 ]
  %polly.indvar546.1 = phi i64 [ %polly.indvar_next547.1, %polly.loop_exit567.1 ], [ 0, %polly.loop_exit567 ]
  %210 = shl nsw i64 %polly.indvar546.1, 4
  br label %polly.loop_header549.1

polly.loop_header549.1:                           ; preds = %polly.loop_exit557.1, %polly.loop_header543.1
  %polly.indvar552.1 = phi i64 [ 0, %polly.loop_header543.1 ], [ %polly.indvar_next553.1, %polly.loop_exit557.1 ]
  %211 = add nuw nsw i64 %polly.indvar552.1, 32
  %polly.access.mul.Packed_MemRef_call2438.1 = mul nuw nsw i64 %polly.indvar552.1, 80
  br label %polly.loop_header555.1

polly.loop_header555.1:                           ; preds = %polly.loop_header555.1, %polly.loop_header549.1
  %polly.indvar558.1 = phi i64 [ 0, %polly.loop_header549.1 ], [ %polly.indvar_next559.1, %polly.loop_header555.1 ]
  %212 = add nuw nsw i64 %polly.indvar558.1, %210
  %polly.access.mul.call2562.1 = mul nuw nsw i64 %212, 60
  %polly.access.add.call2563.1 = add nuw nsw i64 %211, %polly.access.mul.call2562.1
  %polly.access.call2564.1 = getelementptr double, double* %polly.access.cast.call2616, i64 %polly.access.add.call2563.1
  %polly.access.call2564.load.1 = load double, double* %polly.access.call2564.1, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2438.1 = add nuw nsw i64 %polly.indvar558.1, %polly.access.mul.Packed_MemRef_call2438.1
  %polly.access.Packed_MemRef_call2438.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438.1
  store double %polly.access.call2564.load.1, double* %polly.access.Packed_MemRef_call2438.1, align 8
  %polly.indvar_next559.1 = add nuw nsw i64 %polly.indvar558.1, 1
  %exitcond850.1.not = icmp eq i64 %polly.indvar_next559.1, %indvars.iv848.1
  br i1 %exitcond850.1.not, label %polly.loop_exit557.1, label %polly.loop_header555.1

polly.loop_exit557.1:                             ; preds = %polly.loop_header555.1
  %polly.indvar_next553.1 = add nuw nsw i64 %polly.indvar552.1, 1
  %exitcond851.1.not = icmp eq i64 %polly.indvar_next553.1, 28
  br i1 %exitcond851.1.not, label %polly.loop_header565.preheader.1, label %polly.loop_header549.1

polly.loop_header565.preheader.1:                 ; preds = %polly.loop_exit557.1
  %213 = mul nsw i64 %polly.indvar546.1, -16
  br label %polly.loop_header565.1

polly.loop_header565.1:                           ; preds = %polly.loop_exit573.1, %polly.loop_header565.preheader.1
  %polly.indvar568.1 = phi i64 [ %polly.indvar_next569.1, %polly.loop_exit573.1 ], [ 0, %polly.loop_header565.preheader.1 ]
  %214 = shl i64 %polly.indvar568.1, 3
  %215 = add i64 %214, 256
  %polly.access.mul.Packed_MemRef_call2438586.1 = mul nuw nsw i64 %polly.indvar568.1, 80
  %scevgep594.1 = getelementptr i8, i8* %call1, i64 %215
  br label %polly.loop_header571.1

polly.loop_header571.1:                           ; preds = %polly.loop_exit579.1, %polly.loop_header565.1
  %indvars.iv852.1 = phi i64 [ %indvars.iv.next853.1, %polly.loop_exit579.1 ], [ 0, %polly.loop_header565.1 ]
  %polly.indvar574.1 = phi i64 [ %polly.indvar_next575.1, %polly.loop_exit579.1 ], [ %210, %polly.loop_header565.1 ]
  %smin854.1 = call i64 @llvm.smin.i64(i64 %indvars.iv852.1, i64 15)
  %216 = add nsw i64 %polly.indvar574.1, %213
  %217 = mul nuw nsw i64 %polly.indvar574.1, 480
  %218 = mul nuw nsw i64 %polly.indvar574.1, 640
  %scevgep598.1 = getelementptr i8, i8* %call, i64 %218
  %polly.access.add.Packed_MemRef_call2438587.1 = add nuw nsw i64 %216, %polly.access.mul.Packed_MemRef_call2438586.1
  %polly.access.Packed_MemRef_call2438588.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438587.1
  %_p_scalar_589.1 = load double, double* %polly.access.Packed_MemRef_call2438588.1, align 8
  %scevgep595.1 = getelementptr i8, i8* %scevgep594.1, i64 %217
  %scevgep595596.1 = bitcast i8* %scevgep595.1 to double*
  %_p_scalar_597.1 = load double, double* %scevgep595596.1, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header577.1

polly.loop_header577.1:                           ; preds = %polly.loop_header577.1, %polly.loop_header571.1
  %polly.indvar580.1 = phi i64 [ 0, %polly.loop_header571.1 ], [ %polly.indvar_next581.1, %polly.loop_header577.1 ]
  %219 = add nuw nsw i64 %polly.indvar580.1, %210
  %220 = mul nuw nsw i64 %219, 480
  %221 = add nuw nsw i64 %220, %215
  %scevgep583.1 = getelementptr i8, i8* %call1, i64 %221
  %scevgep583584.1 = bitcast i8* %scevgep583.1 to double*
  %_p_scalar_585.1 = load double, double* %scevgep583584.1, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.1 = fmul fast double %_p_scalar_589.1, %_p_scalar_585.1
  %polly.access.add.Packed_MemRef_call2438591.1 = add nuw nsw i64 %polly.indvar580.1, %polly.access.mul.Packed_MemRef_call2438586.1
  %polly.access.Packed_MemRef_call2438592.1 = getelementptr double, double* %Packed_MemRef_call2438, i64 %polly.access.add.Packed_MemRef_call2438591.1
  %_p_scalar_593.1 = load double, double* %polly.access.Packed_MemRef_call2438592.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_597.1, %_p_scalar_593.1
  %222 = shl i64 %219, 3
  %scevgep599.1 = getelementptr i8, i8* %scevgep598.1, i64 %222
  %scevgep599600.1 = bitcast i8* %scevgep599.1 to double*
  %_p_scalar_601.1 = load double, double* %scevgep599600.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_601.1
  store double %p_add42.i.1, double* %scevgep599600.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next581.1 = add nuw nsw i64 %polly.indvar580.1, 1
  %exitcond855.1.not = icmp eq i64 %polly.indvar580.1, %smin854.1
  br i1 %exitcond855.1.not, label %polly.loop_exit579.1, label %polly.loop_header577.1

polly.loop_exit579.1:                             ; preds = %polly.loop_header577.1
  %polly.indvar_next575.1 = add nuw nsw i64 %polly.indvar574.1, 1
  %indvars.iv.next853.1 = add nuw nsw i64 %indvars.iv852.1, 1
  %exitcond856.1.not = icmp eq i64 %indvars.iv.next853.1, %indvars.iv848.1
  br i1 %exitcond856.1.not, label %polly.loop_exit573.1, label %polly.loop_header571.1

polly.loop_exit573.1:                             ; preds = %polly.loop_exit579.1
  %polly.indvar_next569.1 = add nuw nsw i64 %polly.indvar568.1, 1
  %exitcond857.1.not = icmp eq i64 %polly.indvar_next569.1, 28
  br i1 %exitcond857.1.not, label %polly.loop_exit567.1, label %polly.loop_header565.1

polly.loop_exit567.1:                             ; preds = %polly.loop_exit573.1
  %polly.indvar_next547.1 = add nuw nsw i64 %polly.indvar546.1, 1
  %indvars.iv.next849.1 = add nsw i64 %indvars.iv848.1, -16
  %exitcond858.1.not = icmp eq i64 %polly.indvar_next547.1, 5
  br i1 %exitcond858.1.not, label %polly.loop_exit545.1, label %polly.loop_header543.1

polly.loop_exit545.1:                             ; preds = %polly.loop_exit567.1
  tail call void @free(i8* nonnull %malloccall437)
  br label %kernel_syr2k.exit

polly.loop_header793.1:                           ; preds = %polly.loop_exit801, %polly.loop_exit801.1
  %polly.indvar796.1 = phi i64 [ %polly.indvar_next797.1, %polly.loop_exit801.1 ], [ 0, %polly.loop_exit801 ]
  %223 = mul nuw nsw i64 %polly.indvar796.1, 480
  %224 = trunc i64 %polly.indvar796.1 to i32
  %broadcast.splatinsert1174 = insertelement <4 x i32> poison, i32 %224, i32 0
  %broadcast.splat1175 = shufflevector <4 x i32> %broadcast.splatinsert1174, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %polly.loop_header793.1
  %index1168 = phi i64 [ 0, %polly.loop_header793.1 ], [ %index.next1169, %vector.body1166 ]
  %vec.ind1172 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1 ], [ %vec.ind.next1173, %vector.body1166 ]
  %225 = add nuw nsw <4 x i64> %vec.ind1172, <i64 32, i64 32, i64 32, i64 32>
  %226 = trunc <4 x i64> %225 to <4 x i32>
  %227 = mul <4 x i32> %broadcast.splat1175, %226
  %228 = add <4 x i32> %227, <i32 1, i32 1, i32 1, i32 1>
  %229 = urem <4 x i32> %228, <i32 80, i32 80, i32 80, i32 80>
  %230 = sitofp <4 x i32> %229 to <4 x double>
  %231 = fmul fast <4 x double> %230, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %232 = extractelement <4 x i64> %225, i32 0
  %233 = shl i64 %232, 3
  %234 = add i64 %233, %223
  %235 = getelementptr i8, i8* %call1, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %231, <4 x double>* %236, align 8, !alias.scope !102, !noalias !107
  %index.next1169 = add i64 %index1168, 4
  %vec.ind.next1173 = add <4 x i64> %vec.ind1172, <i64 4, i64 4, i64 4, i64 4>
  %237 = icmp eq i64 %index.next1169, 28
  br i1 %237, label %polly.loop_exit801.1, label %vector.body1166, !llvm.loop !109

polly.loop_exit801.1:                             ; preds = %vector.body1166
  %polly.indvar_next797.1 = add nuw nsw i64 %polly.indvar796.1, 1
  %exitcond865.1.not = icmp eq i64 %polly.indvar_next797.1, 32
  br i1 %exitcond865.1.not, label %polly.loop_header793.1885, label %polly.loop_header793.1

polly.loop_header793.1885:                        ; preds = %polly.loop_exit801.1, %polly.loop_exit801.1896
  %polly.indvar796.1884 = phi i64 [ %polly.indvar_next797.1894, %polly.loop_exit801.1896 ], [ 0, %polly.loop_exit801.1 ]
  %238 = add nuw nsw i64 %polly.indvar796.1884, 32
  %239 = mul nuw nsw i64 %238, 480
  %240 = trunc i64 %238 to i32
  %broadcast.splatinsert1188 = insertelement <4 x i32> poison, i32 %240, i32 0
  %broadcast.splat1189 = shufflevector <4 x i32> %broadcast.splatinsert1188, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1178

vector.body1178:                                  ; preds = %vector.body1178, %polly.loop_header793.1885
  %index1180 = phi i64 [ 0, %polly.loop_header793.1885 ], [ %index.next1181, %vector.body1178 ]
  %vec.ind1186 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.1885 ], [ %vec.ind.next1187, %vector.body1178 ]
  %241 = mul <4 x i32> %vec.ind1186, %broadcast.splat1189
  %242 = add <4 x i32> %241, <i32 1, i32 1, i32 1, i32 1>
  %243 = urem <4 x i32> %242, <i32 80, i32 80, i32 80, i32 80>
  %244 = sitofp <4 x i32> %243 to <4 x double>
  %245 = fmul fast <4 x double> %244, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %246 = shl i64 %index1180, 3
  %247 = add i64 %246, %239
  %248 = getelementptr i8, i8* %call1, i64 %247
  %249 = bitcast i8* %248 to <4 x double>*
  store <4 x double> %245, <4 x double>* %249, align 8, !alias.scope !102, !noalias !107
  %index.next1181 = add i64 %index1180, 4
  %vec.ind.next1187 = add <4 x i32> %vec.ind1186, <i32 4, i32 4, i32 4, i32 4>
  %250 = icmp eq i64 %index.next1181, 32
  br i1 %250, label %polly.loop_exit801.1896, label %vector.body1178, !llvm.loop !110

polly.loop_exit801.1896:                          ; preds = %vector.body1178
  %polly.indvar_next797.1894 = add nuw nsw i64 %polly.indvar796.1884, 1
  %exitcond865.1895.not = icmp eq i64 %polly.indvar_next797.1894, 32
  br i1 %exitcond865.1895.not, label %polly.loop_header793.1.1, label %polly.loop_header793.1885

polly.loop_header793.1.1:                         ; preds = %polly.loop_exit801.1896, %polly.loop_exit801.1.1
  %polly.indvar796.1.1 = phi i64 [ %polly.indvar_next797.1.1, %polly.loop_exit801.1.1 ], [ 0, %polly.loop_exit801.1896 ]
  %251 = add nuw nsw i64 %polly.indvar796.1.1, 32
  %252 = mul nuw nsw i64 %251, 480
  %253 = trunc i64 %251 to i32
  %broadcast.splatinsert1200 = insertelement <4 x i32> poison, i32 %253, i32 0
  %broadcast.splat1201 = shufflevector <4 x i32> %broadcast.splatinsert1200, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.body1192, %polly.loop_header793.1.1
  %index1194 = phi i64 [ 0, %polly.loop_header793.1.1 ], [ %index.next1195, %vector.body1192 ]
  %vec.ind1198 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.1 ], [ %vec.ind.next1199, %vector.body1192 ]
  %254 = add nuw nsw <4 x i64> %vec.ind1198, <i64 32, i64 32, i64 32, i64 32>
  %255 = trunc <4 x i64> %254 to <4 x i32>
  %256 = mul <4 x i32> %broadcast.splat1201, %255
  %257 = add <4 x i32> %256, <i32 1, i32 1, i32 1, i32 1>
  %258 = urem <4 x i32> %257, <i32 80, i32 80, i32 80, i32 80>
  %259 = sitofp <4 x i32> %258 to <4 x double>
  %260 = fmul fast <4 x double> %259, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %261 = extractelement <4 x i64> %254, i32 0
  %262 = shl i64 %261, 3
  %263 = add i64 %262, %252
  %264 = getelementptr i8, i8* %call1, i64 %263
  %265 = bitcast i8* %264 to <4 x double>*
  store <4 x double> %260, <4 x double>* %265, align 8, !alias.scope !102, !noalias !107
  %index.next1195 = add i64 %index1194, 4
  %vec.ind.next1199 = add <4 x i64> %vec.ind1198, <i64 4, i64 4, i64 4, i64 4>
  %266 = icmp eq i64 %index.next1195, 28
  br i1 %266, label %polly.loop_exit801.1.1, label %vector.body1192, !llvm.loop !111

polly.loop_exit801.1.1:                           ; preds = %vector.body1192
  %polly.indvar_next797.1.1 = add nuw nsw i64 %polly.indvar796.1.1, 1
  %exitcond865.1.1.not = icmp eq i64 %polly.indvar_next797.1.1, 32
  br i1 %exitcond865.1.1.not, label %polly.loop_header793.2, label %polly.loop_header793.1.1

polly.loop_header793.2:                           ; preds = %polly.loop_exit801.1.1, %polly.loop_exit801.2
  %polly.indvar796.2 = phi i64 [ %polly.indvar_next797.2, %polly.loop_exit801.2 ], [ 0, %polly.loop_exit801.1.1 ]
  %267 = add nuw nsw i64 %polly.indvar796.2, 64
  %268 = mul nuw nsw i64 %267, 480
  %269 = trunc i64 %267 to i32
  %broadcast.splatinsert1214 = insertelement <4 x i32> poison, i32 %269, i32 0
  %broadcast.splat1215 = shufflevector <4 x i32> %broadcast.splatinsert1214, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1204

vector.body1204:                                  ; preds = %vector.body1204, %polly.loop_header793.2
  %index1206 = phi i64 [ 0, %polly.loop_header793.2 ], [ %index.next1207, %vector.body1204 ]
  %vec.ind1212 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.2 ], [ %vec.ind.next1213, %vector.body1204 ]
  %270 = mul <4 x i32> %vec.ind1212, %broadcast.splat1215
  %271 = add <4 x i32> %270, <i32 1, i32 1, i32 1, i32 1>
  %272 = urem <4 x i32> %271, <i32 80, i32 80, i32 80, i32 80>
  %273 = sitofp <4 x i32> %272 to <4 x double>
  %274 = fmul fast <4 x double> %273, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %275 = shl i64 %index1206, 3
  %276 = add i64 %275, %268
  %277 = getelementptr i8, i8* %call1, i64 %276
  %278 = bitcast i8* %277 to <4 x double>*
  store <4 x double> %274, <4 x double>* %278, align 8, !alias.scope !102, !noalias !107
  %index.next1207 = add i64 %index1206, 4
  %vec.ind.next1213 = add <4 x i32> %vec.ind1212, <i32 4, i32 4, i32 4, i32 4>
  %279 = icmp eq i64 %index.next1207, 32
  br i1 %279, label %polly.loop_exit801.2, label %vector.body1204, !llvm.loop !112

polly.loop_exit801.2:                             ; preds = %vector.body1204
  %polly.indvar_next797.2 = add nuw nsw i64 %polly.indvar796.2, 1
  %exitcond865.2.not = icmp eq i64 %polly.indvar_next797.2, 16
  br i1 %exitcond865.2.not, label %polly.loop_header793.1.2, label %polly.loop_header793.2

polly.loop_header793.1.2:                         ; preds = %polly.loop_exit801.2, %polly.loop_exit801.1.2
  %polly.indvar796.1.2 = phi i64 [ %polly.indvar_next797.1.2, %polly.loop_exit801.1.2 ], [ 0, %polly.loop_exit801.2 ]
  %280 = add nuw nsw i64 %polly.indvar796.1.2, 64
  %281 = mul nuw nsw i64 %280, 480
  %282 = trunc i64 %280 to i32
  %broadcast.splatinsert1226 = insertelement <4 x i32> poison, i32 %282, i32 0
  %broadcast.splat1227 = shufflevector <4 x i32> %broadcast.splatinsert1226, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1218

vector.body1218:                                  ; preds = %vector.body1218, %polly.loop_header793.1.2
  %index1220 = phi i64 [ 0, %polly.loop_header793.1.2 ], [ %index.next1221, %vector.body1218 ]
  %vec.ind1224 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.2 ], [ %vec.ind.next1225, %vector.body1218 ]
  %283 = add nuw nsw <4 x i64> %vec.ind1224, <i64 32, i64 32, i64 32, i64 32>
  %284 = trunc <4 x i64> %283 to <4 x i32>
  %285 = mul <4 x i32> %broadcast.splat1227, %284
  %286 = add <4 x i32> %285, <i32 1, i32 1, i32 1, i32 1>
  %287 = urem <4 x i32> %286, <i32 80, i32 80, i32 80, i32 80>
  %288 = sitofp <4 x i32> %287 to <4 x double>
  %289 = fmul fast <4 x double> %288, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %290 = extractelement <4 x i64> %283, i32 0
  %291 = shl i64 %290, 3
  %292 = add i64 %291, %281
  %293 = getelementptr i8, i8* %call1, i64 %292
  %294 = bitcast i8* %293 to <4 x double>*
  store <4 x double> %289, <4 x double>* %294, align 8, !alias.scope !102, !noalias !107
  %index.next1221 = add i64 %index1220, 4
  %vec.ind.next1225 = add <4 x i64> %vec.ind1224, <i64 4, i64 4, i64 4, i64 4>
  %295 = icmp eq i64 %index.next1221, 28
  br i1 %295, label %polly.loop_exit801.1.2, label %vector.body1218, !llvm.loop !113

polly.loop_exit801.1.2:                           ; preds = %vector.body1218
  %polly.indvar_next797.1.2 = add nuw nsw i64 %polly.indvar796.1.2, 1
  %exitcond865.1.2.not = icmp eq i64 %polly.indvar_next797.1.2, 16
  br i1 %exitcond865.1.2.not, label %init_array.exit, label %polly.loop_header793.1.2

polly.loop_header767.1:                           ; preds = %polly.loop_exit775, %polly.loop_exit775.1
  %polly.indvar770.1 = phi i64 [ %polly.indvar_next771.1, %polly.loop_exit775.1 ], [ 0, %polly.loop_exit775 ]
  %296 = mul nuw nsw i64 %polly.indvar770.1, 480
  %297 = trunc i64 %polly.indvar770.1 to i32
  %broadcast.splatinsert1096 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1097 = shufflevector <4 x i32> %broadcast.splatinsert1096, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1088

vector.body1088:                                  ; preds = %vector.body1088, %polly.loop_header767.1
  %index1090 = phi i64 [ 0, %polly.loop_header767.1 ], [ %index.next1091, %vector.body1088 ]
  %vec.ind1094 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1 ], [ %vec.ind.next1095, %vector.body1088 ]
  %298 = add nuw nsw <4 x i64> %vec.ind1094, <i64 32, i64 32, i64 32, i64 32>
  %299 = trunc <4 x i64> %298 to <4 x i32>
  %300 = mul <4 x i32> %broadcast.splat1097, %299
  %301 = add <4 x i32> %300, <i32 2, i32 2, i32 2, i32 2>
  %302 = urem <4 x i32> %301, <i32 60, i32 60, i32 60, i32 60>
  %303 = sitofp <4 x i32> %302 to <4 x double>
  %304 = fmul fast <4 x double> %303, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %305 = extractelement <4 x i64> %298, i32 0
  %306 = shl i64 %305, 3
  %307 = add i64 %306, %296
  %308 = getelementptr i8, i8* %call2, i64 %307
  %309 = bitcast i8* %308 to <4 x double>*
  store <4 x double> %304, <4 x double>* %309, align 8, !alias.scope !103, !noalias !105
  %index.next1091 = add i64 %index1090, 4
  %vec.ind.next1095 = add <4 x i64> %vec.ind1094, <i64 4, i64 4, i64 4, i64 4>
  %310 = icmp eq i64 %index.next1091, 28
  br i1 %310, label %polly.loop_exit775.1, label %vector.body1088, !llvm.loop !114

polly.loop_exit775.1:                             ; preds = %vector.body1088
  %polly.indvar_next771.1 = add nuw nsw i64 %polly.indvar770.1, 1
  %exitcond871.1.not = icmp eq i64 %polly.indvar_next771.1, 32
  br i1 %exitcond871.1.not, label %polly.loop_header767.1899, label %polly.loop_header767.1

polly.loop_header767.1899:                        ; preds = %polly.loop_exit775.1, %polly.loop_exit775.1910
  %polly.indvar770.1898 = phi i64 [ %polly.indvar_next771.1908, %polly.loop_exit775.1910 ], [ 0, %polly.loop_exit775.1 ]
  %311 = add nuw nsw i64 %polly.indvar770.1898, 32
  %312 = mul nuw nsw i64 %311, 480
  %313 = trunc i64 %311 to i32
  %broadcast.splatinsert1110 = insertelement <4 x i32> poison, i32 %313, i32 0
  %broadcast.splat1111 = shufflevector <4 x i32> %broadcast.splatinsert1110, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %polly.loop_header767.1899
  %index1102 = phi i64 [ 0, %polly.loop_header767.1899 ], [ %index.next1103, %vector.body1100 ]
  %vec.ind1108 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767.1899 ], [ %vec.ind.next1109, %vector.body1100 ]
  %314 = mul <4 x i32> %vec.ind1108, %broadcast.splat1111
  %315 = add <4 x i32> %314, <i32 2, i32 2, i32 2, i32 2>
  %316 = urem <4 x i32> %315, <i32 60, i32 60, i32 60, i32 60>
  %317 = sitofp <4 x i32> %316 to <4 x double>
  %318 = fmul fast <4 x double> %317, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %319 = shl i64 %index1102, 3
  %320 = add i64 %319, %312
  %321 = getelementptr i8, i8* %call2, i64 %320
  %322 = bitcast i8* %321 to <4 x double>*
  store <4 x double> %318, <4 x double>* %322, align 8, !alias.scope !103, !noalias !105
  %index.next1103 = add i64 %index1102, 4
  %vec.ind.next1109 = add <4 x i32> %vec.ind1108, <i32 4, i32 4, i32 4, i32 4>
  %323 = icmp eq i64 %index.next1103, 32
  br i1 %323, label %polly.loop_exit775.1910, label %vector.body1100, !llvm.loop !115

polly.loop_exit775.1910:                          ; preds = %vector.body1100
  %polly.indvar_next771.1908 = add nuw nsw i64 %polly.indvar770.1898, 1
  %exitcond871.1909.not = icmp eq i64 %polly.indvar_next771.1908, 32
  br i1 %exitcond871.1909.not, label %polly.loop_header767.1.1, label %polly.loop_header767.1899

polly.loop_header767.1.1:                         ; preds = %polly.loop_exit775.1910, %polly.loop_exit775.1.1
  %polly.indvar770.1.1 = phi i64 [ %polly.indvar_next771.1.1, %polly.loop_exit775.1.1 ], [ 0, %polly.loop_exit775.1910 ]
  %324 = add nuw nsw i64 %polly.indvar770.1.1, 32
  %325 = mul nuw nsw i64 %324, 480
  %326 = trunc i64 %324 to i32
  %broadcast.splatinsert1122 = insertelement <4 x i32> poison, i32 %326, i32 0
  %broadcast.splat1123 = shufflevector <4 x i32> %broadcast.splatinsert1122, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %polly.loop_header767.1.1
  %index1116 = phi i64 [ 0, %polly.loop_header767.1.1 ], [ %index.next1117, %vector.body1114 ]
  %vec.ind1120 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1.1 ], [ %vec.ind.next1121, %vector.body1114 ]
  %327 = add nuw nsw <4 x i64> %vec.ind1120, <i64 32, i64 32, i64 32, i64 32>
  %328 = trunc <4 x i64> %327 to <4 x i32>
  %329 = mul <4 x i32> %broadcast.splat1123, %328
  %330 = add <4 x i32> %329, <i32 2, i32 2, i32 2, i32 2>
  %331 = urem <4 x i32> %330, <i32 60, i32 60, i32 60, i32 60>
  %332 = sitofp <4 x i32> %331 to <4 x double>
  %333 = fmul fast <4 x double> %332, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %334 = extractelement <4 x i64> %327, i32 0
  %335 = shl i64 %334, 3
  %336 = add i64 %335, %325
  %337 = getelementptr i8, i8* %call2, i64 %336
  %338 = bitcast i8* %337 to <4 x double>*
  store <4 x double> %333, <4 x double>* %338, align 8, !alias.scope !103, !noalias !105
  %index.next1117 = add i64 %index1116, 4
  %vec.ind.next1121 = add <4 x i64> %vec.ind1120, <i64 4, i64 4, i64 4, i64 4>
  %339 = icmp eq i64 %index.next1117, 28
  br i1 %339, label %polly.loop_exit775.1.1, label %vector.body1114, !llvm.loop !116

polly.loop_exit775.1.1:                           ; preds = %vector.body1114
  %polly.indvar_next771.1.1 = add nuw nsw i64 %polly.indvar770.1.1, 1
  %exitcond871.1.1.not = icmp eq i64 %polly.indvar_next771.1.1, 32
  br i1 %exitcond871.1.1.not, label %polly.loop_header767.2, label %polly.loop_header767.1.1

polly.loop_header767.2:                           ; preds = %polly.loop_exit775.1.1, %polly.loop_exit775.2
  %polly.indvar770.2 = phi i64 [ %polly.indvar_next771.2, %polly.loop_exit775.2 ], [ 0, %polly.loop_exit775.1.1 ]
  %340 = add nuw nsw i64 %polly.indvar770.2, 64
  %341 = mul nuw nsw i64 %340, 480
  %342 = trunc i64 %340 to i32
  %broadcast.splatinsert1136 = insertelement <4 x i32> poison, i32 %342, i32 0
  %broadcast.splat1137 = shufflevector <4 x i32> %broadcast.splatinsert1136, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %polly.loop_header767.2
  %index1128 = phi i64 [ 0, %polly.loop_header767.2 ], [ %index.next1129, %vector.body1126 ]
  %vec.ind1134 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767.2 ], [ %vec.ind.next1135, %vector.body1126 ]
  %343 = mul <4 x i32> %vec.ind1134, %broadcast.splat1137
  %344 = add <4 x i32> %343, <i32 2, i32 2, i32 2, i32 2>
  %345 = urem <4 x i32> %344, <i32 60, i32 60, i32 60, i32 60>
  %346 = sitofp <4 x i32> %345 to <4 x double>
  %347 = fmul fast <4 x double> %346, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %348 = shl i64 %index1128, 3
  %349 = add i64 %348, %341
  %350 = getelementptr i8, i8* %call2, i64 %349
  %351 = bitcast i8* %350 to <4 x double>*
  store <4 x double> %347, <4 x double>* %351, align 8, !alias.scope !103, !noalias !105
  %index.next1129 = add i64 %index1128, 4
  %vec.ind.next1135 = add <4 x i32> %vec.ind1134, <i32 4, i32 4, i32 4, i32 4>
  %352 = icmp eq i64 %index.next1129, 32
  br i1 %352, label %polly.loop_exit775.2, label %vector.body1126, !llvm.loop !117

polly.loop_exit775.2:                             ; preds = %vector.body1126
  %polly.indvar_next771.2 = add nuw nsw i64 %polly.indvar770.2, 1
  %exitcond871.2.not = icmp eq i64 %polly.indvar_next771.2, 16
  br i1 %exitcond871.2.not, label %polly.loop_header767.1.2, label %polly.loop_header767.2

polly.loop_header767.1.2:                         ; preds = %polly.loop_exit775.2, %polly.loop_exit775.1.2
  %polly.indvar770.1.2 = phi i64 [ %polly.indvar_next771.1.2, %polly.loop_exit775.1.2 ], [ 0, %polly.loop_exit775.2 ]
  %353 = add nuw nsw i64 %polly.indvar770.1.2, 64
  %354 = mul nuw nsw i64 %353, 480
  %355 = trunc i64 %353 to i32
  %broadcast.splatinsert1148 = insertelement <4 x i32> poison, i32 %355, i32 0
  %broadcast.splat1149 = shufflevector <4 x i32> %broadcast.splatinsert1148, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1140

vector.body1140:                                  ; preds = %vector.body1140, %polly.loop_header767.1.2
  %index1142 = phi i64 [ 0, %polly.loop_header767.1.2 ], [ %index.next1143, %vector.body1140 ]
  %vec.ind1146 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1.2 ], [ %vec.ind.next1147, %vector.body1140 ]
  %356 = add nuw nsw <4 x i64> %vec.ind1146, <i64 32, i64 32, i64 32, i64 32>
  %357 = trunc <4 x i64> %356 to <4 x i32>
  %358 = mul <4 x i32> %broadcast.splat1149, %357
  %359 = add <4 x i32> %358, <i32 2, i32 2, i32 2, i32 2>
  %360 = urem <4 x i32> %359, <i32 60, i32 60, i32 60, i32 60>
  %361 = sitofp <4 x i32> %360 to <4 x double>
  %362 = fmul fast <4 x double> %361, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %363 = extractelement <4 x i64> %356, i32 0
  %364 = shl i64 %363, 3
  %365 = add i64 %364, %354
  %366 = getelementptr i8, i8* %call2, i64 %365
  %367 = bitcast i8* %366 to <4 x double>*
  store <4 x double> %362, <4 x double>* %367, align 8, !alias.scope !103, !noalias !105
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1147 = add <4 x i64> %vec.ind1146, <i64 4, i64 4, i64 4, i64 4>
  %368 = icmp eq i64 %index.next1143, 28
  br i1 %368, label %polly.loop_exit775.1.2, label %vector.body1140, !llvm.loop !118

polly.loop_exit775.1.2:                           ; preds = %vector.body1140
  %polly.indvar_next771.1.2 = add nuw nsw i64 %polly.indvar770.1.2, 1
  %exitcond871.1.2.not = icmp eq i64 %polly.indvar_next771.1.2, 16
  br i1 %exitcond871.1.2.not, label %polly.loop_header793, label %polly.loop_header767.1.2

polly.loop_header740.1:                           ; preds = %polly.loop_exit748, %polly.loop_exit748.1
  %polly.indvar743.1 = phi i64 [ %polly.indvar_next744.1, %polly.loop_exit748.1 ], [ 0, %polly.loop_exit748 ]
  %369 = mul nuw nsw i64 %polly.indvar743.1, 640
  %370 = trunc i64 %polly.indvar743.1 to i32
  %broadcast.splatinsert982 = insertelement <4 x i32> poison, i32 %370, i32 0
  %broadcast.splat983 = shufflevector <4 x i32> %broadcast.splatinsert982, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body974

vector.body974:                                   ; preds = %vector.body974, %polly.loop_header740.1
  %index976 = phi i64 [ 0, %polly.loop_header740.1 ], [ %index.next977, %vector.body974 ]
  %vec.ind980 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1 ], [ %vec.ind.next981, %vector.body974 ]
  %371 = add nuw nsw <4 x i64> %vec.ind980, <i64 32, i64 32, i64 32, i64 32>
  %372 = trunc <4 x i64> %371 to <4 x i32>
  %373 = mul <4 x i32> %broadcast.splat983, %372
  %374 = add <4 x i32> %373, <i32 3, i32 3, i32 3, i32 3>
  %375 = urem <4 x i32> %374, <i32 80, i32 80, i32 80, i32 80>
  %376 = sitofp <4 x i32> %375 to <4 x double>
  %377 = fmul fast <4 x double> %376, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %378 = extractelement <4 x i64> %371, i32 0
  %379 = shl i64 %378, 3
  %380 = add nuw nsw i64 %379, %369
  %381 = getelementptr i8, i8* %call, i64 %380
  %382 = bitcast i8* %381 to <4 x double>*
  store <4 x double> %377, <4 x double>* %382, align 8, !alias.scope !99, !noalias !101
  %index.next977 = add i64 %index976, 4
  %vec.ind.next981 = add <4 x i64> %vec.ind980, <i64 4, i64 4, i64 4, i64 4>
  %383 = icmp eq i64 %index.next977, 32
  br i1 %383, label %polly.loop_exit748.1, label %vector.body974, !llvm.loop !119

polly.loop_exit748.1:                             ; preds = %vector.body974
  %polly.indvar_next744.1 = add nuw nsw i64 %polly.indvar743.1, 1
  %exitcond880.1.not = icmp eq i64 %polly.indvar_next744.1, 32
  br i1 %exitcond880.1.not, label %polly.loop_header740.2, label %polly.loop_header740.1

polly.loop_header740.2:                           ; preds = %polly.loop_exit748.1, %polly.loop_exit748.2
  %polly.indvar743.2 = phi i64 [ %polly.indvar_next744.2, %polly.loop_exit748.2 ], [ 0, %polly.loop_exit748.1 ]
  %384 = mul nuw nsw i64 %polly.indvar743.2, 640
  %385 = trunc i64 %polly.indvar743.2 to i32
  %broadcast.splatinsert994 = insertelement <4 x i32> poison, i32 %385, i32 0
  %broadcast.splat995 = shufflevector <4 x i32> %broadcast.splatinsert994, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %polly.loop_header740.2
  %index988 = phi i64 [ 0, %polly.loop_header740.2 ], [ %index.next989, %vector.body986 ]
  %vec.ind992 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2 ], [ %vec.ind.next993, %vector.body986 ]
  %386 = add nuw nsw <4 x i64> %vec.ind992, <i64 64, i64 64, i64 64, i64 64>
  %387 = trunc <4 x i64> %386 to <4 x i32>
  %388 = mul <4 x i32> %broadcast.splat995, %387
  %389 = add <4 x i32> %388, <i32 3, i32 3, i32 3, i32 3>
  %390 = urem <4 x i32> %389, <i32 80, i32 80, i32 80, i32 80>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %393 = extractelement <4 x i64> %386, i32 0
  %394 = shl i64 %393, 3
  %395 = add nuw nsw i64 %394, %384
  %396 = getelementptr i8, i8* %call, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %392, <4 x double>* %397, align 8, !alias.scope !99, !noalias !101
  %index.next989 = add i64 %index988, 4
  %vec.ind.next993 = add <4 x i64> %vec.ind992, <i64 4, i64 4, i64 4, i64 4>
  %398 = icmp eq i64 %index.next989, 16
  br i1 %398, label %polly.loop_exit748.2, label %vector.body986, !llvm.loop !120

polly.loop_exit748.2:                             ; preds = %vector.body986
  %polly.indvar_next744.2 = add nuw nsw i64 %polly.indvar743.2, 1
  %exitcond880.2.not = icmp eq i64 %polly.indvar_next744.2, 32
  br i1 %exitcond880.2.not, label %polly.loop_header740.1913, label %polly.loop_header740.2

polly.loop_header740.1913:                        ; preds = %polly.loop_exit748.2, %polly.loop_exit748.1924
  %polly.indvar743.1912 = phi i64 [ %polly.indvar_next744.1922, %polly.loop_exit748.1924 ], [ 0, %polly.loop_exit748.2 ]
  %399 = add nuw nsw i64 %polly.indvar743.1912, 32
  %400 = mul nuw nsw i64 %399, 640
  %401 = trunc i64 %399 to i32
  %broadcast.splatinsert1008 = insertelement <4 x i32> poison, i32 %401, i32 0
  %broadcast.splat1009 = shufflevector <4 x i32> %broadcast.splatinsert1008, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %polly.loop_header740.1913
  %index1000 = phi i64 [ 0, %polly.loop_header740.1913 ], [ %index.next1001, %vector.body998 ]
  %vec.ind1006 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740.1913 ], [ %vec.ind.next1007, %vector.body998 ]
  %402 = mul <4 x i32> %vec.ind1006, %broadcast.splat1009
  %403 = add <4 x i32> %402, <i32 3, i32 3, i32 3, i32 3>
  %404 = urem <4 x i32> %403, <i32 80, i32 80, i32 80, i32 80>
  %405 = sitofp <4 x i32> %404 to <4 x double>
  %406 = fmul fast <4 x double> %405, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %407 = shl i64 %index1000, 3
  %408 = add nuw nsw i64 %407, %400
  %409 = getelementptr i8, i8* %call, i64 %408
  %410 = bitcast i8* %409 to <4 x double>*
  store <4 x double> %406, <4 x double>* %410, align 8, !alias.scope !99, !noalias !101
  %index.next1001 = add i64 %index1000, 4
  %vec.ind.next1007 = add <4 x i32> %vec.ind1006, <i32 4, i32 4, i32 4, i32 4>
  %411 = icmp eq i64 %index.next1001, 32
  br i1 %411, label %polly.loop_exit748.1924, label %vector.body998, !llvm.loop !121

polly.loop_exit748.1924:                          ; preds = %vector.body998
  %polly.indvar_next744.1922 = add nuw nsw i64 %polly.indvar743.1912, 1
  %exitcond880.1923.not = icmp eq i64 %polly.indvar_next744.1922, 32
  br i1 %exitcond880.1923.not, label %polly.loop_header740.1.1, label %polly.loop_header740.1913

polly.loop_header740.1.1:                         ; preds = %polly.loop_exit748.1924, %polly.loop_exit748.1.1
  %polly.indvar743.1.1 = phi i64 [ %polly.indvar_next744.1.1, %polly.loop_exit748.1.1 ], [ 0, %polly.loop_exit748.1924 ]
  %412 = add nuw nsw i64 %polly.indvar743.1.1, 32
  %413 = mul nuw nsw i64 %412, 640
  %414 = trunc i64 %412 to i32
  %broadcast.splatinsert1020 = insertelement <4 x i32> poison, i32 %414, i32 0
  %broadcast.splat1021 = shufflevector <4 x i32> %broadcast.splatinsert1020, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %polly.loop_header740.1.1
  %index1014 = phi i64 [ 0, %polly.loop_header740.1.1 ], [ %index.next1015, %vector.body1012 ]
  %vec.ind1018 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1.1 ], [ %vec.ind.next1019, %vector.body1012 ]
  %415 = add nuw nsw <4 x i64> %vec.ind1018, <i64 32, i64 32, i64 32, i64 32>
  %416 = trunc <4 x i64> %415 to <4 x i32>
  %417 = mul <4 x i32> %broadcast.splat1021, %416
  %418 = add <4 x i32> %417, <i32 3, i32 3, i32 3, i32 3>
  %419 = urem <4 x i32> %418, <i32 80, i32 80, i32 80, i32 80>
  %420 = sitofp <4 x i32> %419 to <4 x double>
  %421 = fmul fast <4 x double> %420, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %422 = extractelement <4 x i64> %415, i32 0
  %423 = shl i64 %422, 3
  %424 = add nuw nsw i64 %423, %413
  %425 = getelementptr i8, i8* %call, i64 %424
  %426 = bitcast i8* %425 to <4 x double>*
  store <4 x double> %421, <4 x double>* %426, align 8, !alias.scope !99, !noalias !101
  %index.next1015 = add i64 %index1014, 4
  %vec.ind.next1019 = add <4 x i64> %vec.ind1018, <i64 4, i64 4, i64 4, i64 4>
  %427 = icmp eq i64 %index.next1015, 32
  br i1 %427, label %polly.loop_exit748.1.1, label %vector.body1012, !llvm.loop !122

polly.loop_exit748.1.1:                           ; preds = %vector.body1012
  %polly.indvar_next744.1.1 = add nuw nsw i64 %polly.indvar743.1.1, 1
  %exitcond880.1.1.not = icmp eq i64 %polly.indvar_next744.1.1, 32
  br i1 %exitcond880.1.1.not, label %polly.loop_header740.2.1, label %polly.loop_header740.1.1

polly.loop_header740.2.1:                         ; preds = %polly.loop_exit748.1.1, %polly.loop_exit748.2.1
  %polly.indvar743.2.1 = phi i64 [ %polly.indvar_next744.2.1, %polly.loop_exit748.2.1 ], [ 0, %polly.loop_exit748.1.1 ]
  %428 = add nuw nsw i64 %polly.indvar743.2.1, 32
  %429 = mul nuw nsw i64 %428, 640
  %430 = trunc i64 %428 to i32
  %broadcast.splatinsert1032 = insertelement <4 x i32> poison, i32 %430, i32 0
  %broadcast.splat1033 = shufflevector <4 x i32> %broadcast.splatinsert1032, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1024

vector.body1024:                                  ; preds = %vector.body1024, %polly.loop_header740.2.1
  %index1026 = phi i64 [ 0, %polly.loop_header740.2.1 ], [ %index.next1027, %vector.body1024 ]
  %vec.ind1030 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2.1 ], [ %vec.ind.next1031, %vector.body1024 ]
  %431 = add nuw nsw <4 x i64> %vec.ind1030, <i64 64, i64 64, i64 64, i64 64>
  %432 = trunc <4 x i64> %431 to <4 x i32>
  %433 = mul <4 x i32> %broadcast.splat1033, %432
  %434 = add <4 x i32> %433, <i32 3, i32 3, i32 3, i32 3>
  %435 = urem <4 x i32> %434, <i32 80, i32 80, i32 80, i32 80>
  %436 = sitofp <4 x i32> %435 to <4 x double>
  %437 = fmul fast <4 x double> %436, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %438 = extractelement <4 x i64> %431, i32 0
  %439 = shl i64 %438, 3
  %440 = add nuw nsw i64 %439, %429
  %441 = getelementptr i8, i8* %call, i64 %440
  %442 = bitcast i8* %441 to <4 x double>*
  store <4 x double> %437, <4 x double>* %442, align 8, !alias.scope !99, !noalias !101
  %index.next1027 = add i64 %index1026, 4
  %vec.ind.next1031 = add <4 x i64> %vec.ind1030, <i64 4, i64 4, i64 4, i64 4>
  %443 = icmp eq i64 %index.next1027, 16
  br i1 %443, label %polly.loop_exit748.2.1, label %vector.body1024, !llvm.loop !123

polly.loop_exit748.2.1:                           ; preds = %vector.body1024
  %polly.indvar_next744.2.1 = add nuw nsw i64 %polly.indvar743.2.1, 1
  %exitcond880.2.1.not = icmp eq i64 %polly.indvar_next744.2.1, 32
  br i1 %exitcond880.2.1.not, label %polly.loop_header740.2927, label %polly.loop_header740.2.1

polly.loop_header740.2927:                        ; preds = %polly.loop_exit748.2.1, %polly.loop_exit748.2938
  %polly.indvar743.2926 = phi i64 [ %polly.indvar_next744.2936, %polly.loop_exit748.2938 ], [ 0, %polly.loop_exit748.2.1 ]
  %444 = add nuw nsw i64 %polly.indvar743.2926, 64
  %445 = mul nuw nsw i64 %444, 640
  %446 = trunc i64 %444 to i32
  %broadcast.splatinsert1046 = insertelement <4 x i32> poison, i32 %446, i32 0
  %broadcast.splat1047 = shufflevector <4 x i32> %broadcast.splatinsert1046, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %polly.loop_header740.2927
  %index1038 = phi i64 [ 0, %polly.loop_header740.2927 ], [ %index.next1039, %vector.body1036 ]
  %vec.ind1044 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740.2927 ], [ %vec.ind.next1045, %vector.body1036 ]
  %447 = mul <4 x i32> %vec.ind1044, %broadcast.splat1047
  %448 = add <4 x i32> %447, <i32 3, i32 3, i32 3, i32 3>
  %449 = urem <4 x i32> %448, <i32 80, i32 80, i32 80, i32 80>
  %450 = sitofp <4 x i32> %449 to <4 x double>
  %451 = fmul fast <4 x double> %450, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %452 = shl i64 %index1038, 3
  %453 = add nuw nsw i64 %452, %445
  %454 = getelementptr i8, i8* %call, i64 %453
  %455 = bitcast i8* %454 to <4 x double>*
  store <4 x double> %451, <4 x double>* %455, align 8, !alias.scope !99, !noalias !101
  %index.next1039 = add i64 %index1038, 4
  %vec.ind.next1045 = add <4 x i32> %vec.ind1044, <i32 4, i32 4, i32 4, i32 4>
  %456 = icmp eq i64 %index.next1039, 32
  br i1 %456, label %polly.loop_exit748.2938, label %vector.body1036, !llvm.loop !124

polly.loop_exit748.2938:                          ; preds = %vector.body1036
  %polly.indvar_next744.2936 = add nuw nsw i64 %polly.indvar743.2926, 1
  %exitcond880.2937.not = icmp eq i64 %polly.indvar_next744.2936, 16
  br i1 %exitcond880.2937.not, label %polly.loop_header740.1.2, label %polly.loop_header740.2927

polly.loop_header740.1.2:                         ; preds = %polly.loop_exit748.2938, %polly.loop_exit748.1.2
  %polly.indvar743.1.2 = phi i64 [ %polly.indvar_next744.1.2, %polly.loop_exit748.1.2 ], [ 0, %polly.loop_exit748.2938 ]
  %457 = add nuw nsw i64 %polly.indvar743.1.2, 64
  %458 = mul nuw nsw i64 %457, 640
  %459 = trunc i64 %457 to i32
  %broadcast.splatinsert1058 = insertelement <4 x i32> poison, i32 %459, i32 0
  %broadcast.splat1059 = shufflevector <4 x i32> %broadcast.splatinsert1058, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %polly.loop_header740.1.2
  %index1052 = phi i64 [ 0, %polly.loop_header740.1.2 ], [ %index.next1053, %vector.body1050 ]
  %vec.ind1056 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1.2 ], [ %vec.ind.next1057, %vector.body1050 ]
  %460 = add nuw nsw <4 x i64> %vec.ind1056, <i64 32, i64 32, i64 32, i64 32>
  %461 = trunc <4 x i64> %460 to <4 x i32>
  %462 = mul <4 x i32> %broadcast.splat1059, %461
  %463 = add <4 x i32> %462, <i32 3, i32 3, i32 3, i32 3>
  %464 = urem <4 x i32> %463, <i32 80, i32 80, i32 80, i32 80>
  %465 = sitofp <4 x i32> %464 to <4 x double>
  %466 = fmul fast <4 x double> %465, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %467 = extractelement <4 x i64> %460, i32 0
  %468 = shl i64 %467, 3
  %469 = add nuw nsw i64 %468, %458
  %470 = getelementptr i8, i8* %call, i64 %469
  %471 = bitcast i8* %470 to <4 x double>*
  store <4 x double> %466, <4 x double>* %471, align 8, !alias.scope !99, !noalias !101
  %index.next1053 = add i64 %index1052, 4
  %vec.ind.next1057 = add <4 x i64> %vec.ind1056, <i64 4, i64 4, i64 4, i64 4>
  %472 = icmp eq i64 %index.next1053, 32
  br i1 %472, label %polly.loop_exit748.1.2, label %vector.body1050, !llvm.loop !125

polly.loop_exit748.1.2:                           ; preds = %vector.body1050
  %polly.indvar_next744.1.2 = add nuw nsw i64 %polly.indvar743.1.2, 1
  %exitcond880.1.2.not = icmp eq i64 %polly.indvar_next744.1.2, 16
  br i1 %exitcond880.1.2.not, label %polly.loop_header740.2.2, label %polly.loop_header740.1.2

polly.loop_header740.2.2:                         ; preds = %polly.loop_exit748.1.2, %polly.loop_exit748.2.2
  %polly.indvar743.2.2 = phi i64 [ %polly.indvar_next744.2.2, %polly.loop_exit748.2.2 ], [ 0, %polly.loop_exit748.1.2 ]
  %473 = add nuw nsw i64 %polly.indvar743.2.2, 64
  %474 = mul nuw nsw i64 %473, 640
  %475 = trunc i64 %473 to i32
  %broadcast.splatinsert1070 = insertelement <4 x i32> poison, i32 %475, i32 0
  %broadcast.splat1071 = shufflevector <4 x i32> %broadcast.splatinsert1070, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %polly.loop_header740.2.2
  %index1064 = phi i64 [ 0, %polly.loop_header740.2.2 ], [ %index.next1065, %vector.body1062 ]
  %vec.ind1068 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2.2 ], [ %vec.ind.next1069, %vector.body1062 ]
  %476 = add nuw nsw <4 x i64> %vec.ind1068, <i64 64, i64 64, i64 64, i64 64>
  %477 = trunc <4 x i64> %476 to <4 x i32>
  %478 = mul <4 x i32> %broadcast.splat1071, %477
  %479 = add <4 x i32> %478, <i32 3, i32 3, i32 3, i32 3>
  %480 = urem <4 x i32> %479, <i32 80, i32 80, i32 80, i32 80>
  %481 = sitofp <4 x i32> %480 to <4 x double>
  %482 = fmul fast <4 x double> %481, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %483 = extractelement <4 x i64> %476, i32 0
  %484 = shl i64 %483, 3
  %485 = add nuw nsw i64 %484, %474
  %486 = getelementptr i8, i8* %call, i64 %485
  %487 = bitcast i8* %486 to <4 x double>*
  store <4 x double> %482, <4 x double>* %487, align 8, !alias.scope !99, !noalias !101
  %index.next1065 = add i64 %index1064, 4
  %vec.ind.next1069 = add <4 x i64> %vec.ind1068, <i64 4, i64 4, i64 4, i64 4>
  %488 = icmp eq i64 %index.next1065, 16
  br i1 %488, label %polly.loop_exit748.2.2, label %vector.body1062, !llvm.loop !126

polly.loop_exit748.2.2:                           ; preds = %vector.body1062
  %polly.indvar_next744.2.2 = add nuw nsw i64 %polly.indvar743.2.2, 1
  %exitcond880.2.2.not = icmp eq i64 %polly.indvar_next744.2.2, 16
  br i1 %exitcond880.2.2.not, label %polly.loop_header767, label %polly.loop_header740.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 16}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 32}
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
!105 = !{!102, !99}
!106 = distinct !{!106, !13}
!107 = !{!103, !99}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
