; ModuleID = 'syr2k_recreations//mmp_syr2k_S_7.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_7.c"
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
  %call736 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1597 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1597, %call2
  %polly.access.call2617 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2617, %call1
  %2 = or i1 %0, %1
  %polly.access.call637 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call637, %call2
  %4 = icmp ule i8* %polly.access.call2617, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call637, %call1
  %8 = icmp ule i8* %polly.access.call1597, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header722, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep913 = getelementptr i8, i8* %call2, i64 %12
  %scevgep912 = getelementptr i8, i8* %call2, i64 %11
  %scevgep911 = getelementptr i8, i8* %call1, i64 %12
  %scevgep910 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep910, %scevgep913
  %bound1 = icmp ult i8* %scevgep912, %scevgep911
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
  br i1 %exitcond18.not.i, label %vector.ph917, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph917:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert924 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat925 = shufflevector <4 x i64> %broadcast.splatinsert924, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body916

vector.body916:                                   ; preds = %vector.body916, %vector.ph917
  %index918 = phi i64 [ 0, %vector.ph917 ], [ %index.next919, %vector.body916 ]
  %vec.ind922 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph917 ], [ %vec.ind.next923, %vector.body916 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind922, %broadcast.splat925
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv7.i, i64 %index918
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next919 = add i64 %index918, 4
  %vec.ind.next923 = add <4 x i64> %vec.ind922, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next919, 80
  br i1 %40, label %for.inc41.i, label %vector.body916, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body916
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph917, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit783.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start423, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1270, label %vector.ph1199

vector.ph1199:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %vector.ph1199
  %index1200 = phi i64 [ 0, %vector.ph1199 ], [ %index.next1201, %vector.body1198 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i, i64 %index1200
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1201 = add i64 %index1200, 4
  %46 = icmp eq i64 %index.next1201, %n.vec
  br i1 %46, label %middle.block1196, label %vector.body1198, !llvm.loop !18

middle.block1196:                                 ; preds = %vector.body1198
  %cmp.n1203 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1203, label %for.inc6.i, label %for.body3.i46.preheader1270

for.body3.i46.preheader1270:                      ; preds = %for.body3.i46.preheader, %middle.block1196
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1196 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1270, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1270 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1196, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting424
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start260, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1219 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1219, label %for.body3.i60.preheader1269, label %vector.ph1220

vector.ph1220:                                    ; preds = %for.body3.i60.preheader
  %n.vec1222 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1218

vector.body1218:                                  ; preds = %vector.body1218, %vector.ph1220
  %index1223 = phi i64 [ 0, %vector.ph1220 ], [ %index.next1224, %vector.body1218 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i52, i64 %index1223
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1227 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1227, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1224 = add i64 %index1223, 4
  %57 = icmp eq i64 %index.next1224, %n.vec1222
  br i1 %57, label %middle.block1216, label %vector.body1218, !llvm.loop !55

middle.block1216:                                 ; preds = %vector.body1218
  %cmp.n1226 = icmp eq i64 %indvars.iv21.i52, %n.vec1222
  br i1 %cmp.n1226, label %for.inc6.i63, label %for.body3.i60.preheader1269

for.body3.i60.preheader1269:                      ; preds = %for.body3.i60.preheader, %middle.block1216
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1222, %middle.block1216 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1269, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1269 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1216, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting261
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1245 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1245, label %for.body3.i99.preheader1268, label %vector.ph1246

vector.ph1246:                                    ; preds = %for.body3.i99.preheader
  %n.vec1248 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1244

vector.body1244:                                  ; preds = %vector.body1244, %vector.ph1246
  %index1249 = phi i64 [ 0, %vector.ph1246 ], [ %index.next1250, %vector.body1244 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i91, i64 %index1249
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1253 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1253, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1250 = add i64 %index1249, 4
  %68 = icmp eq i64 %index.next1250, %n.vec1248
  br i1 %68, label %middle.block1242, label %vector.body1244, !llvm.loop !57

middle.block1242:                                 ; preds = %vector.body1244
  %cmp.n1252 = icmp eq i64 %indvars.iv21.i91, %n.vec1248
  br i1 %cmp.n1252, label %for.inc6.i102, label %for.body3.i99.preheader1268

for.body3.i99.preheader1268:                      ; preds = %for.body3.i99.preheader, %middle.block1242
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1248, %middle.block1242 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1268, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1268 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1242, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !44

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !59
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !62

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1257 = phi i64 [ %indvar.next1258, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1257, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1259 = icmp ult i64 %88, 4
  br i1 %min.iters.check1259, label %polly.loop_header191.preheader, label %vector.ph1260

vector.ph1260:                                    ; preds = %polly.loop_header
  %n.vec1262 = and i64 %88, -4
  br label %vector.body1256

vector.body1256:                                  ; preds = %vector.body1256, %vector.ph1260
  %index1263 = phi i64 [ 0, %vector.ph1260 ], [ %index.next1264, %vector.body1256 ]
  %90 = shl nuw nsw i64 %index1263, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1267 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1267, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1264 = add i64 %index1263, 4
  %95 = icmp eq i64 %index.next1264, %n.vec1262
  br i1 %95, label %middle.block1254, label %vector.body1256, !llvm.loop !69

middle.block1254:                                 ; preds = %vector.body1256
  %cmp.n1266 = icmp eq i64 %88, %n.vec1262
  br i1 %cmp.n1266, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1254
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1262, %middle.block1254 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1254
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1258 = add i64 %indvar1257, 1
  br i1 %exitcond801.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond800.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv = phi i64 [ 1, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = shl nsw i64 %polly.indvar202, 3
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond799.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond799.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199
  %indvars.iv794 = phi i64 [ %indvars.iv.next795, %polly.loop_exit229 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  br label %polly.loop_header211

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next795 = add nuw nsw i64 %indvars.iv794, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next209, 8
  br i1 %exitcond798.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_header211 ]
  %98 = mul nuw nsw i64 %polly.indvar214, 480
  %scevgep792 = getelementptr i8, i8* %malloccall, i64 %98
  %scevgep793 = getelementptr i8, i8* %call1, i64 %98
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep792, i8* noundef nonnull align 8 dereferenceable(480) %scevgep793, i64 480, i1 false)
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, %indvars.iv794
  br i1 %exitcond.not, label %polly.loop_header227.preheader, label %polly.loop_header211

polly.loop_header227.preheader:                   ; preds = %polly.loop_header211
  %99 = add nuw nsw i64 %polly.indvar208, %97
  %100 = mul nuw nsw i64 %99, 480
  %polly.access.mul.Packed_MemRef_call1251 = mul nuw nsw i64 %99, 60
  %101 = mul nuw nsw i64 %99, 640
  br label %polly.loop_header227

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit235
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header227.preheader ]
  %102 = shl nuw nsw i64 %polly.indvar230, 3
  %scevgep243 = getelementptr i8, i8* %call2, i64 %102
  %scevgep244 = getelementptr i8, i8* %scevgep243, i64 %100
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call1252 = add nuw nsw i64 %polly.indvar230, %polly.access.mul.Packed_MemRef_call1251
  %polly.access.Packed_MemRef_call1253 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1252
  %_p_scalar_254 = load double, double* %polly.access.Packed_MemRef_call1253, align 8
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next231, 60
  br i1 %exitcond797.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header233, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_header233 ]
  %polly.access.mul.Packed_MemRef_call1239 = mul nuw nsw i64 %polly.indvar236, 60
  %polly.access.add.Packed_MemRef_call1240 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239, %polly.indvar230
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  %_p_scalar_242 = load double, double* %polly.access.Packed_MemRef_call1241, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_246, %_p_scalar_242
  %103 = mul nuw nsw i64 %polly.indvar236, 480
  %scevgep248 = getelementptr i8, i8* %scevgep243, i64 %103
  %scevgep248249 = bitcast i8* %scevgep248 to double*
  %_p_scalar_250 = load double, double* %scevgep248249, align 8, !alias.scope !67, !noalias !72
  %p_mul37.i114 = fmul fast double %_p_scalar_254, %_p_scalar_250
  %104 = shl nuw nsw i64 %polly.indvar236, 3
  %105 = add nuw nsw i64 %104, %101
  %scevgep255 = getelementptr i8, i8* %call, i64 %105
  %scevgep255256 = bitcast i8* %scevgep255 to double*
  %_p_scalar_257 = load double, double* %scevgep255256, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_257
  store double %p_add42.i118, double* %scevgep255256, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond796.not = icmp eq i64 %polly.indvar_next237, %indvars.iv794
  br i1 %exitcond796.not, label %polly.loop_exit235, label %polly.loop_header233

polly.start260:                                   ; preds = %kernel_syr2k.exit
  %malloccall262 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header346

polly.exiting261:                                 ; preds = %polly.loop_exit370
  tail call void @free(i8* nonnull %malloccall262)
  br label %kernel_syr2k.exit90

polly.loop_header346:                             ; preds = %polly.loop_exit354, %polly.start260
  %indvar1231 = phi i64 [ %indvar.next1232, %polly.loop_exit354 ], [ 0, %polly.start260 ]
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_exit354 ], [ 1, %polly.start260 ]
  %106 = add i64 %indvar1231, 1
  %107 = mul nuw nsw i64 %polly.indvar349, 640
  %scevgep358 = getelementptr i8, i8* %call, i64 %107
  %min.iters.check1233 = icmp ult i64 %106, 4
  br i1 %min.iters.check1233, label %polly.loop_header352.preheader, label %vector.ph1234

vector.ph1234:                                    ; preds = %polly.loop_header346
  %n.vec1236 = and i64 %106, -4
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1234
  %index1237 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1238, %vector.body1230 ]
  %108 = shl nuw nsw i64 %index1237, 3
  %109 = getelementptr i8, i8* %scevgep358, i64 %108
  %110 = bitcast i8* %109 to <4 x double>*
  %wide.load1241 = load <4 x double>, <4 x double>* %110, align 8, !alias.scope !73, !noalias !75
  %111 = fmul fast <4 x double> %wide.load1241, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %112 = bitcast i8* %109 to <4 x double>*
  store <4 x double> %111, <4 x double>* %112, align 8, !alias.scope !73, !noalias !75
  %index.next1238 = add i64 %index1237, 4
  %113 = icmp eq i64 %index.next1238, %n.vec1236
  br i1 %113, label %middle.block1228, label %vector.body1230, !llvm.loop !79

middle.block1228:                                 ; preds = %vector.body1230
  %cmp.n1240 = icmp eq i64 %106, %n.vec1236
  br i1 %cmp.n1240, label %polly.loop_exit354, label %polly.loop_header352.preheader

polly.loop_header352.preheader:                   ; preds = %polly.loop_header346, %middle.block1228
  %polly.indvar355.ph = phi i64 [ 0, %polly.loop_header346 ], [ %n.vec1236, %middle.block1228 ]
  br label %polly.loop_header352

polly.loop_exit354:                               ; preds = %polly.loop_header352, %middle.block1228
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next350, 80
  %indvar.next1232 = add i64 %indvar1231, 1
  br i1 %exitcond815.not, label %polly.loop_header362.preheader, label %polly.loop_header346

polly.loop_header362.preheader:                   ; preds = %polly.loop_exit354
  %Packed_MemRef_call1263 = bitcast i8* %malloccall262 to double*
  br label %polly.loop_header362

polly.loop_header352:                             ; preds = %polly.loop_header352.preheader, %polly.loop_header352
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_header352 ], [ %polly.indvar355.ph, %polly.loop_header352.preheader ]
  %114 = shl nuw nsw i64 %polly.indvar355, 3
  %scevgep359 = getelementptr i8, i8* %scevgep358, i64 %114
  %scevgep359360 = bitcast i8* %scevgep359 to double*
  %_p_scalar_361 = load double, double* %scevgep359360, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_361, 1.200000e+00
  store double %p_mul.i57, double* %scevgep359360, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next356, %polly.indvar349
  br i1 %exitcond814.not, label %polly.loop_exit354, label %polly.loop_header352, !llvm.loop !80

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_exit370
  %indvars.iv805 = phi i64 [ 1, %polly.loop_header362.preheader ], [ %indvars.iv.next806, %polly.loop_exit370 ]
  %polly.indvar365 = phi i64 [ 0, %polly.loop_header362.preheader ], [ %polly.indvar_next366, %polly.loop_exit370 ]
  %115 = shl nsw i64 %polly.indvar365, 3
  br label %polly.loop_header368

polly.loop_exit370:                               ; preds = %polly.loop_exit392
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %indvars.iv.next806 = add nuw nsw i64 %indvars.iv805, 8
  %exitcond813.not = icmp eq i64 %polly.indvar_next366, 10
  br i1 %exitcond813.not, label %polly.exiting261, label %polly.loop_header362

polly.loop_header368:                             ; preds = %polly.loop_exit392, %polly.loop_header362
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit392 ], [ %indvars.iv805, %polly.loop_header362 ]
  %polly.indvar371 = phi i64 [ %polly.indvar_next372, %polly.loop_exit392 ], [ 0, %polly.loop_header362 ]
  br label %polly.loop_header374

polly.loop_exit392:                               ; preds = %polly.loop_exit398
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %indvars.iv.next808 = add nuw nsw i64 %indvars.iv807, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next372, 8
  br i1 %exitcond812.not, label %polly.loop_exit370, label %polly.loop_header368

polly.loop_header374:                             ; preds = %polly.loop_header374, %polly.loop_header368
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header368 ], [ %polly.indvar_next378, %polly.loop_header374 ]
  %116 = mul nuw nsw i64 %polly.indvar377, 480
  %scevgep803 = getelementptr i8, i8* %malloccall262, i64 %116
  %scevgep804 = getelementptr i8, i8* %call1, i64 %116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep803, i8* noundef nonnull align 8 dereferenceable(480) %scevgep804, i64 480, i1 false)
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next378, %indvars.iv807
  br i1 %exitcond809.not, label %polly.loop_header390.preheader, label %polly.loop_header374

polly.loop_header390.preheader:                   ; preds = %polly.loop_header374
  %117 = add nuw nsw i64 %polly.indvar371, %115
  %118 = mul nuw nsw i64 %117, 480
  %polly.access.mul.Packed_MemRef_call1263414 = mul nuw nsw i64 %117, 60
  %119 = mul nuw nsw i64 %117, 640
  br label %polly.loop_header390

polly.loop_header390:                             ; preds = %polly.loop_header390.preheader, %polly.loop_exit398
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 0, %polly.loop_header390.preheader ]
  %120 = shl nuw nsw i64 %polly.indvar393, 3
  %scevgep406 = getelementptr i8, i8* %call2, i64 %120
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %118
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call1263415 = add nuw nsw i64 %polly.indvar393, %polly.access.mul.Packed_MemRef_call1263414
  %polly.access.Packed_MemRef_call1263416 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263415
  %_p_scalar_417 = load double, double* %polly.access.Packed_MemRef_call1263416, align 8
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond811.not = icmp eq i64 %polly.indvar_next394, 60
  br i1 %exitcond811.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header396:                             ; preds = %polly.loop_header396, %polly.loop_header390
  %polly.indvar399 = phi i64 [ 0, %polly.loop_header390 ], [ %polly.indvar_next400, %polly.loop_header396 ]
  %polly.access.mul.Packed_MemRef_call1263402 = mul nuw nsw i64 %polly.indvar399, 60
  %polly.access.add.Packed_MemRef_call1263403 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402, %polly.indvar393
  %polly.access.Packed_MemRef_call1263404 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403
  %_p_scalar_405 = load double, double* %polly.access.Packed_MemRef_call1263404, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_409, %_p_scalar_405
  %121 = mul nuw nsw i64 %polly.indvar399, 480
  %scevgep411 = getelementptr i8, i8* %scevgep406, i64 %121
  %scevgep411412 = bitcast i8* %scevgep411 to double*
  %_p_scalar_413 = load double, double* %scevgep411412, align 8, !alias.scope !77, !noalias !81
  %p_mul37.i75 = fmul fast double %_p_scalar_417, %_p_scalar_413
  %122 = shl nuw nsw i64 %polly.indvar399, 3
  %123 = add nuw nsw i64 %122, %119
  %scevgep418 = getelementptr i8, i8* %call, i64 %123
  %scevgep418419 = bitcast i8* %scevgep418 to double*
  %_p_scalar_420 = load double, double* %scevgep418419, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_420
  store double %p_add42.i79, double* %scevgep418419, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next400, %indvars.iv807
  br i1 %exitcond810.not, label %polly.loop_exit398, label %polly.loop_header396

polly.start423:                                   ; preds = %init_array.exit
  %malloccall425 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header509

polly.exiting424:                                 ; preds = %polly.loop_exit533
  tail call void @free(i8* nonnull %malloccall425)
  br label %kernel_syr2k.exit

polly.loop_header509:                             ; preds = %polly.loop_exit517, %polly.start423
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit517 ], [ 0, %polly.start423 ]
  %polly.indvar512 = phi i64 [ %polly.indvar_next513, %polly.loop_exit517 ], [ 1, %polly.start423 ]
  %124 = add i64 %indvar, 1
  %125 = mul nuw nsw i64 %polly.indvar512, 640
  %scevgep521 = getelementptr i8, i8* %call, i64 %125
  %min.iters.check1207 = icmp ult i64 %124, 4
  br i1 %min.iters.check1207, label %polly.loop_header515.preheader, label %vector.ph1208

vector.ph1208:                                    ; preds = %polly.loop_header509
  %n.vec1210 = and i64 %124, -4
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1208
  %index1211 = phi i64 [ 0, %vector.ph1208 ], [ %index.next1212, %vector.body1206 ]
  %126 = shl nuw nsw i64 %index1211, 3
  %127 = getelementptr i8, i8* %scevgep521, i64 %126
  %128 = bitcast i8* %127 to <4 x double>*
  %wide.load1215 = load <4 x double>, <4 x double>* %128, align 8, !alias.scope !82, !noalias !84
  %129 = fmul fast <4 x double> %wide.load1215, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %130 = bitcast i8* %127 to <4 x double>*
  store <4 x double> %129, <4 x double>* %130, align 8, !alias.scope !82, !noalias !84
  %index.next1212 = add i64 %index1211, 4
  %131 = icmp eq i64 %index.next1212, %n.vec1210
  br i1 %131, label %middle.block1204, label %vector.body1206, !llvm.loop !88

middle.block1204:                                 ; preds = %vector.body1206
  %cmp.n1214 = icmp eq i64 %124, %n.vec1210
  br i1 %cmp.n1214, label %polly.loop_exit517, label %polly.loop_header515.preheader

polly.loop_header515.preheader:                   ; preds = %polly.loop_header509, %middle.block1204
  %polly.indvar518.ph = phi i64 [ 0, %polly.loop_header509 ], [ %n.vec1210, %middle.block1204 ]
  br label %polly.loop_header515

polly.loop_exit517:                               ; preds = %polly.loop_header515, %middle.block1204
  %polly.indvar_next513 = add nuw nsw i64 %polly.indvar512, 1
  %exitcond829.not = icmp eq i64 %polly.indvar_next513, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond829.not, label %polly.loop_header525.preheader, label %polly.loop_header509

polly.loop_header525.preheader:                   ; preds = %polly.loop_exit517
  %Packed_MemRef_call1426 = bitcast i8* %malloccall425 to double*
  br label %polly.loop_header525

polly.loop_header515:                             ; preds = %polly.loop_header515.preheader, %polly.loop_header515
  %polly.indvar518 = phi i64 [ %polly.indvar_next519, %polly.loop_header515 ], [ %polly.indvar518.ph, %polly.loop_header515.preheader ]
  %132 = shl nuw nsw i64 %polly.indvar518, 3
  %scevgep522 = getelementptr i8, i8* %scevgep521, i64 %132
  %scevgep522523 = bitcast i8* %scevgep522 to double*
  %_p_scalar_524 = load double, double* %scevgep522523, align 8, !alias.scope !82, !noalias !84
  %p_mul.i = fmul fast double %_p_scalar_524, 1.200000e+00
  store double %p_mul.i, double* %scevgep522523, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next519 = add nuw nsw i64 %polly.indvar518, 1
  %exitcond828.not = icmp eq i64 %polly.indvar_next519, %polly.indvar512
  br i1 %exitcond828.not, label %polly.loop_exit517, label %polly.loop_header515, !llvm.loop !89

polly.loop_header525:                             ; preds = %polly.loop_header525.preheader, %polly.loop_exit533
  %indvars.iv819 = phi i64 [ 1, %polly.loop_header525.preheader ], [ %indvars.iv.next820, %polly.loop_exit533 ]
  %polly.indvar528 = phi i64 [ 0, %polly.loop_header525.preheader ], [ %polly.indvar_next529, %polly.loop_exit533 ]
  %133 = shl nsw i64 %polly.indvar528, 3
  br label %polly.loop_header531

polly.loop_exit533:                               ; preds = %polly.loop_exit555
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 8
  %exitcond827.not = icmp eq i64 %polly.indvar_next529, 10
  br i1 %exitcond827.not, label %polly.exiting424, label %polly.loop_header525

polly.loop_header531:                             ; preds = %polly.loop_exit555, %polly.loop_header525
  %indvars.iv821 = phi i64 [ %indvars.iv.next822, %polly.loop_exit555 ], [ %indvars.iv819, %polly.loop_header525 ]
  %polly.indvar534 = phi i64 [ %polly.indvar_next535, %polly.loop_exit555 ], [ 0, %polly.loop_header525 ]
  br label %polly.loop_header537

polly.loop_exit555:                               ; preds = %polly.loop_exit561
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %indvars.iv.next822 = add nuw nsw i64 %indvars.iv821, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next535, 8
  br i1 %exitcond826.not, label %polly.loop_exit533, label %polly.loop_header531

polly.loop_header537:                             ; preds = %polly.loop_header537, %polly.loop_header531
  %polly.indvar540 = phi i64 [ 0, %polly.loop_header531 ], [ %polly.indvar_next541, %polly.loop_header537 ]
  %134 = mul nuw nsw i64 %polly.indvar540, 480
  %scevgep817 = getelementptr i8, i8* %malloccall425, i64 %134
  %scevgep818 = getelementptr i8, i8* %call1, i64 %134
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep817, i8* noundef nonnull align 8 dereferenceable(480) %scevgep818, i64 480, i1 false)
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next541, %indvars.iv821
  br i1 %exitcond823.not, label %polly.loop_header553.preheader, label %polly.loop_header537

polly.loop_header553.preheader:                   ; preds = %polly.loop_header537
  %135 = add nuw nsw i64 %polly.indvar534, %133
  %136 = mul nuw nsw i64 %135, 480
  %polly.access.mul.Packed_MemRef_call1426577 = mul nuw nsw i64 %135, 60
  %137 = mul nuw nsw i64 %135, 640
  br label %polly.loop_header553

polly.loop_header553:                             ; preds = %polly.loop_header553.preheader, %polly.loop_exit561
  %polly.indvar556 = phi i64 [ %polly.indvar_next557, %polly.loop_exit561 ], [ 0, %polly.loop_header553.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar556, 3
  %scevgep569 = getelementptr i8, i8* %call2, i64 %138
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %136
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !86, !noalias !90
  %polly.access.add.Packed_MemRef_call1426578 = add nuw nsw i64 %polly.indvar556, %polly.access.mul.Packed_MemRef_call1426577
  %polly.access.Packed_MemRef_call1426579 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426578
  %_p_scalar_580 = load double, double* %polly.access.Packed_MemRef_call1426579, align 8
  br label %polly.loop_header559

polly.loop_exit561:                               ; preds = %polly.loop_header559
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next557, 60
  br i1 %exitcond825.not, label %polly.loop_exit555, label %polly.loop_header553

polly.loop_header559:                             ; preds = %polly.loop_header559, %polly.loop_header553
  %polly.indvar562 = phi i64 [ 0, %polly.loop_header553 ], [ %polly.indvar_next563, %polly.loop_header559 ]
  %polly.access.mul.Packed_MemRef_call1426565 = mul nuw nsw i64 %polly.indvar562, 60
  %polly.access.add.Packed_MemRef_call1426566 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565, %polly.indvar556
  %polly.access.Packed_MemRef_call1426567 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566
  %_p_scalar_568 = load double, double* %polly.access.Packed_MemRef_call1426567, align 8
  %p_mul27.i = fmul fast double %_p_scalar_572, %_p_scalar_568
  %139 = mul nuw nsw i64 %polly.indvar562, 480
  %scevgep574 = getelementptr i8, i8* %scevgep569, i64 %139
  %scevgep574575 = bitcast i8* %scevgep574 to double*
  %_p_scalar_576 = load double, double* %scevgep574575, align 8, !alias.scope !86, !noalias !90
  %p_mul37.i = fmul fast double %_p_scalar_580, %_p_scalar_576
  %140 = shl nuw nsw i64 %polly.indvar562, 3
  %141 = add nuw nsw i64 %140, %137
  %scevgep581 = getelementptr i8, i8* %call, i64 %141
  %scevgep581582 = bitcast i8* %scevgep581 to double*
  %_p_scalar_583 = load double, double* %scevgep581582, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_583
  store double %p_add42.i, double* %scevgep581582, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next563, %indvars.iv821
  br i1 %exitcond824.not, label %polly.loop_exit561, label %polly.loop_header559

polly.loop_header722:                             ; preds = %entry, %polly.loop_exit730
  %polly.indvar725 = phi i64 [ %polly.indvar_next726, %polly.loop_exit730 ], [ 0, %entry ]
  %142 = mul nuw nsw i64 %polly.indvar725, 640
  %143 = trunc i64 %polly.indvar725 to i32
  %broadcast.splatinsert938 = insertelement <4 x i32> poison, i32 %143, i32 0
  %broadcast.splat939 = shufflevector <4 x i32> %broadcast.splatinsert938, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body928

vector.body928:                                   ; preds = %vector.body928, %polly.loop_header722
  %index930 = phi i64 [ 0, %polly.loop_header722 ], [ %index.next931, %vector.body928 ]
  %vec.ind936 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722 ], [ %vec.ind.next937, %vector.body928 ]
  %144 = mul <4 x i32> %vec.ind936, %broadcast.splat939
  %145 = add <4 x i32> %144, <i32 3, i32 3, i32 3, i32 3>
  %146 = urem <4 x i32> %145, <i32 80, i32 80, i32 80, i32 80>
  %147 = sitofp <4 x i32> %146 to <4 x double>
  %148 = fmul fast <4 x double> %147, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %149 = shl i64 %index930, 3
  %150 = add nuw nsw i64 %149, %142
  %151 = getelementptr i8, i8* %call, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %148, <4 x double>* %152, align 8, !alias.scope !91, !noalias !93
  %index.next931 = add i64 %index930, 4
  %vec.ind.next937 = add <4 x i32> %vec.ind936, <i32 4, i32 4, i32 4, i32 4>
  %153 = icmp eq i64 %index.next931, 32
  br i1 %153, label %polly.loop_exit730, label %vector.body928, !llvm.loop !96

polly.loop_exit730:                               ; preds = %vector.body928
  %polly.indvar_next726 = add nuw nsw i64 %polly.indvar725, 1
  %exitcond848.not = icmp eq i64 %polly.indvar_next726, 32
  br i1 %exitcond848.not, label %polly.loop_header722.1, label %polly.loop_header722

polly.loop_header749:                             ; preds = %polly.loop_exit730.2.2, %polly.loop_exit757
  %polly.indvar752 = phi i64 [ %polly.indvar_next753, %polly.loop_exit757 ], [ 0, %polly.loop_exit730.2.2 ]
  %154 = mul nuw nsw i64 %polly.indvar752, 480
  %155 = trunc i64 %polly.indvar752 to i32
  %broadcast.splatinsert1052 = insertelement <4 x i32> poison, i32 %155, i32 0
  %broadcast.splat1053 = shufflevector <4 x i32> %broadcast.splatinsert1052, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1042

vector.body1042:                                  ; preds = %vector.body1042, %polly.loop_header749
  %index1044 = phi i64 [ 0, %polly.loop_header749 ], [ %index.next1045, %vector.body1042 ]
  %vec.ind1050 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749 ], [ %vec.ind.next1051, %vector.body1042 ]
  %156 = mul <4 x i32> %vec.ind1050, %broadcast.splat1053
  %157 = add <4 x i32> %156, <i32 2, i32 2, i32 2, i32 2>
  %158 = urem <4 x i32> %157, <i32 60, i32 60, i32 60, i32 60>
  %159 = sitofp <4 x i32> %158 to <4 x double>
  %160 = fmul fast <4 x double> %159, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %161 = shl i64 %index1044, 3
  %162 = add i64 %161, %154
  %163 = getelementptr i8, i8* %call2, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %160, <4 x double>* %164, align 8, !alias.scope !95, !noalias !97
  %index.next1045 = add i64 %index1044, 4
  %vec.ind.next1051 = add <4 x i32> %vec.ind1050, <i32 4, i32 4, i32 4, i32 4>
  %165 = icmp eq i64 %index.next1045, 32
  br i1 %165, label %polly.loop_exit757, label %vector.body1042, !llvm.loop !98

polly.loop_exit757:                               ; preds = %vector.body1042
  %polly.indvar_next753 = add nuw nsw i64 %polly.indvar752, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next753, 32
  br i1 %exitcond839.not, label %polly.loop_header749.1, label %polly.loop_header749

polly.loop_header775:                             ; preds = %polly.loop_exit757.1.2, %polly.loop_exit783
  %polly.indvar778 = phi i64 [ %polly.indvar_next779, %polly.loop_exit783 ], [ 0, %polly.loop_exit757.1.2 ]
  %166 = mul nuw nsw i64 %polly.indvar778, 480
  %167 = trunc i64 %polly.indvar778 to i32
  %broadcast.splatinsert1130 = insertelement <4 x i32> poison, i32 %167, i32 0
  %broadcast.splat1131 = shufflevector <4 x i32> %broadcast.splatinsert1130, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1120

vector.body1120:                                  ; preds = %vector.body1120, %polly.loop_header775
  %index1122 = phi i64 [ 0, %polly.loop_header775 ], [ %index.next1123, %vector.body1120 ]
  %vec.ind1128 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775 ], [ %vec.ind.next1129, %vector.body1120 ]
  %168 = mul <4 x i32> %vec.ind1128, %broadcast.splat1131
  %169 = add <4 x i32> %168, <i32 1, i32 1, i32 1, i32 1>
  %170 = urem <4 x i32> %169, <i32 80, i32 80, i32 80, i32 80>
  %171 = sitofp <4 x i32> %170 to <4 x double>
  %172 = fmul fast <4 x double> %171, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %173 = shl i64 %index1122, 3
  %174 = add i64 %173, %166
  %175 = getelementptr i8, i8* %call1, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %172, <4 x double>* %176, align 8, !alias.scope !94, !noalias !99
  %index.next1123 = add i64 %index1122, 4
  %vec.ind.next1129 = add <4 x i32> %vec.ind1128, <i32 4, i32 4, i32 4, i32 4>
  %177 = icmp eq i64 %index.next1123, 32
  br i1 %177, label %polly.loop_exit783, label %vector.body1120, !llvm.loop !100

polly.loop_exit783:                               ; preds = %vector.body1120
  %polly.indvar_next779 = add nuw nsw i64 %polly.indvar778, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next779, 32
  br i1 %exitcond833.not, label %polly.loop_header775.1, label %polly.loop_header775

polly.loop_header775.1:                           ; preds = %polly.loop_exit783, %polly.loop_exit783.1
  %polly.indvar778.1 = phi i64 [ %polly.indvar_next779.1, %polly.loop_exit783.1 ], [ 0, %polly.loop_exit783 ]
  %178 = mul nuw nsw i64 %polly.indvar778.1, 480
  %179 = trunc i64 %polly.indvar778.1 to i32
  %broadcast.splatinsert1142 = insertelement <4 x i32> poison, i32 %179, i32 0
  %broadcast.splat1143 = shufflevector <4 x i32> %broadcast.splatinsert1142, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1134

vector.body1134:                                  ; preds = %vector.body1134, %polly.loop_header775.1
  %index1136 = phi i64 [ 0, %polly.loop_header775.1 ], [ %index.next1137, %vector.body1134 ]
  %vec.ind1140 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1 ], [ %vec.ind.next1141, %vector.body1134 ]
  %180 = add nuw nsw <4 x i64> %vec.ind1140, <i64 32, i64 32, i64 32, i64 32>
  %181 = trunc <4 x i64> %180 to <4 x i32>
  %182 = mul <4 x i32> %broadcast.splat1143, %181
  %183 = add <4 x i32> %182, <i32 1, i32 1, i32 1, i32 1>
  %184 = urem <4 x i32> %183, <i32 80, i32 80, i32 80, i32 80>
  %185 = sitofp <4 x i32> %184 to <4 x double>
  %186 = fmul fast <4 x double> %185, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %187 = extractelement <4 x i64> %180, i32 0
  %188 = shl i64 %187, 3
  %189 = add i64 %188, %178
  %190 = getelementptr i8, i8* %call1, i64 %189
  %191 = bitcast i8* %190 to <4 x double>*
  store <4 x double> %186, <4 x double>* %191, align 8, !alias.scope !94, !noalias !99
  %index.next1137 = add i64 %index1136, 4
  %vec.ind.next1141 = add <4 x i64> %vec.ind1140, <i64 4, i64 4, i64 4, i64 4>
  %192 = icmp eq i64 %index.next1137, 28
  br i1 %192, label %polly.loop_exit783.1, label %vector.body1134, !llvm.loop !101

polly.loop_exit783.1:                             ; preds = %vector.body1134
  %polly.indvar_next779.1 = add nuw nsw i64 %polly.indvar778.1, 1
  %exitcond833.1.not = icmp eq i64 %polly.indvar_next779.1, 32
  br i1 %exitcond833.1.not, label %polly.loop_header775.1853, label %polly.loop_header775.1

polly.loop_header775.1853:                        ; preds = %polly.loop_exit783.1, %polly.loop_exit783.1864
  %polly.indvar778.1852 = phi i64 [ %polly.indvar_next779.1862, %polly.loop_exit783.1864 ], [ 0, %polly.loop_exit783.1 ]
  %193 = add nuw nsw i64 %polly.indvar778.1852, 32
  %194 = mul nuw nsw i64 %193, 480
  %195 = trunc i64 %193 to i32
  %broadcast.splatinsert1156 = insertelement <4 x i32> poison, i32 %195, i32 0
  %broadcast.splat1157 = shufflevector <4 x i32> %broadcast.splatinsert1156, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.body1146, %polly.loop_header775.1853
  %index1148 = phi i64 [ 0, %polly.loop_header775.1853 ], [ %index.next1149, %vector.body1146 ]
  %vec.ind1154 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.1853 ], [ %vec.ind.next1155, %vector.body1146 ]
  %196 = mul <4 x i32> %vec.ind1154, %broadcast.splat1157
  %197 = add <4 x i32> %196, <i32 1, i32 1, i32 1, i32 1>
  %198 = urem <4 x i32> %197, <i32 80, i32 80, i32 80, i32 80>
  %199 = sitofp <4 x i32> %198 to <4 x double>
  %200 = fmul fast <4 x double> %199, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %201 = shl i64 %index1148, 3
  %202 = add i64 %201, %194
  %203 = getelementptr i8, i8* %call1, i64 %202
  %204 = bitcast i8* %203 to <4 x double>*
  store <4 x double> %200, <4 x double>* %204, align 8, !alias.scope !94, !noalias !99
  %index.next1149 = add i64 %index1148, 4
  %vec.ind.next1155 = add <4 x i32> %vec.ind1154, <i32 4, i32 4, i32 4, i32 4>
  %205 = icmp eq i64 %index.next1149, 32
  br i1 %205, label %polly.loop_exit783.1864, label %vector.body1146, !llvm.loop !102

polly.loop_exit783.1864:                          ; preds = %vector.body1146
  %polly.indvar_next779.1862 = add nuw nsw i64 %polly.indvar778.1852, 1
  %exitcond833.1863.not = icmp eq i64 %polly.indvar_next779.1862, 32
  br i1 %exitcond833.1863.not, label %polly.loop_header775.1.1, label %polly.loop_header775.1853

polly.loop_header775.1.1:                         ; preds = %polly.loop_exit783.1864, %polly.loop_exit783.1.1
  %polly.indvar778.1.1 = phi i64 [ %polly.indvar_next779.1.1, %polly.loop_exit783.1.1 ], [ 0, %polly.loop_exit783.1864 ]
  %206 = add nuw nsw i64 %polly.indvar778.1.1, 32
  %207 = mul nuw nsw i64 %206, 480
  %208 = trunc i64 %206 to i32
  %broadcast.splatinsert1168 = insertelement <4 x i32> poison, i32 %208, i32 0
  %broadcast.splat1169 = shufflevector <4 x i32> %broadcast.splatinsert1168, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1160

vector.body1160:                                  ; preds = %vector.body1160, %polly.loop_header775.1.1
  %index1162 = phi i64 [ 0, %polly.loop_header775.1.1 ], [ %index.next1163, %vector.body1160 ]
  %vec.ind1166 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.1 ], [ %vec.ind.next1167, %vector.body1160 ]
  %209 = add nuw nsw <4 x i64> %vec.ind1166, <i64 32, i64 32, i64 32, i64 32>
  %210 = trunc <4 x i64> %209 to <4 x i32>
  %211 = mul <4 x i32> %broadcast.splat1169, %210
  %212 = add <4 x i32> %211, <i32 1, i32 1, i32 1, i32 1>
  %213 = urem <4 x i32> %212, <i32 80, i32 80, i32 80, i32 80>
  %214 = sitofp <4 x i32> %213 to <4 x double>
  %215 = fmul fast <4 x double> %214, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %216 = extractelement <4 x i64> %209, i32 0
  %217 = shl i64 %216, 3
  %218 = add i64 %217, %207
  %219 = getelementptr i8, i8* %call1, i64 %218
  %220 = bitcast i8* %219 to <4 x double>*
  store <4 x double> %215, <4 x double>* %220, align 8, !alias.scope !94, !noalias !99
  %index.next1163 = add i64 %index1162, 4
  %vec.ind.next1167 = add <4 x i64> %vec.ind1166, <i64 4, i64 4, i64 4, i64 4>
  %221 = icmp eq i64 %index.next1163, 28
  br i1 %221, label %polly.loop_exit783.1.1, label %vector.body1160, !llvm.loop !103

polly.loop_exit783.1.1:                           ; preds = %vector.body1160
  %polly.indvar_next779.1.1 = add nuw nsw i64 %polly.indvar778.1.1, 1
  %exitcond833.1.1.not = icmp eq i64 %polly.indvar_next779.1.1, 32
  br i1 %exitcond833.1.1.not, label %polly.loop_header775.2, label %polly.loop_header775.1.1

polly.loop_header775.2:                           ; preds = %polly.loop_exit783.1.1, %polly.loop_exit783.2
  %polly.indvar778.2 = phi i64 [ %polly.indvar_next779.2, %polly.loop_exit783.2 ], [ 0, %polly.loop_exit783.1.1 ]
  %222 = add nuw nsw i64 %polly.indvar778.2, 64
  %223 = mul nuw nsw i64 %222, 480
  %224 = trunc i64 %222 to i32
  %broadcast.splatinsert1182 = insertelement <4 x i32> poison, i32 %224, i32 0
  %broadcast.splat1183 = shufflevector <4 x i32> %broadcast.splatinsert1182, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1172

vector.body1172:                                  ; preds = %vector.body1172, %polly.loop_header775.2
  %index1174 = phi i64 [ 0, %polly.loop_header775.2 ], [ %index.next1175, %vector.body1172 ]
  %vec.ind1180 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.2 ], [ %vec.ind.next1181, %vector.body1172 ]
  %225 = mul <4 x i32> %vec.ind1180, %broadcast.splat1183
  %226 = add <4 x i32> %225, <i32 1, i32 1, i32 1, i32 1>
  %227 = urem <4 x i32> %226, <i32 80, i32 80, i32 80, i32 80>
  %228 = sitofp <4 x i32> %227 to <4 x double>
  %229 = fmul fast <4 x double> %228, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %230 = shl i64 %index1174, 3
  %231 = add i64 %230, %223
  %232 = getelementptr i8, i8* %call1, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %229, <4 x double>* %233, align 8, !alias.scope !94, !noalias !99
  %index.next1175 = add i64 %index1174, 4
  %vec.ind.next1181 = add <4 x i32> %vec.ind1180, <i32 4, i32 4, i32 4, i32 4>
  %234 = icmp eq i64 %index.next1175, 32
  br i1 %234, label %polly.loop_exit783.2, label %vector.body1172, !llvm.loop !104

polly.loop_exit783.2:                             ; preds = %vector.body1172
  %polly.indvar_next779.2 = add nuw nsw i64 %polly.indvar778.2, 1
  %exitcond833.2.not = icmp eq i64 %polly.indvar_next779.2, 16
  br i1 %exitcond833.2.not, label %polly.loop_header775.1.2, label %polly.loop_header775.2

polly.loop_header775.1.2:                         ; preds = %polly.loop_exit783.2, %polly.loop_exit783.1.2
  %polly.indvar778.1.2 = phi i64 [ %polly.indvar_next779.1.2, %polly.loop_exit783.1.2 ], [ 0, %polly.loop_exit783.2 ]
  %235 = add nuw nsw i64 %polly.indvar778.1.2, 64
  %236 = mul nuw nsw i64 %235, 480
  %237 = trunc i64 %235 to i32
  %broadcast.splatinsert1194 = insertelement <4 x i32> poison, i32 %237, i32 0
  %broadcast.splat1195 = shufflevector <4 x i32> %broadcast.splatinsert1194, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %polly.loop_header775.1.2
  %index1188 = phi i64 [ 0, %polly.loop_header775.1.2 ], [ %index.next1189, %vector.body1186 ]
  %vec.ind1192 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.2 ], [ %vec.ind.next1193, %vector.body1186 ]
  %238 = add nuw nsw <4 x i64> %vec.ind1192, <i64 32, i64 32, i64 32, i64 32>
  %239 = trunc <4 x i64> %238 to <4 x i32>
  %240 = mul <4 x i32> %broadcast.splat1195, %239
  %241 = add <4 x i32> %240, <i32 1, i32 1, i32 1, i32 1>
  %242 = urem <4 x i32> %241, <i32 80, i32 80, i32 80, i32 80>
  %243 = sitofp <4 x i32> %242 to <4 x double>
  %244 = fmul fast <4 x double> %243, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %245 = extractelement <4 x i64> %238, i32 0
  %246 = shl i64 %245, 3
  %247 = add i64 %246, %236
  %248 = getelementptr i8, i8* %call1, i64 %247
  %249 = bitcast i8* %248 to <4 x double>*
  store <4 x double> %244, <4 x double>* %249, align 8, !alias.scope !94, !noalias !99
  %index.next1189 = add i64 %index1188, 4
  %vec.ind.next1193 = add <4 x i64> %vec.ind1192, <i64 4, i64 4, i64 4, i64 4>
  %250 = icmp eq i64 %index.next1189, 28
  br i1 %250, label %polly.loop_exit783.1.2, label %vector.body1186, !llvm.loop !105

polly.loop_exit783.1.2:                           ; preds = %vector.body1186
  %polly.indvar_next779.1.2 = add nuw nsw i64 %polly.indvar778.1.2, 1
  %exitcond833.1.2.not = icmp eq i64 %polly.indvar_next779.1.2, 16
  br i1 %exitcond833.1.2.not, label %init_array.exit, label %polly.loop_header775.1.2

polly.loop_header749.1:                           ; preds = %polly.loop_exit757, %polly.loop_exit757.1
  %polly.indvar752.1 = phi i64 [ %polly.indvar_next753.1, %polly.loop_exit757.1 ], [ 0, %polly.loop_exit757 ]
  %251 = mul nuw nsw i64 %polly.indvar752.1, 480
  %252 = trunc i64 %polly.indvar752.1 to i32
  %broadcast.splatinsert1064 = insertelement <4 x i32> poison, i32 %252, i32 0
  %broadcast.splat1065 = shufflevector <4 x i32> %broadcast.splatinsert1064, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1056

vector.body1056:                                  ; preds = %vector.body1056, %polly.loop_header749.1
  %index1058 = phi i64 [ 0, %polly.loop_header749.1 ], [ %index.next1059, %vector.body1056 ]
  %vec.ind1062 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1 ], [ %vec.ind.next1063, %vector.body1056 ]
  %253 = add nuw nsw <4 x i64> %vec.ind1062, <i64 32, i64 32, i64 32, i64 32>
  %254 = trunc <4 x i64> %253 to <4 x i32>
  %255 = mul <4 x i32> %broadcast.splat1065, %254
  %256 = add <4 x i32> %255, <i32 2, i32 2, i32 2, i32 2>
  %257 = urem <4 x i32> %256, <i32 60, i32 60, i32 60, i32 60>
  %258 = sitofp <4 x i32> %257 to <4 x double>
  %259 = fmul fast <4 x double> %258, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %260 = extractelement <4 x i64> %253, i32 0
  %261 = shl i64 %260, 3
  %262 = add i64 %261, %251
  %263 = getelementptr i8, i8* %call2, i64 %262
  %264 = bitcast i8* %263 to <4 x double>*
  store <4 x double> %259, <4 x double>* %264, align 8, !alias.scope !95, !noalias !97
  %index.next1059 = add i64 %index1058, 4
  %vec.ind.next1063 = add <4 x i64> %vec.ind1062, <i64 4, i64 4, i64 4, i64 4>
  %265 = icmp eq i64 %index.next1059, 28
  br i1 %265, label %polly.loop_exit757.1, label %vector.body1056, !llvm.loop !106

polly.loop_exit757.1:                             ; preds = %vector.body1056
  %polly.indvar_next753.1 = add nuw nsw i64 %polly.indvar752.1, 1
  %exitcond839.1.not = icmp eq i64 %polly.indvar_next753.1, 32
  br i1 %exitcond839.1.not, label %polly.loop_header749.1867, label %polly.loop_header749.1

polly.loop_header749.1867:                        ; preds = %polly.loop_exit757.1, %polly.loop_exit757.1878
  %polly.indvar752.1866 = phi i64 [ %polly.indvar_next753.1876, %polly.loop_exit757.1878 ], [ 0, %polly.loop_exit757.1 ]
  %266 = add nuw nsw i64 %polly.indvar752.1866, 32
  %267 = mul nuw nsw i64 %266, 480
  %268 = trunc i64 %266 to i32
  %broadcast.splatinsert1078 = insertelement <4 x i32> poison, i32 %268, i32 0
  %broadcast.splat1079 = shufflevector <4 x i32> %broadcast.splatinsert1078, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1068

vector.body1068:                                  ; preds = %vector.body1068, %polly.loop_header749.1867
  %index1070 = phi i64 [ 0, %polly.loop_header749.1867 ], [ %index.next1071, %vector.body1068 ]
  %vec.ind1076 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.1867 ], [ %vec.ind.next1077, %vector.body1068 ]
  %269 = mul <4 x i32> %vec.ind1076, %broadcast.splat1079
  %270 = add <4 x i32> %269, <i32 2, i32 2, i32 2, i32 2>
  %271 = urem <4 x i32> %270, <i32 60, i32 60, i32 60, i32 60>
  %272 = sitofp <4 x i32> %271 to <4 x double>
  %273 = fmul fast <4 x double> %272, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %274 = shl i64 %index1070, 3
  %275 = add i64 %274, %267
  %276 = getelementptr i8, i8* %call2, i64 %275
  %277 = bitcast i8* %276 to <4 x double>*
  store <4 x double> %273, <4 x double>* %277, align 8, !alias.scope !95, !noalias !97
  %index.next1071 = add i64 %index1070, 4
  %vec.ind.next1077 = add <4 x i32> %vec.ind1076, <i32 4, i32 4, i32 4, i32 4>
  %278 = icmp eq i64 %index.next1071, 32
  br i1 %278, label %polly.loop_exit757.1878, label %vector.body1068, !llvm.loop !107

polly.loop_exit757.1878:                          ; preds = %vector.body1068
  %polly.indvar_next753.1876 = add nuw nsw i64 %polly.indvar752.1866, 1
  %exitcond839.1877.not = icmp eq i64 %polly.indvar_next753.1876, 32
  br i1 %exitcond839.1877.not, label %polly.loop_header749.1.1, label %polly.loop_header749.1867

polly.loop_header749.1.1:                         ; preds = %polly.loop_exit757.1878, %polly.loop_exit757.1.1
  %polly.indvar752.1.1 = phi i64 [ %polly.indvar_next753.1.1, %polly.loop_exit757.1.1 ], [ 0, %polly.loop_exit757.1878 ]
  %279 = add nuw nsw i64 %polly.indvar752.1.1, 32
  %280 = mul nuw nsw i64 %279, 480
  %281 = trunc i64 %279 to i32
  %broadcast.splatinsert1090 = insertelement <4 x i32> poison, i32 %281, i32 0
  %broadcast.splat1091 = shufflevector <4 x i32> %broadcast.splatinsert1090, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1082

vector.body1082:                                  ; preds = %vector.body1082, %polly.loop_header749.1.1
  %index1084 = phi i64 [ 0, %polly.loop_header749.1.1 ], [ %index.next1085, %vector.body1082 ]
  %vec.ind1088 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.1 ], [ %vec.ind.next1089, %vector.body1082 ]
  %282 = add nuw nsw <4 x i64> %vec.ind1088, <i64 32, i64 32, i64 32, i64 32>
  %283 = trunc <4 x i64> %282 to <4 x i32>
  %284 = mul <4 x i32> %broadcast.splat1091, %283
  %285 = add <4 x i32> %284, <i32 2, i32 2, i32 2, i32 2>
  %286 = urem <4 x i32> %285, <i32 60, i32 60, i32 60, i32 60>
  %287 = sitofp <4 x i32> %286 to <4 x double>
  %288 = fmul fast <4 x double> %287, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %289 = extractelement <4 x i64> %282, i32 0
  %290 = shl i64 %289, 3
  %291 = add i64 %290, %280
  %292 = getelementptr i8, i8* %call2, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %288, <4 x double>* %293, align 8, !alias.scope !95, !noalias !97
  %index.next1085 = add i64 %index1084, 4
  %vec.ind.next1089 = add <4 x i64> %vec.ind1088, <i64 4, i64 4, i64 4, i64 4>
  %294 = icmp eq i64 %index.next1085, 28
  br i1 %294, label %polly.loop_exit757.1.1, label %vector.body1082, !llvm.loop !108

polly.loop_exit757.1.1:                           ; preds = %vector.body1082
  %polly.indvar_next753.1.1 = add nuw nsw i64 %polly.indvar752.1.1, 1
  %exitcond839.1.1.not = icmp eq i64 %polly.indvar_next753.1.1, 32
  br i1 %exitcond839.1.1.not, label %polly.loop_header749.2, label %polly.loop_header749.1.1

polly.loop_header749.2:                           ; preds = %polly.loop_exit757.1.1, %polly.loop_exit757.2
  %polly.indvar752.2 = phi i64 [ %polly.indvar_next753.2, %polly.loop_exit757.2 ], [ 0, %polly.loop_exit757.1.1 ]
  %295 = add nuw nsw i64 %polly.indvar752.2, 64
  %296 = mul nuw nsw i64 %295, 480
  %297 = trunc i64 %295 to i32
  %broadcast.splatinsert1104 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1105 = shufflevector <4 x i32> %broadcast.splatinsert1104, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1094

vector.body1094:                                  ; preds = %vector.body1094, %polly.loop_header749.2
  %index1096 = phi i64 [ 0, %polly.loop_header749.2 ], [ %index.next1097, %vector.body1094 ]
  %vec.ind1102 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.2 ], [ %vec.ind.next1103, %vector.body1094 ]
  %298 = mul <4 x i32> %vec.ind1102, %broadcast.splat1105
  %299 = add <4 x i32> %298, <i32 2, i32 2, i32 2, i32 2>
  %300 = urem <4 x i32> %299, <i32 60, i32 60, i32 60, i32 60>
  %301 = sitofp <4 x i32> %300 to <4 x double>
  %302 = fmul fast <4 x double> %301, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %303 = shl i64 %index1096, 3
  %304 = add i64 %303, %296
  %305 = getelementptr i8, i8* %call2, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %302, <4 x double>* %306, align 8, !alias.scope !95, !noalias !97
  %index.next1097 = add i64 %index1096, 4
  %vec.ind.next1103 = add <4 x i32> %vec.ind1102, <i32 4, i32 4, i32 4, i32 4>
  %307 = icmp eq i64 %index.next1097, 32
  br i1 %307, label %polly.loop_exit757.2, label %vector.body1094, !llvm.loop !109

polly.loop_exit757.2:                             ; preds = %vector.body1094
  %polly.indvar_next753.2 = add nuw nsw i64 %polly.indvar752.2, 1
  %exitcond839.2.not = icmp eq i64 %polly.indvar_next753.2, 16
  br i1 %exitcond839.2.not, label %polly.loop_header749.1.2, label %polly.loop_header749.2

polly.loop_header749.1.2:                         ; preds = %polly.loop_exit757.2, %polly.loop_exit757.1.2
  %polly.indvar752.1.2 = phi i64 [ %polly.indvar_next753.1.2, %polly.loop_exit757.1.2 ], [ 0, %polly.loop_exit757.2 ]
  %308 = add nuw nsw i64 %polly.indvar752.1.2, 64
  %309 = mul nuw nsw i64 %308, 480
  %310 = trunc i64 %308 to i32
  %broadcast.splatinsert1116 = insertelement <4 x i32> poison, i32 %310, i32 0
  %broadcast.splat1117 = shufflevector <4 x i32> %broadcast.splatinsert1116, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1108

vector.body1108:                                  ; preds = %vector.body1108, %polly.loop_header749.1.2
  %index1110 = phi i64 [ 0, %polly.loop_header749.1.2 ], [ %index.next1111, %vector.body1108 ]
  %vec.ind1114 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.2 ], [ %vec.ind.next1115, %vector.body1108 ]
  %311 = add nuw nsw <4 x i64> %vec.ind1114, <i64 32, i64 32, i64 32, i64 32>
  %312 = trunc <4 x i64> %311 to <4 x i32>
  %313 = mul <4 x i32> %broadcast.splat1117, %312
  %314 = add <4 x i32> %313, <i32 2, i32 2, i32 2, i32 2>
  %315 = urem <4 x i32> %314, <i32 60, i32 60, i32 60, i32 60>
  %316 = sitofp <4 x i32> %315 to <4 x double>
  %317 = fmul fast <4 x double> %316, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %318 = extractelement <4 x i64> %311, i32 0
  %319 = shl i64 %318, 3
  %320 = add i64 %319, %309
  %321 = getelementptr i8, i8* %call2, i64 %320
  %322 = bitcast i8* %321 to <4 x double>*
  store <4 x double> %317, <4 x double>* %322, align 8, !alias.scope !95, !noalias !97
  %index.next1111 = add i64 %index1110, 4
  %vec.ind.next1115 = add <4 x i64> %vec.ind1114, <i64 4, i64 4, i64 4, i64 4>
  %323 = icmp eq i64 %index.next1111, 28
  br i1 %323, label %polly.loop_exit757.1.2, label %vector.body1108, !llvm.loop !110

polly.loop_exit757.1.2:                           ; preds = %vector.body1108
  %polly.indvar_next753.1.2 = add nuw nsw i64 %polly.indvar752.1.2, 1
  %exitcond839.1.2.not = icmp eq i64 %polly.indvar_next753.1.2, 16
  br i1 %exitcond839.1.2.not, label %polly.loop_header775, label %polly.loop_header749.1.2

polly.loop_header722.1:                           ; preds = %polly.loop_exit730, %polly.loop_exit730.1
  %polly.indvar725.1 = phi i64 [ %polly.indvar_next726.1, %polly.loop_exit730.1 ], [ 0, %polly.loop_exit730 ]
  %324 = mul nuw nsw i64 %polly.indvar725.1, 640
  %325 = trunc i64 %polly.indvar725.1 to i32
  %broadcast.splatinsert950 = insertelement <4 x i32> poison, i32 %325, i32 0
  %broadcast.splat951 = shufflevector <4 x i32> %broadcast.splatinsert950, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %polly.loop_header722.1
  %index944 = phi i64 [ 0, %polly.loop_header722.1 ], [ %index.next945, %vector.body942 ]
  %vec.ind948 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1 ], [ %vec.ind.next949, %vector.body942 ]
  %326 = add nuw nsw <4 x i64> %vec.ind948, <i64 32, i64 32, i64 32, i64 32>
  %327 = trunc <4 x i64> %326 to <4 x i32>
  %328 = mul <4 x i32> %broadcast.splat951, %327
  %329 = add <4 x i32> %328, <i32 3, i32 3, i32 3, i32 3>
  %330 = urem <4 x i32> %329, <i32 80, i32 80, i32 80, i32 80>
  %331 = sitofp <4 x i32> %330 to <4 x double>
  %332 = fmul fast <4 x double> %331, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %333 = extractelement <4 x i64> %326, i32 0
  %334 = shl i64 %333, 3
  %335 = add nuw nsw i64 %334, %324
  %336 = getelementptr i8, i8* %call, i64 %335
  %337 = bitcast i8* %336 to <4 x double>*
  store <4 x double> %332, <4 x double>* %337, align 8, !alias.scope !91, !noalias !93
  %index.next945 = add i64 %index944, 4
  %vec.ind.next949 = add <4 x i64> %vec.ind948, <i64 4, i64 4, i64 4, i64 4>
  %338 = icmp eq i64 %index.next945, 32
  br i1 %338, label %polly.loop_exit730.1, label %vector.body942, !llvm.loop !111

polly.loop_exit730.1:                             ; preds = %vector.body942
  %polly.indvar_next726.1 = add nuw nsw i64 %polly.indvar725.1, 1
  %exitcond848.1.not = icmp eq i64 %polly.indvar_next726.1, 32
  br i1 %exitcond848.1.not, label %polly.loop_header722.2, label %polly.loop_header722.1

polly.loop_header722.2:                           ; preds = %polly.loop_exit730.1, %polly.loop_exit730.2
  %polly.indvar725.2 = phi i64 [ %polly.indvar_next726.2, %polly.loop_exit730.2 ], [ 0, %polly.loop_exit730.1 ]
  %339 = mul nuw nsw i64 %polly.indvar725.2, 640
  %340 = trunc i64 %polly.indvar725.2 to i32
  %broadcast.splatinsert962 = insertelement <4 x i32> poison, i32 %340, i32 0
  %broadcast.splat963 = shufflevector <4 x i32> %broadcast.splatinsert962, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body954

vector.body954:                                   ; preds = %vector.body954, %polly.loop_header722.2
  %index956 = phi i64 [ 0, %polly.loop_header722.2 ], [ %index.next957, %vector.body954 ]
  %vec.ind960 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2 ], [ %vec.ind.next961, %vector.body954 ]
  %341 = add nuw nsw <4 x i64> %vec.ind960, <i64 64, i64 64, i64 64, i64 64>
  %342 = trunc <4 x i64> %341 to <4 x i32>
  %343 = mul <4 x i32> %broadcast.splat963, %342
  %344 = add <4 x i32> %343, <i32 3, i32 3, i32 3, i32 3>
  %345 = urem <4 x i32> %344, <i32 80, i32 80, i32 80, i32 80>
  %346 = sitofp <4 x i32> %345 to <4 x double>
  %347 = fmul fast <4 x double> %346, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %348 = extractelement <4 x i64> %341, i32 0
  %349 = shl i64 %348, 3
  %350 = add nuw nsw i64 %349, %339
  %351 = getelementptr i8, i8* %call, i64 %350
  %352 = bitcast i8* %351 to <4 x double>*
  store <4 x double> %347, <4 x double>* %352, align 8, !alias.scope !91, !noalias !93
  %index.next957 = add i64 %index956, 4
  %vec.ind.next961 = add <4 x i64> %vec.ind960, <i64 4, i64 4, i64 4, i64 4>
  %353 = icmp eq i64 %index.next957, 16
  br i1 %353, label %polly.loop_exit730.2, label %vector.body954, !llvm.loop !112

polly.loop_exit730.2:                             ; preds = %vector.body954
  %polly.indvar_next726.2 = add nuw nsw i64 %polly.indvar725.2, 1
  %exitcond848.2.not = icmp eq i64 %polly.indvar_next726.2, 32
  br i1 %exitcond848.2.not, label %polly.loop_header722.1881, label %polly.loop_header722.2

polly.loop_header722.1881:                        ; preds = %polly.loop_exit730.2, %polly.loop_exit730.1892
  %polly.indvar725.1880 = phi i64 [ %polly.indvar_next726.1890, %polly.loop_exit730.1892 ], [ 0, %polly.loop_exit730.2 ]
  %354 = add nuw nsw i64 %polly.indvar725.1880, 32
  %355 = mul nuw nsw i64 %354, 640
  %356 = trunc i64 %354 to i32
  %broadcast.splatinsert976 = insertelement <4 x i32> poison, i32 %356, i32 0
  %broadcast.splat977 = shufflevector <4 x i32> %broadcast.splatinsert976, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body966

vector.body966:                                   ; preds = %vector.body966, %polly.loop_header722.1881
  %index968 = phi i64 [ 0, %polly.loop_header722.1881 ], [ %index.next969, %vector.body966 ]
  %vec.ind974 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.1881 ], [ %vec.ind.next975, %vector.body966 ]
  %357 = mul <4 x i32> %vec.ind974, %broadcast.splat977
  %358 = add <4 x i32> %357, <i32 3, i32 3, i32 3, i32 3>
  %359 = urem <4 x i32> %358, <i32 80, i32 80, i32 80, i32 80>
  %360 = sitofp <4 x i32> %359 to <4 x double>
  %361 = fmul fast <4 x double> %360, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %362 = shl i64 %index968, 3
  %363 = add nuw nsw i64 %362, %355
  %364 = getelementptr i8, i8* %call, i64 %363
  %365 = bitcast i8* %364 to <4 x double>*
  store <4 x double> %361, <4 x double>* %365, align 8, !alias.scope !91, !noalias !93
  %index.next969 = add i64 %index968, 4
  %vec.ind.next975 = add <4 x i32> %vec.ind974, <i32 4, i32 4, i32 4, i32 4>
  %366 = icmp eq i64 %index.next969, 32
  br i1 %366, label %polly.loop_exit730.1892, label %vector.body966, !llvm.loop !113

polly.loop_exit730.1892:                          ; preds = %vector.body966
  %polly.indvar_next726.1890 = add nuw nsw i64 %polly.indvar725.1880, 1
  %exitcond848.1891.not = icmp eq i64 %polly.indvar_next726.1890, 32
  br i1 %exitcond848.1891.not, label %polly.loop_header722.1.1, label %polly.loop_header722.1881

polly.loop_header722.1.1:                         ; preds = %polly.loop_exit730.1892, %polly.loop_exit730.1.1
  %polly.indvar725.1.1 = phi i64 [ %polly.indvar_next726.1.1, %polly.loop_exit730.1.1 ], [ 0, %polly.loop_exit730.1892 ]
  %367 = add nuw nsw i64 %polly.indvar725.1.1, 32
  %368 = mul nuw nsw i64 %367, 640
  %369 = trunc i64 %367 to i32
  %broadcast.splatinsert988 = insertelement <4 x i32> poison, i32 %369, i32 0
  %broadcast.splat989 = shufflevector <4 x i32> %broadcast.splatinsert988, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body980

vector.body980:                                   ; preds = %vector.body980, %polly.loop_header722.1.1
  %index982 = phi i64 [ 0, %polly.loop_header722.1.1 ], [ %index.next983, %vector.body980 ]
  %vec.ind986 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.1 ], [ %vec.ind.next987, %vector.body980 ]
  %370 = add nuw nsw <4 x i64> %vec.ind986, <i64 32, i64 32, i64 32, i64 32>
  %371 = trunc <4 x i64> %370 to <4 x i32>
  %372 = mul <4 x i32> %broadcast.splat989, %371
  %373 = add <4 x i32> %372, <i32 3, i32 3, i32 3, i32 3>
  %374 = urem <4 x i32> %373, <i32 80, i32 80, i32 80, i32 80>
  %375 = sitofp <4 x i32> %374 to <4 x double>
  %376 = fmul fast <4 x double> %375, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %377 = extractelement <4 x i64> %370, i32 0
  %378 = shl i64 %377, 3
  %379 = add nuw nsw i64 %378, %368
  %380 = getelementptr i8, i8* %call, i64 %379
  %381 = bitcast i8* %380 to <4 x double>*
  store <4 x double> %376, <4 x double>* %381, align 8, !alias.scope !91, !noalias !93
  %index.next983 = add i64 %index982, 4
  %vec.ind.next987 = add <4 x i64> %vec.ind986, <i64 4, i64 4, i64 4, i64 4>
  %382 = icmp eq i64 %index.next983, 32
  br i1 %382, label %polly.loop_exit730.1.1, label %vector.body980, !llvm.loop !114

polly.loop_exit730.1.1:                           ; preds = %vector.body980
  %polly.indvar_next726.1.1 = add nuw nsw i64 %polly.indvar725.1.1, 1
  %exitcond848.1.1.not = icmp eq i64 %polly.indvar_next726.1.1, 32
  br i1 %exitcond848.1.1.not, label %polly.loop_header722.2.1, label %polly.loop_header722.1.1

polly.loop_header722.2.1:                         ; preds = %polly.loop_exit730.1.1, %polly.loop_exit730.2.1
  %polly.indvar725.2.1 = phi i64 [ %polly.indvar_next726.2.1, %polly.loop_exit730.2.1 ], [ 0, %polly.loop_exit730.1.1 ]
  %383 = add nuw nsw i64 %polly.indvar725.2.1, 32
  %384 = mul nuw nsw i64 %383, 640
  %385 = trunc i64 %383 to i32
  %broadcast.splatinsert1000 = insertelement <4 x i32> poison, i32 %385, i32 0
  %broadcast.splat1001 = shufflevector <4 x i32> %broadcast.splatinsert1000, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %polly.loop_header722.2.1
  %index994 = phi i64 [ 0, %polly.loop_header722.2.1 ], [ %index.next995, %vector.body992 ]
  %vec.ind998 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.1 ], [ %vec.ind.next999, %vector.body992 ]
  %386 = add nuw nsw <4 x i64> %vec.ind998, <i64 64, i64 64, i64 64, i64 64>
  %387 = trunc <4 x i64> %386 to <4 x i32>
  %388 = mul <4 x i32> %broadcast.splat1001, %387
  %389 = add <4 x i32> %388, <i32 3, i32 3, i32 3, i32 3>
  %390 = urem <4 x i32> %389, <i32 80, i32 80, i32 80, i32 80>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %393 = extractelement <4 x i64> %386, i32 0
  %394 = shl i64 %393, 3
  %395 = add nuw nsw i64 %394, %384
  %396 = getelementptr i8, i8* %call, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %392, <4 x double>* %397, align 8, !alias.scope !91, !noalias !93
  %index.next995 = add i64 %index994, 4
  %vec.ind.next999 = add <4 x i64> %vec.ind998, <i64 4, i64 4, i64 4, i64 4>
  %398 = icmp eq i64 %index.next995, 16
  br i1 %398, label %polly.loop_exit730.2.1, label %vector.body992, !llvm.loop !115

polly.loop_exit730.2.1:                           ; preds = %vector.body992
  %polly.indvar_next726.2.1 = add nuw nsw i64 %polly.indvar725.2.1, 1
  %exitcond848.2.1.not = icmp eq i64 %polly.indvar_next726.2.1, 32
  br i1 %exitcond848.2.1.not, label %polly.loop_header722.2895, label %polly.loop_header722.2.1

polly.loop_header722.2895:                        ; preds = %polly.loop_exit730.2.1, %polly.loop_exit730.2906
  %polly.indvar725.2894 = phi i64 [ %polly.indvar_next726.2904, %polly.loop_exit730.2906 ], [ 0, %polly.loop_exit730.2.1 ]
  %399 = add nuw nsw i64 %polly.indvar725.2894, 64
  %400 = mul nuw nsw i64 %399, 640
  %401 = trunc i64 %399 to i32
  %broadcast.splatinsert1014 = insertelement <4 x i32> poison, i32 %401, i32 0
  %broadcast.splat1015 = shufflevector <4 x i32> %broadcast.splatinsert1014, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1004

vector.body1004:                                  ; preds = %vector.body1004, %polly.loop_header722.2895
  %index1006 = phi i64 [ 0, %polly.loop_header722.2895 ], [ %index.next1007, %vector.body1004 ]
  %vec.ind1012 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.2895 ], [ %vec.ind.next1013, %vector.body1004 ]
  %402 = mul <4 x i32> %vec.ind1012, %broadcast.splat1015
  %403 = add <4 x i32> %402, <i32 3, i32 3, i32 3, i32 3>
  %404 = urem <4 x i32> %403, <i32 80, i32 80, i32 80, i32 80>
  %405 = sitofp <4 x i32> %404 to <4 x double>
  %406 = fmul fast <4 x double> %405, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %407 = shl i64 %index1006, 3
  %408 = add nuw nsw i64 %407, %400
  %409 = getelementptr i8, i8* %call, i64 %408
  %410 = bitcast i8* %409 to <4 x double>*
  store <4 x double> %406, <4 x double>* %410, align 8, !alias.scope !91, !noalias !93
  %index.next1007 = add i64 %index1006, 4
  %vec.ind.next1013 = add <4 x i32> %vec.ind1012, <i32 4, i32 4, i32 4, i32 4>
  %411 = icmp eq i64 %index.next1007, 32
  br i1 %411, label %polly.loop_exit730.2906, label %vector.body1004, !llvm.loop !116

polly.loop_exit730.2906:                          ; preds = %vector.body1004
  %polly.indvar_next726.2904 = add nuw nsw i64 %polly.indvar725.2894, 1
  %exitcond848.2905.not = icmp eq i64 %polly.indvar_next726.2904, 16
  br i1 %exitcond848.2905.not, label %polly.loop_header722.1.2, label %polly.loop_header722.2895

polly.loop_header722.1.2:                         ; preds = %polly.loop_exit730.2906, %polly.loop_exit730.1.2
  %polly.indvar725.1.2 = phi i64 [ %polly.indvar_next726.1.2, %polly.loop_exit730.1.2 ], [ 0, %polly.loop_exit730.2906 ]
  %412 = add nuw nsw i64 %polly.indvar725.1.2, 64
  %413 = mul nuw nsw i64 %412, 640
  %414 = trunc i64 %412 to i32
  %broadcast.splatinsert1026 = insertelement <4 x i32> poison, i32 %414, i32 0
  %broadcast.splat1027 = shufflevector <4 x i32> %broadcast.splatinsert1026, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %polly.loop_header722.1.2
  %index1020 = phi i64 [ 0, %polly.loop_header722.1.2 ], [ %index.next1021, %vector.body1018 ]
  %vec.ind1024 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.2 ], [ %vec.ind.next1025, %vector.body1018 ]
  %415 = add nuw nsw <4 x i64> %vec.ind1024, <i64 32, i64 32, i64 32, i64 32>
  %416 = trunc <4 x i64> %415 to <4 x i32>
  %417 = mul <4 x i32> %broadcast.splat1027, %416
  %418 = add <4 x i32> %417, <i32 3, i32 3, i32 3, i32 3>
  %419 = urem <4 x i32> %418, <i32 80, i32 80, i32 80, i32 80>
  %420 = sitofp <4 x i32> %419 to <4 x double>
  %421 = fmul fast <4 x double> %420, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %422 = extractelement <4 x i64> %415, i32 0
  %423 = shl i64 %422, 3
  %424 = add nuw nsw i64 %423, %413
  %425 = getelementptr i8, i8* %call, i64 %424
  %426 = bitcast i8* %425 to <4 x double>*
  store <4 x double> %421, <4 x double>* %426, align 8, !alias.scope !91, !noalias !93
  %index.next1021 = add i64 %index1020, 4
  %vec.ind.next1025 = add <4 x i64> %vec.ind1024, <i64 4, i64 4, i64 4, i64 4>
  %427 = icmp eq i64 %index.next1021, 32
  br i1 %427, label %polly.loop_exit730.1.2, label %vector.body1018, !llvm.loop !117

polly.loop_exit730.1.2:                           ; preds = %vector.body1018
  %polly.indvar_next726.1.2 = add nuw nsw i64 %polly.indvar725.1.2, 1
  %exitcond848.1.2.not = icmp eq i64 %polly.indvar_next726.1.2, 16
  br i1 %exitcond848.1.2.not, label %polly.loop_header722.2.2, label %polly.loop_header722.1.2

polly.loop_header722.2.2:                         ; preds = %polly.loop_exit730.1.2, %polly.loop_exit730.2.2
  %polly.indvar725.2.2 = phi i64 [ %polly.indvar_next726.2.2, %polly.loop_exit730.2.2 ], [ 0, %polly.loop_exit730.1.2 ]
  %428 = add nuw nsw i64 %polly.indvar725.2.2, 64
  %429 = mul nuw nsw i64 %428, 640
  %430 = trunc i64 %428 to i32
  %broadcast.splatinsert1038 = insertelement <4 x i32> poison, i32 %430, i32 0
  %broadcast.splat1039 = shufflevector <4 x i32> %broadcast.splatinsert1038, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1030

vector.body1030:                                  ; preds = %vector.body1030, %polly.loop_header722.2.2
  %index1032 = phi i64 [ 0, %polly.loop_header722.2.2 ], [ %index.next1033, %vector.body1030 ]
  %vec.ind1036 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.2 ], [ %vec.ind.next1037, %vector.body1030 ]
  %431 = add nuw nsw <4 x i64> %vec.ind1036, <i64 64, i64 64, i64 64, i64 64>
  %432 = trunc <4 x i64> %431 to <4 x i32>
  %433 = mul <4 x i32> %broadcast.splat1039, %432
  %434 = add <4 x i32> %433, <i32 3, i32 3, i32 3, i32 3>
  %435 = urem <4 x i32> %434, <i32 80, i32 80, i32 80, i32 80>
  %436 = sitofp <4 x i32> %435 to <4 x double>
  %437 = fmul fast <4 x double> %436, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %438 = extractelement <4 x i64> %431, i32 0
  %439 = shl i64 %438, 3
  %440 = add nuw nsw i64 %439, %429
  %441 = getelementptr i8, i8* %call, i64 %440
  %442 = bitcast i8* %441 to <4 x double>*
  store <4 x double> %437, <4 x double>* %442, align 8, !alias.scope !91, !noalias !93
  %index.next1033 = add i64 %index1032, 4
  %vec.ind.next1037 = add <4 x i64> %vec.ind1036, <i64 4, i64 4, i64 4, i64 4>
  %443 = icmp eq i64 %index.next1033, 16
  br i1 %443, label %polly.loop_exit730.2.2, label %vector.body1030, !llvm.loop !118

polly.loop_exit730.2.2:                           ; preds = %vector.body1030
  %polly.indvar_next726.2.2 = add nuw nsw i64 %polly.indvar725.2.2, 1
  %exitcond848.2.2.not = icmp eq i64 %polly.indvar_next726.2.2, 16
  br i1 %exitcond848.2.2.not, label %polly.loop_header749, label %polly.loop_header722.2.2
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
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 64}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !48, !49, !52}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.size", i32 8}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !51}
!51 = !{!"llvm.loop.id", !"i1"}
!52 = !{!"llvm.loop.tile.followup_tile", !53}
!53 = distinct !{!53, !12, !54}
!54 = !{!"llvm.loop.id", !"i2"}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !4, i64 0}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !64, !"polly.alias.scope.MemRef_call"}
!64 = distinct !{!64, !"polly.alias.scope.domain"}
!65 = !{!66, !67, !68}
!66 = distinct !{!66, !64, !"polly.alias.scope.MemRef_call1"}
!67 = distinct !{!67, !64, !"polly.alias.scope.MemRef_call2"}
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call1"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !66, !68}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call1"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !71, !13}
!81 = !{!73, !76, !78}
!82 = distinct !{!82, !83, !"polly.alias.scope.MemRef_call"}
!83 = distinct !{!83, !"polly.alias.scope.domain"}
!84 = !{!85, !86, !87}
!85 = distinct !{!85, !83, !"polly.alias.scope.MemRef_call1"}
!86 = distinct !{!86, !83, !"polly.alias.scope.MemRef_call2"}
!87 = distinct !{!87, !83, !"polly.alias.scope.Packed_MemRef_call1"}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !71, !13}
!90 = !{!82, !85, !87}
!91 = distinct !{!91, !92, !"polly.alias.scope.MemRef_call"}
!92 = distinct !{!92, !"polly.alias.scope.domain"}
!93 = !{!94, !95}
!94 = distinct !{!94, !92, !"polly.alias.scope.MemRef_call1"}
!95 = distinct !{!95, !92, !"polly.alias.scope.MemRef_call2"}
!96 = distinct !{!96, !13}
!97 = !{!94, !91}
!98 = distinct !{!98, !13}
!99 = !{!95, !91}
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
!118 = distinct !{!118, !13}
