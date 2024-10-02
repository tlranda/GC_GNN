; ModuleID = 'syr2k_recreations//mmp_syr2k_S_140.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_140.c"
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
  %polly.access.cast.call1606 = bitcast i8* %call1 to double*
  %polly.access.call1615 = getelementptr i8, i8* %call1, i64 38400
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
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting436
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
  br i1 %57, label %middle.block1248, label %vector.body1250, !llvm.loop !59

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

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
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

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
  br i1 %68, label %middle.block1274, label %vector.body1276, !llvm.loop !61

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

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
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call754, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !65

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
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
  %malloccall = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit229.2
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

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
  %wide.load1299 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1299, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1296 = add i64 %index1295, 4
  %95 = icmp eq i64 %index.next1296, %n.vec1294
  br i1 %95, label %middle.block1286, label %vector.body1288, !llvm.loop !73

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
  %exitcond833.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond833.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit229.2
  %polly.loop_cond204 = phi i1 [ false, %polly.loop_exit229.2 ], [ true, %polly.loop_header199.preheader ]
  %polly.indvar202 = phi i64 [ 1, %polly.loop_exit229.2 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, -32
  %98 = icmp slt i64 %97, -28
  %99 = select i1 %98, i64 %97, i64 -28
  %100 = shl nuw nsw i64 %polly.indvar202, 5
  %101 = add nsw i64 %99, 60
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %102 = add nuw nsw i64 %polly.indvar214, %100
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar214, 80
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next215, %101
  br i1 %exitcond826.not, label %polly.loop_header227, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %polly.access.mul.call1224 = mul nuw nsw i64 %polly.indvar220, 60
  %polly.access.add.call1225 = add nuw nsw i64 %102, %polly.access.mul.call1224
  %polly.access.call1226 = getelementptr double, double* %polly.access.cast.call1606, i64 %polly.access.add.call1225
  %polly.access.call1226.load = load double, double* %polly.access.call1226, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1
  store double %polly.access.call1226.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 80
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_exit219, %polly.loop_exit235
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_exit219 ]
  %103 = add nuw nsw i64 %polly.indvar230, %100
  %polly.access.mul.Packed_MemRef_call1245 = mul nuw nsw i64 %polly.indvar230, 80
  %104 = shl i64 %103, 3
  %scevgep249 = getelementptr i8, i8* %call2, i64 %104
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next231, %101
  br i1 %exitcond831.not, label %polly.loop_header211.1, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit241 ], [ 0, %polly.loop_header227 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ 0, %polly.loop_header227 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv827, i64 31)
  %105 = mul nuw nsw i64 %polly.indvar236, 480
  %106 = mul nuw nsw i64 %polly.indvar236, 640
  %scevgep260 = getelementptr i8, i8* %call, i64 %106
  %scevgep250 = getelementptr i8, i8* %scevgep249, i64 %105
  %scevgep250251 = bitcast i8* %scevgep250 to double*
  %_p_scalar_252 = load double, double* %scevgep250251, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1257 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call1245
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  %_p_scalar_259 = load double, double* %polly.access.Packed_MemRef_call1258, align 8
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 1
  %exitcond830.not = icmp eq i64 %indvars.iv.next828, 80
  br i1 %exitcond830.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header233
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %polly.access.add.Packed_MemRef_call1246 = add nuw nsw i64 %polly.indvar242, %polly.access.mul.Packed_MemRef_call1245
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  %_p_scalar_248 = load double, double* %polly.access.Packed_MemRef_call1247, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_252, %_p_scalar_248
  %107 = mul nuw nsw i64 %polly.indvar242, 480
  %108 = add nuw nsw i64 %107, %104
  %scevgep253 = getelementptr i8, i8* %call2, i64 %108
  %scevgep253254 = bitcast i8* %scevgep253 to double*
  %_p_scalar_255 = load double, double* %scevgep253254, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114 = fmul fast double %_p_scalar_259, %_p_scalar_255
  %109 = shl i64 %polly.indvar242, 3
  %scevgep261 = getelementptr i8, i8* %scevgep260, i64 %109
  %scevgep261262 = bitcast i8* %scevgep261 to double*
  %_p_scalar_263 = load double, double* %scevgep261262, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_263
  store double %p_add42.i118, double* %scevgep261262, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond829.not = icmp eq i64 %polly.indvar242, %smin
  br i1 %exitcond829.not, label %polly.loop_exit241, label %polly.loop_header239

polly.start266:                                   ; preds = %kernel_syr2k.exit
  %malloccall268 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  br label %polly.loop_header352

polly.exiting267:                                 ; preds = %polly.loop_exit398.2
  tail call void @free(i8* nonnull %malloccall268)
  br label %kernel_syr2k.exit90

polly.loop_header352:                             ; preds = %polly.loop_exit360, %polly.start266
  %indvar1263 = phi i64 [ %indvar.next1264, %polly.loop_exit360 ], [ 0, %polly.start266 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 1, %polly.start266 ]
  %110 = add i64 %indvar1263, 1
  %111 = mul nuw nsw i64 %polly.indvar355, 640
  %scevgep364 = getelementptr i8, i8* %call, i64 %111
  %min.iters.check1265 = icmp ult i64 %110, 4
  br i1 %min.iters.check1265, label %polly.loop_header358.preheader, label %vector.ph1266

vector.ph1266:                                    ; preds = %polly.loop_header352
  %n.vec1268 = and i64 %110, -4
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %vector.ph1266
  %index1269 = phi i64 [ 0, %vector.ph1266 ], [ %index.next1270, %vector.body1262 ]
  %112 = shl nuw nsw i64 %index1269, 3
  %113 = getelementptr i8, i8* %scevgep364, i64 %112
  %114 = bitcast i8* %113 to <4 x double>*
  %wide.load1273 = load <4 x double>, <4 x double>* %114, align 8, !alias.scope !78, !noalias !80
  %115 = fmul fast <4 x double> %wide.load1273, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %116 = bitcast i8* %113 to <4 x double>*
  store <4 x double> %115, <4 x double>* %116, align 8, !alias.scope !78, !noalias !80
  %index.next1270 = add i64 %index1269, 4
  %117 = icmp eq i64 %index.next1270, %n.vec1268
  br i1 %117, label %middle.block1260, label %vector.body1262, !llvm.loop !84

middle.block1260:                                 ; preds = %vector.body1262
  %cmp.n1272 = icmp eq i64 %110, %n.vec1268
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
  %Packed_MemRef_call1269 = bitcast i8* %malloccall268 to double*
  br label %polly.loop_header368

polly.loop_header358:                             ; preds = %polly.loop_header358.preheader, %polly.loop_header358
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_header358 ], [ %polly.indvar361.ph, %polly.loop_header358.preheader ]
  %118 = shl nuw nsw i64 %polly.indvar361, 3
  %scevgep365 = getelementptr i8, i8* %scevgep364, i64 %118
  %scevgep365366 = bitcast i8* %scevgep365 to double*
  %_p_scalar_367 = load double, double* %scevgep365366, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_367, 1.200000e+00
  store double %p_mul.i57, double* %scevgep365366, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next362, %polly.indvar355
  br i1 %exitcond846.not, label %polly.loop_exit360, label %polly.loop_header358, !llvm.loop !85

polly.loop_header368:                             ; preds = %polly.loop_header368.preheader, %polly.loop_exit398.2
  %polly.loop_cond373 = phi i1 [ false, %polly.loop_exit398.2 ], [ true, %polly.loop_header368.preheader ]
  %polly.indvar371 = phi i64 [ 1, %polly.loop_exit398.2 ], [ 0, %polly.loop_header368.preheader ]
  %119 = mul nuw nsw i64 %polly.indvar371, -32
  %120 = icmp slt i64 %119, -28
  %121 = select i1 %120, i64 %119, i64 -28
  %122 = shl nuw nsw i64 %polly.indvar371, 5
  %123 = add nsw i64 %121, 60
  br label %polly.loop_header380

polly.loop_header380:                             ; preds = %polly.loop_exit388, %polly.loop_header368
  %polly.indvar383 = phi i64 [ 0, %polly.loop_header368 ], [ %polly.indvar_next384, %polly.loop_exit388 ]
  %124 = add nuw nsw i64 %polly.indvar383, %122
  %polly.access.mul.Packed_MemRef_call1269 = mul nuw nsw i64 %polly.indvar383, 80
  br label %polly.loop_header386

polly.loop_exit388:                               ; preds = %polly.loop_header386
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next384, %123
  br i1 %exitcond838.not, label %polly.loop_header396, label %polly.loop_header380

polly.loop_header386:                             ; preds = %polly.loop_header386, %polly.loop_header380
  %polly.indvar389 = phi i64 [ 0, %polly.loop_header380 ], [ %polly.indvar_next390, %polly.loop_header386 ]
  %polly.access.mul.call1393 = mul nuw nsw i64 %polly.indvar389, 60
  %polly.access.add.call1394 = add nuw nsw i64 %124, %polly.access.mul.call1393
  %polly.access.call1395 = getelementptr double, double* %polly.access.cast.call1606, i64 %polly.access.add.call1394
  %polly.access.call1395.load = load double, double* %polly.access.call1395, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1269 = add nuw nsw i64 %polly.indvar389, %polly.access.mul.Packed_MemRef_call1269
  %polly.access.Packed_MemRef_call1269 = getelementptr double, double* %Packed_MemRef_call1269, i64 %polly.access.add.Packed_MemRef_call1269
  store double %polly.access.call1395.load, double* %polly.access.Packed_MemRef_call1269, align 8
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next390, 80
  br i1 %exitcond837.not, label %polly.loop_exit388, label %polly.loop_header386

polly.loop_header396:                             ; preds = %polly.loop_exit388, %polly.loop_exit404
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 0, %polly.loop_exit388 ]
  %125 = add nuw nsw i64 %polly.indvar399, %122
  %polly.access.mul.Packed_MemRef_call1269414 = mul nuw nsw i64 %polly.indvar399, 80
  %126 = shl i64 %125, 3
  %scevgep418 = getelementptr i8, i8* %call2, i64 %126
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit410
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next400, %123
  br i1 %exitcond844.not, label %polly.loop_header380.1, label %polly.loop_header396

polly.loop_header402:                             ; preds = %polly.loop_exit410, %polly.loop_header396
  %indvars.iv839 = phi i64 [ %indvars.iv.next840, %polly.loop_exit410 ], [ 0, %polly.loop_header396 ]
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit410 ], [ 0, %polly.loop_header396 ]
  %smin841 = call i64 @llvm.smin.i64(i64 %indvars.iv839, i64 31)
  %127 = mul nuw nsw i64 %polly.indvar405, 480
  %128 = mul nuw nsw i64 %polly.indvar405, 640
  %scevgep429 = getelementptr i8, i8* %call, i64 %128
  %scevgep419 = getelementptr i8, i8* %scevgep418, i64 %127
  %scevgep419420 = bitcast i8* %scevgep419 to double*
  %_p_scalar_421 = load double, double* %scevgep419420, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1269426 = add nuw nsw i64 %polly.indvar405, %polly.access.mul.Packed_MemRef_call1269414
  %polly.access.Packed_MemRef_call1269427 = getelementptr double, double* %Packed_MemRef_call1269, i64 %polly.access.add.Packed_MemRef_call1269426
  %_p_scalar_428 = load double, double* %polly.access.Packed_MemRef_call1269427, align 8
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next840 = add nuw nsw i64 %indvars.iv839, 1
  %exitcond843.not = icmp eq i64 %indvars.iv.next840, 80
  br i1 %exitcond843.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %polly.access.add.Packed_MemRef_call1269415 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call1269414
  %polly.access.Packed_MemRef_call1269416 = getelementptr double, double* %Packed_MemRef_call1269, i64 %polly.access.add.Packed_MemRef_call1269415
  %_p_scalar_417 = load double, double* %polly.access.Packed_MemRef_call1269416, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_421, %_p_scalar_417
  %129 = mul nuw nsw i64 %polly.indvar411, 480
  %130 = add nuw nsw i64 %129, %126
  %scevgep422 = getelementptr i8, i8* %call2, i64 %130
  %scevgep422423 = bitcast i8* %scevgep422 to double*
  %_p_scalar_424 = load double, double* %scevgep422423, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75 = fmul fast double %_p_scalar_428, %_p_scalar_424
  %131 = shl i64 %polly.indvar411, 3
  %scevgep430 = getelementptr i8, i8* %scevgep429, i64 %131
  %scevgep430431 = bitcast i8* %scevgep430 to double*
  %_p_scalar_432 = load double, double* %scevgep430431, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_432
  store double %p_add42.i79, double* %scevgep430431, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond842.not = icmp eq i64 %polly.indvar411, %smin841
  br i1 %exitcond842.not, label %polly.loop_exit410, label %polly.loop_header408

polly.start435:                                   ; preds = %init_array.exit
  %malloccall437 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  br label %polly.loop_header521

polly.exiting436:                                 ; preds = %polly.loop_exit567.2
  tail call void @free(i8* nonnull %malloccall437)
  br label %kernel_syr2k.exit

polly.loop_header521:                             ; preds = %polly.loop_exit529, %polly.start435
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit529 ], [ 0, %polly.start435 ]
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_exit529 ], [ 1, %polly.start435 ]
  %132 = add i64 %indvar, 1
  %133 = mul nuw nsw i64 %polly.indvar524, 640
  %scevgep533 = getelementptr i8, i8* %call, i64 %133
  %min.iters.check1239 = icmp ult i64 %132, 4
  br i1 %min.iters.check1239, label %polly.loop_header527.preheader, label %vector.ph1240

vector.ph1240:                                    ; preds = %polly.loop_header521
  %n.vec1242 = and i64 %132, -4
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %vector.ph1240
  %index1243 = phi i64 [ 0, %vector.ph1240 ], [ %index.next1244, %vector.body1238 ]
  %134 = shl nuw nsw i64 %index1243, 3
  %135 = getelementptr i8, i8* %scevgep533, i64 %134
  %136 = bitcast i8* %135 to <4 x double>*
  %wide.load1247 = load <4 x double>, <4 x double>* %136, align 8, !alias.scope !88, !noalias !90
  %137 = fmul fast <4 x double> %wide.load1247, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %138 = bitcast i8* %135 to <4 x double>*
  store <4 x double> %137, <4 x double>* %138, align 8, !alias.scope !88, !noalias !90
  %index.next1244 = add i64 %index1243, 4
  %139 = icmp eq i64 %index.next1244, %n.vec1242
  br i1 %139, label %middle.block1236, label %vector.body1238, !llvm.loop !94

middle.block1236:                                 ; preds = %vector.body1238
  %cmp.n1246 = icmp eq i64 %132, %n.vec1242
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
  %Packed_MemRef_call1438 = bitcast i8* %malloccall437 to double*
  br label %polly.loop_header537

polly.loop_header527:                             ; preds = %polly.loop_header527.preheader, %polly.loop_header527
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_header527 ], [ %polly.indvar530.ph, %polly.loop_header527.preheader ]
  %140 = shl nuw nsw i64 %polly.indvar530, 3
  %scevgep534 = getelementptr i8, i8* %scevgep533, i64 %140
  %scevgep534535 = bitcast i8* %scevgep534 to double*
  %_p_scalar_536 = load double, double* %scevgep534535, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_536, 1.200000e+00
  store double %p_mul.i, double* %scevgep534535, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next531, %polly.indvar524
  br i1 %exitcond859.not, label %polly.loop_exit529, label %polly.loop_header527, !llvm.loop !95

polly.loop_header537:                             ; preds = %polly.loop_header537.preheader, %polly.loop_exit567.2
  %polly.loop_cond542 = phi i1 [ false, %polly.loop_exit567.2 ], [ true, %polly.loop_header537.preheader ]
  %polly.indvar540 = phi i64 [ 1, %polly.loop_exit567.2 ], [ 0, %polly.loop_header537.preheader ]
  %141 = mul nuw nsw i64 %polly.indvar540, -32
  %142 = icmp slt i64 %141, -28
  %143 = select i1 %142, i64 %141, i64 -28
  %144 = shl nuw nsw i64 %polly.indvar540, 5
  %145 = add nsw i64 %143, 60
  br label %polly.loop_header549

polly.loop_header549:                             ; preds = %polly.loop_exit557, %polly.loop_header537
  %polly.indvar552 = phi i64 [ 0, %polly.loop_header537 ], [ %polly.indvar_next553, %polly.loop_exit557 ]
  %146 = add nuw nsw i64 %polly.indvar552, %144
  %polly.access.mul.Packed_MemRef_call1438 = mul nuw nsw i64 %polly.indvar552, 80
  br label %polly.loop_header555

polly.loop_exit557:                               ; preds = %polly.loop_header555
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %exitcond851.not = icmp eq i64 %polly.indvar_next553, %145
  br i1 %exitcond851.not, label %polly.loop_header565, label %polly.loop_header549

polly.loop_header555:                             ; preds = %polly.loop_header555, %polly.loop_header549
  %polly.indvar558 = phi i64 [ 0, %polly.loop_header549 ], [ %polly.indvar_next559, %polly.loop_header555 ]
  %polly.access.mul.call1562 = mul nuw nsw i64 %polly.indvar558, 60
  %polly.access.add.call1563 = add nuw nsw i64 %146, %polly.access.mul.call1562
  %polly.access.call1564 = getelementptr double, double* %polly.access.cast.call1606, i64 %polly.access.add.call1563
  %polly.access.call1564.load = load double, double* %polly.access.call1564, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1438 = add nuw nsw i64 %polly.indvar558, %polly.access.mul.Packed_MemRef_call1438
  %polly.access.Packed_MemRef_call1438 = getelementptr double, double* %Packed_MemRef_call1438, i64 %polly.access.add.Packed_MemRef_call1438
  store double %polly.access.call1564.load, double* %polly.access.Packed_MemRef_call1438, align 8
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %exitcond850.not = icmp eq i64 %polly.indvar_next559, 80
  br i1 %exitcond850.not, label %polly.loop_exit557, label %polly.loop_header555

polly.loop_header565:                             ; preds = %polly.loop_exit557, %polly.loop_exit573
  %polly.indvar568 = phi i64 [ %polly.indvar_next569, %polly.loop_exit573 ], [ 0, %polly.loop_exit557 ]
  %147 = add nuw nsw i64 %polly.indvar568, %144
  %polly.access.mul.Packed_MemRef_call1438583 = mul nuw nsw i64 %polly.indvar568, 80
  %148 = shl i64 %147, 3
  %scevgep587 = getelementptr i8, i8* %call2, i64 %148
  br label %polly.loop_header571

polly.loop_exit573:                               ; preds = %polly.loop_exit579
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next569, %145
  br i1 %exitcond857.not, label %polly.loop_header549.1, label %polly.loop_header565

polly.loop_header571:                             ; preds = %polly.loop_exit579, %polly.loop_header565
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %polly.loop_exit579 ], [ 0, %polly.loop_header565 ]
  %polly.indvar574 = phi i64 [ %polly.indvar_next575, %polly.loop_exit579 ], [ 0, %polly.loop_header565 ]
  %smin854 = call i64 @llvm.smin.i64(i64 %indvars.iv852, i64 31)
  %149 = mul nuw nsw i64 %polly.indvar574, 480
  %150 = mul nuw nsw i64 %polly.indvar574, 640
  %scevgep598 = getelementptr i8, i8* %call, i64 %150
  %scevgep588 = getelementptr i8, i8* %scevgep587, i64 %149
  %scevgep588589 = bitcast i8* %scevgep588 to double*
  %_p_scalar_590 = load double, double* %scevgep588589, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1438595 = add nuw nsw i64 %polly.indvar574, %polly.access.mul.Packed_MemRef_call1438583
  %polly.access.Packed_MemRef_call1438596 = getelementptr double, double* %Packed_MemRef_call1438, i64 %polly.access.add.Packed_MemRef_call1438595
  %_p_scalar_597 = load double, double* %polly.access.Packed_MemRef_call1438596, align 8
  br label %polly.loop_header577

polly.loop_exit579:                               ; preds = %polly.loop_header577
  %polly.indvar_next575 = add nuw nsw i64 %polly.indvar574, 1
  %indvars.iv.next853 = add nuw nsw i64 %indvars.iv852, 1
  %exitcond856.not = icmp eq i64 %indvars.iv.next853, 80
  br i1 %exitcond856.not, label %polly.loop_exit573, label %polly.loop_header571

polly.loop_header577:                             ; preds = %polly.loop_header577, %polly.loop_header571
  %polly.indvar580 = phi i64 [ 0, %polly.loop_header571 ], [ %polly.indvar_next581, %polly.loop_header577 ]
  %polly.access.add.Packed_MemRef_call1438584 = add nuw nsw i64 %polly.indvar580, %polly.access.mul.Packed_MemRef_call1438583
  %polly.access.Packed_MemRef_call1438585 = getelementptr double, double* %Packed_MemRef_call1438, i64 %polly.access.add.Packed_MemRef_call1438584
  %_p_scalar_586 = load double, double* %polly.access.Packed_MemRef_call1438585, align 8
  %p_mul27.i = fmul fast double %_p_scalar_590, %_p_scalar_586
  %151 = mul nuw nsw i64 %polly.indvar580, 480
  %152 = add nuw nsw i64 %151, %148
  %scevgep591 = getelementptr i8, i8* %call2, i64 %152
  %scevgep591592 = bitcast i8* %scevgep591 to double*
  %_p_scalar_593 = load double, double* %scevgep591592, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i = fmul fast double %_p_scalar_597, %_p_scalar_593
  %153 = shl i64 %polly.indvar580, 3
  %scevgep599 = getelementptr i8, i8* %scevgep598, i64 %153
  %scevgep599600 = bitcast i8* %scevgep599 to double*
  %_p_scalar_601 = load double, double* %scevgep599600, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_601
  store double %p_add42.i, double* %scevgep599600, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next581 = add nuw nsw i64 %polly.indvar580, 1
  %exitcond855.not = icmp eq i64 %polly.indvar580, %smin854
  br i1 %exitcond855.not, label %polly.loop_exit579, label %polly.loop_header577

polly.loop_header740:                             ; preds = %entry, %polly.loop_exit748
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit748 ], [ 0, %entry ]
  %154 = mul nuw nsw i64 %polly.indvar743, 640
  %155 = trunc i64 %polly.indvar743 to i32
  %broadcast.splatinsert970 = insertelement <4 x i32> poison, i32 %155, i32 0
  %broadcast.splat971 = shufflevector <4 x i32> %broadcast.splatinsert970, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body960

vector.body960:                                   ; preds = %vector.body960, %polly.loop_header740
  %index962 = phi i64 [ 0, %polly.loop_header740 ], [ %index.next963, %vector.body960 ]
  %vec.ind968 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740 ], [ %vec.ind.next969, %vector.body960 ]
  %156 = mul <4 x i32> %vec.ind968, %broadcast.splat971
  %157 = add <4 x i32> %156, <i32 3, i32 3, i32 3, i32 3>
  %158 = urem <4 x i32> %157, <i32 80, i32 80, i32 80, i32 80>
  %159 = sitofp <4 x i32> %158 to <4 x double>
  %160 = fmul fast <4 x double> %159, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %161 = shl i64 %index962, 3
  %162 = add nuw nsw i64 %161, %154
  %163 = getelementptr i8, i8* %call, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %160, <4 x double>* %164, align 8, !alias.scope !98, !noalias !100
  %index.next963 = add i64 %index962, 4
  %vec.ind.next969 = add <4 x i32> %vec.ind968, <i32 4, i32 4, i32 4, i32 4>
  %165 = icmp eq i64 %index.next963, 32
  br i1 %165, label %polly.loop_exit748, label %vector.body960, !llvm.loop !103

polly.loop_exit748:                               ; preds = %vector.body960
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next744, 32
  br i1 %exitcond880.not, label %polly.loop_header740.1, label %polly.loop_header740

polly.loop_header767:                             ; preds = %polly.loop_exit748.2.2, %polly.loop_exit775
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %polly.loop_exit748.2.2 ]
  %166 = mul nuw nsw i64 %polly.indvar770, 480
  %167 = trunc i64 %polly.indvar770 to i32
  %broadcast.splatinsert1084 = insertelement <4 x i32> poison, i32 %167, i32 0
  %broadcast.splat1085 = shufflevector <4 x i32> %broadcast.splatinsert1084, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %polly.loop_header767
  %index1076 = phi i64 [ 0, %polly.loop_header767 ], [ %index.next1077, %vector.body1074 ]
  %vec.ind1082 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767 ], [ %vec.ind.next1083, %vector.body1074 ]
  %168 = mul <4 x i32> %vec.ind1082, %broadcast.splat1085
  %169 = add <4 x i32> %168, <i32 2, i32 2, i32 2, i32 2>
  %170 = urem <4 x i32> %169, <i32 60, i32 60, i32 60, i32 60>
  %171 = sitofp <4 x i32> %170 to <4 x double>
  %172 = fmul fast <4 x double> %171, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %173 = shl i64 %index1076, 3
  %174 = add i64 %173, %166
  %175 = getelementptr i8, i8* %call2, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %172, <4 x double>* %176, align 8, !alias.scope !102, !noalias !104
  %index.next1077 = add i64 %index1076, 4
  %vec.ind.next1083 = add <4 x i32> %vec.ind1082, <i32 4, i32 4, i32 4, i32 4>
  %177 = icmp eq i64 %index.next1077, 32
  br i1 %177, label %polly.loop_exit775, label %vector.body1074, !llvm.loop !105

polly.loop_exit775:                               ; preds = %vector.body1074
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %exitcond871.not = icmp eq i64 %polly.indvar_next771, 32
  br i1 %exitcond871.not, label %polly.loop_header767.1, label %polly.loop_header767

polly.loop_header793:                             ; preds = %polly.loop_exit775.1.2, %polly.loop_exit801
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_exit775.1.2 ]
  %178 = mul nuw nsw i64 %polly.indvar796, 480
  %179 = trunc i64 %polly.indvar796 to i32
  %broadcast.splatinsert1162 = insertelement <4 x i32> poison, i32 %179, i32 0
  %broadcast.splat1163 = shufflevector <4 x i32> %broadcast.splatinsert1162, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %polly.loop_header793
  %index1154 = phi i64 [ 0, %polly.loop_header793 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1160 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793 ], [ %vec.ind.next1161, %vector.body1152 ]
  %180 = mul <4 x i32> %vec.ind1160, %broadcast.splat1163
  %181 = add <4 x i32> %180, <i32 1, i32 1, i32 1, i32 1>
  %182 = urem <4 x i32> %181, <i32 80, i32 80, i32 80, i32 80>
  %183 = sitofp <4 x i32> %182 to <4 x double>
  %184 = fmul fast <4 x double> %183, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %185 = shl i64 %index1154, 3
  %186 = add i64 %185, %178
  %187 = getelementptr i8, i8* %call1, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %184, <4 x double>* %188, align 8, !alias.scope !101, !noalias !106
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1161 = add <4 x i32> %vec.ind1160, <i32 4, i32 4, i32 4, i32 4>
  %189 = icmp eq i64 %index.next1155, 32
  br i1 %189, label %polly.loop_exit801, label %vector.body1152, !llvm.loop !107

polly.loop_exit801:                               ; preds = %vector.body1152
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next797, 32
  br i1 %exitcond865.not, label %polly.loop_header793.1, label %polly.loop_header793

polly.loop_header211.1:                           ; preds = %polly.loop_exit235, %polly.loop_exit219.1
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit235 ]
  %190 = add nuw nsw i64 %polly.indvar214.1, %100
  %polly.access.mul.Packed_MemRef_call1.1 = mul nuw nsw i64 %polly.indvar214.1, 80
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_header217.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_header217.1 ]
  %191 = mul i64 %polly.indvar220.1, 60
  %polly.access.mul.call1224.1 = add i64 %191, 1920
  %polly.access.add.call1225.1 = add nuw nsw i64 %190, %polly.access.mul.call1224.1
  %polly.access.call1226.1 = getelementptr double, double* %polly.access.cast.call1606, i64 %polly.access.add.call1225.1
  %polly.access.call1226.load.1 = load double, double* %polly.access.call1226.1, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.1 = add nuw nsw i64 %polly.indvar220.1, %polly.access.mul.Packed_MemRef_call1.1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1226.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next221.1, 48
  br i1 %exitcond.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_header217.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond826.1.not = icmp eq i64 %polly.indvar_next215.1, %101
  br i1 %exitcond826.1.not, label %polly.loop_header227.1, label %polly.loop_header211.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit219.1, %polly.loop_exit235.1
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_exit219.1 ]
  %192 = add nuw nsw i64 %polly.indvar230.1, %100
  %polly.access.mul.Packed_MemRef_call1245.1 = mul nuw nsw i64 %polly.indvar230.1, 80
  %193 = shl i64 %192, 3
  %scevgep249.1 = getelementptr i8, i8* %call2, i64 %193
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit241.1, %polly.loop_header227.1
  %indvars.iv827.1 = phi i64 [ %indvars.iv.next828.1, %polly.loop_exit241.1 ], [ 0, %polly.loop_header227.1 ]
  %polly.indvar236.1 = phi i64 [ %polly.indvar_next237.1, %polly.loop_exit241.1 ], [ 32, %polly.loop_header227.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv827.1, i64 31)
  %194 = add nsw i64 %polly.indvar236.1, -32
  %195 = mul nuw nsw i64 %polly.indvar236.1, 480
  %196 = mul nuw nsw i64 %polly.indvar236.1, 640
  %scevgep260.1 = getelementptr i8, i8* %call, i64 %196
  %scevgep250.1 = getelementptr i8, i8* %scevgep249.1, i64 %195
  %scevgep250251.1 = bitcast i8* %scevgep250.1 to double*
  %_p_scalar_252.1 = load double, double* %scevgep250251.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1257.1 = add nuw nsw i64 %194, %polly.access.mul.Packed_MemRef_call1245.1
  %polly.access.Packed_MemRef_call1258.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.1
  %_p_scalar_259.1 = load double, double* %polly.access.Packed_MemRef_call1258.1, align 8
  br label %polly.loop_header239.1

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_header233.1
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_header233.1 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %197 = add nuw nsw i64 %polly.indvar242.1, 32
  %polly.access.add.Packed_MemRef_call1246.1 = add nuw nsw i64 %polly.indvar242.1, %polly.access.mul.Packed_MemRef_call1245.1
  %polly.access.Packed_MemRef_call1247.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.1
  %_p_scalar_248.1 = load double, double* %polly.access.Packed_MemRef_call1247.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_252.1, %_p_scalar_248.1
  %198 = mul nuw nsw i64 %197, 480
  %199 = add nuw nsw i64 %198, %193
  %scevgep253.1 = getelementptr i8, i8* %call2, i64 %199
  %scevgep253254.1 = bitcast i8* %scevgep253.1 to double*
  %_p_scalar_255.1 = load double, double* %scevgep253254.1, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.1 = fmul fast double %_p_scalar_259.1, %_p_scalar_255.1
  %200 = shl i64 %197, 3
  %scevgep261.1 = getelementptr i8, i8* %scevgep260.1, i64 %200
  %scevgep261262.1 = bitcast i8* %scevgep261.1 to double*
  %_p_scalar_263.1 = load double, double* %scevgep261262.1, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_263.1
  store double %p_add42.i118.1, double* %scevgep261262.1, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %exitcond829.1.not = icmp eq i64 %polly.indvar242.1, %smin.1
  br i1 %exitcond829.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.1

polly.loop_exit241.1:                             ; preds = %polly.loop_header239.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %indvars.iv.next828.1 = add nuw nsw i64 %indvars.iv827.1, 1
  %exitcond830.1.not = icmp eq i64 %indvars.iv.next828.1, 48
  br i1 %exitcond830.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %exitcond831.1.not = icmp eq i64 %polly.indvar_next231.1, %101
  br i1 %exitcond831.1.not, label %polly.loop_header211.2, label %polly.loop_header227.1

polly.loop_header211.2:                           ; preds = %polly.loop_exit235.1, %polly.loop_exit219.2
  %polly.indvar214.2 = phi i64 [ %polly.indvar_next215.2, %polly.loop_exit219.2 ], [ 0, %polly.loop_exit235.1 ]
  %201 = add nuw nsw i64 %polly.indvar214.2, %100
  %polly.access.mul.Packed_MemRef_call1.2 = mul nuw nsw i64 %polly.indvar214.2, 80
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_header217.2, %polly.loop_header211.2
  %polly.indvar220.2 = phi i64 [ 0, %polly.loop_header211.2 ], [ %polly.indvar_next221.2, %polly.loop_header217.2 ]
  %202 = mul i64 %polly.indvar220.2, 60
  %polly.access.mul.call1224.2 = add i64 %202, 3840
  %polly.access.add.call1225.2 = add nuw nsw i64 %201, %polly.access.mul.call1224.2
  %polly.access.call1226.2 = getelementptr double, double* %polly.access.cast.call1606, i64 %polly.access.add.call1225.2
  %polly.access.call1226.load.2 = load double, double* %polly.access.call1226.2, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.2 = add nuw nsw i64 %polly.indvar220.2, %polly.access.mul.Packed_MemRef_call1.2
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1226.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next221.2, 16
  br i1 %exitcond.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.2

polly.loop_exit219.2:                             ; preds = %polly.loop_header217.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %exitcond826.2.not = icmp eq i64 %polly.indvar_next215.2, %101
  br i1 %exitcond826.2.not, label %polly.loop_header227.2, label %polly.loop_header211.2

polly.loop_header227.2:                           ; preds = %polly.loop_exit219.2, %polly.loop_exit235.2
  %polly.indvar230.2 = phi i64 [ %polly.indvar_next231.2, %polly.loop_exit235.2 ], [ 0, %polly.loop_exit219.2 ]
  %203 = add nuw nsw i64 %polly.indvar230.2, %100
  %polly.access.mul.Packed_MemRef_call1245.2 = mul nuw nsw i64 %polly.indvar230.2, 80
  %204 = shl i64 %203, 3
  %scevgep249.2 = getelementptr i8, i8* %call2, i64 %204
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_exit241.2, %polly.loop_header227.2
  %indvars.iv827.2 = phi i64 [ %indvars.iv.next828.2, %polly.loop_exit241.2 ], [ 0, %polly.loop_header227.2 ]
  %polly.indvar236.2 = phi i64 [ %polly.indvar_next237.2, %polly.loop_exit241.2 ], [ 64, %polly.loop_header227.2 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv827.2, i64 31)
  %205 = add nsw i64 %polly.indvar236.2, -64
  %206 = mul nuw nsw i64 %polly.indvar236.2, 480
  %207 = mul nuw nsw i64 %polly.indvar236.2, 640
  %scevgep260.2 = getelementptr i8, i8* %call, i64 %207
  %scevgep250.2 = getelementptr i8, i8* %scevgep249.2, i64 %206
  %scevgep250251.2 = bitcast i8* %scevgep250.2 to double*
  %_p_scalar_252.2 = load double, double* %scevgep250251.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1257.2 = add nuw nsw i64 %205, %polly.access.mul.Packed_MemRef_call1245.2
  %polly.access.Packed_MemRef_call1258.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.2
  %_p_scalar_259.2 = load double, double* %polly.access.Packed_MemRef_call1258.2, align 8
  br label %polly.loop_header239.2

polly.loop_header239.2:                           ; preds = %polly.loop_header239.2, %polly.loop_header233.2
  %polly.indvar242.2 = phi i64 [ 0, %polly.loop_header233.2 ], [ %polly.indvar_next243.2, %polly.loop_header239.2 ]
  %208 = add nuw nsw i64 %polly.indvar242.2, 64
  %polly.access.add.Packed_MemRef_call1246.2 = add nuw nsw i64 %polly.indvar242.2, %polly.access.mul.Packed_MemRef_call1245.2
  %polly.access.Packed_MemRef_call1247.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.2
  %_p_scalar_248.2 = load double, double* %polly.access.Packed_MemRef_call1247.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_252.2, %_p_scalar_248.2
  %209 = mul nuw nsw i64 %208, 480
  %210 = add nuw nsw i64 %209, %204
  %scevgep253.2 = getelementptr i8, i8* %call2, i64 %210
  %scevgep253254.2 = bitcast i8* %scevgep253.2 to double*
  %_p_scalar_255.2 = load double, double* %scevgep253254.2, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.2 = fmul fast double %_p_scalar_259.2, %_p_scalar_255.2
  %211 = shl i64 %208, 3
  %scevgep261.2 = getelementptr i8, i8* %scevgep260.2, i64 %211
  %scevgep261262.2 = bitcast i8* %scevgep261.2 to double*
  %_p_scalar_263.2 = load double, double* %scevgep261262.2, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_263.2
  store double %p_add42.i118.2, double* %scevgep261262.2, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next243.2 = add nuw nsw i64 %polly.indvar242.2, 1
  %exitcond829.2.not = icmp eq i64 %polly.indvar242.2, %smin.2
  br i1 %exitcond829.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.2

polly.loop_exit241.2:                             ; preds = %polly.loop_header239.2
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %indvars.iv.next828.2 = add nuw nsw i64 %indvars.iv827.2, 1
  %exitcond830.2.not = icmp eq i64 %indvars.iv.next828.2, 16
  br i1 %exitcond830.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.2

polly.loop_exit235.2:                             ; preds = %polly.loop_exit241.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %exitcond831.2.not = icmp eq i64 %polly.indvar_next231.2, %101
  br i1 %exitcond831.2.not, label %polly.loop_exit229.2, label %polly.loop_header227.2

polly.loop_exit229.2:                             ; preds = %polly.loop_exit235.2
  br i1 %polly.loop_cond204, label %polly.loop_header199, label %polly.exiting

polly.loop_header380.1:                           ; preds = %polly.loop_exit404, %polly.loop_exit388.1
  %polly.indvar383.1 = phi i64 [ %polly.indvar_next384.1, %polly.loop_exit388.1 ], [ 0, %polly.loop_exit404 ]
  %212 = add nuw nsw i64 %polly.indvar383.1, %122
  %polly.access.mul.Packed_MemRef_call1269.1 = mul nuw nsw i64 %polly.indvar383.1, 80
  br label %polly.loop_header386.1

polly.loop_header386.1:                           ; preds = %polly.loop_header386.1, %polly.loop_header380.1
  %polly.indvar389.1 = phi i64 [ 0, %polly.loop_header380.1 ], [ %polly.indvar_next390.1, %polly.loop_header386.1 ]
  %213 = mul i64 %polly.indvar389.1, 60
  %polly.access.mul.call1393.1 = add i64 %213, 1920
  %polly.access.add.call1394.1 = add nuw nsw i64 %212, %polly.access.mul.call1393.1
  %polly.access.call1395.1 = getelementptr double, double* %polly.access.cast.call1606, i64 %polly.access.add.call1394.1
  %polly.access.call1395.load.1 = load double, double* %polly.access.call1395.1, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1269.1 = add nuw nsw i64 %polly.indvar389.1, %polly.access.mul.Packed_MemRef_call1269.1
  %polly.access.Packed_MemRef_call1269.1 = getelementptr double, double* %Packed_MemRef_call1269, i64 %polly.access.add.Packed_MemRef_call1269.1
  store double %polly.access.call1395.load.1, double* %polly.access.Packed_MemRef_call1269.1, align 8
  %polly.indvar_next390.1 = add nuw nsw i64 %polly.indvar389.1, 1
  %exitcond837.1.not = icmp eq i64 %polly.indvar_next390.1, 48
  br i1 %exitcond837.1.not, label %polly.loop_exit388.1, label %polly.loop_header386.1

polly.loop_exit388.1:                             ; preds = %polly.loop_header386.1
  %polly.indvar_next384.1 = add nuw nsw i64 %polly.indvar383.1, 1
  %exitcond838.1.not = icmp eq i64 %polly.indvar_next384.1, %123
  br i1 %exitcond838.1.not, label %polly.loop_header396.1, label %polly.loop_header380.1

polly.loop_header396.1:                           ; preds = %polly.loop_exit388.1, %polly.loop_exit404.1
  %polly.indvar399.1 = phi i64 [ %polly.indvar_next400.1, %polly.loop_exit404.1 ], [ 0, %polly.loop_exit388.1 ]
  %214 = add nuw nsw i64 %polly.indvar399.1, %122
  %polly.access.mul.Packed_MemRef_call1269414.1 = mul nuw nsw i64 %polly.indvar399.1, 80
  %215 = shl i64 %214, 3
  %scevgep418.1 = getelementptr i8, i8* %call2, i64 %215
  br label %polly.loop_header402.1

polly.loop_header402.1:                           ; preds = %polly.loop_exit410.1, %polly.loop_header396.1
  %indvars.iv839.1 = phi i64 [ %indvars.iv.next840.1, %polly.loop_exit410.1 ], [ 0, %polly.loop_header396.1 ]
  %polly.indvar405.1 = phi i64 [ %polly.indvar_next406.1, %polly.loop_exit410.1 ], [ 32, %polly.loop_header396.1 ]
  %smin841.1 = call i64 @llvm.smin.i64(i64 %indvars.iv839.1, i64 31)
  %216 = add nsw i64 %polly.indvar405.1, -32
  %217 = mul nuw nsw i64 %polly.indvar405.1, 480
  %218 = mul nuw nsw i64 %polly.indvar405.1, 640
  %scevgep429.1 = getelementptr i8, i8* %call, i64 %218
  %scevgep419.1 = getelementptr i8, i8* %scevgep418.1, i64 %217
  %scevgep419420.1 = bitcast i8* %scevgep419.1 to double*
  %_p_scalar_421.1 = load double, double* %scevgep419420.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1269426.1 = add nuw nsw i64 %216, %polly.access.mul.Packed_MemRef_call1269414.1
  %polly.access.Packed_MemRef_call1269427.1 = getelementptr double, double* %Packed_MemRef_call1269, i64 %polly.access.add.Packed_MemRef_call1269426.1
  %_p_scalar_428.1 = load double, double* %polly.access.Packed_MemRef_call1269427.1, align 8
  br label %polly.loop_header408.1

polly.loop_header408.1:                           ; preds = %polly.loop_header408.1, %polly.loop_header402.1
  %polly.indvar411.1 = phi i64 [ 0, %polly.loop_header402.1 ], [ %polly.indvar_next412.1, %polly.loop_header408.1 ]
  %219 = add nuw nsw i64 %polly.indvar411.1, 32
  %polly.access.add.Packed_MemRef_call1269415.1 = add nuw nsw i64 %polly.indvar411.1, %polly.access.mul.Packed_MemRef_call1269414.1
  %polly.access.Packed_MemRef_call1269416.1 = getelementptr double, double* %Packed_MemRef_call1269, i64 %polly.access.add.Packed_MemRef_call1269415.1
  %_p_scalar_417.1 = load double, double* %polly.access.Packed_MemRef_call1269416.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_421.1, %_p_scalar_417.1
  %220 = mul nuw nsw i64 %219, 480
  %221 = add nuw nsw i64 %220, %215
  %scevgep422.1 = getelementptr i8, i8* %call2, i64 %221
  %scevgep422423.1 = bitcast i8* %scevgep422.1 to double*
  %_p_scalar_424.1 = load double, double* %scevgep422423.1, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.1 = fmul fast double %_p_scalar_428.1, %_p_scalar_424.1
  %222 = shl i64 %219, 3
  %scevgep430.1 = getelementptr i8, i8* %scevgep429.1, i64 %222
  %scevgep430431.1 = bitcast i8* %scevgep430.1 to double*
  %_p_scalar_432.1 = load double, double* %scevgep430431.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_432.1
  store double %p_add42.i79.1, double* %scevgep430431.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next412.1 = add nuw nsw i64 %polly.indvar411.1, 1
  %exitcond842.1.not = icmp eq i64 %polly.indvar411.1, %smin841.1
  br i1 %exitcond842.1.not, label %polly.loop_exit410.1, label %polly.loop_header408.1

polly.loop_exit410.1:                             ; preds = %polly.loop_header408.1
  %polly.indvar_next406.1 = add nuw nsw i64 %polly.indvar405.1, 1
  %indvars.iv.next840.1 = add nuw nsw i64 %indvars.iv839.1, 1
  %exitcond843.1.not = icmp eq i64 %indvars.iv.next840.1, 48
  br i1 %exitcond843.1.not, label %polly.loop_exit404.1, label %polly.loop_header402.1

polly.loop_exit404.1:                             ; preds = %polly.loop_exit410.1
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %exitcond844.1.not = icmp eq i64 %polly.indvar_next400.1, %123
  br i1 %exitcond844.1.not, label %polly.loop_header380.2, label %polly.loop_header396.1

polly.loop_header380.2:                           ; preds = %polly.loop_exit404.1, %polly.loop_exit388.2
  %polly.indvar383.2 = phi i64 [ %polly.indvar_next384.2, %polly.loop_exit388.2 ], [ 0, %polly.loop_exit404.1 ]
  %223 = add nuw nsw i64 %polly.indvar383.2, %122
  %polly.access.mul.Packed_MemRef_call1269.2 = mul nuw nsw i64 %polly.indvar383.2, 80
  br label %polly.loop_header386.2

polly.loop_header386.2:                           ; preds = %polly.loop_header386.2, %polly.loop_header380.2
  %polly.indvar389.2 = phi i64 [ 0, %polly.loop_header380.2 ], [ %polly.indvar_next390.2, %polly.loop_header386.2 ]
  %224 = mul i64 %polly.indvar389.2, 60
  %polly.access.mul.call1393.2 = add i64 %224, 3840
  %polly.access.add.call1394.2 = add nuw nsw i64 %223, %polly.access.mul.call1393.2
  %polly.access.call1395.2 = getelementptr double, double* %polly.access.cast.call1606, i64 %polly.access.add.call1394.2
  %polly.access.call1395.load.2 = load double, double* %polly.access.call1395.2, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1269.2 = add nuw nsw i64 %polly.indvar389.2, %polly.access.mul.Packed_MemRef_call1269.2
  %polly.access.Packed_MemRef_call1269.2 = getelementptr double, double* %Packed_MemRef_call1269, i64 %polly.access.add.Packed_MemRef_call1269.2
  store double %polly.access.call1395.load.2, double* %polly.access.Packed_MemRef_call1269.2, align 8
  %polly.indvar_next390.2 = add nuw nsw i64 %polly.indvar389.2, 1
  %exitcond837.2.not = icmp eq i64 %polly.indvar_next390.2, 16
  br i1 %exitcond837.2.not, label %polly.loop_exit388.2, label %polly.loop_header386.2

polly.loop_exit388.2:                             ; preds = %polly.loop_header386.2
  %polly.indvar_next384.2 = add nuw nsw i64 %polly.indvar383.2, 1
  %exitcond838.2.not = icmp eq i64 %polly.indvar_next384.2, %123
  br i1 %exitcond838.2.not, label %polly.loop_header396.2, label %polly.loop_header380.2

polly.loop_header396.2:                           ; preds = %polly.loop_exit388.2, %polly.loop_exit404.2
  %polly.indvar399.2 = phi i64 [ %polly.indvar_next400.2, %polly.loop_exit404.2 ], [ 0, %polly.loop_exit388.2 ]
  %225 = add nuw nsw i64 %polly.indvar399.2, %122
  %polly.access.mul.Packed_MemRef_call1269414.2 = mul nuw nsw i64 %polly.indvar399.2, 80
  %226 = shl i64 %225, 3
  %scevgep418.2 = getelementptr i8, i8* %call2, i64 %226
  br label %polly.loop_header402.2

polly.loop_header402.2:                           ; preds = %polly.loop_exit410.2, %polly.loop_header396.2
  %indvars.iv839.2 = phi i64 [ %indvars.iv.next840.2, %polly.loop_exit410.2 ], [ 0, %polly.loop_header396.2 ]
  %polly.indvar405.2 = phi i64 [ %polly.indvar_next406.2, %polly.loop_exit410.2 ], [ 64, %polly.loop_header396.2 ]
  %smin841.2 = call i64 @llvm.smin.i64(i64 %indvars.iv839.2, i64 31)
  %227 = add nsw i64 %polly.indvar405.2, -64
  %228 = mul nuw nsw i64 %polly.indvar405.2, 480
  %229 = mul nuw nsw i64 %polly.indvar405.2, 640
  %scevgep429.2 = getelementptr i8, i8* %call, i64 %229
  %scevgep419.2 = getelementptr i8, i8* %scevgep418.2, i64 %228
  %scevgep419420.2 = bitcast i8* %scevgep419.2 to double*
  %_p_scalar_421.2 = load double, double* %scevgep419420.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1269426.2 = add nuw nsw i64 %227, %polly.access.mul.Packed_MemRef_call1269414.2
  %polly.access.Packed_MemRef_call1269427.2 = getelementptr double, double* %Packed_MemRef_call1269, i64 %polly.access.add.Packed_MemRef_call1269426.2
  %_p_scalar_428.2 = load double, double* %polly.access.Packed_MemRef_call1269427.2, align 8
  br label %polly.loop_header408.2

polly.loop_header408.2:                           ; preds = %polly.loop_header408.2, %polly.loop_header402.2
  %polly.indvar411.2 = phi i64 [ 0, %polly.loop_header402.2 ], [ %polly.indvar_next412.2, %polly.loop_header408.2 ]
  %230 = add nuw nsw i64 %polly.indvar411.2, 64
  %polly.access.add.Packed_MemRef_call1269415.2 = add nuw nsw i64 %polly.indvar411.2, %polly.access.mul.Packed_MemRef_call1269414.2
  %polly.access.Packed_MemRef_call1269416.2 = getelementptr double, double* %Packed_MemRef_call1269, i64 %polly.access.add.Packed_MemRef_call1269415.2
  %_p_scalar_417.2 = load double, double* %polly.access.Packed_MemRef_call1269416.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_421.2, %_p_scalar_417.2
  %231 = mul nuw nsw i64 %230, 480
  %232 = add nuw nsw i64 %231, %226
  %scevgep422.2 = getelementptr i8, i8* %call2, i64 %232
  %scevgep422423.2 = bitcast i8* %scevgep422.2 to double*
  %_p_scalar_424.2 = load double, double* %scevgep422423.2, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.2 = fmul fast double %_p_scalar_428.2, %_p_scalar_424.2
  %233 = shl i64 %230, 3
  %scevgep430.2 = getelementptr i8, i8* %scevgep429.2, i64 %233
  %scevgep430431.2 = bitcast i8* %scevgep430.2 to double*
  %_p_scalar_432.2 = load double, double* %scevgep430431.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_432.2
  store double %p_add42.i79.2, double* %scevgep430431.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next412.2 = add nuw nsw i64 %polly.indvar411.2, 1
  %exitcond842.2.not = icmp eq i64 %polly.indvar411.2, %smin841.2
  br i1 %exitcond842.2.not, label %polly.loop_exit410.2, label %polly.loop_header408.2

polly.loop_exit410.2:                             ; preds = %polly.loop_header408.2
  %polly.indvar_next406.2 = add nuw nsw i64 %polly.indvar405.2, 1
  %indvars.iv.next840.2 = add nuw nsw i64 %indvars.iv839.2, 1
  %exitcond843.2.not = icmp eq i64 %indvars.iv.next840.2, 16
  br i1 %exitcond843.2.not, label %polly.loop_exit404.2, label %polly.loop_header402.2

polly.loop_exit404.2:                             ; preds = %polly.loop_exit410.2
  %polly.indvar_next400.2 = add nuw nsw i64 %polly.indvar399.2, 1
  %exitcond844.2.not = icmp eq i64 %polly.indvar_next400.2, %123
  br i1 %exitcond844.2.not, label %polly.loop_exit398.2, label %polly.loop_header396.2

polly.loop_exit398.2:                             ; preds = %polly.loop_exit404.2
  br i1 %polly.loop_cond373, label %polly.loop_header368, label %polly.exiting267

polly.loop_header549.1:                           ; preds = %polly.loop_exit573, %polly.loop_exit557.1
  %polly.indvar552.1 = phi i64 [ %polly.indvar_next553.1, %polly.loop_exit557.1 ], [ 0, %polly.loop_exit573 ]
  %234 = add nuw nsw i64 %polly.indvar552.1, %144
  %polly.access.mul.Packed_MemRef_call1438.1 = mul nuw nsw i64 %polly.indvar552.1, 80
  br label %polly.loop_header555.1

polly.loop_header555.1:                           ; preds = %polly.loop_header555.1, %polly.loop_header549.1
  %polly.indvar558.1 = phi i64 [ 0, %polly.loop_header549.1 ], [ %polly.indvar_next559.1, %polly.loop_header555.1 ]
  %235 = mul i64 %polly.indvar558.1, 60
  %polly.access.mul.call1562.1 = add i64 %235, 1920
  %polly.access.add.call1563.1 = add nuw nsw i64 %234, %polly.access.mul.call1562.1
  %polly.access.call1564.1 = getelementptr double, double* %polly.access.cast.call1606, i64 %polly.access.add.call1563.1
  %polly.access.call1564.load.1 = load double, double* %polly.access.call1564.1, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1438.1 = add nuw nsw i64 %polly.indvar558.1, %polly.access.mul.Packed_MemRef_call1438.1
  %polly.access.Packed_MemRef_call1438.1 = getelementptr double, double* %Packed_MemRef_call1438, i64 %polly.access.add.Packed_MemRef_call1438.1
  store double %polly.access.call1564.load.1, double* %polly.access.Packed_MemRef_call1438.1, align 8
  %polly.indvar_next559.1 = add nuw nsw i64 %polly.indvar558.1, 1
  %exitcond850.1.not = icmp eq i64 %polly.indvar_next559.1, 48
  br i1 %exitcond850.1.not, label %polly.loop_exit557.1, label %polly.loop_header555.1

polly.loop_exit557.1:                             ; preds = %polly.loop_header555.1
  %polly.indvar_next553.1 = add nuw nsw i64 %polly.indvar552.1, 1
  %exitcond851.1.not = icmp eq i64 %polly.indvar_next553.1, %145
  br i1 %exitcond851.1.not, label %polly.loop_header565.1, label %polly.loop_header549.1

polly.loop_header565.1:                           ; preds = %polly.loop_exit557.1, %polly.loop_exit573.1
  %polly.indvar568.1 = phi i64 [ %polly.indvar_next569.1, %polly.loop_exit573.1 ], [ 0, %polly.loop_exit557.1 ]
  %236 = add nuw nsw i64 %polly.indvar568.1, %144
  %polly.access.mul.Packed_MemRef_call1438583.1 = mul nuw nsw i64 %polly.indvar568.1, 80
  %237 = shl i64 %236, 3
  %scevgep587.1 = getelementptr i8, i8* %call2, i64 %237
  br label %polly.loop_header571.1

polly.loop_header571.1:                           ; preds = %polly.loop_exit579.1, %polly.loop_header565.1
  %indvars.iv852.1 = phi i64 [ %indvars.iv.next853.1, %polly.loop_exit579.1 ], [ 0, %polly.loop_header565.1 ]
  %polly.indvar574.1 = phi i64 [ %polly.indvar_next575.1, %polly.loop_exit579.1 ], [ 32, %polly.loop_header565.1 ]
  %smin854.1 = call i64 @llvm.smin.i64(i64 %indvars.iv852.1, i64 31)
  %238 = add nsw i64 %polly.indvar574.1, -32
  %239 = mul nuw nsw i64 %polly.indvar574.1, 480
  %240 = mul nuw nsw i64 %polly.indvar574.1, 640
  %scevgep598.1 = getelementptr i8, i8* %call, i64 %240
  %scevgep588.1 = getelementptr i8, i8* %scevgep587.1, i64 %239
  %scevgep588589.1 = bitcast i8* %scevgep588.1 to double*
  %_p_scalar_590.1 = load double, double* %scevgep588589.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1438595.1 = add nuw nsw i64 %238, %polly.access.mul.Packed_MemRef_call1438583.1
  %polly.access.Packed_MemRef_call1438596.1 = getelementptr double, double* %Packed_MemRef_call1438, i64 %polly.access.add.Packed_MemRef_call1438595.1
  %_p_scalar_597.1 = load double, double* %polly.access.Packed_MemRef_call1438596.1, align 8
  br label %polly.loop_header577.1

polly.loop_header577.1:                           ; preds = %polly.loop_header577.1, %polly.loop_header571.1
  %polly.indvar580.1 = phi i64 [ 0, %polly.loop_header571.1 ], [ %polly.indvar_next581.1, %polly.loop_header577.1 ]
  %241 = add nuw nsw i64 %polly.indvar580.1, 32
  %polly.access.add.Packed_MemRef_call1438584.1 = add nuw nsw i64 %polly.indvar580.1, %polly.access.mul.Packed_MemRef_call1438583.1
  %polly.access.Packed_MemRef_call1438585.1 = getelementptr double, double* %Packed_MemRef_call1438, i64 %polly.access.add.Packed_MemRef_call1438584.1
  %_p_scalar_586.1 = load double, double* %polly.access.Packed_MemRef_call1438585.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_590.1, %_p_scalar_586.1
  %242 = mul nuw nsw i64 %241, 480
  %243 = add nuw nsw i64 %242, %237
  %scevgep591.1 = getelementptr i8, i8* %call2, i64 %243
  %scevgep591592.1 = bitcast i8* %scevgep591.1 to double*
  %_p_scalar_593.1 = load double, double* %scevgep591592.1, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.1 = fmul fast double %_p_scalar_597.1, %_p_scalar_593.1
  %244 = shl i64 %241, 3
  %scevgep599.1 = getelementptr i8, i8* %scevgep598.1, i64 %244
  %scevgep599600.1 = bitcast i8* %scevgep599.1 to double*
  %_p_scalar_601.1 = load double, double* %scevgep599600.1, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_601.1
  store double %p_add42.i.1, double* %scevgep599600.1, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next581.1 = add nuw nsw i64 %polly.indvar580.1, 1
  %exitcond855.1.not = icmp eq i64 %polly.indvar580.1, %smin854.1
  br i1 %exitcond855.1.not, label %polly.loop_exit579.1, label %polly.loop_header577.1

polly.loop_exit579.1:                             ; preds = %polly.loop_header577.1
  %polly.indvar_next575.1 = add nuw nsw i64 %polly.indvar574.1, 1
  %indvars.iv.next853.1 = add nuw nsw i64 %indvars.iv852.1, 1
  %exitcond856.1.not = icmp eq i64 %indvars.iv.next853.1, 48
  br i1 %exitcond856.1.not, label %polly.loop_exit573.1, label %polly.loop_header571.1

polly.loop_exit573.1:                             ; preds = %polly.loop_exit579.1
  %polly.indvar_next569.1 = add nuw nsw i64 %polly.indvar568.1, 1
  %exitcond857.1.not = icmp eq i64 %polly.indvar_next569.1, %145
  br i1 %exitcond857.1.not, label %polly.loop_header549.2, label %polly.loop_header565.1

polly.loop_header549.2:                           ; preds = %polly.loop_exit573.1, %polly.loop_exit557.2
  %polly.indvar552.2 = phi i64 [ %polly.indvar_next553.2, %polly.loop_exit557.2 ], [ 0, %polly.loop_exit573.1 ]
  %245 = add nuw nsw i64 %polly.indvar552.2, %144
  %polly.access.mul.Packed_MemRef_call1438.2 = mul nuw nsw i64 %polly.indvar552.2, 80
  br label %polly.loop_header555.2

polly.loop_header555.2:                           ; preds = %polly.loop_header555.2, %polly.loop_header549.2
  %polly.indvar558.2 = phi i64 [ 0, %polly.loop_header549.2 ], [ %polly.indvar_next559.2, %polly.loop_header555.2 ]
  %246 = mul i64 %polly.indvar558.2, 60
  %polly.access.mul.call1562.2 = add i64 %246, 3840
  %polly.access.add.call1563.2 = add nuw nsw i64 %245, %polly.access.mul.call1562.2
  %polly.access.call1564.2 = getelementptr double, double* %polly.access.cast.call1606, i64 %polly.access.add.call1563.2
  %polly.access.call1564.load.2 = load double, double* %polly.access.call1564.2, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1438.2 = add nuw nsw i64 %polly.indvar558.2, %polly.access.mul.Packed_MemRef_call1438.2
  %polly.access.Packed_MemRef_call1438.2 = getelementptr double, double* %Packed_MemRef_call1438, i64 %polly.access.add.Packed_MemRef_call1438.2
  store double %polly.access.call1564.load.2, double* %polly.access.Packed_MemRef_call1438.2, align 8
  %polly.indvar_next559.2 = add nuw nsw i64 %polly.indvar558.2, 1
  %exitcond850.2.not = icmp eq i64 %polly.indvar_next559.2, 16
  br i1 %exitcond850.2.not, label %polly.loop_exit557.2, label %polly.loop_header555.2

polly.loop_exit557.2:                             ; preds = %polly.loop_header555.2
  %polly.indvar_next553.2 = add nuw nsw i64 %polly.indvar552.2, 1
  %exitcond851.2.not = icmp eq i64 %polly.indvar_next553.2, %145
  br i1 %exitcond851.2.not, label %polly.loop_header565.2, label %polly.loop_header549.2

polly.loop_header565.2:                           ; preds = %polly.loop_exit557.2, %polly.loop_exit573.2
  %polly.indvar568.2 = phi i64 [ %polly.indvar_next569.2, %polly.loop_exit573.2 ], [ 0, %polly.loop_exit557.2 ]
  %247 = add nuw nsw i64 %polly.indvar568.2, %144
  %polly.access.mul.Packed_MemRef_call1438583.2 = mul nuw nsw i64 %polly.indvar568.2, 80
  %248 = shl i64 %247, 3
  %scevgep587.2 = getelementptr i8, i8* %call2, i64 %248
  br label %polly.loop_header571.2

polly.loop_header571.2:                           ; preds = %polly.loop_exit579.2, %polly.loop_header565.2
  %indvars.iv852.2 = phi i64 [ %indvars.iv.next853.2, %polly.loop_exit579.2 ], [ 0, %polly.loop_header565.2 ]
  %polly.indvar574.2 = phi i64 [ %polly.indvar_next575.2, %polly.loop_exit579.2 ], [ 64, %polly.loop_header565.2 ]
  %smin854.2 = call i64 @llvm.smin.i64(i64 %indvars.iv852.2, i64 31)
  %249 = add nsw i64 %polly.indvar574.2, -64
  %250 = mul nuw nsw i64 %polly.indvar574.2, 480
  %251 = mul nuw nsw i64 %polly.indvar574.2, 640
  %scevgep598.2 = getelementptr i8, i8* %call, i64 %251
  %scevgep588.2 = getelementptr i8, i8* %scevgep587.2, i64 %250
  %scevgep588589.2 = bitcast i8* %scevgep588.2 to double*
  %_p_scalar_590.2 = load double, double* %scevgep588589.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1438595.2 = add nuw nsw i64 %249, %polly.access.mul.Packed_MemRef_call1438583.2
  %polly.access.Packed_MemRef_call1438596.2 = getelementptr double, double* %Packed_MemRef_call1438, i64 %polly.access.add.Packed_MemRef_call1438595.2
  %_p_scalar_597.2 = load double, double* %polly.access.Packed_MemRef_call1438596.2, align 8
  br label %polly.loop_header577.2

polly.loop_header577.2:                           ; preds = %polly.loop_header577.2, %polly.loop_header571.2
  %polly.indvar580.2 = phi i64 [ 0, %polly.loop_header571.2 ], [ %polly.indvar_next581.2, %polly.loop_header577.2 ]
  %252 = add nuw nsw i64 %polly.indvar580.2, 64
  %polly.access.add.Packed_MemRef_call1438584.2 = add nuw nsw i64 %polly.indvar580.2, %polly.access.mul.Packed_MemRef_call1438583.2
  %polly.access.Packed_MemRef_call1438585.2 = getelementptr double, double* %Packed_MemRef_call1438, i64 %polly.access.add.Packed_MemRef_call1438584.2
  %_p_scalar_586.2 = load double, double* %polly.access.Packed_MemRef_call1438585.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_590.2, %_p_scalar_586.2
  %253 = mul nuw nsw i64 %252, 480
  %254 = add nuw nsw i64 %253, %248
  %scevgep591.2 = getelementptr i8, i8* %call2, i64 %254
  %scevgep591592.2 = bitcast i8* %scevgep591.2 to double*
  %_p_scalar_593.2 = load double, double* %scevgep591592.2, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.2 = fmul fast double %_p_scalar_597.2, %_p_scalar_593.2
  %255 = shl i64 %252, 3
  %scevgep599.2 = getelementptr i8, i8* %scevgep598.2, i64 %255
  %scevgep599600.2 = bitcast i8* %scevgep599.2 to double*
  %_p_scalar_601.2 = load double, double* %scevgep599600.2, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_601.2
  store double %p_add42.i.2, double* %scevgep599600.2, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next581.2 = add nuw nsw i64 %polly.indvar580.2, 1
  %exitcond855.2.not = icmp eq i64 %polly.indvar580.2, %smin854.2
  br i1 %exitcond855.2.not, label %polly.loop_exit579.2, label %polly.loop_header577.2

polly.loop_exit579.2:                             ; preds = %polly.loop_header577.2
  %polly.indvar_next575.2 = add nuw nsw i64 %polly.indvar574.2, 1
  %indvars.iv.next853.2 = add nuw nsw i64 %indvars.iv852.2, 1
  %exitcond856.2.not = icmp eq i64 %indvars.iv.next853.2, 16
  br i1 %exitcond856.2.not, label %polly.loop_exit573.2, label %polly.loop_header571.2

polly.loop_exit573.2:                             ; preds = %polly.loop_exit579.2
  %polly.indvar_next569.2 = add nuw nsw i64 %polly.indvar568.2, 1
  %exitcond857.2.not = icmp eq i64 %polly.indvar_next569.2, %145
  br i1 %exitcond857.2.not, label %polly.loop_exit567.2, label %polly.loop_header565.2

polly.loop_exit567.2:                             ; preds = %polly.loop_exit573.2
  br i1 %polly.loop_cond542, label %polly.loop_header537, label %polly.exiting436

polly.loop_header793.1:                           ; preds = %polly.loop_exit801, %polly.loop_exit801.1
  %polly.indvar796.1 = phi i64 [ %polly.indvar_next797.1, %polly.loop_exit801.1 ], [ 0, %polly.loop_exit801 ]
  %256 = mul nuw nsw i64 %polly.indvar796.1, 480
  %257 = trunc i64 %polly.indvar796.1 to i32
  %broadcast.splatinsert1174 = insertelement <4 x i32> poison, i32 %257, i32 0
  %broadcast.splat1175 = shufflevector <4 x i32> %broadcast.splatinsert1174, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %polly.loop_header793.1
  %index1168 = phi i64 [ 0, %polly.loop_header793.1 ], [ %index.next1169, %vector.body1166 ]
  %vec.ind1172 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1 ], [ %vec.ind.next1173, %vector.body1166 ]
  %258 = add nuw nsw <4 x i64> %vec.ind1172, <i64 32, i64 32, i64 32, i64 32>
  %259 = trunc <4 x i64> %258 to <4 x i32>
  %260 = mul <4 x i32> %broadcast.splat1175, %259
  %261 = add <4 x i32> %260, <i32 1, i32 1, i32 1, i32 1>
  %262 = urem <4 x i32> %261, <i32 80, i32 80, i32 80, i32 80>
  %263 = sitofp <4 x i32> %262 to <4 x double>
  %264 = fmul fast <4 x double> %263, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %265 = extractelement <4 x i64> %258, i32 0
  %266 = shl i64 %265, 3
  %267 = add i64 %266, %256
  %268 = getelementptr i8, i8* %call1, i64 %267
  %269 = bitcast i8* %268 to <4 x double>*
  store <4 x double> %264, <4 x double>* %269, align 8, !alias.scope !101, !noalias !106
  %index.next1169 = add i64 %index1168, 4
  %vec.ind.next1173 = add <4 x i64> %vec.ind1172, <i64 4, i64 4, i64 4, i64 4>
  %270 = icmp eq i64 %index.next1169, 28
  br i1 %270, label %polly.loop_exit801.1, label %vector.body1166, !llvm.loop !108

polly.loop_exit801.1:                             ; preds = %vector.body1166
  %polly.indvar_next797.1 = add nuw nsw i64 %polly.indvar796.1, 1
  %exitcond865.1.not = icmp eq i64 %polly.indvar_next797.1, 32
  br i1 %exitcond865.1.not, label %polly.loop_header793.1885, label %polly.loop_header793.1

polly.loop_header793.1885:                        ; preds = %polly.loop_exit801.1, %polly.loop_exit801.1896
  %polly.indvar796.1884 = phi i64 [ %polly.indvar_next797.1894, %polly.loop_exit801.1896 ], [ 0, %polly.loop_exit801.1 ]
  %271 = add nuw nsw i64 %polly.indvar796.1884, 32
  %272 = mul nuw nsw i64 %271, 480
  %273 = trunc i64 %271 to i32
  %broadcast.splatinsert1188 = insertelement <4 x i32> poison, i32 %273, i32 0
  %broadcast.splat1189 = shufflevector <4 x i32> %broadcast.splatinsert1188, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1178

vector.body1178:                                  ; preds = %vector.body1178, %polly.loop_header793.1885
  %index1180 = phi i64 [ 0, %polly.loop_header793.1885 ], [ %index.next1181, %vector.body1178 ]
  %vec.ind1186 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.1885 ], [ %vec.ind.next1187, %vector.body1178 ]
  %274 = mul <4 x i32> %vec.ind1186, %broadcast.splat1189
  %275 = add <4 x i32> %274, <i32 1, i32 1, i32 1, i32 1>
  %276 = urem <4 x i32> %275, <i32 80, i32 80, i32 80, i32 80>
  %277 = sitofp <4 x i32> %276 to <4 x double>
  %278 = fmul fast <4 x double> %277, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %279 = shl i64 %index1180, 3
  %280 = add i64 %279, %272
  %281 = getelementptr i8, i8* %call1, i64 %280
  %282 = bitcast i8* %281 to <4 x double>*
  store <4 x double> %278, <4 x double>* %282, align 8, !alias.scope !101, !noalias !106
  %index.next1181 = add i64 %index1180, 4
  %vec.ind.next1187 = add <4 x i32> %vec.ind1186, <i32 4, i32 4, i32 4, i32 4>
  %283 = icmp eq i64 %index.next1181, 32
  br i1 %283, label %polly.loop_exit801.1896, label %vector.body1178, !llvm.loop !109

polly.loop_exit801.1896:                          ; preds = %vector.body1178
  %polly.indvar_next797.1894 = add nuw nsw i64 %polly.indvar796.1884, 1
  %exitcond865.1895.not = icmp eq i64 %polly.indvar_next797.1894, 32
  br i1 %exitcond865.1895.not, label %polly.loop_header793.1.1, label %polly.loop_header793.1885

polly.loop_header793.1.1:                         ; preds = %polly.loop_exit801.1896, %polly.loop_exit801.1.1
  %polly.indvar796.1.1 = phi i64 [ %polly.indvar_next797.1.1, %polly.loop_exit801.1.1 ], [ 0, %polly.loop_exit801.1896 ]
  %284 = add nuw nsw i64 %polly.indvar796.1.1, 32
  %285 = mul nuw nsw i64 %284, 480
  %286 = trunc i64 %284 to i32
  %broadcast.splatinsert1200 = insertelement <4 x i32> poison, i32 %286, i32 0
  %broadcast.splat1201 = shufflevector <4 x i32> %broadcast.splatinsert1200, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.body1192, %polly.loop_header793.1.1
  %index1194 = phi i64 [ 0, %polly.loop_header793.1.1 ], [ %index.next1195, %vector.body1192 ]
  %vec.ind1198 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.1 ], [ %vec.ind.next1199, %vector.body1192 ]
  %287 = add nuw nsw <4 x i64> %vec.ind1198, <i64 32, i64 32, i64 32, i64 32>
  %288 = trunc <4 x i64> %287 to <4 x i32>
  %289 = mul <4 x i32> %broadcast.splat1201, %288
  %290 = add <4 x i32> %289, <i32 1, i32 1, i32 1, i32 1>
  %291 = urem <4 x i32> %290, <i32 80, i32 80, i32 80, i32 80>
  %292 = sitofp <4 x i32> %291 to <4 x double>
  %293 = fmul fast <4 x double> %292, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %294 = extractelement <4 x i64> %287, i32 0
  %295 = shl i64 %294, 3
  %296 = add i64 %295, %285
  %297 = getelementptr i8, i8* %call1, i64 %296
  %298 = bitcast i8* %297 to <4 x double>*
  store <4 x double> %293, <4 x double>* %298, align 8, !alias.scope !101, !noalias !106
  %index.next1195 = add i64 %index1194, 4
  %vec.ind.next1199 = add <4 x i64> %vec.ind1198, <i64 4, i64 4, i64 4, i64 4>
  %299 = icmp eq i64 %index.next1195, 28
  br i1 %299, label %polly.loop_exit801.1.1, label %vector.body1192, !llvm.loop !110

polly.loop_exit801.1.1:                           ; preds = %vector.body1192
  %polly.indvar_next797.1.1 = add nuw nsw i64 %polly.indvar796.1.1, 1
  %exitcond865.1.1.not = icmp eq i64 %polly.indvar_next797.1.1, 32
  br i1 %exitcond865.1.1.not, label %polly.loop_header793.2, label %polly.loop_header793.1.1

polly.loop_header793.2:                           ; preds = %polly.loop_exit801.1.1, %polly.loop_exit801.2
  %polly.indvar796.2 = phi i64 [ %polly.indvar_next797.2, %polly.loop_exit801.2 ], [ 0, %polly.loop_exit801.1.1 ]
  %300 = add nuw nsw i64 %polly.indvar796.2, 64
  %301 = mul nuw nsw i64 %300, 480
  %302 = trunc i64 %300 to i32
  %broadcast.splatinsert1214 = insertelement <4 x i32> poison, i32 %302, i32 0
  %broadcast.splat1215 = shufflevector <4 x i32> %broadcast.splatinsert1214, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1204

vector.body1204:                                  ; preds = %vector.body1204, %polly.loop_header793.2
  %index1206 = phi i64 [ 0, %polly.loop_header793.2 ], [ %index.next1207, %vector.body1204 ]
  %vec.ind1212 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.2 ], [ %vec.ind.next1213, %vector.body1204 ]
  %303 = mul <4 x i32> %vec.ind1212, %broadcast.splat1215
  %304 = add <4 x i32> %303, <i32 1, i32 1, i32 1, i32 1>
  %305 = urem <4 x i32> %304, <i32 80, i32 80, i32 80, i32 80>
  %306 = sitofp <4 x i32> %305 to <4 x double>
  %307 = fmul fast <4 x double> %306, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %308 = shl i64 %index1206, 3
  %309 = add i64 %308, %301
  %310 = getelementptr i8, i8* %call1, i64 %309
  %311 = bitcast i8* %310 to <4 x double>*
  store <4 x double> %307, <4 x double>* %311, align 8, !alias.scope !101, !noalias !106
  %index.next1207 = add i64 %index1206, 4
  %vec.ind.next1213 = add <4 x i32> %vec.ind1212, <i32 4, i32 4, i32 4, i32 4>
  %312 = icmp eq i64 %index.next1207, 32
  br i1 %312, label %polly.loop_exit801.2, label %vector.body1204, !llvm.loop !111

polly.loop_exit801.2:                             ; preds = %vector.body1204
  %polly.indvar_next797.2 = add nuw nsw i64 %polly.indvar796.2, 1
  %exitcond865.2.not = icmp eq i64 %polly.indvar_next797.2, 16
  br i1 %exitcond865.2.not, label %polly.loop_header793.1.2, label %polly.loop_header793.2

polly.loop_header793.1.2:                         ; preds = %polly.loop_exit801.2, %polly.loop_exit801.1.2
  %polly.indvar796.1.2 = phi i64 [ %polly.indvar_next797.1.2, %polly.loop_exit801.1.2 ], [ 0, %polly.loop_exit801.2 ]
  %313 = add nuw nsw i64 %polly.indvar796.1.2, 64
  %314 = mul nuw nsw i64 %313, 480
  %315 = trunc i64 %313 to i32
  %broadcast.splatinsert1226 = insertelement <4 x i32> poison, i32 %315, i32 0
  %broadcast.splat1227 = shufflevector <4 x i32> %broadcast.splatinsert1226, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1218

vector.body1218:                                  ; preds = %vector.body1218, %polly.loop_header793.1.2
  %index1220 = phi i64 [ 0, %polly.loop_header793.1.2 ], [ %index.next1221, %vector.body1218 ]
  %vec.ind1224 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.2 ], [ %vec.ind.next1225, %vector.body1218 ]
  %316 = add nuw nsw <4 x i64> %vec.ind1224, <i64 32, i64 32, i64 32, i64 32>
  %317 = trunc <4 x i64> %316 to <4 x i32>
  %318 = mul <4 x i32> %broadcast.splat1227, %317
  %319 = add <4 x i32> %318, <i32 1, i32 1, i32 1, i32 1>
  %320 = urem <4 x i32> %319, <i32 80, i32 80, i32 80, i32 80>
  %321 = sitofp <4 x i32> %320 to <4 x double>
  %322 = fmul fast <4 x double> %321, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %323 = extractelement <4 x i64> %316, i32 0
  %324 = shl i64 %323, 3
  %325 = add i64 %324, %314
  %326 = getelementptr i8, i8* %call1, i64 %325
  %327 = bitcast i8* %326 to <4 x double>*
  store <4 x double> %322, <4 x double>* %327, align 8, !alias.scope !101, !noalias !106
  %index.next1221 = add i64 %index1220, 4
  %vec.ind.next1225 = add <4 x i64> %vec.ind1224, <i64 4, i64 4, i64 4, i64 4>
  %328 = icmp eq i64 %index.next1221, 28
  br i1 %328, label %polly.loop_exit801.1.2, label %vector.body1218, !llvm.loop !112

polly.loop_exit801.1.2:                           ; preds = %vector.body1218
  %polly.indvar_next797.1.2 = add nuw nsw i64 %polly.indvar796.1.2, 1
  %exitcond865.1.2.not = icmp eq i64 %polly.indvar_next797.1.2, 16
  br i1 %exitcond865.1.2.not, label %init_array.exit, label %polly.loop_header793.1.2

polly.loop_header767.1:                           ; preds = %polly.loop_exit775, %polly.loop_exit775.1
  %polly.indvar770.1 = phi i64 [ %polly.indvar_next771.1, %polly.loop_exit775.1 ], [ 0, %polly.loop_exit775 ]
  %329 = mul nuw nsw i64 %polly.indvar770.1, 480
  %330 = trunc i64 %polly.indvar770.1 to i32
  %broadcast.splatinsert1096 = insertelement <4 x i32> poison, i32 %330, i32 0
  %broadcast.splat1097 = shufflevector <4 x i32> %broadcast.splatinsert1096, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1088

vector.body1088:                                  ; preds = %vector.body1088, %polly.loop_header767.1
  %index1090 = phi i64 [ 0, %polly.loop_header767.1 ], [ %index.next1091, %vector.body1088 ]
  %vec.ind1094 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1 ], [ %vec.ind.next1095, %vector.body1088 ]
  %331 = add nuw nsw <4 x i64> %vec.ind1094, <i64 32, i64 32, i64 32, i64 32>
  %332 = trunc <4 x i64> %331 to <4 x i32>
  %333 = mul <4 x i32> %broadcast.splat1097, %332
  %334 = add <4 x i32> %333, <i32 2, i32 2, i32 2, i32 2>
  %335 = urem <4 x i32> %334, <i32 60, i32 60, i32 60, i32 60>
  %336 = sitofp <4 x i32> %335 to <4 x double>
  %337 = fmul fast <4 x double> %336, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %338 = extractelement <4 x i64> %331, i32 0
  %339 = shl i64 %338, 3
  %340 = add i64 %339, %329
  %341 = getelementptr i8, i8* %call2, i64 %340
  %342 = bitcast i8* %341 to <4 x double>*
  store <4 x double> %337, <4 x double>* %342, align 8, !alias.scope !102, !noalias !104
  %index.next1091 = add i64 %index1090, 4
  %vec.ind.next1095 = add <4 x i64> %vec.ind1094, <i64 4, i64 4, i64 4, i64 4>
  %343 = icmp eq i64 %index.next1091, 28
  br i1 %343, label %polly.loop_exit775.1, label %vector.body1088, !llvm.loop !113

polly.loop_exit775.1:                             ; preds = %vector.body1088
  %polly.indvar_next771.1 = add nuw nsw i64 %polly.indvar770.1, 1
  %exitcond871.1.not = icmp eq i64 %polly.indvar_next771.1, 32
  br i1 %exitcond871.1.not, label %polly.loop_header767.1899, label %polly.loop_header767.1

polly.loop_header767.1899:                        ; preds = %polly.loop_exit775.1, %polly.loop_exit775.1910
  %polly.indvar770.1898 = phi i64 [ %polly.indvar_next771.1908, %polly.loop_exit775.1910 ], [ 0, %polly.loop_exit775.1 ]
  %344 = add nuw nsw i64 %polly.indvar770.1898, 32
  %345 = mul nuw nsw i64 %344, 480
  %346 = trunc i64 %344 to i32
  %broadcast.splatinsert1110 = insertelement <4 x i32> poison, i32 %346, i32 0
  %broadcast.splat1111 = shufflevector <4 x i32> %broadcast.splatinsert1110, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %polly.loop_header767.1899
  %index1102 = phi i64 [ 0, %polly.loop_header767.1899 ], [ %index.next1103, %vector.body1100 ]
  %vec.ind1108 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767.1899 ], [ %vec.ind.next1109, %vector.body1100 ]
  %347 = mul <4 x i32> %vec.ind1108, %broadcast.splat1111
  %348 = add <4 x i32> %347, <i32 2, i32 2, i32 2, i32 2>
  %349 = urem <4 x i32> %348, <i32 60, i32 60, i32 60, i32 60>
  %350 = sitofp <4 x i32> %349 to <4 x double>
  %351 = fmul fast <4 x double> %350, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %352 = shl i64 %index1102, 3
  %353 = add i64 %352, %345
  %354 = getelementptr i8, i8* %call2, i64 %353
  %355 = bitcast i8* %354 to <4 x double>*
  store <4 x double> %351, <4 x double>* %355, align 8, !alias.scope !102, !noalias !104
  %index.next1103 = add i64 %index1102, 4
  %vec.ind.next1109 = add <4 x i32> %vec.ind1108, <i32 4, i32 4, i32 4, i32 4>
  %356 = icmp eq i64 %index.next1103, 32
  br i1 %356, label %polly.loop_exit775.1910, label %vector.body1100, !llvm.loop !114

polly.loop_exit775.1910:                          ; preds = %vector.body1100
  %polly.indvar_next771.1908 = add nuw nsw i64 %polly.indvar770.1898, 1
  %exitcond871.1909.not = icmp eq i64 %polly.indvar_next771.1908, 32
  br i1 %exitcond871.1909.not, label %polly.loop_header767.1.1, label %polly.loop_header767.1899

polly.loop_header767.1.1:                         ; preds = %polly.loop_exit775.1910, %polly.loop_exit775.1.1
  %polly.indvar770.1.1 = phi i64 [ %polly.indvar_next771.1.1, %polly.loop_exit775.1.1 ], [ 0, %polly.loop_exit775.1910 ]
  %357 = add nuw nsw i64 %polly.indvar770.1.1, 32
  %358 = mul nuw nsw i64 %357, 480
  %359 = trunc i64 %357 to i32
  %broadcast.splatinsert1122 = insertelement <4 x i32> poison, i32 %359, i32 0
  %broadcast.splat1123 = shufflevector <4 x i32> %broadcast.splatinsert1122, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %polly.loop_header767.1.1
  %index1116 = phi i64 [ 0, %polly.loop_header767.1.1 ], [ %index.next1117, %vector.body1114 ]
  %vec.ind1120 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1.1 ], [ %vec.ind.next1121, %vector.body1114 ]
  %360 = add nuw nsw <4 x i64> %vec.ind1120, <i64 32, i64 32, i64 32, i64 32>
  %361 = trunc <4 x i64> %360 to <4 x i32>
  %362 = mul <4 x i32> %broadcast.splat1123, %361
  %363 = add <4 x i32> %362, <i32 2, i32 2, i32 2, i32 2>
  %364 = urem <4 x i32> %363, <i32 60, i32 60, i32 60, i32 60>
  %365 = sitofp <4 x i32> %364 to <4 x double>
  %366 = fmul fast <4 x double> %365, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %367 = extractelement <4 x i64> %360, i32 0
  %368 = shl i64 %367, 3
  %369 = add i64 %368, %358
  %370 = getelementptr i8, i8* %call2, i64 %369
  %371 = bitcast i8* %370 to <4 x double>*
  store <4 x double> %366, <4 x double>* %371, align 8, !alias.scope !102, !noalias !104
  %index.next1117 = add i64 %index1116, 4
  %vec.ind.next1121 = add <4 x i64> %vec.ind1120, <i64 4, i64 4, i64 4, i64 4>
  %372 = icmp eq i64 %index.next1117, 28
  br i1 %372, label %polly.loop_exit775.1.1, label %vector.body1114, !llvm.loop !115

polly.loop_exit775.1.1:                           ; preds = %vector.body1114
  %polly.indvar_next771.1.1 = add nuw nsw i64 %polly.indvar770.1.1, 1
  %exitcond871.1.1.not = icmp eq i64 %polly.indvar_next771.1.1, 32
  br i1 %exitcond871.1.1.not, label %polly.loop_header767.2, label %polly.loop_header767.1.1

polly.loop_header767.2:                           ; preds = %polly.loop_exit775.1.1, %polly.loop_exit775.2
  %polly.indvar770.2 = phi i64 [ %polly.indvar_next771.2, %polly.loop_exit775.2 ], [ 0, %polly.loop_exit775.1.1 ]
  %373 = add nuw nsw i64 %polly.indvar770.2, 64
  %374 = mul nuw nsw i64 %373, 480
  %375 = trunc i64 %373 to i32
  %broadcast.splatinsert1136 = insertelement <4 x i32> poison, i32 %375, i32 0
  %broadcast.splat1137 = shufflevector <4 x i32> %broadcast.splatinsert1136, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %polly.loop_header767.2
  %index1128 = phi i64 [ 0, %polly.loop_header767.2 ], [ %index.next1129, %vector.body1126 ]
  %vec.ind1134 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header767.2 ], [ %vec.ind.next1135, %vector.body1126 ]
  %376 = mul <4 x i32> %vec.ind1134, %broadcast.splat1137
  %377 = add <4 x i32> %376, <i32 2, i32 2, i32 2, i32 2>
  %378 = urem <4 x i32> %377, <i32 60, i32 60, i32 60, i32 60>
  %379 = sitofp <4 x i32> %378 to <4 x double>
  %380 = fmul fast <4 x double> %379, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %381 = shl i64 %index1128, 3
  %382 = add i64 %381, %374
  %383 = getelementptr i8, i8* %call2, i64 %382
  %384 = bitcast i8* %383 to <4 x double>*
  store <4 x double> %380, <4 x double>* %384, align 8, !alias.scope !102, !noalias !104
  %index.next1129 = add i64 %index1128, 4
  %vec.ind.next1135 = add <4 x i32> %vec.ind1134, <i32 4, i32 4, i32 4, i32 4>
  %385 = icmp eq i64 %index.next1129, 32
  br i1 %385, label %polly.loop_exit775.2, label %vector.body1126, !llvm.loop !116

polly.loop_exit775.2:                             ; preds = %vector.body1126
  %polly.indvar_next771.2 = add nuw nsw i64 %polly.indvar770.2, 1
  %exitcond871.2.not = icmp eq i64 %polly.indvar_next771.2, 16
  br i1 %exitcond871.2.not, label %polly.loop_header767.1.2, label %polly.loop_header767.2

polly.loop_header767.1.2:                         ; preds = %polly.loop_exit775.2, %polly.loop_exit775.1.2
  %polly.indvar770.1.2 = phi i64 [ %polly.indvar_next771.1.2, %polly.loop_exit775.1.2 ], [ 0, %polly.loop_exit775.2 ]
  %386 = add nuw nsw i64 %polly.indvar770.1.2, 64
  %387 = mul nuw nsw i64 %386, 480
  %388 = trunc i64 %386 to i32
  %broadcast.splatinsert1148 = insertelement <4 x i32> poison, i32 %388, i32 0
  %broadcast.splat1149 = shufflevector <4 x i32> %broadcast.splatinsert1148, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1140

vector.body1140:                                  ; preds = %vector.body1140, %polly.loop_header767.1.2
  %index1142 = phi i64 [ 0, %polly.loop_header767.1.2 ], [ %index.next1143, %vector.body1140 ]
  %vec.ind1146 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header767.1.2 ], [ %vec.ind.next1147, %vector.body1140 ]
  %389 = add nuw nsw <4 x i64> %vec.ind1146, <i64 32, i64 32, i64 32, i64 32>
  %390 = trunc <4 x i64> %389 to <4 x i32>
  %391 = mul <4 x i32> %broadcast.splat1149, %390
  %392 = add <4 x i32> %391, <i32 2, i32 2, i32 2, i32 2>
  %393 = urem <4 x i32> %392, <i32 60, i32 60, i32 60, i32 60>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %396 = extractelement <4 x i64> %389, i32 0
  %397 = shl i64 %396, 3
  %398 = add i64 %397, %387
  %399 = getelementptr i8, i8* %call2, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %395, <4 x double>* %400, align 8, !alias.scope !102, !noalias !104
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1147 = add <4 x i64> %vec.ind1146, <i64 4, i64 4, i64 4, i64 4>
  %401 = icmp eq i64 %index.next1143, 28
  br i1 %401, label %polly.loop_exit775.1.2, label %vector.body1140, !llvm.loop !117

polly.loop_exit775.1.2:                           ; preds = %vector.body1140
  %polly.indvar_next771.1.2 = add nuw nsw i64 %polly.indvar770.1.2, 1
  %exitcond871.1.2.not = icmp eq i64 %polly.indvar_next771.1.2, 16
  br i1 %exitcond871.1.2.not, label %polly.loop_header793, label %polly.loop_header767.1.2

polly.loop_header740.1:                           ; preds = %polly.loop_exit748, %polly.loop_exit748.1
  %polly.indvar743.1 = phi i64 [ %polly.indvar_next744.1, %polly.loop_exit748.1 ], [ 0, %polly.loop_exit748 ]
  %402 = mul nuw nsw i64 %polly.indvar743.1, 640
  %403 = trunc i64 %polly.indvar743.1 to i32
  %broadcast.splatinsert982 = insertelement <4 x i32> poison, i32 %403, i32 0
  %broadcast.splat983 = shufflevector <4 x i32> %broadcast.splatinsert982, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body974

vector.body974:                                   ; preds = %vector.body974, %polly.loop_header740.1
  %index976 = phi i64 [ 0, %polly.loop_header740.1 ], [ %index.next977, %vector.body974 ]
  %vec.ind980 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1 ], [ %vec.ind.next981, %vector.body974 ]
  %404 = add nuw nsw <4 x i64> %vec.ind980, <i64 32, i64 32, i64 32, i64 32>
  %405 = trunc <4 x i64> %404 to <4 x i32>
  %406 = mul <4 x i32> %broadcast.splat983, %405
  %407 = add <4 x i32> %406, <i32 3, i32 3, i32 3, i32 3>
  %408 = urem <4 x i32> %407, <i32 80, i32 80, i32 80, i32 80>
  %409 = sitofp <4 x i32> %408 to <4 x double>
  %410 = fmul fast <4 x double> %409, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %411 = extractelement <4 x i64> %404, i32 0
  %412 = shl i64 %411, 3
  %413 = add nuw nsw i64 %412, %402
  %414 = getelementptr i8, i8* %call, i64 %413
  %415 = bitcast i8* %414 to <4 x double>*
  store <4 x double> %410, <4 x double>* %415, align 8, !alias.scope !98, !noalias !100
  %index.next977 = add i64 %index976, 4
  %vec.ind.next981 = add <4 x i64> %vec.ind980, <i64 4, i64 4, i64 4, i64 4>
  %416 = icmp eq i64 %index.next977, 32
  br i1 %416, label %polly.loop_exit748.1, label %vector.body974, !llvm.loop !118

polly.loop_exit748.1:                             ; preds = %vector.body974
  %polly.indvar_next744.1 = add nuw nsw i64 %polly.indvar743.1, 1
  %exitcond880.1.not = icmp eq i64 %polly.indvar_next744.1, 32
  br i1 %exitcond880.1.not, label %polly.loop_header740.2, label %polly.loop_header740.1

polly.loop_header740.2:                           ; preds = %polly.loop_exit748.1, %polly.loop_exit748.2
  %polly.indvar743.2 = phi i64 [ %polly.indvar_next744.2, %polly.loop_exit748.2 ], [ 0, %polly.loop_exit748.1 ]
  %417 = mul nuw nsw i64 %polly.indvar743.2, 640
  %418 = trunc i64 %polly.indvar743.2 to i32
  %broadcast.splatinsert994 = insertelement <4 x i32> poison, i32 %418, i32 0
  %broadcast.splat995 = shufflevector <4 x i32> %broadcast.splatinsert994, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %polly.loop_header740.2
  %index988 = phi i64 [ 0, %polly.loop_header740.2 ], [ %index.next989, %vector.body986 ]
  %vec.ind992 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2 ], [ %vec.ind.next993, %vector.body986 ]
  %419 = add nuw nsw <4 x i64> %vec.ind992, <i64 64, i64 64, i64 64, i64 64>
  %420 = trunc <4 x i64> %419 to <4 x i32>
  %421 = mul <4 x i32> %broadcast.splat995, %420
  %422 = add <4 x i32> %421, <i32 3, i32 3, i32 3, i32 3>
  %423 = urem <4 x i32> %422, <i32 80, i32 80, i32 80, i32 80>
  %424 = sitofp <4 x i32> %423 to <4 x double>
  %425 = fmul fast <4 x double> %424, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %426 = extractelement <4 x i64> %419, i32 0
  %427 = shl i64 %426, 3
  %428 = add nuw nsw i64 %427, %417
  %429 = getelementptr i8, i8* %call, i64 %428
  %430 = bitcast i8* %429 to <4 x double>*
  store <4 x double> %425, <4 x double>* %430, align 8, !alias.scope !98, !noalias !100
  %index.next989 = add i64 %index988, 4
  %vec.ind.next993 = add <4 x i64> %vec.ind992, <i64 4, i64 4, i64 4, i64 4>
  %431 = icmp eq i64 %index.next989, 16
  br i1 %431, label %polly.loop_exit748.2, label %vector.body986, !llvm.loop !119

polly.loop_exit748.2:                             ; preds = %vector.body986
  %polly.indvar_next744.2 = add nuw nsw i64 %polly.indvar743.2, 1
  %exitcond880.2.not = icmp eq i64 %polly.indvar_next744.2, 32
  br i1 %exitcond880.2.not, label %polly.loop_header740.1913, label %polly.loop_header740.2

polly.loop_header740.1913:                        ; preds = %polly.loop_exit748.2, %polly.loop_exit748.1924
  %polly.indvar743.1912 = phi i64 [ %polly.indvar_next744.1922, %polly.loop_exit748.1924 ], [ 0, %polly.loop_exit748.2 ]
  %432 = add nuw nsw i64 %polly.indvar743.1912, 32
  %433 = mul nuw nsw i64 %432, 640
  %434 = trunc i64 %432 to i32
  %broadcast.splatinsert1008 = insertelement <4 x i32> poison, i32 %434, i32 0
  %broadcast.splat1009 = shufflevector <4 x i32> %broadcast.splatinsert1008, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %polly.loop_header740.1913
  %index1000 = phi i64 [ 0, %polly.loop_header740.1913 ], [ %index.next1001, %vector.body998 ]
  %vec.ind1006 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740.1913 ], [ %vec.ind.next1007, %vector.body998 ]
  %435 = mul <4 x i32> %vec.ind1006, %broadcast.splat1009
  %436 = add <4 x i32> %435, <i32 3, i32 3, i32 3, i32 3>
  %437 = urem <4 x i32> %436, <i32 80, i32 80, i32 80, i32 80>
  %438 = sitofp <4 x i32> %437 to <4 x double>
  %439 = fmul fast <4 x double> %438, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %440 = shl i64 %index1000, 3
  %441 = add nuw nsw i64 %440, %433
  %442 = getelementptr i8, i8* %call, i64 %441
  %443 = bitcast i8* %442 to <4 x double>*
  store <4 x double> %439, <4 x double>* %443, align 8, !alias.scope !98, !noalias !100
  %index.next1001 = add i64 %index1000, 4
  %vec.ind.next1007 = add <4 x i32> %vec.ind1006, <i32 4, i32 4, i32 4, i32 4>
  %444 = icmp eq i64 %index.next1001, 32
  br i1 %444, label %polly.loop_exit748.1924, label %vector.body998, !llvm.loop !120

polly.loop_exit748.1924:                          ; preds = %vector.body998
  %polly.indvar_next744.1922 = add nuw nsw i64 %polly.indvar743.1912, 1
  %exitcond880.1923.not = icmp eq i64 %polly.indvar_next744.1922, 32
  br i1 %exitcond880.1923.not, label %polly.loop_header740.1.1, label %polly.loop_header740.1913

polly.loop_header740.1.1:                         ; preds = %polly.loop_exit748.1924, %polly.loop_exit748.1.1
  %polly.indvar743.1.1 = phi i64 [ %polly.indvar_next744.1.1, %polly.loop_exit748.1.1 ], [ 0, %polly.loop_exit748.1924 ]
  %445 = add nuw nsw i64 %polly.indvar743.1.1, 32
  %446 = mul nuw nsw i64 %445, 640
  %447 = trunc i64 %445 to i32
  %broadcast.splatinsert1020 = insertelement <4 x i32> poison, i32 %447, i32 0
  %broadcast.splat1021 = shufflevector <4 x i32> %broadcast.splatinsert1020, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %polly.loop_header740.1.1
  %index1014 = phi i64 [ 0, %polly.loop_header740.1.1 ], [ %index.next1015, %vector.body1012 ]
  %vec.ind1018 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1.1 ], [ %vec.ind.next1019, %vector.body1012 ]
  %448 = add nuw nsw <4 x i64> %vec.ind1018, <i64 32, i64 32, i64 32, i64 32>
  %449 = trunc <4 x i64> %448 to <4 x i32>
  %450 = mul <4 x i32> %broadcast.splat1021, %449
  %451 = add <4 x i32> %450, <i32 3, i32 3, i32 3, i32 3>
  %452 = urem <4 x i32> %451, <i32 80, i32 80, i32 80, i32 80>
  %453 = sitofp <4 x i32> %452 to <4 x double>
  %454 = fmul fast <4 x double> %453, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %455 = extractelement <4 x i64> %448, i32 0
  %456 = shl i64 %455, 3
  %457 = add nuw nsw i64 %456, %446
  %458 = getelementptr i8, i8* %call, i64 %457
  %459 = bitcast i8* %458 to <4 x double>*
  store <4 x double> %454, <4 x double>* %459, align 8, !alias.scope !98, !noalias !100
  %index.next1015 = add i64 %index1014, 4
  %vec.ind.next1019 = add <4 x i64> %vec.ind1018, <i64 4, i64 4, i64 4, i64 4>
  %460 = icmp eq i64 %index.next1015, 32
  br i1 %460, label %polly.loop_exit748.1.1, label %vector.body1012, !llvm.loop !121

polly.loop_exit748.1.1:                           ; preds = %vector.body1012
  %polly.indvar_next744.1.1 = add nuw nsw i64 %polly.indvar743.1.1, 1
  %exitcond880.1.1.not = icmp eq i64 %polly.indvar_next744.1.1, 32
  br i1 %exitcond880.1.1.not, label %polly.loop_header740.2.1, label %polly.loop_header740.1.1

polly.loop_header740.2.1:                         ; preds = %polly.loop_exit748.1.1, %polly.loop_exit748.2.1
  %polly.indvar743.2.1 = phi i64 [ %polly.indvar_next744.2.1, %polly.loop_exit748.2.1 ], [ 0, %polly.loop_exit748.1.1 ]
  %461 = add nuw nsw i64 %polly.indvar743.2.1, 32
  %462 = mul nuw nsw i64 %461, 640
  %463 = trunc i64 %461 to i32
  %broadcast.splatinsert1032 = insertelement <4 x i32> poison, i32 %463, i32 0
  %broadcast.splat1033 = shufflevector <4 x i32> %broadcast.splatinsert1032, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1024

vector.body1024:                                  ; preds = %vector.body1024, %polly.loop_header740.2.1
  %index1026 = phi i64 [ 0, %polly.loop_header740.2.1 ], [ %index.next1027, %vector.body1024 ]
  %vec.ind1030 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2.1 ], [ %vec.ind.next1031, %vector.body1024 ]
  %464 = add nuw nsw <4 x i64> %vec.ind1030, <i64 64, i64 64, i64 64, i64 64>
  %465 = trunc <4 x i64> %464 to <4 x i32>
  %466 = mul <4 x i32> %broadcast.splat1033, %465
  %467 = add <4 x i32> %466, <i32 3, i32 3, i32 3, i32 3>
  %468 = urem <4 x i32> %467, <i32 80, i32 80, i32 80, i32 80>
  %469 = sitofp <4 x i32> %468 to <4 x double>
  %470 = fmul fast <4 x double> %469, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %471 = extractelement <4 x i64> %464, i32 0
  %472 = shl i64 %471, 3
  %473 = add nuw nsw i64 %472, %462
  %474 = getelementptr i8, i8* %call, i64 %473
  %475 = bitcast i8* %474 to <4 x double>*
  store <4 x double> %470, <4 x double>* %475, align 8, !alias.scope !98, !noalias !100
  %index.next1027 = add i64 %index1026, 4
  %vec.ind.next1031 = add <4 x i64> %vec.ind1030, <i64 4, i64 4, i64 4, i64 4>
  %476 = icmp eq i64 %index.next1027, 16
  br i1 %476, label %polly.loop_exit748.2.1, label %vector.body1024, !llvm.loop !122

polly.loop_exit748.2.1:                           ; preds = %vector.body1024
  %polly.indvar_next744.2.1 = add nuw nsw i64 %polly.indvar743.2.1, 1
  %exitcond880.2.1.not = icmp eq i64 %polly.indvar_next744.2.1, 32
  br i1 %exitcond880.2.1.not, label %polly.loop_header740.2927, label %polly.loop_header740.2.1

polly.loop_header740.2927:                        ; preds = %polly.loop_exit748.2.1, %polly.loop_exit748.2938
  %polly.indvar743.2926 = phi i64 [ %polly.indvar_next744.2936, %polly.loop_exit748.2938 ], [ 0, %polly.loop_exit748.2.1 ]
  %477 = add nuw nsw i64 %polly.indvar743.2926, 64
  %478 = mul nuw nsw i64 %477, 640
  %479 = trunc i64 %477 to i32
  %broadcast.splatinsert1046 = insertelement <4 x i32> poison, i32 %479, i32 0
  %broadcast.splat1047 = shufflevector <4 x i32> %broadcast.splatinsert1046, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %polly.loop_header740.2927
  %index1038 = phi i64 [ 0, %polly.loop_header740.2927 ], [ %index.next1039, %vector.body1036 ]
  %vec.ind1044 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header740.2927 ], [ %vec.ind.next1045, %vector.body1036 ]
  %480 = mul <4 x i32> %vec.ind1044, %broadcast.splat1047
  %481 = add <4 x i32> %480, <i32 3, i32 3, i32 3, i32 3>
  %482 = urem <4 x i32> %481, <i32 80, i32 80, i32 80, i32 80>
  %483 = sitofp <4 x i32> %482 to <4 x double>
  %484 = fmul fast <4 x double> %483, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %485 = shl i64 %index1038, 3
  %486 = add nuw nsw i64 %485, %478
  %487 = getelementptr i8, i8* %call, i64 %486
  %488 = bitcast i8* %487 to <4 x double>*
  store <4 x double> %484, <4 x double>* %488, align 8, !alias.scope !98, !noalias !100
  %index.next1039 = add i64 %index1038, 4
  %vec.ind.next1045 = add <4 x i32> %vec.ind1044, <i32 4, i32 4, i32 4, i32 4>
  %489 = icmp eq i64 %index.next1039, 32
  br i1 %489, label %polly.loop_exit748.2938, label %vector.body1036, !llvm.loop !123

polly.loop_exit748.2938:                          ; preds = %vector.body1036
  %polly.indvar_next744.2936 = add nuw nsw i64 %polly.indvar743.2926, 1
  %exitcond880.2937.not = icmp eq i64 %polly.indvar_next744.2936, 16
  br i1 %exitcond880.2937.not, label %polly.loop_header740.1.2, label %polly.loop_header740.2927

polly.loop_header740.1.2:                         ; preds = %polly.loop_exit748.2938, %polly.loop_exit748.1.2
  %polly.indvar743.1.2 = phi i64 [ %polly.indvar_next744.1.2, %polly.loop_exit748.1.2 ], [ 0, %polly.loop_exit748.2938 ]
  %490 = add nuw nsw i64 %polly.indvar743.1.2, 64
  %491 = mul nuw nsw i64 %490, 640
  %492 = trunc i64 %490 to i32
  %broadcast.splatinsert1058 = insertelement <4 x i32> poison, i32 %492, i32 0
  %broadcast.splat1059 = shufflevector <4 x i32> %broadcast.splatinsert1058, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %polly.loop_header740.1.2
  %index1052 = phi i64 [ 0, %polly.loop_header740.1.2 ], [ %index.next1053, %vector.body1050 ]
  %vec.ind1056 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.1.2 ], [ %vec.ind.next1057, %vector.body1050 ]
  %493 = add nuw nsw <4 x i64> %vec.ind1056, <i64 32, i64 32, i64 32, i64 32>
  %494 = trunc <4 x i64> %493 to <4 x i32>
  %495 = mul <4 x i32> %broadcast.splat1059, %494
  %496 = add <4 x i32> %495, <i32 3, i32 3, i32 3, i32 3>
  %497 = urem <4 x i32> %496, <i32 80, i32 80, i32 80, i32 80>
  %498 = sitofp <4 x i32> %497 to <4 x double>
  %499 = fmul fast <4 x double> %498, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %500 = extractelement <4 x i64> %493, i32 0
  %501 = shl i64 %500, 3
  %502 = add nuw nsw i64 %501, %491
  %503 = getelementptr i8, i8* %call, i64 %502
  %504 = bitcast i8* %503 to <4 x double>*
  store <4 x double> %499, <4 x double>* %504, align 8, !alias.scope !98, !noalias !100
  %index.next1053 = add i64 %index1052, 4
  %vec.ind.next1057 = add <4 x i64> %vec.ind1056, <i64 4, i64 4, i64 4, i64 4>
  %505 = icmp eq i64 %index.next1053, 32
  br i1 %505, label %polly.loop_exit748.1.2, label %vector.body1050, !llvm.loop !124

polly.loop_exit748.1.2:                           ; preds = %vector.body1050
  %polly.indvar_next744.1.2 = add nuw nsw i64 %polly.indvar743.1.2, 1
  %exitcond880.1.2.not = icmp eq i64 %polly.indvar_next744.1.2, 16
  br i1 %exitcond880.1.2.not, label %polly.loop_header740.2.2, label %polly.loop_header740.1.2

polly.loop_header740.2.2:                         ; preds = %polly.loop_exit748.1.2, %polly.loop_exit748.2.2
  %polly.indvar743.2.2 = phi i64 [ %polly.indvar_next744.2.2, %polly.loop_exit748.2.2 ], [ 0, %polly.loop_exit748.1.2 ]
  %506 = add nuw nsw i64 %polly.indvar743.2.2, 64
  %507 = mul nuw nsw i64 %506, 640
  %508 = trunc i64 %506 to i32
  %broadcast.splatinsert1070 = insertelement <4 x i32> poison, i32 %508, i32 0
  %broadcast.splat1071 = shufflevector <4 x i32> %broadcast.splatinsert1070, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %polly.loop_header740.2.2
  %index1064 = phi i64 [ 0, %polly.loop_header740.2.2 ], [ %index.next1065, %vector.body1062 ]
  %vec.ind1068 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header740.2.2 ], [ %vec.ind.next1069, %vector.body1062 ]
  %509 = add nuw nsw <4 x i64> %vec.ind1068, <i64 64, i64 64, i64 64, i64 64>
  %510 = trunc <4 x i64> %509 to <4 x i32>
  %511 = mul <4 x i32> %broadcast.splat1071, %510
  %512 = add <4 x i32> %511, <i32 3, i32 3, i32 3, i32 3>
  %513 = urem <4 x i32> %512, <i32 80, i32 80, i32 80, i32 80>
  %514 = sitofp <4 x i32> %513 to <4 x double>
  %515 = fmul fast <4 x double> %514, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %516 = extractelement <4 x i64> %509, i32 0
  %517 = shl i64 %516, 3
  %518 = add nuw nsw i64 %517, %507
  %519 = getelementptr i8, i8* %call, i64 %518
  %520 = bitcast i8* %519 to <4 x double>*
  store <4 x double> %515, <4 x double>* %520, align 8, !alias.scope !98, !noalias !100
  %index.next1065 = add i64 %index1064, 4
  %vec.ind.next1069 = add <4 x i64> %vec.ind1068, <i64 4, i64 4, i64 4, i64 4>
  %521 = icmp eq i64 %index.next1065, 16
  br i1 %521, label %polly.loop_exit748.2.2, label %vector.body1062, !llvm.loop !125

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
!21 = distinct !{!"A"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 32}
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
!49 = !{!"llvm.loop.tile.size", i32 80}
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
!104 = !{!101, !98}
!105 = distinct !{!105, !13}
!106 = !{!102, !98}
!107 = distinct !{!107, !13}
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
