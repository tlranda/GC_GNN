; ModuleID = 'syr2k_recreations//mmp_syr2k_S_70.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_70.c"
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
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

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
  br i1 %57, label %middle.block1241, label %vector.body1243, !llvm.loop !60

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

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
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

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
  br i1 %68, label %middle.block1267, label %vector.body1269, !llvm.loop !62

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

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
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !46

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
  %malloccall = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
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
  %wide.load1292 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1292, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1289 = add i64 %index1288, 4
  %95 = icmp eq i64 %index.next1289, %n.vec1287
  br i1 %95, label %middle.block1279, label %vector.body1281, !llvm.loop !74

middle.block1279:                                 ; preds = %vector.body1281
  %cmp.n1291 = icmp eq i64 %88, %n.vec1287
  br i1 %cmp.n1291, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1279
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1287, %middle.block1279 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1279
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond820.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1283 = add i64 %indvar1282, 1
  br i1 %exitcond820.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
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
  %exitcond819.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond819.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, 160
  %98 = mul nuw nsw i64 %polly.indvar202, 20
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next203, 3
  br i1 %exitcond818.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199
  %indvars.iv810 = phi i64 [ %indvars.iv.next811, %polly.loop_exit229 ], [ 1, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 4, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  br label %polly.loop_header211

polly.loop_exit229:                               ; preds = %polly.loop_exit241.3
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %indvars.iv.next811 = add nuw nsw i64 %indvars.iv810, 4
  %exitcond817.not = icmp eq i64 %polly.indvar_next209, 20
  br i1 %exitcond817.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_header211 ]
  %99 = mul nuw nsw i64 %polly.indvar214, 160
  %scevgep808 = getelementptr i8, i8* %malloccall, i64 %99
  %100 = mul nuw nsw i64 %polly.indvar214, 480
  %101 = add nuw nsw i64 %97, %100
  %scevgep809 = getelementptr i8, i8* %call1, i64 %101
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep808, i8* noundef nonnull align 8 dereferenceable(160) %scevgep809, i64 160, i1 false)
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header227.preheader, label %polly.loop_header211

polly.loop_header227.preheader:                   ; preds = %polly.loop_header211
  %102 = shl nuw nsw i64 %polly.indvar208, 2
  %103 = mul nuw nsw i64 %polly.indvar208, 1920
  %polly.access.mul.Packed_MemRef_call1255 = mul nuw nsw i64 %polly.indvar208, 80
  %104 = mul nuw nsw i64 %polly.indvar208, 2560
  %105 = or i64 %102, 1
  %106 = mul nuw nsw i64 %105, 480
  %polly.access.mul.Packed_MemRef_call1255.1 = mul nuw nsw i64 %105, 20
  %107 = mul nuw nsw i64 %105, 640
  %108 = or i64 %102, 2
  %109 = mul nuw nsw i64 %108, 480
  %polly.access.mul.Packed_MemRef_call1255.2 = mul nuw nsw i64 %108, 20
  %110 = mul nuw nsw i64 %108, 640
  %111 = or i64 %102, 3
  %112 = mul nuw nsw i64 %111, 480
  %polly.access.mul.Packed_MemRef_call1255.3 = mul nuw nsw i64 %111, 20
  %113 = mul nuw nsw i64 %111, 640
  %114 = add nuw nsw i64 %indvars.iv810, 2
  br label %polly.loop_header227

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit241.3
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit241.3 ], [ 0, %polly.loop_header227.preheader ]
  %115 = add nuw nsw i64 %polly.indvar230, %98
  %116 = shl i64 %115, 3
  %117 = add nuw nsw i64 %103, %116
  %scevgep249 = getelementptr i8, i8* %call2, i64 %117
  %scevgep249250 = bitcast i8* %scevgep249 to double*
  %_p_scalar_251 = load double, double* %scevgep249250, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call1256 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1255, %polly.indvar230
  %polly.access.Packed_MemRef_call1257 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1256
  %_p_scalar_258 = load double, double* %polly.access.Packed_MemRef_call1257, align 8
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_header239
  %118 = add nuw nsw i64 %106, %116
  %scevgep249.1 = getelementptr i8, i8* %call2, i64 %118
  %scevgep249250.1 = bitcast i8* %scevgep249.1 to double*
  %_p_scalar_251.1 = load double, double* %scevgep249250.1, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call1256.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1255.1, %polly.indvar230
  %polly.access.Packed_MemRef_call1257.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1256.1
  %_p_scalar_258.1 = load double, double* %polly.access.Packed_MemRef_call1257.1, align 8
  br label %polly.loop_header239.1

polly.loop_header239:                             ; preds = %polly.loop_header239, %polly.loop_header227
  %polly.indvar242 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next243, %polly.loop_header239 ]
  %polly.access.mul.Packed_MemRef_call1245 = mul nuw nsw i64 %polly.indvar242, 20
  %polly.access.add.Packed_MemRef_call1246 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1245, %polly.indvar230
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  %_p_scalar_248 = load double, double* %polly.access.Packed_MemRef_call1247, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_251, %_p_scalar_248
  %119 = mul nuw nsw i64 %polly.indvar242, 480
  %120 = add nuw nsw i64 %119, %116
  %scevgep252 = getelementptr i8, i8* %call2, i64 %120
  %scevgep252253 = bitcast i8* %scevgep252 to double*
  %_p_scalar_254 = load double, double* %scevgep252253, align 8, !alias.scope !72, !noalias !77
  %p_mul37.i114 = fmul fast double %_p_scalar_258, %_p_scalar_254
  %121 = shl nuw nsw i64 %polly.indvar242, 3
  %122 = add nuw nsw i64 %121, %104
  %scevgep259 = getelementptr i8, i8* %call, i64 %122
  %scevgep259260 = bitcast i8* %scevgep259 to double*
  %_p_scalar_261 = load double, double* %scevgep259260, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_261
  store double %p_add42.i118, double* %scevgep259260, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next243, %indvars.iv810
  br i1 %exitcond814.not, label %polly.loop_exit241, label %polly.loop_header239

polly.start264:                                   ; preds = %kernel_syr2k.exit
  %malloccall266 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  br label %polly.loop_header350

polly.exiting265:                                 ; preds = %polly.loop_exit374
  tail call void @free(i8* nonnull %malloccall266)
  br label %kernel_syr2k.exit90

polly.loop_header350:                             ; preds = %polly.loop_exit358, %polly.start264
  %indvar1256 = phi i64 [ %indvar.next1257, %polly.loop_exit358 ], [ 0, %polly.start264 ]
  %polly.indvar353 = phi i64 [ %polly.indvar_next354, %polly.loop_exit358 ], [ 1, %polly.start264 ]
  %123 = add i64 %indvar1256, 1
  %124 = mul nuw nsw i64 %polly.indvar353, 640
  %scevgep362 = getelementptr i8, i8* %call, i64 %124
  %min.iters.check1258 = icmp ult i64 %123, 4
  br i1 %min.iters.check1258, label %polly.loop_header356.preheader, label %vector.ph1259

vector.ph1259:                                    ; preds = %polly.loop_header350
  %n.vec1261 = and i64 %123, -4
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %vector.ph1259
  %index1262 = phi i64 [ 0, %vector.ph1259 ], [ %index.next1263, %vector.body1255 ]
  %125 = shl nuw nsw i64 %index1262, 3
  %126 = getelementptr i8, i8* %scevgep362, i64 %125
  %127 = bitcast i8* %126 to <4 x double>*
  %wide.load1266 = load <4 x double>, <4 x double>* %127, align 8, !alias.scope !78, !noalias !80
  %128 = fmul fast <4 x double> %wide.load1266, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %129 = bitcast i8* %126 to <4 x double>*
  store <4 x double> %128, <4 x double>* %129, align 8, !alias.scope !78, !noalias !80
  %index.next1263 = add i64 %index1262, 4
  %130 = icmp eq i64 %index.next1263, %n.vec1261
  br i1 %130, label %middle.block1253, label %vector.body1255, !llvm.loop !84

middle.block1253:                                 ; preds = %vector.body1255
  %cmp.n1265 = icmp eq i64 %123, %n.vec1261
  br i1 %cmp.n1265, label %polly.loop_exit358, label %polly.loop_header356.preheader

polly.loop_header356.preheader:                   ; preds = %polly.loop_header350, %middle.block1253
  %polly.indvar359.ph = phi i64 [ 0, %polly.loop_header350 ], [ %n.vec1261, %middle.block1253 ]
  br label %polly.loop_header356

polly.loop_exit358:                               ; preds = %polly.loop_header356, %middle.block1253
  %polly.indvar_next354 = add nuw nsw i64 %polly.indvar353, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next354, 80
  %indvar.next1257 = add i64 %indvar1256, 1
  br i1 %exitcond837.not, label %polly.loop_header366.preheader, label %polly.loop_header350

polly.loop_header366.preheader:                   ; preds = %polly.loop_exit358
  %Packed_MemRef_call1267 = bitcast i8* %malloccall266 to double*
  br label %polly.loop_header366

polly.loop_header356:                             ; preds = %polly.loop_header356.preheader, %polly.loop_header356
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_header356 ], [ %polly.indvar359.ph, %polly.loop_header356.preheader ]
  %131 = shl nuw nsw i64 %polly.indvar359, 3
  %scevgep363 = getelementptr i8, i8* %scevgep362, i64 %131
  %scevgep363364 = bitcast i8* %scevgep363 to double*
  %_p_scalar_365 = load double, double* %scevgep363364, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_365, 1.200000e+00
  store double %p_mul.i57, double* %scevgep363364, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next360, %polly.indvar353
  br i1 %exitcond836.not, label %polly.loop_exit358, label %polly.loop_header356, !llvm.loop !85

polly.loop_header366:                             ; preds = %polly.loop_header366.preheader, %polly.loop_exit374
  %polly.indvar369 = phi i64 [ %polly.indvar_next370, %polly.loop_exit374 ], [ 0, %polly.loop_header366.preheader ]
  %132 = mul nuw nsw i64 %polly.indvar369, 160
  %133 = mul nuw nsw i64 %polly.indvar369, 20
  br label %polly.loop_header372

polly.loop_exit374:                               ; preds = %polly.loop_exit396
  %polly.indvar_next370 = add nuw nsw i64 %polly.indvar369, 1
  %exitcond835.not = icmp eq i64 %polly.indvar_next370, 3
  br i1 %exitcond835.not, label %polly.exiting265, label %polly.loop_header366

polly.loop_header372:                             ; preds = %polly.loop_exit396, %polly.loop_header366
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit396 ], [ 1, %polly.loop_header366 ]
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %polly.loop_exit396 ], [ 4, %polly.loop_header366 ]
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_exit396 ], [ 0, %polly.loop_header366 ]
  br label %polly.loop_header378

polly.loop_exit396:                               ; preds = %polly.loop_exit408.3
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %indvars.iv.next825 = add nuw nsw i64 %indvars.iv824, 4
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 4
  %exitcond834.not = icmp eq i64 %polly.indvar_next376, 20
  br i1 %exitcond834.not, label %polly.loop_exit374, label %polly.loop_header372

polly.loop_header378:                             ; preds = %polly.loop_header378, %polly.loop_header372
  %polly.indvar381 = phi i64 [ 0, %polly.loop_header372 ], [ %polly.indvar_next382, %polly.loop_header378 ]
  %134 = mul nuw nsw i64 %polly.indvar381, 160
  %scevgep822 = getelementptr i8, i8* %malloccall266, i64 %134
  %135 = mul nuw nsw i64 %polly.indvar381, 480
  %136 = add nuw nsw i64 %132, %135
  %scevgep823 = getelementptr i8, i8* %call1, i64 %136
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep822, i8* noundef nonnull align 8 dereferenceable(160) %scevgep823, i64 160, i1 false)
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next382, %indvars.iv824
  br i1 %exitcond826.not, label %polly.loop_header394.preheader, label %polly.loop_header378

polly.loop_header394.preheader:                   ; preds = %polly.loop_header378
  %137 = shl nuw nsw i64 %polly.indvar375, 2
  %138 = mul nuw nsw i64 %polly.indvar375, 1920
  %polly.access.mul.Packed_MemRef_call1267422 = mul nuw nsw i64 %polly.indvar375, 80
  %139 = mul nuw nsw i64 %polly.indvar375, 2560
  %140 = or i64 %137, 1
  %141 = mul nuw nsw i64 %140, 480
  %polly.access.mul.Packed_MemRef_call1267422.1 = mul nuw nsw i64 %140, 20
  %142 = mul nuw nsw i64 %140, 640
  %143 = or i64 %137, 2
  %144 = mul nuw nsw i64 %143, 480
  %polly.access.mul.Packed_MemRef_call1267422.2 = mul nuw nsw i64 %143, 20
  %145 = mul nuw nsw i64 %143, 640
  %146 = or i64 %137, 3
  %147 = mul nuw nsw i64 %146, 480
  %polly.access.mul.Packed_MemRef_call1267422.3 = mul nuw nsw i64 %146, 20
  %148 = mul nuw nsw i64 %146, 640
  %149 = add nuw nsw i64 %indvars.iv827, 2
  br label %polly.loop_header394

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_exit408.3
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit408.3 ], [ 0, %polly.loop_header394.preheader ]
  %150 = add nuw nsw i64 %polly.indvar397, %133
  %151 = shl i64 %150, 3
  %152 = add nuw nsw i64 %138, %151
  %scevgep416 = getelementptr i8, i8* %call2, i64 %152
  %scevgep416417 = bitcast i8* %scevgep416 to double*
  %_p_scalar_418 = load double, double* %scevgep416417, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call1267423 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1267422, %polly.indvar397
  %polly.access.Packed_MemRef_call1267424 = getelementptr double, double* %Packed_MemRef_call1267, i64 %polly.access.add.Packed_MemRef_call1267423
  %_p_scalar_425 = load double, double* %polly.access.Packed_MemRef_call1267424, align 8
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_header406
  %153 = add nuw nsw i64 %141, %151
  %scevgep416.1 = getelementptr i8, i8* %call2, i64 %153
  %scevgep416417.1 = bitcast i8* %scevgep416.1 to double*
  %_p_scalar_418.1 = load double, double* %scevgep416417.1, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call1267423.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1267422.1, %polly.indvar397
  %polly.access.Packed_MemRef_call1267424.1 = getelementptr double, double* %Packed_MemRef_call1267, i64 %polly.access.add.Packed_MemRef_call1267423.1
  %_p_scalar_425.1 = load double, double* %polly.access.Packed_MemRef_call1267424.1, align 8
  br label %polly.loop_header406.1

polly.loop_header406:                             ; preds = %polly.loop_header406, %polly.loop_header394
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header394 ], [ %polly.indvar_next410, %polly.loop_header406 ]
  %polly.access.mul.Packed_MemRef_call1267412 = mul nuw nsw i64 %polly.indvar409, 20
  %polly.access.add.Packed_MemRef_call1267413 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1267412, %polly.indvar397
  %polly.access.Packed_MemRef_call1267414 = getelementptr double, double* %Packed_MemRef_call1267, i64 %polly.access.add.Packed_MemRef_call1267413
  %_p_scalar_415 = load double, double* %polly.access.Packed_MemRef_call1267414, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_418, %_p_scalar_415
  %154 = mul nuw nsw i64 %polly.indvar409, 480
  %155 = add nuw nsw i64 %154, %151
  %scevgep419 = getelementptr i8, i8* %call2, i64 %155
  %scevgep419420 = bitcast i8* %scevgep419 to double*
  %_p_scalar_421 = load double, double* %scevgep419420, align 8, !alias.scope !82, !noalias !86
  %p_mul37.i75 = fmul fast double %_p_scalar_425, %_p_scalar_421
  %156 = shl nuw nsw i64 %polly.indvar409, 3
  %157 = add nuw nsw i64 %156, %139
  %scevgep426 = getelementptr i8, i8* %call, i64 %157
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_428
  store double %p_add42.i79, double* %scevgep426427, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next410, %indvars.iv827
  br i1 %exitcond831.not, label %polly.loop_exit408, label %polly.loop_header406

polly.start431:                                   ; preds = %init_array.exit
  %malloccall433 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  br label %polly.loop_header517

polly.exiting432:                                 ; preds = %polly.loop_exit541
  tail call void @free(i8* nonnull %malloccall433)
  br label %kernel_syr2k.exit

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.start431
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit525 ], [ 0, %polly.start431 ]
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_exit525 ], [ 1, %polly.start431 ]
  %158 = add i64 %indvar, 1
  %159 = mul nuw nsw i64 %polly.indvar520, 640
  %scevgep529 = getelementptr i8, i8* %call, i64 %159
  %min.iters.check1232 = icmp ult i64 %158, 4
  br i1 %min.iters.check1232, label %polly.loop_header523.preheader, label %vector.ph1233

vector.ph1233:                                    ; preds = %polly.loop_header517
  %n.vec1235 = and i64 %158, -4
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1233
  %index1236 = phi i64 [ 0, %vector.ph1233 ], [ %index.next1237, %vector.body1231 ]
  %160 = shl nuw nsw i64 %index1236, 3
  %161 = getelementptr i8, i8* %scevgep529, i64 %160
  %162 = bitcast i8* %161 to <4 x double>*
  %wide.load1240 = load <4 x double>, <4 x double>* %162, align 8, !alias.scope !87, !noalias !89
  %163 = fmul fast <4 x double> %wide.load1240, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %164 = bitcast i8* %161 to <4 x double>*
  store <4 x double> %163, <4 x double>* %164, align 8, !alias.scope !87, !noalias !89
  %index.next1237 = add i64 %index1236, 4
  %165 = icmp eq i64 %index.next1237, %n.vec1235
  br i1 %165, label %middle.block1229, label %vector.body1231, !llvm.loop !93

middle.block1229:                                 ; preds = %vector.body1231
  %cmp.n1239 = icmp eq i64 %158, %n.vec1235
  br i1 %cmp.n1239, label %polly.loop_exit525, label %polly.loop_header523.preheader

polly.loop_header523.preheader:                   ; preds = %polly.loop_header517, %middle.block1229
  %polly.indvar526.ph = phi i64 [ 0, %polly.loop_header517 ], [ %n.vec1235, %middle.block1229 ]
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_header523, %middle.block1229
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond854.not = icmp eq i64 %polly.indvar_next521, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond854.not, label %polly.loop_header533.preheader, label %polly.loop_header517

polly.loop_header533.preheader:                   ; preds = %polly.loop_exit525
  %Packed_MemRef_call1434 = bitcast i8* %malloccall433 to double*
  br label %polly.loop_header533

polly.loop_header523:                             ; preds = %polly.loop_header523.preheader, %polly.loop_header523
  %polly.indvar526 = phi i64 [ %polly.indvar_next527, %polly.loop_header523 ], [ %polly.indvar526.ph, %polly.loop_header523.preheader ]
  %166 = shl nuw nsw i64 %polly.indvar526, 3
  %scevgep530 = getelementptr i8, i8* %scevgep529, i64 %166
  %scevgep530531 = bitcast i8* %scevgep530 to double*
  %_p_scalar_532 = load double, double* %scevgep530531, align 8, !alias.scope !87, !noalias !89
  %p_mul.i = fmul fast double %_p_scalar_532, 1.200000e+00
  store double %p_mul.i, double* %scevgep530531, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next527, %polly.indvar520
  br i1 %exitcond853.not, label %polly.loop_exit525, label %polly.loop_header523, !llvm.loop !94

polly.loop_header533:                             ; preds = %polly.loop_header533.preheader, %polly.loop_exit541
  %polly.indvar536 = phi i64 [ %polly.indvar_next537, %polly.loop_exit541 ], [ 0, %polly.loop_header533.preheader ]
  %167 = mul nuw nsw i64 %polly.indvar536, 160
  %168 = mul nuw nsw i64 %polly.indvar536, 20
  br label %polly.loop_header539

polly.loop_exit541:                               ; preds = %polly.loop_exit563
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next537, 3
  br i1 %exitcond852.not, label %polly.exiting432, label %polly.loop_header533

polly.loop_header539:                             ; preds = %polly.loop_exit563, %polly.loop_header533
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit563 ], [ 1, %polly.loop_header533 ]
  %indvars.iv841 = phi i64 [ %indvars.iv.next842, %polly.loop_exit563 ], [ 4, %polly.loop_header533 ]
  %polly.indvar542 = phi i64 [ %polly.indvar_next543, %polly.loop_exit563 ], [ 0, %polly.loop_header533 ]
  br label %polly.loop_header545

polly.loop_exit563:                               ; preds = %polly.loop_exit575.3
  %polly.indvar_next543 = add nuw nsw i64 %polly.indvar542, 1
  %indvars.iv.next842 = add nuw nsw i64 %indvars.iv841, 4
  %indvars.iv.next845 = add nuw nsw i64 %indvars.iv844, 4
  %exitcond851.not = icmp eq i64 %polly.indvar_next543, 20
  br i1 %exitcond851.not, label %polly.loop_exit541, label %polly.loop_header539

polly.loop_header545:                             ; preds = %polly.loop_header545, %polly.loop_header539
  %polly.indvar548 = phi i64 [ 0, %polly.loop_header539 ], [ %polly.indvar_next549, %polly.loop_header545 ]
  %169 = mul nuw nsw i64 %polly.indvar548, 160
  %scevgep839 = getelementptr i8, i8* %malloccall433, i64 %169
  %170 = mul nuw nsw i64 %polly.indvar548, 480
  %171 = add nuw nsw i64 %167, %170
  %scevgep840 = getelementptr i8, i8* %call1, i64 %171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep839, i8* noundef nonnull align 8 dereferenceable(160) %scevgep840, i64 160, i1 false)
  %polly.indvar_next549 = add nuw nsw i64 %polly.indvar548, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next549, %indvars.iv841
  br i1 %exitcond843.not, label %polly.loop_header561.preheader, label %polly.loop_header545

polly.loop_header561.preheader:                   ; preds = %polly.loop_header545
  %172 = shl nuw nsw i64 %polly.indvar542, 2
  %173 = mul nuw nsw i64 %polly.indvar542, 1920
  %polly.access.mul.Packed_MemRef_call1434589 = mul nuw nsw i64 %polly.indvar542, 80
  %174 = mul nuw nsw i64 %polly.indvar542, 2560
  %175 = or i64 %172, 1
  %176 = mul nuw nsw i64 %175, 480
  %polly.access.mul.Packed_MemRef_call1434589.1 = mul nuw nsw i64 %175, 20
  %177 = mul nuw nsw i64 %175, 640
  %178 = or i64 %172, 2
  %179 = mul nuw nsw i64 %178, 480
  %polly.access.mul.Packed_MemRef_call1434589.2 = mul nuw nsw i64 %178, 20
  %180 = mul nuw nsw i64 %178, 640
  %181 = or i64 %172, 3
  %182 = mul nuw nsw i64 %181, 480
  %polly.access.mul.Packed_MemRef_call1434589.3 = mul nuw nsw i64 %181, 20
  %183 = mul nuw nsw i64 %181, 640
  %184 = add nuw nsw i64 %indvars.iv844, 2
  br label %polly.loop_header561

polly.loop_header561:                             ; preds = %polly.loop_header561.preheader, %polly.loop_exit575.3
  %polly.indvar564 = phi i64 [ %polly.indvar_next565, %polly.loop_exit575.3 ], [ 0, %polly.loop_header561.preheader ]
  %185 = add nuw nsw i64 %polly.indvar564, %168
  %186 = shl i64 %185, 3
  %187 = add nuw nsw i64 %173, %186
  %scevgep583 = getelementptr i8, i8* %call2, i64 %187
  %scevgep583584 = bitcast i8* %scevgep583 to double*
  %_p_scalar_585 = load double, double* %scevgep583584, align 8, !alias.scope !91, !noalias !95
  %polly.access.add.Packed_MemRef_call1434590 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1434589, %polly.indvar564
  %polly.access.Packed_MemRef_call1434591 = getelementptr double, double* %Packed_MemRef_call1434, i64 %polly.access.add.Packed_MemRef_call1434590
  %_p_scalar_592 = load double, double* %polly.access.Packed_MemRef_call1434591, align 8
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_header573
  %188 = add nuw nsw i64 %176, %186
  %scevgep583.1 = getelementptr i8, i8* %call2, i64 %188
  %scevgep583584.1 = bitcast i8* %scevgep583.1 to double*
  %_p_scalar_585.1 = load double, double* %scevgep583584.1, align 8, !alias.scope !91, !noalias !95
  %polly.access.add.Packed_MemRef_call1434590.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1434589.1, %polly.indvar564
  %polly.access.Packed_MemRef_call1434591.1 = getelementptr double, double* %Packed_MemRef_call1434, i64 %polly.access.add.Packed_MemRef_call1434590.1
  %_p_scalar_592.1 = load double, double* %polly.access.Packed_MemRef_call1434591.1, align 8
  br label %polly.loop_header573.1

polly.loop_header573:                             ; preds = %polly.loop_header573, %polly.loop_header561
  %polly.indvar576 = phi i64 [ 0, %polly.loop_header561 ], [ %polly.indvar_next577, %polly.loop_header573 ]
  %polly.access.mul.Packed_MemRef_call1434579 = mul nuw nsw i64 %polly.indvar576, 20
  %polly.access.add.Packed_MemRef_call1434580 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1434579, %polly.indvar564
  %polly.access.Packed_MemRef_call1434581 = getelementptr double, double* %Packed_MemRef_call1434, i64 %polly.access.add.Packed_MemRef_call1434580
  %_p_scalar_582 = load double, double* %polly.access.Packed_MemRef_call1434581, align 8
  %p_mul27.i = fmul fast double %_p_scalar_585, %_p_scalar_582
  %189 = mul nuw nsw i64 %polly.indvar576, 480
  %190 = add nuw nsw i64 %189, %186
  %scevgep586 = getelementptr i8, i8* %call2, i64 %190
  %scevgep586587 = bitcast i8* %scevgep586 to double*
  %_p_scalar_588 = load double, double* %scevgep586587, align 8, !alias.scope !91, !noalias !95
  %p_mul37.i = fmul fast double %_p_scalar_592, %_p_scalar_588
  %191 = shl nuw nsw i64 %polly.indvar576, 3
  %192 = add nuw nsw i64 %191, %174
  %scevgep593 = getelementptr i8, i8* %call, i64 %192
  %scevgep593594 = bitcast i8* %scevgep593 to double*
  %_p_scalar_595 = load double, double* %scevgep593594, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_595
  store double %p_add42.i, double* %scevgep593594, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %exitcond848.not = icmp eq i64 %polly.indvar_next577, %indvars.iv844
  br i1 %exitcond848.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header734:                             ; preds = %entry, %polly.loop_exit742
  %polly.indvar737 = phi i64 [ %polly.indvar_next738, %polly.loop_exit742 ], [ 0, %entry ]
  %193 = mul nuw nsw i64 %polly.indvar737, 640
  %194 = trunc i64 %polly.indvar737 to i32
  %broadcast.splatinsert963 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat964 = shufflevector <4 x i32> %broadcast.splatinsert963, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body953

vector.body953:                                   ; preds = %vector.body953, %polly.loop_header734
  %index955 = phi i64 [ 0, %polly.loop_header734 ], [ %index.next956, %vector.body953 ]
  %vec.ind961 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734 ], [ %vec.ind.next962, %vector.body953 ]
  %195 = mul <4 x i32> %vec.ind961, %broadcast.splat964
  %196 = add <4 x i32> %195, <i32 3, i32 3, i32 3, i32 3>
  %197 = urem <4 x i32> %196, <i32 80, i32 80, i32 80, i32 80>
  %198 = sitofp <4 x i32> %197 to <4 x double>
  %199 = fmul fast <4 x double> %198, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %200 = shl i64 %index955, 3
  %201 = add nuw nsw i64 %200, %193
  %202 = getelementptr i8, i8* %call, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %199, <4 x double>* %203, align 8, !alias.scope !96, !noalias !98
  %index.next956 = add i64 %index955, 4
  %vec.ind.next962 = add <4 x i32> %vec.ind961, <i32 4, i32 4, i32 4, i32 4>
  %204 = icmp eq i64 %index.next956, 32
  br i1 %204, label %polly.loop_exit742, label %vector.body953, !llvm.loop !101

polly.loop_exit742:                               ; preds = %vector.body953
  %polly.indvar_next738 = add nuw nsw i64 %polly.indvar737, 1
  %exitcond873.not = icmp eq i64 %polly.indvar_next738, 32
  br i1 %exitcond873.not, label %polly.loop_header734.1, label %polly.loop_header734

polly.loop_header761:                             ; preds = %polly.loop_exit742.2.2, %polly.loop_exit769
  %polly.indvar764 = phi i64 [ %polly.indvar_next765, %polly.loop_exit769 ], [ 0, %polly.loop_exit742.2.2 ]
  %205 = mul nuw nsw i64 %polly.indvar764, 480
  %206 = trunc i64 %polly.indvar764 to i32
  %broadcast.splatinsert1077 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat1078 = shufflevector <4 x i32> %broadcast.splatinsert1077, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %polly.loop_header761
  %index1069 = phi i64 [ 0, %polly.loop_header761 ], [ %index.next1070, %vector.body1067 ]
  %vec.ind1075 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761 ], [ %vec.ind.next1076, %vector.body1067 ]
  %207 = mul <4 x i32> %vec.ind1075, %broadcast.splat1078
  %208 = add <4 x i32> %207, <i32 2, i32 2, i32 2, i32 2>
  %209 = urem <4 x i32> %208, <i32 60, i32 60, i32 60, i32 60>
  %210 = sitofp <4 x i32> %209 to <4 x double>
  %211 = fmul fast <4 x double> %210, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %212 = shl i64 %index1069, 3
  %213 = add i64 %212, %205
  %214 = getelementptr i8, i8* %call2, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %211, <4 x double>* %215, align 8, !alias.scope !100, !noalias !102
  %index.next1070 = add i64 %index1069, 4
  %vec.ind.next1076 = add <4 x i32> %vec.ind1075, <i32 4, i32 4, i32 4, i32 4>
  %216 = icmp eq i64 %index.next1070, 32
  br i1 %216, label %polly.loop_exit769, label %vector.body1067, !llvm.loop !103

polly.loop_exit769:                               ; preds = %vector.body1067
  %polly.indvar_next765 = add nuw nsw i64 %polly.indvar764, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next765, 32
  br i1 %exitcond864.not, label %polly.loop_header761.1, label %polly.loop_header761

polly.loop_header787:                             ; preds = %polly.loop_exit769.1.2, %polly.loop_exit795
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %polly.loop_exit769.1.2 ]
  %217 = mul nuw nsw i64 %polly.indvar790, 480
  %218 = trunc i64 %polly.indvar790 to i32
  %broadcast.splatinsert1155 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat1156 = shufflevector <4 x i32> %broadcast.splatinsert1155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %polly.loop_header787
  %index1147 = phi i64 [ 0, %polly.loop_header787 ], [ %index.next1148, %vector.body1145 ]
  %vec.ind1153 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787 ], [ %vec.ind.next1154, %vector.body1145 ]
  %219 = mul <4 x i32> %vec.ind1153, %broadcast.splat1156
  %220 = add <4 x i32> %219, <i32 1, i32 1, i32 1, i32 1>
  %221 = urem <4 x i32> %220, <i32 80, i32 80, i32 80, i32 80>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %224 = shl i64 %index1147, 3
  %225 = add i64 %224, %217
  %226 = getelementptr i8, i8* %call1, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %223, <4 x double>* %227, align 8, !alias.scope !99, !noalias !104
  %index.next1148 = add i64 %index1147, 4
  %vec.ind.next1154 = add <4 x i32> %vec.ind1153, <i32 4, i32 4, i32 4, i32 4>
  %228 = icmp eq i64 %index.next1148, 32
  br i1 %228, label %polly.loop_exit795, label %vector.body1145, !llvm.loop !105

polly.loop_exit795:                               ; preds = %vector.body1145
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next791, 32
  br i1 %exitcond858.not, label %polly.loop_header787.1, label %polly.loop_header787

polly.loop_header239.1:                           ; preds = %polly.loop_header239.1, %polly.loop_exit241
  %polly.indvar242.1 = phi i64 [ 0, %polly.loop_exit241 ], [ %polly.indvar_next243.1, %polly.loop_header239.1 ]
  %polly.access.mul.Packed_MemRef_call1245.1 = mul nuw nsw i64 %polly.indvar242.1, 20
  %polly.access.add.Packed_MemRef_call1246.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1245.1, %polly.indvar230
  %polly.access.Packed_MemRef_call1247.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.1
  %_p_scalar_248.1 = load double, double* %polly.access.Packed_MemRef_call1247.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_251.1, %_p_scalar_248.1
  %229 = mul nuw nsw i64 %polly.indvar242.1, 480
  %230 = add nuw nsw i64 %229, %116
  %scevgep252.1 = getelementptr i8, i8* %call2, i64 %230
  %scevgep252253.1 = bitcast i8* %scevgep252.1 to double*
  %_p_scalar_254.1 = load double, double* %scevgep252253.1, align 8, !alias.scope !72, !noalias !77
  %p_mul37.i114.1 = fmul fast double %_p_scalar_258.1, %_p_scalar_254.1
  %231 = shl nuw nsw i64 %polly.indvar242.1, 3
  %232 = add nuw nsw i64 %231, %107
  %scevgep259.1 = getelementptr i8, i8* %call, i64 %232
  %scevgep259260.1 = bitcast i8* %scevgep259.1 to double*
  %_p_scalar_261.1 = load double, double* %scevgep259260.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_261.1
  store double %p_add42.i118.1, double* %scevgep259260.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %exitcond814.1.not = icmp eq i64 %polly.indvar242.1, %indvars.iv810
  br i1 %exitcond814.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.1

polly.loop_exit241.1:                             ; preds = %polly.loop_header239.1
  %233 = add nuw nsw i64 %109, %116
  %scevgep249.2 = getelementptr i8, i8* %call2, i64 %233
  %scevgep249250.2 = bitcast i8* %scevgep249.2 to double*
  %_p_scalar_251.2 = load double, double* %scevgep249250.2, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call1256.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1255.2, %polly.indvar230
  %polly.access.Packed_MemRef_call1257.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1256.2
  %_p_scalar_258.2 = load double, double* %polly.access.Packed_MemRef_call1257.2, align 8
  br label %polly.loop_header239.2

polly.loop_header239.2:                           ; preds = %polly.loop_header239.2, %polly.loop_exit241.1
  %polly.indvar242.2 = phi i64 [ 0, %polly.loop_exit241.1 ], [ %polly.indvar_next243.2, %polly.loop_header239.2 ]
  %polly.access.mul.Packed_MemRef_call1245.2 = mul nuw nsw i64 %polly.indvar242.2, 20
  %polly.access.add.Packed_MemRef_call1246.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1245.2, %polly.indvar230
  %polly.access.Packed_MemRef_call1247.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.2
  %_p_scalar_248.2 = load double, double* %polly.access.Packed_MemRef_call1247.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_251.2, %_p_scalar_248.2
  %234 = mul nuw nsw i64 %polly.indvar242.2, 480
  %235 = add nuw nsw i64 %234, %116
  %scevgep252.2 = getelementptr i8, i8* %call2, i64 %235
  %scevgep252253.2 = bitcast i8* %scevgep252.2 to double*
  %_p_scalar_254.2 = load double, double* %scevgep252253.2, align 8, !alias.scope !72, !noalias !77
  %p_mul37.i114.2 = fmul fast double %_p_scalar_258.2, %_p_scalar_254.2
  %236 = shl nuw nsw i64 %polly.indvar242.2, 3
  %237 = add nuw nsw i64 %236, %110
  %scevgep259.2 = getelementptr i8, i8* %call, i64 %237
  %scevgep259260.2 = bitcast i8* %scevgep259.2 to double*
  %_p_scalar_261.2 = load double, double* %scevgep259260.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_261.2
  store double %p_add42.i118.2, double* %scevgep259260.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.2 = add nuw nsw i64 %polly.indvar242.2, 1
  %238 = add nuw nsw i64 %indvars.iv810, 1
  %exitcond814.2.not = icmp eq i64 %polly.indvar242.2, %238
  br i1 %exitcond814.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.2

polly.loop_exit241.2:                             ; preds = %polly.loop_header239.2
  %239 = add nuw nsw i64 %112, %116
  %scevgep249.3 = getelementptr i8, i8* %call2, i64 %239
  %scevgep249250.3 = bitcast i8* %scevgep249.3 to double*
  %_p_scalar_251.3 = load double, double* %scevgep249250.3, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call1256.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1255.3, %polly.indvar230
  %polly.access.Packed_MemRef_call1257.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1256.3
  %_p_scalar_258.3 = load double, double* %polly.access.Packed_MemRef_call1257.3, align 8
  br label %polly.loop_header239.3

polly.loop_header239.3:                           ; preds = %polly.loop_header239.3, %polly.loop_exit241.2
  %polly.indvar242.3 = phi i64 [ 0, %polly.loop_exit241.2 ], [ %polly.indvar_next243.3, %polly.loop_header239.3 ]
  %polly.access.mul.Packed_MemRef_call1245.3 = mul nuw nsw i64 %polly.indvar242.3, 20
  %polly.access.add.Packed_MemRef_call1246.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1245.3, %polly.indvar230
  %polly.access.Packed_MemRef_call1247.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.3
  %_p_scalar_248.3 = load double, double* %polly.access.Packed_MemRef_call1247.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_251.3, %_p_scalar_248.3
  %240 = mul nuw nsw i64 %polly.indvar242.3, 480
  %241 = add nuw nsw i64 %240, %116
  %scevgep252.3 = getelementptr i8, i8* %call2, i64 %241
  %scevgep252253.3 = bitcast i8* %scevgep252.3 to double*
  %_p_scalar_254.3 = load double, double* %scevgep252253.3, align 8, !alias.scope !72, !noalias !77
  %p_mul37.i114.3 = fmul fast double %_p_scalar_258.3, %_p_scalar_254.3
  %242 = shl nuw nsw i64 %polly.indvar242.3, 3
  %243 = add nuw nsw i64 %242, %113
  %scevgep259.3 = getelementptr i8, i8* %call, i64 %243
  %scevgep259260.3 = bitcast i8* %scevgep259.3 to double*
  %_p_scalar_261.3 = load double, double* %scevgep259260.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_261.3
  store double %p_add42.i118.3, double* %scevgep259260.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.3 = add nuw nsw i64 %polly.indvar242.3, 1
  %exitcond814.3.not = icmp eq i64 %polly.indvar242.3, %114
  br i1 %exitcond814.3.not, label %polly.loop_exit241.3, label %polly.loop_header239.3

polly.loop_exit241.3:                             ; preds = %polly.loop_header239.3
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next231, 20
  br i1 %exitcond816.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header406.1:                           ; preds = %polly.loop_header406.1, %polly.loop_exit408
  %polly.indvar409.1 = phi i64 [ 0, %polly.loop_exit408 ], [ %polly.indvar_next410.1, %polly.loop_header406.1 ]
  %polly.access.mul.Packed_MemRef_call1267412.1 = mul nuw nsw i64 %polly.indvar409.1, 20
  %polly.access.add.Packed_MemRef_call1267413.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1267412.1, %polly.indvar397
  %polly.access.Packed_MemRef_call1267414.1 = getelementptr double, double* %Packed_MemRef_call1267, i64 %polly.access.add.Packed_MemRef_call1267413.1
  %_p_scalar_415.1 = load double, double* %polly.access.Packed_MemRef_call1267414.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_418.1, %_p_scalar_415.1
  %244 = mul nuw nsw i64 %polly.indvar409.1, 480
  %245 = add nuw nsw i64 %244, %151
  %scevgep419.1 = getelementptr i8, i8* %call2, i64 %245
  %scevgep419420.1 = bitcast i8* %scevgep419.1 to double*
  %_p_scalar_421.1 = load double, double* %scevgep419420.1, align 8, !alias.scope !82, !noalias !86
  %p_mul37.i75.1 = fmul fast double %_p_scalar_425.1, %_p_scalar_421.1
  %246 = shl nuw nsw i64 %polly.indvar409.1, 3
  %247 = add nuw nsw i64 %246, %142
  %scevgep426.1 = getelementptr i8, i8* %call, i64 %247
  %scevgep426427.1 = bitcast i8* %scevgep426.1 to double*
  %_p_scalar_428.1 = load double, double* %scevgep426427.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_428.1
  store double %p_add42.i79.1, double* %scevgep426427.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410.1 = add nuw nsw i64 %polly.indvar409.1, 1
  %exitcond831.1.not = icmp eq i64 %polly.indvar409.1, %indvars.iv827
  br i1 %exitcond831.1.not, label %polly.loop_exit408.1, label %polly.loop_header406.1

polly.loop_exit408.1:                             ; preds = %polly.loop_header406.1
  %248 = add nuw nsw i64 %144, %151
  %scevgep416.2 = getelementptr i8, i8* %call2, i64 %248
  %scevgep416417.2 = bitcast i8* %scevgep416.2 to double*
  %_p_scalar_418.2 = load double, double* %scevgep416417.2, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call1267423.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1267422.2, %polly.indvar397
  %polly.access.Packed_MemRef_call1267424.2 = getelementptr double, double* %Packed_MemRef_call1267, i64 %polly.access.add.Packed_MemRef_call1267423.2
  %_p_scalar_425.2 = load double, double* %polly.access.Packed_MemRef_call1267424.2, align 8
  br label %polly.loop_header406.2

polly.loop_header406.2:                           ; preds = %polly.loop_header406.2, %polly.loop_exit408.1
  %polly.indvar409.2 = phi i64 [ 0, %polly.loop_exit408.1 ], [ %polly.indvar_next410.2, %polly.loop_header406.2 ]
  %polly.access.mul.Packed_MemRef_call1267412.2 = mul nuw nsw i64 %polly.indvar409.2, 20
  %polly.access.add.Packed_MemRef_call1267413.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1267412.2, %polly.indvar397
  %polly.access.Packed_MemRef_call1267414.2 = getelementptr double, double* %Packed_MemRef_call1267, i64 %polly.access.add.Packed_MemRef_call1267413.2
  %_p_scalar_415.2 = load double, double* %polly.access.Packed_MemRef_call1267414.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_418.2, %_p_scalar_415.2
  %249 = mul nuw nsw i64 %polly.indvar409.2, 480
  %250 = add nuw nsw i64 %249, %151
  %scevgep419.2 = getelementptr i8, i8* %call2, i64 %250
  %scevgep419420.2 = bitcast i8* %scevgep419.2 to double*
  %_p_scalar_421.2 = load double, double* %scevgep419420.2, align 8, !alias.scope !82, !noalias !86
  %p_mul37.i75.2 = fmul fast double %_p_scalar_425.2, %_p_scalar_421.2
  %251 = shl nuw nsw i64 %polly.indvar409.2, 3
  %252 = add nuw nsw i64 %251, %145
  %scevgep426.2 = getelementptr i8, i8* %call, i64 %252
  %scevgep426427.2 = bitcast i8* %scevgep426.2 to double*
  %_p_scalar_428.2 = load double, double* %scevgep426427.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_428.2
  store double %p_add42.i79.2, double* %scevgep426427.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410.2 = add nuw nsw i64 %polly.indvar409.2, 1
  %253 = add nuw nsw i64 %indvars.iv827, 1
  %exitcond831.2.not = icmp eq i64 %polly.indvar409.2, %253
  br i1 %exitcond831.2.not, label %polly.loop_exit408.2, label %polly.loop_header406.2

polly.loop_exit408.2:                             ; preds = %polly.loop_header406.2
  %254 = add nuw nsw i64 %147, %151
  %scevgep416.3 = getelementptr i8, i8* %call2, i64 %254
  %scevgep416417.3 = bitcast i8* %scevgep416.3 to double*
  %_p_scalar_418.3 = load double, double* %scevgep416417.3, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call1267423.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1267422.3, %polly.indvar397
  %polly.access.Packed_MemRef_call1267424.3 = getelementptr double, double* %Packed_MemRef_call1267, i64 %polly.access.add.Packed_MemRef_call1267423.3
  %_p_scalar_425.3 = load double, double* %polly.access.Packed_MemRef_call1267424.3, align 8
  br label %polly.loop_header406.3

polly.loop_header406.3:                           ; preds = %polly.loop_header406.3, %polly.loop_exit408.2
  %polly.indvar409.3 = phi i64 [ 0, %polly.loop_exit408.2 ], [ %polly.indvar_next410.3, %polly.loop_header406.3 ]
  %polly.access.mul.Packed_MemRef_call1267412.3 = mul nuw nsw i64 %polly.indvar409.3, 20
  %polly.access.add.Packed_MemRef_call1267413.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1267412.3, %polly.indvar397
  %polly.access.Packed_MemRef_call1267414.3 = getelementptr double, double* %Packed_MemRef_call1267, i64 %polly.access.add.Packed_MemRef_call1267413.3
  %_p_scalar_415.3 = load double, double* %polly.access.Packed_MemRef_call1267414.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_418.3, %_p_scalar_415.3
  %255 = mul nuw nsw i64 %polly.indvar409.3, 480
  %256 = add nuw nsw i64 %255, %151
  %scevgep419.3 = getelementptr i8, i8* %call2, i64 %256
  %scevgep419420.3 = bitcast i8* %scevgep419.3 to double*
  %_p_scalar_421.3 = load double, double* %scevgep419420.3, align 8, !alias.scope !82, !noalias !86
  %p_mul37.i75.3 = fmul fast double %_p_scalar_425.3, %_p_scalar_421.3
  %257 = shl nuw nsw i64 %polly.indvar409.3, 3
  %258 = add nuw nsw i64 %257, %148
  %scevgep426.3 = getelementptr i8, i8* %call, i64 %258
  %scevgep426427.3 = bitcast i8* %scevgep426.3 to double*
  %_p_scalar_428.3 = load double, double* %scevgep426427.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_428.3
  store double %p_add42.i79.3, double* %scevgep426427.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next410.3 = add nuw nsw i64 %polly.indvar409.3, 1
  %exitcond831.3.not = icmp eq i64 %polly.indvar409.3, %149
  br i1 %exitcond831.3.not, label %polly.loop_exit408.3, label %polly.loop_header406.3

polly.loop_exit408.3:                             ; preds = %polly.loop_header406.3
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next398, 20
  br i1 %exitcond833.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header573.1:                           ; preds = %polly.loop_header573.1, %polly.loop_exit575
  %polly.indvar576.1 = phi i64 [ 0, %polly.loop_exit575 ], [ %polly.indvar_next577.1, %polly.loop_header573.1 ]
  %polly.access.mul.Packed_MemRef_call1434579.1 = mul nuw nsw i64 %polly.indvar576.1, 20
  %polly.access.add.Packed_MemRef_call1434580.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1434579.1, %polly.indvar564
  %polly.access.Packed_MemRef_call1434581.1 = getelementptr double, double* %Packed_MemRef_call1434, i64 %polly.access.add.Packed_MemRef_call1434580.1
  %_p_scalar_582.1 = load double, double* %polly.access.Packed_MemRef_call1434581.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_585.1, %_p_scalar_582.1
  %259 = mul nuw nsw i64 %polly.indvar576.1, 480
  %260 = add nuw nsw i64 %259, %186
  %scevgep586.1 = getelementptr i8, i8* %call2, i64 %260
  %scevgep586587.1 = bitcast i8* %scevgep586.1 to double*
  %_p_scalar_588.1 = load double, double* %scevgep586587.1, align 8, !alias.scope !91, !noalias !95
  %p_mul37.i.1 = fmul fast double %_p_scalar_592.1, %_p_scalar_588.1
  %261 = shl nuw nsw i64 %polly.indvar576.1, 3
  %262 = add nuw nsw i64 %261, %177
  %scevgep593.1 = getelementptr i8, i8* %call, i64 %262
  %scevgep593594.1 = bitcast i8* %scevgep593.1 to double*
  %_p_scalar_595.1 = load double, double* %scevgep593594.1, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_595.1
  store double %p_add42.i.1, double* %scevgep593594.1, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577.1 = add nuw nsw i64 %polly.indvar576.1, 1
  %exitcond848.1.not = icmp eq i64 %polly.indvar576.1, %indvars.iv844
  br i1 %exitcond848.1.not, label %polly.loop_exit575.1, label %polly.loop_header573.1

polly.loop_exit575.1:                             ; preds = %polly.loop_header573.1
  %263 = add nuw nsw i64 %179, %186
  %scevgep583.2 = getelementptr i8, i8* %call2, i64 %263
  %scevgep583584.2 = bitcast i8* %scevgep583.2 to double*
  %_p_scalar_585.2 = load double, double* %scevgep583584.2, align 8, !alias.scope !91, !noalias !95
  %polly.access.add.Packed_MemRef_call1434590.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1434589.2, %polly.indvar564
  %polly.access.Packed_MemRef_call1434591.2 = getelementptr double, double* %Packed_MemRef_call1434, i64 %polly.access.add.Packed_MemRef_call1434590.2
  %_p_scalar_592.2 = load double, double* %polly.access.Packed_MemRef_call1434591.2, align 8
  br label %polly.loop_header573.2

polly.loop_header573.2:                           ; preds = %polly.loop_header573.2, %polly.loop_exit575.1
  %polly.indvar576.2 = phi i64 [ 0, %polly.loop_exit575.1 ], [ %polly.indvar_next577.2, %polly.loop_header573.2 ]
  %polly.access.mul.Packed_MemRef_call1434579.2 = mul nuw nsw i64 %polly.indvar576.2, 20
  %polly.access.add.Packed_MemRef_call1434580.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1434579.2, %polly.indvar564
  %polly.access.Packed_MemRef_call1434581.2 = getelementptr double, double* %Packed_MemRef_call1434, i64 %polly.access.add.Packed_MemRef_call1434580.2
  %_p_scalar_582.2 = load double, double* %polly.access.Packed_MemRef_call1434581.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_585.2, %_p_scalar_582.2
  %264 = mul nuw nsw i64 %polly.indvar576.2, 480
  %265 = add nuw nsw i64 %264, %186
  %scevgep586.2 = getelementptr i8, i8* %call2, i64 %265
  %scevgep586587.2 = bitcast i8* %scevgep586.2 to double*
  %_p_scalar_588.2 = load double, double* %scevgep586587.2, align 8, !alias.scope !91, !noalias !95
  %p_mul37.i.2 = fmul fast double %_p_scalar_592.2, %_p_scalar_588.2
  %266 = shl nuw nsw i64 %polly.indvar576.2, 3
  %267 = add nuw nsw i64 %266, %180
  %scevgep593.2 = getelementptr i8, i8* %call, i64 %267
  %scevgep593594.2 = bitcast i8* %scevgep593.2 to double*
  %_p_scalar_595.2 = load double, double* %scevgep593594.2, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_595.2
  store double %p_add42.i.2, double* %scevgep593594.2, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577.2 = add nuw nsw i64 %polly.indvar576.2, 1
  %268 = add nuw nsw i64 %indvars.iv844, 1
  %exitcond848.2.not = icmp eq i64 %polly.indvar576.2, %268
  br i1 %exitcond848.2.not, label %polly.loop_exit575.2, label %polly.loop_header573.2

polly.loop_exit575.2:                             ; preds = %polly.loop_header573.2
  %269 = add nuw nsw i64 %182, %186
  %scevgep583.3 = getelementptr i8, i8* %call2, i64 %269
  %scevgep583584.3 = bitcast i8* %scevgep583.3 to double*
  %_p_scalar_585.3 = load double, double* %scevgep583584.3, align 8, !alias.scope !91, !noalias !95
  %polly.access.add.Packed_MemRef_call1434590.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1434589.3, %polly.indvar564
  %polly.access.Packed_MemRef_call1434591.3 = getelementptr double, double* %Packed_MemRef_call1434, i64 %polly.access.add.Packed_MemRef_call1434590.3
  %_p_scalar_592.3 = load double, double* %polly.access.Packed_MemRef_call1434591.3, align 8
  br label %polly.loop_header573.3

polly.loop_header573.3:                           ; preds = %polly.loop_header573.3, %polly.loop_exit575.2
  %polly.indvar576.3 = phi i64 [ 0, %polly.loop_exit575.2 ], [ %polly.indvar_next577.3, %polly.loop_header573.3 ]
  %polly.access.mul.Packed_MemRef_call1434579.3 = mul nuw nsw i64 %polly.indvar576.3, 20
  %polly.access.add.Packed_MemRef_call1434580.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1434579.3, %polly.indvar564
  %polly.access.Packed_MemRef_call1434581.3 = getelementptr double, double* %Packed_MemRef_call1434, i64 %polly.access.add.Packed_MemRef_call1434580.3
  %_p_scalar_582.3 = load double, double* %polly.access.Packed_MemRef_call1434581.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_585.3, %_p_scalar_582.3
  %270 = mul nuw nsw i64 %polly.indvar576.3, 480
  %271 = add nuw nsw i64 %270, %186
  %scevgep586.3 = getelementptr i8, i8* %call2, i64 %271
  %scevgep586587.3 = bitcast i8* %scevgep586.3 to double*
  %_p_scalar_588.3 = load double, double* %scevgep586587.3, align 8, !alias.scope !91, !noalias !95
  %p_mul37.i.3 = fmul fast double %_p_scalar_592.3, %_p_scalar_588.3
  %272 = shl nuw nsw i64 %polly.indvar576.3, 3
  %273 = add nuw nsw i64 %272, %183
  %scevgep593.3 = getelementptr i8, i8* %call, i64 %273
  %scevgep593594.3 = bitcast i8* %scevgep593.3 to double*
  %_p_scalar_595.3 = load double, double* %scevgep593594.3, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_595.3
  store double %p_add42.i.3, double* %scevgep593594.3, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next577.3 = add nuw nsw i64 %polly.indvar576.3, 1
  %exitcond848.3.not = icmp eq i64 %polly.indvar576.3, %184
  br i1 %exitcond848.3.not, label %polly.loop_exit575.3, label %polly.loop_header573.3

polly.loop_exit575.3:                             ; preds = %polly.loop_header573.3
  %polly.indvar_next565 = add nuw nsw i64 %polly.indvar564, 1
  %exitcond850.not = icmp eq i64 %polly.indvar_next565, 20
  br i1 %exitcond850.not, label %polly.loop_exit563, label %polly.loop_header561

polly.loop_header787.1:                           ; preds = %polly.loop_exit795, %polly.loop_exit795.1
  %polly.indvar790.1 = phi i64 [ %polly.indvar_next791.1, %polly.loop_exit795.1 ], [ 0, %polly.loop_exit795 ]
  %274 = mul nuw nsw i64 %polly.indvar790.1, 480
  %275 = trunc i64 %polly.indvar790.1 to i32
  %broadcast.splatinsert1167 = insertelement <4 x i32> poison, i32 %275, i32 0
  %broadcast.splat1168 = shufflevector <4 x i32> %broadcast.splatinsert1167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %polly.loop_header787.1
  %index1161 = phi i64 [ 0, %polly.loop_header787.1 ], [ %index.next1162, %vector.body1159 ]
  %vec.ind1165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1 ], [ %vec.ind.next1166, %vector.body1159 ]
  %276 = add nuw nsw <4 x i64> %vec.ind1165, <i64 32, i64 32, i64 32, i64 32>
  %277 = trunc <4 x i64> %276 to <4 x i32>
  %278 = mul <4 x i32> %broadcast.splat1168, %277
  %279 = add <4 x i32> %278, <i32 1, i32 1, i32 1, i32 1>
  %280 = urem <4 x i32> %279, <i32 80, i32 80, i32 80, i32 80>
  %281 = sitofp <4 x i32> %280 to <4 x double>
  %282 = fmul fast <4 x double> %281, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %283 = extractelement <4 x i64> %276, i32 0
  %284 = shl i64 %283, 3
  %285 = add i64 %284, %274
  %286 = getelementptr i8, i8* %call1, i64 %285
  %287 = bitcast i8* %286 to <4 x double>*
  store <4 x double> %282, <4 x double>* %287, align 8, !alias.scope !99, !noalias !104
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1166 = add <4 x i64> %vec.ind1165, <i64 4, i64 4, i64 4, i64 4>
  %288 = icmp eq i64 %index.next1162, 28
  br i1 %288, label %polly.loop_exit795.1, label %vector.body1159, !llvm.loop !106

polly.loop_exit795.1:                             ; preds = %vector.body1159
  %polly.indvar_next791.1 = add nuw nsw i64 %polly.indvar790.1, 1
  %exitcond858.1.not = icmp eq i64 %polly.indvar_next791.1, 32
  br i1 %exitcond858.1.not, label %polly.loop_header787.1878, label %polly.loop_header787.1

polly.loop_header787.1878:                        ; preds = %polly.loop_exit795.1, %polly.loop_exit795.1889
  %polly.indvar790.1877 = phi i64 [ %polly.indvar_next791.1887, %polly.loop_exit795.1889 ], [ 0, %polly.loop_exit795.1 ]
  %289 = add nuw nsw i64 %polly.indvar790.1877, 32
  %290 = mul nuw nsw i64 %289, 480
  %291 = trunc i64 %289 to i32
  %broadcast.splatinsert1181 = insertelement <4 x i32> poison, i32 %291, i32 0
  %broadcast.splat1182 = shufflevector <4 x i32> %broadcast.splatinsert1181, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %polly.loop_header787.1878
  %index1173 = phi i64 [ 0, %polly.loop_header787.1878 ], [ %index.next1174, %vector.body1171 ]
  %vec.ind1179 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.1878 ], [ %vec.ind.next1180, %vector.body1171 ]
  %292 = mul <4 x i32> %vec.ind1179, %broadcast.splat1182
  %293 = add <4 x i32> %292, <i32 1, i32 1, i32 1, i32 1>
  %294 = urem <4 x i32> %293, <i32 80, i32 80, i32 80, i32 80>
  %295 = sitofp <4 x i32> %294 to <4 x double>
  %296 = fmul fast <4 x double> %295, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %297 = shl i64 %index1173, 3
  %298 = add i64 %297, %290
  %299 = getelementptr i8, i8* %call1, i64 %298
  %300 = bitcast i8* %299 to <4 x double>*
  store <4 x double> %296, <4 x double>* %300, align 8, !alias.scope !99, !noalias !104
  %index.next1174 = add i64 %index1173, 4
  %vec.ind.next1180 = add <4 x i32> %vec.ind1179, <i32 4, i32 4, i32 4, i32 4>
  %301 = icmp eq i64 %index.next1174, 32
  br i1 %301, label %polly.loop_exit795.1889, label %vector.body1171, !llvm.loop !107

polly.loop_exit795.1889:                          ; preds = %vector.body1171
  %polly.indvar_next791.1887 = add nuw nsw i64 %polly.indvar790.1877, 1
  %exitcond858.1888.not = icmp eq i64 %polly.indvar_next791.1887, 32
  br i1 %exitcond858.1888.not, label %polly.loop_header787.1.1, label %polly.loop_header787.1878

polly.loop_header787.1.1:                         ; preds = %polly.loop_exit795.1889, %polly.loop_exit795.1.1
  %polly.indvar790.1.1 = phi i64 [ %polly.indvar_next791.1.1, %polly.loop_exit795.1.1 ], [ 0, %polly.loop_exit795.1889 ]
  %302 = add nuw nsw i64 %polly.indvar790.1.1, 32
  %303 = mul nuw nsw i64 %302, 480
  %304 = trunc i64 %302 to i32
  %broadcast.splatinsert1193 = insertelement <4 x i32> poison, i32 %304, i32 0
  %broadcast.splat1194 = shufflevector <4 x i32> %broadcast.splatinsert1193, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %polly.loop_header787.1.1
  %index1187 = phi i64 [ 0, %polly.loop_header787.1.1 ], [ %index.next1188, %vector.body1185 ]
  %vec.ind1191 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.1 ], [ %vec.ind.next1192, %vector.body1185 ]
  %305 = add nuw nsw <4 x i64> %vec.ind1191, <i64 32, i64 32, i64 32, i64 32>
  %306 = trunc <4 x i64> %305 to <4 x i32>
  %307 = mul <4 x i32> %broadcast.splat1194, %306
  %308 = add <4 x i32> %307, <i32 1, i32 1, i32 1, i32 1>
  %309 = urem <4 x i32> %308, <i32 80, i32 80, i32 80, i32 80>
  %310 = sitofp <4 x i32> %309 to <4 x double>
  %311 = fmul fast <4 x double> %310, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %312 = extractelement <4 x i64> %305, i32 0
  %313 = shl i64 %312, 3
  %314 = add i64 %313, %303
  %315 = getelementptr i8, i8* %call1, i64 %314
  %316 = bitcast i8* %315 to <4 x double>*
  store <4 x double> %311, <4 x double>* %316, align 8, !alias.scope !99, !noalias !104
  %index.next1188 = add i64 %index1187, 4
  %vec.ind.next1192 = add <4 x i64> %vec.ind1191, <i64 4, i64 4, i64 4, i64 4>
  %317 = icmp eq i64 %index.next1188, 28
  br i1 %317, label %polly.loop_exit795.1.1, label %vector.body1185, !llvm.loop !108

polly.loop_exit795.1.1:                           ; preds = %vector.body1185
  %polly.indvar_next791.1.1 = add nuw nsw i64 %polly.indvar790.1.1, 1
  %exitcond858.1.1.not = icmp eq i64 %polly.indvar_next791.1.1, 32
  br i1 %exitcond858.1.1.not, label %polly.loop_header787.2, label %polly.loop_header787.1.1

polly.loop_header787.2:                           ; preds = %polly.loop_exit795.1.1, %polly.loop_exit795.2
  %polly.indvar790.2 = phi i64 [ %polly.indvar_next791.2, %polly.loop_exit795.2 ], [ 0, %polly.loop_exit795.1.1 ]
  %318 = add nuw nsw i64 %polly.indvar790.2, 64
  %319 = mul nuw nsw i64 %318, 480
  %320 = trunc i64 %318 to i32
  %broadcast.splatinsert1207 = insertelement <4 x i32> poison, i32 %320, i32 0
  %broadcast.splat1208 = shufflevector <4 x i32> %broadcast.splatinsert1207, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %polly.loop_header787.2
  %index1199 = phi i64 [ 0, %polly.loop_header787.2 ], [ %index.next1200, %vector.body1197 ]
  %vec.ind1205 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.2 ], [ %vec.ind.next1206, %vector.body1197 ]
  %321 = mul <4 x i32> %vec.ind1205, %broadcast.splat1208
  %322 = add <4 x i32> %321, <i32 1, i32 1, i32 1, i32 1>
  %323 = urem <4 x i32> %322, <i32 80, i32 80, i32 80, i32 80>
  %324 = sitofp <4 x i32> %323 to <4 x double>
  %325 = fmul fast <4 x double> %324, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %326 = shl i64 %index1199, 3
  %327 = add i64 %326, %319
  %328 = getelementptr i8, i8* %call1, i64 %327
  %329 = bitcast i8* %328 to <4 x double>*
  store <4 x double> %325, <4 x double>* %329, align 8, !alias.scope !99, !noalias !104
  %index.next1200 = add i64 %index1199, 4
  %vec.ind.next1206 = add <4 x i32> %vec.ind1205, <i32 4, i32 4, i32 4, i32 4>
  %330 = icmp eq i64 %index.next1200, 32
  br i1 %330, label %polly.loop_exit795.2, label %vector.body1197, !llvm.loop !109

polly.loop_exit795.2:                             ; preds = %vector.body1197
  %polly.indvar_next791.2 = add nuw nsw i64 %polly.indvar790.2, 1
  %exitcond858.2.not = icmp eq i64 %polly.indvar_next791.2, 16
  br i1 %exitcond858.2.not, label %polly.loop_header787.1.2, label %polly.loop_header787.2

polly.loop_header787.1.2:                         ; preds = %polly.loop_exit795.2, %polly.loop_exit795.1.2
  %polly.indvar790.1.2 = phi i64 [ %polly.indvar_next791.1.2, %polly.loop_exit795.1.2 ], [ 0, %polly.loop_exit795.2 ]
  %331 = add nuw nsw i64 %polly.indvar790.1.2, 64
  %332 = mul nuw nsw i64 %331, 480
  %333 = trunc i64 %331 to i32
  %broadcast.splatinsert1219 = insertelement <4 x i32> poison, i32 %333, i32 0
  %broadcast.splat1220 = shufflevector <4 x i32> %broadcast.splatinsert1219, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %polly.loop_header787.1.2
  %index1213 = phi i64 [ 0, %polly.loop_header787.1.2 ], [ %index.next1214, %vector.body1211 ]
  %vec.ind1217 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.2 ], [ %vec.ind.next1218, %vector.body1211 ]
  %334 = add nuw nsw <4 x i64> %vec.ind1217, <i64 32, i64 32, i64 32, i64 32>
  %335 = trunc <4 x i64> %334 to <4 x i32>
  %336 = mul <4 x i32> %broadcast.splat1220, %335
  %337 = add <4 x i32> %336, <i32 1, i32 1, i32 1, i32 1>
  %338 = urem <4 x i32> %337, <i32 80, i32 80, i32 80, i32 80>
  %339 = sitofp <4 x i32> %338 to <4 x double>
  %340 = fmul fast <4 x double> %339, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %341 = extractelement <4 x i64> %334, i32 0
  %342 = shl i64 %341, 3
  %343 = add i64 %342, %332
  %344 = getelementptr i8, i8* %call1, i64 %343
  %345 = bitcast i8* %344 to <4 x double>*
  store <4 x double> %340, <4 x double>* %345, align 8, !alias.scope !99, !noalias !104
  %index.next1214 = add i64 %index1213, 4
  %vec.ind.next1218 = add <4 x i64> %vec.ind1217, <i64 4, i64 4, i64 4, i64 4>
  %346 = icmp eq i64 %index.next1214, 28
  br i1 %346, label %polly.loop_exit795.1.2, label %vector.body1211, !llvm.loop !110

polly.loop_exit795.1.2:                           ; preds = %vector.body1211
  %polly.indvar_next791.1.2 = add nuw nsw i64 %polly.indvar790.1.2, 1
  %exitcond858.1.2.not = icmp eq i64 %polly.indvar_next791.1.2, 16
  br i1 %exitcond858.1.2.not, label %init_array.exit, label %polly.loop_header787.1.2

polly.loop_header761.1:                           ; preds = %polly.loop_exit769, %polly.loop_exit769.1
  %polly.indvar764.1 = phi i64 [ %polly.indvar_next765.1, %polly.loop_exit769.1 ], [ 0, %polly.loop_exit769 ]
  %347 = mul nuw nsw i64 %polly.indvar764.1, 480
  %348 = trunc i64 %polly.indvar764.1 to i32
  %broadcast.splatinsert1089 = insertelement <4 x i32> poison, i32 %348, i32 0
  %broadcast.splat1090 = shufflevector <4 x i32> %broadcast.splatinsert1089, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %polly.loop_header761.1
  %index1083 = phi i64 [ 0, %polly.loop_header761.1 ], [ %index.next1084, %vector.body1081 ]
  %vec.ind1087 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1 ], [ %vec.ind.next1088, %vector.body1081 ]
  %349 = add nuw nsw <4 x i64> %vec.ind1087, <i64 32, i64 32, i64 32, i64 32>
  %350 = trunc <4 x i64> %349 to <4 x i32>
  %351 = mul <4 x i32> %broadcast.splat1090, %350
  %352 = add <4 x i32> %351, <i32 2, i32 2, i32 2, i32 2>
  %353 = urem <4 x i32> %352, <i32 60, i32 60, i32 60, i32 60>
  %354 = sitofp <4 x i32> %353 to <4 x double>
  %355 = fmul fast <4 x double> %354, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %356 = extractelement <4 x i64> %349, i32 0
  %357 = shl i64 %356, 3
  %358 = add i64 %357, %347
  %359 = getelementptr i8, i8* %call2, i64 %358
  %360 = bitcast i8* %359 to <4 x double>*
  store <4 x double> %355, <4 x double>* %360, align 8, !alias.scope !100, !noalias !102
  %index.next1084 = add i64 %index1083, 4
  %vec.ind.next1088 = add <4 x i64> %vec.ind1087, <i64 4, i64 4, i64 4, i64 4>
  %361 = icmp eq i64 %index.next1084, 28
  br i1 %361, label %polly.loop_exit769.1, label %vector.body1081, !llvm.loop !111

polly.loop_exit769.1:                             ; preds = %vector.body1081
  %polly.indvar_next765.1 = add nuw nsw i64 %polly.indvar764.1, 1
  %exitcond864.1.not = icmp eq i64 %polly.indvar_next765.1, 32
  br i1 %exitcond864.1.not, label %polly.loop_header761.1892, label %polly.loop_header761.1

polly.loop_header761.1892:                        ; preds = %polly.loop_exit769.1, %polly.loop_exit769.1903
  %polly.indvar764.1891 = phi i64 [ %polly.indvar_next765.1901, %polly.loop_exit769.1903 ], [ 0, %polly.loop_exit769.1 ]
  %362 = add nuw nsw i64 %polly.indvar764.1891, 32
  %363 = mul nuw nsw i64 %362, 480
  %364 = trunc i64 %362 to i32
  %broadcast.splatinsert1103 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat1104 = shufflevector <4 x i32> %broadcast.splatinsert1103, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1093

vector.body1093:                                  ; preds = %vector.body1093, %polly.loop_header761.1892
  %index1095 = phi i64 [ 0, %polly.loop_header761.1892 ], [ %index.next1096, %vector.body1093 ]
  %vec.ind1101 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.1892 ], [ %vec.ind.next1102, %vector.body1093 ]
  %365 = mul <4 x i32> %vec.ind1101, %broadcast.splat1104
  %366 = add <4 x i32> %365, <i32 2, i32 2, i32 2, i32 2>
  %367 = urem <4 x i32> %366, <i32 60, i32 60, i32 60, i32 60>
  %368 = sitofp <4 x i32> %367 to <4 x double>
  %369 = fmul fast <4 x double> %368, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %370 = shl i64 %index1095, 3
  %371 = add i64 %370, %363
  %372 = getelementptr i8, i8* %call2, i64 %371
  %373 = bitcast i8* %372 to <4 x double>*
  store <4 x double> %369, <4 x double>* %373, align 8, !alias.scope !100, !noalias !102
  %index.next1096 = add i64 %index1095, 4
  %vec.ind.next1102 = add <4 x i32> %vec.ind1101, <i32 4, i32 4, i32 4, i32 4>
  %374 = icmp eq i64 %index.next1096, 32
  br i1 %374, label %polly.loop_exit769.1903, label %vector.body1093, !llvm.loop !112

polly.loop_exit769.1903:                          ; preds = %vector.body1093
  %polly.indvar_next765.1901 = add nuw nsw i64 %polly.indvar764.1891, 1
  %exitcond864.1902.not = icmp eq i64 %polly.indvar_next765.1901, 32
  br i1 %exitcond864.1902.not, label %polly.loop_header761.1.1, label %polly.loop_header761.1892

polly.loop_header761.1.1:                         ; preds = %polly.loop_exit769.1903, %polly.loop_exit769.1.1
  %polly.indvar764.1.1 = phi i64 [ %polly.indvar_next765.1.1, %polly.loop_exit769.1.1 ], [ 0, %polly.loop_exit769.1903 ]
  %375 = add nuw nsw i64 %polly.indvar764.1.1, 32
  %376 = mul nuw nsw i64 %375, 480
  %377 = trunc i64 %375 to i32
  %broadcast.splatinsert1115 = insertelement <4 x i32> poison, i32 %377, i32 0
  %broadcast.splat1116 = shufflevector <4 x i32> %broadcast.splatinsert1115, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %polly.loop_header761.1.1
  %index1109 = phi i64 [ 0, %polly.loop_header761.1.1 ], [ %index.next1110, %vector.body1107 ]
  %vec.ind1113 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.1 ], [ %vec.ind.next1114, %vector.body1107 ]
  %378 = add nuw nsw <4 x i64> %vec.ind1113, <i64 32, i64 32, i64 32, i64 32>
  %379 = trunc <4 x i64> %378 to <4 x i32>
  %380 = mul <4 x i32> %broadcast.splat1116, %379
  %381 = add <4 x i32> %380, <i32 2, i32 2, i32 2, i32 2>
  %382 = urem <4 x i32> %381, <i32 60, i32 60, i32 60, i32 60>
  %383 = sitofp <4 x i32> %382 to <4 x double>
  %384 = fmul fast <4 x double> %383, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %385 = extractelement <4 x i64> %378, i32 0
  %386 = shl i64 %385, 3
  %387 = add i64 %386, %376
  %388 = getelementptr i8, i8* %call2, i64 %387
  %389 = bitcast i8* %388 to <4 x double>*
  store <4 x double> %384, <4 x double>* %389, align 8, !alias.scope !100, !noalias !102
  %index.next1110 = add i64 %index1109, 4
  %vec.ind.next1114 = add <4 x i64> %vec.ind1113, <i64 4, i64 4, i64 4, i64 4>
  %390 = icmp eq i64 %index.next1110, 28
  br i1 %390, label %polly.loop_exit769.1.1, label %vector.body1107, !llvm.loop !113

polly.loop_exit769.1.1:                           ; preds = %vector.body1107
  %polly.indvar_next765.1.1 = add nuw nsw i64 %polly.indvar764.1.1, 1
  %exitcond864.1.1.not = icmp eq i64 %polly.indvar_next765.1.1, 32
  br i1 %exitcond864.1.1.not, label %polly.loop_header761.2, label %polly.loop_header761.1.1

polly.loop_header761.2:                           ; preds = %polly.loop_exit769.1.1, %polly.loop_exit769.2
  %polly.indvar764.2 = phi i64 [ %polly.indvar_next765.2, %polly.loop_exit769.2 ], [ 0, %polly.loop_exit769.1.1 ]
  %391 = add nuw nsw i64 %polly.indvar764.2, 64
  %392 = mul nuw nsw i64 %391, 480
  %393 = trunc i64 %391 to i32
  %broadcast.splatinsert1129 = insertelement <4 x i32> poison, i32 %393, i32 0
  %broadcast.splat1130 = shufflevector <4 x i32> %broadcast.splatinsert1129, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %polly.loop_header761.2
  %index1121 = phi i64 [ 0, %polly.loop_header761.2 ], [ %index.next1122, %vector.body1119 ]
  %vec.ind1127 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header761.2 ], [ %vec.ind.next1128, %vector.body1119 ]
  %394 = mul <4 x i32> %vec.ind1127, %broadcast.splat1130
  %395 = add <4 x i32> %394, <i32 2, i32 2, i32 2, i32 2>
  %396 = urem <4 x i32> %395, <i32 60, i32 60, i32 60, i32 60>
  %397 = sitofp <4 x i32> %396 to <4 x double>
  %398 = fmul fast <4 x double> %397, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %399 = shl i64 %index1121, 3
  %400 = add i64 %399, %392
  %401 = getelementptr i8, i8* %call2, i64 %400
  %402 = bitcast i8* %401 to <4 x double>*
  store <4 x double> %398, <4 x double>* %402, align 8, !alias.scope !100, !noalias !102
  %index.next1122 = add i64 %index1121, 4
  %vec.ind.next1128 = add <4 x i32> %vec.ind1127, <i32 4, i32 4, i32 4, i32 4>
  %403 = icmp eq i64 %index.next1122, 32
  br i1 %403, label %polly.loop_exit769.2, label %vector.body1119, !llvm.loop !114

polly.loop_exit769.2:                             ; preds = %vector.body1119
  %polly.indvar_next765.2 = add nuw nsw i64 %polly.indvar764.2, 1
  %exitcond864.2.not = icmp eq i64 %polly.indvar_next765.2, 16
  br i1 %exitcond864.2.not, label %polly.loop_header761.1.2, label %polly.loop_header761.2

polly.loop_header761.1.2:                         ; preds = %polly.loop_exit769.2, %polly.loop_exit769.1.2
  %polly.indvar764.1.2 = phi i64 [ %polly.indvar_next765.1.2, %polly.loop_exit769.1.2 ], [ 0, %polly.loop_exit769.2 ]
  %404 = add nuw nsw i64 %polly.indvar764.1.2, 64
  %405 = mul nuw nsw i64 %404, 480
  %406 = trunc i64 %404 to i32
  %broadcast.splatinsert1141 = insertelement <4 x i32> poison, i32 %406, i32 0
  %broadcast.splat1142 = shufflevector <4 x i32> %broadcast.splatinsert1141, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %polly.loop_header761.1.2
  %index1135 = phi i64 [ 0, %polly.loop_header761.1.2 ], [ %index.next1136, %vector.body1133 ]
  %vec.ind1139 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header761.1.2 ], [ %vec.ind.next1140, %vector.body1133 ]
  %407 = add nuw nsw <4 x i64> %vec.ind1139, <i64 32, i64 32, i64 32, i64 32>
  %408 = trunc <4 x i64> %407 to <4 x i32>
  %409 = mul <4 x i32> %broadcast.splat1142, %408
  %410 = add <4 x i32> %409, <i32 2, i32 2, i32 2, i32 2>
  %411 = urem <4 x i32> %410, <i32 60, i32 60, i32 60, i32 60>
  %412 = sitofp <4 x i32> %411 to <4 x double>
  %413 = fmul fast <4 x double> %412, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %414 = extractelement <4 x i64> %407, i32 0
  %415 = shl i64 %414, 3
  %416 = add i64 %415, %405
  %417 = getelementptr i8, i8* %call2, i64 %416
  %418 = bitcast i8* %417 to <4 x double>*
  store <4 x double> %413, <4 x double>* %418, align 8, !alias.scope !100, !noalias !102
  %index.next1136 = add i64 %index1135, 4
  %vec.ind.next1140 = add <4 x i64> %vec.ind1139, <i64 4, i64 4, i64 4, i64 4>
  %419 = icmp eq i64 %index.next1136, 28
  br i1 %419, label %polly.loop_exit769.1.2, label %vector.body1133, !llvm.loop !115

polly.loop_exit769.1.2:                           ; preds = %vector.body1133
  %polly.indvar_next765.1.2 = add nuw nsw i64 %polly.indvar764.1.2, 1
  %exitcond864.1.2.not = icmp eq i64 %polly.indvar_next765.1.2, 16
  br i1 %exitcond864.1.2.not, label %polly.loop_header787, label %polly.loop_header761.1.2

polly.loop_header734.1:                           ; preds = %polly.loop_exit742, %polly.loop_exit742.1
  %polly.indvar737.1 = phi i64 [ %polly.indvar_next738.1, %polly.loop_exit742.1 ], [ 0, %polly.loop_exit742 ]
  %420 = mul nuw nsw i64 %polly.indvar737.1, 640
  %421 = trunc i64 %polly.indvar737.1 to i32
  %broadcast.splatinsert975 = insertelement <4 x i32> poison, i32 %421, i32 0
  %broadcast.splat976 = shufflevector <4 x i32> %broadcast.splatinsert975, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body967

vector.body967:                                   ; preds = %vector.body967, %polly.loop_header734.1
  %index969 = phi i64 [ 0, %polly.loop_header734.1 ], [ %index.next970, %vector.body967 ]
  %vec.ind973 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1 ], [ %vec.ind.next974, %vector.body967 ]
  %422 = add nuw nsw <4 x i64> %vec.ind973, <i64 32, i64 32, i64 32, i64 32>
  %423 = trunc <4 x i64> %422 to <4 x i32>
  %424 = mul <4 x i32> %broadcast.splat976, %423
  %425 = add <4 x i32> %424, <i32 3, i32 3, i32 3, i32 3>
  %426 = urem <4 x i32> %425, <i32 80, i32 80, i32 80, i32 80>
  %427 = sitofp <4 x i32> %426 to <4 x double>
  %428 = fmul fast <4 x double> %427, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %429 = extractelement <4 x i64> %422, i32 0
  %430 = shl i64 %429, 3
  %431 = add nuw nsw i64 %430, %420
  %432 = getelementptr i8, i8* %call, i64 %431
  %433 = bitcast i8* %432 to <4 x double>*
  store <4 x double> %428, <4 x double>* %433, align 8, !alias.scope !96, !noalias !98
  %index.next970 = add i64 %index969, 4
  %vec.ind.next974 = add <4 x i64> %vec.ind973, <i64 4, i64 4, i64 4, i64 4>
  %434 = icmp eq i64 %index.next970, 32
  br i1 %434, label %polly.loop_exit742.1, label %vector.body967, !llvm.loop !116

polly.loop_exit742.1:                             ; preds = %vector.body967
  %polly.indvar_next738.1 = add nuw nsw i64 %polly.indvar737.1, 1
  %exitcond873.1.not = icmp eq i64 %polly.indvar_next738.1, 32
  br i1 %exitcond873.1.not, label %polly.loop_header734.2, label %polly.loop_header734.1

polly.loop_header734.2:                           ; preds = %polly.loop_exit742.1, %polly.loop_exit742.2
  %polly.indvar737.2 = phi i64 [ %polly.indvar_next738.2, %polly.loop_exit742.2 ], [ 0, %polly.loop_exit742.1 ]
  %435 = mul nuw nsw i64 %polly.indvar737.2, 640
  %436 = trunc i64 %polly.indvar737.2 to i32
  %broadcast.splatinsert987 = insertelement <4 x i32> poison, i32 %436, i32 0
  %broadcast.splat988 = shufflevector <4 x i32> %broadcast.splatinsert987, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body979

vector.body979:                                   ; preds = %vector.body979, %polly.loop_header734.2
  %index981 = phi i64 [ 0, %polly.loop_header734.2 ], [ %index.next982, %vector.body979 ]
  %vec.ind985 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2 ], [ %vec.ind.next986, %vector.body979 ]
  %437 = add nuw nsw <4 x i64> %vec.ind985, <i64 64, i64 64, i64 64, i64 64>
  %438 = trunc <4 x i64> %437 to <4 x i32>
  %439 = mul <4 x i32> %broadcast.splat988, %438
  %440 = add <4 x i32> %439, <i32 3, i32 3, i32 3, i32 3>
  %441 = urem <4 x i32> %440, <i32 80, i32 80, i32 80, i32 80>
  %442 = sitofp <4 x i32> %441 to <4 x double>
  %443 = fmul fast <4 x double> %442, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %444 = extractelement <4 x i64> %437, i32 0
  %445 = shl i64 %444, 3
  %446 = add nuw nsw i64 %445, %435
  %447 = getelementptr i8, i8* %call, i64 %446
  %448 = bitcast i8* %447 to <4 x double>*
  store <4 x double> %443, <4 x double>* %448, align 8, !alias.scope !96, !noalias !98
  %index.next982 = add i64 %index981, 4
  %vec.ind.next986 = add <4 x i64> %vec.ind985, <i64 4, i64 4, i64 4, i64 4>
  %449 = icmp eq i64 %index.next982, 16
  br i1 %449, label %polly.loop_exit742.2, label %vector.body979, !llvm.loop !117

polly.loop_exit742.2:                             ; preds = %vector.body979
  %polly.indvar_next738.2 = add nuw nsw i64 %polly.indvar737.2, 1
  %exitcond873.2.not = icmp eq i64 %polly.indvar_next738.2, 32
  br i1 %exitcond873.2.not, label %polly.loop_header734.1906, label %polly.loop_header734.2

polly.loop_header734.1906:                        ; preds = %polly.loop_exit742.2, %polly.loop_exit742.1917
  %polly.indvar737.1905 = phi i64 [ %polly.indvar_next738.1915, %polly.loop_exit742.1917 ], [ 0, %polly.loop_exit742.2 ]
  %450 = add nuw nsw i64 %polly.indvar737.1905, 32
  %451 = mul nuw nsw i64 %450, 640
  %452 = trunc i64 %450 to i32
  %broadcast.splatinsert1001 = insertelement <4 x i32> poison, i32 %452, i32 0
  %broadcast.splat1002 = shufflevector <4 x i32> %broadcast.splatinsert1001, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body991

vector.body991:                                   ; preds = %vector.body991, %polly.loop_header734.1906
  %index993 = phi i64 [ 0, %polly.loop_header734.1906 ], [ %index.next994, %vector.body991 ]
  %vec.ind999 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.1906 ], [ %vec.ind.next1000, %vector.body991 ]
  %453 = mul <4 x i32> %vec.ind999, %broadcast.splat1002
  %454 = add <4 x i32> %453, <i32 3, i32 3, i32 3, i32 3>
  %455 = urem <4 x i32> %454, <i32 80, i32 80, i32 80, i32 80>
  %456 = sitofp <4 x i32> %455 to <4 x double>
  %457 = fmul fast <4 x double> %456, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %458 = shl i64 %index993, 3
  %459 = add nuw nsw i64 %458, %451
  %460 = getelementptr i8, i8* %call, i64 %459
  %461 = bitcast i8* %460 to <4 x double>*
  store <4 x double> %457, <4 x double>* %461, align 8, !alias.scope !96, !noalias !98
  %index.next994 = add i64 %index993, 4
  %vec.ind.next1000 = add <4 x i32> %vec.ind999, <i32 4, i32 4, i32 4, i32 4>
  %462 = icmp eq i64 %index.next994, 32
  br i1 %462, label %polly.loop_exit742.1917, label %vector.body991, !llvm.loop !118

polly.loop_exit742.1917:                          ; preds = %vector.body991
  %polly.indvar_next738.1915 = add nuw nsw i64 %polly.indvar737.1905, 1
  %exitcond873.1916.not = icmp eq i64 %polly.indvar_next738.1915, 32
  br i1 %exitcond873.1916.not, label %polly.loop_header734.1.1, label %polly.loop_header734.1906

polly.loop_header734.1.1:                         ; preds = %polly.loop_exit742.1917, %polly.loop_exit742.1.1
  %polly.indvar737.1.1 = phi i64 [ %polly.indvar_next738.1.1, %polly.loop_exit742.1.1 ], [ 0, %polly.loop_exit742.1917 ]
  %463 = add nuw nsw i64 %polly.indvar737.1.1, 32
  %464 = mul nuw nsw i64 %463, 640
  %465 = trunc i64 %463 to i32
  %broadcast.splatinsert1013 = insertelement <4 x i32> poison, i32 %465, i32 0
  %broadcast.splat1014 = shufflevector <4 x i32> %broadcast.splatinsert1013, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1005

vector.body1005:                                  ; preds = %vector.body1005, %polly.loop_header734.1.1
  %index1007 = phi i64 [ 0, %polly.loop_header734.1.1 ], [ %index.next1008, %vector.body1005 ]
  %vec.ind1011 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.1 ], [ %vec.ind.next1012, %vector.body1005 ]
  %466 = add nuw nsw <4 x i64> %vec.ind1011, <i64 32, i64 32, i64 32, i64 32>
  %467 = trunc <4 x i64> %466 to <4 x i32>
  %468 = mul <4 x i32> %broadcast.splat1014, %467
  %469 = add <4 x i32> %468, <i32 3, i32 3, i32 3, i32 3>
  %470 = urem <4 x i32> %469, <i32 80, i32 80, i32 80, i32 80>
  %471 = sitofp <4 x i32> %470 to <4 x double>
  %472 = fmul fast <4 x double> %471, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %473 = extractelement <4 x i64> %466, i32 0
  %474 = shl i64 %473, 3
  %475 = add nuw nsw i64 %474, %464
  %476 = getelementptr i8, i8* %call, i64 %475
  %477 = bitcast i8* %476 to <4 x double>*
  store <4 x double> %472, <4 x double>* %477, align 8, !alias.scope !96, !noalias !98
  %index.next1008 = add i64 %index1007, 4
  %vec.ind.next1012 = add <4 x i64> %vec.ind1011, <i64 4, i64 4, i64 4, i64 4>
  %478 = icmp eq i64 %index.next1008, 32
  br i1 %478, label %polly.loop_exit742.1.1, label %vector.body1005, !llvm.loop !119

polly.loop_exit742.1.1:                           ; preds = %vector.body1005
  %polly.indvar_next738.1.1 = add nuw nsw i64 %polly.indvar737.1.1, 1
  %exitcond873.1.1.not = icmp eq i64 %polly.indvar_next738.1.1, 32
  br i1 %exitcond873.1.1.not, label %polly.loop_header734.2.1, label %polly.loop_header734.1.1

polly.loop_header734.2.1:                         ; preds = %polly.loop_exit742.1.1, %polly.loop_exit742.2.1
  %polly.indvar737.2.1 = phi i64 [ %polly.indvar_next738.2.1, %polly.loop_exit742.2.1 ], [ 0, %polly.loop_exit742.1.1 ]
  %479 = add nuw nsw i64 %polly.indvar737.2.1, 32
  %480 = mul nuw nsw i64 %479, 640
  %481 = trunc i64 %479 to i32
  %broadcast.splatinsert1025 = insertelement <4 x i32> poison, i32 %481, i32 0
  %broadcast.splat1026 = shufflevector <4 x i32> %broadcast.splatinsert1025, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1017

vector.body1017:                                  ; preds = %vector.body1017, %polly.loop_header734.2.1
  %index1019 = phi i64 [ 0, %polly.loop_header734.2.1 ], [ %index.next1020, %vector.body1017 ]
  %vec.ind1023 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.1 ], [ %vec.ind.next1024, %vector.body1017 ]
  %482 = add nuw nsw <4 x i64> %vec.ind1023, <i64 64, i64 64, i64 64, i64 64>
  %483 = trunc <4 x i64> %482 to <4 x i32>
  %484 = mul <4 x i32> %broadcast.splat1026, %483
  %485 = add <4 x i32> %484, <i32 3, i32 3, i32 3, i32 3>
  %486 = urem <4 x i32> %485, <i32 80, i32 80, i32 80, i32 80>
  %487 = sitofp <4 x i32> %486 to <4 x double>
  %488 = fmul fast <4 x double> %487, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %489 = extractelement <4 x i64> %482, i32 0
  %490 = shl i64 %489, 3
  %491 = add nuw nsw i64 %490, %480
  %492 = getelementptr i8, i8* %call, i64 %491
  %493 = bitcast i8* %492 to <4 x double>*
  store <4 x double> %488, <4 x double>* %493, align 8, !alias.scope !96, !noalias !98
  %index.next1020 = add i64 %index1019, 4
  %vec.ind.next1024 = add <4 x i64> %vec.ind1023, <i64 4, i64 4, i64 4, i64 4>
  %494 = icmp eq i64 %index.next1020, 16
  br i1 %494, label %polly.loop_exit742.2.1, label %vector.body1017, !llvm.loop !120

polly.loop_exit742.2.1:                           ; preds = %vector.body1017
  %polly.indvar_next738.2.1 = add nuw nsw i64 %polly.indvar737.2.1, 1
  %exitcond873.2.1.not = icmp eq i64 %polly.indvar_next738.2.1, 32
  br i1 %exitcond873.2.1.not, label %polly.loop_header734.2920, label %polly.loop_header734.2.1

polly.loop_header734.2920:                        ; preds = %polly.loop_exit742.2.1, %polly.loop_exit742.2931
  %polly.indvar737.2919 = phi i64 [ %polly.indvar_next738.2929, %polly.loop_exit742.2931 ], [ 0, %polly.loop_exit742.2.1 ]
  %495 = add nuw nsw i64 %polly.indvar737.2919, 64
  %496 = mul nuw nsw i64 %495, 640
  %497 = trunc i64 %495 to i32
  %broadcast.splatinsert1039 = insertelement <4 x i32> poison, i32 %497, i32 0
  %broadcast.splat1040 = shufflevector <4 x i32> %broadcast.splatinsert1039, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %polly.loop_header734.2920
  %index1031 = phi i64 [ 0, %polly.loop_header734.2920 ], [ %index.next1032, %vector.body1029 ]
  %vec.ind1037 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.2920 ], [ %vec.ind.next1038, %vector.body1029 ]
  %498 = mul <4 x i32> %vec.ind1037, %broadcast.splat1040
  %499 = add <4 x i32> %498, <i32 3, i32 3, i32 3, i32 3>
  %500 = urem <4 x i32> %499, <i32 80, i32 80, i32 80, i32 80>
  %501 = sitofp <4 x i32> %500 to <4 x double>
  %502 = fmul fast <4 x double> %501, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %503 = shl i64 %index1031, 3
  %504 = add nuw nsw i64 %503, %496
  %505 = getelementptr i8, i8* %call, i64 %504
  %506 = bitcast i8* %505 to <4 x double>*
  store <4 x double> %502, <4 x double>* %506, align 8, !alias.scope !96, !noalias !98
  %index.next1032 = add i64 %index1031, 4
  %vec.ind.next1038 = add <4 x i32> %vec.ind1037, <i32 4, i32 4, i32 4, i32 4>
  %507 = icmp eq i64 %index.next1032, 32
  br i1 %507, label %polly.loop_exit742.2931, label %vector.body1029, !llvm.loop !121

polly.loop_exit742.2931:                          ; preds = %vector.body1029
  %polly.indvar_next738.2929 = add nuw nsw i64 %polly.indvar737.2919, 1
  %exitcond873.2930.not = icmp eq i64 %polly.indvar_next738.2929, 16
  br i1 %exitcond873.2930.not, label %polly.loop_header734.1.2, label %polly.loop_header734.2920

polly.loop_header734.1.2:                         ; preds = %polly.loop_exit742.2931, %polly.loop_exit742.1.2
  %polly.indvar737.1.2 = phi i64 [ %polly.indvar_next738.1.2, %polly.loop_exit742.1.2 ], [ 0, %polly.loop_exit742.2931 ]
  %508 = add nuw nsw i64 %polly.indvar737.1.2, 64
  %509 = mul nuw nsw i64 %508, 640
  %510 = trunc i64 %508 to i32
  %broadcast.splatinsert1051 = insertelement <4 x i32> poison, i32 %510, i32 0
  %broadcast.splat1052 = shufflevector <4 x i32> %broadcast.splatinsert1051, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %polly.loop_header734.1.2
  %index1045 = phi i64 [ 0, %polly.loop_header734.1.2 ], [ %index.next1046, %vector.body1043 ]
  %vec.ind1049 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.2 ], [ %vec.ind.next1050, %vector.body1043 ]
  %511 = add nuw nsw <4 x i64> %vec.ind1049, <i64 32, i64 32, i64 32, i64 32>
  %512 = trunc <4 x i64> %511 to <4 x i32>
  %513 = mul <4 x i32> %broadcast.splat1052, %512
  %514 = add <4 x i32> %513, <i32 3, i32 3, i32 3, i32 3>
  %515 = urem <4 x i32> %514, <i32 80, i32 80, i32 80, i32 80>
  %516 = sitofp <4 x i32> %515 to <4 x double>
  %517 = fmul fast <4 x double> %516, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %518 = extractelement <4 x i64> %511, i32 0
  %519 = shl i64 %518, 3
  %520 = add nuw nsw i64 %519, %509
  %521 = getelementptr i8, i8* %call, i64 %520
  %522 = bitcast i8* %521 to <4 x double>*
  store <4 x double> %517, <4 x double>* %522, align 8, !alias.scope !96, !noalias !98
  %index.next1046 = add i64 %index1045, 4
  %vec.ind.next1050 = add <4 x i64> %vec.ind1049, <i64 4, i64 4, i64 4, i64 4>
  %523 = icmp eq i64 %index.next1046, 32
  br i1 %523, label %polly.loop_exit742.1.2, label %vector.body1043, !llvm.loop !122

polly.loop_exit742.1.2:                           ; preds = %vector.body1043
  %polly.indvar_next738.1.2 = add nuw nsw i64 %polly.indvar737.1.2, 1
  %exitcond873.1.2.not = icmp eq i64 %polly.indvar_next738.1.2, 16
  br i1 %exitcond873.1.2.not, label %polly.loop_header734.2.2, label %polly.loop_header734.1.2

polly.loop_header734.2.2:                         ; preds = %polly.loop_exit742.1.2, %polly.loop_exit742.2.2
  %polly.indvar737.2.2 = phi i64 [ %polly.indvar_next738.2.2, %polly.loop_exit742.2.2 ], [ 0, %polly.loop_exit742.1.2 ]
  %524 = add nuw nsw i64 %polly.indvar737.2.2, 64
  %525 = mul nuw nsw i64 %524, 640
  %526 = trunc i64 %524 to i32
  %broadcast.splatinsert1063 = insertelement <4 x i32> poison, i32 %526, i32 0
  %broadcast.splat1064 = shufflevector <4 x i32> %broadcast.splatinsert1063, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %polly.loop_header734.2.2
  %index1057 = phi i64 [ 0, %polly.loop_header734.2.2 ], [ %index.next1058, %vector.body1055 ]
  %vec.ind1061 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.2.2 ], [ %vec.ind.next1062, %vector.body1055 ]
  %527 = add nuw nsw <4 x i64> %vec.ind1061, <i64 64, i64 64, i64 64, i64 64>
  %528 = trunc <4 x i64> %527 to <4 x i32>
  %529 = mul <4 x i32> %broadcast.splat1064, %528
  %530 = add <4 x i32> %529, <i32 3, i32 3, i32 3, i32 3>
  %531 = urem <4 x i32> %530, <i32 80, i32 80, i32 80, i32 80>
  %532 = sitofp <4 x i32> %531 to <4 x double>
  %533 = fmul fast <4 x double> %532, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %534 = extractelement <4 x i64> %527, i32 0
  %535 = shl i64 %534, 3
  %536 = add nuw nsw i64 %535, %525
  %537 = getelementptr i8, i8* %call, i64 %536
  %538 = bitcast i8* %537 to <4 x double>*
  store <4 x double> %533, <4 x double>* %538, align 8, !alias.scope !96, !noalias !98
  %index.next1058 = add i64 %index1057, 4
  %vec.ind.next1062 = add <4 x i64> %vec.ind1061, <i64 4, i64 4, i64 4, i64 4>
  %539 = icmp eq i64 %index.next1058, 16
  br i1 %539, label %polly.loop_exit742.2.2, label %vector.body1055, !llvm.loop !123

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
!21 = distinct !{!"A"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 128}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 20}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.loop.interchange.followup_interchanged", !42}
!42 = distinct !{!42, !12, !23, !40, !43, !44, !45}
!43 = !{!"llvm.data.pack.enable", i1 true}
!44 = !{!"llvm.data.pack.array", !21}
!45 = !{!"llvm.data.pack.allocate", !"malloc"}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50, !51, !57}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.size", i32 4}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !23, !53, !54, !55, !56}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
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
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call1"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !71, !73}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !76, !13}
!86 = !{!78, !81, !83}
!87 = distinct !{!87, !88, !"polly.alias.scope.MemRef_call"}
!88 = distinct !{!88, !"polly.alias.scope.domain"}
!89 = !{!90, !91, !92}
!90 = distinct !{!90, !88, !"polly.alias.scope.MemRef_call1"}
!91 = distinct !{!91, !88, !"polly.alias.scope.MemRef_call2"}
!92 = distinct !{!92, !88, !"polly.alias.scope.Packed_MemRef_call1"}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !76, !13}
!95 = !{!87, !90, !92}
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
