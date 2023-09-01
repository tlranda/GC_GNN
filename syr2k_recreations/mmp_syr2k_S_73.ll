; ModuleID = 'syr2k_recreations//mmp_syr2k_S_73.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_73.c"
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
  %call748 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1609 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1609, %call2
  %polly.access.call2629 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2629, %call1
  %2 = or i1 %0, %1
  %polly.access.call649 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call649, %call2
  %4 = icmp ule i8* %polly.access.call2629, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call649, %call1
  %8 = icmp ule i8* %polly.access.call1609, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header734, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep935 = getelementptr i8, i8* %call2, i64 %12
  %scevgep934 = getelementptr i8, i8* %call2, i64 %11
  %scevgep933 = getelementptr i8, i8* %call1, i64 %12
  %scevgep932 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep932, %scevgep935
  %bound1 = icmp ult i8* %scevgep934, %scevgep933
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
  br i1 %exitcond18.not.i, label %vector.ph939, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph939:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert946 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat947 = shufflevector <4 x i64> %broadcast.splatinsert946, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body938

vector.body938:                                   ; preds = %vector.body938, %vector.ph939
  %index940 = phi i64 [ 0, %vector.ph939 ], [ %index.next941, %vector.body938 ]
  %vec.ind944 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph939 ], [ %vec.ind.next945, %vector.body938 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind944, %broadcast.splat947
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv7.i, i64 %index940
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next941 = add i64 %index940, 4
  %vec.ind.next945 = add <4 x i64> %vec.ind944, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next941, 80
  br i1 %40, label %for.inc41.i, label %vector.body938, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body938
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph939, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit795.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start431, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1292, label %vector.ph1221

vector.ph1221:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %vector.ph1221
  %index1222 = phi i64 [ 0, %vector.ph1221 ], [ %index.next1223, %vector.body1220 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i, i64 %index1222
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1223 = add i64 %index1222, 4
  %46 = icmp eq i64 %index.next1223, %n.vec
  br i1 %46, label %middle.block1218, label %vector.body1220, !llvm.loop !18

middle.block1218:                                 ; preds = %vector.body1220
  %cmp.n1225 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1225, label %for.inc6.i, label %for.body3.i46.preheader1292

for.body3.i46.preheader1292:                      ; preds = %for.body3.i46.preheader, %middle.block1218
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1218 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1292, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1292 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1218, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting432
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start264, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1241 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1241, label %for.body3.i60.preheader1291, label %vector.ph1242

vector.ph1242:                                    ; preds = %for.body3.i60.preheader
  %n.vec1244 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %vector.ph1242
  %index1245 = phi i64 [ 0, %vector.ph1242 ], [ %index.next1246, %vector.body1240 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i52, i64 %index1245
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1249 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1249, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1246 = add i64 %index1245, 4
  %57 = icmp eq i64 %index.next1246, %n.vec1244
  br i1 %57, label %middle.block1238, label %vector.body1240, !llvm.loop !60

middle.block1238:                                 ; preds = %vector.body1240
  %cmp.n1248 = icmp eq i64 %indvars.iv21.i52, %n.vec1244
  br i1 %cmp.n1248, label %for.inc6.i63, label %for.body3.i60.preheader1291

for.body3.i60.preheader1291:                      ; preds = %for.body3.i60.preheader, %middle.block1238
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1244, %middle.block1238 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1291, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1291 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1238, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting265
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1267 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1267, label %for.body3.i99.preheader1290, label %vector.ph1268

vector.ph1268:                                    ; preds = %for.body3.i99.preheader
  %n.vec1270 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %vector.ph1268
  %index1271 = phi i64 [ 0, %vector.ph1268 ], [ %index.next1272, %vector.body1266 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i91, i64 %index1271
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1275 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1275, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1272 = add i64 %index1271, 4
  %68 = icmp eq i64 %index.next1272, %n.vec1270
  br i1 %68, label %middle.block1264, label %vector.body1266, !llvm.loop !62

middle.block1264:                                 ; preds = %vector.body1266
  %cmp.n1274 = icmp eq i64 %indvars.iv21.i91, %n.vec1270
  br i1 %cmp.n1274, label %for.inc6.i102, label %for.body3.i99.preheader1290

for.body3.i99.preheader1290:                      ; preds = %for.body3.i99.preheader, %middle.block1264
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1270, %middle.block1264 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1290, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1290 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1264, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit229.3
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1279 = phi i64 [ %indvar.next1280, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1279, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1281 = icmp ult i64 %88, 4
  br i1 %min.iters.check1281, label %polly.loop_header191.preheader, label %vector.ph1282

vector.ph1282:                                    ; preds = %polly.loop_header
  %n.vec1284 = and i64 %88, -4
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %vector.ph1282
  %index1285 = phi i64 [ 0, %vector.ph1282 ], [ %index.next1286, %vector.body1278 ]
  %90 = shl nuw nsw i64 %index1285, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1289 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1289, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1286 = add i64 %index1285, 4
  %95 = icmp eq i64 %index.next1286, %n.vec1284
  br i1 %95, label %middle.block1276, label %vector.body1278, !llvm.loop !74

middle.block1276:                                 ; preds = %vector.body1278
  %cmp.n1288 = icmp eq i64 %88, %n.vec1284
  br i1 %cmp.n1288, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1276
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1284, %middle.block1276 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1276
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1280 = add i64 %indvar1279, 1
  br i1 %exitcond823.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond822.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond822.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit229.3
  %polly.loop_cond204 = phi i1 [ false, %polly.loop_exit229.3 ], [ true, %polly.loop_header199.preheader ]
  %polly.indvar202 = phi i64 [ 1, %polly.loop_exit229.3 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, -50
  %98 = icmp slt i64 %97, -10
  %99 = select i1 %98, i64 %97, i64 -10
  %100 = mul nuw nsw i64 %polly.indvar202, 50
  %101 = mul nuw nsw i64 %polly.indvar202, 400
  %102 = shl nsw i64 %99, 3
  %103 = add nsw i64 %102, 480
  br label %polly.loop_header205

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %104 = mul nuw nsw i64 %polly.indvar208, 400
  %scevgep814 = getelementptr i8, i8* %malloccall, i64 %104
  %105 = mul nuw nsw i64 %polly.indvar208, 480
  %106 = add nuw nsw i64 %101, %105
  %scevgep815 = getelementptr i8, i8* %call2, i64 %106
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %scevgep814, i8* align 8 %scevgep815, i64 %103, i1 false)
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond.not, label %polly.loop_header221.preheader, label %polly.loop_header205

polly.loop_header221.preheader:                   ; preds = %polly.loop_header205
  %107 = add nsw i64 %99, 60
  br label %polly.loop_header227

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221.preheader
  %polly.indvar230 = phi i64 [ 0, %polly.loop_header221.preheader ], [ %polly.indvar_next231, %polly.loop_exit235 ]
  %108 = add nuw nsw i64 %polly.indvar230, %100
  %109 = shl i64 %108, 3
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond820.not = icmp eq i64 %polly.indvar_next231, %107
  br i1 %exitcond820.not, label %polly.loop_header227.1, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %indvars.iv816 = phi i64 [ %indvars.iv.next817, %polly.loop_exit241 ], [ 1, %polly.loop_header227 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ 0, %polly.loop_header227 ]
  %polly.access.mul.Packed_MemRef_call2248 = mul nuw nsw i64 %polly.indvar236, 50
  %polly.access.add.Packed_MemRef_call2249 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248, %polly.indvar230
  %polly.access.Packed_MemRef_call2250 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249
  %_p_scalar_251 = load double, double* %polly.access.Packed_MemRef_call2250, align 8
  %110 = mul nuw nsw i64 %polly.indvar236, 480
  %111 = add nuw nsw i64 %110, %109
  %scevgep256 = getelementptr i8, i8* %call1, i64 %111
  %scevgep256257 = bitcast i8* %scevgep256 to double*
  %_p_scalar_258 = load double, double* %scevgep256257, align 8, !alias.scope !71, !noalias !77
  %112 = mul nuw nsw i64 %polly.indvar236, 640
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %indvars.iv.next817 = add nuw nsw i64 %indvars.iv816, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next237, 20
  br i1 %exitcond819.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header233
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %113 = mul nuw nsw i64 %polly.indvar242, 480
  %114 = add nuw nsw i64 %113, %109
  %scevgep245 = getelementptr i8, i8* %call1, i64 %114
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112 = fmul fast double %_p_scalar_251, %_p_scalar_247
  %polly.access.mul.Packed_MemRef_call2252 = mul nuw nsw i64 %polly.indvar242, 50
  %polly.access.add.Packed_MemRef_call2253 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252, %polly.indvar230
  %polly.access.Packed_MemRef_call2254 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253
  %_p_scalar_255 = load double, double* %polly.access.Packed_MemRef_call2254, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_258, %_p_scalar_255
  %115 = shl nuw nsw i64 %polly.indvar242, 3
  %116 = add nuw nsw i64 %115, %112
  %scevgep259 = getelementptr i8, i8* %call, i64 %116
  %scevgep259260 = bitcast i8* %scevgep259 to double*
  %_p_scalar_261 = load double, double* %scevgep259260, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_261
  store double %p_add42.i118, double* %scevgep259260, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next243, %indvars.iv816
  br i1 %exitcond818.not, label %polly.loop_exit241, label %polly.loop_header239

polly.start264:                                   ; preds = %kernel_syr2k.exit
  %malloccall266 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header350

polly.exiting265:                                 ; preds = %polly.loop_exit396.3
  tail call void @free(i8* nonnull %malloccall266)
  br label %kernel_syr2k.exit90

polly.loop_header350:                             ; preds = %polly.loop_exit358, %polly.start264
  %indvar1253 = phi i64 [ %indvar.next1254, %polly.loop_exit358 ], [ 0, %polly.start264 ]
  %polly.indvar353 = phi i64 [ %polly.indvar_next354, %polly.loop_exit358 ], [ 1, %polly.start264 ]
  %117 = add i64 %indvar1253, 1
  %118 = mul nuw nsw i64 %polly.indvar353, 640
  %scevgep362 = getelementptr i8, i8* %call, i64 %118
  %min.iters.check1255 = icmp ult i64 %117, 4
  br i1 %min.iters.check1255, label %polly.loop_header356.preheader, label %vector.ph1256

vector.ph1256:                                    ; preds = %polly.loop_header350
  %n.vec1258 = and i64 %117, -4
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.body1252, %vector.ph1256
  %index1259 = phi i64 [ 0, %vector.ph1256 ], [ %index.next1260, %vector.body1252 ]
  %119 = shl nuw nsw i64 %index1259, 3
  %120 = getelementptr i8, i8* %scevgep362, i64 %119
  %121 = bitcast i8* %120 to <4 x double>*
  %wide.load1263 = load <4 x double>, <4 x double>* %121, align 8, !alias.scope !78, !noalias !80
  %122 = fmul fast <4 x double> %wide.load1263, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %123 = bitcast i8* %120 to <4 x double>*
  store <4 x double> %122, <4 x double>* %123, align 8, !alias.scope !78, !noalias !80
  %index.next1260 = add i64 %index1259, 4
  %124 = icmp eq i64 %index.next1260, %n.vec1258
  br i1 %124, label %middle.block1250, label %vector.body1252, !llvm.loop !84

middle.block1250:                                 ; preds = %vector.body1252
  %cmp.n1262 = icmp eq i64 %117, %n.vec1258
  br i1 %cmp.n1262, label %polly.loop_exit358, label %polly.loop_header356.preheader

polly.loop_header356.preheader:                   ; preds = %polly.loop_header350, %middle.block1250
  %polly.indvar359.ph = phi i64 [ 0, %polly.loop_header350 ], [ %n.vec1258, %middle.block1250 ]
  br label %polly.loop_header356

polly.loop_exit358:                               ; preds = %polly.loop_header356, %middle.block1250
  %polly.indvar_next354 = add nuw nsw i64 %polly.indvar353, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next354, 80
  %indvar.next1254 = add i64 %indvar1253, 1
  br i1 %exitcond837.not, label %polly.loop_header366.preheader, label %polly.loop_header350

polly.loop_header366.preheader:                   ; preds = %polly.loop_exit358
  %Packed_MemRef_call2267 = bitcast i8* %malloccall266 to double*
  br label %polly.loop_header366

polly.loop_header356:                             ; preds = %polly.loop_header356.preheader, %polly.loop_header356
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_header356 ], [ %polly.indvar359.ph, %polly.loop_header356.preheader ]
  %125 = shl nuw nsw i64 %polly.indvar359, 3
  %scevgep363 = getelementptr i8, i8* %scevgep362, i64 %125
  %scevgep363364 = bitcast i8* %scevgep363 to double*
  %_p_scalar_365 = load double, double* %scevgep363364, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_365, 1.200000e+00
  store double %p_mul.i57, double* %scevgep363364, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next360, %polly.indvar353
  br i1 %exitcond836.not, label %polly.loop_exit358, label %polly.loop_header356, !llvm.loop !85

polly.loop_header366:                             ; preds = %polly.loop_header366.preheader, %polly.loop_exit396.3
  %polly.loop_cond371 = phi i1 [ false, %polly.loop_exit396.3 ], [ true, %polly.loop_header366.preheader ]
  %polly.indvar369 = phi i64 [ 1, %polly.loop_exit396.3 ], [ 0, %polly.loop_header366.preheader ]
  %126 = mul nuw nsw i64 %polly.indvar369, -50
  %127 = icmp slt i64 %126, -10
  %128 = select i1 %127, i64 %126, i64 -10
  %129 = mul nuw nsw i64 %polly.indvar369, 50
  %130 = mul nuw nsw i64 %polly.indvar369, 400
  %131 = shl nsw i64 %128, 3
  %132 = add nsw i64 %131, 480
  br label %polly.loop_header372

polly.loop_header372:                             ; preds = %polly.loop_header372, %polly.loop_header366
  %polly.indvar375 = phi i64 [ 0, %polly.loop_header366 ], [ %polly.indvar_next376, %polly.loop_header372 ]
  %133 = mul nuw nsw i64 %polly.indvar375, 400
  %scevgep825 = getelementptr i8, i8* %malloccall266, i64 %133
  %134 = mul nuw nsw i64 %polly.indvar375, 480
  %135 = add nuw nsw i64 %130, %134
  %scevgep826 = getelementptr i8, i8* %call2, i64 %135
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %scevgep825, i8* align 8 %scevgep826, i64 %132, i1 false)
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next376, 80
  br i1 %exitcond827.not, label %polly.loop_header388.preheader, label %polly.loop_header372

polly.loop_header388.preheader:                   ; preds = %polly.loop_header372
  %136 = add nsw i64 %128, 60
  br label %polly.loop_header394

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.loop_header388.preheader
  %polly.indvar397 = phi i64 [ 0, %polly.loop_header388.preheader ], [ %polly.indvar_next398, %polly.loop_exit402 ]
  %137 = add nuw nsw i64 %polly.indvar397, %129
  %138 = shl i64 %137, 3
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_exit408
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond834.not = icmp eq i64 %polly.indvar_next398, %136
  br i1 %exitcond834.not, label %polly.loop_header394.1, label %polly.loop_header394

polly.loop_header400:                             ; preds = %polly.loop_exit408, %polly.loop_header394
  %indvars.iv830 = phi i64 [ %indvars.iv.next831, %polly.loop_exit408 ], [ 1, %polly.loop_header394 ]
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit408 ], [ 0, %polly.loop_header394 ]
  %polly.access.mul.Packed_MemRef_call2267415 = mul nuw nsw i64 %polly.indvar403, 50
  %polly.access.add.Packed_MemRef_call2267416 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267415, %polly.indvar397
  %polly.access.Packed_MemRef_call2267417 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416
  %_p_scalar_418 = load double, double* %polly.access.Packed_MemRef_call2267417, align 8
  %139 = mul nuw nsw i64 %polly.indvar403, 480
  %140 = add nuw nsw i64 %139, %138
  %scevgep423 = getelementptr i8, i8* %call1, i64 %140
  %scevgep423424 = bitcast i8* %scevgep423 to double*
  %_p_scalar_425 = load double, double* %scevgep423424, align 8, !alias.scope !81, !noalias !86
  %141 = mul nuw nsw i64 %polly.indvar403, 640
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_header406
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next831 = add nuw nsw i64 %indvars.iv830, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next404, 20
  br i1 %exitcond833.not, label %polly.loop_exit402, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_header406, %polly.loop_header400
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header400 ], [ %polly.indvar_next410, %polly.loop_header406 ]
  %142 = mul nuw nsw i64 %polly.indvar409, 480
  %143 = add nuw nsw i64 %142, %138
  %scevgep412 = getelementptr i8, i8* %call1, i64 %143
  %scevgep412413 = bitcast i8* %scevgep412 to double*
  %_p_scalar_414 = load double, double* %scevgep412413, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73 = fmul fast double %_p_scalar_418, %_p_scalar_414
  %polly.access.mul.Packed_MemRef_call2267419 = mul nuw nsw i64 %polly.indvar409, 50
  %polly.access.add.Packed_MemRef_call2267420 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419, %polly.indvar397
  %polly.access.Packed_MemRef_call2267421 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420
  %_p_scalar_422 = load double, double* %polly.access.Packed_MemRef_call2267421, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_425, %_p_scalar_422
  %144 = shl nuw nsw i64 %polly.indvar409, 3
  %145 = add nuw nsw i64 %144, %141
  %scevgep426 = getelementptr i8, i8* %call, i64 %145
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_428
  store double %p_add42.i79, double* %scevgep426427, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next410, %indvars.iv830
  br i1 %exitcond832.not, label %polly.loop_exit408, label %polly.loop_header406

polly.start431:                                   ; preds = %init_array.exit
  %malloccall433 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header517

polly.exiting432:                                 ; preds = %polly.loop_exit563.3
  tail call void @free(i8* nonnull %malloccall433)
  br label %kernel_syr2k.exit

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.start431
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit525 ], [ 0, %polly.start431 ]
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_exit525 ], [ 1, %polly.start431 ]
  %146 = add i64 %indvar, 1
  %147 = mul nuw nsw i64 %polly.indvar520, 640
  %scevgep529 = getelementptr i8, i8* %call, i64 %147
  %min.iters.check1229 = icmp ult i64 %146, 4
  br i1 %min.iters.check1229, label %polly.loop_header523.preheader, label %vector.ph1230

vector.ph1230:                                    ; preds = %polly.loop_header517
  %n.vec1232 = and i64 %146, -4
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %vector.ph1230
  %index1233 = phi i64 [ 0, %vector.ph1230 ], [ %index.next1234, %vector.body1228 ]
  %148 = shl nuw nsw i64 %index1233, 3
  %149 = getelementptr i8, i8* %scevgep529, i64 %148
  %150 = bitcast i8* %149 to <4 x double>*
  %wide.load1237 = load <4 x double>, <4 x double>* %150, align 8, !alias.scope !87, !noalias !89
  %151 = fmul fast <4 x double> %wide.load1237, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %152 = bitcast i8* %149 to <4 x double>*
  store <4 x double> %151, <4 x double>* %152, align 8, !alias.scope !87, !noalias !89
  %index.next1234 = add i64 %index1233, 4
  %153 = icmp eq i64 %index.next1234, %n.vec1232
  br i1 %153, label %middle.block1226, label %vector.body1228, !llvm.loop !93

middle.block1226:                                 ; preds = %vector.body1228
  %cmp.n1236 = icmp eq i64 %146, %n.vec1232
  br i1 %cmp.n1236, label %polly.loop_exit525, label %polly.loop_header523.preheader

polly.loop_header523.preheader:                   ; preds = %polly.loop_header517, %middle.block1226
  %polly.indvar526.ph = phi i64 [ 0, %polly.loop_header517 ], [ %n.vec1232, %middle.block1226 ]
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_header523, %middle.block1226
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond851.not = icmp eq i64 %polly.indvar_next521, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond851.not, label %polly.loop_header533.preheader, label %polly.loop_header517

polly.loop_header533.preheader:                   ; preds = %polly.loop_exit525
  %Packed_MemRef_call2434 = bitcast i8* %malloccall433 to double*
  br label %polly.loop_header533

polly.loop_header523:                             ; preds = %polly.loop_header523.preheader, %polly.loop_header523
  %polly.indvar526 = phi i64 [ %polly.indvar_next527, %polly.loop_header523 ], [ %polly.indvar526.ph, %polly.loop_header523.preheader ]
  %154 = shl nuw nsw i64 %polly.indvar526, 3
  %scevgep530 = getelementptr i8, i8* %scevgep529, i64 %154
  %scevgep530531 = bitcast i8* %scevgep530 to double*
  %_p_scalar_532 = load double, double* %scevgep530531, align 8, !alias.scope !87, !noalias !89
  %p_mul.i = fmul fast double %_p_scalar_532, 1.200000e+00
  store double %p_mul.i, double* %scevgep530531, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond850.not = icmp eq i64 %polly.indvar_next527, %polly.indvar520
  br i1 %exitcond850.not, label %polly.loop_exit525, label %polly.loop_header523, !llvm.loop !94

polly.loop_header533:                             ; preds = %polly.loop_header533.preheader, %polly.loop_exit563.3
  %polly.loop_cond538 = phi i1 [ false, %polly.loop_exit563.3 ], [ true, %polly.loop_header533.preheader ]
  %polly.indvar536 = phi i64 [ 1, %polly.loop_exit563.3 ], [ 0, %polly.loop_header533.preheader ]
  %155 = mul nuw nsw i64 %polly.indvar536, -50
  %156 = icmp slt i64 %155, -10
  %157 = select i1 %156, i64 %155, i64 -10
  %158 = mul nuw nsw i64 %polly.indvar536, 50
  %159 = mul nuw nsw i64 %polly.indvar536, 400
  %160 = shl nsw i64 %157, 3
  %161 = add nsw i64 %160, 480
  br label %polly.loop_header539

polly.loop_header539:                             ; preds = %polly.loop_header539, %polly.loop_header533
  %polly.indvar542 = phi i64 [ 0, %polly.loop_header533 ], [ %polly.indvar_next543, %polly.loop_header539 ]
  %162 = mul nuw nsw i64 %polly.indvar542, 400
  %scevgep839 = getelementptr i8, i8* %malloccall433, i64 %162
  %163 = mul nuw nsw i64 %polly.indvar542, 480
  %164 = add nuw nsw i64 %159, %163
  %scevgep840 = getelementptr i8, i8* %call2, i64 %164
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %scevgep839, i8* align 8 %scevgep840, i64 %161, i1 false)
  %polly.indvar_next543 = add nuw nsw i64 %polly.indvar542, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next543, 80
  br i1 %exitcond841.not, label %polly.loop_header555.preheader, label %polly.loop_header539

polly.loop_header555.preheader:                   ; preds = %polly.loop_header539
  %165 = add nsw i64 %157, 60
  br label %polly.loop_header561

polly.loop_header561:                             ; preds = %polly.loop_exit569, %polly.loop_header555.preheader
  %polly.indvar564 = phi i64 [ 0, %polly.loop_header555.preheader ], [ %polly.indvar_next565, %polly.loop_exit569 ]
  %166 = add nuw nsw i64 %polly.indvar564, %158
  %167 = shl i64 %166, 3
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_exit575
  %polly.indvar_next565 = add nuw nsw i64 %polly.indvar564, 1
  %exitcond848.not = icmp eq i64 %polly.indvar_next565, %165
  br i1 %exitcond848.not, label %polly.loop_header561.1, label %polly.loop_header561

polly.loop_header567:                             ; preds = %polly.loop_exit575, %polly.loop_header561
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit575 ], [ 1, %polly.loop_header561 ]
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_exit575 ], [ 0, %polly.loop_header561 ]
  %polly.access.mul.Packed_MemRef_call2434582 = mul nuw nsw i64 %polly.indvar570, 50
  %polly.access.add.Packed_MemRef_call2434583 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434582, %polly.indvar564
  %polly.access.Packed_MemRef_call2434584 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583
  %_p_scalar_585 = load double, double* %polly.access.Packed_MemRef_call2434584, align 8
  %168 = mul nuw nsw i64 %polly.indvar570, 480
  %169 = add nuw nsw i64 %168, %167
  %scevgep590 = getelementptr i8, i8* %call1, i64 %169
  %scevgep590591 = bitcast i8* %scevgep590 to double*
  %_p_scalar_592 = load double, double* %scevgep590591, align 8, !alias.scope !90, !noalias !95
  %170 = mul nuw nsw i64 %polly.indvar570, 640
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_header573
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %indvars.iv.next845 = add nuw nsw i64 %indvars.iv844, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next571, 20
  br i1 %exitcond847.not, label %polly.loop_exit569, label %polly.loop_header567

polly.loop_header573:                             ; preds = %polly.loop_header573, %polly.loop_header567
  %polly.indvar576 = phi i64 [ 0, %polly.loop_header567 ], [ %polly.indvar_next577, %polly.loop_header573 ]
  %171 = mul nuw nsw i64 %polly.indvar576, 480
  %172 = add nuw nsw i64 %171, %167
  %scevgep579 = getelementptr i8, i8* %call1, i64 %172
  %scevgep579580 = bitcast i8* %scevgep579 to double*
  %_p_scalar_581 = load double, double* %scevgep579580, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i = fmul fast double %_p_scalar_585, %_p_scalar_581
  %polly.access.mul.Packed_MemRef_call2434586 = mul nuw nsw i64 %polly.indvar576, 50
  %polly.access.add.Packed_MemRef_call2434587 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586, %polly.indvar564
  %polly.access.Packed_MemRef_call2434588 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587
  %_p_scalar_589 = load double, double* %polly.access.Packed_MemRef_call2434588, align 8
  %p_mul37.i = fmul fast double %_p_scalar_592, %_p_scalar_589
  %173 = shl nuw nsw i64 %polly.indvar576, 3
  %174 = add nuw nsw i64 %173, %170
  %scevgep593 = getelementptr i8, i8* %call, i64 %174
  %scevgep593594 = bitcast i8* %scevgep593 to double*
  %_p_scalar_595 = load double, double* %scevgep593594, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_595
  store double %p_add42.i, double* %scevgep593594, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next577, %indvars.iv844
  br i1 %exitcond846.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header734:                             ; preds = %entry, %polly.loop_exit742
  %polly.indvar737 = phi i64 [ %polly.indvar_next738, %polly.loop_exit742 ], [ 0, %entry ]
  %175 = mul nuw nsw i64 %polly.indvar737, 640
  %176 = trunc i64 %polly.indvar737 to i32
  %broadcast.splatinsert960 = insertelement <4 x i32> poison, i32 %176, i32 0
  %broadcast.splat961 = shufflevector <4 x i32> %broadcast.splatinsert960, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body950

vector.body950:                                   ; preds = %vector.body950, %polly.loop_header734
  %index952 = phi i64 [ 0, %polly.loop_header734 ], [ %index.next953, %vector.body950 ]
  %vec.ind958 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734 ], [ %vec.ind.next959, %vector.body950 ]
  %177 = mul <4 x i32> %vec.ind958, %broadcast.splat961
  %178 = add <4 x i32> %177, <i32 3, i32 3, i32 3, i32 3>
  %179 = urem <4 x i32> %178, <i32 80, i32 80, i32 80, i32 80>
  %180 = sitofp <4 x i32> %179 to <4 x double>
  %181 = fmul fast <4 x double> %180, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %182 = shl i64 %index952, 3
  %183 = add nuw nsw i64 %182, %175
  %184 = getelementptr i8, i8* %call, i64 %183
  %185 = bitcast i8* %184 to <4 x double>*
  store <4 x double> %181, <4 x double>* %185, align 8, !alias.scope !96, !noalias !98
  %index.next953 = add i64 %index952, 4
  %vec.ind.next959 = add <4 x i32> %vec.ind958, <i32 4, i32 4, i32 4, i32 4>
  %186 = icmp eq i64 %index.next953, 32
  br i1 %186, label %polly.loop_exit742, label %vector.body950, !llvm.loop !101

polly.loop_exit742:                               ; preds = %vector.body950
  %polly.indvar_next738 = add nuw nsw i64 %polly.indvar737, 1
  %exitcond870.not = icmp eq i64 %polly.indvar_next738, 32
  br i1 %exitcond870.not, label %polly.loop_header734.1, label %polly.loop_header734

polly.loop_header761:                             ; preds = %polly.loop_exit742.2.2, %polly.loop_exit769
  %polly.indvar764 = phi i64 [ %polly.indvar_next765, %polly.loop_exit769 ], [ 0, %polly.loop_exit742.2.2 ]
  %187 = mul nuw nsw i64 %polly.indvar764, 480
  %188 = trunc i64 %polly.indvar764 to i32
  %broadcast.splatinsert1074 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat1075 = shufflevector <4 x i32> %broadcast.splatinsert1074, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1064

vector.body1064:                                  ; preds = %vector.body1064, %polly.loop_header761
  %index1066 = phi i64 [ 0, %polly.loop_header761 ], [ %index.next1067, %vector.body1064 ]
  %vec.ind1072 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761 ], [ %vec.ind.next1073, %vector.body1064 ]
  %189 = mul <4 x i32> %vec.ind1072, %broadcast.splat1075
  %190 = add <4 x i32> %189, <i32 2, i32 2, i32 2, i32 2>
  %191 = urem <4 x i32> %190, <i32 60, i32 60, i32 60, i32 60>
  %192 = sitofp <4 x i32> %191 to <4 x double>
  %193 = fmul fast <4 x double> %192, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %194 = shl i64 %index1066, 3
  %195 = add i64 %194, %187
  %196 = getelementptr i8, i8* %call2, i64 %195
  %197 = bitcast i8* %196 to <4 x double>*
  store <4 x double> %193, <4 x double>* %197, align 8, !alias.scope !100, !noalias !102
  %index.next1067 = add i64 %index1066, 4
  %vec.ind.next1073 = add <4 x i32> %vec.ind1072, <i32 4, i32 4, i32 4, i32 4>
  %198 = icmp eq i64 %index.next1067, 32
  br i1 %198, label %polly.loop_exit769, label %vector.body1064, !llvm.loop !103

polly.loop_exit769:                               ; preds = %vector.body1064
  %polly.indvar_next765 = add nuw nsw i64 %polly.indvar764, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next765, 32
  br i1 %exitcond861.not, label %polly.loop_header761.1, label %polly.loop_header761

polly.loop_header787:                             ; preds = %polly.loop_exit769.1.2, %polly.loop_exit795
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %polly.loop_exit769.1.2 ]
  %199 = mul nuw nsw i64 %polly.indvar790, 480
  %200 = trunc i64 %polly.indvar790 to i32
  %broadcast.splatinsert1152 = insertelement <4 x i32> poison, i32 %200, i32 0
  %broadcast.splat1153 = shufflevector <4 x i32> %broadcast.splatinsert1152, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1142

vector.body1142:                                  ; preds = %vector.body1142, %polly.loop_header787
  %index1144 = phi i64 [ 0, %polly.loop_header787 ], [ %index.next1145, %vector.body1142 ]
  %vec.ind1150 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787 ], [ %vec.ind.next1151, %vector.body1142 ]
  %201 = mul <4 x i32> %vec.ind1150, %broadcast.splat1153
  %202 = add <4 x i32> %201, <i32 1, i32 1, i32 1, i32 1>
  %203 = urem <4 x i32> %202, <i32 80, i32 80, i32 80, i32 80>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %206 = shl i64 %index1144, 3
  %207 = add i64 %206, %199
  %208 = getelementptr i8, i8* %call1, i64 %207
  %209 = bitcast i8* %208 to <4 x double>*
  store <4 x double> %205, <4 x double>* %209, align 8, !alias.scope !99, !noalias !104
  %index.next1145 = add i64 %index1144, 4
  %vec.ind.next1151 = add <4 x i32> %vec.ind1150, <i32 4, i32 4, i32 4, i32 4>
  %210 = icmp eq i64 %index.next1145, 32
  br i1 %210, label %polly.loop_exit795, label %vector.body1142, !llvm.loop !105

polly.loop_exit795:                               ; preds = %vector.body1142
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next791, 32
  br i1 %exitcond855.not, label %polly.loop_header787.1, label %polly.loop_header787

polly.loop_header227.1:                           ; preds = %polly.loop_exit235, %polly.loop_exit235.1
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_exit235 ]
  %211 = add nuw nsw i64 %polly.indvar230.1, %100
  %212 = shl i64 %211, 3
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit241.1, %polly.loop_header227.1
  %indvars.iv816.1 = phi i64 [ %indvars.iv.next817.1, %polly.loop_exit241.1 ], [ 21, %polly.loop_header227.1 ]
  %polly.indvar236.1 = phi i64 [ %polly.indvar_next237.1, %polly.loop_exit241.1 ], [ 0, %polly.loop_header227.1 ]
  %213 = add nuw nsw i64 %polly.indvar236.1, 20
  %polly.access.mul.Packed_MemRef_call2248.1 = mul nuw nsw i64 %213, 50
  %polly.access.add.Packed_MemRef_call2249.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.1, %polly.indvar230.1
  %polly.access.Packed_MemRef_call2250.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1
  %_p_scalar_251.1 = load double, double* %polly.access.Packed_MemRef_call2250.1, align 8
  %214 = mul nuw nsw i64 %213, 480
  %215 = add nuw nsw i64 %214, %212
  %scevgep256.1 = getelementptr i8, i8* %call1, i64 %215
  %scevgep256257.1 = bitcast i8* %scevgep256.1 to double*
  %_p_scalar_258.1 = load double, double* %scevgep256257.1, align 8, !alias.scope !71, !noalias !77
  %216 = mul nuw nsw i64 %213, 640
  br label %polly.loop_header239.1

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_header233.1
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_header233.1 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %217 = mul nuw nsw i64 %polly.indvar242.1, 480
  %218 = add nuw nsw i64 %217, %212
  %scevgep245.1 = getelementptr i8, i8* %call1, i64 %218
  %scevgep245246.1 = bitcast i8* %scevgep245.1 to double*
  %_p_scalar_247.1 = load double, double* %scevgep245246.1, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.1 = fmul fast double %_p_scalar_251.1, %_p_scalar_247.1
  %polly.access.mul.Packed_MemRef_call2252.1 = mul nuw nsw i64 %polly.indvar242.1, 50
  %polly.access.add.Packed_MemRef_call2253.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.1, %polly.indvar230.1
  %polly.access.Packed_MemRef_call2254.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1
  %_p_scalar_255.1 = load double, double* %polly.access.Packed_MemRef_call2254.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_258.1, %_p_scalar_255.1
  %219 = shl nuw nsw i64 %polly.indvar242.1, 3
  %220 = add nuw nsw i64 %219, %216
  %scevgep259.1 = getelementptr i8, i8* %call, i64 %220
  %scevgep259260.1 = bitcast i8* %scevgep259.1 to double*
  %_p_scalar_261.1 = load double, double* %scevgep259260.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_261.1
  store double %p_add42.i118.1, double* %scevgep259260.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %exitcond818.1.not = icmp eq i64 %polly.indvar_next243.1, %indvars.iv816.1
  br i1 %exitcond818.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.1

polly.loop_exit241.1:                             ; preds = %polly.loop_header239.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %indvars.iv.next817.1 = add nuw nsw i64 %indvars.iv816.1, 1
  %exitcond819.1.not = icmp eq i64 %polly.indvar_next237.1, 20
  br i1 %exitcond819.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %exitcond820.1.not = icmp eq i64 %polly.indvar_next231.1, %107
  br i1 %exitcond820.1.not, label %polly.loop_header227.2, label %polly.loop_header227.1

polly.loop_header227.2:                           ; preds = %polly.loop_exit235.1, %polly.loop_exit235.2
  %polly.indvar230.2 = phi i64 [ %polly.indvar_next231.2, %polly.loop_exit235.2 ], [ 0, %polly.loop_exit235.1 ]
  %221 = add nuw nsw i64 %polly.indvar230.2, %100
  %222 = shl i64 %221, 3
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_exit241.2, %polly.loop_header227.2
  %indvars.iv816.2 = phi i64 [ %indvars.iv.next817.2, %polly.loop_exit241.2 ], [ 41, %polly.loop_header227.2 ]
  %polly.indvar236.2 = phi i64 [ %polly.indvar_next237.2, %polly.loop_exit241.2 ], [ 0, %polly.loop_header227.2 ]
  %223 = add nuw nsw i64 %polly.indvar236.2, 40
  %polly.access.mul.Packed_MemRef_call2248.2 = mul nuw nsw i64 %223, 50
  %polly.access.add.Packed_MemRef_call2249.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.2, %polly.indvar230.2
  %polly.access.Packed_MemRef_call2250.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.2
  %_p_scalar_251.2 = load double, double* %polly.access.Packed_MemRef_call2250.2, align 8
  %224 = mul nuw nsw i64 %223, 480
  %225 = add nuw nsw i64 %224, %222
  %scevgep256.2 = getelementptr i8, i8* %call1, i64 %225
  %scevgep256257.2 = bitcast i8* %scevgep256.2 to double*
  %_p_scalar_258.2 = load double, double* %scevgep256257.2, align 8, !alias.scope !71, !noalias !77
  %226 = mul nuw nsw i64 %223, 640
  br label %polly.loop_header239.2

polly.loop_header239.2:                           ; preds = %polly.loop_header239.2, %polly.loop_header233.2
  %polly.indvar242.2 = phi i64 [ 0, %polly.loop_header233.2 ], [ %polly.indvar_next243.2, %polly.loop_header239.2 ]
  %227 = mul nuw nsw i64 %polly.indvar242.2, 480
  %228 = add nuw nsw i64 %227, %222
  %scevgep245.2 = getelementptr i8, i8* %call1, i64 %228
  %scevgep245246.2 = bitcast i8* %scevgep245.2 to double*
  %_p_scalar_247.2 = load double, double* %scevgep245246.2, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.2 = fmul fast double %_p_scalar_251.2, %_p_scalar_247.2
  %polly.access.mul.Packed_MemRef_call2252.2 = mul nuw nsw i64 %polly.indvar242.2, 50
  %polly.access.add.Packed_MemRef_call2253.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.2, %polly.indvar230.2
  %polly.access.Packed_MemRef_call2254.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.2
  %_p_scalar_255.2 = load double, double* %polly.access.Packed_MemRef_call2254.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_258.2, %_p_scalar_255.2
  %229 = shl nuw nsw i64 %polly.indvar242.2, 3
  %230 = add nuw nsw i64 %229, %226
  %scevgep259.2 = getelementptr i8, i8* %call, i64 %230
  %scevgep259260.2 = bitcast i8* %scevgep259.2 to double*
  %_p_scalar_261.2 = load double, double* %scevgep259260.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_261.2
  store double %p_add42.i118.2, double* %scevgep259260.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.2 = add nuw nsw i64 %polly.indvar242.2, 1
  %exitcond818.2.not = icmp eq i64 %polly.indvar_next243.2, %indvars.iv816.2
  br i1 %exitcond818.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.2

polly.loop_exit241.2:                             ; preds = %polly.loop_header239.2
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %indvars.iv.next817.2 = add nuw nsw i64 %indvars.iv816.2, 1
  %exitcond819.2.not = icmp eq i64 %polly.indvar_next237.2, 20
  br i1 %exitcond819.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.2

polly.loop_exit235.2:                             ; preds = %polly.loop_exit241.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %exitcond820.2.not = icmp eq i64 %polly.indvar_next231.2, %107
  br i1 %exitcond820.2.not, label %polly.loop_header227.3, label %polly.loop_header227.2

polly.loop_header227.3:                           ; preds = %polly.loop_exit235.2, %polly.loop_exit235.3
  %polly.indvar230.3 = phi i64 [ %polly.indvar_next231.3, %polly.loop_exit235.3 ], [ 0, %polly.loop_exit235.2 ]
  %231 = add nuw nsw i64 %polly.indvar230.3, %100
  %232 = shl i64 %231, 3
  br label %polly.loop_header233.3

polly.loop_header233.3:                           ; preds = %polly.loop_exit241.3, %polly.loop_header227.3
  %indvars.iv816.3 = phi i64 [ %indvars.iv.next817.3, %polly.loop_exit241.3 ], [ 61, %polly.loop_header227.3 ]
  %polly.indvar236.3 = phi i64 [ %polly.indvar_next237.3, %polly.loop_exit241.3 ], [ 0, %polly.loop_header227.3 ]
  %233 = add nuw nsw i64 %polly.indvar236.3, 60
  %polly.access.mul.Packed_MemRef_call2248.3 = mul nuw nsw i64 %233, 50
  %polly.access.add.Packed_MemRef_call2249.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2248.3, %polly.indvar230.3
  %polly.access.Packed_MemRef_call2250.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.3
  %_p_scalar_251.3 = load double, double* %polly.access.Packed_MemRef_call2250.3, align 8
  %234 = mul nuw nsw i64 %233, 480
  %235 = add nuw nsw i64 %234, %232
  %scevgep256.3 = getelementptr i8, i8* %call1, i64 %235
  %scevgep256257.3 = bitcast i8* %scevgep256.3 to double*
  %_p_scalar_258.3 = load double, double* %scevgep256257.3, align 8, !alias.scope !71, !noalias !77
  %236 = mul nuw nsw i64 %233, 640
  br label %polly.loop_header239.3

polly.loop_header239.3:                           ; preds = %polly.loop_header239.3, %polly.loop_header233.3
  %polly.indvar242.3 = phi i64 [ 0, %polly.loop_header233.3 ], [ %polly.indvar_next243.3, %polly.loop_header239.3 ]
  %237 = mul nuw nsw i64 %polly.indvar242.3, 480
  %238 = add nuw nsw i64 %237, %232
  %scevgep245.3 = getelementptr i8, i8* %call1, i64 %238
  %scevgep245246.3 = bitcast i8* %scevgep245.3 to double*
  %_p_scalar_247.3 = load double, double* %scevgep245246.3, align 8, !alias.scope !71, !noalias !77
  %p_mul27.i112.3 = fmul fast double %_p_scalar_251.3, %_p_scalar_247.3
  %polly.access.mul.Packed_MemRef_call2252.3 = mul nuw nsw i64 %polly.indvar242.3, 50
  %polly.access.add.Packed_MemRef_call2253.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.3, %polly.indvar230.3
  %polly.access.Packed_MemRef_call2254.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.3
  %_p_scalar_255.3 = load double, double* %polly.access.Packed_MemRef_call2254.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_258.3, %_p_scalar_255.3
  %239 = shl nuw nsw i64 %polly.indvar242.3, 3
  %240 = add nuw nsw i64 %239, %236
  %scevgep259.3 = getelementptr i8, i8* %call, i64 %240
  %scevgep259260.3 = bitcast i8* %scevgep259.3 to double*
  %_p_scalar_261.3 = load double, double* %scevgep259260.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_261.3
  store double %p_add42.i118.3, double* %scevgep259260.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.3 = add nuw nsw i64 %polly.indvar242.3, 1
  %exitcond818.3.not = icmp eq i64 %polly.indvar_next243.3, %indvars.iv816.3
  br i1 %exitcond818.3.not, label %polly.loop_exit241.3, label %polly.loop_header239.3

polly.loop_exit241.3:                             ; preds = %polly.loop_header239.3
  %polly.indvar_next237.3 = add nuw nsw i64 %polly.indvar236.3, 1
  %indvars.iv.next817.3 = add nuw nsw i64 %indvars.iv816.3, 1
  %exitcond819.3.not = icmp eq i64 %polly.indvar_next237.3, 20
  br i1 %exitcond819.3.not, label %polly.loop_exit235.3, label %polly.loop_header233.3

polly.loop_exit235.3:                             ; preds = %polly.loop_exit241.3
  %polly.indvar_next231.3 = add nuw nsw i64 %polly.indvar230.3, 1
  %exitcond820.3.not = icmp eq i64 %polly.indvar_next231.3, %107
  br i1 %exitcond820.3.not, label %polly.loop_exit229.3, label %polly.loop_header227.3

polly.loop_exit229.3:                             ; preds = %polly.loop_exit235.3
  br i1 %polly.loop_cond204, label %polly.loop_header199, label %polly.exiting

polly.loop_header394.1:                           ; preds = %polly.loop_exit402, %polly.loop_exit402.1
  %polly.indvar397.1 = phi i64 [ %polly.indvar_next398.1, %polly.loop_exit402.1 ], [ 0, %polly.loop_exit402 ]
  %241 = add nuw nsw i64 %polly.indvar397.1, %129
  %242 = shl i64 %241, 3
  br label %polly.loop_header400.1

polly.loop_header400.1:                           ; preds = %polly.loop_exit408.1, %polly.loop_header394.1
  %indvars.iv830.1 = phi i64 [ %indvars.iv.next831.1, %polly.loop_exit408.1 ], [ 21, %polly.loop_header394.1 ]
  %polly.indvar403.1 = phi i64 [ %polly.indvar_next404.1, %polly.loop_exit408.1 ], [ 0, %polly.loop_header394.1 ]
  %243 = add nuw nsw i64 %polly.indvar403.1, 20
  %polly.access.mul.Packed_MemRef_call2267415.1 = mul nuw nsw i64 %243, 50
  %polly.access.add.Packed_MemRef_call2267416.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267415.1, %polly.indvar397.1
  %polly.access.Packed_MemRef_call2267417.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.1
  %_p_scalar_418.1 = load double, double* %polly.access.Packed_MemRef_call2267417.1, align 8
  %244 = mul nuw nsw i64 %243, 480
  %245 = add nuw nsw i64 %244, %242
  %scevgep423.1 = getelementptr i8, i8* %call1, i64 %245
  %scevgep423424.1 = bitcast i8* %scevgep423.1 to double*
  %_p_scalar_425.1 = load double, double* %scevgep423424.1, align 8, !alias.scope !81, !noalias !86
  %246 = mul nuw nsw i64 %243, 640
  br label %polly.loop_header406.1

polly.loop_header406.1:                           ; preds = %polly.loop_header406.1, %polly.loop_header400.1
  %polly.indvar409.1 = phi i64 [ 0, %polly.loop_header400.1 ], [ %polly.indvar_next410.1, %polly.loop_header406.1 ]
  %247 = mul nuw nsw i64 %polly.indvar409.1, 480
  %248 = add nuw nsw i64 %247, %242
  %scevgep412.1 = getelementptr i8, i8* %call1, i64 %248
  %scevgep412413.1 = bitcast i8* %scevgep412.1 to double*
  %_p_scalar_414.1 = load double, double* %scevgep412413.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.1 = fmul fast double %_p_scalar_418.1, %_p_scalar_414.1
  %polly.access.mul.Packed_MemRef_call2267419.1 = mul nuw nsw i64 %polly.indvar409.1, 50
  %polly.access.add.Packed_MemRef_call2267420.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.1, %polly.indvar397.1
  %polly.access.Packed_MemRef_call2267421.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.1
  %_p_scalar_422.1 = load double, double* %polly.access.Packed_MemRef_call2267421.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_425.1, %_p_scalar_422.1
  %249 = shl nuw nsw i64 %polly.indvar409.1, 3
  %250 = add nuw nsw i64 %249, %246
  %scevgep426.1 = getelementptr i8, i8* %call, i64 %250
  %scevgep426427.1 = bitcast i8* %scevgep426.1 to double*
  %_p_scalar_428.1 = load double, double* %scevgep426427.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_428.1
  store double %p_add42.i79.1, double* %scevgep426427.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410.1 = add nuw nsw i64 %polly.indvar409.1, 1
  %exitcond832.1.not = icmp eq i64 %polly.indvar_next410.1, %indvars.iv830.1
  br i1 %exitcond832.1.not, label %polly.loop_exit408.1, label %polly.loop_header406.1

polly.loop_exit408.1:                             ; preds = %polly.loop_header406.1
  %polly.indvar_next404.1 = add nuw nsw i64 %polly.indvar403.1, 1
  %indvars.iv.next831.1 = add nuw nsw i64 %indvars.iv830.1, 1
  %exitcond833.1.not = icmp eq i64 %polly.indvar_next404.1, 20
  br i1 %exitcond833.1.not, label %polly.loop_exit402.1, label %polly.loop_header400.1

polly.loop_exit402.1:                             ; preds = %polly.loop_exit408.1
  %polly.indvar_next398.1 = add nuw nsw i64 %polly.indvar397.1, 1
  %exitcond834.1.not = icmp eq i64 %polly.indvar_next398.1, %136
  br i1 %exitcond834.1.not, label %polly.loop_header394.2, label %polly.loop_header394.1

polly.loop_header394.2:                           ; preds = %polly.loop_exit402.1, %polly.loop_exit402.2
  %polly.indvar397.2 = phi i64 [ %polly.indvar_next398.2, %polly.loop_exit402.2 ], [ 0, %polly.loop_exit402.1 ]
  %251 = add nuw nsw i64 %polly.indvar397.2, %129
  %252 = shl i64 %251, 3
  br label %polly.loop_header400.2

polly.loop_header400.2:                           ; preds = %polly.loop_exit408.2, %polly.loop_header394.2
  %indvars.iv830.2 = phi i64 [ %indvars.iv.next831.2, %polly.loop_exit408.2 ], [ 41, %polly.loop_header394.2 ]
  %polly.indvar403.2 = phi i64 [ %polly.indvar_next404.2, %polly.loop_exit408.2 ], [ 0, %polly.loop_header394.2 ]
  %253 = add nuw nsw i64 %polly.indvar403.2, 40
  %polly.access.mul.Packed_MemRef_call2267415.2 = mul nuw nsw i64 %253, 50
  %polly.access.add.Packed_MemRef_call2267416.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267415.2, %polly.indvar397.2
  %polly.access.Packed_MemRef_call2267417.2 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.2
  %_p_scalar_418.2 = load double, double* %polly.access.Packed_MemRef_call2267417.2, align 8
  %254 = mul nuw nsw i64 %253, 480
  %255 = add nuw nsw i64 %254, %252
  %scevgep423.2 = getelementptr i8, i8* %call1, i64 %255
  %scevgep423424.2 = bitcast i8* %scevgep423.2 to double*
  %_p_scalar_425.2 = load double, double* %scevgep423424.2, align 8, !alias.scope !81, !noalias !86
  %256 = mul nuw nsw i64 %253, 640
  br label %polly.loop_header406.2

polly.loop_header406.2:                           ; preds = %polly.loop_header406.2, %polly.loop_header400.2
  %polly.indvar409.2 = phi i64 [ 0, %polly.loop_header400.2 ], [ %polly.indvar_next410.2, %polly.loop_header406.2 ]
  %257 = mul nuw nsw i64 %polly.indvar409.2, 480
  %258 = add nuw nsw i64 %257, %252
  %scevgep412.2 = getelementptr i8, i8* %call1, i64 %258
  %scevgep412413.2 = bitcast i8* %scevgep412.2 to double*
  %_p_scalar_414.2 = load double, double* %scevgep412413.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.2 = fmul fast double %_p_scalar_418.2, %_p_scalar_414.2
  %polly.access.mul.Packed_MemRef_call2267419.2 = mul nuw nsw i64 %polly.indvar409.2, 50
  %polly.access.add.Packed_MemRef_call2267420.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.2, %polly.indvar397.2
  %polly.access.Packed_MemRef_call2267421.2 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.2
  %_p_scalar_422.2 = load double, double* %polly.access.Packed_MemRef_call2267421.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_425.2, %_p_scalar_422.2
  %259 = shl nuw nsw i64 %polly.indvar409.2, 3
  %260 = add nuw nsw i64 %259, %256
  %scevgep426.2 = getelementptr i8, i8* %call, i64 %260
  %scevgep426427.2 = bitcast i8* %scevgep426.2 to double*
  %_p_scalar_428.2 = load double, double* %scevgep426427.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_428.2
  store double %p_add42.i79.2, double* %scevgep426427.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410.2 = add nuw nsw i64 %polly.indvar409.2, 1
  %exitcond832.2.not = icmp eq i64 %polly.indvar_next410.2, %indvars.iv830.2
  br i1 %exitcond832.2.not, label %polly.loop_exit408.2, label %polly.loop_header406.2

polly.loop_exit408.2:                             ; preds = %polly.loop_header406.2
  %polly.indvar_next404.2 = add nuw nsw i64 %polly.indvar403.2, 1
  %indvars.iv.next831.2 = add nuw nsw i64 %indvars.iv830.2, 1
  %exitcond833.2.not = icmp eq i64 %polly.indvar_next404.2, 20
  br i1 %exitcond833.2.not, label %polly.loop_exit402.2, label %polly.loop_header400.2

polly.loop_exit402.2:                             ; preds = %polly.loop_exit408.2
  %polly.indvar_next398.2 = add nuw nsw i64 %polly.indvar397.2, 1
  %exitcond834.2.not = icmp eq i64 %polly.indvar_next398.2, %136
  br i1 %exitcond834.2.not, label %polly.loop_header394.3, label %polly.loop_header394.2

polly.loop_header394.3:                           ; preds = %polly.loop_exit402.2, %polly.loop_exit402.3
  %polly.indvar397.3 = phi i64 [ %polly.indvar_next398.3, %polly.loop_exit402.3 ], [ 0, %polly.loop_exit402.2 ]
  %261 = add nuw nsw i64 %polly.indvar397.3, %129
  %262 = shl i64 %261, 3
  br label %polly.loop_header400.3

polly.loop_header400.3:                           ; preds = %polly.loop_exit408.3, %polly.loop_header394.3
  %indvars.iv830.3 = phi i64 [ %indvars.iv.next831.3, %polly.loop_exit408.3 ], [ 61, %polly.loop_header394.3 ]
  %polly.indvar403.3 = phi i64 [ %polly.indvar_next404.3, %polly.loop_exit408.3 ], [ 0, %polly.loop_header394.3 ]
  %263 = add nuw nsw i64 %polly.indvar403.3, 60
  %polly.access.mul.Packed_MemRef_call2267415.3 = mul nuw nsw i64 %263, 50
  %polly.access.add.Packed_MemRef_call2267416.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267415.3, %polly.indvar397.3
  %polly.access.Packed_MemRef_call2267417.3 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.3
  %_p_scalar_418.3 = load double, double* %polly.access.Packed_MemRef_call2267417.3, align 8
  %264 = mul nuw nsw i64 %263, 480
  %265 = add nuw nsw i64 %264, %262
  %scevgep423.3 = getelementptr i8, i8* %call1, i64 %265
  %scevgep423424.3 = bitcast i8* %scevgep423.3 to double*
  %_p_scalar_425.3 = load double, double* %scevgep423424.3, align 8, !alias.scope !81, !noalias !86
  %266 = mul nuw nsw i64 %263, 640
  br label %polly.loop_header406.3

polly.loop_header406.3:                           ; preds = %polly.loop_header406.3, %polly.loop_header400.3
  %polly.indvar409.3 = phi i64 [ 0, %polly.loop_header400.3 ], [ %polly.indvar_next410.3, %polly.loop_header406.3 ]
  %267 = mul nuw nsw i64 %polly.indvar409.3, 480
  %268 = add nuw nsw i64 %267, %262
  %scevgep412.3 = getelementptr i8, i8* %call1, i64 %268
  %scevgep412413.3 = bitcast i8* %scevgep412.3 to double*
  %_p_scalar_414.3 = load double, double* %scevgep412413.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i73.3 = fmul fast double %_p_scalar_418.3, %_p_scalar_414.3
  %polly.access.mul.Packed_MemRef_call2267419.3 = mul nuw nsw i64 %polly.indvar409.3, 50
  %polly.access.add.Packed_MemRef_call2267420.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.3, %polly.indvar397.3
  %polly.access.Packed_MemRef_call2267421.3 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.3
  %_p_scalar_422.3 = load double, double* %polly.access.Packed_MemRef_call2267421.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_425.3, %_p_scalar_422.3
  %269 = shl nuw nsw i64 %polly.indvar409.3, 3
  %270 = add nuw nsw i64 %269, %266
  %scevgep426.3 = getelementptr i8, i8* %call, i64 %270
  %scevgep426427.3 = bitcast i8* %scevgep426.3 to double*
  %_p_scalar_428.3 = load double, double* %scevgep426427.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_428.3
  store double %p_add42.i79.3, double* %scevgep426427.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410.3 = add nuw nsw i64 %polly.indvar409.3, 1
  %exitcond832.3.not = icmp eq i64 %polly.indvar_next410.3, %indvars.iv830.3
  br i1 %exitcond832.3.not, label %polly.loop_exit408.3, label %polly.loop_header406.3

polly.loop_exit408.3:                             ; preds = %polly.loop_header406.3
  %polly.indvar_next404.3 = add nuw nsw i64 %polly.indvar403.3, 1
  %indvars.iv.next831.3 = add nuw nsw i64 %indvars.iv830.3, 1
  %exitcond833.3.not = icmp eq i64 %polly.indvar_next404.3, 20
  br i1 %exitcond833.3.not, label %polly.loop_exit402.3, label %polly.loop_header400.3

polly.loop_exit402.3:                             ; preds = %polly.loop_exit408.3
  %polly.indvar_next398.3 = add nuw nsw i64 %polly.indvar397.3, 1
  %exitcond834.3.not = icmp eq i64 %polly.indvar_next398.3, %136
  br i1 %exitcond834.3.not, label %polly.loop_exit396.3, label %polly.loop_header394.3

polly.loop_exit396.3:                             ; preds = %polly.loop_exit402.3
  br i1 %polly.loop_cond371, label %polly.loop_header366, label %polly.exiting265

polly.loop_header561.1:                           ; preds = %polly.loop_exit569, %polly.loop_exit569.1
  %polly.indvar564.1 = phi i64 [ %polly.indvar_next565.1, %polly.loop_exit569.1 ], [ 0, %polly.loop_exit569 ]
  %271 = add nuw nsw i64 %polly.indvar564.1, %158
  %272 = shl i64 %271, 3
  br label %polly.loop_header567.1

polly.loop_header567.1:                           ; preds = %polly.loop_exit575.1, %polly.loop_header561.1
  %indvars.iv844.1 = phi i64 [ %indvars.iv.next845.1, %polly.loop_exit575.1 ], [ 21, %polly.loop_header561.1 ]
  %polly.indvar570.1 = phi i64 [ %polly.indvar_next571.1, %polly.loop_exit575.1 ], [ 0, %polly.loop_header561.1 ]
  %273 = add nuw nsw i64 %polly.indvar570.1, 20
  %polly.access.mul.Packed_MemRef_call2434582.1 = mul nuw nsw i64 %273, 50
  %polly.access.add.Packed_MemRef_call2434583.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434582.1, %polly.indvar564.1
  %polly.access.Packed_MemRef_call2434584.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.1
  %_p_scalar_585.1 = load double, double* %polly.access.Packed_MemRef_call2434584.1, align 8
  %274 = mul nuw nsw i64 %273, 480
  %275 = add nuw nsw i64 %274, %272
  %scevgep590.1 = getelementptr i8, i8* %call1, i64 %275
  %scevgep590591.1 = bitcast i8* %scevgep590.1 to double*
  %_p_scalar_592.1 = load double, double* %scevgep590591.1, align 8, !alias.scope !90, !noalias !95
  %276 = mul nuw nsw i64 %273, 640
  br label %polly.loop_header573.1

polly.loop_header573.1:                           ; preds = %polly.loop_header573.1, %polly.loop_header567.1
  %polly.indvar576.1 = phi i64 [ 0, %polly.loop_header567.1 ], [ %polly.indvar_next577.1, %polly.loop_header573.1 ]
  %277 = mul nuw nsw i64 %polly.indvar576.1, 480
  %278 = add nuw nsw i64 %277, %272
  %scevgep579.1 = getelementptr i8, i8* %call1, i64 %278
  %scevgep579580.1 = bitcast i8* %scevgep579.1 to double*
  %_p_scalar_581.1 = load double, double* %scevgep579580.1, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.1 = fmul fast double %_p_scalar_585.1, %_p_scalar_581.1
  %polly.access.mul.Packed_MemRef_call2434586.1 = mul nuw nsw i64 %polly.indvar576.1, 50
  %polly.access.add.Packed_MemRef_call2434587.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.1, %polly.indvar564.1
  %polly.access.Packed_MemRef_call2434588.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.1
  %_p_scalar_589.1 = load double, double* %polly.access.Packed_MemRef_call2434588.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_592.1, %_p_scalar_589.1
  %279 = shl nuw nsw i64 %polly.indvar576.1, 3
  %280 = add nuw nsw i64 %279, %276
  %scevgep593.1 = getelementptr i8, i8* %call, i64 %280
  %scevgep593594.1 = bitcast i8* %scevgep593.1 to double*
  %_p_scalar_595.1 = load double, double* %scevgep593594.1, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_595.1
  store double %p_add42.i.1, double* %scevgep593594.1, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577.1 = add nuw nsw i64 %polly.indvar576.1, 1
  %exitcond846.1.not = icmp eq i64 %polly.indvar_next577.1, %indvars.iv844.1
  br i1 %exitcond846.1.not, label %polly.loop_exit575.1, label %polly.loop_header573.1

polly.loop_exit575.1:                             ; preds = %polly.loop_header573.1
  %polly.indvar_next571.1 = add nuw nsw i64 %polly.indvar570.1, 1
  %indvars.iv.next845.1 = add nuw nsw i64 %indvars.iv844.1, 1
  %exitcond847.1.not = icmp eq i64 %polly.indvar_next571.1, 20
  br i1 %exitcond847.1.not, label %polly.loop_exit569.1, label %polly.loop_header567.1

polly.loop_exit569.1:                             ; preds = %polly.loop_exit575.1
  %polly.indvar_next565.1 = add nuw nsw i64 %polly.indvar564.1, 1
  %exitcond848.1.not = icmp eq i64 %polly.indvar_next565.1, %165
  br i1 %exitcond848.1.not, label %polly.loop_header561.2, label %polly.loop_header561.1

polly.loop_header561.2:                           ; preds = %polly.loop_exit569.1, %polly.loop_exit569.2
  %polly.indvar564.2 = phi i64 [ %polly.indvar_next565.2, %polly.loop_exit569.2 ], [ 0, %polly.loop_exit569.1 ]
  %281 = add nuw nsw i64 %polly.indvar564.2, %158
  %282 = shl i64 %281, 3
  br label %polly.loop_header567.2

polly.loop_header567.2:                           ; preds = %polly.loop_exit575.2, %polly.loop_header561.2
  %indvars.iv844.2 = phi i64 [ %indvars.iv.next845.2, %polly.loop_exit575.2 ], [ 41, %polly.loop_header561.2 ]
  %polly.indvar570.2 = phi i64 [ %polly.indvar_next571.2, %polly.loop_exit575.2 ], [ 0, %polly.loop_header561.2 ]
  %283 = add nuw nsw i64 %polly.indvar570.2, 40
  %polly.access.mul.Packed_MemRef_call2434582.2 = mul nuw nsw i64 %283, 50
  %polly.access.add.Packed_MemRef_call2434583.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434582.2, %polly.indvar564.2
  %polly.access.Packed_MemRef_call2434584.2 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.2
  %_p_scalar_585.2 = load double, double* %polly.access.Packed_MemRef_call2434584.2, align 8
  %284 = mul nuw nsw i64 %283, 480
  %285 = add nuw nsw i64 %284, %282
  %scevgep590.2 = getelementptr i8, i8* %call1, i64 %285
  %scevgep590591.2 = bitcast i8* %scevgep590.2 to double*
  %_p_scalar_592.2 = load double, double* %scevgep590591.2, align 8, !alias.scope !90, !noalias !95
  %286 = mul nuw nsw i64 %283, 640
  br label %polly.loop_header573.2

polly.loop_header573.2:                           ; preds = %polly.loop_header573.2, %polly.loop_header567.2
  %polly.indvar576.2 = phi i64 [ 0, %polly.loop_header567.2 ], [ %polly.indvar_next577.2, %polly.loop_header573.2 ]
  %287 = mul nuw nsw i64 %polly.indvar576.2, 480
  %288 = add nuw nsw i64 %287, %282
  %scevgep579.2 = getelementptr i8, i8* %call1, i64 %288
  %scevgep579580.2 = bitcast i8* %scevgep579.2 to double*
  %_p_scalar_581.2 = load double, double* %scevgep579580.2, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.2 = fmul fast double %_p_scalar_585.2, %_p_scalar_581.2
  %polly.access.mul.Packed_MemRef_call2434586.2 = mul nuw nsw i64 %polly.indvar576.2, 50
  %polly.access.add.Packed_MemRef_call2434587.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.2, %polly.indvar564.2
  %polly.access.Packed_MemRef_call2434588.2 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.2
  %_p_scalar_589.2 = load double, double* %polly.access.Packed_MemRef_call2434588.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_592.2, %_p_scalar_589.2
  %289 = shl nuw nsw i64 %polly.indvar576.2, 3
  %290 = add nuw nsw i64 %289, %286
  %scevgep593.2 = getelementptr i8, i8* %call, i64 %290
  %scevgep593594.2 = bitcast i8* %scevgep593.2 to double*
  %_p_scalar_595.2 = load double, double* %scevgep593594.2, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_595.2
  store double %p_add42.i.2, double* %scevgep593594.2, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577.2 = add nuw nsw i64 %polly.indvar576.2, 1
  %exitcond846.2.not = icmp eq i64 %polly.indvar_next577.2, %indvars.iv844.2
  br i1 %exitcond846.2.not, label %polly.loop_exit575.2, label %polly.loop_header573.2

polly.loop_exit575.2:                             ; preds = %polly.loop_header573.2
  %polly.indvar_next571.2 = add nuw nsw i64 %polly.indvar570.2, 1
  %indvars.iv.next845.2 = add nuw nsw i64 %indvars.iv844.2, 1
  %exitcond847.2.not = icmp eq i64 %polly.indvar_next571.2, 20
  br i1 %exitcond847.2.not, label %polly.loop_exit569.2, label %polly.loop_header567.2

polly.loop_exit569.2:                             ; preds = %polly.loop_exit575.2
  %polly.indvar_next565.2 = add nuw nsw i64 %polly.indvar564.2, 1
  %exitcond848.2.not = icmp eq i64 %polly.indvar_next565.2, %165
  br i1 %exitcond848.2.not, label %polly.loop_header561.3, label %polly.loop_header561.2

polly.loop_header561.3:                           ; preds = %polly.loop_exit569.2, %polly.loop_exit569.3
  %polly.indvar564.3 = phi i64 [ %polly.indvar_next565.3, %polly.loop_exit569.3 ], [ 0, %polly.loop_exit569.2 ]
  %291 = add nuw nsw i64 %polly.indvar564.3, %158
  %292 = shl i64 %291, 3
  br label %polly.loop_header567.3

polly.loop_header567.3:                           ; preds = %polly.loop_exit575.3, %polly.loop_header561.3
  %indvars.iv844.3 = phi i64 [ %indvars.iv.next845.3, %polly.loop_exit575.3 ], [ 61, %polly.loop_header561.3 ]
  %polly.indvar570.3 = phi i64 [ %polly.indvar_next571.3, %polly.loop_exit575.3 ], [ 0, %polly.loop_header561.3 ]
  %293 = add nuw nsw i64 %polly.indvar570.3, 60
  %polly.access.mul.Packed_MemRef_call2434582.3 = mul nuw nsw i64 %293, 50
  %polly.access.add.Packed_MemRef_call2434583.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434582.3, %polly.indvar564.3
  %polly.access.Packed_MemRef_call2434584.3 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.3
  %_p_scalar_585.3 = load double, double* %polly.access.Packed_MemRef_call2434584.3, align 8
  %294 = mul nuw nsw i64 %293, 480
  %295 = add nuw nsw i64 %294, %292
  %scevgep590.3 = getelementptr i8, i8* %call1, i64 %295
  %scevgep590591.3 = bitcast i8* %scevgep590.3 to double*
  %_p_scalar_592.3 = load double, double* %scevgep590591.3, align 8, !alias.scope !90, !noalias !95
  %296 = mul nuw nsw i64 %293, 640
  br label %polly.loop_header573.3

polly.loop_header573.3:                           ; preds = %polly.loop_header573.3, %polly.loop_header567.3
  %polly.indvar576.3 = phi i64 [ 0, %polly.loop_header567.3 ], [ %polly.indvar_next577.3, %polly.loop_header573.3 ]
  %297 = mul nuw nsw i64 %polly.indvar576.3, 480
  %298 = add nuw nsw i64 %297, %292
  %scevgep579.3 = getelementptr i8, i8* %call1, i64 %298
  %scevgep579580.3 = bitcast i8* %scevgep579.3 to double*
  %_p_scalar_581.3 = load double, double* %scevgep579580.3, align 8, !alias.scope !90, !noalias !95
  %p_mul27.i.3 = fmul fast double %_p_scalar_585.3, %_p_scalar_581.3
  %polly.access.mul.Packed_MemRef_call2434586.3 = mul nuw nsw i64 %polly.indvar576.3, 50
  %polly.access.add.Packed_MemRef_call2434587.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.3, %polly.indvar564.3
  %polly.access.Packed_MemRef_call2434588.3 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.3
  %_p_scalar_589.3 = load double, double* %polly.access.Packed_MemRef_call2434588.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_592.3, %_p_scalar_589.3
  %299 = shl nuw nsw i64 %polly.indvar576.3, 3
  %300 = add nuw nsw i64 %299, %296
  %scevgep593.3 = getelementptr i8, i8* %call, i64 %300
  %scevgep593594.3 = bitcast i8* %scevgep593.3 to double*
  %_p_scalar_595.3 = load double, double* %scevgep593594.3, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_595.3
  store double %p_add42.i.3, double* %scevgep593594.3, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577.3 = add nuw nsw i64 %polly.indvar576.3, 1
  %exitcond846.3.not = icmp eq i64 %polly.indvar_next577.3, %indvars.iv844.3
  br i1 %exitcond846.3.not, label %polly.loop_exit575.3, label %polly.loop_header573.3

polly.loop_exit575.3:                             ; preds = %polly.loop_header573.3
  %polly.indvar_next571.3 = add nuw nsw i64 %polly.indvar570.3, 1
  %indvars.iv.next845.3 = add nuw nsw i64 %indvars.iv844.3, 1
  %exitcond847.3.not = icmp eq i64 %polly.indvar_next571.3, 20
  br i1 %exitcond847.3.not, label %polly.loop_exit569.3, label %polly.loop_header567.3

polly.loop_exit569.3:                             ; preds = %polly.loop_exit575.3
  %polly.indvar_next565.3 = add nuw nsw i64 %polly.indvar564.3, 1
  %exitcond848.3.not = icmp eq i64 %polly.indvar_next565.3, %165
  br i1 %exitcond848.3.not, label %polly.loop_exit563.3, label %polly.loop_header561.3

polly.loop_exit563.3:                             ; preds = %polly.loop_exit569.3
  br i1 %polly.loop_cond538, label %polly.loop_header533, label %polly.exiting432

polly.loop_header787.1:                           ; preds = %polly.loop_exit795, %polly.loop_exit795.1
  %polly.indvar790.1 = phi i64 [ %polly.indvar_next791.1, %polly.loop_exit795.1 ], [ 0, %polly.loop_exit795 ]
  %301 = mul nuw nsw i64 %polly.indvar790.1, 480
  %302 = trunc i64 %polly.indvar790.1 to i32
  %broadcast.splatinsert1164 = insertelement <4 x i32> poison, i32 %302, i32 0
  %broadcast.splat1165 = shufflevector <4 x i32> %broadcast.splatinsert1164, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1156

vector.body1156:                                  ; preds = %vector.body1156, %polly.loop_header787.1
  %index1158 = phi i64 [ 0, %polly.loop_header787.1 ], [ %index.next1159, %vector.body1156 ]
  %vec.ind1162 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1 ], [ %vec.ind.next1163, %vector.body1156 ]
  %303 = add nuw nsw <4 x i64> %vec.ind1162, <i64 32, i64 32, i64 32, i64 32>
  %304 = trunc <4 x i64> %303 to <4 x i32>
  %305 = mul <4 x i32> %broadcast.splat1165, %304
  %306 = add <4 x i32> %305, <i32 1, i32 1, i32 1, i32 1>
  %307 = urem <4 x i32> %306, <i32 80, i32 80, i32 80, i32 80>
  %308 = sitofp <4 x i32> %307 to <4 x double>
  %309 = fmul fast <4 x double> %308, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %310 = extractelement <4 x i64> %303, i32 0
  %311 = shl i64 %310, 3
  %312 = add i64 %311, %301
  %313 = getelementptr i8, i8* %call1, i64 %312
  %314 = bitcast i8* %313 to <4 x double>*
  store <4 x double> %309, <4 x double>* %314, align 8, !alias.scope !99, !noalias !104
  %index.next1159 = add i64 %index1158, 4
  %vec.ind.next1163 = add <4 x i64> %vec.ind1162, <i64 4, i64 4, i64 4, i64 4>
  %315 = icmp eq i64 %index.next1159, 28
  br i1 %315, label %polly.loop_exit795.1, label %vector.body1156, !llvm.loop !106

polly.loop_exit795.1:                             ; preds = %vector.body1156
  %polly.indvar_next791.1 = add nuw nsw i64 %polly.indvar790.1, 1
  %exitcond855.1.not = icmp eq i64 %polly.indvar_next791.1, 32
  br i1 %exitcond855.1.not, label %polly.loop_header787.1875, label %polly.loop_header787.1

polly.loop_header787.1875:                        ; preds = %polly.loop_exit795.1, %polly.loop_exit795.1886
  %polly.indvar790.1874 = phi i64 [ %polly.indvar_next791.1884, %polly.loop_exit795.1886 ], [ 0, %polly.loop_exit795.1 ]
  %316 = add nuw nsw i64 %polly.indvar790.1874, 32
  %317 = mul nuw nsw i64 %316, 480
  %318 = trunc i64 %316 to i32
  %broadcast.splatinsert1178 = insertelement <4 x i32> poison, i32 %318, i32 0
  %broadcast.splat1179 = shufflevector <4 x i32> %broadcast.splatinsert1178, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %polly.loop_header787.1875
  %index1170 = phi i64 [ 0, %polly.loop_header787.1875 ], [ %index.next1171, %vector.body1168 ]
  %vec.ind1176 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.1875 ], [ %vec.ind.next1177, %vector.body1168 ]
  %319 = mul <4 x i32> %vec.ind1176, %broadcast.splat1179
  %320 = add <4 x i32> %319, <i32 1, i32 1, i32 1, i32 1>
  %321 = urem <4 x i32> %320, <i32 80, i32 80, i32 80, i32 80>
  %322 = sitofp <4 x i32> %321 to <4 x double>
  %323 = fmul fast <4 x double> %322, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %324 = shl i64 %index1170, 3
  %325 = add i64 %324, %317
  %326 = getelementptr i8, i8* %call1, i64 %325
  %327 = bitcast i8* %326 to <4 x double>*
  store <4 x double> %323, <4 x double>* %327, align 8, !alias.scope !99, !noalias !104
  %index.next1171 = add i64 %index1170, 4
  %vec.ind.next1177 = add <4 x i32> %vec.ind1176, <i32 4, i32 4, i32 4, i32 4>
  %328 = icmp eq i64 %index.next1171, 32
  br i1 %328, label %polly.loop_exit795.1886, label %vector.body1168, !llvm.loop !107

polly.loop_exit795.1886:                          ; preds = %vector.body1168
  %polly.indvar_next791.1884 = add nuw nsw i64 %polly.indvar790.1874, 1
  %exitcond855.1885.not = icmp eq i64 %polly.indvar_next791.1884, 32
  br i1 %exitcond855.1885.not, label %polly.loop_header787.1.1, label %polly.loop_header787.1875

polly.loop_header787.1.1:                         ; preds = %polly.loop_exit795.1886, %polly.loop_exit795.1.1
  %polly.indvar790.1.1 = phi i64 [ %polly.indvar_next791.1.1, %polly.loop_exit795.1.1 ], [ 0, %polly.loop_exit795.1886 ]
  %329 = add nuw nsw i64 %polly.indvar790.1.1, 32
  %330 = mul nuw nsw i64 %329, 480
  %331 = trunc i64 %329 to i32
  %broadcast.splatinsert1190 = insertelement <4 x i32> poison, i32 %331, i32 0
  %broadcast.splat1191 = shufflevector <4 x i32> %broadcast.splatinsert1190, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1182

vector.body1182:                                  ; preds = %vector.body1182, %polly.loop_header787.1.1
  %index1184 = phi i64 [ 0, %polly.loop_header787.1.1 ], [ %index.next1185, %vector.body1182 ]
  %vec.ind1188 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.1 ], [ %vec.ind.next1189, %vector.body1182 ]
  %332 = add nuw nsw <4 x i64> %vec.ind1188, <i64 32, i64 32, i64 32, i64 32>
  %333 = trunc <4 x i64> %332 to <4 x i32>
  %334 = mul <4 x i32> %broadcast.splat1191, %333
  %335 = add <4 x i32> %334, <i32 1, i32 1, i32 1, i32 1>
  %336 = urem <4 x i32> %335, <i32 80, i32 80, i32 80, i32 80>
  %337 = sitofp <4 x i32> %336 to <4 x double>
  %338 = fmul fast <4 x double> %337, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %339 = extractelement <4 x i64> %332, i32 0
  %340 = shl i64 %339, 3
  %341 = add i64 %340, %330
  %342 = getelementptr i8, i8* %call1, i64 %341
  %343 = bitcast i8* %342 to <4 x double>*
  store <4 x double> %338, <4 x double>* %343, align 8, !alias.scope !99, !noalias !104
  %index.next1185 = add i64 %index1184, 4
  %vec.ind.next1189 = add <4 x i64> %vec.ind1188, <i64 4, i64 4, i64 4, i64 4>
  %344 = icmp eq i64 %index.next1185, 28
  br i1 %344, label %polly.loop_exit795.1.1, label %vector.body1182, !llvm.loop !108

polly.loop_exit795.1.1:                           ; preds = %vector.body1182
  %polly.indvar_next791.1.1 = add nuw nsw i64 %polly.indvar790.1.1, 1
  %exitcond855.1.1.not = icmp eq i64 %polly.indvar_next791.1.1, 32
  br i1 %exitcond855.1.1.not, label %polly.loop_header787.2, label %polly.loop_header787.1.1

polly.loop_header787.2:                           ; preds = %polly.loop_exit795.1.1, %polly.loop_exit795.2
  %polly.indvar790.2 = phi i64 [ %polly.indvar_next791.2, %polly.loop_exit795.2 ], [ 0, %polly.loop_exit795.1.1 ]
  %345 = add nuw nsw i64 %polly.indvar790.2, 64
  %346 = mul nuw nsw i64 %345, 480
  %347 = trunc i64 %345 to i32
  %broadcast.splatinsert1204 = insertelement <4 x i32> poison, i32 %347, i32 0
  %broadcast.splat1205 = shufflevector <4 x i32> %broadcast.splatinsert1204, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1194

vector.body1194:                                  ; preds = %vector.body1194, %polly.loop_header787.2
  %index1196 = phi i64 [ 0, %polly.loop_header787.2 ], [ %index.next1197, %vector.body1194 ]
  %vec.ind1202 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.2 ], [ %vec.ind.next1203, %vector.body1194 ]
  %348 = mul <4 x i32> %vec.ind1202, %broadcast.splat1205
  %349 = add <4 x i32> %348, <i32 1, i32 1, i32 1, i32 1>
  %350 = urem <4 x i32> %349, <i32 80, i32 80, i32 80, i32 80>
  %351 = sitofp <4 x i32> %350 to <4 x double>
  %352 = fmul fast <4 x double> %351, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %353 = shl i64 %index1196, 3
  %354 = add i64 %353, %346
  %355 = getelementptr i8, i8* %call1, i64 %354
  %356 = bitcast i8* %355 to <4 x double>*
  store <4 x double> %352, <4 x double>* %356, align 8, !alias.scope !99, !noalias !104
  %index.next1197 = add i64 %index1196, 4
  %vec.ind.next1203 = add <4 x i32> %vec.ind1202, <i32 4, i32 4, i32 4, i32 4>
  %357 = icmp eq i64 %index.next1197, 32
  br i1 %357, label %polly.loop_exit795.2, label %vector.body1194, !llvm.loop !109

polly.loop_exit795.2:                             ; preds = %vector.body1194
  %polly.indvar_next791.2 = add nuw nsw i64 %polly.indvar790.2, 1
  %exitcond855.2.not = icmp eq i64 %polly.indvar_next791.2, 16
  br i1 %exitcond855.2.not, label %polly.loop_header787.1.2, label %polly.loop_header787.2

polly.loop_header787.1.2:                         ; preds = %polly.loop_exit795.2, %polly.loop_exit795.1.2
  %polly.indvar790.1.2 = phi i64 [ %polly.indvar_next791.1.2, %polly.loop_exit795.1.2 ], [ 0, %polly.loop_exit795.2 ]
  %358 = add nuw nsw i64 %polly.indvar790.1.2, 64
  %359 = mul nuw nsw i64 %358, 480
  %360 = trunc i64 %358 to i32
  %broadcast.splatinsert1216 = insertelement <4 x i32> poison, i32 %360, i32 0
  %broadcast.splat1217 = shufflevector <4 x i32> %broadcast.splatinsert1216, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %polly.loop_header787.1.2
  %index1210 = phi i64 [ 0, %polly.loop_header787.1.2 ], [ %index.next1211, %vector.body1208 ]
  %vec.ind1214 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.2 ], [ %vec.ind.next1215, %vector.body1208 ]
  %361 = add nuw nsw <4 x i64> %vec.ind1214, <i64 32, i64 32, i64 32, i64 32>
  %362 = trunc <4 x i64> %361 to <4 x i32>
  %363 = mul <4 x i32> %broadcast.splat1217, %362
  %364 = add <4 x i32> %363, <i32 1, i32 1, i32 1, i32 1>
  %365 = urem <4 x i32> %364, <i32 80, i32 80, i32 80, i32 80>
  %366 = sitofp <4 x i32> %365 to <4 x double>
  %367 = fmul fast <4 x double> %366, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %368 = extractelement <4 x i64> %361, i32 0
  %369 = shl i64 %368, 3
  %370 = add i64 %369, %359
  %371 = getelementptr i8, i8* %call1, i64 %370
  %372 = bitcast i8* %371 to <4 x double>*
  store <4 x double> %367, <4 x double>* %372, align 8, !alias.scope !99, !noalias !104
  %index.next1211 = add i64 %index1210, 4
  %vec.ind.next1215 = add <4 x i64> %vec.ind1214, <i64 4, i64 4, i64 4, i64 4>
  %373 = icmp eq i64 %index.next1211, 28
  br i1 %373, label %polly.loop_exit795.1.2, label %vector.body1208, !llvm.loop !110

polly.loop_exit795.1.2:                           ; preds = %vector.body1208
  %polly.indvar_next791.1.2 = add nuw nsw i64 %polly.indvar790.1.2, 1
  %exitcond855.1.2.not = icmp eq i64 %polly.indvar_next791.1.2, 16
  br i1 %exitcond855.1.2.not, label %init_array.exit, label %polly.loop_header787.1.2

polly.loop_header761.1:                           ; preds = %polly.loop_exit769, %polly.loop_exit769.1
  %polly.indvar764.1 = phi i64 [ %polly.indvar_next765.1, %polly.loop_exit769.1 ], [ 0, %polly.loop_exit769 ]
  %374 = mul nuw nsw i64 %polly.indvar764.1, 480
  %375 = trunc i64 %polly.indvar764.1 to i32
  %broadcast.splatinsert1086 = insertelement <4 x i32> poison, i32 %375, i32 0
  %broadcast.splat1087 = shufflevector <4 x i32> %broadcast.splatinsert1086, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1078

vector.body1078:                                  ; preds = %vector.body1078, %polly.loop_header761.1
  %index1080 = phi i64 [ 0, %polly.loop_header761.1 ], [ %index.next1081, %vector.body1078 ]
  %vec.ind1084 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1 ], [ %vec.ind.next1085, %vector.body1078 ]
  %376 = add nuw nsw <4 x i64> %vec.ind1084, <i64 32, i64 32, i64 32, i64 32>
  %377 = trunc <4 x i64> %376 to <4 x i32>
  %378 = mul <4 x i32> %broadcast.splat1087, %377
  %379 = add <4 x i32> %378, <i32 2, i32 2, i32 2, i32 2>
  %380 = urem <4 x i32> %379, <i32 60, i32 60, i32 60, i32 60>
  %381 = sitofp <4 x i32> %380 to <4 x double>
  %382 = fmul fast <4 x double> %381, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %383 = extractelement <4 x i64> %376, i32 0
  %384 = shl i64 %383, 3
  %385 = add i64 %384, %374
  %386 = getelementptr i8, i8* %call2, i64 %385
  %387 = bitcast i8* %386 to <4 x double>*
  store <4 x double> %382, <4 x double>* %387, align 8, !alias.scope !100, !noalias !102
  %index.next1081 = add i64 %index1080, 4
  %vec.ind.next1085 = add <4 x i64> %vec.ind1084, <i64 4, i64 4, i64 4, i64 4>
  %388 = icmp eq i64 %index.next1081, 28
  br i1 %388, label %polly.loop_exit769.1, label %vector.body1078, !llvm.loop !111

polly.loop_exit769.1:                             ; preds = %vector.body1078
  %polly.indvar_next765.1 = add nuw nsw i64 %polly.indvar764.1, 1
  %exitcond861.1.not = icmp eq i64 %polly.indvar_next765.1, 32
  br i1 %exitcond861.1.not, label %polly.loop_header761.1889, label %polly.loop_header761.1

polly.loop_header761.1889:                        ; preds = %polly.loop_exit769.1, %polly.loop_exit769.1900
  %polly.indvar764.1888 = phi i64 [ %polly.indvar_next765.1898, %polly.loop_exit769.1900 ], [ 0, %polly.loop_exit769.1 ]
  %389 = add nuw nsw i64 %polly.indvar764.1888, 32
  %390 = mul nuw nsw i64 %389, 480
  %391 = trunc i64 %389 to i32
  %broadcast.splatinsert1100 = insertelement <4 x i32> poison, i32 %391, i32 0
  %broadcast.splat1101 = shufflevector <4 x i32> %broadcast.splatinsert1100, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1090

vector.body1090:                                  ; preds = %vector.body1090, %polly.loop_header761.1889
  %index1092 = phi i64 [ 0, %polly.loop_header761.1889 ], [ %index.next1093, %vector.body1090 ]
  %vec.ind1098 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.1889 ], [ %vec.ind.next1099, %vector.body1090 ]
  %392 = mul <4 x i32> %vec.ind1098, %broadcast.splat1101
  %393 = add <4 x i32> %392, <i32 2, i32 2, i32 2, i32 2>
  %394 = urem <4 x i32> %393, <i32 60, i32 60, i32 60, i32 60>
  %395 = sitofp <4 x i32> %394 to <4 x double>
  %396 = fmul fast <4 x double> %395, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %397 = shl i64 %index1092, 3
  %398 = add i64 %397, %390
  %399 = getelementptr i8, i8* %call2, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %396, <4 x double>* %400, align 8, !alias.scope !100, !noalias !102
  %index.next1093 = add i64 %index1092, 4
  %vec.ind.next1099 = add <4 x i32> %vec.ind1098, <i32 4, i32 4, i32 4, i32 4>
  %401 = icmp eq i64 %index.next1093, 32
  br i1 %401, label %polly.loop_exit769.1900, label %vector.body1090, !llvm.loop !112

polly.loop_exit769.1900:                          ; preds = %vector.body1090
  %polly.indvar_next765.1898 = add nuw nsw i64 %polly.indvar764.1888, 1
  %exitcond861.1899.not = icmp eq i64 %polly.indvar_next765.1898, 32
  br i1 %exitcond861.1899.not, label %polly.loop_header761.1.1, label %polly.loop_header761.1889

polly.loop_header761.1.1:                         ; preds = %polly.loop_exit769.1900, %polly.loop_exit769.1.1
  %polly.indvar764.1.1 = phi i64 [ %polly.indvar_next765.1.1, %polly.loop_exit769.1.1 ], [ 0, %polly.loop_exit769.1900 ]
  %402 = add nuw nsw i64 %polly.indvar764.1.1, 32
  %403 = mul nuw nsw i64 %402, 480
  %404 = trunc i64 %402 to i32
  %broadcast.splatinsert1112 = insertelement <4 x i32> poison, i32 %404, i32 0
  %broadcast.splat1113 = shufflevector <4 x i32> %broadcast.splatinsert1112, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %polly.loop_header761.1.1
  %index1106 = phi i64 [ 0, %polly.loop_header761.1.1 ], [ %index.next1107, %vector.body1104 ]
  %vec.ind1110 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.1 ], [ %vec.ind.next1111, %vector.body1104 ]
  %405 = add nuw nsw <4 x i64> %vec.ind1110, <i64 32, i64 32, i64 32, i64 32>
  %406 = trunc <4 x i64> %405 to <4 x i32>
  %407 = mul <4 x i32> %broadcast.splat1113, %406
  %408 = add <4 x i32> %407, <i32 2, i32 2, i32 2, i32 2>
  %409 = urem <4 x i32> %408, <i32 60, i32 60, i32 60, i32 60>
  %410 = sitofp <4 x i32> %409 to <4 x double>
  %411 = fmul fast <4 x double> %410, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %412 = extractelement <4 x i64> %405, i32 0
  %413 = shl i64 %412, 3
  %414 = add i64 %413, %403
  %415 = getelementptr i8, i8* %call2, i64 %414
  %416 = bitcast i8* %415 to <4 x double>*
  store <4 x double> %411, <4 x double>* %416, align 8, !alias.scope !100, !noalias !102
  %index.next1107 = add i64 %index1106, 4
  %vec.ind.next1111 = add <4 x i64> %vec.ind1110, <i64 4, i64 4, i64 4, i64 4>
  %417 = icmp eq i64 %index.next1107, 28
  br i1 %417, label %polly.loop_exit769.1.1, label %vector.body1104, !llvm.loop !113

polly.loop_exit769.1.1:                           ; preds = %vector.body1104
  %polly.indvar_next765.1.1 = add nuw nsw i64 %polly.indvar764.1.1, 1
  %exitcond861.1.1.not = icmp eq i64 %polly.indvar_next765.1.1, 32
  br i1 %exitcond861.1.1.not, label %polly.loop_header761.2, label %polly.loop_header761.1.1

polly.loop_header761.2:                           ; preds = %polly.loop_exit769.1.1, %polly.loop_exit769.2
  %polly.indvar764.2 = phi i64 [ %polly.indvar_next765.2, %polly.loop_exit769.2 ], [ 0, %polly.loop_exit769.1.1 ]
  %418 = add nuw nsw i64 %polly.indvar764.2, 64
  %419 = mul nuw nsw i64 %418, 480
  %420 = trunc i64 %418 to i32
  %broadcast.splatinsert1126 = insertelement <4 x i32> poison, i32 %420, i32 0
  %broadcast.splat1127 = shufflevector <4 x i32> %broadcast.splatinsert1126, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %polly.loop_header761.2
  %index1118 = phi i64 [ 0, %polly.loop_header761.2 ], [ %index.next1119, %vector.body1116 ]
  %vec.ind1124 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.2 ], [ %vec.ind.next1125, %vector.body1116 ]
  %421 = mul <4 x i32> %vec.ind1124, %broadcast.splat1127
  %422 = add <4 x i32> %421, <i32 2, i32 2, i32 2, i32 2>
  %423 = urem <4 x i32> %422, <i32 60, i32 60, i32 60, i32 60>
  %424 = sitofp <4 x i32> %423 to <4 x double>
  %425 = fmul fast <4 x double> %424, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %426 = shl i64 %index1118, 3
  %427 = add i64 %426, %419
  %428 = getelementptr i8, i8* %call2, i64 %427
  %429 = bitcast i8* %428 to <4 x double>*
  store <4 x double> %425, <4 x double>* %429, align 8, !alias.scope !100, !noalias !102
  %index.next1119 = add i64 %index1118, 4
  %vec.ind.next1125 = add <4 x i32> %vec.ind1124, <i32 4, i32 4, i32 4, i32 4>
  %430 = icmp eq i64 %index.next1119, 32
  br i1 %430, label %polly.loop_exit769.2, label %vector.body1116, !llvm.loop !114

polly.loop_exit769.2:                             ; preds = %vector.body1116
  %polly.indvar_next765.2 = add nuw nsw i64 %polly.indvar764.2, 1
  %exitcond861.2.not = icmp eq i64 %polly.indvar_next765.2, 16
  br i1 %exitcond861.2.not, label %polly.loop_header761.1.2, label %polly.loop_header761.2

polly.loop_header761.1.2:                         ; preds = %polly.loop_exit769.2, %polly.loop_exit769.1.2
  %polly.indvar764.1.2 = phi i64 [ %polly.indvar_next765.1.2, %polly.loop_exit769.1.2 ], [ 0, %polly.loop_exit769.2 ]
  %431 = add nuw nsw i64 %polly.indvar764.1.2, 64
  %432 = mul nuw nsw i64 %431, 480
  %433 = trunc i64 %431 to i32
  %broadcast.splatinsert1138 = insertelement <4 x i32> poison, i32 %433, i32 0
  %broadcast.splat1139 = shufflevector <4 x i32> %broadcast.splatinsert1138, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1130

vector.body1130:                                  ; preds = %vector.body1130, %polly.loop_header761.1.2
  %index1132 = phi i64 [ 0, %polly.loop_header761.1.2 ], [ %index.next1133, %vector.body1130 ]
  %vec.ind1136 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.2 ], [ %vec.ind.next1137, %vector.body1130 ]
  %434 = add nuw nsw <4 x i64> %vec.ind1136, <i64 32, i64 32, i64 32, i64 32>
  %435 = trunc <4 x i64> %434 to <4 x i32>
  %436 = mul <4 x i32> %broadcast.splat1139, %435
  %437 = add <4 x i32> %436, <i32 2, i32 2, i32 2, i32 2>
  %438 = urem <4 x i32> %437, <i32 60, i32 60, i32 60, i32 60>
  %439 = sitofp <4 x i32> %438 to <4 x double>
  %440 = fmul fast <4 x double> %439, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %441 = extractelement <4 x i64> %434, i32 0
  %442 = shl i64 %441, 3
  %443 = add i64 %442, %432
  %444 = getelementptr i8, i8* %call2, i64 %443
  %445 = bitcast i8* %444 to <4 x double>*
  store <4 x double> %440, <4 x double>* %445, align 8, !alias.scope !100, !noalias !102
  %index.next1133 = add i64 %index1132, 4
  %vec.ind.next1137 = add <4 x i64> %vec.ind1136, <i64 4, i64 4, i64 4, i64 4>
  %446 = icmp eq i64 %index.next1133, 28
  br i1 %446, label %polly.loop_exit769.1.2, label %vector.body1130, !llvm.loop !115

polly.loop_exit769.1.2:                           ; preds = %vector.body1130
  %polly.indvar_next765.1.2 = add nuw nsw i64 %polly.indvar764.1.2, 1
  %exitcond861.1.2.not = icmp eq i64 %polly.indvar_next765.1.2, 16
  br i1 %exitcond861.1.2.not, label %polly.loop_header787, label %polly.loop_header761.1.2

polly.loop_header734.1:                           ; preds = %polly.loop_exit742, %polly.loop_exit742.1
  %polly.indvar737.1 = phi i64 [ %polly.indvar_next738.1, %polly.loop_exit742.1 ], [ 0, %polly.loop_exit742 ]
  %447 = mul nuw nsw i64 %polly.indvar737.1, 640
  %448 = trunc i64 %polly.indvar737.1 to i32
  %broadcast.splatinsert972 = insertelement <4 x i32> poison, i32 %448, i32 0
  %broadcast.splat973 = shufflevector <4 x i32> %broadcast.splatinsert972, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body964

vector.body964:                                   ; preds = %vector.body964, %polly.loop_header734.1
  %index966 = phi i64 [ 0, %polly.loop_header734.1 ], [ %index.next967, %vector.body964 ]
  %vec.ind970 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1 ], [ %vec.ind.next971, %vector.body964 ]
  %449 = add nuw nsw <4 x i64> %vec.ind970, <i64 32, i64 32, i64 32, i64 32>
  %450 = trunc <4 x i64> %449 to <4 x i32>
  %451 = mul <4 x i32> %broadcast.splat973, %450
  %452 = add <4 x i32> %451, <i32 3, i32 3, i32 3, i32 3>
  %453 = urem <4 x i32> %452, <i32 80, i32 80, i32 80, i32 80>
  %454 = sitofp <4 x i32> %453 to <4 x double>
  %455 = fmul fast <4 x double> %454, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %456 = extractelement <4 x i64> %449, i32 0
  %457 = shl i64 %456, 3
  %458 = add nuw nsw i64 %457, %447
  %459 = getelementptr i8, i8* %call, i64 %458
  %460 = bitcast i8* %459 to <4 x double>*
  store <4 x double> %455, <4 x double>* %460, align 8, !alias.scope !96, !noalias !98
  %index.next967 = add i64 %index966, 4
  %vec.ind.next971 = add <4 x i64> %vec.ind970, <i64 4, i64 4, i64 4, i64 4>
  %461 = icmp eq i64 %index.next967, 32
  br i1 %461, label %polly.loop_exit742.1, label %vector.body964, !llvm.loop !116

polly.loop_exit742.1:                             ; preds = %vector.body964
  %polly.indvar_next738.1 = add nuw nsw i64 %polly.indvar737.1, 1
  %exitcond870.1.not = icmp eq i64 %polly.indvar_next738.1, 32
  br i1 %exitcond870.1.not, label %polly.loop_header734.2, label %polly.loop_header734.1

polly.loop_header734.2:                           ; preds = %polly.loop_exit742.1, %polly.loop_exit742.2
  %polly.indvar737.2 = phi i64 [ %polly.indvar_next738.2, %polly.loop_exit742.2 ], [ 0, %polly.loop_exit742.1 ]
  %462 = mul nuw nsw i64 %polly.indvar737.2, 640
  %463 = trunc i64 %polly.indvar737.2 to i32
  %broadcast.splatinsert984 = insertelement <4 x i32> poison, i32 %463, i32 0
  %broadcast.splat985 = shufflevector <4 x i32> %broadcast.splatinsert984, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body976

vector.body976:                                   ; preds = %vector.body976, %polly.loop_header734.2
  %index978 = phi i64 [ 0, %polly.loop_header734.2 ], [ %index.next979, %vector.body976 ]
  %vec.ind982 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2 ], [ %vec.ind.next983, %vector.body976 ]
  %464 = add nuw nsw <4 x i64> %vec.ind982, <i64 64, i64 64, i64 64, i64 64>
  %465 = trunc <4 x i64> %464 to <4 x i32>
  %466 = mul <4 x i32> %broadcast.splat985, %465
  %467 = add <4 x i32> %466, <i32 3, i32 3, i32 3, i32 3>
  %468 = urem <4 x i32> %467, <i32 80, i32 80, i32 80, i32 80>
  %469 = sitofp <4 x i32> %468 to <4 x double>
  %470 = fmul fast <4 x double> %469, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %471 = extractelement <4 x i64> %464, i32 0
  %472 = shl i64 %471, 3
  %473 = add nuw nsw i64 %472, %462
  %474 = getelementptr i8, i8* %call, i64 %473
  %475 = bitcast i8* %474 to <4 x double>*
  store <4 x double> %470, <4 x double>* %475, align 8, !alias.scope !96, !noalias !98
  %index.next979 = add i64 %index978, 4
  %vec.ind.next983 = add <4 x i64> %vec.ind982, <i64 4, i64 4, i64 4, i64 4>
  %476 = icmp eq i64 %index.next979, 16
  br i1 %476, label %polly.loop_exit742.2, label %vector.body976, !llvm.loop !117

polly.loop_exit742.2:                             ; preds = %vector.body976
  %polly.indvar_next738.2 = add nuw nsw i64 %polly.indvar737.2, 1
  %exitcond870.2.not = icmp eq i64 %polly.indvar_next738.2, 32
  br i1 %exitcond870.2.not, label %polly.loop_header734.1903, label %polly.loop_header734.2

polly.loop_header734.1903:                        ; preds = %polly.loop_exit742.2, %polly.loop_exit742.1914
  %polly.indvar737.1902 = phi i64 [ %polly.indvar_next738.1912, %polly.loop_exit742.1914 ], [ 0, %polly.loop_exit742.2 ]
  %477 = add nuw nsw i64 %polly.indvar737.1902, 32
  %478 = mul nuw nsw i64 %477, 640
  %479 = trunc i64 %477 to i32
  %broadcast.splatinsert998 = insertelement <4 x i32> poison, i32 %479, i32 0
  %broadcast.splat999 = shufflevector <4 x i32> %broadcast.splatinsert998, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body988

vector.body988:                                   ; preds = %vector.body988, %polly.loop_header734.1903
  %index990 = phi i64 [ 0, %polly.loop_header734.1903 ], [ %index.next991, %vector.body988 ]
  %vec.ind996 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.1903 ], [ %vec.ind.next997, %vector.body988 ]
  %480 = mul <4 x i32> %vec.ind996, %broadcast.splat999
  %481 = add <4 x i32> %480, <i32 3, i32 3, i32 3, i32 3>
  %482 = urem <4 x i32> %481, <i32 80, i32 80, i32 80, i32 80>
  %483 = sitofp <4 x i32> %482 to <4 x double>
  %484 = fmul fast <4 x double> %483, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %485 = shl i64 %index990, 3
  %486 = add nuw nsw i64 %485, %478
  %487 = getelementptr i8, i8* %call, i64 %486
  %488 = bitcast i8* %487 to <4 x double>*
  store <4 x double> %484, <4 x double>* %488, align 8, !alias.scope !96, !noalias !98
  %index.next991 = add i64 %index990, 4
  %vec.ind.next997 = add <4 x i32> %vec.ind996, <i32 4, i32 4, i32 4, i32 4>
  %489 = icmp eq i64 %index.next991, 32
  br i1 %489, label %polly.loop_exit742.1914, label %vector.body988, !llvm.loop !118

polly.loop_exit742.1914:                          ; preds = %vector.body988
  %polly.indvar_next738.1912 = add nuw nsw i64 %polly.indvar737.1902, 1
  %exitcond870.1913.not = icmp eq i64 %polly.indvar_next738.1912, 32
  br i1 %exitcond870.1913.not, label %polly.loop_header734.1.1, label %polly.loop_header734.1903

polly.loop_header734.1.1:                         ; preds = %polly.loop_exit742.1914, %polly.loop_exit742.1.1
  %polly.indvar737.1.1 = phi i64 [ %polly.indvar_next738.1.1, %polly.loop_exit742.1.1 ], [ 0, %polly.loop_exit742.1914 ]
  %490 = add nuw nsw i64 %polly.indvar737.1.1, 32
  %491 = mul nuw nsw i64 %490, 640
  %492 = trunc i64 %490 to i32
  %broadcast.splatinsert1010 = insertelement <4 x i32> poison, i32 %492, i32 0
  %broadcast.splat1011 = shufflevector <4 x i32> %broadcast.splatinsert1010, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1002

vector.body1002:                                  ; preds = %vector.body1002, %polly.loop_header734.1.1
  %index1004 = phi i64 [ 0, %polly.loop_header734.1.1 ], [ %index.next1005, %vector.body1002 ]
  %vec.ind1008 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.1 ], [ %vec.ind.next1009, %vector.body1002 ]
  %493 = add nuw nsw <4 x i64> %vec.ind1008, <i64 32, i64 32, i64 32, i64 32>
  %494 = trunc <4 x i64> %493 to <4 x i32>
  %495 = mul <4 x i32> %broadcast.splat1011, %494
  %496 = add <4 x i32> %495, <i32 3, i32 3, i32 3, i32 3>
  %497 = urem <4 x i32> %496, <i32 80, i32 80, i32 80, i32 80>
  %498 = sitofp <4 x i32> %497 to <4 x double>
  %499 = fmul fast <4 x double> %498, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %500 = extractelement <4 x i64> %493, i32 0
  %501 = shl i64 %500, 3
  %502 = add nuw nsw i64 %501, %491
  %503 = getelementptr i8, i8* %call, i64 %502
  %504 = bitcast i8* %503 to <4 x double>*
  store <4 x double> %499, <4 x double>* %504, align 8, !alias.scope !96, !noalias !98
  %index.next1005 = add i64 %index1004, 4
  %vec.ind.next1009 = add <4 x i64> %vec.ind1008, <i64 4, i64 4, i64 4, i64 4>
  %505 = icmp eq i64 %index.next1005, 32
  br i1 %505, label %polly.loop_exit742.1.1, label %vector.body1002, !llvm.loop !119

polly.loop_exit742.1.1:                           ; preds = %vector.body1002
  %polly.indvar_next738.1.1 = add nuw nsw i64 %polly.indvar737.1.1, 1
  %exitcond870.1.1.not = icmp eq i64 %polly.indvar_next738.1.1, 32
  br i1 %exitcond870.1.1.not, label %polly.loop_header734.2.1, label %polly.loop_header734.1.1

polly.loop_header734.2.1:                         ; preds = %polly.loop_exit742.1.1, %polly.loop_exit742.2.1
  %polly.indvar737.2.1 = phi i64 [ %polly.indvar_next738.2.1, %polly.loop_exit742.2.1 ], [ 0, %polly.loop_exit742.1.1 ]
  %506 = add nuw nsw i64 %polly.indvar737.2.1, 32
  %507 = mul nuw nsw i64 %506, 640
  %508 = trunc i64 %506 to i32
  %broadcast.splatinsert1022 = insertelement <4 x i32> poison, i32 %508, i32 0
  %broadcast.splat1023 = shufflevector <4 x i32> %broadcast.splatinsert1022, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1014

vector.body1014:                                  ; preds = %vector.body1014, %polly.loop_header734.2.1
  %index1016 = phi i64 [ 0, %polly.loop_header734.2.1 ], [ %index.next1017, %vector.body1014 ]
  %vec.ind1020 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.1 ], [ %vec.ind.next1021, %vector.body1014 ]
  %509 = add nuw nsw <4 x i64> %vec.ind1020, <i64 64, i64 64, i64 64, i64 64>
  %510 = trunc <4 x i64> %509 to <4 x i32>
  %511 = mul <4 x i32> %broadcast.splat1023, %510
  %512 = add <4 x i32> %511, <i32 3, i32 3, i32 3, i32 3>
  %513 = urem <4 x i32> %512, <i32 80, i32 80, i32 80, i32 80>
  %514 = sitofp <4 x i32> %513 to <4 x double>
  %515 = fmul fast <4 x double> %514, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %516 = extractelement <4 x i64> %509, i32 0
  %517 = shl i64 %516, 3
  %518 = add nuw nsw i64 %517, %507
  %519 = getelementptr i8, i8* %call, i64 %518
  %520 = bitcast i8* %519 to <4 x double>*
  store <4 x double> %515, <4 x double>* %520, align 8, !alias.scope !96, !noalias !98
  %index.next1017 = add i64 %index1016, 4
  %vec.ind.next1021 = add <4 x i64> %vec.ind1020, <i64 4, i64 4, i64 4, i64 4>
  %521 = icmp eq i64 %index.next1017, 16
  br i1 %521, label %polly.loop_exit742.2.1, label %vector.body1014, !llvm.loop !120

polly.loop_exit742.2.1:                           ; preds = %vector.body1014
  %polly.indvar_next738.2.1 = add nuw nsw i64 %polly.indvar737.2.1, 1
  %exitcond870.2.1.not = icmp eq i64 %polly.indvar_next738.2.1, 32
  br i1 %exitcond870.2.1.not, label %polly.loop_header734.2917, label %polly.loop_header734.2.1

polly.loop_header734.2917:                        ; preds = %polly.loop_exit742.2.1, %polly.loop_exit742.2928
  %polly.indvar737.2916 = phi i64 [ %polly.indvar_next738.2926, %polly.loop_exit742.2928 ], [ 0, %polly.loop_exit742.2.1 ]
  %522 = add nuw nsw i64 %polly.indvar737.2916, 64
  %523 = mul nuw nsw i64 %522, 640
  %524 = trunc i64 %522 to i32
  %broadcast.splatinsert1036 = insertelement <4 x i32> poison, i32 %524, i32 0
  %broadcast.splat1037 = shufflevector <4 x i32> %broadcast.splatinsert1036, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1026

vector.body1026:                                  ; preds = %vector.body1026, %polly.loop_header734.2917
  %index1028 = phi i64 [ 0, %polly.loop_header734.2917 ], [ %index.next1029, %vector.body1026 ]
  %vec.ind1034 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.2917 ], [ %vec.ind.next1035, %vector.body1026 ]
  %525 = mul <4 x i32> %vec.ind1034, %broadcast.splat1037
  %526 = add <4 x i32> %525, <i32 3, i32 3, i32 3, i32 3>
  %527 = urem <4 x i32> %526, <i32 80, i32 80, i32 80, i32 80>
  %528 = sitofp <4 x i32> %527 to <4 x double>
  %529 = fmul fast <4 x double> %528, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %530 = shl i64 %index1028, 3
  %531 = add nuw nsw i64 %530, %523
  %532 = getelementptr i8, i8* %call, i64 %531
  %533 = bitcast i8* %532 to <4 x double>*
  store <4 x double> %529, <4 x double>* %533, align 8, !alias.scope !96, !noalias !98
  %index.next1029 = add i64 %index1028, 4
  %vec.ind.next1035 = add <4 x i32> %vec.ind1034, <i32 4, i32 4, i32 4, i32 4>
  %534 = icmp eq i64 %index.next1029, 32
  br i1 %534, label %polly.loop_exit742.2928, label %vector.body1026, !llvm.loop !121

polly.loop_exit742.2928:                          ; preds = %vector.body1026
  %polly.indvar_next738.2926 = add nuw nsw i64 %polly.indvar737.2916, 1
  %exitcond870.2927.not = icmp eq i64 %polly.indvar_next738.2926, 16
  br i1 %exitcond870.2927.not, label %polly.loop_header734.1.2, label %polly.loop_header734.2917

polly.loop_header734.1.2:                         ; preds = %polly.loop_exit742.2928, %polly.loop_exit742.1.2
  %polly.indvar737.1.2 = phi i64 [ %polly.indvar_next738.1.2, %polly.loop_exit742.1.2 ], [ 0, %polly.loop_exit742.2928 ]
  %535 = add nuw nsw i64 %polly.indvar737.1.2, 64
  %536 = mul nuw nsw i64 %535, 640
  %537 = trunc i64 %535 to i32
  %broadcast.splatinsert1048 = insertelement <4 x i32> poison, i32 %537, i32 0
  %broadcast.splat1049 = shufflevector <4 x i32> %broadcast.splatinsert1048, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1040

vector.body1040:                                  ; preds = %vector.body1040, %polly.loop_header734.1.2
  %index1042 = phi i64 [ 0, %polly.loop_header734.1.2 ], [ %index.next1043, %vector.body1040 ]
  %vec.ind1046 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.2 ], [ %vec.ind.next1047, %vector.body1040 ]
  %538 = add nuw nsw <4 x i64> %vec.ind1046, <i64 32, i64 32, i64 32, i64 32>
  %539 = trunc <4 x i64> %538 to <4 x i32>
  %540 = mul <4 x i32> %broadcast.splat1049, %539
  %541 = add <4 x i32> %540, <i32 3, i32 3, i32 3, i32 3>
  %542 = urem <4 x i32> %541, <i32 80, i32 80, i32 80, i32 80>
  %543 = sitofp <4 x i32> %542 to <4 x double>
  %544 = fmul fast <4 x double> %543, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %545 = extractelement <4 x i64> %538, i32 0
  %546 = shl i64 %545, 3
  %547 = add nuw nsw i64 %546, %536
  %548 = getelementptr i8, i8* %call, i64 %547
  %549 = bitcast i8* %548 to <4 x double>*
  store <4 x double> %544, <4 x double>* %549, align 8, !alias.scope !96, !noalias !98
  %index.next1043 = add i64 %index1042, 4
  %vec.ind.next1047 = add <4 x i64> %vec.ind1046, <i64 4, i64 4, i64 4, i64 4>
  %550 = icmp eq i64 %index.next1043, 32
  br i1 %550, label %polly.loop_exit742.1.2, label %vector.body1040, !llvm.loop !122

polly.loop_exit742.1.2:                           ; preds = %vector.body1040
  %polly.indvar_next738.1.2 = add nuw nsw i64 %polly.indvar737.1.2, 1
  %exitcond870.1.2.not = icmp eq i64 %polly.indvar_next738.1.2, 16
  br i1 %exitcond870.1.2.not, label %polly.loop_header734.2.2, label %polly.loop_header734.1.2

polly.loop_header734.2.2:                         ; preds = %polly.loop_exit742.1.2, %polly.loop_exit742.2.2
  %polly.indvar737.2.2 = phi i64 [ %polly.indvar_next738.2.2, %polly.loop_exit742.2.2 ], [ 0, %polly.loop_exit742.1.2 ]
  %551 = add nuw nsw i64 %polly.indvar737.2.2, 64
  %552 = mul nuw nsw i64 %551, 640
  %553 = trunc i64 %551 to i32
  %broadcast.splatinsert1060 = insertelement <4 x i32> poison, i32 %553, i32 0
  %broadcast.splat1061 = shufflevector <4 x i32> %broadcast.splatinsert1060, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1052

vector.body1052:                                  ; preds = %vector.body1052, %polly.loop_header734.2.2
  %index1054 = phi i64 [ 0, %polly.loop_header734.2.2 ], [ %index.next1055, %vector.body1052 ]
  %vec.ind1058 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.2 ], [ %vec.ind.next1059, %vector.body1052 ]
  %554 = add nuw nsw <4 x i64> %vec.ind1058, <i64 64, i64 64, i64 64, i64 64>
  %555 = trunc <4 x i64> %554 to <4 x i32>
  %556 = mul <4 x i32> %broadcast.splat1061, %555
  %557 = add <4 x i32> %556, <i32 3, i32 3, i32 3, i32 3>
  %558 = urem <4 x i32> %557, <i32 80, i32 80, i32 80, i32 80>
  %559 = sitofp <4 x i32> %558 to <4 x double>
  %560 = fmul fast <4 x double> %559, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %561 = extractelement <4 x i64> %554, i32 0
  %562 = shl i64 %561, 3
  %563 = add nuw nsw i64 %562, %552
  %564 = getelementptr i8, i8* %call, i64 %563
  %565 = bitcast i8* %564 to <4 x double>*
  store <4 x double> %560, <4 x double>* %565, align 8, !alias.scope !96, !noalias !98
  %index.next1055 = add i64 %index1054, 4
  %vec.ind.next1059 = add <4 x i64> %vec.ind1058, <i64 4, i64 4, i64 4, i64 4>
  %566 = icmp eq i64 %index.next1055, 16
  br i1 %566, label %polly.loop_exit742.2.2, label %vector.body1052, !llvm.loop !123

polly.loop_exit742.2.2:                           ; preds = %vector.body1052
  %polly.indvar_next738.2.2 = add nuw nsw i64 %polly.indvar737.2.2, 1
  %exitcond870.2.2.not = icmp eq i64 %polly.indvar_next738.2.2, 16
  br i1 %exitcond870.2.2.not, label %polly.loop_header761, label %polly.loop_header734.2.2
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

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
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
!25 = !{!"llvm.loop.tile.size", i32 80}
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
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !57}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 20}
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
!77 = !{!68, !72, !73}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call2"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !76, !13}
!86 = !{!78, !82, !83}
!87 = distinct !{!87, !88, !"polly.alias.scope.MemRef_call"}
!88 = distinct !{!88, !"polly.alias.scope.domain"}
!89 = !{!90, !91, !92}
!90 = distinct !{!90, !88, !"polly.alias.scope.MemRef_call1"}
!91 = distinct !{!91, !88, !"polly.alias.scope.MemRef_call2"}
!92 = distinct !{!92, !88, !"polly.alias.scope.Packed_MemRef_call2"}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !76, !13}
!95 = !{!87, !91, !92}
!96 = distinct !{!96, !97, !"polly.alias.scope.MemRef_call"}
!97 = distinct !{!97, !"polly.alias.scope.domain"}
!98 = !{!99, !100}
!99 = distinct !{!99, !97, !"polly.alias.scope.MemRef_call1"}
!100 = distinct !{!100, !97, !"polly.alias.scope.MemRef_call2"}
!101 = distinct !{!101, !13}
!102 = !{!99, !96}
!103 = distinct !{!103, !13}
!104 = !{!100, !96}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !13}
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
