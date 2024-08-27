; ModuleID = 'syr2k_recreations//mmp_syr2k_S_154.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_154.c"
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
  %call766 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1627 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2628 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1627, %call2
  %polly.access.call2647 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2647, %call1
  %2 = or i1 %0, %1
  %polly.access.call667 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call667, %call2
  %4 = icmp ule i8* %polly.access.call2647, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call667, %call1
  %8 = icmp ule i8* %polly.access.call1627, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header752, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep981 = getelementptr i8, i8* %call2, i64 %12
  %scevgep980 = getelementptr i8, i8* %call2, i64 %11
  %scevgep979 = getelementptr i8, i8* %call1, i64 %12
  %scevgep978 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep978, %scevgep981
  %bound1 = icmp ult i8* %scevgep980, %scevgep979
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
  br i1 %exitcond18.not.i, label %vector.ph985, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph985:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert992 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat993 = shufflevector <4 x i64> %broadcast.splatinsert992, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body984

vector.body984:                                   ; preds = %vector.body984, %vector.ph985
  %index986 = phi i64 [ 0, %vector.ph985 ], [ %index.next987, %vector.body984 ]
  %vec.ind990 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph985 ], [ %vec.ind.next991, %vector.body984 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind990, %broadcast.splat993
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv7.i, i64 %index986
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next987 = add i64 %index986, 4
  %vec.ind.next991 = add <4 x i64> %vec.ind990, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next987, 80
  br i1 %40, label %for.inc41.i, label %vector.body984, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body984
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph985, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit813.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start443, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1338, label %vector.ph1267

vector.ph1267:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %vector.ph1267
  %index1268 = phi i64 [ 0, %vector.ph1267 ], [ %index.next1269, %vector.body1266 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i, i64 %index1268
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1269 = add i64 %index1268, 4
  %46 = icmp eq i64 %index.next1269, %n.vec
  br i1 %46, label %middle.block1264, label %vector.body1266, !llvm.loop !18

middle.block1264:                                 ; preds = %vector.body1266
  %cmp.n1271 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1271, label %for.inc6.i, label %for.body3.i46.preheader1338

for.body3.i46.preheader1338:                      ; preds = %for.body3.i46.preheader, %middle.block1264
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1264 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1338, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1338 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1264, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting444
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start270, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1287 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1287, label %for.body3.i60.preheader1337, label %vector.ph1288

vector.ph1288:                                    ; preds = %for.body3.i60.preheader
  %n.vec1290 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1286

vector.body1286:                                  ; preds = %vector.body1286, %vector.ph1288
  %index1291 = phi i64 [ 0, %vector.ph1288 ], [ %index.next1292, %vector.body1286 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i52, i64 %index1291
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1295 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1295, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1292 = add i64 %index1291, 4
  %57 = icmp eq i64 %index.next1292, %n.vec1290
  br i1 %57, label %middle.block1284, label %vector.body1286, !llvm.loop !60

middle.block1284:                                 ; preds = %vector.body1286
  %cmp.n1294 = icmp eq i64 %indvars.iv21.i52, %n.vec1290
  br i1 %cmp.n1294, label %for.inc6.i63, label %for.body3.i60.preheader1337

for.body3.i60.preheader1337:                      ; preds = %for.body3.i60.preheader, %middle.block1284
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1290, %middle.block1284 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1337, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1337 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1284, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1313 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1313, label %for.body3.i99.preheader1336, label %vector.ph1314

vector.ph1314:                                    ; preds = %for.body3.i99.preheader
  %n.vec1316 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %vector.ph1314
  %index1317 = phi i64 [ 0, %vector.ph1314 ], [ %index.next1318, %vector.body1312 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i91, i64 %index1317
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1321, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1318 = add i64 %index1317, 4
  %68 = icmp eq i64 %index.next1318, %n.vec1316
  br i1 %68, label %middle.block1310, label %vector.body1312, !llvm.loop !62

middle.block1310:                                 ; preds = %vector.body1312
  %cmp.n1320 = icmp eq i64 %indvars.iv21.i91, %n.vec1316
  br i1 %cmp.n1320, label %for.inc6.i102, label %for.body3.i99.preheader1336

for.body3.i99.preheader1336:                      ; preds = %for.body3.i99.preheader, %middle.block1310
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1316, %middle.block1310 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1336, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1336 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1310, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1325 = phi i64 [ %indvar.next1326, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1325, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1327 = icmp ult i64 %88, 4
  br i1 %min.iters.check1327, label %polly.loop_header191.preheader, label %vector.ph1328

vector.ph1328:                                    ; preds = %polly.loop_header
  %n.vec1330 = and i64 %88, -4
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %vector.ph1328
  %index1331 = phi i64 [ 0, %vector.ph1328 ], [ %index.next1332, %vector.body1324 ]
  %90 = shl nuw nsw i64 %index1331, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1335 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1335, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1332 = add i64 %index1331, 4
  %95 = icmp eq i64 %index.next1332, %n.vec1330
  br i1 %95, label %middle.block1322, label %vector.body1324, !llvm.loop !74

middle.block1322:                                 ; preds = %vector.body1324
  %cmp.n1334 = icmp eq i64 %88, %n.vec1330
  br i1 %cmp.n1334, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1322
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1330, %middle.block1322 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1322
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond854.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1326 = add i64 %indvar1325, 1
  br i1 %exitcond854.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond853.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond853.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv838 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next839, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin848 = call i64 @llvm.smin.i64(i64 %indvars.iv838, i64 -52)
  %97 = add nsw i64 %smin848, 60
  %98 = shl nsw i64 %polly.indvar202, 3
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next839 = add nsw i64 %indvars.iv838, -8
  %exitcond852.not = icmp eq i64 %polly.indvar_next203, 8
  br i1 %exitcond852.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 80, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %99 = mul nuw nsw i64 %polly.indvar208, 20
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %100 = mul nsw i64 %polly.indvar208, -20
  %101 = mul nuw nsw i64 %polly.indvar208, 5
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -20
  %exitcond851.not = icmp eq i64 %polly.indvar_next209, 4
  br i1 %exitcond851.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %102 = add nuw nsw i64 %polly.indvar214, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar214, 80
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next215, %97
  br i1 %exitcond840.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %103 = add nuw nsw i64 %polly.indvar220, %99
  %polly.access.mul.call2224 = mul nuw nsw i64 %103, 60
  %polly.access.add.call2225 = add nuw nsw i64 %102, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_exit213
  %indvars.iv841 = phi i64 [ %indvars.iv.next842, %polly.loop_exit235 ], [ 0, %polly.loop_exit213 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ %101, %polly.loop_exit213 ]
  %104 = shl nsw i64 %polly.indvar230, 2
  %smin845 = call i64 @llvm.smin.i64(i64 %indvars.iv841, i64 19)
  %105 = add nsw i64 %104, %100
  %106 = mul nsw i64 %polly.indvar230, 1920
  %107 = mul nsw i64 %polly.indvar230, 2560
  %indvars.iv.next844 = or i64 %indvars.iv841, 1
  %smin845.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next844, i64 19)
  %108 = or i64 %104, 1
  %109 = add nsw i64 %108, %100
  %110 = mul nuw nsw i64 %108, 480
  %111 = mul nuw nsw i64 %108, 640
  %indvars.iv.next844.1 = add nuw nsw i64 %indvars.iv.next844, 1
  %smin845.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next844.1, i64 19)
  %112 = or i64 %104, 2
  %113 = add nsw i64 %112, %100
  %114 = mul nuw nsw i64 %112, 480
  %115 = mul nuw nsw i64 %112, 640
  %indvars.iv.next844.2 = or i64 %indvars.iv841, 3
  %smin845.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next844.2, i64 19)
  %116 = or i64 %104, 3
  %117 = add nsw i64 %116, %100
  %118 = mul nuw nsw i64 %116, 480
  %119 = mul nuw nsw i64 %116, 640
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit247.3
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next842 = add nuw nsw i64 %indvars.iv841, 4
  %exitcond850.not = icmp eq i64 %polly.indvar_next231, 20
  br i1 %exitcond850.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit247.3, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_exit247.3 ]
  %120 = add nuw nsw i64 %polly.indvar236, %98
  %121 = shl i64 %120, 3
  %polly.access.mul.Packed_MemRef_call2254 = mul nuw nsw i64 %polly.indvar236, 80
  %polly.access.add.Packed_MemRef_call2255 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %105
  %polly.access.Packed_MemRef_call2256 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255
  %_p_scalar_257 = load double, double* %polly.access.Packed_MemRef_call2256, align 8
  %122 = add nuw nsw i64 %106, %121
  %scevgep262 = getelementptr i8, i8* %call1, i64 %122
  %scevgep262263 = bitcast i8* %scevgep262 to double*
  %_p_scalar_264 = load double, double* %scevgep262263, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header245

polly.loop_exit247:                               ; preds = %polly.loop_header245
  %polly.access.add.Packed_MemRef_call2255.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %109
  %polly.access.Packed_MemRef_call2256.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.1
  %_p_scalar_257.1 = load double, double* %polly.access.Packed_MemRef_call2256.1, align 8
  %123 = add nuw nsw i64 %110, %121
  %scevgep262.1 = getelementptr i8, i8* %call1, i64 %123
  %scevgep262263.1 = bitcast i8* %scevgep262.1 to double*
  %_p_scalar_264.1 = load double, double* %scevgep262263.1, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header245.1

polly.loop_header245:                             ; preds = %polly.loop_header245, %polly.loop_header233
  %polly.indvar248 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next249, %polly.loop_header245 ]
  %124 = add nuw nsw i64 %polly.indvar248, %99
  %125 = mul nuw nsw i64 %124, 480
  %126 = add nuw nsw i64 %125, %121
  %scevgep251 = getelementptr i8, i8* %call1, i64 %126
  %scevgep251252 = bitcast i8* %scevgep251 to double*
  %_p_scalar_253 = load double, double* %scevgep251252, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_257, %_p_scalar_253
  %polly.access.add.Packed_MemRef_call2259 = add nuw nsw i64 %polly.indvar248, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259
  %_p_scalar_261 = load double, double* %polly.access.Packed_MemRef_call2260, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_264, %_p_scalar_261
  %127 = shl i64 %124, 3
  %128 = add nuw nsw i64 %127, %107
  %scevgep265 = getelementptr i8, i8* %call, i64 %128
  %scevgep265266 = bitcast i8* %scevgep265 to double*
  %_p_scalar_267 = load double, double* %scevgep265266, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_267
  store double %p_add42.i118, double* %scevgep265266, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249 = add nuw nsw i64 %polly.indvar248, 1
  %exitcond846.not = icmp eq i64 %polly.indvar248, %smin845
  br i1 %exitcond846.not, label %polly.loop_exit247, label %polly.loop_header245

polly.start270:                                   ; preds = %kernel_syr2k.exit
  %malloccall272 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header356

polly.exiting271:                                 ; preds = %polly.loop_exit380
  tail call void @free(i8* nonnull %malloccall272)
  br label %kernel_syr2k.exit90

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.start270
  %indvar1299 = phi i64 [ %indvar.next1300, %polly.loop_exit364 ], [ 0, %polly.start270 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 1, %polly.start270 ]
  %129 = add i64 %indvar1299, 1
  %130 = mul nuw nsw i64 %polly.indvar359, 640
  %scevgep368 = getelementptr i8, i8* %call, i64 %130
  %min.iters.check1301 = icmp ult i64 %129, 4
  br i1 %min.iters.check1301, label %polly.loop_header362.preheader, label %vector.ph1302

vector.ph1302:                                    ; preds = %polly.loop_header356
  %n.vec1304 = and i64 %129, -4
  br label %vector.body1298

vector.body1298:                                  ; preds = %vector.body1298, %vector.ph1302
  %index1305 = phi i64 [ 0, %vector.ph1302 ], [ %index.next1306, %vector.body1298 ]
  %131 = shl nuw nsw i64 %index1305, 3
  %132 = getelementptr i8, i8* %scevgep368, i64 %131
  %133 = bitcast i8* %132 to <4 x double>*
  %wide.load1309 = load <4 x double>, <4 x double>* %133, align 8, !alias.scope !79, !noalias !81
  %134 = fmul fast <4 x double> %wide.load1309, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %135 = bitcast i8* %132 to <4 x double>*
  store <4 x double> %134, <4 x double>* %135, align 8, !alias.scope !79, !noalias !81
  %index.next1306 = add i64 %index1305, 4
  %136 = icmp eq i64 %index.next1306, %n.vec1304
  br i1 %136, label %middle.block1296, label %vector.body1298, !llvm.loop !85

middle.block1296:                                 ; preds = %vector.body1298
  %cmp.n1308 = icmp eq i64 %129, %n.vec1304
  br i1 %cmp.n1308, label %polly.loop_exit364, label %polly.loop_header362.preheader

polly.loop_header362.preheader:                   ; preds = %polly.loop_header356, %middle.block1296
  %polly.indvar365.ph = phi i64 [ 0, %polly.loop_header356 ], [ %n.vec1304, %middle.block1296 ]
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_header362, %middle.block1296
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond875.not = icmp eq i64 %polly.indvar_next360, 80
  %indvar.next1300 = add i64 %indvar1299, 1
  br i1 %exitcond875.not, label %polly.loop_header372.preheader, label %polly.loop_header356

polly.loop_header372.preheader:                   ; preds = %polly.loop_exit364
  %Packed_MemRef_call2273 = bitcast i8* %malloccall272 to double*
  br label %polly.loop_header372

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_header362
  %polly.indvar365 = phi i64 [ %polly.indvar_next366, %polly.loop_header362 ], [ %polly.indvar365.ph, %polly.loop_header362.preheader ]
  %137 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep369 = getelementptr i8, i8* %scevgep368, i64 %137
  %scevgep369370 = bitcast i8* %scevgep369 to double*
  %_p_scalar_371 = load double, double* %scevgep369370, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_371, 1.200000e+00
  store double %p_mul.i57, double* %scevgep369370, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next366, %polly.indvar359
  br i1 %exitcond874.not, label %polly.loop_exit364, label %polly.loop_header362, !llvm.loop !86

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_exit380
  %indvars.iv858 = phi i64 [ 0, %polly.loop_header372.preheader ], [ %indvars.iv.next859, %polly.loop_exit380 ]
  %polly.indvar375 = phi i64 [ 0, %polly.loop_header372.preheader ], [ %polly.indvar_next376, %polly.loop_exit380 ]
  %smin869 = call i64 @llvm.smin.i64(i64 %indvars.iv858, i64 -52)
  %138 = add nsw i64 %smin869, 60
  %139 = shl nsw i64 %polly.indvar375, 3
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_exit402
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %indvars.iv.next859 = add nsw i64 %indvars.iv858, -8
  %exitcond873.not = icmp eq i64 %polly.indvar_next376, 8
  br i1 %exitcond873.not, label %polly.exiting271, label %polly.loop_header372

polly.loop_header378:                             ; preds = %polly.loop_exit402, %polly.loop_header372
  %indvars.iv855 = phi i64 [ %indvars.iv.next856, %polly.loop_exit402 ], [ 80, %polly.loop_header372 ]
  %polly.indvar381 = phi i64 [ %polly.indvar_next382, %polly.loop_exit402 ], [ 0, %polly.loop_header372 ]
  %140 = mul nuw nsw i64 %polly.indvar381, 20
  br label %polly.loop_header384

polly.loop_exit386:                               ; preds = %polly.loop_exit392
  %141 = mul nsw i64 %polly.indvar381, -20
  %142 = mul nuw nsw i64 %polly.indvar381, 5
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_exit408
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %indvars.iv.next856 = add nsw i64 %indvars.iv855, -20
  %exitcond872.not = icmp eq i64 %polly.indvar_next382, 4
  br i1 %exitcond872.not, label %polly.loop_exit380, label %polly.loop_header378

polly.loop_header384:                             ; preds = %polly.loop_exit392, %polly.loop_header378
  %polly.indvar387 = phi i64 [ 0, %polly.loop_header378 ], [ %polly.indvar_next388, %polly.loop_exit392 ]
  %143 = add nuw nsw i64 %polly.indvar387, %139
  %polly.access.mul.Packed_MemRef_call2273 = mul nuw nsw i64 %polly.indvar387, 80
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_header390
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next388, %138
  br i1 %exitcond861.not, label %polly.loop_exit386, label %polly.loop_header384

polly.loop_header390:                             ; preds = %polly.loop_header390, %polly.loop_header384
  %polly.indvar393 = phi i64 [ 0, %polly.loop_header384 ], [ %polly.indvar_next394, %polly.loop_header390 ]
  %144 = add nuw nsw i64 %polly.indvar393, %140
  %polly.access.mul.call2397 = mul nuw nsw i64 %144, 60
  %polly.access.add.call2398 = add nuw nsw i64 %143, %polly.access.mul.call2397
  %polly.access.call2399 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2398
  %polly.access.call2399.load = load double, double* %polly.access.call2399, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2273 = add nuw nsw i64 %polly.indvar393, %polly.access.mul.Packed_MemRef_call2273
  %polly.access.Packed_MemRef_call2273 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273
  store double %polly.access.call2399.load, double* %polly.access.Packed_MemRef_call2273, align 8
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next394, %indvars.iv855
  br i1 %exitcond857.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header400:                             ; preds = %polly.loop_exit408, %polly.loop_exit386
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %polly.loop_exit408 ], [ 0, %polly.loop_exit386 ]
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit408 ], [ %142, %polly.loop_exit386 ]
  %145 = shl nsw i64 %polly.indvar403, 2
  %smin866 = call i64 @llvm.smin.i64(i64 %indvars.iv862, i64 19)
  %146 = add nsw i64 %145, %141
  %147 = mul nsw i64 %polly.indvar403, 1920
  %148 = mul nsw i64 %polly.indvar403, 2560
  %indvars.iv.next865 = or i64 %indvars.iv862, 1
  %smin866.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next865, i64 19)
  %149 = or i64 %145, 1
  %150 = add nsw i64 %149, %141
  %151 = mul nuw nsw i64 %149, 480
  %152 = mul nuw nsw i64 %149, 640
  %indvars.iv.next865.1 = add nuw nsw i64 %indvars.iv.next865, 1
  %smin866.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next865.1, i64 19)
  %153 = or i64 %145, 2
  %154 = add nsw i64 %153, %141
  %155 = mul nuw nsw i64 %153, 480
  %156 = mul nuw nsw i64 %153, 640
  %indvars.iv.next865.2 = or i64 %indvars.iv862, 3
  %smin866.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next865.2, i64 19)
  %157 = or i64 %145, 3
  %158 = add nsw i64 %157, %141
  %159 = mul nuw nsw i64 %157, 480
  %160 = mul nuw nsw i64 %157, 640
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_exit420.3
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next863 = add nuw nsw i64 %indvars.iv862, 4
  %exitcond871.not = icmp eq i64 %polly.indvar_next404, 20
  br i1 %exitcond871.not, label %polly.loop_exit402, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_exit420.3, %polly.loop_header400
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header400 ], [ %polly.indvar_next410, %polly.loop_exit420.3 ]
  %161 = add nuw nsw i64 %polly.indvar409, %139
  %162 = shl i64 %161, 3
  %polly.access.mul.Packed_MemRef_call2273427 = mul nuw nsw i64 %polly.indvar409, 80
  %polly.access.add.Packed_MemRef_call2273428 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %146
  %polly.access.Packed_MemRef_call2273429 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428
  %_p_scalar_430 = load double, double* %polly.access.Packed_MemRef_call2273429, align 8
  %163 = add nuw nsw i64 %147, %162
  %scevgep435 = getelementptr i8, i8* %call1, i64 %163
  %scevgep435436 = bitcast i8* %scevgep435 to double*
  %_p_scalar_437 = load double, double* %scevgep435436, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_header418
  %polly.access.add.Packed_MemRef_call2273428.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %150
  %polly.access.Packed_MemRef_call2273429.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428.1
  %_p_scalar_430.1 = load double, double* %polly.access.Packed_MemRef_call2273429.1, align 8
  %164 = add nuw nsw i64 %151, %162
  %scevgep435.1 = getelementptr i8, i8* %call1, i64 %164
  %scevgep435436.1 = bitcast i8* %scevgep435.1 to double*
  %_p_scalar_437.1 = load double, double* %scevgep435436.1, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header418.1

polly.loop_header418:                             ; preds = %polly.loop_header418, %polly.loop_header406
  %polly.indvar421 = phi i64 [ 0, %polly.loop_header406 ], [ %polly.indvar_next422, %polly.loop_header418 ]
  %165 = add nuw nsw i64 %polly.indvar421, %140
  %166 = mul nuw nsw i64 %165, 480
  %167 = add nuw nsw i64 %166, %162
  %scevgep424 = getelementptr i8, i8* %call1, i64 %167
  %scevgep424425 = bitcast i8* %scevgep424 to double*
  %_p_scalar_426 = load double, double* %scevgep424425, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_430, %_p_scalar_426
  %polly.access.add.Packed_MemRef_call2273432 = add nuw nsw i64 %polly.indvar421, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432
  %_p_scalar_434 = load double, double* %polly.access.Packed_MemRef_call2273433, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_437, %_p_scalar_434
  %168 = shl i64 %165, 3
  %169 = add nuw nsw i64 %168, %148
  %scevgep438 = getelementptr i8, i8* %call, i64 %169
  %scevgep438439 = bitcast i8* %scevgep438 to double*
  %_p_scalar_440 = load double, double* %scevgep438439, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_440
  store double %p_add42.i79, double* %scevgep438439, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %exitcond867.not = icmp eq i64 %polly.indvar421, %smin866
  br i1 %exitcond867.not, label %polly.loop_exit420, label %polly.loop_header418

polly.start443:                                   ; preds = %init_array.exit
  %malloccall445 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header529

polly.exiting444:                                 ; preds = %polly.loop_exit553
  tail call void @free(i8* nonnull %malloccall445)
  br label %kernel_syr2k.exit

polly.loop_header529:                             ; preds = %polly.loop_exit537, %polly.start443
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit537 ], [ 0, %polly.start443 ]
  %polly.indvar532 = phi i64 [ %polly.indvar_next533, %polly.loop_exit537 ], [ 1, %polly.start443 ]
  %170 = add i64 %indvar, 1
  %171 = mul nuw nsw i64 %polly.indvar532, 640
  %scevgep541 = getelementptr i8, i8* %call, i64 %171
  %min.iters.check1275 = icmp ult i64 %170, 4
  br i1 %min.iters.check1275, label %polly.loop_header535.preheader, label %vector.ph1276

vector.ph1276:                                    ; preds = %polly.loop_header529
  %n.vec1278 = and i64 %170, -4
  br label %vector.body1274

vector.body1274:                                  ; preds = %vector.body1274, %vector.ph1276
  %index1279 = phi i64 [ 0, %vector.ph1276 ], [ %index.next1280, %vector.body1274 ]
  %172 = shl nuw nsw i64 %index1279, 3
  %173 = getelementptr i8, i8* %scevgep541, i64 %172
  %174 = bitcast i8* %173 to <4 x double>*
  %wide.load1283 = load <4 x double>, <4 x double>* %174, align 8, !alias.scope !89, !noalias !91
  %175 = fmul fast <4 x double> %wide.load1283, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %176 = bitcast i8* %173 to <4 x double>*
  store <4 x double> %175, <4 x double>* %176, align 8, !alias.scope !89, !noalias !91
  %index.next1280 = add i64 %index1279, 4
  %177 = icmp eq i64 %index.next1280, %n.vec1278
  br i1 %177, label %middle.block1272, label %vector.body1274, !llvm.loop !95

middle.block1272:                                 ; preds = %vector.body1274
  %cmp.n1282 = icmp eq i64 %170, %n.vec1278
  br i1 %cmp.n1282, label %polly.loop_exit537, label %polly.loop_header535.preheader

polly.loop_header535.preheader:                   ; preds = %polly.loop_header529, %middle.block1272
  %polly.indvar538.ph = phi i64 [ 0, %polly.loop_header529 ], [ %n.vec1278, %middle.block1272 ]
  br label %polly.loop_header535

polly.loop_exit537:                               ; preds = %polly.loop_header535, %middle.block1272
  %polly.indvar_next533 = add nuw nsw i64 %polly.indvar532, 1
  %exitcond896.not = icmp eq i64 %polly.indvar_next533, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond896.not, label %polly.loop_header545.preheader, label %polly.loop_header529

polly.loop_header545.preheader:                   ; preds = %polly.loop_exit537
  %Packed_MemRef_call2446 = bitcast i8* %malloccall445 to double*
  br label %polly.loop_header545

polly.loop_header535:                             ; preds = %polly.loop_header535.preheader, %polly.loop_header535
  %polly.indvar538 = phi i64 [ %polly.indvar_next539, %polly.loop_header535 ], [ %polly.indvar538.ph, %polly.loop_header535.preheader ]
  %178 = shl nuw nsw i64 %polly.indvar538, 3
  %scevgep542 = getelementptr i8, i8* %scevgep541, i64 %178
  %scevgep542543 = bitcast i8* %scevgep542 to double*
  %_p_scalar_544 = load double, double* %scevgep542543, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_544, 1.200000e+00
  store double %p_mul.i, double* %scevgep542543, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next539, %polly.indvar532
  br i1 %exitcond895.not, label %polly.loop_exit537, label %polly.loop_header535, !llvm.loop !96

polly.loop_header545:                             ; preds = %polly.loop_header545.preheader, %polly.loop_exit553
  %indvars.iv879 = phi i64 [ 0, %polly.loop_header545.preheader ], [ %indvars.iv.next880, %polly.loop_exit553 ]
  %polly.indvar548 = phi i64 [ 0, %polly.loop_header545.preheader ], [ %polly.indvar_next549, %polly.loop_exit553 ]
  %smin890 = call i64 @llvm.smin.i64(i64 %indvars.iv879, i64 -52)
  %179 = add nsw i64 %smin890, 60
  %180 = shl nsw i64 %polly.indvar548, 3
  br label %polly.loop_header551

polly.loop_exit553:                               ; preds = %polly.loop_exit575
  %polly.indvar_next549 = add nuw nsw i64 %polly.indvar548, 1
  %indvars.iv.next880 = add nsw i64 %indvars.iv879, -8
  %exitcond894.not = icmp eq i64 %polly.indvar_next549, 8
  br i1 %exitcond894.not, label %polly.exiting444, label %polly.loop_header545

polly.loop_header551:                             ; preds = %polly.loop_exit575, %polly.loop_header545
  %indvars.iv876 = phi i64 [ %indvars.iv.next877, %polly.loop_exit575 ], [ 80, %polly.loop_header545 ]
  %polly.indvar554 = phi i64 [ %polly.indvar_next555, %polly.loop_exit575 ], [ 0, %polly.loop_header545 ]
  %181 = mul nuw nsw i64 %polly.indvar554, 20
  br label %polly.loop_header557

polly.loop_exit559:                               ; preds = %polly.loop_exit565
  %182 = mul nsw i64 %polly.indvar554, -20
  %183 = mul nuw nsw i64 %polly.indvar554, 5
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_exit581
  %polly.indvar_next555 = add nuw nsw i64 %polly.indvar554, 1
  %indvars.iv.next877 = add nsw i64 %indvars.iv876, -20
  %exitcond893.not = icmp eq i64 %polly.indvar_next555, 4
  br i1 %exitcond893.not, label %polly.loop_exit553, label %polly.loop_header551

polly.loop_header557:                             ; preds = %polly.loop_exit565, %polly.loop_header551
  %polly.indvar560 = phi i64 [ 0, %polly.loop_header551 ], [ %polly.indvar_next561, %polly.loop_exit565 ]
  %184 = add nuw nsw i64 %polly.indvar560, %180
  %polly.access.mul.Packed_MemRef_call2446 = mul nuw nsw i64 %polly.indvar560, 80
  br label %polly.loop_header563

polly.loop_exit565:                               ; preds = %polly.loop_header563
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next561, %179
  br i1 %exitcond882.not, label %polly.loop_exit559, label %polly.loop_header557

polly.loop_header563:                             ; preds = %polly.loop_header563, %polly.loop_header557
  %polly.indvar566 = phi i64 [ 0, %polly.loop_header557 ], [ %polly.indvar_next567, %polly.loop_header563 ]
  %185 = add nuw nsw i64 %polly.indvar566, %181
  %polly.access.mul.call2570 = mul nuw nsw i64 %185, 60
  %polly.access.add.call2571 = add nuw nsw i64 %184, %polly.access.mul.call2570
  %polly.access.call2572 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2571
  %polly.access.call2572.load = load double, double* %polly.access.call2572, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2446 = add nuw nsw i64 %polly.indvar566, %polly.access.mul.Packed_MemRef_call2446
  %polly.access.Packed_MemRef_call2446 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446
  store double %polly.access.call2572.load, double* %polly.access.Packed_MemRef_call2446, align 8
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond878.not = icmp eq i64 %polly.indvar_next567, %indvars.iv876
  br i1 %exitcond878.not, label %polly.loop_exit565, label %polly.loop_header563

polly.loop_header573:                             ; preds = %polly.loop_exit581, %polly.loop_exit559
  %indvars.iv883 = phi i64 [ %indvars.iv.next884, %polly.loop_exit581 ], [ 0, %polly.loop_exit559 ]
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit581 ], [ %183, %polly.loop_exit559 ]
  %186 = shl nsw i64 %polly.indvar576, 2
  %smin887 = call i64 @llvm.smin.i64(i64 %indvars.iv883, i64 19)
  %187 = add nsw i64 %186, %182
  %188 = mul nsw i64 %polly.indvar576, 1920
  %189 = mul nsw i64 %polly.indvar576, 2560
  %indvars.iv.next886 = or i64 %indvars.iv883, 1
  %smin887.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next886, i64 19)
  %190 = or i64 %186, 1
  %191 = add nsw i64 %190, %182
  %192 = mul nuw nsw i64 %190, 480
  %193 = mul nuw nsw i64 %190, 640
  %indvars.iv.next886.1 = add nuw nsw i64 %indvars.iv.next886, 1
  %smin887.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next886.1, i64 19)
  %194 = or i64 %186, 2
  %195 = add nsw i64 %194, %182
  %196 = mul nuw nsw i64 %194, 480
  %197 = mul nuw nsw i64 %194, 640
  %indvars.iv.next886.2 = or i64 %indvars.iv883, 3
  %smin887.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next886.2, i64 19)
  %198 = or i64 %186, 3
  %199 = add nsw i64 %198, %182
  %200 = mul nuw nsw i64 %198, 480
  %201 = mul nuw nsw i64 %198, 640
  br label %polly.loop_header579

polly.loop_exit581:                               ; preds = %polly.loop_exit593.3
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %indvars.iv.next884 = add nuw nsw i64 %indvars.iv883, 4
  %exitcond892.not = icmp eq i64 %polly.indvar_next577, 20
  br i1 %exitcond892.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header579:                             ; preds = %polly.loop_exit593.3, %polly.loop_header573
  %polly.indvar582 = phi i64 [ 0, %polly.loop_header573 ], [ %polly.indvar_next583, %polly.loop_exit593.3 ]
  %202 = add nuw nsw i64 %polly.indvar582, %180
  %203 = shl i64 %202, 3
  %polly.access.mul.Packed_MemRef_call2446600 = mul nuw nsw i64 %polly.indvar582, 80
  %polly.access.add.Packed_MemRef_call2446601 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %187
  %polly.access.Packed_MemRef_call2446602 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601
  %_p_scalar_603 = load double, double* %polly.access.Packed_MemRef_call2446602, align 8
  %204 = add nuw nsw i64 %188, %203
  %scevgep608 = getelementptr i8, i8* %call1, i64 %204
  %scevgep608609 = bitcast i8* %scevgep608 to double*
  %_p_scalar_610 = load double, double* %scevgep608609, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header591

polly.loop_exit593:                               ; preds = %polly.loop_header591
  %polly.access.add.Packed_MemRef_call2446601.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %191
  %polly.access.Packed_MemRef_call2446602.1 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601.1
  %_p_scalar_603.1 = load double, double* %polly.access.Packed_MemRef_call2446602.1, align 8
  %205 = add nuw nsw i64 %192, %203
  %scevgep608.1 = getelementptr i8, i8* %call1, i64 %205
  %scevgep608609.1 = bitcast i8* %scevgep608.1 to double*
  %_p_scalar_610.1 = load double, double* %scevgep608609.1, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header591.1

polly.loop_header591:                             ; preds = %polly.loop_header591, %polly.loop_header579
  %polly.indvar594 = phi i64 [ 0, %polly.loop_header579 ], [ %polly.indvar_next595, %polly.loop_header591 ]
  %206 = add nuw nsw i64 %polly.indvar594, %181
  %207 = mul nuw nsw i64 %206, 480
  %208 = add nuw nsw i64 %207, %203
  %scevgep597 = getelementptr i8, i8* %call1, i64 %208
  %scevgep597598 = bitcast i8* %scevgep597 to double*
  %_p_scalar_599 = load double, double* %scevgep597598, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_603, %_p_scalar_599
  %polly.access.add.Packed_MemRef_call2446605 = add nuw nsw i64 %polly.indvar594, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605
  %_p_scalar_607 = load double, double* %polly.access.Packed_MemRef_call2446606, align 8
  %p_mul37.i = fmul fast double %_p_scalar_610, %_p_scalar_607
  %209 = shl i64 %206, 3
  %210 = add nuw nsw i64 %209, %189
  %scevgep611 = getelementptr i8, i8* %call, i64 %210
  %scevgep611612 = bitcast i8* %scevgep611 to double*
  %_p_scalar_613 = load double, double* %scevgep611612, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_613
  store double %p_add42.i, double* %scevgep611612, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next595 = add nuw nsw i64 %polly.indvar594, 1
  %exitcond888.not = icmp eq i64 %polly.indvar594, %smin887
  br i1 %exitcond888.not, label %polly.loop_exit593, label %polly.loop_header591

polly.loop_header752:                             ; preds = %entry, %polly.loop_exit760
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %entry ]
  %211 = mul nuw nsw i64 %polly.indvar755, 640
  %212 = trunc i64 %polly.indvar755 to i32
  %broadcast.splatinsert1006 = insertelement <4 x i32> poison, i32 %212, i32 0
  %broadcast.splat1007 = shufflevector <4 x i32> %broadcast.splatinsert1006, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body996

vector.body996:                                   ; preds = %vector.body996, %polly.loop_header752
  %index998 = phi i64 [ 0, %polly.loop_header752 ], [ %index.next999, %vector.body996 ]
  %vec.ind1004 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752 ], [ %vec.ind.next1005, %vector.body996 ]
  %213 = mul <4 x i32> %vec.ind1004, %broadcast.splat1007
  %214 = add <4 x i32> %213, <i32 3, i32 3, i32 3, i32 3>
  %215 = urem <4 x i32> %214, <i32 80, i32 80, i32 80, i32 80>
  %216 = sitofp <4 x i32> %215 to <4 x double>
  %217 = fmul fast <4 x double> %216, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %218 = shl i64 %index998, 3
  %219 = add nuw nsw i64 %218, %211
  %220 = getelementptr i8, i8* %call, i64 %219
  %221 = bitcast i8* %220 to <4 x double>*
  store <4 x double> %217, <4 x double>* %221, align 8, !alias.scope !99, !noalias !101
  %index.next999 = add i64 %index998, 4
  %vec.ind.next1005 = add <4 x i32> %vec.ind1004, <i32 4, i32 4, i32 4, i32 4>
  %222 = icmp eq i64 %index.next999, 32
  br i1 %222, label %polly.loop_exit760, label %vector.body996, !llvm.loop !104

polly.loop_exit760:                               ; preds = %vector.body996
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond916.not = icmp eq i64 %polly.indvar_next756, 32
  br i1 %exitcond916.not, label %polly.loop_header752.1, label %polly.loop_header752

polly.loop_header779:                             ; preds = %polly.loop_exit760.2.2, %polly.loop_exit787
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %polly.loop_exit760.2.2 ]
  %223 = mul nuw nsw i64 %polly.indvar782, 480
  %224 = trunc i64 %polly.indvar782 to i32
  %broadcast.splatinsert1120 = insertelement <4 x i32> poison, i32 %224, i32 0
  %broadcast.splat1121 = shufflevector <4 x i32> %broadcast.splatinsert1120, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1110

vector.body1110:                                  ; preds = %vector.body1110, %polly.loop_header779
  %index1112 = phi i64 [ 0, %polly.loop_header779 ], [ %index.next1113, %vector.body1110 ]
  %vec.ind1118 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header779 ], [ %vec.ind.next1119, %vector.body1110 ]
  %225 = mul <4 x i32> %vec.ind1118, %broadcast.splat1121
  %226 = add <4 x i32> %225, <i32 2, i32 2, i32 2, i32 2>
  %227 = urem <4 x i32> %226, <i32 60, i32 60, i32 60, i32 60>
  %228 = sitofp <4 x i32> %227 to <4 x double>
  %229 = fmul fast <4 x double> %228, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %230 = shl i64 %index1112, 3
  %231 = add i64 %230, %223
  %232 = getelementptr i8, i8* %call2, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %229, <4 x double>* %233, align 8, !alias.scope !103, !noalias !105
  %index.next1113 = add i64 %index1112, 4
  %vec.ind.next1119 = add <4 x i32> %vec.ind1118, <i32 4, i32 4, i32 4, i32 4>
  %234 = icmp eq i64 %index.next1113, 32
  br i1 %234, label %polly.loop_exit787, label %vector.body1110, !llvm.loop !106

polly.loop_exit787:                               ; preds = %vector.body1110
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %exitcond907.not = icmp eq i64 %polly.indvar_next783, 32
  br i1 %exitcond907.not, label %polly.loop_header779.1, label %polly.loop_header779

polly.loop_header805:                             ; preds = %polly.loop_exit787.1.2, %polly.loop_exit813
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_exit787.1.2 ]
  %235 = mul nuw nsw i64 %polly.indvar808, 480
  %236 = trunc i64 %polly.indvar808 to i32
  %broadcast.splatinsert1198 = insertelement <4 x i32> poison, i32 %236, i32 0
  %broadcast.splat1199 = shufflevector <4 x i32> %broadcast.splatinsert1198, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %polly.loop_header805
  %index1190 = phi i64 [ 0, %polly.loop_header805 ], [ %index.next1191, %vector.body1188 ]
  %vec.ind1196 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805 ], [ %vec.ind.next1197, %vector.body1188 ]
  %237 = mul <4 x i32> %vec.ind1196, %broadcast.splat1199
  %238 = add <4 x i32> %237, <i32 1, i32 1, i32 1, i32 1>
  %239 = urem <4 x i32> %238, <i32 80, i32 80, i32 80, i32 80>
  %240 = sitofp <4 x i32> %239 to <4 x double>
  %241 = fmul fast <4 x double> %240, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %242 = shl i64 %index1190, 3
  %243 = add i64 %242, %235
  %244 = getelementptr i8, i8* %call1, i64 %243
  %245 = bitcast i8* %244 to <4 x double>*
  store <4 x double> %241, <4 x double>* %245, align 8, !alias.scope !102, !noalias !107
  %index.next1191 = add i64 %index1190, 4
  %vec.ind.next1197 = add <4 x i32> %vec.ind1196, <i32 4, i32 4, i32 4, i32 4>
  %246 = icmp eq i64 %index.next1191, 32
  br i1 %246, label %polly.loop_exit813, label %vector.body1188, !llvm.loop !108

polly.loop_exit813:                               ; preds = %vector.body1188
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond901.not = icmp eq i64 %polly.indvar_next809, 32
  br i1 %exitcond901.not, label %polly.loop_header805.1, label %polly.loop_header805

polly.loop_header245.1:                           ; preds = %polly.loop_header245.1, %polly.loop_exit247
  %polly.indvar248.1 = phi i64 [ 0, %polly.loop_exit247 ], [ %polly.indvar_next249.1, %polly.loop_header245.1 ]
  %247 = add nuw nsw i64 %polly.indvar248.1, %99
  %248 = mul nuw nsw i64 %247, 480
  %249 = add nuw nsw i64 %248, %121
  %scevgep251.1 = getelementptr i8, i8* %call1, i64 %249
  %scevgep251252.1 = bitcast i8* %scevgep251.1 to double*
  %_p_scalar_253.1 = load double, double* %scevgep251252.1, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.1 = fmul fast double %_p_scalar_257.1, %_p_scalar_253.1
  %polly.access.add.Packed_MemRef_call2259.1 = add nuw nsw i64 %polly.indvar248.1, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.1
  %_p_scalar_261.1 = load double, double* %polly.access.Packed_MemRef_call2260.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_264.1, %_p_scalar_261.1
  %250 = shl i64 %247, 3
  %251 = add nuw nsw i64 %250, %111
  %scevgep265.1 = getelementptr i8, i8* %call, i64 %251
  %scevgep265266.1 = bitcast i8* %scevgep265.1 to double*
  %_p_scalar_267.1 = load double, double* %scevgep265266.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_267.1
  store double %p_add42.i118.1, double* %scevgep265266.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249.1 = add nuw nsw i64 %polly.indvar248.1, 1
  %exitcond846.1.not = icmp eq i64 %polly.indvar248.1, %smin845.1
  br i1 %exitcond846.1.not, label %polly.loop_exit247.1, label %polly.loop_header245.1

polly.loop_exit247.1:                             ; preds = %polly.loop_header245.1
  %polly.access.add.Packed_MemRef_call2255.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %113
  %polly.access.Packed_MemRef_call2256.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.2
  %_p_scalar_257.2 = load double, double* %polly.access.Packed_MemRef_call2256.2, align 8
  %252 = add nuw nsw i64 %114, %121
  %scevgep262.2 = getelementptr i8, i8* %call1, i64 %252
  %scevgep262263.2 = bitcast i8* %scevgep262.2 to double*
  %_p_scalar_264.2 = load double, double* %scevgep262263.2, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header245.2

polly.loop_header245.2:                           ; preds = %polly.loop_header245.2, %polly.loop_exit247.1
  %polly.indvar248.2 = phi i64 [ 0, %polly.loop_exit247.1 ], [ %polly.indvar_next249.2, %polly.loop_header245.2 ]
  %253 = add nuw nsw i64 %polly.indvar248.2, %99
  %254 = mul nuw nsw i64 %253, 480
  %255 = add nuw nsw i64 %254, %121
  %scevgep251.2 = getelementptr i8, i8* %call1, i64 %255
  %scevgep251252.2 = bitcast i8* %scevgep251.2 to double*
  %_p_scalar_253.2 = load double, double* %scevgep251252.2, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.2 = fmul fast double %_p_scalar_257.2, %_p_scalar_253.2
  %polly.access.add.Packed_MemRef_call2259.2 = add nuw nsw i64 %polly.indvar248.2, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.2
  %_p_scalar_261.2 = load double, double* %polly.access.Packed_MemRef_call2260.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_264.2, %_p_scalar_261.2
  %256 = shl i64 %253, 3
  %257 = add nuw nsw i64 %256, %115
  %scevgep265.2 = getelementptr i8, i8* %call, i64 %257
  %scevgep265266.2 = bitcast i8* %scevgep265.2 to double*
  %_p_scalar_267.2 = load double, double* %scevgep265266.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_267.2
  store double %p_add42.i118.2, double* %scevgep265266.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249.2 = add nuw nsw i64 %polly.indvar248.2, 1
  %exitcond846.2.not = icmp eq i64 %polly.indvar248.2, %smin845.2
  br i1 %exitcond846.2.not, label %polly.loop_exit247.2, label %polly.loop_header245.2

polly.loop_exit247.2:                             ; preds = %polly.loop_header245.2
  %polly.access.add.Packed_MemRef_call2255.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %117
  %polly.access.Packed_MemRef_call2256.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.3
  %_p_scalar_257.3 = load double, double* %polly.access.Packed_MemRef_call2256.3, align 8
  %258 = add nuw nsw i64 %118, %121
  %scevgep262.3 = getelementptr i8, i8* %call1, i64 %258
  %scevgep262263.3 = bitcast i8* %scevgep262.3 to double*
  %_p_scalar_264.3 = load double, double* %scevgep262263.3, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header245.3

polly.loop_header245.3:                           ; preds = %polly.loop_header245.3, %polly.loop_exit247.2
  %polly.indvar248.3 = phi i64 [ 0, %polly.loop_exit247.2 ], [ %polly.indvar_next249.3, %polly.loop_header245.3 ]
  %259 = add nuw nsw i64 %polly.indvar248.3, %99
  %260 = mul nuw nsw i64 %259, 480
  %261 = add nuw nsw i64 %260, %121
  %scevgep251.3 = getelementptr i8, i8* %call1, i64 %261
  %scevgep251252.3 = bitcast i8* %scevgep251.3 to double*
  %_p_scalar_253.3 = load double, double* %scevgep251252.3, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.3 = fmul fast double %_p_scalar_257.3, %_p_scalar_253.3
  %polly.access.add.Packed_MemRef_call2259.3 = add nuw nsw i64 %polly.indvar248.3, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.3
  %_p_scalar_261.3 = load double, double* %polly.access.Packed_MemRef_call2260.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_264.3, %_p_scalar_261.3
  %262 = shl i64 %259, 3
  %263 = add nuw nsw i64 %262, %119
  %scevgep265.3 = getelementptr i8, i8* %call, i64 %263
  %scevgep265266.3 = bitcast i8* %scevgep265.3 to double*
  %_p_scalar_267.3 = load double, double* %scevgep265266.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_267.3
  store double %p_add42.i118.3, double* %scevgep265266.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249.3 = add nuw nsw i64 %polly.indvar248.3, 1
  %exitcond846.3.not = icmp eq i64 %polly.indvar248.3, %smin845.3
  br i1 %exitcond846.3.not, label %polly.loop_exit247.3, label %polly.loop_header245.3

polly.loop_exit247.3:                             ; preds = %polly.loop_header245.3
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next237, %97
  br i1 %exitcond849.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header418.1:                           ; preds = %polly.loop_header418.1, %polly.loop_exit420
  %polly.indvar421.1 = phi i64 [ 0, %polly.loop_exit420 ], [ %polly.indvar_next422.1, %polly.loop_header418.1 ]
  %264 = add nuw nsw i64 %polly.indvar421.1, %140
  %265 = mul nuw nsw i64 %264, 480
  %266 = add nuw nsw i64 %265, %162
  %scevgep424.1 = getelementptr i8, i8* %call1, i64 %266
  %scevgep424425.1 = bitcast i8* %scevgep424.1 to double*
  %_p_scalar_426.1 = load double, double* %scevgep424425.1, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.1 = fmul fast double %_p_scalar_430.1, %_p_scalar_426.1
  %polly.access.add.Packed_MemRef_call2273432.1 = add nuw nsw i64 %polly.indvar421.1, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432.1
  %_p_scalar_434.1 = load double, double* %polly.access.Packed_MemRef_call2273433.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_437.1, %_p_scalar_434.1
  %267 = shl i64 %264, 3
  %268 = add nuw nsw i64 %267, %152
  %scevgep438.1 = getelementptr i8, i8* %call, i64 %268
  %scevgep438439.1 = bitcast i8* %scevgep438.1 to double*
  %_p_scalar_440.1 = load double, double* %scevgep438439.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_440.1
  store double %p_add42.i79.1, double* %scevgep438439.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next422.1 = add nuw nsw i64 %polly.indvar421.1, 1
  %exitcond867.1.not = icmp eq i64 %polly.indvar421.1, %smin866.1
  br i1 %exitcond867.1.not, label %polly.loop_exit420.1, label %polly.loop_header418.1

polly.loop_exit420.1:                             ; preds = %polly.loop_header418.1
  %polly.access.add.Packed_MemRef_call2273428.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %154
  %polly.access.Packed_MemRef_call2273429.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428.2
  %_p_scalar_430.2 = load double, double* %polly.access.Packed_MemRef_call2273429.2, align 8
  %269 = add nuw nsw i64 %155, %162
  %scevgep435.2 = getelementptr i8, i8* %call1, i64 %269
  %scevgep435436.2 = bitcast i8* %scevgep435.2 to double*
  %_p_scalar_437.2 = load double, double* %scevgep435436.2, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header418.2

polly.loop_header418.2:                           ; preds = %polly.loop_header418.2, %polly.loop_exit420.1
  %polly.indvar421.2 = phi i64 [ 0, %polly.loop_exit420.1 ], [ %polly.indvar_next422.2, %polly.loop_header418.2 ]
  %270 = add nuw nsw i64 %polly.indvar421.2, %140
  %271 = mul nuw nsw i64 %270, 480
  %272 = add nuw nsw i64 %271, %162
  %scevgep424.2 = getelementptr i8, i8* %call1, i64 %272
  %scevgep424425.2 = bitcast i8* %scevgep424.2 to double*
  %_p_scalar_426.2 = load double, double* %scevgep424425.2, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.2 = fmul fast double %_p_scalar_430.2, %_p_scalar_426.2
  %polly.access.add.Packed_MemRef_call2273432.2 = add nuw nsw i64 %polly.indvar421.2, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432.2
  %_p_scalar_434.2 = load double, double* %polly.access.Packed_MemRef_call2273433.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_437.2, %_p_scalar_434.2
  %273 = shl i64 %270, 3
  %274 = add nuw nsw i64 %273, %156
  %scevgep438.2 = getelementptr i8, i8* %call, i64 %274
  %scevgep438439.2 = bitcast i8* %scevgep438.2 to double*
  %_p_scalar_440.2 = load double, double* %scevgep438439.2, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_440.2
  store double %p_add42.i79.2, double* %scevgep438439.2, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next422.2 = add nuw nsw i64 %polly.indvar421.2, 1
  %exitcond867.2.not = icmp eq i64 %polly.indvar421.2, %smin866.2
  br i1 %exitcond867.2.not, label %polly.loop_exit420.2, label %polly.loop_header418.2

polly.loop_exit420.2:                             ; preds = %polly.loop_header418.2
  %polly.access.add.Packed_MemRef_call2273428.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %158
  %polly.access.Packed_MemRef_call2273429.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428.3
  %_p_scalar_430.3 = load double, double* %polly.access.Packed_MemRef_call2273429.3, align 8
  %275 = add nuw nsw i64 %159, %162
  %scevgep435.3 = getelementptr i8, i8* %call1, i64 %275
  %scevgep435436.3 = bitcast i8* %scevgep435.3 to double*
  %_p_scalar_437.3 = load double, double* %scevgep435436.3, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header418.3

polly.loop_header418.3:                           ; preds = %polly.loop_header418.3, %polly.loop_exit420.2
  %polly.indvar421.3 = phi i64 [ 0, %polly.loop_exit420.2 ], [ %polly.indvar_next422.3, %polly.loop_header418.3 ]
  %276 = add nuw nsw i64 %polly.indvar421.3, %140
  %277 = mul nuw nsw i64 %276, 480
  %278 = add nuw nsw i64 %277, %162
  %scevgep424.3 = getelementptr i8, i8* %call1, i64 %278
  %scevgep424425.3 = bitcast i8* %scevgep424.3 to double*
  %_p_scalar_426.3 = load double, double* %scevgep424425.3, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.3 = fmul fast double %_p_scalar_430.3, %_p_scalar_426.3
  %polly.access.add.Packed_MemRef_call2273432.3 = add nuw nsw i64 %polly.indvar421.3, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432.3
  %_p_scalar_434.3 = load double, double* %polly.access.Packed_MemRef_call2273433.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_437.3, %_p_scalar_434.3
  %279 = shl i64 %276, 3
  %280 = add nuw nsw i64 %279, %160
  %scevgep438.3 = getelementptr i8, i8* %call, i64 %280
  %scevgep438439.3 = bitcast i8* %scevgep438.3 to double*
  %_p_scalar_440.3 = load double, double* %scevgep438439.3, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_440.3
  store double %p_add42.i79.3, double* %scevgep438439.3, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next422.3 = add nuw nsw i64 %polly.indvar421.3, 1
  %exitcond867.3.not = icmp eq i64 %polly.indvar421.3, %smin866.3
  br i1 %exitcond867.3.not, label %polly.loop_exit420.3, label %polly.loop_header418.3

polly.loop_exit420.3:                             ; preds = %polly.loop_header418.3
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond870.not = icmp eq i64 %polly.indvar_next410, %138
  br i1 %exitcond870.not, label %polly.loop_exit408, label %polly.loop_header406

polly.loop_header591.1:                           ; preds = %polly.loop_header591.1, %polly.loop_exit593
  %polly.indvar594.1 = phi i64 [ 0, %polly.loop_exit593 ], [ %polly.indvar_next595.1, %polly.loop_header591.1 ]
  %281 = add nuw nsw i64 %polly.indvar594.1, %181
  %282 = mul nuw nsw i64 %281, 480
  %283 = add nuw nsw i64 %282, %203
  %scevgep597.1 = getelementptr i8, i8* %call1, i64 %283
  %scevgep597598.1 = bitcast i8* %scevgep597.1 to double*
  %_p_scalar_599.1 = load double, double* %scevgep597598.1, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.1 = fmul fast double %_p_scalar_603.1, %_p_scalar_599.1
  %polly.access.add.Packed_MemRef_call2446605.1 = add nuw nsw i64 %polly.indvar594.1, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606.1 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605.1
  %_p_scalar_607.1 = load double, double* %polly.access.Packed_MemRef_call2446606.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_610.1, %_p_scalar_607.1
  %284 = shl i64 %281, 3
  %285 = add nuw nsw i64 %284, %193
  %scevgep611.1 = getelementptr i8, i8* %call, i64 %285
  %scevgep611612.1 = bitcast i8* %scevgep611.1 to double*
  %_p_scalar_613.1 = load double, double* %scevgep611612.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_613.1
  store double %p_add42.i.1, double* %scevgep611612.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next595.1 = add nuw nsw i64 %polly.indvar594.1, 1
  %exitcond888.1.not = icmp eq i64 %polly.indvar594.1, %smin887.1
  br i1 %exitcond888.1.not, label %polly.loop_exit593.1, label %polly.loop_header591.1

polly.loop_exit593.1:                             ; preds = %polly.loop_header591.1
  %polly.access.add.Packed_MemRef_call2446601.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %195
  %polly.access.Packed_MemRef_call2446602.2 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601.2
  %_p_scalar_603.2 = load double, double* %polly.access.Packed_MemRef_call2446602.2, align 8
  %286 = add nuw nsw i64 %196, %203
  %scevgep608.2 = getelementptr i8, i8* %call1, i64 %286
  %scevgep608609.2 = bitcast i8* %scevgep608.2 to double*
  %_p_scalar_610.2 = load double, double* %scevgep608609.2, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header591.2

polly.loop_header591.2:                           ; preds = %polly.loop_header591.2, %polly.loop_exit593.1
  %polly.indvar594.2 = phi i64 [ 0, %polly.loop_exit593.1 ], [ %polly.indvar_next595.2, %polly.loop_header591.2 ]
  %287 = add nuw nsw i64 %polly.indvar594.2, %181
  %288 = mul nuw nsw i64 %287, 480
  %289 = add nuw nsw i64 %288, %203
  %scevgep597.2 = getelementptr i8, i8* %call1, i64 %289
  %scevgep597598.2 = bitcast i8* %scevgep597.2 to double*
  %_p_scalar_599.2 = load double, double* %scevgep597598.2, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.2 = fmul fast double %_p_scalar_603.2, %_p_scalar_599.2
  %polly.access.add.Packed_MemRef_call2446605.2 = add nuw nsw i64 %polly.indvar594.2, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606.2 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605.2
  %_p_scalar_607.2 = load double, double* %polly.access.Packed_MemRef_call2446606.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_610.2, %_p_scalar_607.2
  %290 = shl i64 %287, 3
  %291 = add nuw nsw i64 %290, %197
  %scevgep611.2 = getelementptr i8, i8* %call, i64 %291
  %scevgep611612.2 = bitcast i8* %scevgep611.2 to double*
  %_p_scalar_613.2 = load double, double* %scevgep611612.2, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_613.2
  store double %p_add42.i.2, double* %scevgep611612.2, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next595.2 = add nuw nsw i64 %polly.indvar594.2, 1
  %exitcond888.2.not = icmp eq i64 %polly.indvar594.2, %smin887.2
  br i1 %exitcond888.2.not, label %polly.loop_exit593.2, label %polly.loop_header591.2

polly.loop_exit593.2:                             ; preds = %polly.loop_header591.2
  %polly.access.add.Packed_MemRef_call2446601.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %199
  %polly.access.Packed_MemRef_call2446602.3 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601.3
  %_p_scalar_603.3 = load double, double* %polly.access.Packed_MemRef_call2446602.3, align 8
  %292 = add nuw nsw i64 %200, %203
  %scevgep608.3 = getelementptr i8, i8* %call1, i64 %292
  %scevgep608609.3 = bitcast i8* %scevgep608.3 to double*
  %_p_scalar_610.3 = load double, double* %scevgep608609.3, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header591.3

polly.loop_header591.3:                           ; preds = %polly.loop_header591.3, %polly.loop_exit593.2
  %polly.indvar594.3 = phi i64 [ 0, %polly.loop_exit593.2 ], [ %polly.indvar_next595.3, %polly.loop_header591.3 ]
  %293 = add nuw nsw i64 %polly.indvar594.3, %181
  %294 = mul nuw nsw i64 %293, 480
  %295 = add nuw nsw i64 %294, %203
  %scevgep597.3 = getelementptr i8, i8* %call1, i64 %295
  %scevgep597598.3 = bitcast i8* %scevgep597.3 to double*
  %_p_scalar_599.3 = load double, double* %scevgep597598.3, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.3 = fmul fast double %_p_scalar_603.3, %_p_scalar_599.3
  %polly.access.add.Packed_MemRef_call2446605.3 = add nuw nsw i64 %polly.indvar594.3, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606.3 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605.3
  %_p_scalar_607.3 = load double, double* %polly.access.Packed_MemRef_call2446606.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_610.3, %_p_scalar_607.3
  %296 = shl i64 %293, 3
  %297 = add nuw nsw i64 %296, %201
  %scevgep611.3 = getelementptr i8, i8* %call, i64 %297
  %scevgep611612.3 = bitcast i8* %scevgep611.3 to double*
  %_p_scalar_613.3 = load double, double* %scevgep611612.3, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_613.3
  store double %p_add42.i.3, double* %scevgep611612.3, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next595.3 = add nuw nsw i64 %polly.indvar594.3, 1
  %exitcond888.3.not = icmp eq i64 %polly.indvar594.3, %smin887.3
  br i1 %exitcond888.3.not, label %polly.loop_exit593.3, label %polly.loop_header591.3

polly.loop_exit593.3:                             ; preds = %polly.loop_header591.3
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next583, %179
  br i1 %exitcond891.not, label %polly.loop_exit581, label %polly.loop_header579

polly.loop_header805.1:                           ; preds = %polly.loop_exit813, %polly.loop_exit813.1
  %polly.indvar808.1 = phi i64 [ %polly.indvar_next809.1, %polly.loop_exit813.1 ], [ 0, %polly.loop_exit813 ]
  %298 = mul nuw nsw i64 %polly.indvar808.1, 480
  %299 = trunc i64 %polly.indvar808.1 to i32
  %broadcast.splatinsert1210 = insertelement <4 x i32> poison, i32 %299, i32 0
  %broadcast.splat1211 = shufflevector <4 x i32> %broadcast.splatinsert1210, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %polly.loop_header805.1
  %index1204 = phi i64 [ 0, %polly.loop_header805.1 ], [ %index.next1205, %vector.body1202 ]
  %vec.ind1208 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1 ], [ %vec.ind.next1209, %vector.body1202 ]
  %300 = add nuw nsw <4 x i64> %vec.ind1208, <i64 32, i64 32, i64 32, i64 32>
  %301 = trunc <4 x i64> %300 to <4 x i32>
  %302 = mul <4 x i32> %broadcast.splat1211, %301
  %303 = add <4 x i32> %302, <i32 1, i32 1, i32 1, i32 1>
  %304 = urem <4 x i32> %303, <i32 80, i32 80, i32 80, i32 80>
  %305 = sitofp <4 x i32> %304 to <4 x double>
  %306 = fmul fast <4 x double> %305, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %307 = extractelement <4 x i64> %300, i32 0
  %308 = shl i64 %307, 3
  %309 = add i64 %308, %298
  %310 = getelementptr i8, i8* %call1, i64 %309
  %311 = bitcast i8* %310 to <4 x double>*
  store <4 x double> %306, <4 x double>* %311, align 8, !alias.scope !102, !noalias !107
  %index.next1205 = add i64 %index1204, 4
  %vec.ind.next1209 = add <4 x i64> %vec.ind1208, <i64 4, i64 4, i64 4, i64 4>
  %312 = icmp eq i64 %index.next1205, 28
  br i1 %312, label %polly.loop_exit813.1, label %vector.body1202, !llvm.loop !109

polly.loop_exit813.1:                             ; preds = %vector.body1202
  %polly.indvar_next809.1 = add nuw nsw i64 %polly.indvar808.1, 1
  %exitcond901.1.not = icmp eq i64 %polly.indvar_next809.1, 32
  br i1 %exitcond901.1.not, label %polly.loop_header805.1921, label %polly.loop_header805.1

polly.loop_header805.1921:                        ; preds = %polly.loop_exit813.1, %polly.loop_exit813.1932
  %polly.indvar808.1920 = phi i64 [ %polly.indvar_next809.1930, %polly.loop_exit813.1932 ], [ 0, %polly.loop_exit813.1 ]
  %313 = add nuw nsw i64 %polly.indvar808.1920, 32
  %314 = mul nuw nsw i64 %313, 480
  %315 = trunc i64 %313 to i32
  %broadcast.splatinsert1224 = insertelement <4 x i32> poison, i32 %315, i32 0
  %broadcast.splat1225 = shufflevector <4 x i32> %broadcast.splatinsert1224, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1214

vector.body1214:                                  ; preds = %vector.body1214, %polly.loop_header805.1921
  %index1216 = phi i64 [ 0, %polly.loop_header805.1921 ], [ %index.next1217, %vector.body1214 ]
  %vec.ind1222 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805.1921 ], [ %vec.ind.next1223, %vector.body1214 ]
  %316 = mul <4 x i32> %vec.ind1222, %broadcast.splat1225
  %317 = add <4 x i32> %316, <i32 1, i32 1, i32 1, i32 1>
  %318 = urem <4 x i32> %317, <i32 80, i32 80, i32 80, i32 80>
  %319 = sitofp <4 x i32> %318 to <4 x double>
  %320 = fmul fast <4 x double> %319, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %321 = shl i64 %index1216, 3
  %322 = add i64 %321, %314
  %323 = getelementptr i8, i8* %call1, i64 %322
  %324 = bitcast i8* %323 to <4 x double>*
  store <4 x double> %320, <4 x double>* %324, align 8, !alias.scope !102, !noalias !107
  %index.next1217 = add i64 %index1216, 4
  %vec.ind.next1223 = add <4 x i32> %vec.ind1222, <i32 4, i32 4, i32 4, i32 4>
  %325 = icmp eq i64 %index.next1217, 32
  br i1 %325, label %polly.loop_exit813.1932, label %vector.body1214, !llvm.loop !110

polly.loop_exit813.1932:                          ; preds = %vector.body1214
  %polly.indvar_next809.1930 = add nuw nsw i64 %polly.indvar808.1920, 1
  %exitcond901.1931.not = icmp eq i64 %polly.indvar_next809.1930, 32
  br i1 %exitcond901.1931.not, label %polly.loop_header805.1.1, label %polly.loop_header805.1921

polly.loop_header805.1.1:                         ; preds = %polly.loop_exit813.1932, %polly.loop_exit813.1.1
  %polly.indvar808.1.1 = phi i64 [ %polly.indvar_next809.1.1, %polly.loop_exit813.1.1 ], [ 0, %polly.loop_exit813.1932 ]
  %326 = add nuw nsw i64 %polly.indvar808.1.1, 32
  %327 = mul nuw nsw i64 %326, 480
  %328 = trunc i64 %326 to i32
  %broadcast.splatinsert1236 = insertelement <4 x i32> poison, i32 %328, i32 0
  %broadcast.splat1237 = shufflevector <4 x i32> %broadcast.splatinsert1236, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %polly.loop_header805.1.1
  %index1230 = phi i64 [ 0, %polly.loop_header805.1.1 ], [ %index.next1231, %vector.body1228 ]
  %vec.ind1234 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1.1 ], [ %vec.ind.next1235, %vector.body1228 ]
  %329 = add nuw nsw <4 x i64> %vec.ind1234, <i64 32, i64 32, i64 32, i64 32>
  %330 = trunc <4 x i64> %329 to <4 x i32>
  %331 = mul <4 x i32> %broadcast.splat1237, %330
  %332 = add <4 x i32> %331, <i32 1, i32 1, i32 1, i32 1>
  %333 = urem <4 x i32> %332, <i32 80, i32 80, i32 80, i32 80>
  %334 = sitofp <4 x i32> %333 to <4 x double>
  %335 = fmul fast <4 x double> %334, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %336 = extractelement <4 x i64> %329, i32 0
  %337 = shl i64 %336, 3
  %338 = add i64 %337, %327
  %339 = getelementptr i8, i8* %call1, i64 %338
  %340 = bitcast i8* %339 to <4 x double>*
  store <4 x double> %335, <4 x double>* %340, align 8, !alias.scope !102, !noalias !107
  %index.next1231 = add i64 %index1230, 4
  %vec.ind.next1235 = add <4 x i64> %vec.ind1234, <i64 4, i64 4, i64 4, i64 4>
  %341 = icmp eq i64 %index.next1231, 28
  br i1 %341, label %polly.loop_exit813.1.1, label %vector.body1228, !llvm.loop !111

polly.loop_exit813.1.1:                           ; preds = %vector.body1228
  %polly.indvar_next809.1.1 = add nuw nsw i64 %polly.indvar808.1.1, 1
  %exitcond901.1.1.not = icmp eq i64 %polly.indvar_next809.1.1, 32
  br i1 %exitcond901.1.1.not, label %polly.loop_header805.2, label %polly.loop_header805.1.1

polly.loop_header805.2:                           ; preds = %polly.loop_exit813.1.1, %polly.loop_exit813.2
  %polly.indvar808.2 = phi i64 [ %polly.indvar_next809.2, %polly.loop_exit813.2 ], [ 0, %polly.loop_exit813.1.1 ]
  %342 = add nuw nsw i64 %polly.indvar808.2, 64
  %343 = mul nuw nsw i64 %342, 480
  %344 = trunc i64 %342 to i32
  %broadcast.splatinsert1250 = insertelement <4 x i32> poison, i32 %344, i32 0
  %broadcast.splat1251 = shufflevector <4 x i32> %broadcast.splatinsert1250, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %polly.loop_header805.2
  %index1242 = phi i64 [ 0, %polly.loop_header805.2 ], [ %index.next1243, %vector.body1240 ]
  %vec.ind1248 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805.2 ], [ %vec.ind.next1249, %vector.body1240 ]
  %345 = mul <4 x i32> %vec.ind1248, %broadcast.splat1251
  %346 = add <4 x i32> %345, <i32 1, i32 1, i32 1, i32 1>
  %347 = urem <4 x i32> %346, <i32 80, i32 80, i32 80, i32 80>
  %348 = sitofp <4 x i32> %347 to <4 x double>
  %349 = fmul fast <4 x double> %348, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %350 = shl i64 %index1242, 3
  %351 = add i64 %350, %343
  %352 = getelementptr i8, i8* %call1, i64 %351
  %353 = bitcast i8* %352 to <4 x double>*
  store <4 x double> %349, <4 x double>* %353, align 8, !alias.scope !102, !noalias !107
  %index.next1243 = add i64 %index1242, 4
  %vec.ind.next1249 = add <4 x i32> %vec.ind1248, <i32 4, i32 4, i32 4, i32 4>
  %354 = icmp eq i64 %index.next1243, 32
  br i1 %354, label %polly.loop_exit813.2, label %vector.body1240, !llvm.loop !112

polly.loop_exit813.2:                             ; preds = %vector.body1240
  %polly.indvar_next809.2 = add nuw nsw i64 %polly.indvar808.2, 1
  %exitcond901.2.not = icmp eq i64 %polly.indvar_next809.2, 16
  br i1 %exitcond901.2.not, label %polly.loop_header805.1.2, label %polly.loop_header805.2

polly.loop_header805.1.2:                         ; preds = %polly.loop_exit813.2, %polly.loop_exit813.1.2
  %polly.indvar808.1.2 = phi i64 [ %polly.indvar_next809.1.2, %polly.loop_exit813.1.2 ], [ 0, %polly.loop_exit813.2 ]
  %355 = add nuw nsw i64 %polly.indvar808.1.2, 64
  %356 = mul nuw nsw i64 %355, 480
  %357 = trunc i64 %355 to i32
  %broadcast.splatinsert1262 = insertelement <4 x i32> poison, i32 %357, i32 0
  %broadcast.splat1263 = shufflevector <4 x i32> %broadcast.splatinsert1262, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %polly.loop_header805.1.2
  %index1256 = phi i64 [ 0, %polly.loop_header805.1.2 ], [ %index.next1257, %vector.body1254 ]
  %vec.ind1260 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1.2 ], [ %vec.ind.next1261, %vector.body1254 ]
  %358 = add nuw nsw <4 x i64> %vec.ind1260, <i64 32, i64 32, i64 32, i64 32>
  %359 = trunc <4 x i64> %358 to <4 x i32>
  %360 = mul <4 x i32> %broadcast.splat1263, %359
  %361 = add <4 x i32> %360, <i32 1, i32 1, i32 1, i32 1>
  %362 = urem <4 x i32> %361, <i32 80, i32 80, i32 80, i32 80>
  %363 = sitofp <4 x i32> %362 to <4 x double>
  %364 = fmul fast <4 x double> %363, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %365 = extractelement <4 x i64> %358, i32 0
  %366 = shl i64 %365, 3
  %367 = add i64 %366, %356
  %368 = getelementptr i8, i8* %call1, i64 %367
  %369 = bitcast i8* %368 to <4 x double>*
  store <4 x double> %364, <4 x double>* %369, align 8, !alias.scope !102, !noalias !107
  %index.next1257 = add i64 %index1256, 4
  %vec.ind.next1261 = add <4 x i64> %vec.ind1260, <i64 4, i64 4, i64 4, i64 4>
  %370 = icmp eq i64 %index.next1257, 28
  br i1 %370, label %polly.loop_exit813.1.2, label %vector.body1254, !llvm.loop !113

polly.loop_exit813.1.2:                           ; preds = %vector.body1254
  %polly.indvar_next809.1.2 = add nuw nsw i64 %polly.indvar808.1.2, 1
  %exitcond901.1.2.not = icmp eq i64 %polly.indvar_next809.1.2, 16
  br i1 %exitcond901.1.2.not, label %init_array.exit, label %polly.loop_header805.1.2

polly.loop_header779.1:                           ; preds = %polly.loop_exit787, %polly.loop_exit787.1
  %polly.indvar782.1 = phi i64 [ %polly.indvar_next783.1, %polly.loop_exit787.1 ], [ 0, %polly.loop_exit787 ]
  %371 = mul nuw nsw i64 %polly.indvar782.1, 480
  %372 = trunc i64 %polly.indvar782.1 to i32
  %broadcast.splatinsert1132 = insertelement <4 x i32> poison, i32 %372, i32 0
  %broadcast.splat1133 = shufflevector <4 x i32> %broadcast.splatinsert1132, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1124

vector.body1124:                                  ; preds = %vector.body1124, %polly.loop_header779.1
  %index1126 = phi i64 [ 0, %polly.loop_header779.1 ], [ %index.next1127, %vector.body1124 ]
  %vec.ind1130 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header779.1 ], [ %vec.ind.next1131, %vector.body1124 ]
  %373 = add nuw nsw <4 x i64> %vec.ind1130, <i64 32, i64 32, i64 32, i64 32>
  %374 = trunc <4 x i64> %373 to <4 x i32>
  %375 = mul <4 x i32> %broadcast.splat1133, %374
  %376 = add <4 x i32> %375, <i32 2, i32 2, i32 2, i32 2>
  %377 = urem <4 x i32> %376, <i32 60, i32 60, i32 60, i32 60>
  %378 = sitofp <4 x i32> %377 to <4 x double>
  %379 = fmul fast <4 x double> %378, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %380 = extractelement <4 x i64> %373, i32 0
  %381 = shl i64 %380, 3
  %382 = add i64 %381, %371
  %383 = getelementptr i8, i8* %call2, i64 %382
  %384 = bitcast i8* %383 to <4 x double>*
  store <4 x double> %379, <4 x double>* %384, align 8, !alias.scope !103, !noalias !105
  %index.next1127 = add i64 %index1126, 4
  %vec.ind.next1131 = add <4 x i64> %vec.ind1130, <i64 4, i64 4, i64 4, i64 4>
  %385 = icmp eq i64 %index.next1127, 28
  br i1 %385, label %polly.loop_exit787.1, label %vector.body1124, !llvm.loop !114

polly.loop_exit787.1:                             ; preds = %vector.body1124
  %polly.indvar_next783.1 = add nuw nsw i64 %polly.indvar782.1, 1
  %exitcond907.1.not = icmp eq i64 %polly.indvar_next783.1, 32
  br i1 %exitcond907.1.not, label %polly.loop_header779.1935, label %polly.loop_header779.1

polly.loop_header779.1935:                        ; preds = %polly.loop_exit787.1, %polly.loop_exit787.1946
  %polly.indvar782.1934 = phi i64 [ %polly.indvar_next783.1944, %polly.loop_exit787.1946 ], [ 0, %polly.loop_exit787.1 ]
  %386 = add nuw nsw i64 %polly.indvar782.1934, 32
  %387 = mul nuw nsw i64 %386, 480
  %388 = trunc i64 %386 to i32
  %broadcast.splatinsert1146 = insertelement <4 x i32> poison, i32 %388, i32 0
  %broadcast.splat1147 = shufflevector <4 x i32> %broadcast.splatinsert1146, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %polly.loop_header779.1935
  %index1138 = phi i64 [ 0, %polly.loop_header779.1935 ], [ %index.next1139, %vector.body1136 ]
  %vec.ind1144 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header779.1935 ], [ %vec.ind.next1145, %vector.body1136 ]
  %389 = mul <4 x i32> %vec.ind1144, %broadcast.splat1147
  %390 = add <4 x i32> %389, <i32 2, i32 2, i32 2, i32 2>
  %391 = urem <4 x i32> %390, <i32 60, i32 60, i32 60, i32 60>
  %392 = sitofp <4 x i32> %391 to <4 x double>
  %393 = fmul fast <4 x double> %392, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %394 = shl i64 %index1138, 3
  %395 = add i64 %394, %387
  %396 = getelementptr i8, i8* %call2, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %393, <4 x double>* %397, align 8, !alias.scope !103, !noalias !105
  %index.next1139 = add i64 %index1138, 4
  %vec.ind.next1145 = add <4 x i32> %vec.ind1144, <i32 4, i32 4, i32 4, i32 4>
  %398 = icmp eq i64 %index.next1139, 32
  br i1 %398, label %polly.loop_exit787.1946, label %vector.body1136, !llvm.loop !115

polly.loop_exit787.1946:                          ; preds = %vector.body1136
  %polly.indvar_next783.1944 = add nuw nsw i64 %polly.indvar782.1934, 1
  %exitcond907.1945.not = icmp eq i64 %polly.indvar_next783.1944, 32
  br i1 %exitcond907.1945.not, label %polly.loop_header779.1.1, label %polly.loop_header779.1935

polly.loop_header779.1.1:                         ; preds = %polly.loop_exit787.1946, %polly.loop_exit787.1.1
  %polly.indvar782.1.1 = phi i64 [ %polly.indvar_next783.1.1, %polly.loop_exit787.1.1 ], [ 0, %polly.loop_exit787.1946 ]
  %399 = add nuw nsw i64 %polly.indvar782.1.1, 32
  %400 = mul nuw nsw i64 %399, 480
  %401 = trunc i64 %399 to i32
  %broadcast.splatinsert1158 = insertelement <4 x i32> poison, i32 %401, i32 0
  %broadcast.splat1159 = shufflevector <4 x i32> %broadcast.splatinsert1158, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %polly.loop_header779.1.1
  %index1152 = phi i64 [ 0, %polly.loop_header779.1.1 ], [ %index.next1153, %vector.body1150 ]
  %vec.ind1156 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header779.1.1 ], [ %vec.ind.next1157, %vector.body1150 ]
  %402 = add nuw nsw <4 x i64> %vec.ind1156, <i64 32, i64 32, i64 32, i64 32>
  %403 = trunc <4 x i64> %402 to <4 x i32>
  %404 = mul <4 x i32> %broadcast.splat1159, %403
  %405 = add <4 x i32> %404, <i32 2, i32 2, i32 2, i32 2>
  %406 = urem <4 x i32> %405, <i32 60, i32 60, i32 60, i32 60>
  %407 = sitofp <4 x i32> %406 to <4 x double>
  %408 = fmul fast <4 x double> %407, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %409 = extractelement <4 x i64> %402, i32 0
  %410 = shl i64 %409, 3
  %411 = add i64 %410, %400
  %412 = getelementptr i8, i8* %call2, i64 %411
  %413 = bitcast i8* %412 to <4 x double>*
  store <4 x double> %408, <4 x double>* %413, align 8, !alias.scope !103, !noalias !105
  %index.next1153 = add i64 %index1152, 4
  %vec.ind.next1157 = add <4 x i64> %vec.ind1156, <i64 4, i64 4, i64 4, i64 4>
  %414 = icmp eq i64 %index.next1153, 28
  br i1 %414, label %polly.loop_exit787.1.1, label %vector.body1150, !llvm.loop !116

polly.loop_exit787.1.1:                           ; preds = %vector.body1150
  %polly.indvar_next783.1.1 = add nuw nsw i64 %polly.indvar782.1.1, 1
  %exitcond907.1.1.not = icmp eq i64 %polly.indvar_next783.1.1, 32
  br i1 %exitcond907.1.1.not, label %polly.loop_header779.2, label %polly.loop_header779.1.1

polly.loop_header779.2:                           ; preds = %polly.loop_exit787.1.1, %polly.loop_exit787.2
  %polly.indvar782.2 = phi i64 [ %polly.indvar_next783.2, %polly.loop_exit787.2 ], [ 0, %polly.loop_exit787.1.1 ]
  %415 = add nuw nsw i64 %polly.indvar782.2, 64
  %416 = mul nuw nsw i64 %415, 480
  %417 = trunc i64 %415 to i32
  %broadcast.splatinsert1172 = insertelement <4 x i32> poison, i32 %417, i32 0
  %broadcast.splat1173 = shufflevector <4 x i32> %broadcast.splatinsert1172, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %polly.loop_header779.2
  %index1164 = phi i64 [ 0, %polly.loop_header779.2 ], [ %index.next1165, %vector.body1162 ]
  %vec.ind1170 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header779.2 ], [ %vec.ind.next1171, %vector.body1162 ]
  %418 = mul <4 x i32> %vec.ind1170, %broadcast.splat1173
  %419 = add <4 x i32> %418, <i32 2, i32 2, i32 2, i32 2>
  %420 = urem <4 x i32> %419, <i32 60, i32 60, i32 60, i32 60>
  %421 = sitofp <4 x i32> %420 to <4 x double>
  %422 = fmul fast <4 x double> %421, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %423 = shl i64 %index1164, 3
  %424 = add i64 %423, %416
  %425 = getelementptr i8, i8* %call2, i64 %424
  %426 = bitcast i8* %425 to <4 x double>*
  store <4 x double> %422, <4 x double>* %426, align 8, !alias.scope !103, !noalias !105
  %index.next1165 = add i64 %index1164, 4
  %vec.ind.next1171 = add <4 x i32> %vec.ind1170, <i32 4, i32 4, i32 4, i32 4>
  %427 = icmp eq i64 %index.next1165, 32
  br i1 %427, label %polly.loop_exit787.2, label %vector.body1162, !llvm.loop !117

polly.loop_exit787.2:                             ; preds = %vector.body1162
  %polly.indvar_next783.2 = add nuw nsw i64 %polly.indvar782.2, 1
  %exitcond907.2.not = icmp eq i64 %polly.indvar_next783.2, 16
  br i1 %exitcond907.2.not, label %polly.loop_header779.1.2, label %polly.loop_header779.2

polly.loop_header779.1.2:                         ; preds = %polly.loop_exit787.2, %polly.loop_exit787.1.2
  %polly.indvar782.1.2 = phi i64 [ %polly.indvar_next783.1.2, %polly.loop_exit787.1.2 ], [ 0, %polly.loop_exit787.2 ]
  %428 = add nuw nsw i64 %polly.indvar782.1.2, 64
  %429 = mul nuw nsw i64 %428, 480
  %430 = trunc i64 %428 to i32
  %broadcast.splatinsert1184 = insertelement <4 x i32> poison, i32 %430, i32 0
  %broadcast.splat1185 = shufflevector <4 x i32> %broadcast.splatinsert1184, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %polly.loop_header779.1.2
  %index1178 = phi i64 [ 0, %polly.loop_header779.1.2 ], [ %index.next1179, %vector.body1176 ]
  %vec.ind1182 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header779.1.2 ], [ %vec.ind.next1183, %vector.body1176 ]
  %431 = add nuw nsw <4 x i64> %vec.ind1182, <i64 32, i64 32, i64 32, i64 32>
  %432 = trunc <4 x i64> %431 to <4 x i32>
  %433 = mul <4 x i32> %broadcast.splat1185, %432
  %434 = add <4 x i32> %433, <i32 2, i32 2, i32 2, i32 2>
  %435 = urem <4 x i32> %434, <i32 60, i32 60, i32 60, i32 60>
  %436 = sitofp <4 x i32> %435 to <4 x double>
  %437 = fmul fast <4 x double> %436, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %438 = extractelement <4 x i64> %431, i32 0
  %439 = shl i64 %438, 3
  %440 = add i64 %439, %429
  %441 = getelementptr i8, i8* %call2, i64 %440
  %442 = bitcast i8* %441 to <4 x double>*
  store <4 x double> %437, <4 x double>* %442, align 8, !alias.scope !103, !noalias !105
  %index.next1179 = add i64 %index1178, 4
  %vec.ind.next1183 = add <4 x i64> %vec.ind1182, <i64 4, i64 4, i64 4, i64 4>
  %443 = icmp eq i64 %index.next1179, 28
  br i1 %443, label %polly.loop_exit787.1.2, label %vector.body1176, !llvm.loop !118

polly.loop_exit787.1.2:                           ; preds = %vector.body1176
  %polly.indvar_next783.1.2 = add nuw nsw i64 %polly.indvar782.1.2, 1
  %exitcond907.1.2.not = icmp eq i64 %polly.indvar_next783.1.2, 16
  br i1 %exitcond907.1.2.not, label %polly.loop_header805, label %polly.loop_header779.1.2

polly.loop_header752.1:                           ; preds = %polly.loop_exit760, %polly.loop_exit760.1
  %polly.indvar755.1 = phi i64 [ %polly.indvar_next756.1, %polly.loop_exit760.1 ], [ 0, %polly.loop_exit760 ]
  %444 = mul nuw nsw i64 %polly.indvar755.1, 640
  %445 = trunc i64 %polly.indvar755.1 to i32
  %broadcast.splatinsert1018 = insertelement <4 x i32> poison, i32 %445, i32 0
  %broadcast.splat1019 = shufflevector <4 x i32> %broadcast.splatinsert1018, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %polly.loop_header752.1
  %index1012 = phi i64 [ 0, %polly.loop_header752.1 ], [ %index.next1013, %vector.body1010 ]
  %vec.ind1016 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1 ], [ %vec.ind.next1017, %vector.body1010 ]
  %446 = add nuw nsw <4 x i64> %vec.ind1016, <i64 32, i64 32, i64 32, i64 32>
  %447 = trunc <4 x i64> %446 to <4 x i32>
  %448 = mul <4 x i32> %broadcast.splat1019, %447
  %449 = add <4 x i32> %448, <i32 3, i32 3, i32 3, i32 3>
  %450 = urem <4 x i32> %449, <i32 80, i32 80, i32 80, i32 80>
  %451 = sitofp <4 x i32> %450 to <4 x double>
  %452 = fmul fast <4 x double> %451, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %453 = extractelement <4 x i64> %446, i32 0
  %454 = shl i64 %453, 3
  %455 = add nuw nsw i64 %454, %444
  %456 = getelementptr i8, i8* %call, i64 %455
  %457 = bitcast i8* %456 to <4 x double>*
  store <4 x double> %452, <4 x double>* %457, align 8, !alias.scope !99, !noalias !101
  %index.next1013 = add i64 %index1012, 4
  %vec.ind.next1017 = add <4 x i64> %vec.ind1016, <i64 4, i64 4, i64 4, i64 4>
  %458 = icmp eq i64 %index.next1013, 32
  br i1 %458, label %polly.loop_exit760.1, label %vector.body1010, !llvm.loop !119

polly.loop_exit760.1:                             ; preds = %vector.body1010
  %polly.indvar_next756.1 = add nuw nsw i64 %polly.indvar755.1, 1
  %exitcond916.1.not = icmp eq i64 %polly.indvar_next756.1, 32
  br i1 %exitcond916.1.not, label %polly.loop_header752.2, label %polly.loop_header752.1

polly.loop_header752.2:                           ; preds = %polly.loop_exit760.1, %polly.loop_exit760.2
  %polly.indvar755.2 = phi i64 [ %polly.indvar_next756.2, %polly.loop_exit760.2 ], [ 0, %polly.loop_exit760.1 ]
  %459 = mul nuw nsw i64 %polly.indvar755.2, 640
  %460 = trunc i64 %polly.indvar755.2 to i32
  %broadcast.splatinsert1030 = insertelement <4 x i32> poison, i32 %460, i32 0
  %broadcast.splat1031 = shufflevector <4 x i32> %broadcast.splatinsert1030, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1022

vector.body1022:                                  ; preds = %vector.body1022, %polly.loop_header752.2
  %index1024 = phi i64 [ 0, %polly.loop_header752.2 ], [ %index.next1025, %vector.body1022 ]
  %vec.ind1028 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.2 ], [ %vec.ind.next1029, %vector.body1022 ]
  %461 = add nuw nsw <4 x i64> %vec.ind1028, <i64 64, i64 64, i64 64, i64 64>
  %462 = trunc <4 x i64> %461 to <4 x i32>
  %463 = mul <4 x i32> %broadcast.splat1031, %462
  %464 = add <4 x i32> %463, <i32 3, i32 3, i32 3, i32 3>
  %465 = urem <4 x i32> %464, <i32 80, i32 80, i32 80, i32 80>
  %466 = sitofp <4 x i32> %465 to <4 x double>
  %467 = fmul fast <4 x double> %466, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %468 = extractelement <4 x i64> %461, i32 0
  %469 = shl i64 %468, 3
  %470 = add nuw nsw i64 %469, %459
  %471 = getelementptr i8, i8* %call, i64 %470
  %472 = bitcast i8* %471 to <4 x double>*
  store <4 x double> %467, <4 x double>* %472, align 8, !alias.scope !99, !noalias !101
  %index.next1025 = add i64 %index1024, 4
  %vec.ind.next1029 = add <4 x i64> %vec.ind1028, <i64 4, i64 4, i64 4, i64 4>
  %473 = icmp eq i64 %index.next1025, 16
  br i1 %473, label %polly.loop_exit760.2, label %vector.body1022, !llvm.loop !120

polly.loop_exit760.2:                             ; preds = %vector.body1022
  %polly.indvar_next756.2 = add nuw nsw i64 %polly.indvar755.2, 1
  %exitcond916.2.not = icmp eq i64 %polly.indvar_next756.2, 32
  br i1 %exitcond916.2.not, label %polly.loop_header752.1949, label %polly.loop_header752.2

polly.loop_header752.1949:                        ; preds = %polly.loop_exit760.2, %polly.loop_exit760.1960
  %polly.indvar755.1948 = phi i64 [ %polly.indvar_next756.1958, %polly.loop_exit760.1960 ], [ 0, %polly.loop_exit760.2 ]
  %474 = add nuw nsw i64 %polly.indvar755.1948, 32
  %475 = mul nuw nsw i64 %474, 640
  %476 = trunc i64 %474 to i32
  %broadcast.splatinsert1044 = insertelement <4 x i32> poison, i32 %476, i32 0
  %broadcast.splat1045 = shufflevector <4 x i32> %broadcast.splatinsert1044, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %polly.loop_header752.1949
  %index1036 = phi i64 [ 0, %polly.loop_header752.1949 ], [ %index.next1037, %vector.body1034 ]
  %vec.ind1042 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.1949 ], [ %vec.ind.next1043, %vector.body1034 ]
  %477 = mul <4 x i32> %vec.ind1042, %broadcast.splat1045
  %478 = add <4 x i32> %477, <i32 3, i32 3, i32 3, i32 3>
  %479 = urem <4 x i32> %478, <i32 80, i32 80, i32 80, i32 80>
  %480 = sitofp <4 x i32> %479 to <4 x double>
  %481 = fmul fast <4 x double> %480, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %482 = shl i64 %index1036, 3
  %483 = add nuw nsw i64 %482, %475
  %484 = getelementptr i8, i8* %call, i64 %483
  %485 = bitcast i8* %484 to <4 x double>*
  store <4 x double> %481, <4 x double>* %485, align 8, !alias.scope !99, !noalias !101
  %index.next1037 = add i64 %index1036, 4
  %vec.ind.next1043 = add <4 x i32> %vec.ind1042, <i32 4, i32 4, i32 4, i32 4>
  %486 = icmp eq i64 %index.next1037, 32
  br i1 %486, label %polly.loop_exit760.1960, label %vector.body1034, !llvm.loop !121

polly.loop_exit760.1960:                          ; preds = %vector.body1034
  %polly.indvar_next756.1958 = add nuw nsw i64 %polly.indvar755.1948, 1
  %exitcond916.1959.not = icmp eq i64 %polly.indvar_next756.1958, 32
  br i1 %exitcond916.1959.not, label %polly.loop_header752.1.1, label %polly.loop_header752.1949

polly.loop_header752.1.1:                         ; preds = %polly.loop_exit760.1960, %polly.loop_exit760.1.1
  %polly.indvar755.1.1 = phi i64 [ %polly.indvar_next756.1.1, %polly.loop_exit760.1.1 ], [ 0, %polly.loop_exit760.1960 ]
  %487 = add nuw nsw i64 %polly.indvar755.1.1, 32
  %488 = mul nuw nsw i64 %487, 640
  %489 = trunc i64 %487 to i32
  %broadcast.splatinsert1056 = insertelement <4 x i32> poison, i32 %489, i32 0
  %broadcast.splat1057 = shufflevector <4 x i32> %broadcast.splatinsert1056, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1048

vector.body1048:                                  ; preds = %vector.body1048, %polly.loop_header752.1.1
  %index1050 = phi i64 [ 0, %polly.loop_header752.1.1 ], [ %index.next1051, %vector.body1048 ]
  %vec.ind1054 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.1 ], [ %vec.ind.next1055, %vector.body1048 ]
  %490 = add nuw nsw <4 x i64> %vec.ind1054, <i64 32, i64 32, i64 32, i64 32>
  %491 = trunc <4 x i64> %490 to <4 x i32>
  %492 = mul <4 x i32> %broadcast.splat1057, %491
  %493 = add <4 x i32> %492, <i32 3, i32 3, i32 3, i32 3>
  %494 = urem <4 x i32> %493, <i32 80, i32 80, i32 80, i32 80>
  %495 = sitofp <4 x i32> %494 to <4 x double>
  %496 = fmul fast <4 x double> %495, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %497 = extractelement <4 x i64> %490, i32 0
  %498 = shl i64 %497, 3
  %499 = add nuw nsw i64 %498, %488
  %500 = getelementptr i8, i8* %call, i64 %499
  %501 = bitcast i8* %500 to <4 x double>*
  store <4 x double> %496, <4 x double>* %501, align 8, !alias.scope !99, !noalias !101
  %index.next1051 = add i64 %index1050, 4
  %vec.ind.next1055 = add <4 x i64> %vec.ind1054, <i64 4, i64 4, i64 4, i64 4>
  %502 = icmp eq i64 %index.next1051, 32
  br i1 %502, label %polly.loop_exit760.1.1, label %vector.body1048, !llvm.loop !122

polly.loop_exit760.1.1:                           ; preds = %vector.body1048
  %polly.indvar_next756.1.1 = add nuw nsw i64 %polly.indvar755.1.1, 1
  %exitcond916.1.1.not = icmp eq i64 %polly.indvar_next756.1.1, 32
  br i1 %exitcond916.1.1.not, label %polly.loop_header752.2.1, label %polly.loop_header752.1.1

polly.loop_header752.2.1:                         ; preds = %polly.loop_exit760.1.1, %polly.loop_exit760.2.1
  %polly.indvar755.2.1 = phi i64 [ %polly.indvar_next756.2.1, %polly.loop_exit760.2.1 ], [ 0, %polly.loop_exit760.1.1 ]
  %503 = add nuw nsw i64 %polly.indvar755.2.1, 32
  %504 = mul nuw nsw i64 %503, 640
  %505 = trunc i64 %503 to i32
  %broadcast.splatinsert1068 = insertelement <4 x i32> poison, i32 %505, i32 0
  %broadcast.splat1069 = shufflevector <4 x i32> %broadcast.splatinsert1068, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %polly.loop_header752.2.1
  %index1062 = phi i64 [ 0, %polly.loop_header752.2.1 ], [ %index.next1063, %vector.body1060 ]
  %vec.ind1066 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.2.1 ], [ %vec.ind.next1067, %vector.body1060 ]
  %506 = add nuw nsw <4 x i64> %vec.ind1066, <i64 64, i64 64, i64 64, i64 64>
  %507 = trunc <4 x i64> %506 to <4 x i32>
  %508 = mul <4 x i32> %broadcast.splat1069, %507
  %509 = add <4 x i32> %508, <i32 3, i32 3, i32 3, i32 3>
  %510 = urem <4 x i32> %509, <i32 80, i32 80, i32 80, i32 80>
  %511 = sitofp <4 x i32> %510 to <4 x double>
  %512 = fmul fast <4 x double> %511, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %513 = extractelement <4 x i64> %506, i32 0
  %514 = shl i64 %513, 3
  %515 = add nuw nsw i64 %514, %504
  %516 = getelementptr i8, i8* %call, i64 %515
  %517 = bitcast i8* %516 to <4 x double>*
  store <4 x double> %512, <4 x double>* %517, align 8, !alias.scope !99, !noalias !101
  %index.next1063 = add i64 %index1062, 4
  %vec.ind.next1067 = add <4 x i64> %vec.ind1066, <i64 4, i64 4, i64 4, i64 4>
  %518 = icmp eq i64 %index.next1063, 16
  br i1 %518, label %polly.loop_exit760.2.1, label %vector.body1060, !llvm.loop !123

polly.loop_exit760.2.1:                           ; preds = %vector.body1060
  %polly.indvar_next756.2.1 = add nuw nsw i64 %polly.indvar755.2.1, 1
  %exitcond916.2.1.not = icmp eq i64 %polly.indvar_next756.2.1, 32
  br i1 %exitcond916.2.1.not, label %polly.loop_header752.2963, label %polly.loop_header752.2.1

polly.loop_header752.2963:                        ; preds = %polly.loop_exit760.2.1, %polly.loop_exit760.2974
  %polly.indvar755.2962 = phi i64 [ %polly.indvar_next756.2972, %polly.loop_exit760.2974 ], [ 0, %polly.loop_exit760.2.1 ]
  %519 = add nuw nsw i64 %polly.indvar755.2962, 64
  %520 = mul nuw nsw i64 %519, 640
  %521 = trunc i64 %519 to i32
  %broadcast.splatinsert1082 = insertelement <4 x i32> poison, i32 %521, i32 0
  %broadcast.splat1083 = shufflevector <4 x i32> %broadcast.splatinsert1082, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1072

vector.body1072:                                  ; preds = %vector.body1072, %polly.loop_header752.2963
  %index1074 = phi i64 [ 0, %polly.loop_header752.2963 ], [ %index.next1075, %vector.body1072 ]
  %vec.ind1080 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.2963 ], [ %vec.ind.next1081, %vector.body1072 ]
  %522 = mul <4 x i32> %vec.ind1080, %broadcast.splat1083
  %523 = add <4 x i32> %522, <i32 3, i32 3, i32 3, i32 3>
  %524 = urem <4 x i32> %523, <i32 80, i32 80, i32 80, i32 80>
  %525 = sitofp <4 x i32> %524 to <4 x double>
  %526 = fmul fast <4 x double> %525, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %527 = shl i64 %index1074, 3
  %528 = add nuw nsw i64 %527, %520
  %529 = getelementptr i8, i8* %call, i64 %528
  %530 = bitcast i8* %529 to <4 x double>*
  store <4 x double> %526, <4 x double>* %530, align 8, !alias.scope !99, !noalias !101
  %index.next1075 = add i64 %index1074, 4
  %vec.ind.next1081 = add <4 x i32> %vec.ind1080, <i32 4, i32 4, i32 4, i32 4>
  %531 = icmp eq i64 %index.next1075, 32
  br i1 %531, label %polly.loop_exit760.2974, label %vector.body1072, !llvm.loop !124

polly.loop_exit760.2974:                          ; preds = %vector.body1072
  %polly.indvar_next756.2972 = add nuw nsw i64 %polly.indvar755.2962, 1
  %exitcond916.2973.not = icmp eq i64 %polly.indvar_next756.2972, 16
  br i1 %exitcond916.2973.not, label %polly.loop_header752.1.2, label %polly.loop_header752.2963

polly.loop_header752.1.2:                         ; preds = %polly.loop_exit760.2974, %polly.loop_exit760.1.2
  %polly.indvar755.1.2 = phi i64 [ %polly.indvar_next756.1.2, %polly.loop_exit760.1.2 ], [ 0, %polly.loop_exit760.2974 ]
  %532 = add nuw nsw i64 %polly.indvar755.1.2, 64
  %533 = mul nuw nsw i64 %532, 640
  %534 = trunc i64 %532 to i32
  %broadcast.splatinsert1094 = insertelement <4 x i32> poison, i32 %534, i32 0
  %broadcast.splat1095 = shufflevector <4 x i32> %broadcast.splatinsert1094, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.body1086, %polly.loop_header752.1.2
  %index1088 = phi i64 [ 0, %polly.loop_header752.1.2 ], [ %index.next1089, %vector.body1086 ]
  %vec.ind1092 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.2 ], [ %vec.ind.next1093, %vector.body1086 ]
  %535 = add nuw nsw <4 x i64> %vec.ind1092, <i64 32, i64 32, i64 32, i64 32>
  %536 = trunc <4 x i64> %535 to <4 x i32>
  %537 = mul <4 x i32> %broadcast.splat1095, %536
  %538 = add <4 x i32> %537, <i32 3, i32 3, i32 3, i32 3>
  %539 = urem <4 x i32> %538, <i32 80, i32 80, i32 80, i32 80>
  %540 = sitofp <4 x i32> %539 to <4 x double>
  %541 = fmul fast <4 x double> %540, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %542 = extractelement <4 x i64> %535, i32 0
  %543 = shl i64 %542, 3
  %544 = add nuw nsw i64 %543, %533
  %545 = getelementptr i8, i8* %call, i64 %544
  %546 = bitcast i8* %545 to <4 x double>*
  store <4 x double> %541, <4 x double>* %546, align 8, !alias.scope !99, !noalias !101
  %index.next1089 = add i64 %index1088, 4
  %vec.ind.next1093 = add <4 x i64> %vec.ind1092, <i64 4, i64 4, i64 4, i64 4>
  %547 = icmp eq i64 %index.next1089, 32
  br i1 %547, label %polly.loop_exit760.1.2, label %vector.body1086, !llvm.loop !125

polly.loop_exit760.1.2:                           ; preds = %vector.body1086
  %polly.indvar_next756.1.2 = add nuw nsw i64 %polly.indvar755.1.2, 1
  %exitcond916.1.2.not = icmp eq i64 %polly.indvar_next756.1.2, 16
  br i1 %exitcond916.1.2.not, label %polly.loop_header752.2.2, label %polly.loop_header752.1.2

polly.loop_header752.2.2:                         ; preds = %polly.loop_exit760.1.2, %polly.loop_exit760.2.2
  %polly.indvar755.2.2 = phi i64 [ %polly.indvar_next756.2.2, %polly.loop_exit760.2.2 ], [ 0, %polly.loop_exit760.1.2 ]
  %548 = add nuw nsw i64 %polly.indvar755.2.2, 64
  %549 = mul nuw nsw i64 %548, 640
  %550 = trunc i64 %548 to i32
  %broadcast.splatinsert1106 = insertelement <4 x i32> poison, i32 %550, i32 0
  %broadcast.splat1107 = shufflevector <4 x i32> %broadcast.splatinsert1106, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1098

vector.body1098:                                  ; preds = %vector.body1098, %polly.loop_header752.2.2
  %index1100 = phi i64 [ 0, %polly.loop_header752.2.2 ], [ %index.next1101, %vector.body1098 ]
  %vec.ind1104 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.2.2 ], [ %vec.ind.next1105, %vector.body1098 ]
  %551 = add nuw nsw <4 x i64> %vec.ind1104, <i64 64, i64 64, i64 64, i64 64>
  %552 = trunc <4 x i64> %551 to <4 x i32>
  %553 = mul <4 x i32> %broadcast.splat1107, %552
  %554 = add <4 x i32> %553, <i32 3, i32 3, i32 3, i32 3>
  %555 = urem <4 x i32> %554, <i32 80, i32 80, i32 80, i32 80>
  %556 = sitofp <4 x i32> %555 to <4 x double>
  %557 = fmul fast <4 x double> %556, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %558 = extractelement <4 x i64> %551, i32 0
  %559 = shl i64 %558, 3
  %560 = add nuw nsw i64 %559, %549
  %561 = getelementptr i8, i8* %call, i64 %560
  %562 = bitcast i8* %561 to <4 x double>*
  store <4 x double> %557, <4 x double>* %562, align 8, !alias.scope !99, !noalias !101
  %index.next1101 = add i64 %index1100, 4
  %vec.ind.next1105 = add <4 x i64> %vec.ind1104, <i64 4, i64 4, i64 4, i64 4>
  %563 = icmp eq i64 %index.next1101, 16
  br i1 %563, label %polly.loop_exit760.2.2, label %vector.body1098, !llvm.loop !126

polly.loop_exit760.2.2:                           ; preds = %vector.body1098
  %polly.indvar_next756.2.2 = add nuw nsw i64 %polly.indvar755.2.2, 1
  %exitcond916.2.2.not = icmp eq i64 %polly.indvar_next756.2.2, 16
  br i1 %exitcond916.2.2.not, label %polly.loop_header779, label %polly.loop_header752.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 20}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 8}
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
!45 = !{!"llvm.loop.tile.size", i32 4}
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
