; ModuleID = 'syr2k_recreations//mmp_syr2k_S_24.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_24.c"
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
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv7.i, i64 %index943
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next944 = add i64 %index943, 4
  %vec.ind.next948 = add <4 x i64> %vec.ind947, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next944, 80
  br i1 %40, label %for.inc41.i, label %vector.body941, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body941
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph942, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1295, label %vector.ph1224

vector.ph1224:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %vector.ph1224
  %index1225 = phi i64 [ 0, %vector.ph1224 ], [ %index.next1226, %vector.body1223 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i, i64 %index1225
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1226 = add i64 %index1225, 4
  %46 = icmp eq i64 %index.next1226, %n.vec
  br i1 %46, label %middle.block1221, label %vector.body1223, !llvm.loop !18

middle.block1221:                                 ; preds = %vector.body1223
  %cmp.n1228 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1228, label %for.inc6.i, label %for.body3.i46.preheader1295

for.body3.i46.preheader1295:                      ; preds = %for.body3.i46.preheader, %middle.block1221
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1221 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1295, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1295 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1221, %for.cond1.preheader.i45
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
  %min.iters.check1244 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1244, label %for.body3.i60.preheader1294, label %vector.ph1245

vector.ph1245:                                    ; preds = %for.body3.i60.preheader
  %n.vec1247 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1243

vector.body1243:                                  ; preds = %vector.body1243, %vector.ph1245
  %index1248 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1249, %vector.body1243 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i52, i64 %index1248
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1252 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1252, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1249 = add i64 %index1248, 4
  %57 = icmp eq i64 %index.next1249, %n.vec1247
  br i1 %57, label %middle.block1241, label %vector.body1243, !llvm.loop !54

middle.block1241:                                 ; preds = %vector.body1243
  %cmp.n1251 = icmp eq i64 %indvars.iv21.i52, %n.vec1247
  br i1 %cmp.n1251, label %for.inc6.i63, label %for.body3.i60.preheader1294

for.body3.i60.preheader1294:                      ; preds = %for.body3.i60.preheader, %middle.block1241
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1247, %middle.block1241 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1294, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1294 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1241, %for.cond1.preheader.i54
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
  %min.iters.check1270 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1270, label %for.body3.i99.preheader1293, label %vector.ph1271

vector.ph1271:                                    ; preds = %for.body3.i99.preheader
  %n.vec1273 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1269

vector.body1269:                                  ; preds = %vector.body1269, %vector.ph1271
  %index1274 = phi i64 [ 0, %vector.ph1271 ], [ %index.next1275, %vector.body1269 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i91, i64 %index1274
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1278 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1278, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1275 = add i64 %index1274, 4
  %68 = icmp eq i64 %index.next1275, %n.vec1273
  br i1 %68, label %middle.block1267, label %vector.body1269, !llvm.loop !56

middle.block1267:                                 ; preds = %vector.body1269
  %cmp.n1277 = icmp eq i64 %indvars.iv21.i91, %n.vec1273
  br i1 %cmp.n1277, label %for.inc6.i102, label %for.body3.i99.preheader1293

for.body3.i99.preheader1293:                      ; preds = %for.body3.i99.preheader, %middle.block1267
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1273, %middle.block1267 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1293, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1293 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1267, %for.cond1.preheader.i93
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !58
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call748, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !60

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !61

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit229.3
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1282 = phi i64 [ %indvar.next1283, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1282, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1284 = icmp ult i64 %88, 4
  br i1 %min.iters.check1284, label %polly.loop_header191.preheader, label %vector.ph1285

vector.ph1285:                                    ; preds = %polly.loop_header
  %n.vec1287 = and i64 %88, -4
  br label %vector.body1281

vector.body1281:                                  ; preds = %vector.body1281, %vector.ph1285
  %index1288 = phi i64 [ 0, %vector.ph1285 ], [ %index.next1289, %vector.body1281 ]
  %90 = shl nuw nsw i64 %index1288, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1292 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1292, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1289 = add i64 %index1288, 4
  %95 = icmp eq i64 %index.next1289, %n.vec1287
  br i1 %95, label %middle.block1279, label %vector.body1281, !llvm.loop !68

middle.block1279:                                 ; preds = %vector.body1281
  %cmp.n1291 = icmp eq i64 %88, %n.vec1287
  br i1 %cmp.n1291, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1279
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1287, %middle.block1279 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1279
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond817.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1283 = add i64 %indvar1282, 1
  br i1 %exitcond817.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep813.1 = getelementptr i8, i8* %malloccall, i64 480
  %scevgep814.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.1, i64 480, i1 false)
  %scevgep813.2 = getelementptr i8, i8* %malloccall, i64 960
  %scevgep814.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.2, i64 480, i1 false)
  %scevgep813.3 = getelementptr i8, i8* %malloccall, i64 1440
  %scevgep814.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.3, i64 480, i1 false)
  %scevgep813.4 = getelementptr i8, i8* %malloccall, i64 1920
  %scevgep814.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.4, i64 480, i1 false)
  %scevgep813.5 = getelementptr i8, i8* %malloccall, i64 2400
  %scevgep814.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.5, i64 480, i1 false)
  %scevgep813.6 = getelementptr i8, i8* %malloccall, i64 2880
  %scevgep814.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.6, i64 480, i1 false)
  %scevgep813.7 = getelementptr i8, i8* %malloccall, i64 3360
  %scevgep814.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.7, i64 480, i1 false)
  %scevgep813.8 = getelementptr i8, i8* %malloccall, i64 3840
  %scevgep814.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.8, i64 480, i1 false)
  %scevgep813.9 = getelementptr i8, i8* %malloccall, i64 4320
  %scevgep814.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.9, i64 480, i1 false)
  %scevgep813.10 = getelementptr i8, i8* %malloccall, i64 4800
  %scevgep814.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.10, i64 480, i1 false)
  %scevgep813.11 = getelementptr i8, i8* %malloccall, i64 5280
  %scevgep814.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.11, i64 480, i1 false)
  %scevgep813.12 = getelementptr i8, i8* %malloccall, i64 5760
  %scevgep814.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.12, i64 480, i1 false)
  %scevgep813.13 = getelementptr i8, i8* %malloccall, i64 6240
  %scevgep814.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.13, i64 480, i1 false)
  %scevgep813.14 = getelementptr i8, i8* %malloccall, i64 6720
  %scevgep814.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.14, i64 480, i1 false)
  %scevgep813.15 = getelementptr i8, i8* %malloccall, i64 7200
  %scevgep814.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.15, i64 480, i1 false)
  %scevgep813.16 = getelementptr i8, i8* %malloccall, i64 7680
  %scevgep814.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.16, i64 480, i1 false)
  %scevgep813.17 = getelementptr i8, i8* %malloccall, i64 8160
  %scevgep814.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.17, i64 480, i1 false)
  %scevgep813.18 = getelementptr i8, i8* %malloccall, i64 8640
  %scevgep814.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.18, i64 480, i1 false)
  %scevgep813.19 = getelementptr i8, i8* %malloccall, i64 9120
  %scevgep814.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.19, i64 480, i1 false)
  %scevgep813.20 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep814.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.20, i64 480, i1 false)
  %scevgep813.21 = getelementptr i8, i8* %malloccall, i64 10080
  %scevgep814.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.21, i64 480, i1 false)
  %scevgep813.22 = getelementptr i8, i8* %malloccall, i64 10560
  %scevgep814.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.22, i64 480, i1 false)
  %scevgep813.23 = getelementptr i8, i8* %malloccall, i64 11040
  %scevgep814.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.23, i64 480, i1 false)
  %scevgep813.24 = getelementptr i8, i8* %malloccall, i64 11520
  %scevgep814.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.24, i64 480, i1 false)
  %scevgep813.25 = getelementptr i8, i8* %malloccall, i64 12000
  %scevgep814.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.25, i64 480, i1 false)
  %scevgep813.26 = getelementptr i8, i8* %malloccall, i64 12480
  %scevgep814.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.26, i64 480, i1 false)
  %scevgep813.27 = getelementptr i8, i8* %malloccall, i64 12960
  %scevgep814.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.27, i64 480, i1 false)
  %scevgep813.28 = getelementptr i8, i8* %malloccall, i64 13440
  %scevgep814.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.28, i64 480, i1 false)
  %scevgep813.29 = getelementptr i8, i8* %malloccall, i64 13920
  %scevgep814.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.29, i64 480, i1 false)
  %scevgep813.30 = getelementptr i8, i8* %malloccall, i64 14400
  %scevgep814.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.30, i64 480, i1 false)
  %scevgep813.31 = getelementptr i8, i8* %malloccall, i64 14880
  %scevgep814.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.31, i64 480, i1 false)
  %scevgep813.32 = getelementptr i8, i8* %malloccall, i64 15360
  %scevgep814.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.32, i64 480, i1 false)
  %scevgep813.33 = getelementptr i8, i8* %malloccall, i64 15840
  %scevgep814.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.33, i64 480, i1 false)
  %scevgep813.34 = getelementptr i8, i8* %malloccall, i64 16320
  %scevgep814.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.34, i64 480, i1 false)
  %scevgep813.35 = getelementptr i8, i8* %malloccall, i64 16800
  %scevgep814.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.35, i64 480, i1 false)
  %scevgep813.36 = getelementptr i8, i8* %malloccall, i64 17280
  %scevgep814.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.36, i64 480, i1 false)
  %scevgep813.37 = getelementptr i8, i8* %malloccall, i64 17760
  %scevgep814.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.37, i64 480, i1 false)
  %scevgep813.38 = getelementptr i8, i8* %malloccall, i64 18240
  %scevgep814.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.38, i64 480, i1 false)
  %scevgep813.39 = getelementptr i8, i8* %malloccall, i64 18720
  %scevgep814.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.39, i64 480, i1 false)
  %scevgep813.40 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep814.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.40, i64 480, i1 false)
  %scevgep813.41 = getelementptr i8, i8* %malloccall, i64 19680
  %scevgep814.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.41, i64 480, i1 false)
  %scevgep813.42 = getelementptr i8, i8* %malloccall, i64 20160
  %scevgep814.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.42, i64 480, i1 false)
  %scevgep813.43 = getelementptr i8, i8* %malloccall, i64 20640
  %scevgep814.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.43, i64 480, i1 false)
  %scevgep813.44 = getelementptr i8, i8* %malloccall, i64 21120
  %scevgep814.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.44, i64 480, i1 false)
  %scevgep813.45 = getelementptr i8, i8* %malloccall, i64 21600
  %scevgep814.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.45, i64 480, i1 false)
  %scevgep813.46 = getelementptr i8, i8* %malloccall, i64 22080
  %scevgep814.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.46, i64 480, i1 false)
  %scevgep813.47 = getelementptr i8, i8* %malloccall, i64 22560
  %scevgep814.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.47, i64 480, i1 false)
  %scevgep813.48 = getelementptr i8, i8* %malloccall, i64 23040
  %scevgep814.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.48, i64 480, i1 false)
  %scevgep813.49 = getelementptr i8, i8* %malloccall, i64 23520
  %scevgep814.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.49, i64 480, i1 false)
  %scevgep813.50 = getelementptr i8, i8* %malloccall, i64 24000
  %scevgep814.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.50, i64 480, i1 false)
  %scevgep813.51 = getelementptr i8, i8* %malloccall, i64 24480
  %scevgep814.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.51, i64 480, i1 false)
  %scevgep813.52 = getelementptr i8, i8* %malloccall, i64 24960
  %scevgep814.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.52, i64 480, i1 false)
  %scevgep813.53 = getelementptr i8, i8* %malloccall, i64 25440
  %scevgep814.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.53, i64 480, i1 false)
  %scevgep813.54 = getelementptr i8, i8* %malloccall, i64 25920
  %scevgep814.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.54, i64 480, i1 false)
  %scevgep813.55 = getelementptr i8, i8* %malloccall, i64 26400
  %scevgep814.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.55, i64 480, i1 false)
  %scevgep813.56 = getelementptr i8, i8* %malloccall, i64 26880
  %scevgep814.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.56, i64 480, i1 false)
  %scevgep813.57 = getelementptr i8, i8* %malloccall, i64 27360
  %scevgep814.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.57, i64 480, i1 false)
  %scevgep813.58 = getelementptr i8, i8* %malloccall, i64 27840
  %scevgep814.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.58, i64 480, i1 false)
  %scevgep813.59 = getelementptr i8, i8* %malloccall, i64 28320
  %scevgep814.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.59, i64 480, i1 false)
  %scevgep813.60 = getelementptr i8, i8* %malloccall, i64 28800
  %scevgep814.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.60, i64 480, i1 false)
  %scevgep813.61 = getelementptr i8, i8* %malloccall, i64 29280
  %scevgep814.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.61, i64 480, i1 false)
  %scevgep813.62 = getelementptr i8, i8* %malloccall, i64 29760
  %scevgep814.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.62, i64 480, i1 false)
  %scevgep813.63 = getelementptr i8, i8* %malloccall, i64 30240
  %scevgep814.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.63, i64 480, i1 false)
  %scevgep813.64 = getelementptr i8, i8* %malloccall, i64 30720
  %scevgep814.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.64, i64 480, i1 false)
  %scevgep813.65 = getelementptr i8, i8* %malloccall, i64 31200
  %scevgep814.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.65, i64 480, i1 false)
  %scevgep813.66 = getelementptr i8, i8* %malloccall, i64 31680
  %scevgep814.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.66, i64 480, i1 false)
  %scevgep813.67 = getelementptr i8, i8* %malloccall, i64 32160
  %scevgep814.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.67, i64 480, i1 false)
  %scevgep813.68 = getelementptr i8, i8* %malloccall, i64 32640
  %scevgep814.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.68, i64 480, i1 false)
  %scevgep813.69 = getelementptr i8, i8* %malloccall, i64 33120
  %scevgep814.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.69, i64 480, i1 false)
  %scevgep813.70 = getelementptr i8, i8* %malloccall, i64 33600
  %scevgep814.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.70, i64 480, i1 false)
  %scevgep813.71 = getelementptr i8, i8* %malloccall, i64 34080
  %scevgep814.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.71, i64 480, i1 false)
  %scevgep813.72 = getelementptr i8, i8* %malloccall, i64 34560
  %scevgep814.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.72, i64 480, i1 false)
  %scevgep813.73 = getelementptr i8, i8* %malloccall, i64 35040
  %scevgep814.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.73, i64 480, i1 false)
  %scevgep813.74 = getelementptr i8, i8* %malloccall, i64 35520
  %scevgep814.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.74, i64 480, i1 false)
  %scevgep813.75 = getelementptr i8, i8* %malloccall, i64 36000
  %scevgep814.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.75, i64 480, i1 false)
  %scevgep813.76 = getelementptr i8, i8* %malloccall, i64 36480
  %scevgep814.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.76, i64 480, i1 false)
  %scevgep813.77 = getelementptr i8, i8* %malloccall, i64 36960
  %scevgep814.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.77, i64 480, i1 false)
  %scevgep813.78 = getelementptr i8, i8* %malloccall, i64 37440
  %scevgep814.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.78, i64 480, i1 false)
  %scevgep813.79 = getelementptr i8, i8* %malloccall, i64 37920
  %scevgep814.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep813.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep814.79, i64 480, i1 false)
  br label %polly.loop_header215

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond816.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header215:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit229.3
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229.3 ], [ 1, %polly.loop_header199.preheader ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit229.3 ], [ 0, %polly.loop_header199.preheader ]
  %97 = shl nsw i64 %polly.indvar218, 4
  br label %polly.loop_header227

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header215
  %indvars.iv804 = phi i64 [ %indvars.iv.next805, %polly.loop_exit235 ], [ %indvars.iv, %polly.loop_header215 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header215 ]
  %98 = add nuw nsw i64 %polly.indvar230, %97
  %polly.access.mul.Packed_MemRef_call2248 = mul nuw nsw i64 %98, 60
  %99 = mul nuw nsw i64 %98, 480
  %100 = mul nuw nsw i64 %98, 640
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next805 = add nuw nsw i64 %indvars.iv804, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next231, 16
  br i1 %exitcond809.not, label %polly.loop_header227.1, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_exit241 ]
  %101 = shl i64 %polly.indvar236, 3
  %polly.access.add.Packed_MemRef_call2249 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call2248
  %polly.access.Packed_MemRef_call2250 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249
  %_p_scalar_251 = load double, double* %polly.access.Packed_MemRef_call2250, align 8
  %102 = add nuw nsw i64 %101, %99
  %scevgep256 = getelementptr i8, i8* %call1, i64 %102
  %scevgep256257 = bitcast i8* %scevgep256 to double*
  %_p_scalar_258 = load double, double* %scevgep256257, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond808.not = icmp eq i64 %polly.indvar_next237, 16
  br i1 %exitcond808.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header233
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %103 = mul nuw nsw i64 %polly.indvar242, 480
  %104 = add nuw nsw i64 %103, %101
  %scevgep245 = getelementptr i8, i8* %call1, i64 %104
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_251, %_p_scalar_247
  %polly.access.mul.Packed_MemRef_call2252 = mul nuw nsw i64 %polly.indvar242, 60
  %polly.access.add.Packed_MemRef_call2253 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252, %polly.indvar236
  %polly.access.Packed_MemRef_call2254 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253
  %_p_scalar_255 = load double, double* %polly.access.Packed_MemRef_call2254, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_258, %_p_scalar_255
  %105 = shl nuw nsw i64 %polly.indvar242, 3
  %106 = add nuw nsw i64 %105, %100
  %scevgep259 = getelementptr i8, i8* %call, i64 %106
  %scevgep259260 = bitcast i8* %scevgep259 to double*
  %_p_scalar_261 = load double, double* %scevgep259260, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_261
  store double %p_add42.i118, double* %scevgep259260, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next243, %indvars.iv804
  br i1 %exitcond.not, label %polly.loop_exit241, label %polly.loop_header239

polly.start264:                                   ; preds = %kernel_syr2k.exit
  %malloccall266 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header350

polly.exiting265:                                 ; preds = %polly.loop_exit396.3
  tail call void @free(i8* nonnull %malloccall266)
  br label %kernel_syr2k.exit90

polly.loop_header350:                             ; preds = %polly.loop_exit358, %polly.start264
  %indvar1256 = phi i64 [ %indvar.next1257, %polly.loop_exit358 ], [ 0, %polly.start264 ]
  %polly.indvar353 = phi i64 [ %polly.indvar_next354, %polly.loop_exit358 ], [ 1, %polly.start264 ]
  %107 = add i64 %indvar1256, 1
  %108 = mul nuw nsw i64 %polly.indvar353, 640
  %scevgep362 = getelementptr i8, i8* %call, i64 %108
  %min.iters.check1258 = icmp ult i64 %107, 4
  br i1 %min.iters.check1258, label %polly.loop_header356.preheader, label %vector.ph1259

vector.ph1259:                                    ; preds = %polly.loop_header350
  %n.vec1261 = and i64 %107, -4
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %vector.ph1259
  %index1262 = phi i64 [ 0, %vector.ph1259 ], [ %index.next1263, %vector.body1255 ]
  %109 = shl nuw nsw i64 %index1262, 3
  %110 = getelementptr i8, i8* %scevgep362, i64 %109
  %111 = bitcast i8* %110 to <4 x double>*
  %wide.load1266 = load <4 x double>, <4 x double>* %111, align 8, !alias.scope !72, !noalias !74
  %112 = fmul fast <4 x double> %wide.load1266, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %113 = bitcast i8* %110 to <4 x double>*
  store <4 x double> %112, <4 x double>* %113, align 8, !alias.scope !72, !noalias !74
  %index.next1263 = add i64 %index1262, 4
  %114 = icmp eq i64 %index.next1263, %n.vec1261
  br i1 %114, label %middle.block1253, label %vector.body1255, !llvm.loop !78

middle.block1253:                                 ; preds = %vector.body1255
  %cmp.n1265 = icmp eq i64 %107, %n.vec1261
  br i1 %cmp.n1265, label %polly.loop_exit358, label %polly.loop_header356.preheader

polly.loop_header356.preheader:                   ; preds = %polly.loop_header350, %middle.block1253
  %polly.indvar359.ph = phi i64 [ 0, %polly.loop_header350 ], [ %n.vec1261, %middle.block1253 ]
  br label %polly.loop_header356

polly.loop_exit358:                               ; preds = %polly.loop_header356, %middle.block1253
  %polly.indvar_next354 = add nuw nsw i64 %polly.indvar353, 1
  %exitcond835.not = icmp eq i64 %polly.indvar_next354, 80
  %indvar.next1257 = add i64 %indvar1256, 1
  br i1 %exitcond835.not, label %polly.loop_header366.preheader, label %polly.loop_header350

polly.loop_header366.preheader:                   ; preds = %polly.loop_exit358
  %Packed_MemRef_call2267 = bitcast i8* %malloccall266 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall266, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep831.1 = getelementptr i8, i8* %malloccall266, i64 480
  %scevgep832.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.1, i64 480, i1 false)
  %scevgep831.2 = getelementptr i8, i8* %malloccall266, i64 960
  %scevgep832.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.2, i64 480, i1 false)
  %scevgep831.3 = getelementptr i8, i8* %malloccall266, i64 1440
  %scevgep832.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.3, i64 480, i1 false)
  %scevgep831.4 = getelementptr i8, i8* %malloccall266, i64 1920
  %scevgep832.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.4, i64 480, i1 false)
  %scevgep831.5 = getelementptr i8, i8* %malloccall266, i64 2400
  %scevgep832.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.5, i64 480, i1 false)
  %scevgep831.6 = getelementptr i8, i8* %malloccall266, i64 2880
  %scevgep832.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.6, i64 480, i1 false)
  %scevgep831.7 = getelementptr i8, i8* %malloccall266, i64 3360
  %scevgep832.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.7, i64 480, i1 false)
  %scevgep831.8 = getelementptr i8, i8* %malloccall266, i64 3840
  %scevgep832.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.8, i64 480, i1 false)
  %scevgep831.9 = getelementptr i8, i8* %malloccall266, i64 4320
  %scevgep832.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.9, i64 480, i1 false)
  %scevgep831.10 = getelementptr i8, i8* %malloccall266, i64 4800
  %scevgep832.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.10, i64 480, i1 false)
  %scevgep831.11 = getelementptr i8, i8* %malloccall266, i64 5280
  %scevgep832.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.11, i64 480, i1 false)
  %scevgep831.12 = getelementptr i8, i8* %malloccall266, i64 5760
  %scevgep832.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.12, i64 480, i1 false)
  %scevgep831.13 = getelementptr i8, i8* %malloccall266, i64 6240
  %scevgep832.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.13, i64 480, i1 false)
  %scevgep831.14 = getelementptr i8, i8* %malloccall266, i64 6720
  %scevgep832.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.14, i64 480, i1 false)
  %scevgep831.15 = getelementptr i8, i8* %malloccall266, i64 7200
  %scevgep832.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.15, i64 480, i1 false)
  %scevgep831.16 = getelementptr i8, i8* %malloccall266, i64 7680
  %scevgep832.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.16, i64 480, i1 false)
  %scevgep831.17 = getelementptr i8, i8* %malloccall266, i64 8160
  %scevgep832.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.17, i64 480, i1 false)
  %scevgep831.18 = getelementptr i8, i8* %malloccall266, i64 8640
  %scevgep832.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.18, i64 480, i1 false)
  %scevgep831.19 = getelementptr i8, i8* %malloccall266, i64 9120
  %scevgep832.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.19, i64 480, i1 false)
  %scevgep831.20 = getelementptr i8, i8* %malloccall266, i64 9600
  %scevgep832.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.20, i64 480, i1 false)
  %scevgep831.21 = getelementptr i8, i8* %malloccall266, i64 10080
  %scevgep832.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.21, i64 480, i1 false)
  %scevgep831.22 = getelementptr i8, i8* %malloccall266, i64 10560
  %scevgep832.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.22, i64 480, i1 false)
  %scevgep831.23 = getelementptr i8, i8* %malloccall266, i64 11040
  %scevgep832.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.23, i64 480, i1 false)
  %scevgep831.24 = getelementptr i8, i8* %malloccall266, i64 11520
  %scevgep832.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.24, i64 480, i1 false)
  %scevgep831.25 = getelementptr i8, i8* %malloccall266, i64 12000
  %scevgep832.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.25, i64 480, i1 false)
  %scevgep831.26 = getelementptr i8, i8* %malloccall266, i64 12480
  %scevgep832.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.26, i64 480, i1 false)
  %scevgep831.27 = getelementptr i8, i8* %malloccall266, i64 12960
  %scevgep832.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.27, i64 480, i1 false)
  %scevgep831.28 = getelementptr i8, i8* %malloccall266, i64 13440
  %scevgep832.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.28, i64 480, i1 false)
  %scevgep831.29 = getelementptr i8, i8* %malloccall266, i64 13920
  %scevgep832.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.29, i64 480, i1 false)
  %scevgep831.30 = getelementptr i8, i8* %malloccall266, i64 14400
  %scevgep832.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.30, i64 480, i1 false)
  %scevgep831.31 = getelementptr i8, i8* %malloccall266, i64 14880
  %scevgep832.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.31, i64 480, i1 false)
  %scevgep831.32 = getelementptr i8, i8* %malloccall266, i64 15360
  %scevgep832.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.32, i64 480, i1 false)
  %scevgep831.33 = getelementptr i8, i8* %malloccall266, i64 15840
  %scevgep832.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.33, i64 480, i1 false)
  %scevgep831.34 = getelementptr i8, i8* %malloccall266, i64 16320
  %scevgep832.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.34, i64 480, i1 false)
  %scevgep831.35 = getelementptr i8, i8* %malloccall266, i64 16800
  %scevgep832.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.35, i64 480, i1 false)
  %scevgep831.36 = getelementptr i8, i8* %malloccall266, i64 17280
  %scevgep832.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.36, i64 480, i1 false)
  %scevgep831.37 = getelementptr i8, i8* %malloccall266, i64 17760
  %scevgep832.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.37, i64 480, i1 false)
  %scevgep831.38 = getelementptr i8, i8* %malloccall266, i64 18240
  %scevgep832.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.38, i64 480, i1 false)
  %scevgep831.39 = getelementptr i8, i8* %malloccall266, i64 18720
  %scevgep832.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.39, i64 480, i1 false)
  %scevgep831.40 = getelementptr i8, i8* %malloccall266, i64 19200
  %scevgep832.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.40, i64 480, i1 false)
  %scevgep831.41 = getelementptr i8, i8* %malloccall266, i64 19680
  %scevgep832.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.41, i64 480, i1 false)
  %scevgep831.42 = getelementptr i8, i8* %malloccall266, i64 20160
  %scevgep832.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.42, i64 480, i1 false)
  %scevgep831.43 = getelementptr i8, i8* %malloccall266, i64 20640
  %scevgep832.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.43, i64 480, i1 false)
  %scevgep831.44 = getelementptr i8, i8* %malloccall266, i64 21120
  %scevgep832.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.44, i64 480, i1 false)
  %scevgep831.45 = getelementptr i8, i8* %malloccall266, i64 21600
  %scevgep832.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.45, i64 480, i1 false)
  %scevgep831.46 = getelementptr i8, i8* %malloccall266, i64 22080
  %scevgep832.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.46, i64 480, i1 false)
  %scevgep831.47 = getelementptr i8, i8* %malloccall266, i64 22560
  %scevgep832.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.47, i64 480, i1 false)
  %scevgep831.48 = getelementptr i8, i8* %malloccall266, i64 23040
  %scevgep832.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.48, i64 480, i1 false)
  %scevgep831.49 = getelementptr i8, i8* %malloccall266, i64 23520
  %scevgep832.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.49, i64 480, i1 false)
  %scevgep831.50 = getelementptr i8, i8* %malloccall266, i64 24000
  %scevgep832.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.50, i64 480, i1 false)
  %scevgep831.51 = getelementptr i8, i8* %malloccall266, i64 24480
  %scevgep832.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.51, i64 480, i1 false)
  %scevgep831.52 = getelementptr i8, i8* %malloccall266, i64 24960
  %scevgep832.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.52, i64 480, i1 false)
  %scevgep831.53 = getelementptr i8, i8* %malloccall266, i64 25440
  %scevgep832.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.53, i64 480, i1 false)
  %scevgep831.54 = getelementptr i8, i8* %malloccall266, i64 25920
  %scevgep832.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.54, i64 480, i1 false)
  %scevgep831.55 = getelementptr i8, i8* %malloccall266, i64 26400
  %scevgep832.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.55, i64 480, i1 false)
  %scevgep831.56 = getelementptr i8, i8* %malloccall266, i64 26880
  %scevgep832.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.56, i64 480, i1 false)
  %scevgep831.57 = getelementptr i8, i8* %malloccall266, i64 27360
  %scevgep832.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.57, i64 480, i1 false)
  %scevgep831.58 = getelementptr i8, i8* %malloccall266, i64 27840
  %scevgep832.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.58, i64 480, i1 false)
  %scevgep831.59 = getelementptr i8, i8* %malloccall266, i64 28320
  %scevgep832.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.59, i64 480, i1 false)
  %scevgep831.60 = getelementptr i8, i8* %malloccall266, i64 28800
  %scevgep832.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.60, i64 480, i1 false)
  %scevgep831.61 = getelementptr i8, i8* %malloccall266, i64 29280
  %scevgep832.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.61, i64 480, i1 false)
  %scevgep831.62 = getelementptr i8, i8* %malloccall266, i64 29760
  %scevgep832.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.62, i64 480, i1 false)
  %scevgep831.63 = getelementptr i8, i8* %malloccall266, i64 30240
  %scevgep832.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.63, i64 480, i1 false)
  %scevgep831.64 = getelementptr i8, i8* %malloccall266, i64 30720
  %scevgep832.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.64, i64 480, i1 false)
  %scevgep831.65 = getelementptr i8, i8* %malloccall266, i64 31200
  %scevgep832.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.65, i64 480, i1 false)
  %scevgep831.66 = getelementptr i8, i8* %malloccall266, i64 31680
  %scevgep832.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.66, i64 480, i1 false)
  %scevgep831.67 = getelementptr i8, i8* %malloccall266, i64 32160
  %scevgep832.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.67, i64 480, i1 false)
  %scevgep831.68 = getelementptr i8, i8* %malloccall266, i64 32640
  %scevgep832.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.68, i64 480, i1 false)
  %scevgep831.69 = getelementptr i8, i8* %malloccall266, i64 33120
  %scevgep832.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.69, i64 480, i1 false)
  %scevgep831.70 = getelementptr i8, i8* %malloccall266, i64 33600
  %scevgep832.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.70, i64 480, i1 false)
  %scevgep831.71 = getelementptr i8, i8* %malloccall266, i64 34080
  %scevgep832.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.71, i64 480, i1 false)
  %scevgep831.72 = getelementptr i8, i8* %malloccall266, i64 34560
  %scevgep832.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.72, i64 480, i1 false)
  %scevgep831.73 = getelementptr i8, i8* %malloccall266, i64 35040
  %scevgep832.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.73, i64 480, i1 false)
  %scevgep831.74 = getelementptr i8, i8* %malloccall266, i64 35520
  %scevgep832.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.74, i64 480, i1 false)
  %scevgep831.75 = getelementptr i8, i8* %malloccall266, i64 36000
  %scevgep832.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.75, i64 480, i1 false)
  %scevgep831.76 = getelementptr i8, i8* %malloccall266, i64 36480
  %scevgep832.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.76, i64 480, i1 false)
  %scevgep831.77 = getelementptr i8, i8* %malloccall266, i64 36960
  %scevgep832.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.77, i64 480, i1 false)
  %scevgep831.78 = getelementptr i8, i8* %malloccall266, i64 37440
  %scevgep832.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.78, i64 480, i1 false)
  %scevgep831.79 = getelementptr i8, i8* %malloccall266, i64 37920
  %scevgep832.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep831.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep832.79, i64 480, i1 false)
  br label %polly.loop_header382

polly.loop_header356:                             ; preds = %polly.loop_header356.preheader, %polly.loop_header356
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_header356 ], [ %polly.indvar359.ph, %polly.loop_header356.preheader ]
  %115 = shl nuw nsw i64 %polly.indvar359, 3
  %scevgep363 = getelementptr i8, i8* %scevgep362, i64 %115
  %scevgep363364 = bitcast i8* %scevgep363 to double*
  %_p_scalar_365 = load double, double* %scevgep363364, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_365, 1.200000e+00
  store double %p_mul.i57, double* %scevgep363364, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond834.not = icmp eq i64 %polly.indvar_next360, %polly.indvar353
  br i1 %exitcond834.not, label %polly.loop_exit358, label %polly.loop_header356, !llvm.loop !79

polly.loop_header382:                             ; preds = %polly.loop_header366.preheader, %polly.loop_exit396.3
  %indvars.iv818 = phi i64 [ %indvars.iv.next819, %polly.loop_exit396.3 ], [ 1, %polly.loop_header366.preheader ]
  %polly.indvar385 = phi i64 [ %polly.indvar_next386, %polly.loop_exit396.3 ], [ 0, %polly.loop_header366.preheader ]
  %116 = shl nsw i64 %polly.indvar385, 4
  br label %polly.loop_header394

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.loop_header382
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %polly.loop_exit402 ], [ %indvars.iv818, %polly.loop_header382 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 0, %polly.loop_header382 ]
  %117 = add nuw nsw i64 %polly.indvar397, %116
  %polly.access.mul.Packed_MemRef_call2267415 = mul nuw nsw i64 %117, 60
  %118 = mul nuw nsw i64 %117, 480
  %119 = mul nuw nsw i64 %117, 640
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_exit408
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %indvars.iv.next821 = add nuw nsw i64 %indvars.iv820, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next398, 16
  br i1 %exitcond827.not, label %polly.loop_header394.1, label %polly.loop_header394

polly.loop_header400:                             ; preds = %polly.loop_exit408, %polly.loop_header394
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header394 ], [ %polly.indvar_next404, %polly.loop_exit408 ]
  %120 = shl i64 %polly.indvar403, 3
  %polly.access.add.Packed_MemRef_call2267416 = add nuw nsw i64 %polly.indvar403, %polly.access.mul.Packed_MemRef_call2267415
  %polly.access.Packed_MemRef_call2267417 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416
  %_p_scalar_418 = load double, double* %polly.access.Packed_MemRef_call2267417, align 8
  %121 = add nuw nsw i64 %120, %118
  %scevgep423 = getelementptr i8, i8* %call1, i64 %121
  %scevgep423424 = bitcast i8* %scevgep423 to double*
  %_p_scalar_425 = load double, double* %scevgep423424, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_header406
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next404, 16
  br i1 %exitcond826.not, label %polly.loop_exit402, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_header406, %polly.loop_header400
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header400 ], [ %polly.indvar_next410, %polly.loop_header406 ]
  %122 = mul nuw nsw i64 %polly.indvar409, 480
  %123 = add nuw nsw i64 %122, %120
  %scevgep412 = getelementptr i8, i8* %call1, i64 %123
  %scevgep412413 = bitcast i8* %scevgep412 to double*
  %_p_scalar_414 = load double, double* %scevgep412413, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_418, %_p_scalar_414
  %polly.access.mul.Packed_MemRef_call2267419 = mul nuw nsw i64 %polly.indvar409, 60
  %polly.access.add.Packed_MemRef_call2267420 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419, %polly.indvar403
  %polly.access.Packed_MemRef_call2267421 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420
  %_p_scalar_422 = load double, double* %polly.access.Packed_MemRef_call2267421, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_425, %_p_scalar_422
  %124 = shl nuw nsw i64 %polly.indvar409, 3
  %125 = add nuw nsw i64 %124, %119
  %scevgep426 = getelementptr i8, i8* %call, i64 %125
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_428
  store double %p_add42.i79, double* %scevgep426427, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond822.not = icmp eq i64 %polly.indvar_next410, %indvars.iv820
  br i1 %exitcond822.not, label %polly.loop_exit408, label %polly.loop_header406

polly.start431:                                   ; preds = %init_array.exit
  %malloccall433 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header517

polly.exiting432:                                 ; preds = %polly.loop_exit563.3
  tail call void @free(i8* nonnull %malloccall433)
  br label %kernel_syr2k.exit

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.start431
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit525 ], [ 0, %polly.start431 ]
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_exit525 ], [ 1, %polly.start431 ]
  %126 = add i64 %indvar, 1
  %127 = mul nuw nsw i64 %polly.indvar520, 640
  %scevgep529 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check1232 = icmp ult i64 %126, 4
  br i1 %min.iters.check1232, label %polly.loop_header523.preheader, label %vector.ph1233

vector.ph1233:                                    ; preds = %polly.loop_header517
  %n.vec1235 = and i64 %126, -4
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1233
  %index1236 = phi i64 [ 0, %vector.ph1233 ], [ %index.next1237, %vector.body1231 ]
  %128 = shl nuw nsw i64 %index1236, 3
  %129 = getelementptr i8, i8* %scevgep529, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load1240 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !81, !noalias !83
  %131 = fmul fast <4 x double> %wide.load1240, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !81, !noalias !83
  %index.next1237 = add i64 %index1236, 4
  %133 = icmp eq i64 %index.next1237, %n.vec1235
  br i1 %133, label %middle.block1229, label %vector.body1231, !llvm.loop !87

middle.block1229:                                 ; preds = %vector.body1231
  %cmp.n1239 = icmp eq i64 %126, %n.vec1235
  br i1 %cmp.n1239, label %polly.loop_exit525, label %polly.loop_header523.preheader

polly.loop_header523.preheader:                   ; preds = %polly.loop_header517, %middle.block1229
  %polly.indvar526.ph = phi i64 [ 0, %polly.loop_header517 ], [ %n.vec1235, %middle.block1229 ]
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_header523, %middle.block1229
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next521, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond853.not, label %polly.loop_header533.preheader, label %polly.loop_header517

polly.loop_header533.preheader:                   ; preds = %polly.loop_exit525
  %Packed_MemRef_call2434 = bitcast i8* %malloccall433 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall433, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep849.1 = getelementptr i8, i8* %malloccall433, i64 480
  %scevgep850.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.1, i64 480, i1 false)
  %scevgep849.2 = getelementptr i8, i8* %malloccall433, i64 960
  %scevgep850.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.2, i64 480, i1 false)
  %scevgep849.3 = getelementptr i8, i8* %malloccall433, i64 1440
  %scevgep850.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.3, i64 480, i1 false)
  %scevgep849.4 = getelementptr i8, i8* %malloccall433, i64 1920
  %scevgep850.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.4, i64 480, i1 false)
  %scevgep849.5 = getelementptr i8, i8* %malloccall433, i64 2400
  %scevgep850.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.5, i64 480, i1 false)
  %scevgep849.6 = getelementptr i8, i8* %malloccall433, i64 2880
  %scevgep850.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.6, i64 480, i1 false)
  %scevgep849.7 = getelementptr i8, i8* %malloccall433, i64 3360
  %scevgep850.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.7, i64 480, i1 false)
  %scevgep849.8 = getelementptr i8, i8* %malloccall433, i64 3840
  %scevgep850.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.8, i64 480, i1 false)
  %scevgep849.9 = getelementptr i8, i8* %malloccall433, i64 4320
  %scevgep850.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.9, i64 480, i1 false)
  %scevgep849.10 = getelementptr i8, i8* %malloccall433, i64 4800
  %scevgep850.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.10, i64 480, i1 false)
  %scevgep849.11 = getelementptr i8, i8* %malloccall433, i64 5280
  %scevgep850.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.11, i64 480, i1 false)
  %scevgep849.12 = getelementptr i8, i8* %malloccall433, i64 5760
  %scevgep850.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.12, i64 480, i1 false)
  %scevgep849.13 = getelementptr i8, i8* %malloccall433, i64 6240
  %scevgep850.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.13, i64 480, i1 false)
  %scevgep849.14 = getelementptr i8, i8* %malloccall433, i64 6720
  %scevgep850.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.14, i64 480, i1 false)
  %scevgep849.15 = getelementptr i8, i8* %malloccall433, i64 7200
  %scevgep850.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.15, i64 480, i1 false)
  %scevgep849.16 = getelementptr i8, i8* %malloccall433, i64 7680
  %scevgep850.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.16, i64 480, i1 false)
  %scevgep849.17 = getelementptr i8, i8* %malloccall433, i64 8160
  %scevgep850.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.17, i64 480, i1 false)
  %scevgep849.18 = getelementptr i8, i8* %malloccall433, i64 8640
  %scevgep850.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.18, i64 480, i1 false)
  %scevgep849.19 = getelementptr i8, i8* %malloccall433, i64 9120
  %scevgep850.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.19, i64 480, i1 false)
  %scevgep849.20 = getelementptr i8, i8* %malloccall433, i64 9600
  %scevgep850.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.20, i64 480, i1 false)
  %scevgep849.21 = getelementptr i8, i8* %malloccall433, i64 10080
  %scevgep850.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.21, i64 480, i1 false)
  %scevgep849.22 = getelementptr i8, i8* %malloccall433, i64 10560
  %scevgep850.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.22, i64 480, i1 false)
  %scevgep849.23 = getelementptr i8, i8* %malloccall433, i64 11040
  %scevgep850.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.23, i64 480, i1 false)
  %scevgep849.24 = getelementptr i8, i8* %malloccall433, i64 11520
  %scevgep850.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.24, i64 480, i1 false)
  %scevgep849.25 = getelementptr i8, i8* %malloccall433, i64 12000
  %scevgep850.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.25, i64 480, i1 false)
  %scevgep849.26 = getelementptr i8, i8* %malloccall433, i64 12480
  %scevgep850.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.26, i64 480, i1 false)
  %scevgep849.27 = getelementptr i8, i8* %malloccall433, i64 12960
  %scevgep850.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.27, i64 480, i1 false)
  %scevgep849.28 = getelementptr i8, i8* %malloccall433, i64 13440
  %scevgep850.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.28, i64 480, i1 false)
  %scevgep849.29 = getelementptr i8, i8* %malloccall433, i64 13920
  %scevgep850.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.29, i64 480, i1 false)
  %scevgep849.30 = getelementptr i8, i8* %malloccall433, i64 14400
  %scevgep850.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.30, i64 480, i1 false)
  %scevgep849.31 = getelementptr i8, i8* %malloccall433, i64 14880
  %scevgep850.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.31, i64 480, i1 false)
  %scevgep849.32 = getelementptr i8, i8* %malloccall433, i64 15360
  %scevgep850.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.32, i64 480, i1 false)
  %scevgep849.33 = getelementptr i8, i8* %malloccall433, i64 15840
  %scevgep850.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.33, i64 480, i1 false)
  %scevgep849.34 = getelementptr i8, i8* %malloccall433, i64 16320
  %scevgep850.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.34, i64 480, i1 false)
  %scevgep849.35 = getelementptr i8, i8* %malloccall433, i64 16800
  %scevgep850.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.35, i64 480, i1 false)
  %scevgep849.36 = getelementptr i8, i8* %malloccall433, i64 17280
  %scevgep850.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.36, i64 480, i1 false)
  %scevgep849.37 = getelementptr i8, i8* %malloccall433, i64 17760
  %scevgep850.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.37, i64 480, i1 false)
  %scevgep849.38 = getelementptr i8, i8* %malloccall433, i64 18240
  %scevgep850.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.38, i64 480, i1 false)
  %scevgep849.39 = getelementptr i8, i8* %malloccall433, i64 18720
  %scevgep850.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.39, i64 480, i1 false)
  %scevgep849.40 = getelementptr i8, i8* %malloccall433, i64 19200
  %scevgep850.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.40, i64 480, i1 false)
  %scevgep849.41 = getelementptr i8, i8* %malloccall433, i64 19680
  %scevgep850.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.41, i64 480, i1 false)
  %scevgep849.42 = getelementptr i8, i8* %malloccall433, i64 20160
  %scevgep850.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.42, i64 480, i1 false)
  %scevgep849.43 = getelementptr i8, i8* %malloccall433, i64 20640
  %scevgep850.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.43, i64 480, i1 false)
  %scevgep849.44 = getelementptr i8, i8* %malloccall433, i64 21120
  %scevgep850.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.44, i64 480, i1 false)
  %scevgep849.45 = getelementptr i8, i8* %malloccall433, i64 21600
  %scevgep850.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.45, i64 480, i1 false)
  %scevgep849.46 = getelementptr i8, i8* %malloccall433, i64 22080
  %scevgep850.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.46, i64 480, i1 false)
  %scevgep849.47 = getelementptr i8, i8* %malloccall433, i64 22560
  %scevgep850.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.47, i64 480, i1 false)
  %scevgep849.48 = getelementptr i8, i8* %malloccall433, i64 23040
  %scevgep850.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.48, i64 480, i1 false)
  %scevgep849.49 = getelementptr i8, i8* %malloccall433, i64 23520
  %scevgep850.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.49, i64 480, i1 false)
  %scevgep849.50 = getelementptr i8, i8* %malloccall433, i64 24000
  %scevgep850.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.50, i64 480, i1 false)
  %scevgep849.51 = getelementptr i8, i8* %malloccall433, i64 24480
  %scevgep850.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.51, i64 480, i1 false)
  %scevgep849.52 = getelementptr i8, i8* %malloccall433, i64 24960
  %scevgep850.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.52, i64 480, i1 false)
  %scevgep849.53 = getelementptr i8, i8* %malloccall433, i64 25440
  %scevgep850.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.53, i64 480, i1 false)
  %scevgep849.54 = getelementptr i8, i8* %malloccall433, i64 25920
  %scevgep850.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.54, i64 480, i1 false)
  %scevgep849.55 = getelementptr i8, i8* %malloccall433, i64 26400
  %scevgep850.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.55, i64 480, i1 false)
  %scevgep849.56 = getelementptr i8, i8* %malloccall433, i64 26880
  %scevgep850.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.56, i64 480, i1 false)
  %scevgep849.57 = getelementptr i8, i8* %malloccall433, i64 27360
  %scevgep850.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.57, i64 480, i1 false)
  %scevgep849.58 = getelementptr i8, i8* %malloccall433, i64 27840
  %scevgep850.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.58, i64 480, i1 false)
  %scevgep849.59 = getelementptr i8, i8* %malloccall433, i64 28320
  %scevgep850.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.59, i64 480, i1 false)
  %scevgep849.60 = getelementptr i8, i8* %malloccall433, i64 28800
  %scevgep850.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.60, i64 480, i1 false)
  %scevgep849.61 = getelementptr i8, i8* %malloccall433, i64 29280
  %scevgep850.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.61, i64 480, i1 false)
  %scevgep849.62 = getelementptr i8, i8* %malloccall433, i64 29760
  %scevgep850.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.62, i64 480, i1 false)
  %scevgep849.63 = getelementptr i8, i8* %malloccall433, i64 30240
  %scevgep850.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.63, i64 480, i1 false)
  %scevgep849.64 = getelementptr i8, i8* %malloccall433, i64 30720
  %scevgep850.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.64, i64 480, i1 false)
  %scevgep849.65 = getelementptr i8, i8* %malloccall433, i64 31200
  %scevgep850.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.65, i64 480, i1 false)
  %scevgep849.66 = getelementptr i8, i8* %malloccall433, i64 31680
  %scevgep850.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.66, i64 480, i1 false)
  %scevgep849.67 = getelementptr i8, i8* %malloccall433, i64 32160
  %scevgep850.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.67, i64 480, i1 false)
  %scevgep849.68 = getelementptr i8, i8* %malloccall433, i64 32640
  %scevgep850.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.68, i64 480, i1 false)
  %scevgep849.69 = getelementptr i8, i8* %malloccall433, i64 33120
  %scevgep850.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.69, i64 480, i1 false)
  %scevgep849.70 = getelementptr i8, i8* %malloccall433, i64 33600
  %scevgep850.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.70, i64 480, i1 false)
  %scevgep849.71 = getelementptr i8, i8* %malloccall433, i64 34080
  %scevgep850.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.71, i64 480, i1 false)
  %scevgep849.72 = getelementptr i8, i8* %malloccall433, i64 34560
  %scevgep850.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.72, i64 480, i1 false)
  %scevgep849.73 = getelementptr i8, i8* %malloccall433, i64 35040
  %scevgep850.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.73, i64 480, i1 false)
  %scevgep849.74 = getelementptr i8, i8* %malloccall433, i64 35520
  %scevgep850.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.74, i64 480, i1 false)
  %scevgep849.75 = getelementptr i8, i8* %malloccall433, i64 36000
  %scevgep850.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.75, i64 480, i1 false)
  %scevgep849.76 = getelementptr i8, i8* %malloccall433, i64 36480
  %scevgep850.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.76, i64 480, i1 false)
  %scevgep849.77 = getelementptr i8, i8* %malloccall433, i64 36960
  %scevgep850.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.77, i64 480, i1 false)
  %scevgep849.78 = getelementptr i8, i8* %malloccall433, i64 37440
  %scevgep850.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.78, i64 480, i1 false)
  %scevgep849.79 = getelementptr i8, i8* %malloccall433, i64 37920
  %scevgep850.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep849.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep850.79, i64 480, i1 false)
  br label %polly.loop_header549

polly.loop_header523:                             ; preds = %polly.loop_header523.preheader, %polly.loop_header523
  %polly.indvar526 = phi i64 [ %polly.indvar_next527, %polly.loop_header523 ], [ %polly.indvar526.ph, %polly.loop_header523.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar526, 3
  %scevgep530 = getelementptr i8, i8* %scevgep529, i64 %134
  %scevgep530531 = bitcast i8* %scevgep530 to double*
  %_p_scalar_532 = load double, double* %scevgep530531, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_532, 1.200000e+00
  store double %p_mul.i, double* %scevgep530531, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next527, %polly.indvar520
  br i1 %exitcond852.not, label %polly.loop_exit525, label %polly.loop_header523, !llvm.loop !88

polly.loop_header549:                             ; preds = %polly.loop_header533.preheader, %polly.loop_exit563.3
  %indvars.iv836 = phi i64 [ %indvars.iv.next837, %polly.loop_exit563.3 ], [ 1, %polly.loop_header533.preheader ]
  %polly.indvar552 = phi i64 [ %polly.indvar_next553, %polly.loop_exit563.3 ], [ 0, %polly.loop_header533.preheader ]
  %135 = shl nsw i64 %polly.indvar552, 4
  br label %polly.loop_header561

polly.loop_header561:                             ; preds = %polly.loop_exit569, %polly.loop_header549
  %indvars.iv838 = phi i64 [ %indvars.iv.next839, %polly.loop_exit569 ], [ %indvars.iv836, %polly.loop_header549 ]
  %polly.indvar564 = phi i64 [ %polly.indvar_next565, %polly.loop_exit569 ], [ 0, %polly.loop_header549 ]
  %136 = add nuw nsw i64 %polly.indvar564, %135
  %polly.access.mul.Packed_MemRef_call2434582 = mul nuw nsw i64 %136, 60
  %137 = mul nuw nsw i64 %136, 480
  %138 = mul nuw nsw i64 %136, 640
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_exit575
  %polly.indvar_next565 = add nuw nsw i64 %polly.indvar564, 1
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next565, 16
  br i1 %exitcond845.not, label %polly.loop_header561.1, label %polly.loop_header561

polly.loop_header567:                             ; preds = %polly.loop_exit575, %polly.loop_header561
  %polly.indvar570 = phi i64 [ 0, %polly.loop_header561 ], [ %polly.indvar_next571, %polly.loop_exit575 ]
  %139 = shl i64 %polly.indvar570, 3
  %polly.access.add.Packed_MemRef_call2434583 = add nuw nsw i64 %polly.indvar570, %polly.access.mul.Packed_MemRef_call2434582
  %polly.access.Packed_MemRef_call2434584 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583
  %_p_scalar_585 = load double, double* %polly.access.Packed_MemRef_call2434584, align 8
  %140 = add nuw nsw i64 %139, %137
  %scevgep590 = getelementptr i8, i8* %call1, i64 %140
  %scevgep590591 = bitcast i8* %scevgep590 to double*
  %_p_scalar_592 = load double, double* %scevgep590591, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_header573
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next571, 16
  br i1 %exitcond844.not, label %polly.loop_exit569, label %polly.loop_header567

polly.loop_header573:                             ; preds = %polly.loop_header573, %polly.loop_header567
  %polly.indvar576 = phi i64 [ 0, %polly.loop_header567 ], [ %polly.indvar_next577, %polly.loop_header573 ]
  %141 = mul nuw nsw i64 %polly.indvar576, 480
  %142 = add nuw nsw i64 %141, %139
  %scevgep579 = getelementptr i8, i8* %call1, i64 %142
  %scevgep579580 = bitcast i8* %scevgep579 to double*
  %_p_scalar_581 = load double, double* %scevgep579580, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_585, %_p_scalar_581
  %polly.access.mul.Packed_MemRef_call2434586 = mul nuw nsw i64 %polly.indvar576, 60
  %polly.access.add.Packed_MemRef_call2434587 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586, %polly.indvar570
  %polly.access.Packed_MemRef_call2434588 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587
  %_p_scalar_589 = load double, double* %polly.access.Packed_MemRef_call2434588, align 8
  %p_mul37.i = fmul fast double %_p_scalar_592, %_p_scalar_589
  %143 = shl nuw nsw i64 %polly.indvar576, 3
  %144 = add nuw nsw i64 %143, %138
  %scevgep593 = getelementptr i8, i8* %call, i64 %144
  %scevgep593594 = bitcast i8* %scevgep593 to double*
  %_p_scalar_595 = load double, double* %scevgep593594, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_595
  store double %p_add42.i, double* %scevgep593594, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next577, %indvars.iv838
  br i1 %exitcond840.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header734:                             ; preds = %entry, %polly.loop_exit742
  %polly.indvar737 = phi i64 [ %polly.indvar_next738, %polly.loop_exit742 ], [ 0, %entry ]
  %145 = mul nuw nsw i64 %polly.indvar737, 640
  %146 = trunc i64 %polly.indvar737 to i32
  %broadcast.splatinsert963 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat964 = shufflevector <4 x i32> %broadcast.splatinsert963, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body953

vector.body953:                                   ; preds = %vector.body953, %polly.loop_header734
  %index955 = phi i64 [ 0, %polly.loop_header734 ], [ %index.next956, %vector.body953 ]
  %vec.ind961 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734 ], [ %vec.ind.next962, %vector.body953 ]
  %147 = mul <4 x i32> %vec.ind961, %broadcast.splat964
  %148 = add <4 x i32> %147, <i32 3, i32 3, i32 3, i32 3>
  %149 = urem <4 x i32> %148, <i32 80, i32 80, i32 80, i32 80>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index955, 3
  %153 = add nuw nsw i64 %152, %145
  %154 = getelementptr i8, i8* %call, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !90, !noalias !92
  %index.next956 = add i64 %index955, 4
  %vec.ind.next962 = add <4 x i32> %vec.ind961, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next956, 32
  br i1 %156, label %polly.loop_exit742, label %vector.body953, !llvm.loop !95

polly.loop_exit742:                               ; preds = %vector.body953
  %polly.indvar_next738 = add nuw nsw i64 %polly.indvar737, 1
  %exitcond873.not = icmp eq i64 %polly.indvar_next738, 32
  br i1 %exitcond873.not, label %polly.loop_header734.1, label %polly.loop_header734

polly.loop_header761:                             ; preds = %polly.loop_exit742.2.2, %polly.loop_exit769
  %polly.indvar764 = phi i64 [ %polly.indvar_next765, %polly.loop_exit769 ], [ 0, %polly.loop_exit742.2.2 ]
  %157 = mul nuw nsw i64 %polly.indvar764, 480
  %158 = trunc i64 %polly.indvar764 to i32
  %broadcast.splatinsert1077 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1078 = shufflevector <4 x i32> %broadcast.splatinsert1077, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %polly.loop_header761
  %index1069 = phi i64 [ 0, %polly.loop_header761 ], [ %index.next1070, %vector.body1067 ]
  %vec.ind1075 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761 ], [ %vec.ind.next1076, %vector.body1067 ]
  %159 = mul <4 x i32> %vec.ind1075, %broadcast.splat1078
  %160 = add <4 x i32> %159, <i32 2, i32 2, i32 2, i32 2>
  %161 = urem <4 x i32> %160, <i32 60, i32 60, i32 60, i32 60>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %164 = shl i64 %index1069, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call2, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !94, !noalias !96
  %index.next1070 = add i64 %index1069, 4
  %vec.ind.next1076 = add <4 x i32> %vec.ind1075, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1070, 32
  br i1 %168, label %polly.loop_exit769, label %vector.body1067, !llvm.loop !97

polly.loop_exit769:                               ; preds = %vector.body1067
  %polly.indvar_next765 = add nuw nsw i64 %polly.indvar764, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next765, 32
  br i1 %exitcond864.not, label %polly.loop_header761.1, label %polly.loop_header761

polly.loop_header787:                             ; preds = %polly.loop_exit769.1.2, %polly.loop_exit795
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %polly.loop_exit769.1.2 ]
  %169 = mul nuw nsw i64 %polly.indvar790, 480
  %170 = trunc i64 %polly.indvar790 to i32
  %broadcast.splatinsert1155 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat1156 = shufflevector <4 x i32> %broadcast.splatinsert1155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %polly.loop_header787
  %index1147 = phi i64 [ 0, %polly.loop_header787 ], [ %index.next1148, %vector.body1145 ]
  %vec.ind1153 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787 ], [ %vec.ind.next1154, %vector.body1145 ]
  %171 = mul <4 x i32> %vec.ind1153, %broadcast.splat1156
  %172 = add <4 x i32> %171, <i32 1, i32 1, i32 1, i32 1>
  %173 = urem <4 x i32> %172, <i32 80, i32 80, i32 80, i32 80>
  %174 = sitofp <4 x i32> %173 to <4 x double>
  %175 = fmul fast <4 x double> %174, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %176 = shl i64 %index1147, 3
  %177 = add i64 %176, %169
  %178 = getelementptr i8, i8* %call1, i64 %177
  %179 = bitcast i8* %178 to <4 x double>*
  store <4 x double> %175, <4 x double>* %179, align 8, !alias.scope !93, !noalias !98
  %index.next1148 = add i64 %index1147, 4
  %vec.ind.next1154 = add <4 x i32> %vec.ind1153, <i32 4, i32 4, i32 4, i32 4>
  %180 = icmp eq i64 %index.next1148, 32
  br i1 %180, label %polly.loop_exit795, label %vector.body1145, !llvm.loop !99

polly.loop_exit795:                               ; preds = %vector.body1145
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next791, 32
  br i1 %exitcond858.not, label %polly.loop_header787.1, label %polly.loop_header787

polly.loop_header227.1:                           ; preds = %polly.loop_exit235, %polly.loop_exit235.1
  %indvars.iv804.1 = phi i64 [ %indvars.iv.next805.1, %polly.loop_exit235.1 ], [ %indvars.iv, %polly.loop_exit235 ]
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_exit235 ]
  %181 = add nuw nsw i64 %polly.indvar230.1, %97
  %polly.access.mul.Packed_MemRef_call2248.1 = mul nuw nsw i64 %181, 60
  %182 = mul nuw nsw i64 %181, 480
  %183 = mul nuw nsw i64 %181, 640
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit241.1, %polly.loop_header227.1
  %polly.indvar236.1 = phi i64 [ 0, %polly.loop_header227.1 ], [ %polly.indvar_next237.1, %polly.loop_exit241.1 ]
  %184 = add nuw nsw i64 %polly.indvar236.1, 16
  %185 = shl i64 %184, 3
  %polly.access.add.Packed_MemRef_call2249.1 = add nuw nsw i64 %184, %polly.access.mul.Packed_MemRef_call2248.1
  %polly.access.Packed_MemRef_call2250.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.1
  %_p_scalar_251.1 = load double, double* %polly.access.Packed_MemRef_call2250.1, align 8
  %186 = add nuw nsw i64 %185, %182
  %scevgep256.1 = getelementptr i8, i8* %call1, i64 %186
  %scevgep256257.1 = bitcast i8* %scevgep256.1 to double*
  %_p_scalar_258.1 = load double, double* %scevgep256257.1, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header239.1

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_header233.1
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_header233.1 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %187 = mul nuw nsw i64 %polly.indvar242.1, 480
  %188 = add nuw nsw i64 %187, %185
  %scevgep245.1 = getelementptr i8, i8* %call1, i64 %188
  %scevgep245246.1 = bitcast i8* %scevgep245.1 to double*
  %_p_scalar_247.1 = load double, double* %scevgep245246.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_251.1, %_p_scalar_247.1
  %polly.access.mul.Packed_MemRef_call2252.1 = mul nuw nsw i64 %polly.indvar242.1, 60
  %polly.access.add.Packed_MemRef_call2253.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.1, %184
  %polly.access.Packed_MemRef_call2254.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.1
  %_p_scalar_255.1 = load double, double* %polly.access.Packed_MemRef_call2254.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_258.1, %_p_scalar_255.1
  %189 = shl nuw nsw i64 %polly.indvar242.1, 3
  %190 = add nuw nsw i64 %189, %183
  %scevgep259.1 = getelementptr i8, i8* %call, i64 %190
  %scevgep259260.1 = bitcast i8* %scevgep259.1 to double*
  %_p_scalar_261.1 = load double, double* %scevgep259260.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_261.1
  store double %p_add42.i118.1, double* %scevgep259260.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next243.1, %indvars.iv804.1
  br i1 %exitcond.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.1

polly.loop_exit241.1:                             ; preds = %polly.loop_header239.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %exitcond808.1.not = icmp eq i64 %polly.indvar_next237.1, 16
  br i1 %exitcond808.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %indvars.iv.next805.1 = add nuw nsw i64 %indvars.iv804.1, 1
  %exitcond809.1.not = icmp eq i64 %polly.indvar_next231.1, 16
  br i1 %exitcond809.1.not, label %polly.loop_header227.2, label %polly.loop_header227.1

polly.loop_header227.2:                           ; preds = %polly.loop_exit235.1, %polly.loop_exit235.2
  %indvars.iv804.2 = phi i64 [ %indvars.iv.next805.2, %polly.loop_exit235.2 ], [ %indvars.iv, %polly.loop_exit235.1 ]
  %polly.indvar230.2 = phi i64 [ %polly.indvar_next231.2, %polly.loop_exit235.2 ], [ 0, %polly.loop_exit235.1 ]
  %191 = add nuw nsw i64 %polly.indvar230.2, %97
  %polly.access.mul.Packed_MemRef_call2248.2 = mul nuw nsw i64 %191, 60
  %192 = mul nuw nsw i64 %191, 480
  %193 = mul nuw nsw i64 %191, 640
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_exit241.2, %polly.loop_header227.2
  %polly.indvar236.2 = phi i64 [ 0, %polly.loop_header227.2 ], [ %polly.indvar_next237.2, %polly.loop_exit241.2 ]
  %194 = add nuw nsw i64 %polly.indvar236.2, 32
  %195 = shl i64 %194, 3
  %polly.access.add.Packed_MemRef_call2249.2 = add nuw nsw i64 %194, %polly.access.mul.Packed_MemRef_call2248.2
  %polly.access.Packed_MemRef_call2250.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.2
  %_p_scalar_251.2 = load double, double* %polly.access.Packed_MemRef_call2250.2, align 8
  %196 = add nuw nsw i64 %195, %192
  %scevgep256.2 = getelementptr i8, i8* %call1, i64 %196
  %scevgep256257.2 = bitcast i8* %scevgep256.2 to double*
  %_p_scalar_258.2 = load double, double* %scevgep256257.2, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header239.2

polly.loop_header239.2:                           ; preds = %polly.loop_header239.2, %polly.loop_header233.2
  %polly.indvar242.2 = phi i64 [ 0, %polly.loop_header233.2 ], [ %polly.indvar_next243.2, %polly.loop_header239.2 ]
  %197 = mul nuw nsw i64 %polly.indvar242.2, 480
  %198 = add nuw nsw i64 %197, %195
  %scevgep245.2 = getelementptr i8, i8* %call1, i64 %198
  %scevgep245246.2 = bitcast i8* %scevgep245.2 to double*
  %_p_scalar_247.2 = load double, double* %scevgep245246.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2 = fmul fast double %_p_scalar_251.2, %_p_scalar_247.2
  %polly.access.mul.Packed_MemRef_call2252.2 = mul nuw nsw i64 %polly.indvar242.2, 60
  %polly.access.add.Packed_MemRef_call2253.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.2, %194
  %polly.access.Packed_MemRef_call2254.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.2
  %_p_scalar_255.2 = load double, double* %polly.access.Packed_MemRef_call2254.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_258.2, %_p_scalar_255.2
  %199 = shl nuw nsw i64 %polly.indvar242.2, 3
  %200 = add nuw nsw i64 %199, %193
  %scevgep259.2 = getelementptr i8, i8* %call, i64 %200
  %scevgep259260.2 = bitcast i8* %scevgep259.2 to double*
  %_p_scalar_261.2 = load double, double* %scevgep259260.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_261.2
  store double %p_add42.i118.2, double* %scevgep259260.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next243.2 = add nuw nsw i64 %polly.indvar242.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next243.2, %indvars.iv804.2
  br i1 %exitcond.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.2

polly.loop_exit241.2:                             ; preds = %polly.loop_header239.2
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %exitcond808.2.not = icmp eq i64 %polly.indvar_next237.2, 16
  br i1 %exitcond808.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.2

polly.loop_exit235.2:                             ; preds = %polly.loop_exit241.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %indvars.iv.next805.2 = add nuw nsw i64 %indvars.iv804.2, 1
  %exitcond809.2.not = icmp eq i64 %polly.indvar_next231.2, 16
  br i1 %exitcond809.2.not, label %polly.loop_header227.3, label %polly.loop_header227.2

polly.loop_header227.3:                           ; preds = %polly.loop_exit235.2, %polly.loop_exit235.3
  %indvars.iv804.3 = phi i64 [ %indvars.iv.next805.3, %polly.loop_exit235.3 ], [ %indvars.iv, %polly.loop_exit235.2 ]
  %polly.indvar230.3 = phi i64 [ %polly.indvar_next231.3, %polly.loop_exit235.3 ], [ 0, %polly.loop_exit235.2 ]
  %201 = add nuw nsw i64 %polly.indvar230.3, %97
  %polly.access.mul.Packed_MemRef_call2248.3 = mul nuw nsw i64 %201, 60
  %202 = mul nuw nsw i64 %201, 480
  %203 = mul nuw nsw i64 %201, 640
  br label %polly.loop_header233.3

polly.loop_header233.3:                           ; preds = %polly.loop_exit241.3, %polly.loop_header227.3
  %polly.indvar236.3 = phi i64 [ 0, %polly.loop_header227.3 ], [ %polly.indvar_next237.3, %polly.loop_exit241.3 ]
  %204 = add nuw nsw i64 %polly.indvar236.3, 48
  %205 = shl i64 %204, 3
  %polly.access.add.Packed_MemRef_call2249.3 = add nuw nsw i64 %204, %polly.access.mul.Packed_MemRef_call2248.3
  %polly.access.Packed_MemRef_call2250.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2249.3
  %_p_scalar_251.3 = load double, double* %polly.access.Packed_MemRef_call2250.3, align 8
  %206 = add nuw nsw i64 %205, %202
  %scevgep256.3 = getelementptr i8, i8* %call1, i64 %206
  %scevgep256257.3 = bitcast i8* %scevgep256.3 to double*
  %_p_scalar_258.3 = load double, double* %scevgep256257.3, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header239.3

polly.loop_header239.3:                           ; preds = %polly.loop_header239.3, %polly.loop_header233.3
  %polly.indvar242.3 = phi i64 [ 0, %polly.loop_header233.3 ], [ %polly.indvar_next243.3, %polly.loop_header239.3 ]
  %207 = mul nuw nsw i64 %polly.indvar242.3, 480
  %208 = add nuw nsw i64 %207, %205
  %scevgep245.3 = getelementptr i8, i8* %call1, i64 %208
  %scevgep245246.3 = bitcast i8* %scevgep245.3 to double*
  %_p_scalar_247.3 = load double, double* %scevgep245246.3, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.3 = fmul fast double %_p_scalar_251.3, %_p_scalar_247.3
  %polly.access.mul.Packed_MemRef_call2252.3 = mul nuw nsw i64 %polly.indvar242.3, 60
  %polly.access.add.Packed_MemRef_call2253.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2252.3, %204
  %polly.access.Packed_MemRef_call2254.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2253.3
  %_p_scalar_255.3 = load double, double* %polly.access.Packed_MemRef_call2254.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_258.3, %_p_scalar_255.3
  %209 = shl nuw nsw i64 %polly.indvar242.3, 3
  %210 = add nuw nsw i64 %209, %203
  %scevgep259.3 = getelementptr i8, i8* %call, i64 %210
  %scevgep259260.3 = bitcast i8* %scevgep259.3 to double*
  %_p_scalar_261.3 = load double, double* %scevgep259260.3, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_261.3
  store double %p_add42.i118.3, double* %scevgep259260.3, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next243.3 = add nuw nsw i64 %polly.indvar242.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next243.3, %indvars.iv804.3
  br i1 %exitcond.3.not, label %polly.loop_exit241.3, label %polly.loop_header239.3

polly.loop_exit241.3:                             ; preds = %polly.loop_header239.3
  %polly.indvar_next237.3 = add nuw nsw i64 %polly.indvar236.3, 1
  %exitcond808.3.not = icmp eq i64 %polly.indvar_next237.3, 12
  br i1 %exitcond808.3.not, label %polly.loop_exit235.3, label %polly.loop_header233.3

polly.loop_exit235.3:                             ; preds = %polly.loop_exit241.3
  %polly.indvar_next231.3 = add nuw nsw i64 %polly.indvar230.3, 1
  %indvars.iv.next805.3 = add nuw nsw i64 %indvars.iv804.3, 1
  %exitcond809.3.not = icmp eq i64 %polly.indvar_next231.3, 16
  br i1 %exitcond809.3.not, label %polly.loop_exit229.3, label %polly.loop_header227.3

polly.loop_exit229.3:                             ; preds = %polly.loop_exit235.3
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %exitcond811.not = icmp eq i64 %polly.indvar_next219, 5
  br i1 %exitcond811.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header394.1:                           ; preds = %polly.loop_exit402, %polly.loop_exit402.1
  %indvars.iv820.1 = phi i64 [ %indvars.iv.next821.1, %polly.loop_exit402.1 ], [ %indvars.iv818, %polly.loop_exit402 ]
  %polly.indvar397.1 = phi i64 [ %polly.indvar_next398.1, %polly.loop_exit402.1 ], [ 0, %polly.loop_exit402 ]
  %211 = add nuw nsw i64 %polly.indvar397.1, %116
  %polly.access.mul.Packed_MemRef_call2267415.1 = mul nuw nsw i64 %211, 60
  %212 = mul nuw nsw i64 %211, 480
  %213 = mul nuw nsw i64 %211, 640
  br label %polly.loop_header400.1

polly.loop_header400.1:                           ; preds = %polly.loop_exit408.1, %polly.loop_header394.1
  %polly.indvar403.1 = phi i64 [ 0, %polly.loop_header394.1 ], [ %polly.indvar_next404.1, %polly.loop_exit408.1 ]
  %214 = add nuw nsw i64 %polly.indvar403.1, 16
  %215 = shl i64 %214, 3
  %polly.access.add.Packed_MemRef_call2267416.1 = add nuw nsw i64 %214, %polly.access.mul.Packed_MemRef_call2267415.1
  %polly.access.Packed_MemRef_call2267417.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.1
  %_p_scalar_418.1 = load double, double* %polly.access.Packed_MemRef_call2267417.1, align 8
  %216 = add nuw nsw i64 %215, %212
  %scevgep423.1 = getelementptr i8, i8* %call1, i64 %216
  %scevgep423424.1 = bitcast i8* %scevgep423.1 to double*
  %_p_scalar_425.1 = load double, double* %scevgep423424.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header406.1

polly.loop_header406.1:                           ; preds = %polly.loop_header406.1, %polly.loop_header400.1
  %polly.indvar409.1 = phi i64 [ 0, %polly.loop_header400.1 ], [ %polly.indvar_next410.1, %polly.loop_header406.1 ]
  %217 = mul nuw nsw i64 %polly.indvar409.1, 480
  %218 = add nuw nsw i64 %217, %215
  %scevgep412.1 = getelementptr i8, i8* %call1, i64 %218
  %scevgep412413.1 = bitcast i8* %scevgep412.1 to double*
  %_p_scalar_414.1 = load double, double* %scevgep412413.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_418.1, %_p_scalar_414.1
  %polly.access.mul.Packed_MemRef_call2267419.1 = mul nuw nsw i64 %polly.indvar409.1, 60
  %polly.access.add.Packed_MemRef_call2267420.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.1, %214
  %polly.access.Packed_MemRef_call2267421.1 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.1
  %_p_scalar_422.1 = load double, double* %polly.access.Packed_MemRef_call2267421.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_425.1, %_p_scalar_422.1
  %219 = shl nuw nsw i64 %polly.indvar409.1, 3
  %220 = add nuw nsw i64 %219, %213
  %scevgep426.1 = getelementptr i8, i8* %call, i64 %220
  %scevgep426427.1 = bitcast i8* %scevgep426.1 to double*
  %_p_scalar_428.1 = load double, double* %scevgep426427.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_428.1
  store double %p_add42.i79.1, double* %scevgep426427.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next410.1 = add nuw nsw i64 %polly.indvar409.1, 1
  %exitcond822.1.not = icmp eq i64 %polly.indvar_next410.1, %indvars.iv820.1
  br i1 %exitcond822.1.not, label %polly.loop_exit408.1, label %polly.loop_header406.1

polly.loop_exit408.1:                             ; preds = %polly.loop_header406.1
  %polly.indvar_next404.1 = add nuw nsw i64 %polly.indvar403.1, 1
  %exitcond826.1.not = icmp eq i64 %polly.indvar_next404.1, 16
  br i1 %exitcond826.1.not, label %polly.loop_exit402.1, label %polly.loop_header400.1

polly.loop_exit402.1:                             ; preds = %polly.loop_exit408.1
  %polly.indvar_next398.1 = add nuw nsw i64 %polly.indvar397.1, 1
  %indvars.iv.next821.1 = add nuw nsw i64 %indvars.iv820.1, 1
  %exitcond827.1.not = icmp eq i64 %polly.indvar_next398.1, 16
  br i1 %exitcond827.1.not, label %polly.loop_header394.2, label %polly.loop_header394.1

polly.loop_header394.2:                           ; preds = %polly.loop_exit402.1, %polly.loop_exit402.2
  %indvars.iv820.2 = phi i64 [ %indvars.iv.next821.2, %polly.loop_exit402.2 ], [ %indvars.iv818, %polly.loop_exit402.1 ]
  %polly.indvar397.2 = phi i64 [ %polly.indvar_next398.2, %polly.loop_exit402.2 ], [ 0, %polly.loop_exit402.1 ]
  %221 = add nuw nsw i64 %polly.indvar397.2, %116
  %polly.access.mul.Packed_MemRef_call2267415.2 = mul nuw nsw i64 %221, 60
  %222 = mul nuw nsw i64 %221, 480
  %223 = mul nuw nsw i64 %221, 640
  br label %polly.loop_header400.2

polly.loop_header400.2:                           ; preds = %polly.loop_exit408.2, %polly.loop_header394.2
  %polly.indvar403.2 = phi i64 [ 0, %polly.loop_header394.2 ], [ %polly.indvar_next404.2, %polly.loop_exit408.2 ]
  %224 = add nuw nsw i64 %polly.indvar403.2, 32
  %225 = shl i64 %224, 3
  %polly.access.add.Packed_MemRef_call2267416.2 = add nuw nsw i64 %224, %polly.access.mul.Packed_MemRef_call2267415.2
  %polly.access.Packed_MemRef_call2267417.2 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.2
  %_p_scalar_418.2 = load double, double* %polly.access.Packed_MemRef_call2267417.2, align 8
  %226 = add nuw nsw i64 %225, %222
  %scevgep423.2 = getelementptr i8, i8* %call1, i64 %226
  %scevgep423424.2 = bitcast i8* %scevgep423.2 to double*
  %_p_scalar_425.2 = load double, double* %scevgep423424.2, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header406.2

polly.loop_header406.2:                           ; preds = %polly.loop_header406.2, %polly.loop_header400.2
  %polly.indvar409.2 = phi i64 [ 0, %polly.loop_header400.2 ], [ %polly.indvar_next410.2, %polly.loop_header406.2 ]
  %227 = mul nuw nsw i64 %polly.indvar409.2, 480
  %228 = add nuw nsw i64 %227, %225
  %scevgep412.2 = getelementptr i8, i8* %call1, i64 %228
  %scevgep412413.2 = bitcast i8* %scevgep412.2 to double*
  %_p_scalar_414.2 = load double, double* %scevgep412413.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2 = fmul fast double %_p_scalar_418.2, %_p_scalar_414.2
  %polly.access.mul.Packed_MemRef_call2267419.2 = mul nuw nsw i64 %polly.indvar409.2, 60
  %polly.access.add.Packed_MemRef_call2267420.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.2, %224
  %polly.access.Packed_MemRef_call2267421.2 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.2
  %_p_scalar_422.2 = load double, double* %polly.access.Packed_MemRef_call2267421.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_425.2, %_p_scalar_422.2
  %229 = shl nuw nsw i64 %polly.indvar409.2, 3
  %230 = add nuw nsw i64 %229, %223
  %scevgep426.2 = getelementptr i8, i8* %call, i64 %230
  %scevgep426427.2 = bitcast i8* %scevgep426.2 to double*
  %_p_scalar_428.2 = load double, double* %scevgep426427.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_428.2
  store double %p_add42.i79.2, double* %scevgep426427.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next410.2 = add nuw nsw i64 %polly.indvar409.2, 1
  %exitcond822.2.not = icmp eq i64 %polly.indvar_next410.2, %indvars.iv820.2
  br i1 %exitcond822.2.not, label %polly.loop_exit408.2, label %polly.loop_header406.2

polly.loop_exit408.2:                             ; preds = %polly.loop_header406.2
  %polly.indvar_next404.2 = add nuw nsw i64 %polly.indvar403.2, 1
  %exitcond826.2.not = icmp eq i64 %polly.indvar_next404.2, 16
  br i1 %exitcond826.2.not, label %polly.loop_exit402.2, label %polly.loop_header400.2

polly.loop_exit402.2:                             ; preds = %polly.loop_exit408.2
  %polly.indvar_next398.2 = add nuw nsw i64 %polly.indvar397.2, 1
  %indvars.iv.next821.2 = add nuw nsw i64 %indvars.iv820.2, 1
  %exitcond827.2.not = icmp eq i64 %polly.indvar_next398.2, 16
  br i1 %exitcond827.2.not, label %polly.loop_header394.3, label %polly.loop_header394.2

polly.loop_header394.3:                           ; preds = %polly.loop_exit402.2, %polly.loop_exit402.3
  %indvars.iv820.3 = phi i64 [ %indvars.iv.next821.3, %polly.loop_exit402.3 ], [ %indvars.iv818, %polly.loop_exit402.2 ]
  %polly.indvar397.3 = phi i64 [ %polly.indvar_next398.3, %polly.loop_exit402.3 ], [ 0, %polly.loop_exit402.2 ]
  %231 = add nuw nsw i64 %polly.indvar397.3, %116
  %polly.access.mul.Packed_MemRef_call2267415.3 = mul nuw nsw i64 %231, 60
  %232 = mul nuw nsw i64 %231, 480
  %233 = mul nuw nsw i64 %231, 640
  br label %polly.loop_header400.3

polly.loop_header400.3:                           ; preds = %polly.loop_exit408.3, %polly.loop_header394.3
  %polly.indvar403.3 = phi i64 [ 0, %polly.loop_header394.3 ], [ %polly.indvar_next404.3, %polly.loop_exit408.3 ]
  %234 = add nuw nsw i64 %polly.indvar403.3, 48
  %235 = shl i64 %234, 3
  %polly.access.add.Packed_MemRef_call2267416.3 = add nuw nsw i64 %234, %polly.access.mul.Packed_MemRef_call2267415.3
  %polly.access.Packed_MemRef_call2267417.3 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267416.3
  %_p_scalar_418.3 = load double, double* %polly.access.Packed_MemRef_call2267417.3, align 8
  %236 = add nuw nsw i64 %235, %232
  %scevgep423.3 = getelementptr i8, i8* %call1, i64 %236
  %scevgep423424.3 = bitcast i8* %scevgep423.3 to double*
  %_p_scalar_425.3 = load double, double* %scevgep423424.3, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header406.3

polly.loop_header406.3:                           ; preds = %polly.loop_header406.3, %polly.loop_header400.3
  %polly.indvar409.3 = phi i64 [ 0, %polly.loop_header400.3 ], [ %polly.indvar_next410.3, %polly.loop_header406.3 ]
  %237 = mul nuw nsw i64 %polly.indvar409.3, 480
  %238 = add nuw nsw i64 %237, %235
  %scevgep412.3 = getelementptr i8, i8* %call1, i64 %238
  %scevgep412413.3 = bitcast i8* %scevgep412.3 to double*
  %_p_scalar_414.3 = load double, double* %scevgep412413.3, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.3 = fmul fast double %_p_scalar_418.3, %_p_scalar_414.3
  %polly.access.mul.Packed_MemRef_call2267419.3 = mul nuw nsw i64 %polly.indvar409.3, 60
  %polly.access.add.Packed_MemRef_call2267420.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2267419.3, %234
  %polly.access.Packed_MemRef_call2267421.3 = getelementptr double, double* %Packed_MemRef_call2267, i64 %polly.access.add.Packed_MemRef_call2267420.3
  %_p_scalar_422.3 = load double, double* %polly.access.Packed_MemRef_call2267421.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_425.3, %_p_scalar_422.3
  %239 = shl nuw nsw i64 %polly.indvar409.3, 3
  %240 = add nuw nsw i64 %239, %233
  %scevgep426.3 = getelementptr i8, i8* %call, i64 %240
  %scevgep426427.3 = bitcast i8* %scevgep426.3 to double*
  %_p_scalar_428.3 = load double, double* %scevgep426427.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_428.3
  store double %p_add42.i79.3, double* %scevgep426427.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next410.3 = add nuw nsw i64 %polly.indvar409.3, 1
  %exitcond822.3.not = icmp eq i64 %polly.indvar_next410.3, %indvars.iv820.3
  br i1 %exitcond822.3.not, label %polly.loop_exit408.3, label %polly.loop_header406.3

polly.loop_exit408.3:                             ; preds = %polly.loop_header406.3
  %polly.indvar_next404.3 = add nuw nsw i64 %polly.indvar403.3, 1
  %exitcond826.3.not = icmp eq i64 %polly.indvar_next404.3, 12
  br i1 %exitcond826.3.not, label %polly.loop_exit402.3, label %polly.loop_header400.3

polly.loop_exit402.3:                             ; preds = %polly.loop_exit408.3
  %polly.indvar_next398.3 = add nuw nsw i64 %polly.indvar397.3, 1
  %indvars.iv.next821.3 = add nuw nsw i64 %indvars.iv820.3, 1
  %exitcond827.3.not = icmp eq i64 %polly.indvar_next398.3, 16
  br i1 %exitcond827.3.not, label %polly.loop_exit396.3, label %polly.loop_header394.3

polly.loop_exit396.3:                             ; preds = %polly.loop_exit402.3
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 16
  %exitcond829.not = icmp eq i64 %polly.indvar_next386, 5
  br i1 %exitcond829.not, label %polly.exiting265, label %polly.loop_header382

polly.loop_header561.1:                           ; preds = %polly.loop_exit569, %polly.loop_exit569.1
  %indvars.iv838.1 = phi i64 [ %indvars.iv.next839.1, %polly.loop_exit569.1 ], [ %indvars.iv836, %polly.loop_exit569 ]
  %polly.indvar564.1 = phi i64 [ %polly.indvar_next565.1, %polly.loop_exit569.1 ], [ 0, %polly.loop_exit569 ]
  %241 = add nuw nsw i64 %polly.indvar564.1, %135
  %polly.access.mul.Packed_MemRef_call2434582.1 = mul nuw nsw i64 %241, 60
  %242 = mul nuw nsw i64 %241, 480
  %243 = mul nuw nsw i64 %241, 640
  br label %polly.loop_header567.1

polly.loop_header567.1:                           ; preds = %polly.loop_exit575.1, %polly.loop_header561.1
  %polly.indvar570.1 = phi i64 [ 0, %polly.loop_header561.1 ], [ %polly.indvar_next571.1, %polly.loop_exit575.1 ]
  %244 = add nuw nsw i64 %polly.indvar570.1, 16
  %245 = shl i64 %244, 3
  %polly.access.add.Packed_MemRef_call2434583.1 = add nuw nsw i64 %244, %polly.access.mul.Packed_MemRef_call2434582.1
  %polly.access.Packed_MemRef_call2434584.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.1
  %_p_scalar_585.1 = load double, double* %polly.access.Packed_MemRef_call2434584.1, align 8
  %246 = add nuw nsw i64 %245, %242
  %scevgep590.1 = getelementptr i8, i8* %call1, i64 %246
  %scevgep590591.1 = bitcast i8* %scevgep590.1 to double*
  %_p_scalar_592.1 = load double, double* %scevgep590591.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header573.1

polly.loop_header573.1:                           ; preds = %polly.loop_header573.1, %polly.loop_header567.1
  %polly.indvar576.1 = phi i64 [ 0, %polly.loop_header567.1 ], [ %polly.indvar_next577.1, %polly.loop_header573.1 ]
  %247 = mul nuw nsw i64 %polly.indvar576.1, 480
  %248 = add nuw nsw i64 %247, %245
  %scevgep579.1 = getelementptr i8, i8* %call1, i64 %248
  %scevgep579580.1 = bitcast i8* %scevgep579.1 to double*
  %_p_scalar_581.1 = load double, double* %scevgep579580.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_585.1, %_p_scalar_581.1
  %polly.access.mul.Packed_MemRef_call2434586.1 = mul nuw nsw i64 %polly.indvar576.1, 60
  %polly.access.add.Packed_MemRef_call2434587.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.1, %244
  %polly.access.Packed_MemRef_call2434588.1 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.1
  %_p_scalar_589.1 = load double, double* %polly.access.Packed_MemRef_call2434588.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_592.1, %_p_scalar_589.1
  %249 = shl nuw nsw i64 %polly.indvar576.1, 3
  %250 = add nuw nsw i64 %249, %243
  %scevgep593.1 = getelementptr i8, i8* %call, i64 %250
  %scevgep593594.1 = bitcast i8* %scevgep593.1 to double*
  %_p_scalar_595.1 = load double, double* %scevgep593594.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_595.1
  store double %p_add42.i.1, double* %scevgep593594.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next577.1 = add nuw nsw i64 %polly.indvar576.1, 1
  %exitcond840.1.not = icmp eq i64 %polly.indvar_next577.1, %indvars.iv838.1
  br i1 %exitcond840.1.not, label %polly.loop_exit575.1, label %polly.loop_header573.1

polly.loop_exit575.1:                             ; preds = %polly.loop_header573.1
  %polly.indvar_next571.1 = add nuw nsw i64 %polly.indvar570.1, 1
  %exitcond844.1.not = icmp eq i64 %polly.indvar_next571.1, 16
  br i1 %exitcond844.1.not, label %polly.loop_exit569.1, label %polly.loop_header567.1

polly.loop_exit569.1:                             ; preds = %polly.loop_exit575.1
  %polly.indvar_next565.1 = add nuw nsw i64 %polly.indvar564.1, 1
  %indvars.iv.next839.1 = add nuw nsw i64 %indvars.iv838.1, 1
  %exitcond845.1.not = icmp eq i64 %polly.indvar_next565.1, 16
  br i1 %exitcond845.1.not, label %polly.loop_header561.2, label %polly.loop_header561.1

polly.loop_header561.2:                           ; preds = %polly.loop_exit569.1, %polly.loop_exit569.2
  %indvars.iv838.2 = phi i64 [ %indvars.iv.next839.2, %polly.loop_exit569.2 ], [ %indvars.iv836, %polly.loop_exit569.1 ]
  %polly.indvar564.2 = phi i64 [ %polly.indvar_next565.2, %polly.loop_exit569.2 ], [ 0, %polly.loop_exit569.1 ]
  %251 = add nuw nsw i64 %polly.indvar564.2, %135
  %polly.access.mul.Packed_MemRef_call2434582.2 = mul nuw nsw i64 %251, 60
  %252 = mul nuw nsw i64 %251, 480
  %253 = mul nuw nsw i64 %251, 640
  br label %polly.loop_header567.2

polly.loop_header567.2:                           ; preds = %polly.loop_exit575.2, %polly.loop_header561.2
  %polly.indvar570.2 = phi i64 [ 0, %polly.loop_header561.2 ], [ %polly.indvar_next571.2, %polly.loop_exit575.2 ]
  %254 = add nuw nsw i64 %polly.indvar570.2, 32
  %255 = shl i64 %254, 3
  %polly.access.add.Packed_MemRef_call2434583.2 = add nuw nsw i64 %254, %polly.access.mul.Packed_MemRef_call2434582.2
  %polly.access.Packed_MemRef_call2434584.2 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.2
  %_p_scalar_585.2 = load double, double* %polly.access.Packed_MemRef_call2434584.2, align 8
  %256 = add nuw nsw i64 %255, %252
  %scevgep590.2 = getelementptr i8, i8* %call1, i64 %256
  %scevgep590591.2 = bitcast i8* %scevgep590.2 to double*
  %_p_scalar_592.2 = load double, double* %scevgep590591.2, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header573.2

polly.loop_header573.2:                           ; preds = %polly.loop_header573.2, %polly.loop_header567.2
  %polly.indvar576.2 = phi i64 [ 0, %polly.loop_header567.2 ], [ %polly.indvar_next577.2, %polly.loop_header573.2 ]
  %257 = mul nuw nsw i64 %polly.indvar576.2, 480
  %258 = add nuw nsw i64 %257, %255
  %scevgep579.2 = getelementptr i8, i8* %call1, i64 %258
  %scevgep579580.2 = bitcast i8* %scevgep579.2 to double*
  %_p_scalar_581.2 = load double, double* %scevgep579580.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2 = fmul fast double %_p_scalar_585.2, %_p_scalar_581.2
  %polly.access.mul.Packed_MemRef_call2434586.2 = mul nuw nsw i64 %polly.indvar576.2, 60
  %polly.access.add.Packed_MemRef_call2434587.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.2, %254
  %polly.access.Packed_MemRef_call2434588.2 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.2
  %_p_scalar_589.2 = load double, double* %polly.access.Packed_MemRef_call2434588.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_592.2, %_p_scalar_589.2
  %259 = shl nuw nsw i64 %polly.indvar576.2, 3
  %260 = add nuw nsw i64 %259, %253
  %scevgep593.2 = getelementptr i8, i8* %call, i64 %260
  %scevgep593594.2 = bitcast i8* %scevgep593.2 to double*
  %_p_scalar_595.2 = load double, double* %scevgep593594.2, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_595.2
  store double %p_add42.i.2, double* %scevgep593594.2, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next577.2 = add nuw nsw i64 %polly.indvar576.2, 1
  %exitcond840.2.not = icmp eq i64 %polly.indvar_next577.2, %indvars.iv838.2
  br i1 %exitcond840.2.not, label %polly.loop_exit575.2, label %polly.loop_header573.2

polly.loop_exit575.2:                             ; preds = %polly.loop_header573.2
  %polly.indvar_next571.2 = add nuw nsw i64 %polly.indvar570.2, 1
  %exitcond844.2.not = icmp eq i64 %polly.indvar_next571.2, 16
  br i1 %exitcond844.2.not, label %polly.loop_exit569.2, label %polly.loop_header567.2

polly.loop_exit569.2:                             ; preds = %polly.loop_exit575.2
  %polly.indvar_next565.2 = add nuw nsw i64 %polly.indvar564.2, 1
  %indvars.iv.next839.2 = add nuw nsw i64 %indvars.iv838.2, 1
  %exitcond845.2.not = icmp eq i64 %polly.indvar_next565.2, 16
  br i1 %exitcond845.2.not, label %polly.loop_header561.3, label %polly.loop_header561.2

polly.loop_header561.3:                           ; preds = %polly.loop_exit569.2, %polly.loop_exit569.3
  %indvars.iv838.3 = phi i64 [ %indvars.iv.next839.3, %polly.loop_exit569.3 ], [ %indvars.iv836, %polly.loop_exit569.2 ]
  %polly.indvar564.3 = phi i64 [ %polly.indvar_next565.3, %polly.loop_exit569.3 ], [ 0, %polly.loop_exit569.2 ]
  %261 = add nuw nsw i64 %polly.indvar564.3, %135
  %polly.access.mul.Packed_MemRef_call2434582.3 = mul nuw nsw i64 %261, 60
  %262 = mul nuw nsw i64 %261, 480
  %263 = mul nuw nsw i64 %261, 640
  br label %polly.loop_header567.3

polly.loop_header567.3:                           ; preds = %polly.loop_exit575.3, %polly.loop_header561.3
  %polly.indvar570.3 = phi i64 [ 0, %polly.loop_header561.3 ], [ %polly.indvar_next571.3, %polly.loop_exit575.3 ]
  %264 = add nuw nsw i64 %polly.indvar570.3, 48
  %265 = shl i64 %264, 3
  %polly.access.add.Packed_MemRef_call2434583.3 = add nuw nsw i64 %264, %polly.access.mul.Packed_MemRef_call2434582.3
  %polly.access.Packed_MemRef_call2434584.3 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434583.3
  %_p_scalar_585.3 = load double, double* %polly.access.Packed_MemRef_call2434584.3, align 8
  %266 = add nuw nsw i64 %265, %262
  %scevgep590.3 = getelementptr i8, i8* %call1, i64 %266
  %scevgep590591.3 = bitcast i8* %scevgep590.3 to double*
  %_p_scalar_592.3 = load double, double* %scevgep590591.3, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header573.3

polly.loop_header573.3:                           ; preds = %polly.loop_header573.3, %polly.loop_header567.3
  %polly.indvar576.3 = phi i64 [ 0, %polly.loop_header567.3 ], [ %polly.indvar_next577.3, %polly.loop_header573.3 ]
  %267 = mul nuw nsw i64 %polly.indvar576.3, 480
  %268 = add nuw nsw i64 %267, %265
  %scevgep579.3 = getelementptr i8, i8* %call1, i64 %268
  %scevgep579580.3 = bitcast i8* %scevgep579.3 to double*
  %_p_scalar_581.3 = load double, double* %scevgep579580.3, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.3 = fmul fast double %_p_scalar_585.3, %_p_scalar_581.3
  %polly.access.mul.Packed_MemRef_call2434586.3 = mul nuw nsw i64 %polly.indvar576.3, 60
  %polly.access.add.Packed_MemRef_call2434587.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2434586.3, %264
  %polly.access.Packed_MemRef_call2434588.3 = getelementptr double, double* %Packed_MemRef_call2434, i64 %polly.access.add.Packed_MemRef_call2434587.3
  %_p_scalar_589.3 = load double, double* %polly.access.Packed_MemRef_call2434588.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_592.3, %_p_scalar_589.3
  %269 = shl nuw nsw i64 %polly.indvar576.3, 3
  %270 = add nuw nsw i64 %269, %263
  %scevgep593.3 = getelementptr i8, i8* %call, i64 %270
  %scevgep593594.3 = bitcast i8* %scevgep593.3 to double*
  %_p_scalar_595.3 = load double, double* %scevgep593594.3, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_595.3
  store double %p_add42.i.3, double* %scevgep593594.3, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next577.3 = add nuw nsw i64 %polly.indvar576.3, 1
  %exitcond840.3.not = icmp eq i64 %polly.indvar_next577.3, %indvars.iv838.3
  br i1 %exitcond840.3.not, label %polly.loop_exit575.3, label %polly.loop_header573.3

polly.loop_exit575.3:                             ; preds = %polly.loop_header573.3
  %polly.indvar_next571.3 = add nuw nsw i64 %polly.indvar570.3, 1
  %exitcond844.3.not = icmp eq i64 %polly.indvar_next571.3, 12
  br i1 %exitcond844.3.not, label %polly.loop_exit569.3, label %polly.loop_header567.3

polly.loop_exit569.3:                             ; preds = %polly.loop_exit575.3
  %polly.indvar_next565.3 = add nuw nsw i64 %polly.indvar564.3, 1
  %indvars.iv.next839.3 = add nuw nsw i64 %indvars.iv838.3, 1
  %exitcond845.3.not = icmp eq i64 %polly.indvar_next565.3, 16
  br i1 %exitcond845.3.not, label %polly.loop_exit563.3, label %polly.loop_header561.3

polly.loop_exit563.3:                             ; preds = %polly.loop_exit569.3
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 16
  %exitcond847.not = icmp eq i64 %polly.indvar_next553, 5
  br i1 %exitcond847.not, label %polly.exiting432, label %polly.loop_header549

polly.loop_header787.1:                           ; preds = %polly.loop_exit795, %polly.loop_exit795.1
  %polly.indvar790.1 = phi i64 [ %polly.indvar_next791.1, %polly.loop_exit795.1 ], [ 0, %polly.loop_exit795 ]
  %271 = mul nuw nsw i64 %polly.indvar790.1, 480
  %272 = trunc i64 %polly.indvar790.1 to i32
  %broadcast.splatinsert1167 = insertelement <4 x i32> poison, i32 %272, i32 0
  %broadcast.splat1168 = shufflevector <4 x i32> %broadcast.splatinsert1167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %polly.loop_header787.1
  %index1161 = phi i64 [ 0, %polly.loop_header787.1 ], [ %index.next1162, %vector.body1159 ]
  %vec.ind1165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1 ], [ %vec.ind.next1166, %vector.body1159 ]
  %273 = add nuw nsw <4 x i64> %vec.ind1165, <i64 32, i64 32, i64 32, i64 32>
  %274 = trunc <4 x i64> %273 to <4 x i32>
  %275 = mul <4 x i32> %broadcast.splat1168, %274
  %276 = add <4 x i32> %275, <i32 1, i32 1, i32 1, i32 1>
  %277 = urem <4 x i32> %276, <i32 80, i32 80, i32 80, i32 80>
  %278 = sitofp <4 x i32> %277 to <4 x double>
  %279 = fmul fast <4 x double> %278, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %280 = extractelement <4 x i64> %273, i32 0
  %281 = shl i64 %280, 3
  %282 = add i64 %281, %271
  %283 = getelementptr i8, i8* %call1, i64 %282
  %284 = bitcast i8* %283 to <4 x double>*
  store <4 x double> %279, <4 x double>* %284, align 8, !alias.scope !93, !noalias !98
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1166 = add <4 x i64> %vec.ind1165, <i64 4, i64 4, i64 4, i64 4>
  %285 = icmp eq i64 %index.next1162, 28
  br i1 %285, label %polly.loop_exit795.1, label %vector.body1159, !llvm.loop !100

polly.loop_exit795.1:                             ; preds = %vector.body1159
  %polly.indvar_next791.1 = add nuw nsw i64 %polly.indvar790.1, 1
  %exitcond858.1.not = icmp eq i64 %polly.indvar_next791.1, 32
  br i1 %exitcond858.1.not, label %polly.loop_header787.1878, label %polly.loop_header787.1

polly.loop_header787.1878:                        ; preds = %polly.loop_exit795.1, %polly.loop_exit795.1889
  %polly.indvar790.1877 = phi i64 [ %polly.indvar_next791.1887, %polly.loop_exit795.1889 ], [ 0, %polly.loop_exit795.1 ]
  %286 = add nuw nsw i64 %polly.indvar790.1877, 32
  %287 = mul nuw nsw i64 %286, 480
  %288 = trunc i64 %286 to i32
  %broadcast.splatinsert1181 = insertelement <4 x i32> poison, i32 %288, i32 0
  %broadcast.splat1182 = shufflevector <4 x i32> %broadcast.splatinsert1181, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %polly.loop_header787.1878
  %index1173 = phi i64 [ 0, %polly.loop_header787.1878 ], [ %index.next1174, %vector.body1171 ]
  %vec.ind1179 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.1878 ], [ %vec.ind.next1180, %vector.body1171 ]
  %289 = mul <4 x i32> %vec.ind1179, %broadcast.splat1182
  %290 = add <4 x i32> %289, <i32 1, i32 1, i32 1, i32 1>
  %291 = urem <4 x i32> %290, <i32 80, i32 80, i32 80, i32 80>
  %292 = sitofp <4 x i32> %291 to <4 x double>
  %293 = fmul fast <4 x double> %292, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %294 = shl i64 %index1173, 3
  %295 = add i64 %294, %287
  %296 = getelementptr i8, i8* %call1, i64 %295
  %297 = bitcast i8* %296 to <4 x double>*
  store <4 x double> %293, <4 x double>* %297, align 8, !alias.scope !93, !noalias !98
  %index.next1174 = add i64 %index1173, 4
  %vec.ind.next1180 = add <4 x i32> %vec.ind1179, <i32 4, i32 4, i32 4, i32 4>
  %298 = icmp eq i64 %index.next1174, 32
  br i1 %298, label %polly.loop_exit795.1889, label %vector.body1171, !llvm.loop !101

polly.loop_exit795.1889:                          ; preds = %vector.body1171
  %polly.indvar_next791.1887 = add nuw nsw i64 %polly.indvar790.1877, 1
  %exitcond858.1888.not = icmp eq i64 %polly.indvar_next791.1887, 32
  br i1 %exitcond858.1888.not, label %polly.loop_header787.1.1, label %polly.loop_header787.1878

polly.loop_header787.1.1:                         ; preds = %polly.loop_exit795.1889, %polly.loop_exit795.1.1
  %polly.indvar790.1.1 = phi i64 [ %polly.indvar_next791.1.1, %polly.loop_exit795.1.1 ], [ 0, %polly.loop_exit795.1889 ]
  %299 = add nuw nsw i64 %polly.indvar790.1.1, 32
  %300 = mul nuw nsw i64 %299, 480
  %301 = trunc i64 %299 to i32
  %broadcast.splatinsert1193 = insertelement <4 x i32> poison, i32 %301, i32 0
  %broadcast.splat1194 = shufflevector <4 x i32> %broadcast.splatinsert1193, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %polly.loop_header787.1.1
  %index1187 = phi i64 [ 0, %polly.loop_header787.1.1 ], [ %index.next1188, %vector.body1185 ]
  %vec.ind1191 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.1 ], [ %vec.ind.next1192, %vector.body1185 ]
  %302 = add nuw nsw <4 x i64> %vec.ind1191, <i64 32, i64 32, i64 32, i64 32>
  %303 = trunc <4 x i64> %302 to <4 x i32>
  %304 = mul <4 x i32> %broadcast.splat1194, %303
  %305 = add <4 x i32> %304, <i32 1, i32 1, i32 1, i32 1>
  %306 = urem <4 x i32> %305, <i32 80, i32 80, i32 80, i32 80>
  %307 = sitofp <4 x i32> %306 to <4 x double>
  %308 = fmul fast <4 x double> %307, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %309 = extractelement <4 x i64> %302, i32 0
  %310 = shl i64 %309, 3
  %311 = add i64 %310, %300
  %312 = getelementptr i8, i8* %call1, i64 %311
  %313 = bitcast i8* %312 to <4 x double>*
  store <4 x double> %308, <4 x double>* %313, align 8, !alias.scope !93, !noalias !98
  %index.next1188 = add i64 %index1187, 4
  %vec.ind.next1192 = add <4 x i64> %vec.ind1191, <i64 4, i64 4, i64 4, i64 4>
  %314 = icmp eq i64 %index.next1188, 28
  br i1 %314, label %polly.loop_exit795.1.1, label %vector.body1185, !llvm.loop !102

polly.loop_exit795.1.1:                           ; preds = %vector.body1185
  %polly.indvar_next791.1.1 = add nuw nsw i64 %polly.indvar790.1.1, 1
  %exitcond858.1.1.not = icmp eq i64 %polly.indvar_next791.1.1, 32
  br i1 %exitcond858.1.1.not, label %polly.loop_header787.2, label %polly.loop_header787.1.1

polly.loop_header787.2:                           ; preds = %polly.loop_exit795.1.1, %polly.loop_exit795.2
  %polly.indvar790.2 = phi i64 [ %polly.indvar_next791.2, %polly.loop_exit795.2 ], [ 0, %polly.loop_exit795.1.1 ]
  %315 = add nuw nsw i64 %polly.indvar790.2, 64
  %316 = mul nuw nsw i64 %315, 480
  %317 = trunc i64 %315 to i32
  %broadcast.splatinsert1207 = insertelement <4 x i32> poison, i32 %317, i32 0
  %broadcast.splat1208 = shufflevector <4 x i32> %broadcast.splatinsert1207, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %polly.loop_header787.2
  %index1199 = phi i64 [ 0, %polly.loop_header787.2 ], [ %index.next1200, %vector.body1197 ]
  %vec.ind1205 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.2 ], [ %vec.ind.next1206, %vector.body1197 ]
  %318 = mul <4 x i32> %vec.ind1205, %broadcast.splat1208
  %319 = add <4 x i32> %318, <i32 1, i32 1, i32 1, i32 1>
  %320 = urem <4 x i32> %319, <i32 80, i32 80, i32 80, i32 80>
  %321 = sitofp <4 x i32> %320 to <4 x double>
  %322 = fmul fast <4 x double> %321, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %323 = shl i64 %index1199, 3
  %324 = add i64 %323, %316
  %325 = getelementptr i8, i8* %call1, i64 %324
  %326 = bitcast i8* %325 to <4 x double>*
  store <4 x double> %322, <4 x double>* %326, align 8, !alias.scope !93, !noalias !98
  %index.next1200 = add i64 %index1199, 4
  %vec.ind.next1206 = add <4 x i32> %vec.ind1205, <i32 4, i32 4, i32 4, i32 4>
  %327 = icmp eq i64 %index.next1200, 32
  br i1 %327, label %polly.loop_exit795.2, label %vector.body1197, !llvm.loop !103

polly.loop_exit795.2:                             ; preds = %vector.body1197
  %polly.indvar_next791.2 = add nuw nsw i64 %polly.indvar790.2, 1
  %exitcond858.2.not = icmp eq i64 %polly.indvar_next791.2, 16
  br i1 %exitcond858.2.not, label %polly.loop_header787.1.2, label %polly.loop_header787.2

polly.loop_header787.1.2:                         ; preds = %polly.loop_exit795.2, %polly.loop_exit795.1.2
  %polly.indvar790.1.2 = phi i64 [ %polly.indvar_next791.1.2, %polly.loop_exit795.1.2 ], [ 0, %polly.loop_exit795.2 ]
  %328 = add nuw nsw i64 %polly.indvar790.1.2, 64
  %329 = mul nuw nsw i64 %328, 480
  %330 = trunc i64 %328 to i32
  %broadcast.splatinsert1219 = insertelement <4 x i32> poison, i32 %330, i32 0
  %broadcast.splat1220 = shufflevector <4 x i32> %broadcast.splatinsert1219, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %polly.loop_header787.1.2
  %index1213 = phi i64 [ 0, %polly.loop_header787.1.2 ], [ %index.next1214, %vector.body1211 ]
  %vec.ind1217 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.2 ], [ %vec.ind.next1218, %vector.body1211 ]
  %331 = add nuw nsw <4 x i64> %vec.ind1217, <i64 32, i64 32, i64 32, i64 32>
  %332 = trunc <4 x i64> %331 to <4 x i32>
  %333 = mul <4 x i32> %broadcast.splat1220, %332
  %334 = add <4 x i32> %333, <i32 1, i32 1, i32 1, i32 1>
  %335 = urem <4 x i32> %334, <i32 80, i32 80, i32 80, i32 80>
  %336 = sitofp <4 x i32> %335 to <4 x double>
  %337 = fmul fast <4 x double> %336, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %338 = extractelement <4 x i64> %331, i32 0
  %339 = shl i64 %338, 3
  %340 = add i64 %339, %329
  %341 = getelementptr i8, i8* %call1, i64 %340
  %342 = bitcast i8* %341 to <4 x double>*
  store <4 x double> %337, <4 x double>* %342, align 8, !alias.scope !93, !noalias !98
  %index.next1214 = add i64 %index1213, 4
  %vec.ind.next1218 = add <4 x i64> %vec.ind1217, <i64 4, i64 4, i64 4, i64 4>
  %343 = icmp eq i64 %index.next1214, 28
  br i1 %343, label %polly.loop_exit795.1.2, label %vector.body1211, !llvm.loop !104

polly.loop_exit795.1.2:                           ; preds = %vector.body1211
  %polly.indvar_next791.1.2 = add nuw nsw i64 %polly.indvar790.1.2, 1
  %exitcond858.1.2.not = icmp eq i64 %polly.indvar_next791.1.2, 16
  br i1 %exitcond858.1.2.not, label %init_array.exit, label %polly.loop_header787.1.2

polly.loop_header761.1:                           ; preds = %polly.loop_exit769, %polly.loop_exit769.1
  %polly.indvar764.1 = phi i64 [ %polly.indvar_next765.1, %polly.loop_exit769.1 ], [ 0, %polly.loop_exit769 ]
  %344 = mul nuw nsw i64 %polly.indvar764.1, 480
  %345 = trunc i64 %polly.indvar764.1 to i32
  %broadcast.splatinsert1089 = insertelement <4 x i32> poison, i32 %345, i32 0
  %broadcast.splat1090 = shufflevector <4 x i32> %broadcast.splatinsert1089, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %polly.loop_header761.1
  %index1083 = phi i64 [ 0, %polly.loop_header761.1 ], [ %index.next1084, %vector.body1081 ]
  %vec.ind1087 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1 ], [ %vec.ind.next1088, %vector.body1081 ]
  %346 = add nuw nsw <4 x i64> %vec.ind1087, <i64 32, i64 32, i64 32, i64 32>
  %347 = trunc <4 x i64> %346 to <4 x i32>
  %348 = mul <4 x i32> %broadcast.splat1090, %347
  %349 = add <4 x i32> %348, <i32 2, i32 2, i32 2, i32 2>
  %350 = urem <4 x i32> %349, <i32 60, i32 60, i32 60, i32 60>
  %351 = sitofp <4 x i32> %350 to <4 x double>
  %352 = fmul fast <4 x double> %351, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %353 = extractelement <4 x i64> %346, i32 0
  %354 = shl i64 %353, 3
  %355 = add i64 %354, %344
  %356 = getelementptr i8, i8* %call2, i64 %355
  %357 = bitcast i8* %356 to <4 x double>*
  store <4 x double> %352, <4 x double>* %357, align 8, !alias.scope !94, !noalias !96
  %index.next1084 = add i64 %index1083, 4
  %vec.ind.next1088 = add <4 x i64> %vec.ind1087, <i64 4, i64 4, i64 4, i64 4>
  %358 = icmp eq i64 %index.next1084, 28
  br i1 %358, label %polly.loop_exit769.1, label %vector.body1081, !llvm.loop !105

polly.loop_exit769.1:                             ; preds = %vector.body1081
  %polly.indvar_next765.1 = add nuw nsw i64 %polly.indvar764.1, 1
  %exitcond864.1.not = icmp eq i64 %polly.indvar_next765.1, 32
  br i1 %exitcond864.1.not, label %polly.loop_header761.1892, label %polly.loop_header761.1

polly.loop_header761.1892:                        ; preds = %polly.loop_exit769.1, %polly.loop_exit769.1903
  %polly.indvar764.1891 = phi i64 [ %polly.indvar_next765.1901, %polly.loop_exit769.1903 ], [ 0, %polly.loop_exit769.1 ]
  %359 = add nuw nsw i64 %polly.indvar764.1891, 32
  %360 = mul nuw nsw i64 %359, 480
  %361 = trunc i64 %359 to i32
  %broadcast.splatinsert1103 = insertelement <4 x i32> poison, i32 %361, i32 0
  %broadcast.splat1104 = shufflevector <4 x i32> %broadcast.splatinsert1103, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1093

vector.body1093:                                  ; preds = %vector.body1093, %polly.loop_header761.1892
  %index1095 = phi i64 [ 0, %polly.loop_header761.1892 ], [ %index.next1096, %vector.body1093 ]
  %vec.ind1101 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.1892 ], [ %vec.ind.next1102, %vector.body1093 ]
  %362 = mul <4 x i32> %vec.ind1101, %broadcast.splat1104
  %363 = add <4 x i32> %362, <i32 2, i32 2, i32 2, i32 2>
  %364 = urem <4 x i32> %363, <i32 60, i32 60, i32 60, i32 60>
  %365 = sitofp <4 x i32> %364 to <4 x double>
  %366 = fmul fast <4 x double> %365, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %367 = shl i64 %index1095, 3
  %368 = add i64 %367, %360
  %369 = getelementptr i8, i8* %call2, i64 %368
  %370 = bitcast i8* %369 to <4 x double>*
  store <4 x double> %366, <4 x double>* %370, align 8, !alias.scope !94, !noalias !96
  %index.next1096 = add i64 %index1095, 4
  %vec.ind.next1102 = add <4 x i32> %vec.ind1101, <i32 4, i32 4, i32 4, i32 4>
  %371 = icmp eq i64 %index.next1096, 32
  br i1 %371, label %polly.loop_exit769.1903, label %vector.body1093, !llvm.loop !106

polly.loop_exit769.1903:                          ; preds = %vector.body1093
  %polly.indvar_next765.1901 = add nuw nsw i64 %polly.indvar764.1891, 1
  %exitcond864.1902.not = icmp eq i64 %polly.indvar_next765.1901, 32
  br i1 %exitcond864.1902.not, label %polly.loop_header761.1.1, label %polly.loop_header761.1892

polly.loop_header761.1.1:                         ; preds = %polly.loop_exit769.1903, %polly.loop_exit769.1.1
  %polly.indvar764.1.1 = phi i64 [ %polly.indvar_next765.1.1, %polly.loop_exit769.1.1 ], [ 0, %polly.loop_exit769.1903 ]
  %372 = add nuw nsw i64 %polly.indvar764.1.1, 32
  %373 = mul nuw nsw i64 %372, 480
  %374 = trunc i64 %372 to i32
  %broadcast.splatinsert1115 = insertelement <4 x i32> poison, i32 %374, i32 0
  %broadcast.splat1116 = shufflevector <4 x i32> %broadcast.splatinsert1115, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %polly.loop_header761.1.1
  %index1109 = phi i64 [ 0, %polly.loop_header761.1.1 ], [ %index.next1110, %vector.body1107 ]
  %vec.ind1113 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.1 ], [ %vec.ind.next1114, %vector.body1107 ]
  %375 = add nuw nsw <4 x i64> %vec.ind1113, <i64 32, i64 32, i64 32, i64 32>
  %376 = trunc <4 x i64> %375 to <4 x i32>
  %377 = mul <4 x i32> %broadcast.splat1116, %376
  %378 = add <4 x i32> %377, <i32 2, i32 2, i32 2, i32 2>
  %379 = urem <4 x i32> %378, <i32 60, i32 60, i32 60, i32 60>
  %380 = sitofp <4 x i32> %379 to <4 x double>
  %381 = fmul fast <4 x double> %380, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %382 = extractelement <4 x i64> %375, i32 0
  %383 = shl i64 %382, 3
  %384 = add i64 %383, %373
  %385 = getelementptr i8, i8* %call2, i64 %384
  %386 = bitcast i8* %385 to <4 x double>*
  store <4 x double> %381, <4 x double>* %386, align 8, !alias.scope !94, !noalias !96
  %index.next1110 = add i64 %index1109, 4
  %vec.ind.next1114 = add <4 x i64> %vec.ind1113, <i64 4, i64 4, i64 4, i64 4>
  %387 = icmp eq i64 %index.next1110, 28
  br i1 %387, label %polly.loop_exit769.1.1, label %vector.body1107, !llvm.loop !107

polly.loop_exit769.1.1:                           ; preds = %vector.body1107
  %polly.indvar_next765.1.1 = add nuw nsw i64 %polly.indvar764.1.1, 1
  %exitcond864.1.1.not = icmp eq i64 %polly.indvar_next765.1.1, 32
  br i1 %exitcond864.1.1.not, label %polly.loop_header761.2, label %polly.loop_header761.1.1

polly.loop_header761.2:                           ; preds = %polly.loop_exit769.1.1, %polly.loop_exit769.2
  %polly.indvar764.2 = phi i64 [ %polly.indvar_next765.2, %polly.loop_exit769.2 ], [ 0, %polly.loop_exit769.1.1 ]
  %388 = add nuw nsw i64 %polly.indvar764.2, 64
  %389 = mul nuw nsw i64 %388, 480
  %390 = trunc i64 %388 to i32
  %broadcast.splatinsert1129 = insertelement <4 x i32> poison, i32 %390, i32 0
  %broadcast.splat1130 = shufflevector <4 x i32> %broadcast.splatinsert1129, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %polly.loop_header761.2
  %index1121 = phi i64 [ 0, %polly.loop_header761.2 ], [ %index.next1122, %vector.body1119 ]
  %vec.ind1127 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.2 ], [ %vec.ind.next1128, %vector.body1119 ]
  %391 = mul <4 x i32> %vec.ind1127, %broadcast.splat1130
  %392 = add <4 x i32> %391, <i32 2, i32 2, i32 2, i32 2>
  %393 = urem <4 x i32> %392, <i32 60, i32 60, i32 60, i32 60>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %396 = shl i64 %index1121, 3
  %397 = add i64 %396, %389
  %398 = getelementptr i8, i8* %call2, i64 %397
  %399 = bitcast i8* %398 to <4 x double>*
  store <4 x double> %395, <4 x double>* %399, align 8, !alias.scope !94, !noalias !96
  %index.next1122 = add i64 %index1121, 4
  %vec.ind.next1128 = add <4 x i32> %vec.ind1127, <i32 4, i32 4, i32 4, i32 4>
  %400 = icmp eq i64 %index.next1122, 32
  br i1 %400, label %polly.loop_exit769.2, label %vector.body1119, !llvm.loop !108

polly.loop_exit769.2:                             ; preds = %vector.body1119
  %polly.indvar_next765.2 = add nuw nsw i64 %polly.indvar764.2, 1
  %exitcond864.2.not = icmp eq i64 %polly.indvar_next765.2, 16
  br i1 %exitcond864.2.not, label %polly.loop_header761.1.2, label %polly.loop_header761.2

polly.loop_header761.1.2:                         ; preds = %polly.loop_exit769.2, %polly.loop_exit769.1.2
  %polly.indvar764.1.2 = phi i64 [ %polly.indvar_next765.1.2, %polly.loop_exit769.1.2 ], [ 0, %polly.loop_exit769.2 ]
  %401 = add nuw nsw i64 %polly.indvar764.1.2, 64
  %402 = mul nuw nsw i64 %401, 480
  %403 = trunc i64 %401 to i32
  %broadcast.splatinsert1141 = insertelement <4 x i32> poison, i32 %403, i32 0
  %broadcast.splat1142 = shufflevector <4 x i32> %broadcast.splatinsert1141, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %polly.loop_header761.1.2
  %index1135 = phi i64 [ 0, %polly.loop_header761.1.2 ], [ %index.next1136, %vector.body1133 ]
  %vec.ind1139 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.2 ], [ %vec.ind.next1140, %vector.body1133 ]
  %404 = add nuw nsw <4 x i64> %vec.ind1139, <i64 32, i64 32, i64 32, i64 32>
  %405 = trunc <4 x i64> %404 to <4 x i32>
  %406 = mul <4 x i32> %broadcast.splat1142, %405
  %407 = add <4 x i32> %406, <i32 2, i32 2, i32 2, i32 2>
  %408 = urem <4 x i32> %407, <i32 60, i32 60, i32 60, i32 60>
  %409 = sitofp <4 x i32> %408 to <4 x double>
  %410 = fmul fast <4 x double> %409, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %411 = extractelement <4 x i64> %404, i32 0
  %412 = shl i64 %411, 3
  %413 = add i64 %412, %402
  %414 = getelementptr i8, i8* %call2, i64 %413
  %415 = bitcast i8* %414 to <4 x double>*
  store <4 x double> %410, <4 x double>* %415, align 8, !alias.scope !94, !noalias !96
  %index.next1136 = add i64 %index1135, 4
  %vec.ind.next1140 = add <4 x i64> %vec.ind1139, <i64 4, i64 4, i64 4, i64 4>
  %416 = icmp eq i64 %index.next1136, 28
  br i1 %416, label %polly.loop_exit769.1.2, label %vector.body1133, !llvm.loop !109

polly.loop_exit769.1.2:                           ; preds = %vector.body1133
  %polly.indvar_next765.1.2 = add nuw nsw i64 %polly.indvar764.1.2, 1
  %exitcond864.1.2.not = icmp eq i64 %polly.indvar_next765.1.2, 16
  br i1 %exitcond864.1.2.not, label %polly.loop_header787, label %polly.loop_header761.1.2

polly.loop_header734.1:                           ; preds = %polly.loop_exit742, %polly.loop_exit742.1
  %polly.indvar737.1 = phi i64 [ %polly.indvar_next738.1, %polly.loop_exit742.1 ], [ 0, %polly.loop_exit742 ]
  %417 = mul nuw nsw i64 %polly.indvar737.1, 640
  %418 = trunc i64 %polly.indvar737.1 to i32
  %broadcast.splatinsert975 = insertelement <4 x i32> poison, i32 %418, i32 0
  %broadcast.splat976 = shufflevector <4 x i32> %broadcast.splatinsert975, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body967

vector.body967:                                   ; preds = %vector.body967, %polly.loop_header734.1
  %index969 = phi i64 [ 0, %polly.loop_header734.1 ], [ %index.next970, %vector.body967 ]
  %vec.ind973 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1 ], [ %vec.ind.next974, %vector.body967 ]
  %419 = add nuw nsw <4 x i64> %vec.ind973, <i64 32, i64 32, i64 32, i64 32>
  %420 = trunc <4 x i64> %419 to <4 x i32>
  %421 = mul <4 x i32> %broadcast.splat976, %420
  %422 = add <4 x i32> %421, <i32 3, i32 3, i32 3, i32 3>
  %423 = urem <4 x i32> %422, <i32 80, i32 80, i32 80, i32 80>
  %424 = sitofp <4 x i32> %423 to <4 x double>
  %425 = fmul fast <4 x double> %424, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %426 = extractelement <4 x i64> %419, i32 0
  %427 = shl i64 %426, 3
  %428 = add nuw nsw i64 %427, %417
  %429 = getelementptr i8, i8* %call, i64 %428
  %430 = bitcast i8* %429 to <4 x double>*
  store <4 x double> %425, <4 x double>* %430, align 8, !alias.scope !90, !noalias !92
  %index.next970 = add i64 %index969, 4
  %vec.ind.next974 = add <4 x i64> %vec.ind973, <i64 4, i64 4, i64 4, i64 4>
  %431 = icmp eq i64 %index.next970, 32
  br i1 %431, label %polly.loop_exit742.1, label %vector.body967, !llvm.loop !110

polly.loop_exit742.1:                             ; preds = %vector.body967
  %polly.indvar_next738.1 = add nuw nsw i64 %polly.indvar737.1, 1
  %exitcond873.1.not = icmp eq i64 %polly.indvar_next738.1, 32
  br i1 %exitcond873.1.not, label %polly.loop_header734.2, label %polly.loop_header734.1

polly.loop_header734.2:                           ; preds = %polly.loop_exit742.1, %polly.loop_exit742.2
  %polly.indvar737.2 = phi i64 [ %polly.indvar_next738.2, %polly.loop_exit742.2 ], [ 0, %polly.loop_exit742.1 ]
  %432 = mul nuw nsw i64 %polly.indvar737.2, 640
  %433 = trunc i64 %polly.indvar737.2 to i32
  %broadcast.splatinsert987 = insertelement <4 x i32> poison, i32 %433, i32 0
  %broadcast.splat988 = shufflevector <4 x i32> %broadcast.splatinsert987, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body979

vector.body979:                                   ; preds = %vector.body979, %polly.loop_header734.2
  %index981 = phi i64 [ 0, %polly.loop_header734.2 ], [ %index.next982, %vector.body979 ]
  %vec.ind985 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2 ], [ %vec.ind.next986, %vector.body979 ]
  %434 = add nuw nsw <4 x i64> %vec.ind985, <i64 64, i64 64, i64 64, i64 64>
  %435 = trunc <4 x i64> %434 to <4 x i32>
  %436 = mul <4 x i32> %broadcast.splat988, %435
  %437 = add <4 x i32> %436, <i32 3, i32 3, i32 3, i32 3>
  %438 = urem <4 x i32> %437, <i32 80, i32 80, i32 80, i32 80>
  %439 = sitofp <4 x i32> %438 to <4 x double>
  %440 = fmul fast <4 x double> %439, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %441 = extractelement <4 x i64> %434, i32 0
  %442 = shl i64 %441, 3
  %443 = add nuw nsw i64 %442, %432
  %444 = getelementptr i8, i8* %call, i64 %443
  %445 = bitcast i8* %444 to <4 x double>*
  store <4 x double> %440, <4 x double>* %445, align 8, !alias.scope !90, !noalias !92
  %index.next982 = add i64 %index981, 4
  %vec.ind.next986 = add <4 x i64> %vec.ind985, <i64 4, i64 4, i64 4, i64 4>
  %446 = icmp eq i64 %index.next982, 16
  br i1 %446, label %polly.loop_exit742.2, label %vector.body979, !llvm.loop !111

polly.loop_exit742.2:                             ; preds = %vector.body979
  %polly.indvar_next738.2 = add nuw nsw i64 %polly.indvar737.2, 1
  %exitcond873.2.not = icmp eq i64 %polly.indvar_next738.2, 32
  br i1 %exitcond873.2.not, label %polly.loop_header734.1906, label %polly.loop_header734.2

polly.loop_header734.1906:                        ; preds = %polly.loop_exit742.2, %polly.loop_exit742.1917
  %polly.indvar737.1905 = phi i64 [ %polly.indvar_next738.1915, %polly.loop_exit742.1917 ], [ 0, %polly.loop_exit742.2 ]
  %447 = add nuw nsw i64 %polly.indvar737.1905, 32
  %448 = mul nuw nsw i64 %447, 640
  %449 = trunc i64 %447 to i32
  %broadcast.splatinsert1001 = insertelement <4 x i32> poison, i32 %449, i32 0
  %broadcast.splat1002 = shufflevector <4 x i32> %broadcast.splatinsert1001, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body991

vector.body991:                                   ; preds = %vector.body991, %polly.loop_header734.1906
  %index993 = phi i64 [ 0, %polly.loop_header734.1906 ], [ %index.next994, %vector.body991 ]
  %vec.ind999 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.1906 ], [ %vec.ind.next1000, %vector.body991 ]
  %450 = mul <4 x i32> %vec.ind999, %broadcast.splat1002
  %451 = add <4 x i32> %450, <i32 3, i32 3, i32 3, i32 3>
  %452 = urem <4 x i32> %451, <i32 80, i32 80, i32 80, i32 80>
  %453 = sitofp <4 x i32> %452 to <4 x double>
  %454 = fmul fast <4 x double> %453, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %455 = shl i64 %index993, 3
  %456 = add nuw nsw i64 %455, %448
  %457 = getelementptr i8, i8* %call, i64 %456
  %458 = bitcast i8* %457 to <4 x double>*
  store <4 x double> %454, <4 x double>* %458, align 8, !alias.scope !90, !noalias !92
  %index.next994 = add i64 %index993, 4
  %vec.ind.next1000 = add <4 x i32> %vec.ind999, <i32 4, i32 4, i32 4, i32 4>
  %459 = icmp eq i64 %index.next994, 32
  br i1 %459, label %polly.loop_exit742.1917, label %vector.body991, !llvm.loop !112

polly.loop_exit742.1917:                          ; preds = %vector.body991
  %polly.indvar_next738.1915 = add nuw nsw i64 %polly.indvar737.1905, 1
  %exitcond873.1916.not = icmp eq i64 %polly.indvar_next738.1915, 32
  br i1 %exitcond873.1916.not, label %polly.loop_header734.1.1, label %polly.loop_header734.1906

polly.loop_header734.1.1:                         ; preds = %polly.loop_exit742.1917, %polly.loop_exit742.1.1
  %polly.indvar737.1.1 = phi i64 [ %polly.indvar_next738.1.1, %polly.loop_exit742.1.1 ], [ 0, %polly.loop_exit742.1917 ]
  %460 = add nuw nsw i64 %polly.indvar737.1.1, 32
  %461 = mul nuw nsw i64 %460, 640
  %462 = trunc i64 %460 to i32
  %broadcast.splatinsert1013 = insertelement <4 x i32> poison, i32 %462, i32 0
  %broadcast.splat1014 = shufflevector <4 x i32> %broadcast.splatinsert1013, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1005

vector.body1005:                                  ; preds = %vector.body1005, %polly.loop_header734.1.1
  %index1007 = phi i64 [ 0, %polly.loop_header734.1.1 ], [ %index.next1008, %vector.body1005 ]
  %vec.ind1011 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.1 ], [ %vec.ind.next1012, %vector.body1005 ]
  %463 = add nuw nsw <4 x i64> %vec.ind1011, <i64 32, i64 32, i64 32, i64 32>
  %464 = trunc <4 x i64> %463 to <4 x i32>
  %465 = mul <4 x i32> %broadcast.splat1014, %464
  %466 = add <4 x i32> %465, <i32 3, i32 3, i32 3, i32 3>
  %467 = urem <4 x i32> %466, <i32 80, i32 80, i32 80, i32 80>
  %468 = sitofp <4 x i32> %467 to <4 x double>
  %469 = fmul fast <4 x double> %468, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %470 = extractelement <4 x i64> %463, i32 0
  %471 = shl i64 %470, 3
  %472 = add nuw nsw i64 %471, %461
  %473 = getelementptr i8, i8* %call, i64 %472
  %474 = bitcast i8* %473 to <4 x double>*
  store <4 x double> %469, <4 x double>* %474, align 8, !alias.scope !90, !noalias !92
  %index.next1008 = add i64 %index1007, 4
  %vec.ind.next1012 = add <4 x i64> %vec.ind1011, <i64 4, i64 4, i64 4, i64 4>
  %475 = icmp eq i64 %index.next1008, 32
  br i1 %475, label %polly.loop_exit742.1.1, label %vector.body1005, !llvm.loop !113

polly.loop_exit742.1.1:                           ; preds = %vector.body1005
  %polly.indvar_next738.1.1 = add nuw nsw i64 %polly.indvar737.1.1, 1
  %exitcond873.1.1.not = icmp eq i64 %polly.indvar_next738.1.1, 32
  br i1 %exitcond873.1.1.not, label %polly.loop_header734.2.1, label %polly.loop_header734.1.1

polly.loop_header734.2.1:                         ; preds = %polly.loop_exit742.1.1, %polly.loop_exit742.2.1
  %polly.indvar737.2.1 = phi i64 [ %polly.indvar_next738.2.1, %polly.loop_exit742.2.1 ], [ 0, %polly.loop_exit742.1.1 ]
  %476 = add nuw nsw i64 %polly.indvar737.2.1, 32
  %477 = mul nuw nsw i64 %476, 640
  %478 = trunc i64 %476 to i32
  %broadcast.splatinsert1025 = insertelement <4 x i32> poison, i32 %478, i32 0
  %broadcast.splat1026 = shufflevector <4 x i32> %broadcast.splatinsert1025, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1017

vector.body1017:                                  ; preds = %vector.body1017, %polly.loop_header734.2.1
  %index1019 = phi i64 [ 0, %polly.loop_header734.2.1 ], [ %index.next1020, %vector.body1017 ]
  %vec.ind1023 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.1 ], [ %vec.ind.next1024, %vector.body1017 ]
  %479 = add nuw nsw <4 x i64> %vec.ind1023, <i64 64, i64 64, i64 64, i64 64>
  %480 = trunc <4 x i64> %479 to <4 x i32>
  %481 = mul <4 x i32> %broadcast.splat1026, %480
  %482 = add <4 x i32> %481, <i32 3, i32 3, i32 3, i32 3>
  %483 = urem <4 x i32> %482, <i32 80, i32 80, i32 80, i32 80>
  %484 = sitofp <4 x i32> %483 to <4 x double>
  %485 = fmul fast <4 x double> %484, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %486 = extractelement <4 x i64> %479, i32 0
  %487 = shl i64 %486, 3
  %488 = add nuw nsw i64 %487, %477
  %489 = getelementptr i8, i8* %call, i64 %488
  %490 = bitcast i8* %489 to <4 x double>*
  store <4 x double> %485, <4 x double>* %490, align 8, !alias.scope !90, !noalias !92
  %index.next1020 = add i64 %index1019, 4
  %vec.ind.next1024 = add <4 x i64> %vec.ind1023, <i64 4, i64 4, i64 4, i64 4>
  %491 = icmp eq i64 %index.next1020, 16
  br i1 %491, label %polly.loop_exit742.2.1, label %vector.body1017, !llvm.loop !114

polly.loop_exit742.2.1:                           ; preds = %vector.body1017
  %polly.indvar_next738.2.1 = add nuw nsw i64 %polly.indvar737.2.1, 1
  %exitcond873.2.1.not = icmp eq i64 %polly.indvar_next738.2.1, 32
  br i1 %exitcond873.2.1.not, label %polly.loop_header734.2920, label %polly.loop_header734.2.1

polly.loop_header734.2920:                        ; preds = %polly.loop_exit742.2.1, %polly.loop_exit742.2931
  %polly.indvar737.2919 = phi i64 [ %polly.indvar_next738.2929, %polly.loop_exit742.2931 ], [ 0, %polly.loop_exit742.2.1 ]
  %492 = add nuw nsw i64 %polly.indvar737.2919, 64
  %493 = mul nuw nsw i64 %492, 640
  %494 = trunc i64 %492 to i32
  %broadcast.splatinsert1039 = insertelement <4 x i32> poison, i32 %494, i32 0
  %broadcast.splat1040 = shufflevector <4 x i32> %broadcast.splatinsert1039, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %polly.loop_header734.2920
  %index1031 = phi i64 [ 0, %polly.loop_header734.2920 ], [ %index.next1032, %vector.body1029 ]
  %vec.ind1037 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.2920 ], [ %vec.ind.next1038, %vector.body1029 ]
  %495 = mul <4 x i32> %vec.ind1037, %broadcast.splat1040
  %496 = add <4 x i32> %495, <i32 3, i32 3, i32 3, i32 3>
  %497 = urem <4 x i32> %496, <i32 80, i32 80, i32 80, i32 80>
  %498 = sitofp <4 x i32> %497 to <4 x double>
  %499 = fmul fast <4 x double> %498, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %500 = shl i64 %index1031, 3
  %501 = add nuw nsw i64 %500, %493
  %502 = getelementptr i8, i8* %call, i64 %501
  %503 = bitcast i8* %502 to <4 x double>*
  store <4 x double> %499, <4 x double>* %503, align 8, !alias.scope !90, !noalias !92
  %index.next1032 = add i64 %index1031, 4
  %vec.ind.next1038 = add <4 x i32> %vec.ind1037, <i32 4, i32 4, i32 4, i32 4>
  %504 = icmp eq i64 %index.next1032, 32
  br i1 %504, label %polly.loop_exit742.2931, label %vector.body1029, !llvm.loop !115

polly.loop_exit742.2931:                          ; preds = %vector.body1029
  %polly.indvar_next738.2929 = add nuw nsw i64 %polly.indvar737.2919, 1
  %exitcond873.2930.not = icmp eq i64 %polly.indvar_next738.2929, 16
  br i1 %exitcond873.2930.not, label %polly.loop_header734.1.2, label %polly.loop_header734.2920

polly.loop_header734.1.2:                         ; preds = %polly.loop_exit742.2931, %polly.loop_exit742.1.2
  %polly.indvar737.1.2 = phi i64 [ %polly.indvar_next738.1.2, %polly.loop_exit742.1.2 ], [ 0, %polly.loop_exit742.2931 ]
  %505 = add nuw nsw i64 %polly.indvar737.1.2, 64
  %506 = mul nuw nsw i64 %505, 640
  %507 = trunc i64 %505 to i32
  %broadcast.splatinsert1051 = insertelement <4 x i32> poison, i32 %507, i32 0
  %broadcast.splat1052 = shufflevector <4 x i32> %broadcast.splatinsert1051, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %polly.loop_header734.1.2
  %index1045 = phi i64 [ 0, %polly.loop_header734.1.2 ], [ %index.next1046, %vector.body1043 ]
  %vec.ind1049 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.2 ], [ %vec.ind.next1050, %vector.body1043 ]
  %508 = add nuw nsw <4 x i64> %vec.ind1049, <i64 32, i64 32, i64 32, i64 32>
  %509 = trunc <4 x i64> %508 to <4 x i32>
  %510 = mul <4 x i32> %broadcast.splat1052, %509
  %511 = add <4 x i32> %510, <i32 3, i32 3, i32 3, i32 3>
  %512 = urem <4 x i32> %511, <i32 80, i32 80, i32 80, i32 80>
  %513 = sitofp <4 x i32> %512 to <4 x double>
  %514 = fmul fast <4 x double> %513, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %515 = extractelement <4 x i64> %508, i32 0
  %516 = shl i64 %515, 3
  %517 = add nuw nsw i64 %516, %506
  %518 = getelementptr i8, i8* %call, i64 %517
  %519 = bitcast i8* %518 to <4 x double>*
  store <4 x double> %514, <4 x double>* %519, align 8, !alias.scope !90, !noalias !92
  %index.next1046 = add i64 %index1045, 4
  %vec.ind.next1050 = add <4 x i64> %vec.ind1049, <i64 4, i64 4, i64 4, i64 4>
  %520 = icmp eq i64 %index.next1046, 32
  br i1 %520, label %polly.loop_exit742.1.2, label %vector.body1043, !llvm.loop !116

polly.loop_exit742.1.2:                           ; preds = %vector.body1043
  %polly.indvar_next738.1.2 = add nuw nsw i64 %polly.indvar737.1.2, 1
  %exitcond873.1.2.not = icmp eq i64 %polly.indvar_next738.1.2, 16
  br i1 %exitcond873.1.2.not, label %polly.loop_header734.2.2, label %polly.loop_header734.1.2

polly.loop_header734.2.2:                         ; preds = %polly.loop_exit742.1.2, %polly.loop_exit742.2.2
  %polly.indvar737.2.2 = phi i64 [ %polly.indvar_next738.2.2, %polly.loop_exit742.2.2 ], [ 0, %polly.loop_exit742.1.2 ]
  %521 = add nuw nsw i64 %polly.indvar737.2.2, 64
  %522 = mul nuw nsw i64 %521, 640
  %523 = trunc i64 %521 to i32
  %broadcast.splatinsert1063 = insertelement <4 x i32> poison, i32 %523, i32 0
  %broadcast.splat1064 = shufflevector <4 x i32> %broadcast.splatinsert1063, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %polly.loop_header734.2.2
  %index1057 = phi i64 [ 0, %polly.loop_header734.2.2 ], [ %index.next1058, %vector.body1055 ]
  %vec.ind1061 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.2 ], [ %vec.ind.next1062, %vector.body1055 ]
  %524 = add nuw nsw <4 x i64> %vec.ind1061, <i64 64, i64 64, i64 64, i64 64>
  %525 = trunc <4 x i64> %524 to <4 x i32>
  %526 = mul <4 x i32> %broadcast.splat1064, %525
  %527 = add <4 x i32> %526, <i32 3, i32 3, i32 3, i32 3>
  %528 = urem <4 x i32> %527, <i32 80, i32 80, i32 80, i32 80>
  %529 = sitofp <4 x i32> %528 to <4 x double>
  %530 = fmul fast <4 x double> %529, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %531 = extractelement <4 x i64> %524, i32 0
  %532 = shl i64 %531, 3
  %533 = add nuw nsw i64 %532, %522
  %534 = getelementptr i8, i8* %call, i64 %533
  %535 = bitcast i8* %534 to <4 x double>*
  store <4 x double> %530, <4 x double>* %535, align 8, !alias.scope !90, !noalias !92
  %index.next1058 = add i64 %index1057, 4
  %vec.ind.next1062 = add <4 x i64> %vec.ind1061, <i64 4, i64 4, i64 4, i64 4>
  %536 = icmp eq i64 %index.next1058, 16
  br i1 %536, label %polly.loop_exit742.2.2, label %vector.body1055, !llvm.loop !117

polly.loop_exit742.2.2:                           ; preds = %vector.body1055
  %polly.indvar_next738.2.2 = add nuw nsw i64 %polly.indvar737.2.2, 1
  %exitcond873.2.2.not = icmp eq i64 %polly.indvar_next738.2.2, 16
  br i1 %exitcond873.2.2.not, label %polly.loop_header761, label %polly.loop_header734.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 100}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 16}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !34, !45, !51}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.data.pack.enable", i1 true}
!49 = !{!"llvm.data.pack.array", !21}
!50 = !{!"llvm.data.pack.allocate", !"malloc"}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !53}
!53 = !{!"llvm.loop.id", !"i2"}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !4, i64 0}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !63, !"polly.alias.scope.MemRef_call"}
!63 = distinct !{!63, !"polly.alias.scope.domain"}
!64 = !{!65, !66, !67}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !63, !"polly.alias.scope.Packed_MemRef_call2"}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !70, !13}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!62, !66, !67}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76, !77}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !73, !"polly.alias.scope.Packed_MemRef_call2"}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !70, !13}
!80 = !{!72, !76, !77}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85, !86}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !82, !"polly.alias.scope.Packed_MemRef_call2"}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !70, !13}
!89 = !{!81, !85, !86}
!90 = distinct !{!90, !91, !"polly.alias.scope.MemRef_call"}
!91 = distinct !{!91, !"polly.alias.scope.domain"}
!92 = !{!93, !94}
!93 = distinct !{!93, !91, !"polly.alias.scope.MemRef_call1"}
!94 = distinct !{!94, !91, !"polly.alias.scope.MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = !{!93, !90}
!97 = distinct !{!97, !13}
!98 = !{!94, !90}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !13}
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
