; ModuleID = 'syr2k_recreations//mmp_syr2k_S_55.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_55.c"
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit521.2
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit370.2
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit219.2
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
  br i1 %exitcond771.not, label %polly.loop_header205, label %polly.loop_header

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

polly.loop_header205:                             ; preds = %polly.loop_exit193, %polly.loop_exit213
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_exit193 ]
  %97 = shl nsw i64 %polly.indvar208, 4
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %exitcond768.not = icmp eq i64 %polly.indvar_next209, 5
  br i1 %exitcond768.not, label %polly.loop_header205.1, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %98 = shl nuw nsw i64 %polly.indvar214, 3
  %scevgep229 = getelementptr i8, i8* %call1, i64 %98
  %scevgep233 = getelementptr i8, i8* %call2, i64 %98
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond767.not = icmp eq i64 %polly.indvar_next215, 60
  br i1 %exitcond767.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header211
  %indvars.iv764 = phi i64 [ %indvars.iv.next765, %polly.loop_exit225 ], [ %indvars.iv, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit225 ], [ 0, %polly.loop_header211 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv764, i64 31)
  %99 = add nuw nsw i64 %polly.indvar220, %97
  %100 = mul nuw nsw i64 %99, 480
  %scevgep234 = getelementptr i8, i8* %scevgep233, i64 %100
  %scevgep234235 = bitcast i8* %scevgep234 to double*
  %_p_scalar_236 = load double, double* %scevgep234235, align 8, !alias.scope !66, !noalias !70
  %scevgep242 = getelementptr i8, i8* %scevgep229, i64 %100
  %scevgep242243 = bitcast i8* %scevgep242 to double*
  %_p_scalar_244 = load double, double* %scevgep242243, align 8, !alias.scope !65, !noalias !71
  %101 = mul nuw nsw i64 %99, 640
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 1
  %exitcond766.not = icmp eq i64 %polly.indvar_next221, 16
  br i1 %exitcond766.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header223, %polly.loop_header217
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next227, %polly.loop_header223 ]
  %102 = mul nuw nsw i64 %polly.indvar226, 480
  %scevgep230 = getelementptr i8, i8* %scevgep229, i64 %102
  %scevgep230231 = bitcast i8* %scevgep230 to double*
  %_p_scalar_232 = load double, double* %scevgep230231, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_236, %_p_scalar_232
  %scevgep238 = getelementptr i8, i8* %scevgep233, i64 %102
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_244, %_p_scalar_240
  %103 = shl i64 %polly.indvar226, 3
  %104 = add nuw nsw i64 %103, %101
  %scevgep245 = getelementptr i8, i8* %call, i64 %104
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
  %105 = add i64 %indvar1207, 1
  %106 = mul nuw nsw i64 %polly.indvar337, 640
  %scevgep346 = getelementptr i8, i8* %call, i64 %106
  %min.iters.check1209 = icmp ult i64 %105, 4
  br i1 %min.iters.check1209, label %polly.loop_header340.preheader, label %vector.ph1210

vector.ph1210:                                    ; preds = %polly.loop_header334
  %n.vec1212 = and i64 %105, -4
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1210
  %index1213 = phi i64 [ 0, %vector.ph1210 ], [ %index.next1214, %vector.body1206 ]
  %107 = shl nuw nsw i64 %index1213, 3
  %108 = getelementptr i8, i8* %scevgep346, i64 %107
  %109 = bitcast i8* %108 to <4 x double>*
  %wide.load1217 = load <4 x double>, <4 x double>* %109, align 8, !alias.scope !72, !noalias !74
  %110 = fmul fast <4 x double> %wide.load1217, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %111 = bitcast i8* %108 to <4 x double>*
  store <4 x double> %110, <4 x double>* %111, align 8, !alias.scope !72, !noalias !74
  %index.next1214 = add i64 %index1213, 4
  %112 = icmp eq i64 %index.next1214, %n.vec1212
  br i1 %112, label %middle.block1204, label %vector.body1206, !llvm.loop !77

middle.block1204:                                 ; preds = %vector.body1206
  %cmp.n1216 = icmp eq i64 %105, %n.vec1212
  br i1 %cmp.n1216, label %polly.loop_exit342, label %polly.loop_header340.preheader

polly.loop_header340.preheader:                   ; preds = %polly.loop_header334, %middle.block1204
  %polly.indvar343.ph = phi i64 [ 0, %polly.loop_header334 ], [ %n.vec1212, %middle.block1204 ]
  br label %polly.loop_header340

polly.loop_exit342:                               ; preds = %polly.loop_header340, %middle.block1204
  %polly.indvar_next338 = add nuw nsw i64 %polly.indvar337, 1
  %exitcond783.not = icmp eq i64 %polly.indvar_next338, 80
  %indvar.next1208 = add i64 %indvar1207, 1
  br i1 %exitcond783.not, label %polly.loop_header356, label %polly.loop_header334

polly.loop_header340:                             ; preds = %polly.loop_header340.preheader, %polly.loop_header340
  %polly.indvar343 = phi i64 [ %polly.indvar_next344, %polly.loop_header340 ], [ %polly.indvar343.ph, %polly.loop_header340.preheader ]
  %113 = shl nuw nsw i64 %polly.indvar343, 3
  %scevgep347 = getelementptr i8, i8* %scevgep346, i64 %113
  %scevgep347348 = bitcast i8* %scevgep347 to double*
  %_p_scalar_349 = load double, double* %scevgep347348, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_349, 1.200000e+00
  store double %p_mul.i57, double* %scevgep347348, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next344 = add nuw nsw i64 %polly.indvar343, 1
  %exitcond782.not = icmp eq i64 %polly.indvar_next344, %polly.indvar337
  br i1 %exitcond782.not, label %polly.loop_exit342, label %polly.loop_header340, !llvm.loop !78

polly.loop_header356:                             ; preds = %polly.loop_exit342, %polly.loop_exit364
  %indvars.iv772 = phi i64 [ %indvars.iv.next773, %polly.loop_exit364 ], [ 0, %polly.loop_exit342 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 0, %polly.loop_exit342 ]
  %114 = shl nsw i64 %polly.indvar359, 4
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_exit370
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %indvars.iv.next773 = add nuw nsw i64 %indvars.iv772, 16
  %exitcond780.not = icmp eq i64 %polly.indvar_next360, 5
  br i1 %exitcond780.not, label %polly.loop_header356.1, label %polly.loop_header356

polly.loop_header362:                             ; preds = %polly.loop_exit370, %polly.loop_header356
  %polly.indvar365 = phi i64 [ 0, %polly.loop_header356 ], [ %polly.indvar_next366, %polly.loop_exit370 ]
  %115 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep380 = getelementptr i8, i8* %call1, i64 %115
  %scevgep384 = getelementptr i8, i8* %call2, i64 %115
  br label %polly.loop_header368

polly.loop_exit370:                               ; preds = %polly.loop_exit376
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next366, 60
  br i1 %exitcond779.not, label %polly.loop_exit364, label %polly.loop_header362

polly.loop_header368:                             ; preds = %polly.loop_exit376, %polly.loop_header362
  %indvars.iv774 = phi i64 [ %indvars.iv.next775, %polly.loop_exit376 ], [ %indvars.iv772, %polly.loop_header362 ]
  %polly.indvar371 = phi i64 [ %polly.indvar_next372, %polly.loop_exit376 ], [ 0, %polly.loop_header362 ]
  %smin776 = call i64 @llvm.smin.i64(i64 %indvars.iv774, i64 31)
  %116 = add nuw nsw i64 %polly.indvar371, %114
  %117 = mul nuw nsw i64 %116, 480
  %scevgep385 = getelementptr i8, i8* %scevgep384, i64 %117
  %scevgep385386 = bitcast i8* %scevgep385 to double*
  %_p_scalar_387 = load double, double* %scevgep385386, align 8, !alias.scope !76, !noalias !79
  %scevgep393 = getelementptr i8, i8* %scevgep380, i64 %117
  %scevgep393394 = bitcast i8* %scevgep393 to double*
  %_p_scalar_395 = load double, double* %scevgep393394, align 8, !alias.scope !75, !noalias !80
  %118 = mul nuw nsw i64 %116, 640
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_header374
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %indvars.iv.next775 = add nuw nsw i64 %indvars.iv774, 1
  %exitcond778.not = icmp eq i64 %polly.indvar_next372, 16
  br i1 %exitcond778.not, label %polly.loop_exit370, label %polly.loop_header368

polly.loop_header374:                             ; preds = %polly.loop_header374, %polly.loop_header368
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header368 ], [ %polly.indvar_next378, %polly.loop_header374 ]
  %119 = mul nuw nsw i64 %polly.indvar377, 480
  %scevgep381 = getelementptr i8, i8* %scevgep380, i64 %119
  %scevgep381382 = bitcast i8* %scevgep381 to double*
  %_p_scalar_383 = load double, double* %scevgep381382, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_387, %_p_scalar_383
  %scevgep389 = getelementptr i8, i8* %scevgep384, i64 %119
  %scevgep389390 = bitcast i8* %scevgep389 to double*
  %_p_scalar_391 = load double, double* %scevgep389390, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_395, %_p_scalar_391
  %120 = shl i64 %polly.indvar377, 3
  %121 = add nuw nsw i64 %120, %118
  %scevgep396 = getelementptr i8, i8* %call, i64 %121
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
  %122 = add i64 %indvar, 1
  %123 = mul nuw nsw i64 %polly.indvar488, 640
  %scevgep497 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check1183 = icmp ult i64 %122, 4
  br i1 %min.iters.check1183, label %polly.loop_header491.preheader, label %vector.ph1184

vector.ph1184:                                    ; preds = %polly.loop_header485
  %n.vec1186 = and i64 %122, -4
  br label %vector.body1182

vector.body1182:                                  ; preds = %vector.body1182, %vector.ph1184
  %index1187 = phi i64 [ 0, %vector.ph1184 ], [ %index.next1188, %vector.body1182 ]
  %124 = shl nuw nsw i64 %index1187, 3
  %125 = getelementptr i8, i8* %scevgep497, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1191 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !81, !noalias !83
  %127 = fmul fast <4 x double> %wide.load1191, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !81, !noalias !83
  %index.next1188 = add i64 %index1187, 4
  %129 = icmp eq i64 %index.next1188, %n.vec1186
  br i1 %129, label %middle.block1180, label %vector.body1182, !llvm.loop !86

middle.block1180:                                 ; preds = %vector.body1182
  %cmp.n1190 = icmp eq i64 %122, %n.vec1186
  br i1 %cmp.n1190, label %polly.loop_exit493, label %polly.loop_header491.preheader

polly.loop_header491.preheader:                   ; preds = %polly.loop_header485, %middle.block1180
  %polly.indvar494.ph = phi i64 [ 0, %polly.loop_header485 ], [ %n.vec1186, %middle.block1180 ]
  br label %polly.loop_header491

polly.loop_exit493:                               ; preds = %polly.loop_header491, %middle.block1180
  %polly.indvar_next489 = add nuw nsw i64 %polly.indvar488, 1
  %exitcond795.not = icmp eq i64 %polly.indvar_next489, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond795.not, label %polly.loop_header507, label %polly.loop_header485

polly.loop_header491:                             ; preds = %polly.loop_header491.preheader, %polly.loop_header491
  %polly.indvar494 = phi i64 [ %polly.indvar_next495, %polly.loop_header491 ], [ %polly.indvar494.ph, %polly.loop_header491.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar494, 3
  %scevgep498 = getelementptr i8, i8* %scevgep497, i64 %130
  %scevgep498499 = bitcast i8* %scevgep498 to double*
  %_p_scalar_500 = load double, double* %scevgep498499, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_500, 1.200000e+00
  store double %p_mul.i, double* %scevgep498499, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next495 = add nuw nsw i64 %polly.indvar494, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next495, %polly.indvar488
  br i1 %exitcond794.not, label %polly.loop_exit493, label %polly.loop_header491, !llvm.loop !87

polly.loop_header507:                             ; preds = %polly.loop_exit493, %polly.loop_exit515
  %indvars.iv784 = phi i64 [ %indvars.iv.next785, %polly.loop_exit515 ], [ 0, %polly.loop_exit493 ]
  %polly.indvar510 = phi i64 [ %polly.indvar_next511, %polly.loop_exit515 ], [ 0, %polly.loop_exit493 ]
  %131 = shl nsw i64 %polly.indvar510, 4
  br label %polly.loop_header513

polly.loop_exit515:                               ; preds = %polly.loop_exit521
  %polly.indvar_next511 = add nuw nsw i64 %polly.indvar510, 1
  %indvars.iv.next785 = add nuw nsw i64 %indvars.iv784, 16
  %exitcond792.not = icmp eq i64 %polly.indvar_next511, 5
  br i1 %exitcond792.not, label %polly.loop_header507.1, label %polly.loop_header507

polly.loop_header513:                             ; preds = %polly.loop_exit521, %polly.loop_header507
  %polly.indvar516 = phi i64 [ 0, %polly.loop_header507 ], [ %polly.indvar_next517, %polly.loop_exit521 ]
  %132 = shl nuw nsw i64 %polly.indvar516, 3
  %scevgep531 = getelementptr i8, i8* %call1, i64 %132
  %scevgep535 = getelementptr i8, i8* %call2, i64 %132
  br label %polly.loop_header519

polly.loop_exit521:                               ; preds = %polly.loop_exit527
  %polly.indvar_next517 = add nuw nsw i64 %polly.indvar516, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next517, 60
  br i1 %exitcond791.not, label %polly.loop_exit515, label %polly.loop_header513

polly.loop_header519:                             ; preds = %polly.loop_exit527, %polly.loop_header513
  %indvars.iv786 = phi i64 [ %indvars.iv.next787, %polly.loop_exit527 ], [ %indvars.iv784, %polly.loop_header513 ]
  %polly.indvar522 = phi i64 [ %polly.indvar_next523, %polly.loop_exit527 ], [ 0, %polly.loop_header513 ]
  %smin788 = call i64 @llvm.smin.i64(i64 %indvars.iv786, i64 31)
  %133 = add nuw nsw i64 %polly.indvar522, %131
  %134 = mul nuw nsw i64 %133, 480
  %scevgep536 = getelementptr i8, i8* %scevgep535, i64 %134
  %scevgep536537 = bitcast i8* %scevgep536 to double*
  %_p_scalar_538 = load double, double* %scevgep536537, align 8, !alias.scope !85, !noalias !88
  %scevgep544 = getelementptr i8, i8* %scevgep531, i64 %134
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !84, !noalias !89
  %135 = mul nuw nsw i64 %133, 640
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_header525
  %polly.indvar_next523 = add nuw nsw i64 %polly.indvar522, 1
  %indvars.iv.next787 = add nuw nsw i64 %indvars.iv786, 1
  %exitcond790.not = icmp eq i64 %polly.indvar_next523, 16
  br i1 %exitcond790.not, label %polly.loop_exit521, label %polly.loop_header519

polly.loop_header525:                             ; preds = %polly.loop_header525, %polly.loop_header519
  %polly.indvar528 = phi i64 [ 0, %polly.loop_header519 ], [ %polly.indvar_next529, %polly.loop_header525 ]
  %136 = mul nuw nsw i64 %polly.indvar528, 480
  %scevgep532 = getelementptr i8, i8* %scevgep531, i64 %136
  %scevgep532533 = bitcast i8* %scevgep532 to double*
  %_p_scalar_534 = load double, double* %scevgep532533, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_538, %_p_scalar_534
  %scevgep540 = getelementptr i8, i8* %scevgep535, i64 %136
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_546, %_p_scalar_542
  %137 = shl i64 %polly.indvar528, 3
  %138 = add nuw nsw i64 %137, %135
  %scevgep547 = getelementptr i8, i8* %call, i64 %138
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
  %139 = mul nuw nsw i64 %polly.indvar691, 640
  %140 = trunc i64 %polly.indvar691 to i32
  %broadcast.splatinsert914 = insertelement <4 x i32> poison, i32 %140, i32 0
  %broadcast.splat915 = shufflevector <4 x i32> %broadcast.splatinsert914, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body904

vector.body904:                                   ; preds = %vector.body904, %polly.loop_header688
  %index906 = phi i64 [ 0, %polly.loop_header688 ], [ %index.next907, %vector.body904 ]
  %vec.ind912 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header688 ], [ %vec.ind.next913, %vector.body904 ]
  %141 = mul <4 x i32> %vec.ind912, %broadcast.splat915
  %142 = add <4 x i32> %141, <i32 3, i32 3, i32 3, i32 3>
  %143 = urem <4 x i32> %142, <i32 80, i32 80, i32 80, i32 80>
  %144 = sitofp <4 x i32> %143 to <4 x double>
  %145 = fmul fast <4 x double> %144, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %146 = shl i64 %index906, 3
  %147 = add nuw nsw i64 %146, %139
  %148 = getelementptr i8, i8* %call, i64 %147
  %149 = bitcast i8* %148 to <4 x double>*
  store <4 x double> %145, <4 x double>* %149, align 8, !alias.scope !90, !noalias !92
  %index.next907 = add i64 %index906, 4
  %vec.ind.next913 = add <4 x i32> %vec.ind912, <i32 4, i32 4, i32 4, i32 4>
  %150 = icmp eq i64 %index.next907, 32
  br i1 %150, label %polly.loop_exit696, label %vector.body904, !llvm.loop !95

polly.loop_exit696:                               ; preds = %vector.body904
  %polly.indvar_next692 = add nuw nsw i64 %polly.indvar691, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next692, 32
  br i1 %exitcond815.not, label %polly.loop_header688.1, label %polly.loop_header688

polly.loop_header715:                             ; preds = %polly.loop_exit696.2.2, %polly.loop_exit723
  %polly.indvar718 = phi i64 [ %polly.indvar_next719, %polly.loop_exit723 ], [ 0, %polly.loop_exit696.2.2 ]
  %151 = mul nuw nsw i64 %polly.indvar718, 480
  %152 = trunc i64 %polly.indvar718 to i32
  %broadcast.splatinsert1028 = insertelement <4 x i32> poison, i32 %152, i32 0
  %broadcast.splat1029 = shufflevector <4 x i32> %broadcast.splatinsert1028, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %polly.loop_header715
  %index1020 = phi i64 [ 0, %polly.loop_header715 ], [ %index.next1021, %vector.body1018 ]
  %vec.ind1026 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header715 ], [ %vec.ind.next1027, %vector.body1018 ]
  %153 = mul <4 x i32> %vec.ind1026, %broadcast.splat1029
  %154 = add <4 x i32> %153, <i32 2, i32 2, i32 2, i32 2>
  %155 = urem <4 x i32> %154, <i32 60, i32 60, i32 60, i32 60>
  %156 = sitofp <4 x i32> %155 to <4 x double>
  %157 = fmul fast <4 x double> %156, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %158 = shl i64 %index1020, 3
  %159 = add i64 %158, %151
  %160 = getelementptr i8, i8* %call2, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %157, <4 x double>* %161, align 8, !alias.scope !94, !noalias !96
  %index.next1021 = add i64 %index1020, 4
  %vec.ind.next1027 = add <4 x i32> %vec.ind1026, <i32 4, i32 4, i32 4, i32 4>
  %162 = icmp eq i64 %index.next1021, 32
  br i1 %162, label %polly.loop_exit723, label %vector.body1018, !llvm.loop !97

polly.loop_exit723:                               ; preds = %vector.body1018
  %polly.indvar_next719 = add nuw nsw i64 %polly.indvar718, 1
  %exitcond806.not = icmp eq i64 %polly.indvar_next719, 32
  br i1 %exitcond806.not, label %polly.loop_header715.1, label %polly.loop_header715

polly.loop_header741:                             ; preds = %polly.loop_exit723.1.2, %polly.loop_exit749
  %polly.indvar744 = phi i64 [ %polly.indvar_next745, %polly.loop_exit749 ], [ 0, %polly.loop_exit723.1.2 ]
  %163 = mul nuw nsw i64 %polly.indvar744, 480
  %164 = trunc i64 %polly.indvar744 to i32
  %broadcast.splatinsert1106 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat1107 = shufflevector <4 x i32> %broadcast.splatinsert1106, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1096

vector.body1096:                                  ; preds = %vector.body1096, %polly.loop_header741
  %index1098 = phi i64 [ 0, %polly.loop_header741 ], [ %index.next1099, %vector.body1096 ]
  %vec.ind1104 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header741 ], [ %vec.ind.next1105, %vector.body1096 ]
  %165 = mul <4 x i32> %vec.ind1104, %broadcast.splat1107
  %166 = add <4 x i32> %165, <i32 1, i32 1, i32 1, i32 1>
  %167 = urem <4 x i32> %166, <i32 80, i32 80, i32 80, i32 80>
  %168 = sitofp <4 x i32> %167 to <4 x double>
  %169 = fmul fast <4 x double> %168, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %170 = shl i64 %index1098, 3
  %171 = add i64 %170, %163
  %172 = getelementptr i8, i8* %call1, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %169, <4 x double>* %173, align 8, !alias.scope !93, !noalias !98
  %index.next1099 = add i64 %index1098, 4
  %vec.ind.next1105 = add <4 x i32> %vec.ind1104, <i32 4, i32 4, i32 4, i32 4>
  %174 = icmp eq i64 %index.next1099, 32
  br i1 %174, label %polly.loop_exit749, label %vector.body1096, !llvm.loop !99

polly.loop_exit749:                               ; preds = %vector.body1096
  %polly.indvar_next745 = add nuw nsw i64 %polly.indvar744, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next745, 32
  br i1 %exitcond800.not, label %polly.loop_header741.1, label %polly.loop_header741

polly.loop_header205.1:                           ; preds = %polly.loop_exit213, %polly.loop_exit213.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit213 ]
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit213.1 ], [ 2, %polly.loop_exit213 ]
  %175 = shl nsw i64 %polly.indvar208.1, 4
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_exit219.1, %polly.loop_header205.1
  %polly.indvar214.1 = phi i64 [ 0, %polly.loop_header205.1 ], [ %polly.indvar_next215.1, %polly.loop_exit219.1 ]
  %176 = shl nuw nsw i64 %polly.indvar214.1, 3
  %scevgep229.1 = getelementptr i8, i8* %call1, i64 %176
  %scevgep233.1 = getelementptr i8, i8* %call2, i64 %176
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit225.1, %polly.loop_header211.1
  %indvars.iv764.1 = phi i64 [ %indvars.iv.next765.1, %polly.loop_exit225.1 ], [ %indvars.iv.1, %polly.loop_header211.1 ]
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_exit225.1 ], [ 0, %polly.loop_header211.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv764.1, i64 31)
  %177 = add nuw nsw i64 %polly.indvar220.1, %175
  %178 = mul nuw nsw i64 %177, 480
  %scevgep234.1 = getelementptr i8, i8* %scevgep233.1, i64 %178
  %scevgep234235.1 = bitcast i8* %scevgep234.1 to double*
  %_p_scalar_236.1 = load double, double* %scevgep234235.1, align 8, !alias.scope !66, !noalias !70
  %scevgep242.1 = getelementptr i8, i8* %scevgep229.1, i64 %178
  %scevgep242243.1 = bitcast i8* %scevgep242.1 to double*
  %_p_scalar_244.1 = load double, double* %scevgep242243.1, align 8, !alias.scope !65, !noalias !71
  %179 = mul nuw nsw i64 %177, 640
  br label %polly.loop_header223.1

polly.loop_header223.1:                           ; preds = %polly.loop_header223.1, %polly.loop_header217.1
  %polly.indvar226.1 = phi i64 [ 0, %polly.loop_header217.1 ], [ %polly.indvar_next227.1, %polly.loop_header223.1 ]
  %180 = add nuw nsw i64 %polly.indvar226.1, 32
  %181 = mul nuw nsw i64 %180, 480
  %scevgep230.1 = getelementptr i8, i8* %scevgep229.1, i64 %181
  %scevgep230231.1 = bitcast i8* %scevgep230.1 to double*
  %_p_scalar_232.1 = load double, double* %scevgep230231.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_236.1, %_p_scalar_232.1
  %scevgep238.1 = getelementptr i8, i8* %scevgep233.1, i64 %181
  %scevgep238239.1 = bitcast i8* %scevgep238.1 to double*
  %_p_scalar_240.1 = load double, double* %scevgep238239.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1 = fmul fast double %_p_scalar_244.1, %_p_scalar_240.1
  %182 = shl i64 %180, 3
  %183 = add nuw nsw i64 %182, %179
  %scevgep245.1 = getelementptr i8, i8* %call, i64 %183
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
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %indvars.iv.next765.1 = add nuw nsw i64 %indvars.iv764.1, 1
  %exitcond766.1.not = icmp eq i64 %polly.indvar_next221.1, 16
  br i1 %exitcond766.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond767.1.not = icmp eq i64 %polly.indvar_next215.1, 60
  br i1 %exitcond767.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 16
  %exitcond768.1.not = icmp eq i64 %polly.indvar_next209.1, 5
  br i1 %exitcond768.1.not, label %polly.loop_header211.2, label %polly.loop_header205.1

polly.loop_header211.2:                           ; preds = %polly.loop_exit213.1, %polly.loop_exit219.2
  %polly.indvar214.2 = phi i64 [ %polly.indvar_next215.2, %polly.loop_exit219.2 ], [ 0, %polly.loop_exit213.1 ]
  %184 = shl nuw nsw i64 %polly.indvar214.2, 3
  %scevgep229.2 = getelementptr i8, i8* %call1, i64 %184
  %scevgep233.2 = getelementptr i8, i8* %call2, i64 %184
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_exit225.2, %polly.loop_header211.2
  %indvars.iv764.2 = phi i64 [ %indvars.iv.next765.2, %polly.loop_exit225.2 ], [ 0, %polly.loop_header211.2 ]
  %polly.indvar220.2 = phi i64 [ %polly.indvar_next221.2, %polly.loop_exit225.2 ], [ 0, %polly.loop_header211.2 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv764.2, i64 31)
  %185 = add nuw nsw i64 %polly.indvar220.2, 64
  %186 = mul nuw nsw i64 %185, 480
  %scevgep234.2 = getelementptr i8, i8* %scevgep233.2, i64 %186
  %scevgep234235.2 = bitcast i8* %scevgep234.2 to double*
  %_p_scalar_236.2 = load double, double* %scevgep234235.2, align 8, !alias.scope !66, !noalias !70
  %scevgep242.2 = getelementptr i8, i8* %scevgep229.2, i64 %186
  %scevgep242243.2 = bitcast i8* %scevgep242.2 to double*
  %_p_scalar_244.2 = load double, double* %scevgep242243.2, align 8, !alias.scope !65, !noalias !71
  %187 = mul nuw nsw i64 %185, 640
  br label %polly.loop_header223.2

polly.loop_header223.2:                           ; preds = %polly.loop_header223.2, %polly.loop_header217.2
  %polly.indvar226.2 = phi i64 [ 0, %polly.loop_header217.2 ], [ %polly.indvar_next227.2, %polly.loop_header223.2 ]
  %188 = add nuw nsw i64 %polly.indvar226.2, 64
  %189 = mul nuw nsw i64 %188, 480
  %scevgep230.2 = getelementptr i8, i8* %scevgep229.2, i64 %189
  %scevgep230231.2 = bitcast i8* %scevgep230.2 to double*
  %_p_scalar_232.2 = load double, double* %scevgep230231.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2 = fmul fast double %_p_scalar_236.2, %_p_scalar_232.2
  %scevgep238.2 = getelementptr i8, i8* %scevgep233.2, i64 %189
  %scevgep238239.2 = bitcast i8* %scevgep238.2 to double*
  %_p_scalar_240.2 = load double, double* %scevgep238239.2, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.2 = fmul fast double %_p_scalar_244.2, %_p_scalar_240.2
  %190 = shl i64 %188, 3
  %191 = add nuw nsw i64 %190, %187
  %scevgep245.2 = getelementptr i8, i8* %call, i64 %191
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
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %indvars.iv.next765.2 = add nuw nsw i64 %indvars.iv764.2, 1
  %exitcond766.2.not = icmp eq i64 %polly.indvar_next221.2, 16
  br i1 %exitcond766.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.2

polly.loop_exit219.2:                             ; preds = %polly.loop_exit225.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %exitcond767.2.not = icmp eq i64 %polly.indvar_next215.2, 60
  br i1 %exitcond767.2.not, label %kernel_syr2k.exit129, label %polly.loop_header211.2

polly.loop_header356.1:                           ; preds = %polly.loop_exit364, %polly.loop_exit364.1
  %indvars.iv772.1 = phi i64 [ %indvars.iv.next773.1, %polly.loop_exit364.1 ], [ 0, %polly.loop_exit364 ]
  %polly.indvar359.1 = phi i64 [ %polly.indvar_next360.1, %polly.loop_exit364.1 ], [ 2, %polly.loop_exit364 ]
  %192 = shl nsw i64 %polly.indvar359.1, 4
  br label %polly.loop_header362.1

polly.loop_header362.1:                           ; preds = %polly.loop_exit370.1, %polly.loop_header356.1
  %polly.indvar365.1 = phi i64 [ 0, %polly.loop_header356.1 ], [ %polly.indvar_next366.1, %polly.loop_exit370.1 ]
  %193 = shl nuw nsw i64 %polly.indvar365.1, 3
  %scevgep380.1 = getelementptr i8, i8* %call1, i64 %193
  %scevgep384.1 = getelementptr i8, i8* %call2, i64 %193
  br label %polly.loop_header368.1

polly.loop_header368.1:                           ; preds = %polly.loop_exit376.1, %polly.loop_header362.1
  %indvars.iv774.1 = phi i64 [ %indvars.iv.next775.1, %polly.loop_exit376.1 ], [ %indvars.iv772.1, %polly.loop_header362.1 ]
  %polly.indvar371.1 = phi i64 [ %polly.indvar_next372.1, %polly.loop_exit376.1 ], [ 0, %polly.loop_header362.1 ]
  %smin776.1 = call i64 @llvm.smin.i64(i64 %indvars.iv774.1, i64 31)
  %194 = add nuw nsw i64 %polly.indvar371.1, %192
  %195 = mul nuw nsw i64 %194, 480
  %scevgep385.1 = getelementptr i8, i8* %scevgep384.1, i64 %195
  %scevgep385386.1 = bitcast i8* %scevgep385.1 to double*
  %_p_scalar_387.1 = load double, double* %scevgep385386.1, align 8, !alias.scope !76, !noalias !79
  %scevgep393.1 = getelementptr i8, i8* %scevgep380.1, i64 %195
  %scevgep393394.1 = bitcast i8* %scevgep393.1 to double*
  %_p_scalar_395.1 = load double, double* %scevgep393394.1, align 8, !alias.scope !75, !noalias !80
  %196 = mul nuw nsw i64 %194, 640
  br label %polly.loop_header374.1

polly.loop_header374.1:                           ; preds = %polly.loop_header374.1, %polly.loop_header368.1
  %polly.indvar377.1 = phi i64 [ 0, %polly.loop_header368.1 ], [ %polly.indvar_next378.1, %polly.loop_header374.1 ]
  %197 = add nuw nsw i64 %polly.indvar377.1, 32
  %198 = mul nuw nsw i64 %197, 480
  %scevgep381.1 = getelementptr i8, i8* %scevgep380.1, i64 %198
  %scevgep381382.1 = bitcast i8* %scevgep381.1 to double*
  %_p_scalar_383.1 = load double, double* %scevgep381382.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_387.1, %_p_scalar_383.1
  %scevgep389.1 = getelementptr i8, i8* %scevgep384.1, i64 %198
  %scevgep389390.1 = bitcast i8* %scevgep389.1 to double*
  %_p_scalar_391.1 = load double, double* %scevgep389390.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1 = fmul fast double %_p_scalar_395.1, %_p_scalar_391.1
  %199 = shl i64 %197, 3
  %200 = add nuw nsw i64 %199, %196
  %scevgep396.1 = getelementptr i8, i8* %call, i64 %200
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
  %polly.indvar_next372.1 = add nuw nsw i64 %polly.indvar371.1, 1
  %indvars.iv.next775.1 = add nuw nsw i64 %indvars.iv774.1, 1
  %exitcond778.1.not = icmp eq i64 %polly.indvar_next372.1, 16
  br i1 %exitcond778.1.not, label %polly.loop_exit370.1, label %polly.loop_header368.1

polly.loop_exit370.1:                             ; preds = %polly.loop_exit376.1
  %polly.indvar_next366.1 = add nuw nsw i64 %polly.indvar365.1, 1
  %exitcond779.1.not = icmp eq i64 %polly.indvar_next366.1, 60
  br i1 %exitcond779.1.not, label %polly.loop_exit364.1, label %polly.loop_header362.1

polly.loop_exit364.1:                             ; preds = %polly.loop_exit370.1
  %polly.indvar_next360.1 = add nuw nsw i64 %polly.indvar359.1, 1
  %indvars.iv.next773.1 = add nuw nsw i64 %indvars.iv772.1, 16
  %exitcond780.1.not = icmp eq i64 %polly.indvar_next360.1, 5
  br i1 %exitcond780.1.not, label %polly.loop_header362.2, label %polly.loop_header356.1

polly.loop_header362.2:                           ; preds = %polly.loop_exit364.1, %polly.loop_exit370.2
  %polly.indvar365.2 = phi i64 [ %polly.indvar_next366.2, %polly.loop_exit370.2 ], [ 0, %polly.loop_exit364.1 ]
  %201 = shl nuw nsw i64 %polly.indvar365.2, 3
  %scevgep380.2 = getelementptr i8, i8* %call1, i64 %201
  %scevgep384.2 = getelementptr i8, i8* %call2, i64 %201
  br label %polly.loop_header368.2

polly.loop_header368.2:                           ; preds = %polly.loop_exit376.2, %polly.loop_header362.2
  %indvars.iv774.2 = phi i64 [ %indvars.iv.next775.2, %polly.loop_exit376.2 ], [ 0, %polly.loop_header362.2 ]
  %polly.indvar371.2 = phi i64 [ %polly.indvar_next372.2, %polly.loop_exit376.2 ], [ 0, %polly.loop_header362.2 ]
  %smin776.2 = call i64 @llvm.smin.i64(i64 %indvars.iv774.2, i64 31)
  %202 = add nuw nsw i64 %polly.indvar371.2, 64
  %203 = mul nuw nsw i64 %202, 480
  %scevgep385.2 = getelementptr i8, i8* %scevgep384.2, i64 %203
  %scevgep385386.2 = bitcast i8* %scevgep385.2 to double*
  %_p_scalar_387.2 = load double, double* %scevgep385386.2, align 8, !alias.scope !76, !noalias !79
  %scevgep393.2 = getelementptr i8, i8* %scevgep380.2, i64 %203
  %scevgep393394.2 = bitcast i8* %scevgep393.2 to double*
  %_p_scalar_395.2 = load double, double* %scevgep393394.2, align 8, !alias.scope !75, !noalias !80
  %204 = mul nuw nsw i64 %202, 640
  br label %polly.loop_header374.2

polly.loop_header374.2:                           ; preds = %polly.loop_header374.2, %polly.loop_header368.2
  %polly.indvar377.2 = phi i64 [ 0, %polly.loop_header368.2 ], [ %polly.indvar_next378.2, %polly.loop_header374.2 ]
  %205 = add nuw nsw i64 %polly.indvar377.2, 64
  %206 = mul nuw nsw i64 %205, 480
  %scevgep381.2 = getelementptr i8, i8* %scevgep380.2, i64 %206
  %scevgep381382.2 = bitcast i8* %scevgep381.2 to double*
  %_p_scalar_383.2 = load double, double* %scevgep381382.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2 = fmul fast double %_p_scalar_387.2, %_p_scalar_383.2
  %scevgep389.2 = getelementptr i8, i8* %scevgep384.2, i64 %206
  %scevgep389390.2 = bitcast i8* %scevgep389.2 to double*
  %_p_scalar_391.2 = load double, double* %scevgep389390.2, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.2 = fmul fast double %_p_scalar_395.2, %_p_scalar_391.2
  %207 = shl i64 %205, 3
  %208 = add nuw nsw i64 %207, %204
  %scevgep396.2 = getelementptr i8, i8* %call, i64 %208
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
  %polly.indvar_next372.2 = add nuw nsw i64 %polly.indvar371.2, 1
  %indvars.iv.next775.2 = add nuw nsw i64 %indvars.iv774.2, 1
  %exitcond778.2.not = icmp eq i64 %polly.indvar_next372.2, 16
  br i1 %exitcond778.2.not, label %polly.loop_exit370.2, label %polly.loop_header368.2

polly.loop_exit370.2:                             ; preds = %polly.loop_exit376.2
  %polly.indvar_next366.2 = add nuw nsw i64 %polly.indvar365.2, 1
  %exitcond779.2.not = icmp eq i64 %polly.indvar_next366.2, 60
  br i1 %exitcond779.2.not, label %kernel_syr2k.exit90, label %polly.loop_header362.2

polly.loop_header507.1:                           ; preds = %polly.loop_exit515, %polly.loop_exit515.1
  %indvars.iv784.1 = phi i64 [ %indvars.iv.next785.1, %polly.loop_exit515.1 ], [ 0, %polly.loop_exit515 ]
  %polly.indvar510.1 = phi i64 [ %polly.indvar_next511.1, %polly.loop_exit515.1 ], [ 2, %polly.loop_exit515 ]
  %209 = shl nsw i64 %polly.indvar510.1, 4
  br label %polly.loop_header513.1

polly.loop_header513.1:                           ; preds = %polly.loop_exit521.1, %polly.loop_header507.1
  %polly.indvar516.1 = phi i64 [ 0, %polly.loop_header507.1 ], [ %polly.indvar_next517.1, %polly.loop_exit521.1 ]
  %210 = shl nuw nsw i64 %polly.indvar516.1, 3
  %scevgep531.1 = getelementptr i8, i8* %call1, i64 %210
  %scevgep535.1 = getelementptr i8, i8* %call2, i64 %210
  br label %polly.loop_header519.1

polly.loop_header519.1:                           ; preds = %polly.loop_exit527.1, %polly.loop_header513.1
  %indvars.iv786.1 = phi i64 [ %indvars.iv.next787.1, %polly.loop_exit527.1 ], [ %indvars.iv784.1, %polly.loop_header513.1 ]
  %polly.indvar522.1 = phi i64 [ %polly.indvar_next523.1, %polly.loop_exit527.1 ], [ 0, %polly.loop_header513.1 ]
  %smin788.1 = call i64 @llvm.smin.i64(i64 %indvars.iv786.1, i64 31)
  %211 = add nuw nsw i64 %polly.indvar522.1, %209
  %212 = mul nuw nsw i64 %211, 480
  %scevgep536.1 = getelementptr i8, i8* %scevgep535.1, i64 %212
  %scevgep536537.1 = bitcast i8* %scevgep536.1 to double*
  %_p_scalar_538.1 = load double, double* %scevgep536537.1, align 8, !alias.scope !85, !noalias !88
  %scevgep544.1 = getelementptr i8, i8* %scevgep531.1, i64 %212
  %scevgep544545.1 = bitcast i8* %scevgep544.1 to double*
  %_p_scalar_546.1 = load double, double* %scevgep544545.1, align 8, !alias.scope !84, !noalias !89
  %213 = mul nuw nsw i64 %211, 640
  br label %polly.loop_header525.1

polly.loop_header525.1:                           ; preds = %polly.loop_header525.1, %polly.loop_header519.1
  %polly.indvar528.1 = phi i64 [ 0, %polly.loop_header519.1 ], [ %polly.indvar_next529.1, %polly.loop_header525.1 ]
  %214 = add nuw nsw i64 %polly.indvar528.1, 32
  %215 = mul nuw nsw i64 %214, 480
  %scevgep532.1 = getelementptr i8, i8* %scevgep531.1, i64 %215
  %scevgep532533.1 = bitcast i8* %scevgep532.1 to double*
  %_p_scalar_534.1 = load double, double* %scevgep532533.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_538.1, %_p_scalar_534.1
  %scevgep540.1 = getelementptr i8, i8* %scevgep535.1, i64 %215
  %scevgep540541.1 = bitcast i8* %scevgep540.1 to double*
  %_p_scalar_542.1 = load double, double* %scevgep540541.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1 = fmul fast double %_p_scalar_546.1, %_p_scalar_542.1
  %216 = shl i64 %214, 3
  %217 = add nuw nsw i64 %216, %213
  %scevgep547.1 = getelementptr i8, i8* %call, i64 %217
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
  %polly.indvar_next523.1 = add nuw nsw i64 %polly.indvar522.1, 1
  %indvars.iv.next787.1 = add nuw nsw i64 %indvars.iv786.1, 1
  %exitcond790.1.not = icmp eq i64 %polly.indvar_next523.1, 16
  br i1 %exitcond790.1.not, label %polly.loop_exit521.1, label %polly.loop_header519.1

polly.loop_exit521.1:                             ; preds = %polly.loop_exit527.1
  %polly.indvar_next517.1 = add nuw nsw i64 %polly.indvar516.1, 1
  %exitcond791.1.not = icmp eq i64 %polly.indvar_next517.1, 60
  br i1 %exitcond791.1.not, label %polly.loop_exit515.1, label %polly.loop_header513.1

polly.loop_exit515.1:                             ; preds = %polly.loop_exit521.1
  %polly.indvar_next511.1 = add nuw nsw i64 %polly.indvar510.1, 1
  %indvars.iv.next785.1 = add nuw nsw i64 %indvars.iv784.1, 16
  %exitcond792.1.not = icmp eq i64 %polly.indvar_next511.1, 5
  br i1 %exitcond792.1.not, label %polly.loop_header513.2, label %polly.loop_header507.1

polly.loop_header513.2:                           ; preds = %polly.loop_exit515.1, %polly.loop_exit521.2
  %polly.indvar516.2 = phi i64 [ %polly.indvar_next517.2, %polly.loop_exit521.2 ], [ 0, %polly.loop_exit515.1 ]
  %218 = shl nuw nsw i64 %polly.indvar516.2, 3
  %scevgep531.2 = getelementptr i8, i8* %call1, i64 %218
  %scevgep535.2 = getelementptr i8, i8* %call2, i64 %218
  br label %polly.loop_header519.2

polly.loop_header519.2:                           ; preds = %polly.loop_exit527.2, %polly.loop_header513.2
  %indvars.iv786.2 = phi i64 [ %indvars.iv.next787.2, %polly.loop_exit527.2 ], [ 0, %polly.loop_header513.2 ]
  %polly.indvar522.2 = phi i64 [ %polly.indvar_next523.2, %polly.loop_exit527.2 ], [ 0, %polly.loop_header513.2 ]
  %smin788.2 = call i64 @llvm.smin.i64(i64 %indvars.iv786.2, i64 31)
  %219 = add nuw nsw i64 %polly.indvar522.2, 64
  %220 = mul nuw nsw i64 %219, 480
  %scevgep536.2 = getelementptr i8, i8* %scevgep535.2, i64 %220
  %scevgep536537.2 = bitcast i8* %scevgep536.2 to double*
  %_p_scalar_538.2 = load double, double* %scevgep536537.2, align 8, !alias.scope !85, !noalias !88
  %scevgep544.2 = getelementptr i8, i8* %scevgep531.2, i64 %220
  %scevgep544545.2 = bitcast i8* %scevgep544.2 to double*
  %_p_scalar_546.2 = load double, double* %scevgep544545.2, align 8, !alias.scope !84, !noalias !89
  %221 = mul nuw nsw i64 %219, 640
  br label %polly.loop_header525.2

polly.loop_header525.2:                           ; preds = %polly.loop_header525.2, %polly.loop_header519.2
  %polly.indvar528.2 = phi i64 [ 0, %polly.loop_header519.2 ], [ %polly.indvar_next529.2, %polly.loop_header525.2 ]
  %222 = add nuw nsw i64 %polly.indvar528.2, 64
  %223 = mul nuw nsw i64 %222, 480
  %scevgep532.2 = getelementptr i8, i8* %scevgep531.2, i64 %223
  %scevgep532533.2 = bitcast i8* %scevgep532.2 to double*
  %_p_scalar_534.2 = load double, double* %scevgep532533.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2 = fmul fast double %_p_scalar_538.2, %_p_scalar_534.2
  %scevgep540.2 = getelementptr i8, i8* %scevgep535.2, i64 %223
  %scevgep540541.2 = bitcast i8* %scevgep540.2 to double*
  %_p_scalar_542.2 = load double, double* %scevgep540541.2, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.2 = fmul fast double %_p_scalar_546.2, %_p_scalar_542.2
  %224 = shl i64 %222, 3
  %225 = add nuw nsw i64 %224, %221
  %scevgep547.2 = getelementptr i8, i8* %call, i64 %225
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
  %polly.indvar_next523.2 = add nuw nsw i64 %polly.indvar522.2, 1
  %indvars.iv.next787.2 = add nuw nsw i64 %indvars.iv786.2, 1
  %exitcond790.2.not = icmp eq i64 %polly.indvar_next523.2, 16
  br i1 %exitcond790.2.not, label %polly.loop_exit521.2, label %polly.loop_header519.2

polly.loop_exit521.2:                             ; preds = %polly.loop_exit527.2
  %polly.indvar_next517.2 = add nuw nsw i64 %polly.indvar516.2, 1
  %exitcond791.2.not = icmp eq i64 %polly.indvar_next517.2, 60
  br i1 %exitcond791.2.not, label %kernel_syr2k.exit, label %polly.loop_header513.2

polly.loop_header741.1:                           ; preds = %polly.loop_exit749, %polly.loop_exit749.1
  %polly.indvar744.1 = phi i64 [ %polly.indvar_next745.1, %polly.loop_exit749.1 ], [ 0, %polly.loop_exit749 ]
  %226 = mul nuw nsw i64 %polly.indvar744.1, 480
  %227 = trunc i64 %polly.indvar744.1 to i32
  %broadcast.splatinsert1118 = insertelement <4 x i32> poison, i32 %227, i32 0
  %broadcast.splat1119 = shufflevector <4 x i32> %broadcast.splatinsert1118, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1110

vector.body1110:                                  ; preds = %vector.body1110, %polly.loop_header741.1
  %index1112 = phi i64 [ 0, %polly.loop_header741.1 ], [ %index.next1113, %vector.body1110 ]
  %vec.ind1116 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header741.1 ], [ %vec.ind.next1117, %vector.body1110 ]
  %228 = add nuw nsw <4 x i64> %vec.ind1116, <i64 32, i64 32, i64 32, i64 32>
  %229 = trunc <4 x i64> %228 to <4 x i32>
  %230 = mul <4 x i32> %broadcast.splat1119, %229
  %231 = add <4 x i32> %230, <i32 1, i32 1, i32 1, i32 1>
  %232 = urem <4 x i32> %231, <i32 80, i32 80, i32 80, i32 80>
  %233 = sitofp <4 x i32> %232 to <4 x double>
  %234 = fmul fast <4 x double> %233, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %235 = extractelement <4 x i64> %228, i32 0
  %236 = shl i64 %235, 3
  %237 = add i64 %236, %226
  %238 = getelementptr i8, i8* %call1, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %234, <4 x double>* %239, align 8, !alias.scope !93, !noalias !98
  %index.next1113 = add i64 %index1112, 4
  %vec.ind.next1117 = add <4 x i64> %vec.ind1116, <i64 4, i64 4, i64 4, i64 4>
  %240 = icmp eq i64 %index.next1113, 28
  br i1 %240, label %polly.loop_exit749.1, label %vector.body1110, !llvm.loop !100

polly.loop_exit749.1:                             ; preds = %vector.body1110
  %polly.indvar_next745.1 = add nuw nsw i64 %polly.indvar744.1, 1
  %exitcond800.1.not = icmp eq i64 %polly.indvar_next745.1, 32
  br i1 %exitcond800.1.not, label %polly.loop_header741.1823, label %polly.loop_header741.1

polly.loop_header741.1823:                        ; preds = %polly.loop_exit749.1, %polly.loop_exit749.1834
  %polly.indvar744.1822 = phi i64 [ %polly.indvar_next745.1832, %polly.loop_exit749.1834 ], [ 0, %polly.loop_exit749.1 ]
  %241 = add nuw nsw i64 %polly.indvar744.1822, 32
  %242 = mul nuw nsw i64 %241, 480
  %243 = trunc i64 %241 to i32
  %broadcast.splatinsert1132 = insertelement <4 x i32> poison, i32 %243, i32 0
  %broadcast.splat1133 = shufflevector <4 x i32> %broadcast.splatinsert1132, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1122

vector.body1122:                                  ; preds = %vector.body1122, %polly.loop_header741.1823
  %index1124 = phi i64 [ 0, %polly.loop_header741.1823 ], [ %index.next1125, %vector.body1122 ]
  %vec.ind1130 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header741.1823 ], [ %vec.ind.next1131, %vector.body1122 ]
  %244 = mul <4 x i32> %vec.ind1130, %broadcast.splat1133
  %245 = add <4 x i32> %244, <i32 1, i32 1, i32 1, i32 1>
  %246 = urem <4 x i32> %245, <i32 80, i32 80, i32 80, i32 80>
  %247 = sitofp <4 x i32> %246 to <4 x double>
  %248 = fmul fast <4 x double> %247, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %249 = shl i64 %index1124, 3
  %250 = add i64 %249, %242
  %251 = getelementptr i8, i8* %call1, i64 %250
  %252 = bitcast i8* %251 to <4 x double>*
  store <4 x double> %248, <4 x double>* %252, align 8, !alias.scope !93, !noalias !98
  %index.next1125 = add i64 %index1124, 4
  %vec.ind.next1131 = add <4 x i32> %vec.ind1130, <i32 4, i32 4, i32 4, i32 4>
  %253 = icmp eq i64 %index.next1125, 32
  br i1 %253, label %polly.loop_exit749.1834, label %vector.body1122, !llvm.loop !101

polly.loop_exit749.1834:                          ; preds = %vector.body1122
  %polly.indvar_next745.1832 = add nuw nsw i64 %polly.indvar744.1822, 1
  %exitcond800.1833.not = icmp eq i64 %polly.indvar_next745.1832, 32
  br i1 %exitcond800.1833.not, label %polly.loop_header741.1.1, label %polly.loop_header741.1823

polly.loop_header741.1.1:                         ; preds = %polly.loop_exit749.1834, %polly.loop_exit749.1.1
  %polly.indvar744.1.1 = phi i64 [ %polly.indvar_next745.1.1, %polly.loop_exit749.1.1 ], [ 0, %polly.loop_exit749.1834 ]
  %254 = add nuw nsw i64 %polly.indvar744.1.1, 32
  %255 = mul nuw nsw i64 %254, 480
  %256 = trunc i64 %254 to i32
  %broadcast.splatinsert1144 = insertelement <4 x i32> poison, i32 %256, i32 0
  %broadcast.splat1145 = shufflevector <4 x i32> %broadcast.splatinsert1144, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %polly.loop_header741.1.1
  %index1138 = phi i64 [ 0, %polly.loop_header741.1.1 ], [ %index.next1139, %vector.body1136 ]
  %vec.ind1142 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header741.1.1 ], [ %vec.ind.next1143, %vector.body1136 ]
  %257 = add nuw nsw <4 x i64> %vec.ind1142, <i64 32, i64 32, i64 32, i64 32>
  %258 = trunc <4 x i64> %257 to <4 x i32>
  %259 = mul <4 x i32> %broadcast.splat1145, %258
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 80, i32 80, i32 80, i32 80>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %264 = extractelement <4 x i64> %257, i32 0
  %265 = shl i64 %264, 3
  %266 = add i64 %265, %255
  %267 = getelementptr i8, i8* %call1, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %263, <4 x double>* %268, align 8, !alias.scope !93, !noalias !98
  %index.next1139 = add i64 %index1138, 4
  %vec.ind.next1143 = add <4 x i64> %vec.ind1142, <i64 4, i64 4, i64 4, i64 4>
  %269 = icmp eq i64 %index.next1139, 28
  br i1 %269, label %polly.loop_exit749.1.1, label %vector.body1136, !llvm.loop !102

polly.loop_exit749.1.1:                           ; preds = %vector.body1136
  %polly.indvar_next745.1.1 = add nuw nsw i64 %polly.indvar744.1.1, 1
  %exitcond800.1.1.not = icmp eq i64 %polly.indvar_next745.1.1, 32
  br i1 %exitcond800.1.1.not, label %polly.loop_header741.2, label %polly.loop_header741.1.1

polly.loop_header741.2:                           ; preds = %polly.loop_exit749.1.1, %polly.loop_exit749.2
  %polly.indvar744.2 = phi i64 [ %polly.indvar_next745.2, %polly.loop_exit749.2 ], [ 0, %polly.loop_exit749.1.1 ]
  %270 = add nuw nsw i64 %polly.indvar744.2, 64
  %271 = mul nuw nsw i64 %270, 480
  %272 = trunc i64 %270 to i32
  %broadcast.splatinsert1158 = insertelement <4 x i32> poison, i32 %272, i32 0
  %broadcast.splat1159 = shufflevector <4 x i32> %broadcast.splatinsert1158, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %polly.loop_header741.2
  %index1150 = phi i64 [ 0, %polly.loop_header741.2 ], [ %index.next1151, %vector.body1148 ]
  %vec.ind1156 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header741.2 ], [ %vec.ind.next1157, %vector.body1148 ]
  %273 = mul <4 x i32> %vec.ind1156, %broadcast.splat1159
  %274 = add <4 x i32> %273, <i32 1, i32 1, i32 1, i32 1>
  %275 = urem <4 x i32> %274, <i32 80, i32 80, i32 80, i32 80>
  %276 = sitofp <4 x i32> %275 to <4 x double>
  %277 = fmul fast <4 x double> %276, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %278 = shl i64 %index1150, 3
  %279 = add i64 %278, %271
  %280 = getelementptr i8, i8* %call1, i64 %279
  %281 = bitcast i8* %280 to <4 x double>*
  store <4 x double> %277, <4 x double>* %281, align 8, !alias.scope !93, !noalias !98
  %index.next1151 = add i64 %index1150, 4
  %vec.ind.next1157 = add <4 x i32> %vec.ind1156, <i32 4, i32 4, i32 4, i32 4>
  %282 = icmp eq i64 %index.next1151, 32
  br i1 %282, label %polly.loop_exit749.2, label %vector.body1148, !llvm.loop !103

polly.loop_exit749.2:                             ; preds = %vector.body1148
  %polly.indvar_next745.2 = add nuw nsw i64 %polly.indvar744.2, 1
  %exitcond800.2.not = icmp eq i64 %polly.indvar_next745.2, 16
  br i1 %exitcond800.2.not, label %polly.loop_header741.1.2, label %polly.loop_header741.2

polly.loop_header741.1.2:                         ; preds = %polly.loop_exit749.2, %polly.loop_exit749.1.2
  %polly.indvar744.1.2 = phi i64 [ %polly.indvar_next745.1.2, %polly.loop_exit749.1.2 ], [ 0, %polly.loop_exit749.2 ]
  %283 = add nuw nsw i64 %polly.indvar744.1.2, 64
  %284 = mul nuw nsw i64 %283, 480
  %285 = trunc i64 %283 to i32
  %broadcast.splatinsert1170 = insertelement <4 x i32> poison, i32 %285, i32 0
  %broadcast.splat1171 = shufflevector <4 x i32> %broadcast.splatinsert1170, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %polly.loop_header741.1.2
  %index1164 = phi i64 [ 0, %polly.loop_header741.1.2 ], [ %index.next1165, %vector.body1162 ]
  %vec.ind1168 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header741.1.2 ], [ %vec.ind.next1169, %vector.body1162 ]
  %286 = add nuw nsw <4 x i64> %vec.ind1168, <i64 32, i64 32, i64 32, i64 32>
  %287 = trunc <4 x i64> %286 to <4 x i32>
  %288 = mul <4 x i32> %broadcast.splat1171, %287
  %289 = add <4 x i32> %288, <i32 1, i32 1, i32 1, i32 1>
  %290 = urem <4 x i32> %289, <i32 80, i32 80, i32 80, i32 80>
  %291 = sitofp <4 x i32> %290 to <4 x double>
  %292 = fmul fast <4 x double> %291, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %293 = extractelement <4 x i64> %286, i32 0
  %294 = shl i64 %293, 3
  %295 = add i64 %294, %284
  %296 = getelementptr i8, i8* %call1, i64 %295
  %297 = bitcast i8* %296 to <4 x double>*
  store <4 x double> %292, <4 x double>* %297, align 8, !alias.scope !93, !noalias !98
  %index.next1165 = add i64 %index1164, 4
  %vec.ind.next1169 = add <4 x i64> %vec.ind1168, <i64 4, i64 4, i64 4, i64 4>
  %298 = icmp eq i64 %index.next1165, 28
  br i1 %298, label %polly.loop_exit749.1.2, label %vector.body1162, !llvm.loop !104

polly.loop_exit749.1.2:                           ; preds = %vector.body1162
  %polly.indvar_next745.1.2 = add nuw nsw i64 %polly.indvar744.1.2, 1
  %exitcond800.1.2.not = icmp eq i64 %polly.indvar_next745.1.2, 16
  br i1 %exitcond800.1.2.not, label %init_array.exit, label %polly.loop_header741.1.2

polly.loop_header715.1:                           ; preds = %polly.loop_exit723, %polly.loop_exit723.1
  %polly.indvar718.1 = phi i64 [ %polly.indvar_next719.1, %polly.loop_exit723.1 ], [ 0, %polly.loop_exit723 ]
  %299 = mul nuw nsw i64 %polly.indvar718.1, 480
  %300 = trunc i64 %polly.indvar718.1 to i32
  %broadcast.splatinsert1040 = insertelement <4 x i32> poison, i32 %300, i32 0
  %broadcast.splat1041 = shufflevector <4 x i32> %broadcast.splatinsert1040, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1032

vector.body1032:                                  ; preds = %vector.body1032, %polly.loop_header715.1
  %index1034 = phi i64 [ 0, %polly.loop_header715.1 ], [ %index.next1035, %vector.body1032 ]
  %vec.ind1038 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header715.1 ], [ %vec.ind.next1039, %vector.body1032 ]
  %301 = add nuw nsw <4 x i64> %vec.ind1038, <i64 32, i64 32, i64 32, i64 32>
  %302 = trunc <4 x i64> %301 to <4 x i32>
  %303 = mul <4 x i32> %broadcast.splat1041, %302
  %304 = add <4 x i32> %303, <i32 2, i32 2, i32 2, i32 2>
  %305 = urem <4 x i32> %304, <i32 60, i32 60, i32 60, i32 60>
  %306 = sitofp <4 x i32> %305 to <4 x double>
  %307 = fmul fast <4 x double> %306, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %308 = extractelement <4 x i64> %301, i32 0
  %309 = shl i64 %308, 3
  %310 = add i64 %309, %299
  %311 = getelementptr i8, i8* %call2, i64 %310
  %312 = bitcast i8* %311 to <4 x double>*
  store <4 x double> %307, <4 x double>* %312, align 8, !alias.scope !94, !noalias !96
  %index.next1035 = add i64 %index1034, 4
  %vec.ind.next1039 = add <4 x i64> %vec.ind1038, <i64 4, i64 4, i64 4, i64 4>
  %313 = icmp eq i64 %index.next1035, 28
  br i1 %313, label %polly.loop_exit723.1, label %vector.body1032, !llvm.loop !105

polly.loop_exit723.1:                             ; preds = %vector.body1032
  %polly.indvar_next719.1 = add nuw nsw i64 %polly.indvar718.1, 1
  %exitcond806.1.not = icmp eq i64 %polly.indvar_next719.1, 32
  br i1 %exitcond806.1.not, label %polly.loop_header715.1837, label %polly.loop_header715.1

polly.loop_header715.1837:                        ; preds = %polly.loop_exit723.1, %polly.loop_exit723.1848
  %polly.indvar718.1836 = phi i64 [ %polly.indvar_next719.1846, %polly.loop_exit723.1848 ], [ 0, %polly.loop_exit723.1 ]
  %314 = add nuw nsw i64 %polly.indvar718.1836, 32
  %315 = mul nuw nsw i64 %314, 480
  %316 = trunc i64 %314 to i32
  %broadcast.splatinsert1054 = insertelement <4 x i32> poison, i32 %316, i32 0
  %broadcast.splat1055 = shufflevector <4 x i32> %broadcast.splatinsert1054, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1044

vector.body1044:                                  ; preds = %vector.body1044, %polly.loop_header715.1837
  %index1046 = phi i64 [ 0, %polly.loop_header715.1837 ], [ %index.next1047, %vector.body1044 ]
  %vec.ind1052 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header715.1837 ], [ %vec.ind.next1053, %vector.body1044 ]
  %317 = mul <4 x i32> %vec.ind1052, %broadcast.splat1055
  %318 = add <4 x i32> %317, <i32 2, i32 2, i32 2, i32 2>
  %319 = urem <4 x i32> %318, <i32 60, i32 60, i32 60, i32 60>
  %320 = sitofp <4 x i32> %319 to <4 x double>
  %321 = fmul fast <4 x double> %320, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %322 = shl i64 %index1046, 3
  %323 = add i64 %322, %315
  %324 = getelementptr i8, i8* %call2, i64 %323
  %325 = bitcast i8* %324 to <4 x double>*
  store <4 x double> %321, <4 x double>* %325, align 8, !alias.scope !94, !noalias !96
  %index.next1047 = add i64 %index1046, 4
  %vec.ind.next1053 = add <4 x i32> %vec.ind1052, <i32 4, i32 4, i32 4, i32 4>
  %326 = icmp eq i64 %index.next1047, 32
  br i1 %326, label %polly.loop_exit723.1848, label %vector.body1044, !llvm.loop !106

polly.loop_exit723.1848:                          ; preds = %vector.body1044
  %polly.indvar_next719.1846 = add nuw nsw i64 %polly.indvar718.1836, 1
  %exitcond806.1847.not = icmp eq i64 %polly.indvar_next719.1846, 32
  br i1 %exitcond806.1847.not, label %polly.loop_header715.1.1, label %polly.loop_header715.1837

polly.loop_header715.1.1:                         ; preds = %polly.loop_exit723.1848, %polly.loop_exit723.1.1
  %polly.indvar718.1.1 = phi i64 [ %polly.indvar_next719.1.1, %polly.loop_exit723.1.1 ], [ 0, %polly.loop_exit723.1848 ]
  %327 = add nuw nsw i64 %polly.indvar718.1.1, 32
  %328 = mul nuw nsw i64 %327, 480
  %329 = trunc i64 %327 to i32
  %broadcast.splatinsert1066 = insertelement <4 x i32> poison, i32 %329, i32 0
  %broadcast.splat1067 = shufflevector <4 x i32> %broadcast.splatinsert1066, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1058

vector.body1058:                                  ; preds = %vector.body1058, %polly.loop_header715.1.1
  %index1060 = phi i64 [ 0, %polly.loop_header715.1.1 ], [ %index.next1061, %vector.body1058 ]
  %vec.ind1064 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header715.1.1 ], [ %vec.ind.next1065, %vector.body1058 ]
  %330 = add nuw nsw <4 x i64> %vec.ind1064, <i64 32, i64 32, i64 32, i64 32>
  %331 = trunc <4 x i64> %330 to <4 x i32>
  %332 = mul <4 x i32> %broadcast.splat1067, %331
  %333 = add <4 x i32> %332, <i32 2, i32 2, i32 2, i32 2>
  %334 = urem <4 x i32> %333, <i32 60, i32 60, i32 60, i32 60>
  %335 = sitofp <4 x i32> %334 to <4 x double>
  %336 = fmul fast <4 x double> %335, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %337 = extractelement <4 x i64> %330, i32 0
  %338 = shl i64 %337, 3
  %339 = add i64 %338, %328
  %340 = getelementptr i8, i8* %call2, i64 %339
  %341 = bitcast i8* %340 to <4 x double>*
  store <4 x double> %336, <4 x double>* %341, align 8, !alias.scope !94, !noalias !96
  %index.next1061 = add i64 %index1060, 4
  %vec.ind.next1065 = add <4 x i64> %vec.ind1064, <i64 4, i64 4, i64 4, i64 4>
  %342 = icmp eq i64 %index.next1061, 28
  br i1 %342, label %polly.loop_exit723.1.1, label %vector.body1058, !llvm.loop !107

polly.loop_exit723.1.1:                           ; preds = %vector.body1058
  %polly.indvar_next719.1.1 = add nuw nsw i64 %polly.indvar718.1.1, 1
  %exitcond806.1.1.not = icmp eq i64 %polly.indvar_next719.1.1, 32
  br i1 %exitcond806.1.1.not, label %polly.loop_header715.2, label %polly.loop_header715.1.1

polly.loop_header715.2:                           ; preds = %polly.loop_exit723.1.1, %polly.loop_exit723.2
  %polly.indvar718.2 = phi i64 [ %polly.indvar_next719.2, %polly.loop_exit723.2 ], [ 0, %polly.loop_exit723.1.1 ]
  %343 = add nuw nsw i64 %polly.indvar718.2, 64
  %344 = mul nuw nsw i64 %343, 480
  %345 = trunc i64 %343 to i32
  %broadcast.splatinsert1080 = insertelement <4 x i32> poison, i32 %345, i32 0
  %broadcast.splat1081 = shufflevector <4 x i32> %broadcast.splatinsert1080, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1070

vector.body1070:                                  ; preds = %vector.body1070, %polly.loop_header715.2
  %index1072 = phi i64 [ 0, %polly.loop_header715.2 ], [ %index.next1073, %vector.body1070 ]
  %vec.ind1078 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header715.2 ], [ %vec.ind.next1079, %vector.body1070 ]
  %346 = mul <4 x i32> %vec.ind1078, %broadcast.splat1081
  %347 = add <4 x i32> %346, <i32 2, i32 2, i32 2, i32 2>
  %348 = urem <4 x i32> %347, <i32 60, i32 60, i32 60, i32 60>
  %349 = sitofp <4 x i32> %348 to <4 x double>
  %350 = fmul fast <4 x double> %349, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %351 = shl i64 %index1072, 3
  %352 = add i64 %351, %344
  %353 = getelementptr i8, i8* %call2, i64 %352
  %354 = bitcast i8* %353 to <4 x double>*
  store <4 x double> %350, <4 x double>* %354, align 8, !alias.scope !94, !noalias !96
  %index.next1073 = add i64 %index1072, 4
  %vec.ind.next1079 = add <4 x i32> %vec.ind1078, <i32 4, i32 4, i32 4, i32 4>
  %355 = icmp eq i64 %index.next1073, 32
  br i1 %355, label %polly.loop_exit723.2, label %vector.body1070, !llvm.loop !108

polly.loop_exit723.2:                             ; preds = %vector.body1070
  %polly.indvar_next719.2 = add nuw nsw i64 %polly.indvar718.2, 1
  %exitcond806.2.not = icmp eq i64 %polly.indvar_next719.2, 16
  br i1 %exitcond806.2.not, label %polly.loop_header715.1.2, label %polly.loop_header715.2

polly.loop_header715.1.2:                         ; preds = %polly.loop_exit723.2, %polly.loop_exit723.1.2
  %polly.indvar718.1.2 = phi i64 [ %polly.indvar_next719.1.2, %polly.loop_exit723.1.2 ], [ 0, %polly.loop_exit723.2 ]
  %356 = add nuw nsw i64 %polly.indvar718.1.2, 64
  %357 = mul nuw nsw i64 %356, 480
  %358 = trunc i64 %356 to i32
  %broadcast.splatinsert1092 = insertelement <4 x i32> poison, i32 %358, i32 0
  %broadcast.splat1093 = shufflevector <4 x i32> %broadcast.splatinsert1092, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1084

vector.body1084:                                  ; preds = %vector.body1084, %polly.loop_header715.1.2
  %index1086 = phi i64 [ 0, %polly.loop_header715.1.2 ], [ %index.next1087, %vector.body1084 ]
  %vec.ind1090 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header715.1.2 ], [ %vec.ind.next1091, %vector.body1084 ]
  %359 = add nuw nsw <4 x i64> %vec.ind1090, <i64 32, i64 32, i64 32, i64 32>
  %360 = trunc <4 x i64> %359 to <4 x i32>
  %361 = mul <4 x i32> %broadcast.splat1093, %360
  %362 = add <4 x i32> %361, <i32 2, i32 2, i32 2, i32 2>
  %363 = urem <4 x i32> %362, <i32 60, i32 60, i32 60, i32 60>
  %364 = sitofp <4 x i32> %363 to <4 x double>
  %365 = fmul fast <4 x double> %364, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %366 = extractelement <4 x i64> %359, i32 0
  %367 = shl i64 %366, 3
  %368 = add i64 %367, %357
  %369 = getelementptr i8, i8* %call2, i64 %368
  %370 = bitcast i8* %369 to <4 x double>*
  store <4 x double> %365, <4 x double>* %370, align 8, !alias.scope !94, !noalias !96
  %index.next1087 = add i64 %index1086, 4
  %vec.ind.next1091 = add <4 x i64> %vec.ind1090, <i64 4, i64 4, i64 4, i64 4>
  %371 = icmp eq i64 %index.next1087, 28
  br i1 %371, label %polly.loop_exit723.1.2, label %vector.body1084, !llvm.loop !109

polly.loop_exit723.1.2:                           ; preds = %vector.body1084
  %polly.indvar_next719.1.2 = add nuw nsw i64 %polly.indvar718.1.2, 1
  %exitcond806.1.2.not = icmp eq i64 %polly.indvar_next719.1.2, 16
  br i1 %exitcond806.1.2.not, label %polly.loop_header741, label %polly.loop_header715.1.2

polly.loop_header688.1:                           ; preds = %polly.loop_exit696, %polly.loop_exit696.1
  %polly.indvar691.1 = phi i64 [ %polly.indvar_next692.1, %polly.loop_exit696.1 ], [ 0, %polly.loop_exit696 ]
  %372 = mul nuw nsw i64 %polly.indvar691.1, 640
  %373 = trunc i64 %polly.indvar691.1 to i32
  %broadcast.splatinsert926 = insertelement <4 x i32> poison, i32 %373, i32 0
  %broadcast.splat927 = shufflevector <4 x i32> %broadcast.splatinsert926, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body918

vector.body918:                                   ; preds = %vector.body918, %polly.loop_header688.1
  %index920 = phi i64 [ 0, %polly.loop_header688.1 ], [ %index.next921, %vector.body918 ]
  %vec.ind924 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header688.1 ], [ %vec.ind.next925, %vector.body918 ]
  %374 = add nuw nsw <4 x i64> %vec.ind924, <i64 32, i64 32, i64 32, i64 32>
  %375 = trunc <4 x i64> %374 to <4 x i32>
  %376 = mul <4 x i32> %broadcast.splat927, %375
  %377 = add <4 x i32> %376, <i32 3, i32 3, i32 3, i32 3>
  %378 = urem <4 x i32> %377, <i32 80, i32 80, i32 80, i32 80>
  %379 = sitofp <4 x i32> %378 to <4 x double>
  %380 = fmul fast <4 x double> %379, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %381 = extractelement <4 x i64> %374, i32 0
  %382 = shl i64 %381, 3
  %383 = add nuw nsw i64 %382, %372
  %384 = getelementptr i8, i8* %call, i64 %383
  %385 = bitcast i8* %384 to <4 x double>*
  store <4 x double> %380, <4 x double>* %385, align 8, !alias.scope !90, !noalias !92
  %index.next921 = add i64 %index920, 4
  %vec.ind.next925 = add <4 x i64> %vec.ind924, <i64 4, i64 4, i64 4, i64 4>
  %386 = icmp eq i64 %index.next921, 32
  br i1 %386, label %polly.loop_exit696.1, label %vector.body918, !llvm.loop !110

polly.loop_exit696.1:                             ; preds = %vector.body918
  %polly.indvar_next692.1 = add nuw nsw i64 %polly.indvar691.1, 1
  %exitcond815.1.not = icmp eq i64 %polly.indvar_next692.1, 32
  br i1 %exitcond815.1.not, label %polly.loop_header688.2, label %polly.loop_header688.1

polly.loop_header688.2:                           ; preds = %polly.loop_exit696.1, %polly.loop_exit696.2
  %polly.indvar691.2 = phi i64 [ %polly.indvar_next692.2, %polly.loop_exit696.2 ], [ 0, %polly.loop_exit696.1 ]
  %387 = mul nuw nsw i64 %polly.indvar691.2, 640
  %388 = trunc i64 %polly.indvar691.2 to i32
  %broadcast.splatinsert938 = insertelement <4 x i32> poison, i32 %388, i32 0
  %broadcast.splat939 = shufflevector <4 x i32> %broadcast.splatinsert938, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body930

vector.body930:                                   ; preds = %vector.body930, %polly.loop_header688.2
  %index932 = phi i64 [ 0, %polly.loop_header688.2 ], [ %index.next933, %vector.body930 ]
  %vec.ind936 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header688.2 ], [ %vec.ind.next937, %vector.body930 ]
  %389 = add nuw nsw <4 x i64> %vec.ind936, <i64 64, i64 64, i64 64, i64 64>
  %390 = trunc <4 x i64> %389 to <4 x i32>
  %391 = mul <4 x i32> %broadcast.splat939, %390
  %392 = add <4 x i32> %391, <i32 3, i32 3, i32 3, i32 3>
  %393 = urem <4 x i32> %392, <i32 80, i32 80, i32 80, i32 80>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %396 = extractelement <4 x i64> %389, i32 0
  %397 = shl i64 %396, 3
  %398 = add nuw nsw i64 %397, %387
  %399 = getelementptr i8, i8* %call, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %395, <4 x double>* %400, align 8, !alias.scope !90, !noalias !92
  %index.next933 = add i64 %index932, 4
  %vec.ind.next937 = add <4 x i64> %vec.ind936, <i64 4, i64 4, i64 4, i64 4>
  %401 = icmp eq i64 %index.next933, 16
  br i1 %401, label %polly.loop_exit696.2, label %vector.body930, !llvm.loop !111

polly.loop_exit696.2:                             ; preds = %vector.body930
  %polly.indvar_next692.2 = add nuw nsw i64 %polly.indvar691.2, 1
  %exitcond815.2.not = icmp eq i64 %polly.indvar_next692.2, 32
  br i1 %exitcond815.2.not, label %polly.loop_header688.1851, label %polly.loop_header688.2

polly.loop_header688.1851:                        ; preds = %polly.loop_exit696.2, %polly.loop_exit696.1862
  %polly.indvar691.1850 = phi i64 [ %polly.indvar_next692.1860, %polly.loop_exit696.1862 ], [ 0, %polly.loop_exit696.2 ]
  %402 = add nuw nsw i64 %polly.indvar691.1850, 32
  %403 = mul nuw nsw i64 %402, 640
  %404 = trunc i64 %402 to i32
  %broadcast.splatinsert952 = insertelement <4 x i32> poison, i32 %404, i32 0
  %broadcast.splat953 = shufflevector <4 x i32> %broadcast.splatinsert952, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %polly.loop_header688.1851
  %index944 = phi i64 [ 0, %polly.loop_header688.1851 ], [ %index.next945, %vector.body942 ]
  %vec.ind950 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header688.1851 ], [ %vec.ind.next951, %vector.body942 ]
  %405 = mul <4 x i32> %vec.ind950, %broadcast.splat953
  %406 = add <4 x i32> %405, <i32 3, i32 3, i32 3, i32 3>
  %407 = urem <4 x i32> %406, <i32 80, i32 80, i32 80, i32 80>
  %408 = sitofp <4 x i32> %407 to <4 x double>
  %409 = fmul fast <4 x double> %408, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %410 = shl i64 %index944, 3
  %411 = add nuw nsw i64 %410, %403
  %412 = getelementptr i8, i8* %call, i64 %411
  %413 = bitcast i8* %412 to <4 x double>*
  store <4 x double> %409, <4 x double>* %413, align 8, !alias.scope !90, !noalias !92
  %index.next945 = add i64 %index944, 4
  %vec.ind.next951 = add <4 x i32> %vec.ind950, <i32 4, i32 4, i32 4, i32 4>
  %414 = icmp eq i64 %index.next945, 32
  br i1 %414, label %polly.loop_exit696.1862, label %vector.body942, !llvm.loop !112

polly.loop_exit696.1862:                          ; preds = %vector.body942
  %polly.indvar_next692.1860 = add nuw nsw i64 %polly.indvar691.1850, 1
  %exitcond815.1861.not = icmp eq i64 %polly.indvar_next692.1860, 32
  br i1 %exitcond815.1861.not, label %polly.loop_header688.1.1, label %polly.loop_header688.1851

polly.loop_header688.1.1:                         ; preds = %polly.loop_exit696.1862, %polly.loop_exit696.1.1
  %polly.indvar691.1.1 = phi i64 [ %polly.indvar_next692.1.1, %polly.loop_exit696.1.1 ], [ 0, %polly.loop_exit696.1862 ]
  %415 = add nuw nsw i64 %polly.indvar691.1.1, 32
  %416 = mul nuw nsw i64 %415, 640
  %417 = trunc i64 %415 to i32
  %broadcast.splatinsert964 = insertelement <4 x i32> poison, i32 %417, i32 0
  %broadcast.splat965 = shufflevector <4 x i32> %broadcast.splatinsert964, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body956

vector.body956:                                   ; preds = %vector.body956, %polly.loop_header688.1.1
  %index958 = phi i64 [ 0, %polly.loop_header688.1.1 ], [ %index.next959, %vector.body956 ]
  %vec.ind962 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header688.1.1 ], [ %vec.ind.next963, %vector.body956 ]
  %418 = add nuw nsw <4 x i64> %vec.ind962, <i64 32, i64 32, i64 32, i64 32>
  %419 = trunc <4 x i64> %418 to <4 x i32>
  %420 = mul <4 x i32> %broadcast.splat965, %419
  %421 = add <4 x i32> %420, <i32 3, i32 3, i32 3, i32 3>
  %422 = urem <4 x i32> %421, <i32 80, i32 80, i32 80, i32 80>
  %423 = sitofp <4 x i32> %422 to <4 x double>
  %424 = fmul fast <4 x double> %423, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %425 = extractelement <4 x i64> %418, i32 0
  %426 = shl i64 %425, 3
  %427 = add nuw nsw i64 %426, %416
  %428 = getelementptr i8, i8* %call, i64 %427
  %429 = bitcast i8* %428 to <4 x double>*
  store <4 x double> %424, <4 x double>* %429, align 8, !alias.scope !90, !noalias !92
  %index.next959 = add i64 %index958, 4
  %vec.ind.next963 = add <4 x i64> %vec.ind962, <i64 4, i64 4, i64 4, i64 4>
  %430 = icmp eq i64 %index.next959, 32
  br i1 %430, label %polly.loop_exit696.1.1, label %vector.body956, !llvm.loop !113

polly.loop_exit696.1.1:                           ; preds = %vector.body956
  %polly.indvar_next692.1.1 = add nuw nsw i64 %polly.indvar691.1.1, 1
  %exitcond815.1.1.not = icmp eq i64 %polly.indvar_next692.1.1, 32
  br i1 %exitcond815.1.1.not, label %polly.loop_header688.2.1, label %polly.loop_header688.1.1

polly.loop_header688.2.1:                         ; preds = %polly.loop_exit696.1.1, %polly.loop_exit696.2.1
  %polly.indvar691.2.1 = phi i64 [ %polly.indvar_next692.2.1, %polly.loop_exit696.2.1 ], [ 0, %polly.loop_exit696.1.1 ]
  %431 = add nuw nsw i64 %polly.indvar691.2.1, 32
  %432 = mul nuw nsw i64 %431, 640
  %433 = trunc i64 %431 to i32
  %broadcast.splatinsert976 = insertelement <4 x i32> poison, i32 %433, i32 0
  %broadcast.splat977 = shufflevector <4 x i32> %broadcast.splatinsert976, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body968

vector.body968:                                   ; preds = %vector.body968, %polly.loop_header688.2.1
  %index970 = phi i64 [ 0, %polly.loop_header688.2.1 ], [ %index.next971, %vector.body968 ]
  %vec.ind974 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header688.2.1 ], [ %vec.ind.next975, %vector.body968 ]
  %434 = add nuw nsw <4 x i64> %vec.ind974, <i64 64, i64 64, i64 64, i64 64>
  %435 = trunc <4 x i64> %434 to <4 x i32>
  %436 = mul <4 x i32> %broadcast.splat977, %435
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
  %index.next971 = add i64 %index970, 4
  %vec.ind.next975 = add <4 x i64> %vec.ind974, <i64 4, i64 4, i64 4, i64 4>
  %446 = icmp eq i64 %index.next971, 16
  br i1 %446, label %polly.loop_exit696.2.1, label %vector.body968, !llvm.loop !114

polly.loop_exit696.2.1:                           ; preds = %vector.body968
  %polly.indvar_next692.2.1 = add nuw nsw i64 %polly.indvar691.2.1, 1
  %exitcond815.2.1.not = icmp eq i64 %polly.indvar_next692.2.1, 32
  br i1 %exitcond815.2.1.not, label %polly.loop_header688.2865, label %polly.loop_header688.2.1

polly.loop_header688.2865:                        ; preds = %polly.loop_exit696.2.1, %polly.loop_exit696.2876
  %polly.indvar691.2864 = phi i64 [ %polly.indvar_next692.2874, %polly.loop_exit696.2876 ], [ 0, %polly.loop_exit696.2.1 ]
  %447 = add nuw nsw i64 %polly.indvar691.2864, 64
  %448 = mul nuw nsw i64 %447, 640
  %449 = trunc i64 %447 to i32
  %broadcast.splatinsert990 = insertelement <4 x i32> poison, i32 %449, i32 0
  %broadcast.splat991 = shufflevector <4 x i32> %broadcast.splatinsert990, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body980

vector.body980:                                   ; preds = %vector.body980, %polly.loop_header688.2865
  %index982 = phi i64 [ 0, %polly.loop_header688.2865 ], [ %index.next983, %vector.body980 ]
  %vec.ind988 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header688.2865 ], [ %vec.ind.next989, %vector.body980 ]
  %450 = mul <4 x i32> %vec.ind988, %broadcast.splat991
  %451 = add <4 x i32> %450, <i32 3, i32 3, i32 3, i32 3>
  %452 = urem <4 x i32> %451, <i32 80, i32 80, i32 80, i32 80>
  %453 = sitofp <4 x i32> %452 to <4 x double>
  %454 = fmul fast <4 x double> %453, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %455 = shl i64 %index982, 3
  %456 = add nuw nsw i64 %455, %448
  %457 = getelementptr i8, i8* %call, i64 %456
  %458 = bitcast i8* %457 to <4 x double>*
  store <4 x double> %454, <4 x double>* %458, align 8, !alias.scope !90, !noalias !92
  %index.next983 = add i64 %index982, 4
  %vec.ind.next989 = add <4 x i32> %vec.ind988, <i32 4, i32 4, i32 4, i32 4>
  %459 = icmp eq i64 %index.next983, 32
  br i1 %459, label %polly.loop_exit696.2876, label %vector.body980, !llvm.loop !115

polly.loop_exit696.2876:                          ; preds = %vector.body980
  %polly.indvar_next692.2874 = add nuw nsw i64 %polly.indvar691.2864, 1
  %exitcond815.2875.not = icmp eq i64 %polly.indvar_next692.2874, 16
  br i1 %exitcond815.2875.not, label %polly.loop_header688.1.2, label %polly.loop_header688.2865

polly.loop_header688.1.2:                         ; preds = %polly.loop_exit696.2876, %polly.loop_exit696.1.2
  %polly.indvar691.1.2 = phi i64 [ %polly.indvar_next692.1.2, %polly.loop_exit696.1.2 ], [ 0, %polly.loop_exit696.2876 ]
  %460 = add nuw nsw i64 %polly.indvar691.1.2, 64
  %461 = mul nuw nsw i64 %460, 640
  %462 = trunc i64 %460 to i32
  %broadcast.splatinsert1002 = insertelement <4 x i32> poison, i32 %462, i32 0
  %broadcast.splat1003 = shufflevector <4 x i32> %broadcast.splatinsert1002, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body994

vector.body994:                                   ; preds = %vector.body994, %polly.loop_header688.1.2
  %index996 = phi i64 [ 0, %polly.loop_header688.1.2 ], [ %index.next997, %vector.body994 ]
  %vec.ind1000 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header688.1.2 ], [ %vec.ind.next1001, %vector.body994 ]
  %463 = add nuw nsw <4 x i64> %vec.ind1000, <i64 32, i64 32, i64 32, i64 32>
  %464 = trunc <4 x i64> %463 to <4 x i32>
  %465 = mul <4 x i32> %broadcast.splat1003, %464
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
  %index.next997 = add i64 %index996, 4
  %vec.ind.next1001 = add <4 x i64> %vec.ind1000, <i64 4, i64 4, i64 4, i64 4>
  %475 = icmp eq i64 %index.next997, 32
  br i1 %475, label %polly.loop_exit696.1.2, label %vector.body994, !llvm.loop !116

polly.loop_exit696.1.2:                           ; preds = %vector.body994
  %polly.indvar_next692.1.2 = add nuw nsw i64 %polly.indvar691.1.2, 1
  %exitcond815.1.2.not = icmp eq i64 %polly.indvar_next692.1.2, 16
  br i1 %exitcond815.1.2.not, label %polly.loop_header688.2.2, label %polly.loop_header688.1.2

polly.loop_header688.2.2:                         ; preds = %polly.loop_exit696.1.2, %polly.loop_exit696.2.2
  %polly.indvar691.2.2 = phi i64 [ %polly.indvar_next692.2.2, %polly.loop_exit696.2.2 ], [ 0, %polly.loop_exit696.1.2 ]
  %476 = add nuw nsw i64 %polly.indvar691.2.2, 64
  %477 = mul nuw nsw i64 %476, 640
  %478 = trunc i64 %476 to i32
  %broadcast.splatinsert1014 = insertelement <4 x i32> poison, i32 %478, i32 0
  %broadcast.splat1015 = shufflevector <4 x i32> %broadcast.splatinsert1014, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1006

vector.body1006:                                  ; preds = %vector.body1006, %polly.loop_header688.2.2
  %index1008 = phi i64 [ 0, %polly.loop_header688.2.2 ], [ %index.next1009, %vector.body1006 ]
  %vec.ind1012 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header688.2.2 ], [ %vec.ind.next1013, %vector.body1006 ]
  %479 = add nuw nsw <4 x i64> %vec.ind1012, <i64 64, i64 64, i64 64, i64 64>
  %480 = trunc <4 x i64> %479 to <4 x i32>
  %481 = mul <4 x i32> %broadcast.splat1015, %480
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
  %index.next1009 = add i64 %index1008, 4
  %vec.ind.next1013 = add <4 x i64> %vec.ind1012, <i64 4, i64 4, i64 4, i64 4>
  %491 = icmp eq i64 %index.next1009, 16
  br i1 %491, label %polly.loop_exit696.2.2, label %vector.body1006, !llvm.loop !117

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
!24 = !{!"llvm.loop.tile.size", i32 32}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 2048}
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
!44 = !{!"llvm.loop.tile.size", i32 16}
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
