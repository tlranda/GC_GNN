; ModuleID = 'syr2k_recreations//mmp_syr2k_S_88.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_88.c"
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
  %call702 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1563 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1563, %call2
  %polly.access.call2583 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2583, %call1
  %2 = or i1 %0, %1
  %polly.access.call603 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call603, %call2
  %4 = icmp ule i8* %polly.access.call2583, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call603, %call1
  %8 = icmp ule i8* %polly.access.call1563, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header688, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep889 = getelementptr i8, i8* %call2, i64 %12
  %scevgep888 = getelementptr i8, i8* %call2, i64 %11
  %scevgep887 = getelementptr i8, i8* %call1, i64 %12
  %scevgep886 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep886, %scevgep889
  %bound1 = icmp ult i8* %scevgep888, %scevgep887
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
  br i1 %exitcond18.not.i, label %vector.ph893, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph893:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert900 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat901 = shufflevector <4 x i64> %broadcast.splatinsert900, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body892

vector.body892:                                   ; preds = %vector.body892, %vector.ph893
  %index894 = phi i64 [ 0, %vector.ph893 ], [ %index.next895, %vector.body892 ]
  %vec.ind898 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph893 ], [ %vec.ind.next899, %vector.body892 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind898, %broadcast.splat901
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call702, i64 %indvars.iv7.i, i64 %index894
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next895 = add i64 %index894, 4
  %vec.ind.next899 = add <4 x i64> %vec.ind898, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next895, 80
  br i1 %40, label %for.inc41.i, label %vector.body892, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body892
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph893, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit749.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header485, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1249, label %vector.ph1175

vector.ph1175:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1174

vector.body1174:                                  ; preds = %vector.body1174, %vector.ph1175
  %index1176 = phi i64 [ 0, %vector.ph1175 ], [ %index.next1177, %vector.body1174 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call702, i64 %indvars.iv21.i, i64 %index1176
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1177 = add i64 %index1176, 4
  %46 = icmp eq i64 %index.next1177, %n.vec
  br i1 %46, label %middle.block1172, label %vector.body1174, !llvm.loop !18

middle.block1172:                                 ; preds = %vector.body1174
  %cmp.n1179 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1179, label %for.inc6.i, label %for.body3.i46.preheader1249

for.body3.i46.preheader1249:                      ; preds = %for.body3.i46.preheader, %middle.block1172
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1172 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1249, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1249 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call702, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1172, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call702, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 60
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !31

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 80
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !40

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit509
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header334, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1195 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1195, label %for.body3.i60.preheader1247, label %vector.ph1196

vector.ph1196:                                    ; preds = %for.body3.i60.preheader
  %n.vec1198 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1194

vector.body1194:                                  ; preds = %vector.body1194, %vector.ph1196
  %index1199 = phi i64 [ 0, %vector.ph1196 ], [ %index.next1200, %vector.body1194 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call702, i64 %indvars.iv21.i52, i64 %index1199
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1203 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1203, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1200 = add i64 %index1199, 4
  %57 = icmp eq i64 %index.next1200, %n.vec1198
  br i1 %57, label %middle.block1192, label %vector.body1194, !llvm.loop !54

middle.block1192:                                 ; preds = %vector.body1194
  %cmp.n1202 = icmp eq i64 %indvars.iv21.i52, %n.vec1198
  br i1 %cmp.n1202, label %for.inc6.i63, label %for.body3.i60.preheader1247

for.body3.i60.preheader1247:                      ; preds = %for.body3.i60.preheader, %middle.block1192
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1198, %middle.block1192 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1247, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1247 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call702, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1192, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call702, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 60
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !31

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 80
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !40

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit358
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1221 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1221, label %for.body3.i99.preheader1245, label %vector.ph1222

vector.ph1222:                                    ; preds = %for.body3.i99.preheader
  %n.vec1224 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %vector.ph1222
  %index1225 = phi i64 [ 0, %vector.ph1222 ], [ %index.next1226, %vector.body1220 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call702, i64 %indvars.iv21.i91, i64 %index1225
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1229 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1229, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1226 = add i64 %index1225, 4
  %68 = icmp eq i64 %index.next1226, %n.vec1224
  br i1 %68, label %middle.block1218, label %vector.body1220, !llvm.loop !56

middle.block1218:                                 ; preds = %vector.body1220
  %cmp.n1228 = icmp eq i64 %indvars.iv21.i91, %n.vec1224
  br i1 %cmp.n1228, label %for.inc6.i102, label %for.body3.i99.preheader1245

for.body3.i99.preheader1245:                      ; preds = %for.body3.i99.preheader, %middle.block1218
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1224, %middle.block1218 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1245, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1245 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call702, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1218, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call702, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 60
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !31

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 80
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !40

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call702, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1233 = phi i64 [ %indvar.next1234, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1233, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1235 = icmp ult i64 %88, 4
  br i1 %min.iters.check1235, label %polly.loop_header191.preheader, label %vector.ph1236

vector.ph1236:                                    ; preds = %polly.loop_header
  %n.vec1238 = and i64 %88, -4
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.body1232, %vector.ph1236
  %index1239 = phi i64 [ 0, %vector.ph1236 ], [ %index.next1240, %vector.body1232 ]
  %90 = shl nuw nsw i64 %index1239, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1243 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1243, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1240 = add i64 %index1239, 4
  %95 = icmp eq i64 %index.next1240, %n.vec1238
  br i1 %95, label %middle.block1230, label %vector.body1232, !llvm.loop !67

middle.block1230:                                 ; preds = %vector.body1232
  %cmp.n1242 = icmp eq i64 %88, %n.vec1238
  br i1 %cmp.n1242, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1230
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1238, %middle.block1230 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1230
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond771.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1234 = add i64 %indvar1233, 1
  br i1 %exitcond771.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond770.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond770.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = shl nuw nsw i64 %polly.indvar202, 2
  %98 = shl nsw i64 %polly.indvar202, 4
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond769.not = icmp eq i64 %polly.indvar_next203, 5
  br i1 %exitcond769.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ %97, %polly.loop_header199 ]
  %99 = shl nsw i64 %polly.indvar208, 2
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 15)
  %100 = mul nsw i64 %polly.indvar208, 1920
  %101 = mul nsw i64 %polly.indvar208, 2560
  %indvars.iv.next765 = or i64 %indvars.iv, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next765, i64 15)
  %102 = or i64 %99, 1
  %103 = mul nuw nsw i64 %102, 480
  %104 = mul nuw nsw i64 %102, 640
  %indvars.iv.next765.1 = add nuw nsw i64 %indvars.iv.next765, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next765.1, i64 15)
  %105 = or i64 %99, 2
  %106 = mul nuw nsw i64 %105, 480
  %107 = mul nuw nsw i64 %105, 640
  %indvars.iv.next765.2 = or i64 %indvars.iv, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next765.2, i64 15)
  %108 = or i64 %99, 3
  %109 = mul nuw nsw i64 %108, 480
  %110 = mul nuw nsw i64 %108, 640
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit225.3
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond768.not = icmp eq i64 %polly.indvar_next209, 20
  br i1 %exitcond768.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit225.3, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit225.3 ]
  %111 = shl nuw nsw i64 %polly.indvar214, 3
  %scevgep229 = getelementptr i8, i8* %call1, i64 %111
  %scevgep233 = getelementptr i8, i8* %call2, i64 %111
  %scevgep234 = getelementptr i8, i8* %scevgep233, i64 %100
  %scevgep234235 = bitcast i8* %scevgep234 to double*
  %_p_scalar_236 = load double, double* %scevgep234235, align 8, !alias.scope !66, !noalias !70
  %scevgep242 = getelementptr i8, i8* %scevgep229, i64 %100
  %scevgep242243 = bitcast i8* %scevgep242 to double*
  %_p_scalar_244 = load double, double* %scevgep242243, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223
  %scevgep234.1 = getelementptr i8, i8* %scevgep233, i64 %103
  %scevgep234235.1 = bitcast i8* %scevgep234.1 to double*
  %_p_scalar_236.1 = load double, double* %scevgep234235.1, align 8, !alias.scope !66, !noalias !70
  %scevgep242.1 = getelementptr i8, i8* %scevgep229, i64 %103
  %scevgep242243.1 = bitcast i8* %scevgep242.1 to double*
  %_p_scalar_244.1 = load double, double* %scevgep242243.1, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.1

polly.loop_header223:                             ; preds = %polly.loop_header223, %polly.loop_header211
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next227, %polly.loop_header223 ]
  %112 = add nuw nsw i64 %polly.indvar226, %98
  %113 = mul nuw nsw i64 %112, 480
  %scevgep230 = getelementptr i8, i8* %scevgep229, i64 %113
  %scevgep230231 = bitcast i8* %scevgep230 to double*
  %_p_scalar_232 = load double, double* %scevgep230231, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_236, %_p_scalar_232
  %scevgep238 = getelementptr i8, i8* %scevgep233, i64 %113
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_244, %_p_scalar_240
  %114 = shl i64 %112, 3
  %115 = add nuw nsw i64 %114, %101
  %scevgep245 = getelementptr i8, i8* %call, i64 %115
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_247
  store double %p_add42.i118, double* %scevgep245246, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar226, %smin
  br i1 %exitcond.not, label %polly.loop_exit225, label %polly.loop_header223

polly.loop_header334:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit342
  %indvar1207 = phi i64 [ %indvar.next1208, %polly.loop_exit342 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar337 = phi i64 [ %polly.indvar_next338, %polly.loop_exit342 ], [ 1, %kernel_syr2k.exit ]
  %116 = add i64 %indvar1207, 1
  %117 = mul nuw nsw i64 %polly.indvar337, 640
  %scevgep346 = getelementptr i8, i8* %call, i64 %117
  %min.iters.check1209 = icmp ult i64 %116, 4
  br i1 %min.iters.check1209, label %polly.loop_header340.preheader, label %vector.ph1210

vector.ph1210:                                    ; preds = %polly.loop_header334
  %n.vec1212 = and i64 %116, -4
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1210
  %index1213 = phi i64 [ 0, %vector.ph1210 ], [ %index.next1214, %vector.body1206 ]
  %118 = shl nuw nsw i64 %index1213, 3
  %119 = getelementptr i8, i8* %scevgep346, i64 %118
  %120 = bitcast i8* %119 to <4 x double>*
  %wide.load1217 = load <4 x double>, <4 x double>* %120, align 8, !alias.scope !72, !noalias !74
  %121 = fmul fast <4 x double> %wide.load1217, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %122 = bitcast i8* %119 to <4 x double>*
  store <4 x double> %121, <4 x double>* %122, align 8, !alias.scope !72, !noalias !74
  %index.next1214 = add i64 %index1213, 4
  %123 = icmp eq i64 %index.next1214, %n.vec1212
  br i1 %123, label %middle.block1204, label %vector.body1206, !llvm.loop !77

middle.block1204:                                 ; preds = %vector.body1206
  %cmp.n1216 = icmp eq i64 %116, %n.vec1212
  br i1 %cmp.n1216, label %polly.loop_exit342, label %polly.loop_header340.preheader

polly.loop_header340.preheader:                   ; preds = %polly.loop_header334, %middle.block1204
  %polly.indvar343.ph = phi i64 [ 0, %polly.loop_header334 ], [ %n.vec1212, %middle.block1204 ]
  br label %polly.loop_header340

polly.loop_exit342:                               ; preds = %polly.loop_header340, %middle.block1204
  %polly.indvar_next338 = add nuw nsw i64 %polly.indvar337, 1
  %exitcond783.not = icmp eq i64 %polly.indvar_next338, 80
  %indvar.next1208 = add i64 %indvar1207, 1
  br i1 %exitcond783.not, label %polly.loop_header350, label %polly.loop_header334

polly.loop_header340:                             ; preds = %polly.loop_header340.preheader, %polly.loop_header340
  %polly.indvar343 = phi i64 [ %polly.indvar_next344, %polly.loop_header340 ], [ %polly.indvar343.ph, %polly.loop_header340.preheader ]
  %124 = shl nuw nsw i64 %polly.indvar343, 3
  %scevgep347 = getelementptr i8, i8* %scevgep346, i64 %124
  %scevgep347348 = bitcast i8* %scevgep347 to double*
  %_p_scalar_349 = load double, double* %scevgep347348, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_349, 1.200000e+00
  store double %p_mul.i57, double* %scevgep347348, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next344 = add nuw nsw i64 %polly.indvar343, 1
  %exitcond782.not = icmp eq i64 %polly.indvar_next344, %polly.indvar337
  br i1 %exitcond782.not, label %polly.loop_exit342, label %polly.loop_header340, !llvm.loop !78

polly.loop_header350:                             ; preds = %polly.loop_exit342, %polly.loop_exit358
  %polly.indvar353 = phi i64 [ %polly.indvar_next354, %polly.loop_exit358 ], [ 0, %polly.loop_exit342 ]
  %125 = shl nuw nsw i64 %polly.indvar353, 2
  %126 = shl nsw i64 %polly.indvar353, 4
  br label %polly.loop_header356

polly.loop_exit358:                               ; preds = %polly.loop_exit364
  %polly.indvar_next354 = add nuw nsw i64 %polly.indvar353, 1
  %exitcond781.not = icmp eq i64 %polly.indvar_next354, 5
  br i1 %exitcond781.not, label %kernel_syr2k.exit90, label %polly.loop_header350

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.loop_header350
  %indvars.iv772 = phi i64 [ %indvars.iv.next773, %polly.loop_exit364 ], [ 0, %polly.loop_header350 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ %125, %polly.loop_header350 ]
  %127 = shl nsw i64 %polly.indvar359, 2
  %smin776 = call i64 @llvm.smin.i64(i64 %indvars.iv772, i64 15)
  %128 = mul nsw i64 %polly.indvar359, 1920
  %129 = mul nsw i64 %polly.indvar359, 2560
  %indvars.iv.next775 = or i64 %indvars.iv772, 1
  %smin776.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next775, i64 15)
  %130 = or i64 %127, 1
  %131 = mul nuw nsw i64 %130, 480
  %132 = mul nuw nsw i64 %130, 640
  %indvars.iv.next775.1 = add nuw nsw i64 %indvars.iv.next775, 1
  %smin776.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next775.1, i64 15)
  %133 = or i64 %127, 2
  %134 = mul nuw nsw i64 %133, 480
  %135 = mul nuw nsw i64 %133, 640
  %indvars.iv.next775.2 = or i64 %indvars.iv772, 3
  %smin776.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next775.2, i64 15)
  %136 = or i64 %127, 3
  %137 = mul nuw nsw i64 %136, 480
  %138 = mul nuw nsw i64 %136, 640
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_exit376.3
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %indvars.iv.next773 = add nuw nsw i64 %indvars.iv772, 4
  %exitcond780.not = icmp eq i64 %polly.indvar_next360, 20
  br i1 %exitcond780.not, label %polly.loop_exit358, label %polly.loop_header356

polly.loop_header362:                             ; preds = %polly.loop_exit376.3, %polly.loop_header356
  %polly.indvar365 = phi i64 [ 0, %polly.loop_header356 ], [ %polly.indvar_next366, %polly.loop_exit376.3 ]
  %139 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep380 = getelementptr i8, i8* %call1, i64 %139
  %scevgep384 = getelementptr i8, i8* %call2, i64 %139
  %scevgep385 = getelementptr i8, i8* %scevgep384, i64 %128
  %scevgep385386 = bitcast i8* %scevgep385 to double*
  %_p_scalar_387 = load double, double* %scevgep385386, align 8, !alias.scope !76, !noalias !79
  %scevgep393 = getelementptr i8, i8* %scevgep380, i64 %128
  %scevgep393394 = bitcast i8* %scevgep393 to double*
  %_p_scalar_395 = load double, double* %scevgep393394, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_header374
  %scevgep385.1 = getelementptr i8, i8* %scevgep384, i64 %131
  %scevgep385386.1 = bitcast i8* %scevgep385.1 to double*
  %_p_scalar_387.1 = load double, double* %scevgep385386.1, align 8, !alias.scope !76, !noalias !79
  %scevgep393.1 = getelementptr i8, i8* %scevgep380, i64 %131
  %scevgep393394.1 = bitcast i8* %scevgep393.1 to double*
  %_p_scalar_395.1 = load double, double* %scevgep393394.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header374.1

polly.loop_header374:                             ; preds = %polly.loop_header374, %polly.loop_header362
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header362 ], [ %polly.indvar_next378, %polly.loop_header374 ]
  %140 = add nuw nsw i64 %polly.indvar377, %126
  %141 = mul nuw nsw i64 %140, 480
  %scevgep381 = getelementptr i8, i8* %scevgep380, i64 %141
  %scevgep381382 = bitcast i8* %scevgep381 to double*
  %_p_scalar_383 = load double, double* %scevgep381382, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_387, %_p_scalar_383
  %scevgep389 = getelementptr i8, i8* %scevgep384, i64 %141
  %scevgep389390 = bitcast i8* %scevgep389 to double*
  %_p_scalar_391 = load double, double* %scevgep389390, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_395, %_p_scalar_391
  %142 = shl i64 %140, 3
  %143 = add nuw nsw i64 %142, %129
  %scevgep396 = getelementptr i8, i8* %call, i64 %143
  %scevgep396397 = bitcast i8* %scevgep396 to double*
  %_p_scalar_398 = load double, double* %scevgep396397, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_398
  store double %p_add42.i79, double* %scevgep396397, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond777.not = icmp eq i64 %polly.indvar377, %smin776
  br i1 %exitcond777.not, label %polly.loop_exit376, label %polly.loop_header374

polly.loop_header485:                             ; preds = %init_array.exit, %polly.loop_exit493
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit493 ], [ 0, %init_array.exit ]
  %polly.indvar488 = phi i64 [ %polly.indvar_next489, %polly.loop_exit493 ], [ 1, %init_array.exit ]
  %144 = add i64 %indvar, 1
  %145 = mul nuw nsw i64 %polly.indvar488, 640
  %scevgep497 = getelementptr i8, i8* %call, i64 %145
  %min.iters.check1183 = icmp ult i64 %144, 4
  br i1 %min.iters.check1183, label %polly.loop_header491.preheader, label %vector.ph1184

vector.ph1184:                                    ; preds = %polly.loop_header485
  %n.vec1186 = and i64 %144, -4
  br label %vector.body1182

vector.body1182:                                  ; preds = %vector.body1182, %vector.ph1184
  %index1187 = phi i64 [ 0, %vector.ph1184 ], [ %index.next1188, %vector.body1182 ]
  %146 = shl nuw nsw i64 %index1187, 3
  %147 = getelementptr i8, i8* %scevgep497, i64 %146
  %148 = bitcast i8* %147 to <4 x double>*
  %wide.load1191 = load <4 x double>, <4 x double>* %148, align 8, !alias.scope !81, !noalias !83
  %149 = fmul fast <4 x double> %wide.load1191, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %150 = bitcast i8* %147 to <4 x double>*
  store <4 x double> %149, <4 x double>* %150, align 8, !alias.scope !81, !noalias !83
  %index.next1188 = add i64 %index1187, 4
  %151 = icmp eq i64 %index.next1188, %n.vec1186
  br i1 %151, label %middle.block1180, label %vector.body1182, !llvm.loop !86

middle.block1180:                                 ; preds = %vector.body1182
  %cmp.n1190 = icmp eq i64 %144, %n.vec1186
  br i1 %cmp.n1190, label %polly.loop_exit493, label %polly.loop_header491.preheader

polly.loop_header491.preheader:                   ; preds = %polly.loop_header485, %middle.block1180
  %polly.indvar494.ph = phi i64 [ 0, %polly.loop_header485 ], [ %n.vec1186, %middle.block1180 ]
  br label %polly.loop_header491

polly.loop_exit493:                               ; preds = %polly.loop_header491, %middle.block1180
  %polly.indvar_next489 = add nuw nsw i64 %polly.indvar488, 1
  %exitcond795.not = icmp eq i64 %polly.indvar_next489, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond795.not, label %polly.loop_header501, label %polly.loop_header485

polly.loop_header491:                             ; preds = %polly.loop_header491.preheader, %polly.loop_header491
  %polly.indvar494 = phi i64 [ %polly.indvar_next495, %polly.loop_header491 ], [ %polly.indvar494.ph, %polly.loop_header491.preheader ]
  %152 = shl nuw nsw i64 %polly.indvar494, 3
  %scevgep498 = getelementptr i8, i8* %scevgep497, i64 %152
  %scevgep498499 = bitcast i8* %scevgep498 to double*
  %_p_scalar_500 = load double, double* %scevgep498499, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_500, 1.200000e+00
  store double %p_mul.i, double* %scevgep498499, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next495 = add nuw nsw i64 %polly.indvar494, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next495, %polly.indvar488
  br i1 %exitcond794.not, label %polly.loop_exit493, label %polly.loop_header491, !llvm.loop !87

polly.loop_header501:                             ; preds = %polly.loop_exit493, %polly.loop_exit509
  %polly.indvar504 = phi i64 [ %polly.indvar_next505, %polly.loop_exit509 ], [ 0, %polly.loop_exit493 ]
  %153 = shl nuw nsw i64 %polly.indvar504, 2
  %154 = shl nsw i64 %polly.indvar504, 4
  br label %polly.loop_header507

polly.loop_exit509:                               ; preds = %polly.loop_exit515
  %polly.indvar_next505 = add nuw nsw i64 %polly.indvar504, 1
  %exitcond793.not = icmp eq i64 %polly.indvar_next505, 5
  br i1 %exitcond793.not, label %kernel_syr2k.exit, label %polly.loop_header501

polly.loop_header507:                             ; preds = %polly.loop_exit515, %polly.loop_header501
  %indvars.iv784 = phi i64 [ %indvars.iv.next785, %polly.loop_exit515 ], [ 0, %polly.loop_header501 ]
  %polly.indvar510 = phi i64 [ %polly.indvar_next511, %polly.loop_exit515 ], [ %153, %polly.loop_header501 ]
  %155 = shl nsw i64 %polly.indvar510, 2
  %smin788 = call i64 @llvm.smin.i64(i64 %indvars.iv784, i64 15)
  %156 = mul nsw i64 %polly.indvar510, 1920
  %157 = mul nsw i64 %polly.indvar510, 2560
  %indvars.iv.next787 = or i64 %indvars.iv784, 1
  %smin788.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next787, i64 15)
  %158 = or i64 %155, 1
  %159 = mul nuw nsw i64 %158, 480
  %160 = mul nuw nsw i64 %158, 640
  %indvars.iv.next787.1 = add nuw nsw i64 %indvars.iv.next787, 1
  %smin788.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next787.1, i64 15)
  %161 = or i64 %155, 2
  %162 = mul nuw nsw i64 %161, 480
  %163 = mul nuw nsw i64 %161, 640
  %indvars.iv.next787.2 = or i64 %indvars.iv784, 3
  %smin788.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next787.2, i64 15)
  %164 = or i64 %155, 3
  %165 = mul nuw nsw i64 %164, 480
  %166 = mul nuw nsw i64 %164, 640
  br label %polly.loop_header513

polly.loop_exit515:                               ; preds = %polly.loop_exit527.3
  %polly.indvar_next511 = add nuw nsw i64 %polly.indvar510, 1
  %indvars.iv.next785 = add nuw nsw i64 %indvars.iv784, 4
  %exitcond792.not = icmp eq i64 %polly.indvar_next511, 20
  br i1 %exitcond792.not, label %polly.loop_exit509, label %polly.loop_header507

polly.loop_header513:                             ; preds = %polly.loop_exit527.3, %polly.loop_header507
  %polly.indvar516 = phi i64 [ 0, %polly.loop_header507 ], [ %polly.indvar_next517, %polly.loop_exit527.3 ]
  %167 = shl nuw nsw i64 %polly.indvar516, 3
  %scevgep531 = getelementptr i8, i8* %call1, i64 %167
  %scevgep535 = getelementptr i8, i8* %call2, i64 %167
  %scevgep536 = getelementptr i8, i8* %scevgep535, i64 %156
  %scevgep536537 = bitcast i8* %scevgep536 to double*
  %_p_scalar_538 = load double, double* %scevgep536537, align 8, !alias.scope !85, !noalias !88
  %scevgep544 = getelementptr i8, i8* %scevgep531, i64 %156
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_header525
  %scevgep536.1 = getelementptr i8, i8* %scevgep535, i64 %159
  %scevgep536537.1 = bitcast i8* %scevgep536.1 to double*
  %_p_scalar_538.1 = load double, double* %scevgep536537.1, align 8, !alias.scope !85, !noalias !88
  %scevgep544.1 = getelementptr i8, i8* %scevgep531, i64 %159
  %scevgep544545.1 = bitcast i8* %scevgep544.1 to double*
  %_p_scalar_546.1 = load double, double* %scevgep544545.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header525.1

polly.loop_header525:                             ; preds = %polly.loop_header525, %polly.loop_header513
  %polly.indvar528 = phi i64 [ 0, %polly.loop_header513 ], [ %polly.indvar_next529, %polly.loop_header525 ]
  %168 = add nuw nsw i64 %polly.indvar528, %154
  %169 = mul nuw nsw i64 %168, 480
  %scevgep532 = getelementptr i8, i8* %scevgep531, i64 %169
  %scevgep532533 = bitcast i8* %scevgep532 to double*
  %_p_scalar_534 = load double, double* %scevgep532533, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_538, %_p_scalar_534
  %scevgep540 = getelementptr i8, i8* %scevgep535, i64 %169
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_546, %_p_scalar_542
  %170 = shl i64 %168, 3
  %171 = add nuw nsw i64 %170, %157
  %scevgep547 = getelementptr i8, i8* %call, i64 %171
  %scevgep547548 = bitcast i8* %scevgep547 to double*
  %_p_scalar_549 = load double, double* %scevgep547548, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_549
  store double %p_add42.i, double* %scevgep547548, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %exitcond789.not = icmp eq i64 %polly.indvar528, %smin788
  br i1 %exitcond789.not, label %polly.loop_exit527, label %polly.loop_header525

polly.loop_header688:                             ; preds = %entry, %polly.loop_exit696
  %polly.indvar691 = phi i64 [ %polly.indvar_next692, %polly.loop_exit696 ], [ 0, %entry ]
  %172 = mul nuw nsw i64 %polly.indvar691, 640
  %173 = trunc i64 %polly.indvar691 to i32
  %broadcast.splatinsert914 = insertelement <4 x i32> poison, i32 %173, i32 0
  %broadcast.splat915 = shufflevector <4 x i32> %broadcast.splatinsert914, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body904

vector.body904:                                   ; preds = %vector.body904, %polly.loop_header688
  %index906 = phi i64 [ 0, %polly.loop_header688 ], [ %index.next907, %vector.body904 ]
  %vec.ind912 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header688 ], [ %vec.ind.next913, %vector.body904 ]
  %174 = mul <4 x i32> %vec.ind912, %broadcast.splat915
  %175 = add <4 x i32> %174, <i32 3, i32 3, i32 3, i32 3>
  %176 = urem <4 x i32> %175, <i32 80, i32 80, i32 80, i32 80>
  %177 = sitofp <4 x i32> %176 to <4 x double>
  %178 = fmul fast <4 x double> %177, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %179 = shl i64 %index906, 3
  %180 = add nuw nsw i64 %179, %172
  %181 = getelementptr i8, i8* %call, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %178, <4 x double>* %182, align 8, !alias.scope !90, !noalias !92
  %index.next907 = add i64 %index906, 4
  %vec.ind.next913 = add <4 x i32> %vec.ind912, <i32 4, i32 4, i32 4, i32 4>
  %183 = icmp eq i64 %index.next907, 32
  br i1 %183, label %polly.loop_exit696, label %vector.body904, !llvm.loop !95

polly.loop_exit696:                               ; preds = %vector.body904
  %polly.indvar_next692 = add nuw nsw i64 %polly.indvar691, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next692, 32
  br i1 %exitcond815.not, label %polly.loop_header688.1, label %polly.loop_header688

polly.loop_header715:                             ; preds = %polly.loop_exit696.2.2, %polly.loop_exit723
  %polly.indvar718 = phi i64 [ %polly.indvar_next719, %polly.loop_exit723 ], [ 0, %polly.loop_exit696.2.2 ]
  %184 = mul nuw nsw i64 %polly.indvar718, 480
  %185 = trunc i64 %polly.indvar718 to i32
  %broadcast.splatinsert1028 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat1029 = shufflevector <4 x i32> %broadcast.splatinsert1028, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %polly.loop_header715
  %index1020 = phi i64 [ 0, %polly.loop_header715 ], [ %index.next1021, %vector.body1018 ]
  %vec.ind1026 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header715 ], [ %vec.ind.next1027, %vector.body1018 ]
  %186 = mul <4 x i32> %vec.ind1026, %broadcast.splat1029
  %187 = add <4 x i32> %186, <i32 2, i32 2, i32 2, i32 2>
  %188 = urem <4 x i32> %187, <i32 60, i32 60, i32 60, i32 60>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %191 = shl i64 %index1020, 3
  %192 = add i64 %191, %184
  %193 = getelementptr i8, i8* %call2, i64 %192
  %194 = bitcast i8* %193 to <4 x double>*
  store <4 x double> %190, <4 x double>* %194, align 8, !alias.scope !94, !noalias !96
  %index.next1021 = add i64 %index1020, 4
  %vec.ind.next1027 = add <4 x i32> %vec.ind1026, <i32 4, i32 4, i32 4, i32 4>
  %195 = icmp eq i64 %index.next1021, 32
  br i1 %195, label %polly.loop_exit723, label %vector.body1018, !llvm.loop !97

polly.loop_exit723:                               ; preds = %vector.body1018
  %polly.indvar_next719 = add nuw nsw i64 %polly.indvar718, 1
  %exitcond806.not = icmp eq i64 %polly.indvar_next719, 32
  br i1 %exitcond806.not, label %polly.loop_header715.1, label %polly.loop_header715

polly.loop_header741:                             ; preds = %polly.loop_exit723.1.2, %polly.loop_exit749
  %polly.indvar744 = phi i64 [ %polly.indvar_next745, %polly.loop_exit749 ], [ 0, %polly.loop_exit723.1.2 ]
  %196 = mul nuw nsw i64 %polly.indvar744, 480
  %197 = trunc i64 %polly.indvar744 to i32
  %broadcast.splatinsert1106 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat1107 = shufflevector <4 x i32> %broadcast.splatinsert1106, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1096

vector.body1096:                                  ; preds = %vector.body1096, %polly.loop_header741
  %index1098 = phi i64 [ 0, %polly.loop_header741 ], [ %index.next1099, %vector.body1096 ]
  %vec.ind1104 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header741 ], [ %vec.ind.next1105, %vector.body1096 ]
  %198 = mul <4 x i32> %vec.ind1104, %broadcast.splat1107
  %199 = add <4 x i32> %198, <i32 1, i32 1, i32 1, i32 1>
  %200 = urem <4 x i32> %199, <i32 80, i32 80, i32 80, i32 80>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %203 = shl i64 %index1098, 3
  %204 = add i64 %203, %196
  %205 = getelementptr i8, i8* %call1, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %202, <4 x double>* %206, align 8, !alias.scope !93, !noalias !98
  %index.next1099 = add i64 %index1098, 4
  %vec.ind.next1105 = add <4 x i32> %vec.ind1104, <i32 4, i32 4, i32 4, i32 4>
  %207 = icmp eq i64 %index.next1099, 32
  br i1 %207, label %polly.loop_exit749, label %vector.body1096, !llvm.loop !99

polly.loop_exit749:                               ; preds = %vector.body1096
  %polly.indvar_next745 = add nuw nsw i64 %polly.indvar744, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next745, 32
  br i1 %exitcond800.not, label %polly.loop_header741.1, label %polly.loop_header741

polly.loop_header223.1:                           ; preds = %polly.loop_header223.1, %polly.loop_exit225
  %polly.indvar226.1 = phi i64 [ 0, %polly.loop_exit225 ], [ %polly.indvar_next227.1, %polly.loop_header223.1 ]
  %208 = add nuw nsw i64 %polly.indvar226.1, %98
  %209 = mul nuw nsw i64 %208, 480
  %scevgep230.1 = getelementptr i8, i8* %scevgep229, i64 %209
  %scevgep230231.1 = bitcast i8* %scevgep230.1 to double*
  %_p_scalar_232.1 = load double, double* %scevgep230231.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_236.1, %_p_scalar_232.1
  %scevgep238.1 = getelementptr i8, i8* %scevgep233, i64 %209
  %scevgep238239.1 = bitcast i8* %scevgep238.1 to double*
  %_p_scalar_240.1 = load double, double* %scevgep238239.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1 = fmul fast double %_p_scalar_244.1, %_p_scalar_240.1
  %210 = shl i64 %208, 3
  %211 = add nuw nsw i64 %210, %104
  %scevgep245.1 = getelementptr i8, i8* %call, i64 %211
  %scevgep245246.1 = bitcast i8* %scevgep245.1 to double*
  %_p_scalar_247.1 = load double, double* %scevgep245246.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_247.1
  store double %p_add42.i118.1, double* %scevgep245246.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar226.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.1

polly.loop_exit225.1:                             ; preds = %polly.loop_header223.1
  %scevgep234.2 = getelementptr i8, i8* %scevgep233, i64 %106
  %scevgep234235.2 = bitcast i8* %scevgep234.2 to double*
  %_p_scalar_236.2 = load double, double* %scevgep234235.2, align 8, !alias.scope !66, !noalias !70
  %scevgep242.2 = getelementptr i8, i8* %scevgep229, i64 %106
  %scevgep242243.2 = bitcast i8* %scevgep242.2 to double*
  %_p_scalar_244.2 = load double, double* %scevgep242243.2, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.2

polly.loop_header223.2:                           ; preds = %polly.loop_header223.2, %polly.loop_exit225.1
  %polly.indvar226.2 = phi i64 [ 0, %polly.loop_exit225.1 ], [ %polly.indvar_next227.2, %polly.loop_header223.2 ]
  %212 = add nuw nsw i64 %polly.indvar226.2, %98
  %213 = mul nuw nsw i64 %212, 480
  %scevgep230.2 = getelementptr i8, i8* %scevgep229, i64 %213
  %scevgep230231.2 = bitcast i8* %scevgep230.2 to double*
  %_p_scalar_232.2 = load double, double* %scevgep230231.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2 = fmul fast double %_p_scalar_236.2, %_p_scalar_232.2
  %scevgep238.2 = getelementptr i8, i8* %scevgep233, i64 %213
  %scevgep238239.2 = bitcast i8* %scevgep238.2 to double*
  %_p_scalar_240.2 = load double, double* %scevgep238239.2, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.2 = fmul fast double %_p_scalar_244.2, %_p_scalar_240.2
  %214 = shl i64 %212, 3
  %215 = add nuw nsw i64 %214, %107
  %scevgep245.2 = getelementptr i8, i8* %call, i64 %215
  %scevgep245246.2 = bitcast i8* %scevgep245.2 to double*
  %_p_scalar_247.2 = load double, double* %scevgep245246.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_247.2
  store double %p_add42.i118.2, double* %scevgep245246.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.2 = add nuw nsw i64 %polly.indvar226.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar226.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.2

polly.loop_exit225.2:                             ; preds = %polly.loop_header223.2
  %scevgep234.3 = getelementptr i8, i8* %scevgep233, i64 %109
  %scevgep234235.3 = bitcast i8* %scevgep234.3 to double*
  %_p_scalar_236.3 = load double, double* %scevgep234235.3, align 8, !alias.scope !66, !noalias !70
  %scevgep242.3 = getelementptr i8, i8* %scevgep229, i64 %109
  %scevgep242243.3 = bitcast i8* %scevgep242.3 to double*
  %_p_scalar_244.3 = load double, double* %scevgep242243.3, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.3

polly.loop_header223.3:                           ; preds = %polly.loop_header223.3, %polly.loop_exit225.2
  %polly.indvar226.3 = phi i64 [ 0, %polly.loop_exit225.2 ], [ %polly.indvar_next227.3, %polly.loop_header223.3 ]
  %216 = add nuw nsw i64 %polly.indvar226.3, %98
  %217 = mul nuw nsw i64 %216, 480
  %scevgep230.3 = getelementptr i8, i8* %scevgep229, i64 %217
  %scevgep230231.3 = bitcast i8* %scevgep230.3 to double*
  %_p_scalar_232.3 = load double, double* %scevgep230231.3, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.3 = fmul fast double %_p_scalar_236.3, %_p_scalar_232.3
  %scevgep238.3 = getelementptr i8, i8* %scevgep233, i64 %217
  %scevgep238239.3 = bitcast i8* %scevgep238.3 to double*
  %_p_scalar_240.3 = load double, double* %scevgep238239.3, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.3 = fmul fast double %_p_scalar_244.3, %_p_scalar_240.3
  %218 = shl i64 %216, 3
  %219 = add nuw nsw i64 %218, %110
  %scevgep245.3 = getelementptr i8, i8* %call, i64 %219
  %scevgep245246.3 = bitcast i8* %scevgep245.3 to double*
  %_p_scalar_247.3 = load double, double* %scevgep245246.3, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_247.3
  store double %p_add42.i118.3, double* %scevgep245246.3, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.3 = add nuw nsw i64 %polly.indvar226.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar226.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit225.3, label %polly.loop_header223.3

polly.loop_exit225.3:                             ; preds = %polly.loop_header223.3
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond767.not = icmp eq i64 %polly.indvar_next215, 60
  br i1 %exitcond767.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header374.1:                           ; preds = %polly.loop_header374.1, %polly.loop_exit376
  %polly.indvar377.1 = phi i64 [ 0, %polly.loop_exit376 ], [ %polly.indvar_next378.1, %polly.loop_header374.1 ]
  %220 = add nuw nsw i64 %polly.indvar377.1, %126
  %221 = mul nuw nsw i64 %220, 480
  %scevgep381.1 = getelementptr i8, i8* %scevgep380, i64 %221
  %scevgep381382.1 = bitcast i8* %scevgep381.1 to double*
  %_p_scalar_383.1 = load double, double* %scevgep381382.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_387.1, %_p_scalar_383.1
  %scevgep389.1 = getelementptr i8, i8* %scevgep384, i64 %221
  %scevgep389390.1 = bitcast i8* %scevgep389.1 to double*
  %_p_scalar_391.1 = load double, double* %scevgep389390.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1 = fmul fast double %_p_scalar_395.1, %_p_scalar_391.1
  %222 = shl i64 %220, 3
  %223 = add nuw nsw i64 %222, %132
  %scevgep396.1 = getelementptr i8, i8* %call, i64 %223
  %scevgep396397.1 = bitcast i8* %scevgep396.1 to double*
  %_p_scalar_398.1 = load double, double* %scevgep396397.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_398.1
  store double %p_add42.i79.1, double* %scevgep396397.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next378.1 = add nuw nsw i64 %polly.indvar377.1, 1
  %exitcond777.1.not = icmp eq i64 %polly.indvar377.1, %smin776.1
  br i1 %exitcond777.1.not, label %polly.loop_exit376.1, label %polly.loop_header374.1

polly.loop_exit376.1:                             ; preds = %polly.loop_header374.1
  %scevgep385.2 = getelementptr i8, i8* %scevgep384, i64 %134
  %scevgep385386.2 = bitcast i8* %scevgep385.2 to double*
  %_p_scalar_387.2 = load double, double* %scevgep385386.2, align 8, !alias.scope !76, !noalias !79
  %scevgep393.2 = getelementptr i8, i8* %scevgep380, i64 %134
  %scevgep393394.2 = bitcast i8* %scevgep393.2 to double*
  %_p_scalar_395.2 = load double, double* %scevgep393394.2, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header374.2

polly.loop_header374.2:                           ; preds = %polly.loop_header374.2, %polly.loop_exit376.1
  %polly.indvar377.2 = phi i64 [ 0, %polly.loop_exit376.1 ], [ %polly.indvar_next378.2, %polly.loop_header374.2 ]
  %224 = add nuw nsw i64 %polly.indvar377.2, %126
  %225 = mul nuw nsw i64 %224, 480
  %scevgep381.2 = getelementptr i8, i8* %scevgep380, i64 %225
  %scevgep381382.2 = bitcast i8* %scevgep381.2 to double*
  %_p_scalar_383.2 = load double, double* %scevgep381382.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2 = fmul fast double %_p_scalar_387.2, %_p_scalar_383.2
  %scevgep389.2 = getelementptr i8, i8* %scevgep384, i64 %225
  %scevgep389390.2 = bitcast i8* %scevgep389.2 to double*
  %_p_scalar_391.2 = load double, double* %scevgep389390.2, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.2 = fmul fast double %_p_scalar_395.2, %_p_scalar_391.2
  %226 = shl i64 %224, 3
  %227 = add nuw nsw i64 %226, %135
  %scevgep396.2 = getelementptr i8, i8* %call, i64 %227
  %scevgep396397.2 = bitcast i8* %scevgep396.2 to double*
  %_p_scalar_398.2 = load double, double* %scevgep396397.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_398.2
  store double %p_add42.i79.2, double* %scevgep396397.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next378.2 = add nuw nsw i64 %polly.indvar377.2, 1
  %exitcond777.2.not = icmp eq i64 %polly.indvar377.2, %smin776.2
  br i1 %exitcond777.2.not, label %polly.loop_exit376.2, label %polly.loop_header374.2

polly.loop_exit376.2:                             ; preds = %polly.loop_header374.2
  %scevgep385.3 = getelementptr i8, i8* %scevgep384, i64 %137
  %scevgep385386.3 = bitcast i8* %scevgep385.3 to double*
  %_p_scalar_387.3 = load double, double* %scevgep385386.3, align 8, !alias.scope !76, !noalias !79
  %scevgep393.3 = getelementptr i8, i8* %scevgep380, i64 %137
  %scevgep393394.3 = bitcast i8* %scevgep393.3 to double*
  %_p_scalar_395.3 = load double, double* %scevgep393394.3, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header374.3

polly.loop_header374.3:                           ; preds = %polly.loop_header374.3, %polly.loop_exit376.2
  %polly.indvar377.3 = phi i64 [ 0, %polly.loop_exit376.2 ], [ %polly.indvar_next378.3, %polly.loop_header374.3 ]
  %228 = add nuw nsw i64 %polly.indvar377.3, %126
  %229 = mul nuw nsw i64 %228, 480
  %scevgep381.3 = getelementptr i8, i8* %scevgep380, i64 %229
  %scevgep381382.3 = bitcast i8* %scevgep381.3 to double*
  %_p_scalar_383.3 = load double, double* %scevgep381382.3, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.3 = fmul fast double %_p_scalar_387.3, %_p_scalar_383.3
  %scevgep389.3 = getelementptr i8, i8* %scevgep384, i64 %229
  %scevgep389390.3 = bitcast i8* %scevgep389.3 to double*
  %_p_scalar_391.3 = load double, double* %scevgep389390.3, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.3 = fmul fast double %_p_scalar_395.3, %_p_scalar_391.3
  %230 = shl i64 %228, 3
  %231 = add nuw nsw i64 %230, %138
  %scevgep396.3 = getelementptr i8, i8* %call, i64 %231
  %scevgep396397.3 = bitcast i8* %scevgep396.3 to double*
  %_p_scalar_398.3 = load double, double* %scevgep396397.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_398.3
  store double %p_add42.i79.3, double* %scevgep396397.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next378.3 = add nuw nsw i64 %polly.indvar377.3, 1
  %exitcond777.3.not = icmp eq i64 %polly.indvar377.3, %smin776.3
  br i1 %exitcond777.3.not, label %polly.loop_exit376.3, label %polly.loop_header374.3

polly.loop_exit376.3:                             ; preds = %polly.loop_header374.3
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next366, 60
  br i1 %exitcond779.not, label %polly.loop_exit364, label %polly.loop_header362

polly.loop_header525.1:                           ; preds = %polly.loop_header525.1, %polly.loop_exit527
  %polly.indvar528.1 = phi i64 [ 0, %polly.loop_exit527 ], [ %polly.indvar_next529.1, %polly.loop_header525.1 ]
  %232 = add nuw nsw i64 %polly.indvar528.1, %154
  %233 = mul nuw nsw i64 %232, 480
  %scevgep532.1 = getelementptr i8, i8* %scevgep531, i64 %233
  %scevgep532533.1 = bitcast i8* %scevgep532.1 to double*
  %_p_scalar_534.1 = load double, double* %scevgep532533.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_538.1, %_p_scalar_534.1
  %scevgep540.1 = getelementptr i8, i8* %scevgep535, i64 %233
  %scevgep540541.1 = bitcast i8* %scevgep540.1 to double*
  %_p_scalar_542.1 = load double, double* %scevgep540541.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1 = fmul fast double %_p_scalar_546.1, %_p_scalar_542.1
  %234 = shl i64 %232, 3
  %235 = add nuw nsw i64 %234, %160
  %scevgep547.1 = getelementptr i8, i8* %call, i64 %235
  %scevgep547548.1 = bitcast i8* %scevgep547.1 to double*
  %_p_scalar_549.1 = load double, double* %scevgep547548.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_549.1
  store double %p_add42.i.1, double* %scevgep547548.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next529.1 = add nuw nsw i64 %polly.indvar528.1, 1
  %exitcond789.1.not = icmp eq i64 %polly.indvar528.1, %smin788.1
  br i1 %exitcond789.1.not, label %polly.loop_exit527.1, label %polly.loop_header525.1

polly.loop_exit527.1:                             ; preds = %polly.loop_header525.1
  %scevgep536.2 = getelementptr i8, i8* %scevgep535, i64 %162
  %scevgep536537.2 = bitcast i8* %scevgep536.2 to double*
  %_p_scalar_538.2 = load double, double* %scevgep536537.2, align 8, !alias.scope !85, !noalias !88
  %scevgep544.2 = getelementptr i8, i8* %scevgep531, i64 %162
  %scevgep544545.2 = bitcast i8* %scevgep544.2 to double*
  %_p_scalar_546.2 = load double, double* %scevgep544545.2, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header525.2

polly.loop_header525.2:                           ; preds = %polly.loop_header525.2, %polly.loop_exit527.1
  %polly.indvar528.2 = phi i64 [ 0, %polly.loop_exit527.1 ], [ %polly.indvar_next529.2, %polly.loop_header525.2 ]
  %236 = add nuw nsw i64 %polly.indvar528.2, %154
  %237 = mul nuw nsw i64 %236, 480
  %scevgep532.2 = getelementptr i8, i8* %scevgep531, i64 %237
  %scevgep532533.2 = bitcast i8* %scevgep532.2 to double*
  %_p_scalar_534.2 = load double, double* %scevgep532533.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2 = fmul fast double %_p_scalar_538.2, %_p_scalar_534.2
  %scevgep540.2 = getelementptr i8, i8* %scevgep535, i64 %237
  %scevgep540541.2 = bitcast i8* %scevgep540.2 to double*
  %_p_scalar_542.2 = load double, double* %scevgep540541.2, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.2 = fmul fast double %_p_scalar_546.2, %_p_scalar_542.2
  %238 = shl i64 %236, 3
  %239 = add nuw nsw i64 %238, %163
  %scevgep547.2 = getelementptr i8, i8* %call, i64 %239
  %scevgep547548.2 = bitcast i8* %scevgep547.2 to double*
  %_p_scalar_549.2 = load double, double* %scevgep547548.2, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_549.2
  store double %p_add42.i.2, double* %scevgep547548.2, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next529.2 = add nuw nsw i64 %polly.indvar528.2, 1
  %exitcond789.2.not = icmp eq i64 %polly.indvar528.2, %smin788.2
  br i1 %exitcond789.2.not, label %polly.loop_exit527.2, label %polly.loop_header525.2

polly.loop_exit527.2:                             ; preds = %polly.loop_header525.2
  %scevgep536.3 = getelementptr i8, i8* %scevgep535, i64 %165
  %scevgep536537.3 = bitcast i8* %scevgep536.3 to double*
  %_p_scalar_538.3 = load double, double* %scevgep536537.3, align 8, !alias.scope !85, !noalias !88
  %scevgep544.3 = getelementptr i8, i8* %scevgep531, i64 %165
  %scevgep544545.3 = bitcast i8* %scevgep544.3 to double*
  %_p_scalar_546.3 = load double, double* %scevgep544545.3, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header525.3

polly.loop_header525.3:                           ; preds = %polly.loop_header525.3, %polly.loop_exit527.2
  %polly.indvar528.3 = phi i64 [ 0, %polly.loop_exit527.2 ], [ %polly.indvar_next529.3, %polly.loop_header525.3 ]
  %240 = add nuw nsw i64 %polly.indvar528.3, %154
  %241 = mul nuw nsw i64 %240, 480
  %scevgep532.3 = getelementptr i8, i8* %scevgep531, i64 %241
  %scevgep532533.3 = bitcast i8* %scevgep532.3 to double*
  %_p_scalar_534.3 = load double, double* %scevgep532533.3, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.3 = fmul fast double %_p_scalar_538.3, %_p_scalar_534.3
  %scevgep540.3 = getelementptr i8, i8* %scevgep535, i64 %241
  %scevgep540541.3 = bitcast i8* %scevgep540.3 to double*
  %_p_scalar_542.3 = load double, double* %scevgep540541.3, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.3 = fmul fast double %_p_scalar_546.3, %_p_scalar_542.3
  %242 = shl i64 %240, 3
  %243 = add nuw nsw i64 %242, %166
  %scevgep547.3 = getelementptr i8, i8* %call, i64 %243
  %scevgep547548.3 = bitcast i8* %scevgep547.3 to double*
  %_p_scalar_549.3 = load double, double* %scevgep547548.3, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_549.3
  store double %p_add42.i.3, double* %scevgep547548.3, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next529.3 = add nuw nsw i64 %polly.indvar528.3, 1
  %exitcond789.3.not = icmp eq i64 %polly.indvar528.3, %smin788.3
  br i1 %exitcond789.3.not, label %polly.loop_exit527.3, label %polly.loop_header525.3

polly.loop_exit527.3:                             ; preds = %polly.loop_header525.3
  %polly.indvar_next517 = add nuw nsw i64 %polly.indvar516, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next517, 60
  br i1 %exitcond791.not, label %polly.loop_exit515, label %polly.loop_header513

polly.loop_header741.1:                           ; preds = %polly.loop_exit749, %polly.loop_exit749.1
  %polly.indvar744.1 = phi i64 [ %polly.indvar_next745.1, %polly.loop_exit749.1 ], [ 0, %polly.loop_exit749 ]
  %244 = mul nuw nsw i64 %polly.indvar744.1, 480
  %245 = trunc i64 %polly.indvar744.1 to i32
  %broadcast.splatinsert1118 = insertelement <4 x i32> poison, i32 %245, i32 0
  %broadcast.splat1119 = shufflevector <4 x i32> %broadcast.splatinsert1118, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1110

vector.body1110:                                  ; preds = %vector.body1110, %polly.loop_header741.1
  %index1112 = phi i64 [ 0, %polly.loop_header741.1 ], [ %index.next1113, %vector.body1110 ]
  %vec.ind1116 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header741.1 ], [ %vec.ind.next1117, %vector.body1110 ]
  %246 = add nuw nsw <4 x i64> %vec.ind1116, <i64 32, i64 32, i64 32, i64 32>
  %247 = trunc <4 x i64> %246 to <4 x i32>
  %248 = mul <4 x i32> %broadcast.splat1119, %247
  %249 = add <4 x i32> %248, <i32 1, i32 1, i32 1, i32 1>
  %250 = urem <4 x i32> %249, <i32 80, i32 80, i32 80, i32 80>
  %251 = sitofp <4 x i32> %250 to <4 x double>
  %252 = fmul fast <4 x double> %251, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %253 = extractelement <4 x i64> %246, i32 0
  %254 = shl i64 %253, 3
  %255 = add i64 %254, %244
  %256 = getelementptr i8, i8* %call1, i64 %255
  %257 = bitcast i8* %256 to <4 x double>*
  store <4 x double> %252, <4 x double>* %257, align 8, !alias.scope !93, !noalias !98
  %index.next1113 = add i64 %index1112, 4
  %vec.ind.next1117 = add <4 x i64> %vec.ind1116, <i64 4, i64 4, i64 4, i64 4>
  %258 = icmp eq i64 %index.next1113, 28
  br i1 %258, label %polly.loop_exit749.1, label %vector.body1110, !llvm.loop !100

polly.loop_exit749.1:                             ; preds = %vector.body1110
  %polly.indvar_next745.1 = add nuw nsw i64 %polly.indvar744.1, 1
  %exitcond800.1.not = icmp eq i64 %polly.indvar_next745.1, 32
  br i1 %exitcond800.1.not, label %polly.loop_header741.1823, label %polly.loop_header741.1

polly.loop_header741.1823:                        ; preds = %polly.loop_exit749.1, %polly.loop_exit749.1834
  %polly.indvar744.1822 = phi i64 [ %polly.indvar_next745.1832, %polly.loop_exit749.1834 ], [ 0, %polly.loop_exit749.1 ]
  %259 = add nuw nsw i64 %polly.indvar744.1822, 32
  %260 = mul nuw nsw i64 %259, 480
  %261 = trunc i64 %259 to i32
  %broadcast.splatinsert1132 = insertelement <4 x i32> poison, i32 %261, i32 0
  %broadcast.splat1133 = shufflevector <4 x i32> %broadcast.splatinsert1132, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1122

vector.body1122:                                  ; preds = %vector.body1122, %polly.loop_header741.1823
  %index1124 = phi i64 [ 0, %polly.loop_header741.1823 ], [ %index.next1125, %vector.body1122 ]
  %vec.ind1130 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header741.1823 ], [ %vec.ind.next1131, %vector.body1122 ]
  %262 = mul <4 x i32> %vec.ind1130, %broadcast.splat1133
  %263 = add <4 x i32> %262, <i32 1, i32 1, i32 1, i32 1>
  %264 = urem <4 x i32> %263, <i32 80, i32 80, i32 80, i32 80>
  %265 = sitofp <4 x i32> %264 to <4 x double>
  %266 = fmul fast <4 x double> %265, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %267 = shl i64 %index1124, 3
  %268 = add i64 %267, %260
  %269 = getelementptr i8, i8* %call1, i64 %268
  %270 = bitcast i8* %269 to <4 x double>*
  store <4 x double> %266, <4 x double>* %270, align 8, !alias.scope !93, !noalias !98
  %index.next1125 = add i64 %index1124, 4
  %vec.ind.next1131 = add <4 x i32> %vec.ind1130, <i32 4, i32 4, i32 4, i32 4>
  %271 = icmp eq i64 %index.next1125, 32
  br i1 %271, label %polly.loop_exit749.1834, label %vector.body1122, !llvm.loop !101

polly.loop_exit749.1834:                          ; preds = %vector.body1122
  %polly.indvar_next745.1832 = add nuw nsw i64 %polly.indvar744.1822, 1
  %exitcond800.1833.not = icmp eq i64 %polly.indvar_next745.1832, 32
  br i1 %exitcond800.1833.not, label %polly.loop_header741.1.1, label %polly.loop_header741.1823

polly.loop_header741.1.1:                         ; preds = %polly.loop_exit749.1834, %polly.loop_exit749.1.1
  %polly.indvar744.1.1 = phi i64 [ %polly.indvar_next745.1.1, %polly.loop_exit749.1.1 ], [ 0, %polly.loop_exit749.1834 ]
  %272 = add nuw nsw i64 %polly.indvar744.1.1, 32
  %273 = mul nuw nsw i64 %272, 480
  %274 = trunc i64 %272 to i32
  %broadcast.splatinsert1144 = insertelement <4 x i32> poison, i32 %274, i32 0
  %broadcast.splat1145 = shufflevector <4 x i32> %broadcast.splatinsert1144, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %polly.loop_header741.1.1
  %index1138 = phi i64 [ 0, %polly.loop_header741.1.1 ], [ %index.next1139, %vector.body1136 ]
  %vec.ind1142 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header741.1.1 ], [ %vec.ind.next1143, %vector.body1136 ]
  %275 = add nuw nsw <4 x i64> %vec.ind1142, <i64 32, i64 32, i64 32, i64 32>
  %276 = trunc <4 x i64> %275 to <4 x i32>
  %277 = mul <4 x i32> %broadcast.splat1145, %276
  %278 = add <4 x i32> %277, <i32 1, i32 1, i32 1, i32 1>
  %279 = urem <4 x i32> %278, <i32 80, i32 80, i32 80, i32 80>
  %280 = sitofp <4 x i32> %279 to <4 x double>
  %281 = fmul fast <4 x double> %280, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %282 = extractelement <4 x i64> %275, i32 0
  %283 = shl i64 %282, 3
  %284 = add i64 %283, %273
  %285 = getelementptr i8, i8* %call1, i64 %284
  %286 = bitcast i8* %285 to <4 x double>*
  store <4 x double> %281, <4 x double>* %286, align 8, !alias.scope !93, !noalias !98
  %index.next1139 = add i64 %index1138, 4
  %vec.ind.next1143 = add <4 x i64> %vec.ind1142, <i64 4, i64 4, i64 4, i64 4>
  %287 = icmp eq i64 %index.next1139, 28
  br i1 %287, label %polly.loop_exit749.1.1, label %vector.body1136, !llvm.loop !102

polly.loop_exit749.1.1:                           ; preds = %vector.body1136
  %polly.indvar_next745.1.1 = add nuw nsw i64 %polly.indvar744.1.1, 1
  %exitcond800.1.1.not = icmp eq i64 %polly.indvar_next745.1.1, 32
  br i1 %exitcond800.1.1.not, label %polly.loop_header741.2, label %polly.loop_header741.1.1

polly.loop_header741.2:                           ; preds = %polly.loop_exit749.1.1, %polly.loop_exit749.2
  %polly.indvar744.2 = phi i64 [ %polly.indvar_next745.2, %polly.loop_exit749.2 ], [ 0, %polly.loop_exit749.1.1 ]
  %288 = add nuw nsw i64 %polly.indvar744.2, 64
  %289 = mul nuw nsw i64 %288, 480
  %290 = trunc i64 %288 to i32
  %broadcast.splatinsert1158 = insertelement <4 x i32> poison, i32 %290, i32 0
  %broadcast.splat1159 = shufflevector <4 x i32> %broadcast.splatinsert1158, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %polly.loop_header741.2
  %index1150 = phi i64 [ 0, %polly.loop_header741.2 ], [ %index.next1151, %vector.body1148 ]
  %vec.ind1156 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header741.2 ], [ %vec.ind.next1157, %vector.body1148 ]
  %291 = mul <4 x i32> %vec.ind1156, %broadcast.splat1159
  %292 = add <4 x i32> %291, <i32 1, i32 1, i32 1, i32 1>
  %293 = urem <4 x i32> %292, <i32 80, i32 80, i32 80, i32 80>
  %294 = sitofp <4 x i32> %293 to <4 x double>
  %295 = fmul fast <4 x double> %294, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %296 = shl i64 %index1150, 3
  %297 = add i64 %296, %289
  %298 = getelementptr i8, i8* %call1, i64 %297
  %299 = bitcast i8* %298 to <4 x double>*
  store <4 x double> %295, <4 x double>* %299, align 8, !alias.scope !93, !noalias !98
  %index.next1151 = add i64 %index1150, 4
  %vec.ind.next1157 = add <4 x i32> %vec.ind1156, <i32 4, i32 4, i32 4, i32 4>
  %300 = icmp eq i64 %index.next1151, 32
  br i1 %300, label %polly.loop_exit749.2, label %vector.body1148, !llvm.loop !103

polly.loop_exit749.2:                             ; preds = %vector.body1148
  %polly.indvar_next745.2 = add nuw nsw i64 %polly.indvar744.2, 1
  %exitcond800.2.not = icmp eq i64 %polly.indvar_next745.2, 16
  br i1 %exitcond800.2.not, label %polly.loop_header741.1.2, label %polly.loop_header741.2

polly.loop_header741.1.2:                         ; preds = %polly.loop_exit749.2, %polly.loop_exit749.1.2
  %polly.indvar744.1.2 = phi i64 [ %polly.indvar_next745.1.2, %polly.loop_exit749.1.2 ], [ 0, %polly.loop_exit749.2 ]
  %301 = add nuw nsw i64 %polly.indvar744.1.2, 64
  %302 = mul nuw nsw i64 %301, 480
  %303 = trunc i64 %301 to i32
  %broadcast.splatinsert1170 = insertelement <4 x i32> poison, i32 %303, i32 0
  %broadcast.splat1171 = shufflevector <4 x i32> %broadcast.splatinsert1170, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %polly.loop_header741.1.2
  %index1164 = phi i64 [ 0, %polly.loop_header741.1.2 ], [ %index.next1165, %vector.body1162 ]
  %vec.ind1168 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header741.1.2 ], [ %vec.ind.next1169, %vector.body1162 ]
  %304 = add nuw nsw <4 x i64> %vec.ind1168, <i64 32, i64 32, i64 32, i64 32>
  %305 = trunc <4 x i64> %304 to <4 x i32>
  %306 = mul <4 x i32> %broadcast.splat1171, %305
  %307 = add <4 x i32> %306, <i32 1, i32 1, i32 1, i32 1>
  %308 = urem <4 x i32> %307, <i32 80, i32 80, i32 80, i32 80>
  %309 = sitofp <4 x i32> %308 to <4 x double>
  %310 = fmul fast <4 x double> %309, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %311 = extractelement <4 x i64> %304, i32 0
  %312 = shl i64 %311, 3
  %313 = add i64 %312, %302
  %314 = getelementptr i8, i8* %call1, i64 %313
  %315 = bitcast i8* %314 to <4 x double>*
  store <4 x double> %310, <4 x double>* %315, align 8, !alias.scope !93, !noalias !98
  %index.next1165 = add i64 %index1164, 4
  %vec.ind.next1169 = add <4 x i64> %vec.ind1168, <i64 4, i64 4, i64 4, i64 4>
  %316 = icmp eq i64 %index.next1165, 28
  br i1 %316, label %polly.loop_exit749.1.2, label %vector.body1162, !llvm.loop !104

polly.loop_exit749.1.2:                           ; preds = %vector.body1162
  %polly.indvar_next745.1.2 = add nuw nsw i64 %polly.indvar744.1.2, 1
  %exitcond800.1.2.not = icmp eq i64 %polly.indvar_next745.1.2, 16
  br i1 %exitcond800.1.2.not, label %init_array.exit, label %polly.loop_header741.1.2

polly.loop_header715.1:                           ; preds = %polly.loop_exit723, %polly.loop_exit723.1
  %polly.indvar718.1 = phi i64 [ %polly.indvar_next719.1, %polly.loop_exit723.1 ], [ 0, %polly.loop_exit723 ]
  %317 = mul nuw nsw i64 %polly.indvar718.1, 480
  %318 = trunc i64 %polly.indvar718.1 to i32
  %broadcast.splatinsert1040 = insertelement <4 x i32> poison, i32 %318, i32 0
  %broadcast.splat1041 = shufflevector <4 x i32> %broadcast.splatinsert1040, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1032

vector.body1032:                                  ; preds = %vector.body1032, %polly.loop_header715.1
  %index1034 = phi i64 [ 0, %polly.loop_header715.1 ], [ %index.next1035, %vector.body1032 ]
  %vec.ind1038 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header715.1 ], [ %vec.ind.next1039, %vector.body1032 ]
  %319 = add nuw nsw <4 x i64> %vec.ind1038, <i64 32, i64 32, i64 32, i64 32>
  %320 = trunc <4 x i64> %319 to <4 x i32>
  %321 = mul <4 x i32> %broadcast.splat1041, %320
  %322 = add <4 x i32> %321, <i32 2, i32 2, i32 2, i32 2>
  %323 = urem <4 x i32> %322, <i32 60, i32 60, i32 60, i32 60>
  %324 = sitofp <4 x i32> %323 to <4 x double>
  %325 = fmul fast <4 x double> %324, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %326 = extractelement <4 x i64> %319, i32 0
  %327 = shl i64 %326, 3
  %328 = add i64 %327, %317
  %329 = getelementptr i8, i8* %call2, i64 %328
  %330 = bitcast i8* %329 to <4 x double>*
  store <4 x double> %325, <4 x double>* %330, align 8, !alias.scope !94, !noalias !96
  %index.next1035 = add i64 %index1034, 4
  %vec.ind.next1039 = add <4 x i64> %vec.ind1038, <i64 4, i64 4, i64 4, i64 4>
  %331 = icmp eq i64 %index.next1035, 28
  br i1 %331, label %polly.loop_exit723.1, label %vector.body1032, !llvm.loop !105

polly.loop_exit723.1:                             ; preds = %vector.body1032
  %polly.indvar_next719.1 = add nuw nsw i64 %polly.indvar718.1, 1
  %exitcond806.1.not = icmp eq i64 %polly.indvar_next719.1, 32
  br i1 %exitcond806.1.not, label %polly.loop_header715.1837, label %polly.loop_header715.1

polly.loop_header715.1837:                        ; preds = %polly.loop_exit723.1, %polly.loop_exit723.1848
  %polly.indvar718.1836 = phi i64 [ %polly.indvar_next719.1846, %polly.loop_exit723.1848 ], [ 0, %polly.loop_exit723.1 ]
  %332 = add nuw nsw i64 %polly.indvar718.1836, 32
  %333 = mul nuw nsw i64 %332, 480
  %334 = trunc i64 %332 to i32
  %broadcast.splatinsert1054 = insertelement <4 x i32> poison, i32 %334, i32 0
  %broadcast.splat1055 = shufflevector <4 x i32> %broadcast.splatinsert1054, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1044

vector.body1044:                                  ; preds = %vector.body1044, %polly.loop_header715.1837
  %index1046 = phi i64 [ 0, %polly.loop_header715.1837 ], [ %index.next1047, %vector.body1044 ]
  %vec.ind1052 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header715.1837 ], [ %vec.ind.next1053, %vector.body1044 ]
  %335 = mul <4 x i32> %vec.ind1052, %broadcast.splat1055
  %336 = add <4 x i32> %335, <i32 2, i32 2, i32 2, i32 2>
  %337 = urem <4 x i32> %336, <i32 60, i32 60, i32 60, i32 60>
  %338 = sitofp <4 x i32> %337 to <4 x double>
  %339 = fmul fast <4 x double> %338, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %340 = shl i64 %index1046, 3
  %341 = add i64 %340, %333
  %342 = getelementptr i8, i8* %call2, i64 %341
  %343 = bitcast i8* %342 to <4 x double>*
  store <4 x double> %339, <4 x double>* %343, align 8, !alias.scope !94, !noalias !96
  %index.next1047 = add i64 %index1046, 4
  %vec.ind.next1053 = add <4 x i32> %vec.ind1052, <i32 4, i32 4, i32 4, i32 4>
  %344 = icmp eq i64 %index.next1047, 32
  br i1 %344, label %polly.loop_exit723.1848, label %vector.body1044, !llvm.loop !106

polly.loop_exit723.1848:                          ; preds = %vector.body1044
  %polly.indvar_next719.1846 = add nuw nsw i64 %polly.indvar718.1836, 1
  %exitcond806.1847.not = icmp eq i64 %polly.indvar_next719.1846, 32
  br i1 %exitcond806.1847.not, label %polly.loop_header715.1.1, label %polly.loop_header715.1837

polly.loop_header715.1.1:                         ; preds = %polly.loop_exit723.1848, %polly.loop_exit723.1.1
  %polly.indvar718.1.1 = phi i64 [ %polly.indvar_next719.1.1, %polly.loop_exit723.1.1 ], [ 0, %polly.loop_exit723.1848 ]
  %345 = add nuw nsw i64 %polly.indvar718.1.1, 32
  %346 = mul nuw nsw i64 %345, 480
  %347 = trunc i64 %345 to i32
  %broadcast.splatinsert1066 = insertelement <4 x i32> poison, i32 %347, i32 0
  %broadcast.splat1067 = shufflevector <4 x i32> %broadcast.splatinsert1066, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1058

vector.body1058:                                  ; preds = %vector.body1058, %polly.loop_header715.1.1
  %index1060 = phi i64 [ 0, %polly.loop_header715.1.1 ], [ %index.next1061, %vector.body1058 ]
  %vec.ind1064 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header715.1.1 ], [ %vec.ind.next1065, %vector.body1058 ]
  %348 = add nuw nsw <4 x i64> %vec.ind1064, <i64 32, i64 32, i64 32, i64 32>
  %349 = trunc <4 x i64> %348 to <4 x i32>
  %350 = mul <4 x i32> %broadcast.splat1067, %349
  %351 = add <4 x i32> %350, <i32 2, i32 2, i32 2, i32 2>
  %352 = urem <4 x i32> %351, <i32 60, i32 60, i32 60, i32 60>
  %353 = sitofp <4 x i32> %352 to <4 x double>
  %354 = fmul fast <4 x double> %353, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %355 = extractelement <4 x i64> %348, i32 0
  %356 = shl i64 %355, 3
  %357 = add i64 %356, %346
  %358 = getelementptr i8, i8* %call2, i64 %357
  %359 = bitcast i8* %358 to <4 x double>*
  store <4 x double> %354, <4 x double>* %359, align 8, !alias.scope !94, !noalias !96
  %index.next1061 = add i64 %index1060, 4
  %vec.ind.next1065 = add <4 x i64> %vec.ind1064, <i64 4, i64 4, i64 4, i64 4>
  %360 = icmp eq i64 %index.next1061, 28
  br i1 %360, label %polly.loop_exit723.1.1, label %vector.body1058, !llvm.loop !107

polly.loop_exit723.1.1:                           ; preds = %vector.body1058
  %polly.indvar_next719.1.1 = add nuw nsw i64 %polly.indvar718.1.1, 1
  %exitcond806.1.1.not = icmp eq i64 %polly.indvar_next719.1.1, 32
  br i1 %exitcond806.1.1.not, label %polly.loop_header715.2, label %polly.loop_header715.1.1

polly.loop_header715.2:                           ; preds = %polly.loop_exit723.1.1, %polly.loop_exit723.2
  %polly.indvar718.2 = phi i64 [ %polly.indvar_next719.2, %polly.loop_exit723.2 ], [ 0, %polly.loop_exit723.1.1 ]
  %361 = add nuw nsw i64 %polly.indvar718.2, 64
  %362 = mul nuw nsw i64 %361, 480
  %363 = trunc i64 %361 to i32
  %broadcast.splatinsert1080 = insertelement <4 x i32> poison, i32 %363, i32 0
  %broadcast.splat1081 = shufflevector <4 x i32> %broadcast.splatinsert1080, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1070

vector.body1070:                                  ; preds = %vector.body1070, %polly.loop_header715.2
  %index1072 = phi i64 [ 0, %polly.loop_header715.2 ], [ %index.next1073, %vector.body1070 ]
  %vec.ind1078 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header715.2 ], [ %vec.ind.next1079, %vector.body1070 ]
  %364 = mul <4 x i32> %vec.ind1078, %broadcast.splat1081
  %365 = add <4 x i32> %364, <i32 2, i32 2, i32 2, i32 2>
  %366 = urem <4 x i32> %365, <i32 60, i32 60, i32 60, i32 60>
  %367 = sitofp <4 x i32> %366 to <4 x double>
  %368 = fmul fast <4 x double> %367, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %369 = shl i64 %index1072, 3
  %370 = add i64 %369, %362
  %371 = getelementptr i8, i8* %call2, i64 %370
  %372 = bitcast i8* %371 to <4 x double>*
  store <4 x double> %368, <4 x double>* %372, align 8, !alias.scope !94, !noalias !96
  %index.next1073 = add i64 %index1072, 4
  %vec.ind.next1079 = add <4 x i32> %vec.ind1078, <i32 4, i32 4, i32 4, i32 4>
  %373 = icmp eq i64 %index.next1073, 32
  br i1 %373, label %polly.loop_exit723.2, label %vector.body1070, !llvm.loop !108

polly.loop_exit723.2:                             ; preds = %vector.body1070
  %polly.indvar_next719.2 = add nuw nsw i64 %polly.indvar718.2, 1
  %exitcond806.2.not = icmp eq i64 %polly.indvar_next719.2, 16
  br i1 %exitcond806.2.not, label %polly.loop_header715.1.2, label %polly.loop_header715.2

polly.loop_header715.1.2:                         ; preds = %polly.loop_exit723.2, %polly.loop_exit723.1.2
  %polly.indvar718.1.2 = phi i64 [ %polly.indvar_next719.1.2, %polly.loop_exit723.1.2 ], [ 0, %polly.loop_exit723.2 ]
  %374 = add nuw nsw i64 %polly.indvar718.1.2, 64
  %375 = mul nuw nsw i64 %374, 480
  %376 = trunc i64 %374 to i32
  %broadcast.splatinsert1092 = insertelement <4 x i32> poison, i32 %376, i32 0
  %broadcast.splat1093 = shufflevector <4 x i32> %broadcast.splatinsert1092, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1084

vector.body1084:                                  ; preds = %vector.body1084, %polly.loop_header715.1.2
  %index1086 = phi i64 [ 0, %polly.loop_header715.1.2 ], [ %index.next1087, %vector.body1084 ]
  %vec.ind1090 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header715.1.2 ], [ %vec.ind.next1091, %vector.body1084 ]
  %377 = add nuw nsw <4 x i64> %vec.ind1090, <i64 32, i64 32, i64 32, i64 32>
  %378 = trunc <4 x i64> %377 to <4 x i32>
  %379 = mul <4 x i32> %broadcast.splat1093, %378
  %380 = add <4 x i32> %379, <i32 2, i32 2, i32 2, i32 2>
  %381 = urem <4 x i32> %380, <i32 60, i32 60, i32 60, i32 60>
  %382 = sitofp <4 x i32> %381 to <4 x double>
  %383 = fmul fast <4 x double> %382, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %384 = extractelement <4 x i64> %377, i32 0
  %385 = shl i64 %384, 3
  %386 = add i64 %385, %375
  %387 = getelementptr i8, i8* %call2, i64 %386
  %388 = bitcast i8* %387 to <4 x double>*
  store <4 x double> %383, <4 x double>* %388, align 8, !alias.scope !94, !noalias !96
  %index.next1087 = add i64 %index1086, 4
  %vec.ind.next1091 = add <4 x i64> %vec.ind1090, <i64 4, i64 4, i64 4, i64 4>
  %389 = icmp eq i64 %index.next1087, 28
  br i1 %389, label %polly.loop_exit723.1.2, label %vector.body1084, !llvm.loop !109

polly.loop_exit723.1.2:                           ; preds = %vector.body1084
  %polly.indvar_next719.1.2 = add nuw nsw i64 %polly.indvar718.1.2, 1
  %exitcond806.1.2.not = icmp eq i64 %polly.indvar_next719.1.2, 16
  br i1 %exitcond806.1.2.not, label %polly.loop_header741, label %polly.loop_header715.1.2

polly.loop_header688.1:                           ; preds = %polly.loop_exit696, %polly.loop_exit696.1
  %polly.indvar691.1 = phi i64 [ %polly.indvar_next692.1, %polly.loop_exit696.1 ], [ 0, %polly.loop_exit696 ]
  %390 = mul nuw nsw i64 %polly.indvar691.1, 640
  %391 = trunc i64 %polly.indvar691.1 to i32
  %broadcast.splatinsert926 = insertelement <4 x i32> poison, i32 %391, i32 0
  %broadcast.splat927 = shufflevector <4 x i32> %broadcast.splatinsert926, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body918

vector.body918:                                   ; preds = %vector.body918, %polly.loop_header688.1
  %index920 = phi i64 [ 0, %polly.loop_header688.1 ], [ %index.next921, %vector.body918 ]
  %vec.ind924 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header688.1 ], [ %vec.ind.next925, %vector.body918 ]
  %392 = add nuw nsw <4 x i64> %vec.ind924, <i64 32, i64 32, i64 32, i64 32>
  %393 = trunc <4 x i64> %392 to <4 x i32>
  %394 = mul <4 x i32> %broadcast.splat927, %393
  %395 = add <4 x i32> %394, <i32 3, i32 3, i32 3, i32 3>
  %396 = urem <4 x i32> %395, <i32 80, i32 80, i32 80, i32 80>
  %397 = sitofp <4 x i32> %396 to <4 x double>
  %398 = fmul fast <4 x double> %397, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %399 = extractelement <4 x i64> %392, i32 0
  %400 = shl i64 %399, 3
  %401 = add nuw nsw i64 %400, %390
  %402 = getelementptr i8, i8* %call, i64 %401
  %403 = bitcast i8* %402 to <4 x double>*
  store <4 x double> %398, <4 x double>* %403, align 8, !alias.scope !90, !noalias !92
  %index.next921 = add i64 %index920, 4
  %vec.ind.next925 = add <4 x i64> %vec.ind924, <i64 4, i64 4, i64 4, i64 4>
  %404 = icmp eq i64 %index.next921, 32
  br i1 %404, label %polly.loop_exit696.1, label %vector.body918, !llvm.loop !110

polly.loop_exit696.1:                             ; preds = %vector.body918
  %polly.indvar_next692.1 = add nuw nsw i64 %polly.indvar691.1, 1
  %exitcond815.1.not = icmp eq i64 %polly.indvar_next692.1, 32
  br i1 %exitcond815.1.not, label %polly.loop_header688.2, label %polly.loop_header688.1

polly.loop_header688.2:                           ; preds = %polly.loop_exit696.1, %polly.loop_exit696.2
  %polly.indvar691.2 = phi i64 [ %polly.indvar_next692.2, %polly.loop_exit696.2 ], [ 0, %polly.loop_exit696.1 ]
  %405 = mul nuw nsw i64 %polly.indvar691.2, 640
  %406 = trunc i64 %polly.indvar691.2 to i32
  %broadcast.splatinsert938 = insertelement <4 x i32> poison, i32 %406, i32 0
  %broadcast.splat939 = shufflevector <4 x i32> %broadcast.splatinsert938, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body930

vector.body930:                                   ; preds = %vector.body930, %polly.loop_header688.2
  %index932 = phi i64 [ 0, %polly.loop_header688.2 ], [ %index.next933, %vector.body930 ]
  %vec.ind936 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header688.2 ], [ %vec.ind.next937, %vector.body930 ]
  %407 = add nuw nsw <4 x i64> %vec.ind936, <i64 64, i64 64, i64 64, i64 64>
  %408 = trunc <4 x i64> %407 to <4 x i32>
  %409 = mul <4 x i32> %broadcast.splat939, %408
  %410 = add <4 x i32> %409, <i32 3, i32 3, i32 3, i32 3>
  %411 = urem <4 x i32> %410, <i32 80, i32 80, i32 80, i32 80>
  %412 = sitofp <4 x i32> %411 to <4 x double>
  %413 = fmul fast <4 x double> %412, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %414 = extractelement <4 x i64> %407, i32 0
  %415 = shl i64 %414, 3
  %416 = add nuw nsw i64 %415, %405
  %417 = getelementptr i8, i8* %call, i64 %416
  %418 = bitcast i8* %417 to <4 x double>*
  store <4 x double> %413, <4 x double>* %418, align 8, !alias.scope !90, !noalias !92
  %index.next933 = add i64 %index932, 4
  %vec.ind.next937 = add <4 x i64> %vec.ind936, <i64 4, i64 4, i64 4, i64 4>
  %419 = icmp eq i64 %index.next933, 16
  br i1 %419, label %polly.loop_exit696.2, label %vector.body930, !llvm.loop !111

polly.loop_exit696.2:                             ; preds = %vector.body930
  %polly.indvar_next692.2 = add nuw nsw i64 %polly.indvar691.2, 1
  %exitcond815.2.not = icmp eq i64 %polly.indvar_next692.2, 32
  br i1 %exitcond815.2.not, label %polly.loop_header688.1851, label %polly.loop_header688.2

polly.loop_header688.1851:                        ; preds = %polly.loop_exit696.2, %polly.loop_exit696.1862
  %polly.indvar691.1850 = phi i64 [ %polly.indvar_next692.1860, %polly.loop_exit696.1862 ], [ 0, %polly.loop_exit696.2 ]
  %420 = add nuw nsw i64 %polly.indvar691.1850, 32
  %421 = mul nuw nsw i64 %420, 640
  %422 = trunc i64 %420 to i32
  %broadcast.splatinsert952 = insertelement <4 x i32> poison, i32 %422, i32 0
  %broadcast.splat953 = shufflevector <4 x i32> %broadcast.splatinsert952, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %polly.loop_header688.1851
  %index944 = phi i64 [ 0, %polly.loop_header688.1851 ], [ %index.next945, %vector.body942 ]
  %vec.ind950 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header688.1851 ], [ %vec.ind.next951, %vector.body942 ]
  %423 = mul <4 x i32> %vec.ind950, %broadcast.splat953
  %424 = add <4 x i32> %423, <i32 3, i32 3, i32 3, i32 3>
  %425 = urem <4 x i32> %424, <i32 80, i32 80, i32 80, i32 80>
  %426 = sitofp <4 x i32> %425 to <4 x double>
  %427 = fmul fast <4 x double> %426, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %428 = shl i64 %index944, 3
  %429 = add nuw nsw i64 %428, %421
  %430 = getelementptr i8, i8* %call, i64 %429
  %431 = bitcast i8* %430 to <4 x double>*
  store <4 x double> %427, <4 x double>* %431, align 8, !alias.scope !90, !noalias !92
  %index.next945 = add i64 %index944, 4
  %vec.ind.next951 = add <4 x i32> %vec.ind950, <i32 4, i32 4, i32 4, i32 4>
  %432 = icmp eq i64 %index.next945, 32
  br i1 %432, label %polly.loop_exit696.1862, label %vector.body942, !llvm.loop !112

polly.loop_exit696.1862:                          ; preds = %vector.body942
  %polly.indvar_next692.1860 = add nuw nsw i64 %polly.indvar691.1850, 1
  %exitcond815.1861.not = icmp eq i64 %polly.indvar_next692.1860, 32
  br i1 %exitcond815.1861.not, label %polly.loop_header688.1.1, label %polly.loop_header688.1851

polly.loop_header688.1.1:                         ; preds = %polly.loop_exit696.1862, %polly.loop_exit696.1.1
  %polly.indvar691.1.1 = phi i64 [ %polly.indvar_next692.1.1, %polly.loop_exit696.1.1 ], [ 0, %polly.loop_exit696.1862 ]
  %433 = add nuw nsw i64 %polly.indvar691.1.1, 32
  %434 = mul nuw nsw i64 %433, 640
  %435 = trunc i64 %433 to i32
  %broadcast.splatinsert964 = insertelement <4 x i32> poison, i32 %435, i32 0
  %broadcast.splat965 = shufflevector <4 x i32> %broadcast.splatinsert964, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body956

vector.body956:                                   ; preds = %vector.body956, %polly.loop_header688.1.1
  %index958 = phi i64 [ 0, %polly.loop_header688.1.1 ], [ %index.next959, %vector.body956 ]
  %vec.ind962 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header688.1.1 ], [ %vec.ind.next963, %vector.body956 ]
  %436 = add nuw nsw <4 x i64> %vec.ind962, <i64 32, i64 32, i64 32, i64 32>
  %437 = trunc <4 x i64> %436 to <4 x i32>
  %438 = mul <4 x i32> %broadcast.splat965, %437
  %439 = add <4 x i32> %438, <i32 3, i32 3, i32 3, i32 3>
  %440 = urem <4 x i32> %439, <i32 80, i32 80, i32 80, i32 80>
  %441 = sitofp <4 x i32> %440 to <4 x double>
  %442 = fmul fast <4 x double> %441, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %443 = extractelement <4 x i64> %436, i32 0
  %444 = shl i64 %443, 3
  %445 = add nuw nsw i64 %444, %434
  %446 = getelementptr i8, i8* %call, i64 %445
  %447 = bitcast i8* %446 to <4 x double>*
  store <4 x double> %442, <4 x double>* %447, align 8, !alias.scope !90, !noalias !92
  %index.next959 = add i64 %index958, 4
  %vec.ind.next963 = add <4 x i64> %vec.ind962, <i64 4, i64 4, i64 4, i64 4>
  %448 = icmp eq i64 %index.next959, 32
  br i1 %448, label %polly.loop_exit696.1.1, label %vector.body956, !llvm.loop !113

polly.loop_exit696.1.1:                           ; preds = %vector.body956
  %polly.indvar_next692.1.1 = add nuw nsw i64 %polly.indvar691.1.1, 1
  %exitcond815.1.1.not = icmp eq i64 %polly.indvar_next692.1.1, 32
  br i1 %exitcond815.1.1.not, label %polly.loop_header688.2.1, label %polly.loop_header688.1.1

polly.loop_header688.2.1:                         ; preds = %polly.loop_exit696.1.1, %polly.loop_exit696.2.1
  %polly.indvar691.2.1 = phi i64 [ %polly.indvar_next692.2.1, %polly.loop_exit696.2.1 ], [ 0, %polly.loop_exit696.1.1 ]
  %449 = add nuw nsw i64 %polly.indvar691.2.1, 32
  %450 = mul nuw nsw i64 %449, 640
  %451 = trunc i64 %449 to i32
  %broadcast.splatinsert976 = insertelement <4 x i32> poison, i32 %451, i32 0
  %broadcast.splat977 = shufflevector <4 x i32> %broadcast.splatinsert976, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body968

vector.body968:                                   ; preds = %vector.body968, %polly.loop_header688.2.1
  %index970 = phi i64 [ 0, %polly.loop_header688.2.1 ], [ %index.next971, %vector.body968 ]
  %vec.ind974 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header688.2.1 ], [ %vec.ind.next975, %vector.body968 ]
  %452 = add nuw nsw <4 x i64> %vec.ind974, <i64 64, i64 64, i64 64, i64 64>
  %453 = trunc <4 x i64> %452 to <4 x i32>
  %454 = mul <4 x i32> %broadcast.splat977, %453
  %455 = add <4 x i32> %454, <i32 3, i32 3, i32 3, i32 3>
  %456 = urem <4 x i32> %455, <i32 80, i32 80, i32 80, i32 80>
  %457 = sitofp <4 x i32> %456 to <4 x double>
  %458 = fmul fast <4 x double> %457, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %459 = extractelement <4 x i64> %452, i32 0
  %460 = shl i64 %459, 3
  %461 = add nuw nsw i64 %460, %450
  %462 = getelementptr i8, i8* %call, i64 %461
  %463 = bitcast i8* %462 to <4 x double>*
  store <4 x double> %458, <4 x double>* %463, align 8, !alias.scope !90, !noalias !92
  %index.next971 = add i64 %index970, 4
  %vec.ind.next975 = add <4 x i64> %vec.ind974, <i64 4, i64 4, i64 4, i64 4>
  %464 = icmp eq i64 %index.next971, 16
  br i1 %464, label %polly.loop_exit696.2.1, label %vector.body968, !llvm.loop !114

polly.loop_exit696.2.1:                           ; preds = %vector.body968
  %polly.indvar_next692.2.1 = add nuw nsw i64 %polly.indvar691.2.1, 1
  %exitcond815.2.1.not = icmp eq i64 %polly.indvar_next692.2.1, 32
  br i1 %exitcond815.2.1.not, label %polly.loop_header688.2865, label %polly.loop_header688.2.1

polly.loop_header688.2865:                        ; preds = %polly.loop_exit696.2.1, %polly.loop_exit696.2876
  %polly.indvar691.2864 = phi i64 [ %polly.indvar_next692.2874, %polly.loop_exit696.2876 ], [ 0, %polly.loop_exit696.2.1 ]
  %465 = add nuw nsw i64 %polly.indvar691.2864, 64
  %466 = mul nuw nsw i64 %465, 640
  %467 = trunc i64 %465 to i32
  %broadcast.splatinsert990 = insertelement <4 x i32> poison, i32 %467, i32 0
  %broadcast.splat991 = shufflevector <4 x i32> %broadcast.splatinsert990, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body980

vector.body980:                                   ; preds = %vector.body980, %polly.loop_header688.2865
  %index982 = phi i64 [ 0, %polly.loop_header688.2865 ], [ %index.next983, %vector.body980 ]
  %vec.ind988 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header688.2865 ], [ %vec.ind.next989, %vector.body980 ]
  %468 = mul <4 x i32> %vec.ind988, %broadcast.splat991
  %469 = add <4 x i32> %468, <i32 3, i32 3, i32 3, i32 3>
  %470 = urem <4 x i32> %469, <i32 80, i32 80, i32 80, i32 80>
  %471 = sitofp <4 x i32> %470 to <4 x double>
  %472 = fmul fast <4 x double> %471, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %473 = shl i64 %index982, 3
  %474 = add nuw nsw i64 %473, %466
  %475 = getelementptr i8, i8* %call, i64 %474
  %476 = bitcast i8* %475 to <4 x double>*
  store <4 x double> %472, <4 x double>* %476, align 8, !alias.scope !90, !noalias !92
  %index.next983 = add i64 %index982, 4
  %vec.ind.next989 = add <4 x i32> %vec.ind988, <i32 4, i32 4, i32 4, i32 4>
  %477 = icmp eq i64 %index.next983, 32
  br i1 %477, label %polly.loop_exit696.2876, label %vector.body980, !llvm.loop !115

polly.loop_exit696.2876:                          ; preds = %vector.body980
  %polly.indvar_next692.2874 = add nuw nsw i64 %polly.indvar691.2864, 1
  %exitcond815.2875.not = icmp eq i64 %polly.indvar_next692.2874, 16
  br i1 %exitcond815.2875.not, label %polly.loop_header688.1.2, label %polly.loop_header688.2865

polly.loop_header688.1.2:                         ; preds = %polly.loop_exit696.2876, %polly.loop_exit696.1.2
  %polly.indvar691.1.2 = phi i64 [ %polly.indvar_next692.1.2, %polly.loop_exit696.1.2 ], [ 0, %polly.loop_exit696.2876 ]
  %478 = add nuw nsw i64 %polly.indvar691.1.2, 64
  %479 = mul nuw nsw i64 %478, 640
  %480 = trunc i64 %478 to i32
  %broadcast.splatinsert1002 = insertelement <4 x i32> poison, i32 %480, i32 0
  %broadcast.splat1003 = shufflevector <4 x i32> %broadcast.splatinsert1002, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body994

vector.body994:                                   ; preds = %vector.body994, %polly.loop_header688.1.2
  %index996 = phi i64 [ 0, %polly.loop_header688.1.2 ], [ %index.next997, %vector.body994 ]
  %vec.ind1000 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header688.1.2 ], [ %vec.ind.next1001, %vector.body994 ]
  %481 = add nuw nsw <4 x i64> %vec.ind1000, <i64 32, i64 32, i64 32, i64 32>
  %482 = trunc <4 x i64> %481 to <4 x i32>
  %483 = mul <4 x i32> %broadcast.splat1003, %482
  %484 = add <4 x i32> %483, <i32 3, i32 3, i32 3, i32 3>
  %485 = urem <4 x i32> %484, <i32 80, i32 80, i32 80, i32 80>
  %486 = sitofp <4 x i32> %485 to <4 x double>
  %487 = fmul fast <4 x double> %486, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %488 = extractelement <4 x i64> %481, i32 0
  %489 = shl i64 %488, 3
  %490 = add nuw nsw i64 %489, %479
  %491 = getelementptr i8, i8* %call, i64 %490
  %492 = bitcast i8* %491 to <4 x double>*
  store <4 x double> %487, <4 x double>* %492, align 8, !alias.scope !90, !noalias !92
  %index.next997 = add i64 %index996, 4
  %vec.ind.next1001 = add <4 x i64> %vec.ind1000, <i64 4, i64 4, i64 4, i64 4>
  %493 = icmp eq i64 %index.next997, 32
  br i1 %493, label %polly.loop_exit696.1.2, label %vector.body994, !llvm.loop !116

polly.loop_exit696.1.2:                           ; preds = %vector.body994
  %polly.indvar_next692.1.2 = add nuw nsw i64 %polly.indvar691.1.2, 1
  %exitcond815.1.2.not = icmp eq i64 %polly.indvar_next692.1.2, 16
  br i1 %exitcond815.1.2.not, label %polly.loop_header688.2.2, label %polly.loop_header688.1.2

polly.loop_header688.2.2:                         ; preds = %polly.loop_exit696.1.2, %polly.loop_exit696.2.2
  %polly.indvar691.2.2 = phi i64 [ %polly.indvar_next692.2.2, %polly.loop_exit696.2.2 ], [ 0, %polly.loop_exit696.1.2 ]
  %494 = add nuw nsw i64 %polly.indvar691.2.2, 64
  %495 = mul nuw nsw i64 %494, 640
  %496 = trunc i64 %494 to i32
  %broadcast.splatinsert1014 = insertelement <4 x i32> poison, i32 %496, i32 0
  %broadcast.splat1015 = shufflevector <4 x i32> %broadcast.splatinsert1014, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1006

vector.body1006:                                  ; preds = %vector.body1006, %polly.loop_header688.2.2
  %index1008 = phi i64 [ 0, %polly.loop_header688.2.2 ], [ %index.next1009, %vector.body1006 ]
  %vec.ind1012 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header688.2.2 ], [ %vec.ind.next1013, %vector.body1006 ]
  %497 = add nuw nsw <4 x i64> %vec.ind1012, <i64 64, i64 64, i64 64, i64 64>
  %498 = trunc <4 x i64> %497 to <4 x i32>
  %499 = mul <4 x i32> %broadcast.splat1015, %498
  %500 = add <4 x i32> %499, <i32 3, i32 3, i32 3, i32 3>
  %501 = urem <4 x i32> %500, <i32 80, i32 80, i32 80, i32 80>
  %502 = sitofp <4 x i32> %501 to <4 x double>
  %503 = fmul fast <4 x double> %502, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %504 = extractelement <4 x i64> %497, i32 0
  %505 = shl i64 %504, 3
  %506 = add nuw nsw i64 %505, %495
  %507 = getelementptr i8, i8* %call, i64 %506
  %508 = bitcast i8* %507 to <4 x double>*
  store <4 x double> %503, <4 x double>* %508, align 8, !alias.scope !90, !noalias !92
  %index.next1009 = add i64 %index1008, 4
  %vec.ind.next1013 = add <4 x i64> %vec.ind1012, <i64 4, i64 4, i64 4, i64 4>
  %509 = icmp eq i64 %index.next1009, 16
  br i1 %509, label %polly.loop_exit696.2.2, label %vector.body1006, !llvm.loop !117

polly.loop_exit696.2.2:                           ; preds = %vector.body1006
  %polly.indvar_next692.2.2 = add nuw nsw i64 %polly.indvar691.2.2, 1
  %exitcond815.2.2.not = icmp eq i64 %polly.indvar_next692.2.2, 16
  br i1 %exitcond815.2.2.not, label %polly.loop_header715, label %polly.loop_header688.2.2
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
!24 = !{!"llvm.loop.tile.size", i32 16}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 128}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !22, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !22, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !44, !45, !51}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 4}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !22, !47, !48, !49, !50}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.interchange.enable", i1 true}
!49 = !{!"llvm.loop.interchange.depth", i32 5}
!50 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !22, !53}
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
!64 = !{!65, !66}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !69, !13}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!62, !65}
!71 = !{!62, !66}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !69, !13}
!79 = !{!72, !75}
!80 = !{!72, !76}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !69, !13}
!88 = !{!81, !84}
!89 = !{!81, !85}
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
