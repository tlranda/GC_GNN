; ModuleID = 'syr2k_recreations//mmp_syr2k_S_138.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_138.c"
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
  %call712 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1573 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1573, %call2
  %polly.access.call2593 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2593, %call1
  %2 = or i1 %0, %1
  %polly.access.call613 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call613, %call2
  %4 = icmp ule i8* %polly.access.call2593, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call613, %call1
  %8 = icmp ule i8* %polly.access.call1573, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header698, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep893 = getelementptr i8, i8* %call2, i64 %12
  %scevgep892 = getelementptr i8, i8* %call2, i64 %11
  %scevgep891 = getelementptr i8, i8* %call1, i64 %12
  %scevgep890 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep890, %scevgep893
  %bound1 = icmp ult i8* %scevgep892, %scevgep891
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
  br i1 %exitcond18.not.i, label %vector.ph897, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph897:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert904 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat905 = shufflevector <4 x i64> %broadcast.splatinsert904, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body896

vector.body896:                                   ; preds = %vector.body896, %vector.ph897
  %index898 = phi i64 [ 0, %vector.ph897 ], [ %index.next899, %vector.body896 ]
  %vec.ind902 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph897 ], [ %vec.ind.next903, %vector.body896 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind902, %broadcast.splat905
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv7.i, i64 %index898
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next899 = add i64 %index898, 4
  %vec.ind.next903 = add <4 x i64> %vec.ind902, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next899, 80
  br i1 %40, label %for.inc41.i, label %vector.body896, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body896
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph897, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit759.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header491, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1253, label %vector.ph1179

vector.ph1179:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1178

vector.body1178:                                  ; preds = %vector.body1178, %vector.ph1179
  %index1180 = phi i64 [ 0, %vector.ph1179 ], [ %index.next1181, %vector.body1178 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i, i64 %index1180
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1181 = add i64 %index1180, 4
  %46 = icmp eq i64 %index.next1181, %n.vec
  br i1 %46, label %middle.block1176, label %vector.body1178, !llvm.loop !18

middle.block1176:                                 ; preds = %vector.body1178
  %cmp.n1183 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1183, label %for.inc6.i, label %for.body3.i46.preheader1253

for.body3.i46.preheader1253:                      ; preds = %for.body3.i46.preheader, %middle.block1176
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1176 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1253, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1253 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1176, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit528.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1199 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1199, label %for.body3.i60.preheader1251, label %vector.ph1200

vector.ph1200:                                    ; preds = %for.body3.i60.preheader
  %n.vec1202 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %vector.ph1200
  %index1203 = phi i64 [ 0, %vector.ph1200 ], [ %index.next1204, %vector.body1198 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i52, i64 %index1203
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1207 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1207, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1204 = add i64 %index1203, 4
  %57 = icmp eq i64 %index.next1204, %n.vec1202
  br i1 %57, label %middle.block1196, label %vector.body1198, !llvm.loop !54

middle.block1196:                                 ; preds = %vector.body1198
  %cmp.n1206 = icmp eq i64 %indvars.iv21.i52, %n.vec1202
  br i1 %cmp.n1206, label %for.inc6.i63, label %for.body3.i60.preheader1251

for.body3.i60.preheader1251:                      ; preds = %for.body3.i60.preheader, %middle.block1196
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1202, %middle.block1196 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1251, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1251 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1196, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit373.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1225 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1225, label %for.body3.i99.preheader1249, label %vector.ph1226

vector.ph1226:                                    ; preds = %for.body3.i99.preheader
  %n.vec1228 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %vector.ph1226
  %index1229 = phi i64 [ 0, %vector.ph1226 ], [ %index.next1230, %vector.body1224 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i91, i64 %index1229
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1233 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1233, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1230 = add i64 %index1229, 4
  %68 = icmp eq i64 %index.next1230, %n.vec1228
  br i1 %68, label %middle.block1222, label %vector.body1224, !llvm.loop !56

middle.block1222:                                 ; preds = %vector.body1224
  %cmp.n1232 = icmp eq i64 %indvars.iv21.i91, %n.vec1228
  br i1 %cmp.n1232, label %for.inc6.i102, label %for.body3.i99.preheader1249

for.body3.i99.preheader1249:                      ; preds = %for.body3.i99.preheader, %middle.block1222
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1228, %middle.block1222 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1249, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1249 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1222, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit219.1
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1237 = phi i64 [ %indvar.next1238, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1237, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1239 = icmp ult i64 %88, 4
  br i1 %min.iters.check1239, label %polly.loop_header191.preheader, label %vector.ph1240

vector.ph1240:                                    ; preds = %polly.loop_header
  %n.vec1242 = and i64 %88, -4
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %vector.ph1240
  %index1243 = phi i64 [ 0, %vector.ph1240 ], [ %index.next1244, %vector.body1236 ]
  %90 = shl nuw nsw i64 %index1243, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1247 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1247, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1244 = add i64 %index1243, 4
  %95 = icmp eq i64 %index.next1244, %n.vec1242
  br i1 %95, label %middle.block1234, label %vector.body1236, !llvm.loop !67

middle.block1234:                                 ; preds = %vector.body1236
  %cmp.n1246 = icmp eq i64 %88, %n.vec1242
  br i1 %cmp.n1246, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1234
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1242, %middle.block1234 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1234
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1238 = add i64 %indvar1237, 1
  br i1 %exitcond779.not, label %polly.loop_header211.preheader, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond778.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond778.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header211.preheader:                   ; preds = %polly.loop_exit193, %polly.loop_exit213
  %polly.loop_cond210 = phi i1 [ false, %polly.loop_exit213 ], [ true, %polly.loop_exit193 ]
  %polly.indvar208 = phi i64 [ 1, %polly.loop_exit213 ], [ 0, %polly.loop_exit193 ]
  %97 = mul nuw nsw i64 %polly.indvar208, 50
  %98 = mul nuw nsw i64 %polly.indvar208, -50
  %99 = icmp slt i64 %98, -30
  %100 = select i1 %99, i64 %98, i64 -30
  %101 = add nsw i64 %100, 79
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  br i1 %polly.loop_cond210, label %polly.loop_header211.preheader, label %polly.loop_header211.1

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit219
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header211.preheader ]
  %102 = shl nuw nsw i64 %polly.indvar214, 3
  %scevgep231 = getelementptr i8, i8* %call1, i64 %102
  %scevgep235 = getelementptr i8, i8* %call2, i64 %102
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit226
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond777.not = icmp eq i64 %polly.indvar_next215, 60
  br i1 %exitcond777.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit226, %polly.loop_header211
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit226 ], [ %97, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit226 ], [ 0, %polly.loop_header211 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 63)
  %103 = add nuw i64 %polly.indvar220, %97
  %polly.loop_guard227876 = icmp sgt i64 %103, -1
  br i1 %polly.loop_guard227876, label %polly.loop_header224.preheader, label %polly.loop_exit226

polly.loop_header224.preheader:                   ; preds = %polly.loop_header217
  %104 = mul i64 %103, 480
  %scevgep236 = getelementptr i8, i8* %scevgep235, i64 %104
  %scevgep236237 = bitcast i8* %scevgep236 to double*
  %_p_scalar_238 = load double, double* %scevgep236237, align 8, !alias.scope !66, !noalias !70
  %scevgep244 = getelementptr i8, i8* %scevgep231, i64 %104
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !65, !noalias !71
  %105 = mul i64 %103, 640
  br label %polly.loop_header224

polly.loop_exit226:                               ; preds = %polly.loop_header224, %polly.loop_header217
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222.not.not = icmp ult i64 %polly.indvar220, %101
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %polly.loop_cond222.not.not, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header224:                             ; preds = %polly.loop_header224.preheader, %polly.loop_header224
  %polly.indvar228 = phi i64 [ %polly.indvar_next229, %polly.loop_header224 ], [ 0, %polly.loop_header224.preheader ]
  %106 = mul nuw nsw i64 %polly.indvar228, 480
  %scevgep232 = getelementptr i8, i8* %scevgep231, i64 %106
  %scevgep232233 = bitcast i8* %scevgep232 to double*
  %_p_scalar_234 = load double, double* %scevgep232233, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_238, %_p_scalar_234
  %scevgep240 = getelementptr i8, i8* %scevgep235, i64 %106
  %scevgep240241 = bitcast i8* %scevgep240 to double*
  %_p_scalar_242 = load double, double* %scevgep240241, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_246, %_p_scalar_242
  %107 = shl i64 %polly.indvar228, 3
  %108 = add i64 %107, %105
  %scevgep247 = getelementptr i8, i8* %call, i64 %108
  %scevgep247248 = bitcast i8* %scevgep247 to double*
  %_p_scalar_249 = load double, double* %scevgep247248, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_249
  store double %p_add42.i118, double* %scevgep247248, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next229 = add nuw nsw i64 %polly.indvar228, 1
  %exitcond.not = icmp eq i64 %polly.indvar228, %smin
  br i1 %exitcond.not, label %polly.loop_exit226, label %polly.loop_header224

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar1211 = phi i64 [ %indvar.next1212, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %109 = add i64 %indvar1211, 1
  %110 = mul nuw nsw i64 %polly.indvar339, 640
  %scevgep348 = getelementptr i8, i8* %call, i64 %110
  %min.iters.check1213 = icmp ult i64 %109, 4
  br i1 %min.iters.check1213, label %polly.loop_header342.preheader, label %vector.ph1214

vector.ph1214:                                    ; preds = %polly.loop_header336
  %n.vec1216 = and i64 %109, -4
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.body1210, %vector.ph1214
  %index1217 = phi i64 [ 0, %vector.ph1214 ], [ %index.next1218, %vector.body1210 ]
  %111 = shl nuw nsw i64 %index1217, 3
  %112 = getelementptr i8, i8* %scevgep348, i64 %111
  %113 = bitcast i8* %112 to <4 x double>*
  %wide.load1221 = load <4 x double>, <4 x double>* %113, align 8, !alias.scope !72, !noalias !74
  %114 = fmul fast <4 x double> %wide.load1221, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %115 = bitcast i8* %112 to <4 x double>*
  store <4 x double> %114, <4 x double>* %115, align 8, !alias.scope !72, !noalias !74
  %index.next1218 = add i64 %index1217, 4
  %116 = icmp eq i64 %index.next1218, %n.vec1216
  br i1 %116, label %middle.block1208, label %vector.body1210, !llvm.loop !77

middle.block1208:                                 ; preds = %vector.body1210
  %cmp.n1220 = icmp eq i64 %109, %n.vec1216
  br i1 %cmp.n1220, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block1208
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec1216, %middle.block1208 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block1208
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond786.not = icmp eq i64 %polly.indvar_next340, 80
  %indvar.next1212 = add i64 %indvar1211, 1
  br i1 %exitcond786.not, label %polly.loop_header364.preheader, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %117 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %117
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond785.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond785.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !78

polly.loop_header364.preheader:                   ; preds = %polly.loop_exit344, %polly.loop_exit366
  %polly.loop_cond363 = phi i1 [ false, %polly.loop_exit366 ], [ true, %polly.loop_exit344 ]
  %polly.indvar361 = phi i64 [ 1, %polly.loop_exit366 ], [ 0, %polly.loop_exit344 ]
  %118 = mul nuw nsw i64 %polly.indvar361, 50
  %119 = mul nuw nsw i64 %polly.indvar361, -50
  %120 = icmp slt i64 %119, -30
  %121 = select i1 %120, i64 %119, i64 -30
  %122 = add nsw i64 %121, 79
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_exit373
  br i1 %polly.loop_cond363, label %polly.loop_header364.preheader, label %polly.loop_header364.1

polly.loop_header364:                             ; preds = %polly.loop_header364.preheader, %polly.loop_exit373
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_exit373 ], [ 0, %polly.loop_header364.preheader ]
  %123 = shl nuw nsw i64 %polly.indvar367, 3
  %scevgep386 = getelementptr i8, i8* %call1, i64 %123
  %scevgep390 = getelementptr i8, i8* %call2, i64 %123
  br label %polly.loop_header371

polly.loop_exit373:                               ; preds = %polly.loop_exit381
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond784.not = icmp eq i64 %polly.indvar_next368, 60
  br i1 %exitcond784.not, label %polly.loop_exit366, label %polly.loop_header364

polly.loop_header371:                             ; preds = %polly.loop_exit381, %polly.loop_header364
  %indvars.iv780 = phi i64 [ %indvars.iv.next781, %polly.loop_exit381 ], [ %118, %polly.loop_header364 ]
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_exit381 ], [ 0, %polly.loop_header364 ]
  %smin782 = call i64 @llvm.smin.i64(i64 %indvars.iv780, i64 63)
  %124 = add nuw i64 %polly.indvar375, %118
  %polly.loop_guard382878 = icmp sgt i64 %124, -1
  br i1 %polly.loop_guard382878, label %polly.loop_header379.preheader, label %polly.loop_exit381

polly.loop_header379.preheader:                   ; preds = %polly.loop_header371
  %125 = mul i64 %124, 480
  %scevgep391 = getelementptr i8, i8* %scevgep390, i64 %125
  %scevgep391392 = bitcast i8* %scevgep391 to double*
  %_p_scalar_393 = load double, double* %scevgep391392, align 8, !alias.scope !76, !noalias !79
  %scevgep399 = getelementptr i8, i8* %scevgep386, i64 %125
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !75, !noalias !80
  %126 = mul i64 %124, 640
  br label %polly.loop_header379

polly.loop_exit381:                               ; preds = %polly.loop_header379, %polly.loop_header371
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %polly.loop_cond377.not.not = icmp ult i64 %polly.indvar375, %122
  %indvars.iv.next781 = add nuw nsw i64 %indvars.iv780, 1
  br i1 %polly.loop_cond377.not.not, label %polly.loop_header371, label %polly.loop_exit373

polly.loop_header379:                             ; preds = %polly.loop_header379.preheader, %polly.loop_header379
  %polly.indvar383 = phi i64 [ %polly.indvar_next384, %polly.loop_header379 ], [ 0, %polly.loop_header379.preheader ]
  %127 = mul nuw nsw i64 %polly.indvar383, 480
  %scevgep387 = getelementptr i8, i8* %scevgep386, i64 %127
  %scevgep387388 = bitcast i8* %scevgep387 to double*
  %_p_scalar_389 = load double, double* %scevgep387388, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_393, %_p_scalar_389
  %scevgep395 = getelementptr i8, i8* %scevgep390, i64 %127
  %scevgep395396 = bitcast i8* %scevgep395 to double*
  %_p_scalar_397 = load double, double* %scevgep395396, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_401, %_p_scalar_397
  %128 = shl i64 %polly.indvar383, 3
  %129 = add i64 %128, %126
  %scevgep402 = getelementptr i8, i8* %call, i64 %129
  %scevgep402403 = bitcast i8* %scevgep402 to double*
  %_p_scalar_404 = load double, double* %scevgep402403, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_404
  store double %p_add42.i79, double* %scevgep402403, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond783.not = icmp eq i64 %polly.indvar383, %smin782
  br i1 %exitcond783.not, label %polly.loop_exit381, label %polly.loop_header379

polly.loop_header491:                             ; preds = %init_array.exit, %polly.loop_exit499
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit499 ], [ 0, %init_array.exit ]
  %polly.indvar494 = phi i64 [ %polly.indvar_next495, %polly.loop_exit499 ], [ 1, %init_array.exit ]
  %130 = add i64 %indvar, 1
  %131 = mul nuw nsw i64 %polly.indvar494, 640
  %scevgep503 = getelementptr i8, i8* %call, i64 %131
  %min.iters.check1187 = icmp ult i64 %130, 4
  br i1 %min.iters.check1187, label %polly.loop_header497.preheader, label %vector.ph1188

vector.ph1188:                                    ; preds = %polly.loop_header491
  %n.vec1190 = and i64 %130, -4
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %vector.ph1188
  %index1191 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1192, %vector.body1186 ]
  %132 = shl nuw nsw i64 %index1191, 3
  %133 = getelementptr i8, i8* %scevgep503, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load1195 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !81, !noalias !83
  %135 = fmul fast <4 x double> %wide.load1195, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %136 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %135, <4 x double>* %136, align 8, !alias.scope !81, !noalias !83
  %index.next1192 = add i64 %index1191, 4
  %137 = icmp eq i64 %index.next1192, %n.vec1190
  br i1 %137, label %middle.block1184, label %vector.body1186, !llvm.loop !86

middle.block1184:                                 ; preds = %vector.body1186
  %cmp.n1194 = icmp eq i64 %130, %n.vec1190
  br i1 %cmp.n1194, label %polly.loop_exit499, label %polly.loop_header497.preheader

polly.loop_header497.preheader:                   ; preds = %polly.loop_header491, %middle.block1184
  %polly.indvar500.ph = phi i64 [ 0, %polly.loop_header491 ], [ %n.vec1190, %middle.block1184 ]
  br label %polly.loop_header497

polly.loop_exit499:                               ; preds = %polly.loop_header497, %middle.block1184
  %polly.indvar_next495 = add nuw nsw i64 %polly.indvar494, 1
  %exitcond793.not = icmp eq i64 %polly.indvar_next495, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond793.not, label %polly.loop_header519.preheader, label %polly.loop_header491

polly.loop_header497:                             ; preds = %polly.loop_header497.preheader, %polly.loop_header497
  %polly.indvar500 = phi i64 [ %polly.indvar_next501, %polly.loop_header497 ], [ %polly.indvar500.ph, %polly.loop_header497.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar500, 3
  %scevgep504 = getelementptr i8, i8* %scevgep503, i64 %138
  %scevgep504505 = bitcast i8* %scevgep504 to double*
  %_p_scalar_506 = load double, double* %scevgep504505, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_506, 1.200000e+00
  store double %p_mul.i, double* %scevgep504505, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next501 = add nuw nsw i64 %polly.indvar500, 1
  %exitcond792.not = icmp eq i64 %polly.indvar_next501, %polly.indvar494
  br i1 %exitcond792.not, label %polly.loop_exit499, label %polly.loop_header497, !llvm.loop !87

polly.loop_header519.preheader:                   ; preds = %polly.loop_exit499, %polly.loop_exit521
  %polly.loop_cond518 = phi i1 [ false, %polly.loop_exit521 ], [ true, %polly.loop_exit499 ]
  %polly.indvar516 = phi i64 [ 1, %polly.loop_exit521 ], [ 0, %polly.loop_exit499 ]
  %139 = mul nuw nsw i64 %polly.indvar516, 50
  %140 = mul nuw nsw i64 %polly.indvar516, -50
  %141 = icmp slt i64 %140, -30
  %142 = select i1 %141, i64 %140, i64 -30
  %143 = add nsw i64 %142, 79
  br label %polly.loop_header519

polly.loop_exit521:                               ; preds = %polly.loop_exit528
  br i1 %polly.loop_cond518, label %polly.loop_header519.preheader, label %polly.loop_header519.1

polly.loop_header519:                             ; preds = %polly.loop_header519.preheader, %polly.loop_exit528
  %polly.indvar522 = phi i64 [ %polly.indvar_next523, %polly.loop_exit528 ], [ 0, %polly.loop_header519.preheader ]
  %144 = shl nuw nsw i64 %polly.indvar522, 3
  %scevgep541 = getelementptr i8, i8* %call1, i64 %144
  %scevgep545 = getelementptr i8, i8* %call2, i64 %144
  br label %polly.loop_header526

polly.loop_exit528:                               ; preds = %polly.loop_exit536
  %polly.indvar_next523 = add nuw nsw i64 %polly.indvar522, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next523, 60
  br i1 %exitcond791.not, label %polly.loop_exit521, label %polly.loop_header519

polly.loop_header526:                             ; preds = %polly.loop_exit536, %polly.loop_header519
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %polly.loop_exit536 ], [ %139, %polly.loop_header519 ]
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_exit536 ], [ 0, %polly.loop_header519 ]
  %smin789 = call i64 @llvm.smin.i64(i64 %indvars.iv787, i64 63)
  %145 = add nuw i64 %polly.indvar530, %139
  %polly.loop_guard537880 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard537880, label %polly.loop_header534.preheader, label %polly.loop_exit536

polly.loop_header534.preheader:                   ; preds = %polly.loop_header526
  %146 = mul i64 %145, 480
  %scevgep546 = getelementptr i8, i8* %scevgep545, i64 %146
  %scevgep546547 = bitcast i8* %scevgep546 to double*
  %_p_scalar_548 = load double, double* %scevgep546547, align 8, !alias.scope !85, !noalias !88
  %scevgep554 = getelementptr i8, i8* %scevgep541, i64 %146
  %scevgep554555 = bitcast i8* %scevgep554 to double*
  %_p_scalar_556 = load double, double* %scevgep554555, align 8, !alias.scope !84, !noalias !89
  %147 = mul i64 %145, 640
  br label %polly.loop_header534

polly.loop_exit536:                               ; preds = %polly.loop_header534, %polly.loop_header526
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %polly.loop_cond532.not.not = icmp ult i64 %polly.indvar530, %143
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 1
  br i1 %polly.loop_cond532.not.not, label %polly.loop_header526, label %polly.loop_exit528

polly.loop_header534:                             ; preds = %polly.loop_header534.preheader, %polly.loop_header534
  %polly.indvar538 = phi i64 [ %polly.indvar_next539, %polly.loop_header534 ], [ 0, %polly.loop_header534.preheader ]
  %148 = mul nuw nsw i64 %polly.indvar538, 480
  %scevgep542 = getelementptr i8, i8* %scevgep541, i64 %148
  %scevgep542543 = bitcast i8* %scevgep542 to double*
  %_p_scalar_544 = load double, double* %scevgep542543, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_548, %_p_scalar_544
  %scevgep550 = getelementptr i8, i8* %scevgep545, i64 %148
  %scevgep550551 = bitcast i8* %scevgep550 to double*
  %_p_scalar_552 = load double, double* %scevgep550551, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_556, %_p_scalar_552
  %149 = shl i64 %polly.indvar538, 3
  %150 = add i64 %149, %147
  %scevgep557 = getelementptr i8, i8* %call, i64 %150
  %scevgep557558 = bitcast i8* %scevgep557 to double*
  %_p_scalar_559 = load double, double* %scevgep557558, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_559
  store double %p_add42.i, double* %scevgep557558, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %exitcond790.not = icmp eq i64 %polly.indvar538, %smin789
  br i1 %exitcond790.not, label %polly.loop_exit536, label %polly.loop_header534

polly.loop_header698:                             ; preds = %entry, %polly.loop_exit706
  %polly.indvar701 = phi i64 [ %polly.indvar_next702, %polly.loop_exit706 ], [ 0, %entry ]
  %151 = mul nuw nsw i64 %polly.indvar701, 640
  %152 = trunc i64 %polly.indvar701 to i32
  %broadcast.splatinsert918 = insertelement <4 x i32> poison, i32 %152, i32 0
  %broadcast.splat919 = shufflevector <4 x i32> %broadcast.splatinsert918, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body908

vector.body908:                                   ; preds = %vector.body908, %polly.loop_header698
  %index910 = phi i64 [ 0, %polly.loop_header698 ], [ %index.next911, %vector.body908 ]
  %vec.ind916 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header698 ], [ %vec.ind.next917, %vector.body908 ]
  %153 = mul <4 x i32> %vec.ind916, %broadcast.splat919
  %154 = add <4 x i32> %153, <i32 3, i32 3, i32 3, i32 3>
  %155 = urem <4 x i32> %154, <i32 80, i32 80, i32 80, i32 80>
  %156 = sitofp <4 x i32> %155 to <4 x double>
  %157 = fmul fast <4 x double> %156, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %158 = shl i64 %index910, 3
  %159 = add nuw nsw i64 %158, %151
  %160 = getelementptr i8, i8* %call, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %157, <4 x double>* %161, align 8, !alias.scope !90, !noalias !92
  %index.next911 = add i64 %index910, 4
  %vec.ind.next917 = add <4 x i32> %vec.ind916, <i32 4, i32 4, i32 4, i32 4>
  %162 = icmp eq i64 %index.next911, 32
  br i1 %162, label %polly.loop_exit706, label %vector.body908, !llvm.loop !95

polly.loop_exit706:                               ; preds = %vector.body908
  %polly.indvar_next702 = add nuw nsw i64 %polly.indvar701, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next702, 32
  br i1 %exitcond813.not, label %polly.loop_header698.1, label %polly.loop_header698

polly.loop_header725:                             ; preds = %polly.loop_exit706.2.2, %polly.loop_exit733
  %polly.indvar728 = phi i64 [ %polly.indvar_next729, %polly.loop_exit733 ], [ 0, %polly.loop_exit706.2.2 ]
  %163 = mul nuw nsw i64 %polly.indvar728, 480
  %164 = trunc i64 %polly.indvar728 to i32
  %broadcast.splatinsert1032 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat1033 = shufflevector <4 x i32> %broadcast.splatinsert1032, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1022

vector.body1022:                                  ; preds = %vector.body1022, %polly.loop_header725
  %index1024 = phi i64 [ 0, %polly.loop_header725 ], [ %index.next1025, %vector.body1022 ]
  %vec.ind1030 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725 ], [ %vec.ind.next1031, %vector.body1022 ]
  %165 = mul <4 x i32> %vec.ind1030, %broadcast.splat1033
  %166 = add <4 x i32> %165, <i32 2, i32 2, i32 2, i32 2>
  %167 = urem <4 x i32> %166, <i32 60, i32 60, i32 60, i32 60>
  %168 = sitofp <4 x i32> %167 to <4 x double>
  %169 = fmul fast <4 x double> %168, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %170 = shl i64 %index1024, 3
  %171 = add i64 %170, %163
  %172 = getelementptr i8, i8* %call2, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %169, <4 x double>* %173, align 8, !alias.scope !94, !noalias !96
  %index.next1025 = add i64 %index1024, 4
  %vec.ind.next1031 = add <4 x i32> %vec.ind1030, <i32 4, i32 4, i32 4, i32 4>
  %174 = icmp eq i64 %index.next1025, 32
  br i1 %174, label %polly.loop_exit733, label %vector.body1022, !llvm.loop !97

polly.loop_exit733:                               ; preds = %vector.body1022
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %exitcond804.not = icmp eq i64 %polly.indvar_next729, 32
  br i1 %exitcond804.not, label %polly.loop_header725.1, label %polly.loop_header725

polly.loop_header751:                             ; preds = %polly.loop_exit733.1.2, %polly.loop_exit759
  %polly.indvar754 = phi i64 [ %polly.indvar_next755, %polly.loop_exit759 ], [ 0, %polly.loop_exit733.1.2 ]
  %175 = mul nuw nsw i64 %polly.indvar754, 480
  %176 = trunc i64 %polly.indvar754 to i32
  %broadcast.splatinsert1110 = insertelement <4 x i32> poison, i32 %176, i32 0
  %broadcast.splat1111 = shufflevector <4 x i32> %broadcast.splatinsert1110, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %polly.loop_header751
  %index1102 = phi i64 [ 0, %polly.loop_header751 ], [ %index.next1103, %vector.body1100 ]
  %vec.ind1108 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header751 ], [ %vec.ind.next1109, %vector.body1100 ]
  %177 = mul <4 x i32> %vec.ind1108, %broadcast.splat1111
  %178 = add <4 x i32> %177, <i32 1, i32 1, i32 1, i32 1>
  %179 = urem <4 x i32> %178, <i32 80, i32 80, i32 80, i32 80>
  %180 = sitofp <4 x i32> %179 to <4 x double>
  %181 = fmul fast <4 x double> %180, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %182 = shl i64 %index1102, 3
  %183 = add i64 %182, %175
  %184 = getelementptr i8, i8* %call1, i64 %183
  %185 = bitcast i8* %184 to <4 x double>*
  store <4 x double> %181, <4 x double>* %185, align 8, !alias.scope !93, !noalias !98
  %index.next1103 = add i64 %index1102, 4
  %vec.ind.next1109 = add <4 x i32> %vec.ind1108, <i32 4, i32 4, i32 4, i32 4>
  %186 = icmp eq i64 %index.next1103, 32
  br i1 %186, label %polly.loop_exit759, label %vector.body1100, !llvm.loop !99

polly.loop_exit759:                               ; preds = %vector.body1100
  %polly.indvar_next755 = add nuw nsw i64 %polly.indvar754, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next755, 32
  br i1 %exitcond798.not, label %polly.loop_header751.1, label %polly.loop_header751

polly.loop_header211.1:                           ; preds = %polly.loop_exit213, %polly.loop_exit219.1
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit213 ]
  %187 = shl nuw nsw i64 %polly.indvar214.1, 3
  %scevgep231.1 = getelementptr i8, i8* %call1, i64 %187
  %scevgep235.1 = getelementptr i8, i8* %call2, i64 %187
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit226.1, %polly.loop_header211.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit226.1 ], [ 0, %polly.loop_header211.1 ]
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_exit226.1 ], [ 14, %polly.loop_header211.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 63)
  %188 = add nuw nsw i64 %polly.indvar220.1, 50
  %polly.loop_guard227.1877 = icmp ugt i64 %polly.indvar220.1, 13
  br i1 %polly.loop_guard227.1877, label %polly.loop_header224.preheader.1, label %polly.loop_exit226.1

polly.loop_header224.preheader.1:                 ; preds = %polly.loop_header217.1
  %189 = mul nuw nsw i64 %188, 480
  %scevgep236.1 = getelementptr i8, i8* %scevgep235.1, i64 %189
  %scevgep236237.1 = bitcast i8* %scevgep236.1 to double*
  %_p_scalar_238.1 = load double, double* %scevgep236237.1, align 8, !alias.scope !66, !noalias !70
  %scevgep244.1 = getelementptr i8, i8* %scevgep231.1, i64 %189
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !65, !noalias !71
  %190 = mul nuw nsw i64 %188, 640
  br label %polly.loop_header224.1

polly.loop_header224.1:                           ; preds = %polly.loop_header224.1, %polly.loop_header224.preheader.1
  %polly.indvar228.1 = phi i64 [ %polly.indvar_next229.1, %polly.loop_header224.1 ], [ 0, %polly.loop_header224.preheader.1 ]
  %191 = add nuw nsw i64 %polly.indvar228.1, 64
  %192 = mul nuw nsw i64 %191, 480
  %scevgep232.1 = getelementptr i8, i8* %scevgep231.1, i64 %192
  %scevgep232233.1 = bitcast i8* %scevgep232.1 to double*
  %_p_scalar_234.1 = load double, double* %scevgep232233.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_238.1, %_p_scalar_234.1
  %scevgep240.1 = getelementptr i8, i8* %scevgep235.1, i64 %192
  %scevgep240241.1 = bitcast i8* %scevgep240.1 to double*
  %_p_scalar_242.1 = load double, double* %scevgep240241.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1 = fmul fast double %_p_scalar_246.1, %_p_scalar_242.1
  %193 = shl i64 %191, 3
  %194 = add i64 %193, %190
  %scevgep247.1 = getelementptr i8, i8* %call, i64 %194
  %scevgep247248.1 = bitcast i8* %scevgep247.1 to double*
  %_p_scalar_249.1 = load double, double* %scevgep247248.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_249.1
  store double %p_add42.i118.1, double* %scevgep247248.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next229.1 = add nuw nsw i64 %polly.indvar228.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar228.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit226.1, label %polly.loop_header224.1

polly.loop_exit226.1:                             ; preds = %polly.loop_header224.1, %polly.loop_header217.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %polly.loop_cond222.not.not.1 = icmp ult i64 %polly.indvar220.1, 29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  br i1 %polly.loop_cond222.not.not.1, label %polly.loop_header217.1, label %polly.loop_exit219.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit226.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond777.1.not = icmp eq i64 %polly.indvar_next215.1, 60
  br i1 %exitcond777.1.not, label %kernel_syr2k.exit129, label %polly.loop_header211.1

polly.loop_header364.1:                           ; preds = %polly.loop_exit366, %polly.loop_exit373.1
  %polly.indvar367.1 = phi i64 [ %polly.indvar_next368.1, %polly.loop_exit373.1 ], [ 0, %polly.loop_exit366 ]
  %195 = shl nuw nsw i64 %polly.indvar367.1, 3
  %scevgep386.1 = getelementptr i8, i8* %call1, i64 %195
  %scevgep390.1 = getelementptr i8, i8* %call2, i64 %195
  br label %polly.loop_header371.1

polly.loop_header371.1:                           ; preds = %polly.loop_exit381.1, %polly.loop_header364.1
  %indvars.iv780.1 = phi i64 [ %indvars.iv.next781.1, %polly.loop_exit381.1 ], [ 0, %polly.loop_header364.1 ]
  %polly.indvar375.1 = phi i64 [ %polly.indvar_next376.1, %polly.loop_exit381.1 ], [ 14, %polly.loop_header364.1 ]
  %smin782.1 = call i64 @llvm.smin.i64(i64 %indvars.iv780.1, i64 63)
  %196 = add nuw nsw i64 %polly.indvar375.1, 50
  %polly.loop_guard382.1879 = icmp ugt i64 %polly.indvar375.1, 13
  br i1 %polly.loop_guard382.1879, label %polly.loop_header379.preheader.1, label %polly.loop_exit381.1

polly.loop_header379.preheader.1:                 ; preds = %polly.loop_header371.1
  %197 = mul nuw nsw i64 %196, 480
  %scevgep391.1 = getelementptr i8, i8* %scevgep390.1, i64 %197
  %scevgep391392.1 = bitcast i8* %scevgep391.1 to double*
  %_p_scalar_393.1 = load double, double* %scevgep391392.1, align 8, !alias.scope !76, !noalias !79
  %scevgep399.1 = getelementptr i8, i8* %scevgep386.1, i64 %197
  %scevgep399400.1 = bitcast i8* %scevgep399.1 to double*
  %_p_scalar_401.1 = load double, double* %scevgep399400.1, align 8, !alias.scope !75, !noalias !80
  %198 = mul nuw nsw i64 %196, 640
  br label %polly.loop_header379.1

polly.loop_header379.1:                           ; preds = %polly.loop_header379.1, %polly.loop_header379.preheader.1
  %polly.indvar383.1 = phi i64 [ %polly.indvar_next384.1, %polly.loop_header379.1 ], [ 0, %polly.loop_header379.preheader.1 ]
  %199 = add nuw nsw i64 %polly.indvar383.1, 64
  %200 = mul nuw nsw i64 %199, 480
  %scevgep387.1 = getelementptr i8, i8* %scevgep386.1, i64 %200
  %scevgep387388.1 = bitcast i8* %scevgep387.1 to double*
  %_p_scalar_389.1 = load double, double* %scevgep387388.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_393.1, %_p_scalar_389.1
  %scevgep395.1 = getelementptr i8, i8* %scevgep390.1, i64 %200
  %scevgep395396.1 = bitcast i8* %scevgep395.1 to double*
  %_p_scalar_397.1 = load double, double* %scevgep395396.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1 = fmul fast double %_p_scalar_401.1, %_p_scalar_397.1
  %201 = shl i64 %199, 3
  %202 = add i64 %201, %198
  %scevgep402.1 = getelementptr i8, i8* %call, i64 %202
  %scevgep402403.1 = bitcast i8* %scevgep402.1 to double*
  %_p_scalar_404.1 = load double, double* %scevgep402403.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_404.1
  store double %p_add42.i79.1, double* %scevgep402403.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next384.1 = add nuw nsw i64 %polly.indvar383.1, 1
  %exitcond783.1.not = icmp eq i64 %polly.indvar383.1, %smin782.1
  br i1 %exitcond783.1.not, label %polly.loop_exit381.1, label %polly.loop_header379.1

polly.loop_exit381.1:                             ; preds = %polly.loop_header379.1, %polly.loop_header371.1
  %polly.indvar_next376.1 = add nuw nsw i64 %polly.indvar375.1, 1
  %polly.loop_cond377.not.not.1 = icmp ult i64 %polly.indvar375.1, 29
  %indvars.iv.next781.1 = add nuw nsw i64 %indvars.iv780.1, 1
  br i1 %polly.loop_cond377.not.not.1, label %polly.loop_header371.1, label %polly.loop_exit373.1

polly.loop_exit373.1:                             ; preds = %polly.loop_exit381.1
  %polly.indvar_next368.1 = add nuw nsw i64 %polly.indvar367.1, 1
  %exitcond784.1.not = icmp eq i64 %polly.indvar_next368.1, 60
  br i1 %exitcond784.1.not, label %kernel_syr2k.exit90, label %polly.loop_header364.1

polly.loop_header519.1:                           ; preds = %polly.loop_exit521, %polly.loop_exit528.1
  %polly.indvar522.1 = phi i64 [ %polly.indvar_next523.1, %polly.loop_exit528.1 ], [ 0, %polly.loop_exit521 ]
  %203 = shl nuw nsw i64 %polly.indvar522.1, 3
  %scevgep541.1 = getelementptr i8, i8* %call1, i64 %203
  %scevgep545.1 = getelementptr i8, i8* %call2, i64 %203
  br label %polly.loop_header526.1

polly.loop_header526.1:                           ; preds = %polly.loop_exit536.1, %polly.loop_header519.1
  %indvars.iv787.1 = phi i64 [ %indvars.iv.next788.1, %polly.loop_exit536.1 ], [ 0, %polly.loop_header519.1 ]
  %polly.indvar530.1 = phi i64 [ %polly.indvar_next531.1, %polly.loop_exit536.1 ], [ 14, %polly.loop_header519.1 ]
  %smin789.1 = call i64 @llvm.smin.i64(i64 %indvars.iv787.1, i64 63)
  %204 = add nuw nsw i64 %polly.indvar530.1, 50
  %polly.loop_guard537.1881 = icmp ugt i64 %polly.indvar530.1, 13
  br i1 %polly.loop_guard537.1881, label %polly.loop_header534.preheader.1, label %polly.loop_exit536.1

polly.loop_header534.preheader.1:                 ; preds = %polly.loop_header526.1
  %205 = mul nuw nsw i64 %204, 480
  %scevgep546.1 = getelementptr i8, i8* %scevgep545.1, i64 %205
  %scevgep546547.1 = bitcast i8* %scevgep546.1 to double*
  %_p_scalar_548.1 = load double, double* %scevgep546547.1, align 8, !alias.scope !85, !noalias !88
  %scevgep554.1 = getelementptr i8, i8* %scevgep541.1, i64 %205
  %scevgep554555.1 = bitcast i8* %scevgep554.1 to double*
  %_p_scalar_556.1 = load double, double* %scevgep554555.1, align 8, !alias.scope !84, !noalias !89
  %206 = mul nuw nsw i64 %204, 640
  br label %polly.loop_header534.1

polly.loop_header534.1:                           ; preds = %polly.loop_header534.1, %polly.loop_header534.preheader.1
  %polly.indvar538.1 = phi i64 [ %polly.indvar_next539.1, %polly.loop_header534.1 ], [ 0, %polly.loop_header534.preheader.1 ]
  %207 = add nuw nsw i64 %polly.indvar538.1, 64
  %208 = mul nuw nsw i64 %207, 480
  %scevgep542.1 = getelementptr i8, i8* %scevgep541.1, i64 %208
  %scevgep542543.1 = bitcast i8* %scevgep542.1 to double*
  %_p_scalar_544.1 = load double, double* %scevgep542543.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_548.1, %_p_scalar_544.1
  %scevgep550.1 = getelementptr i8, i8* %scevgep545.1, i64 %208
  %scevgep550551.1 = bitcast i8* %scevgep550.1 to double*
  %_p_scalar_552.1 = load double, double* %scevgep550551.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1 = fmul fast double %_p_scalar_556.1, %_p_scalar_552.1
  %209 = shl i64 %207, 3
  %210 = add i64 %209, %206
  %scevgep557.1 = getelementptr i8, i8* %call, i64 %210
  %scevgep557558.1 = bitcast i8* %scevgep557.1 to double*
  %_p_scalar_559.1 = load double, double* %scevgep557558.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_559.1
  store double %p_add42.i.1, double* %scevgep557558.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.1 = add nuw nsw i64 %polly.indvar538.1, 1
  %exitcond790.1.not = icmp eq i64 %polly.indvar538.1, %smin789.1
  br i1 %exitcond790.1.not, label %polly.loop_exit536.1, label %polly.loop_header534.1

polly.loop_exit536.1:                             ; preds = %polly.loop_header534.1, %polly.loop_header526.1
  %polly.indvar_next531.1 = add nuw nsw i64 %polly.indvar530.1, 1
  %polly.loop_cond532.not.not.1 = icmp ult i64 %polly.indvar530.1, 29
  %indvars.iv.next788.1 = add nuw nsw i64 %indvars.iv787.1, 1
  br i1 %polly.loop_cond532.not.not.1, label %polly.loop_header526.1, label %polly.loop_exit528.1

polly.loop_exit528.1:                             ; preds = %polly.loop_exit536.1
  %polly.indvar_next523.1 = add nuw nsw i64 %polly.indvar522.1, 1
  %exitcond791.1.not = icmp eq i64 %polly.indvar_next523.1, 60
  br i1 %exitcond791.1.not, label %kernel_syr2k.exit, label %polly.loop_header519.1

polly.loop_header751.1:                           ; preds = %polly.loop_exit759, %polly.loop_exit759.1
  %polly.indvar754.1 = phi i64 [ %polly.indvar_next755.1, %polly.loop_exit759.1 ], [ 0, %polly.loop_exit759 ]
  %211 = mul nuw nsw i64 %polly.indvar754.1, 480
  %212 = trunc i64 %polly.indvar754.1 to i32
  %broadcast.splatinsert1122 = insertelement <4 x i32> poison, i32 %212, i32 0
  %broadcast.splat1123 = shufflevector <4 x i32> %broadcast.splatinsert1122, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %polly.loop_header751.1
  %index1116 = phi i64 [ 0, %polly.loop_header751.1 ], [ %index.next1117, %vector.body1114 ]
  %vec.ind1120 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header751.1 ], [ %vec.ind.next1121, %vector.body1114 ]
  %213 = add nuw nsw <4 x i64> %vec.ind1120, <i64 32, i64 32, i64 32, i64 32>
  %214 = trunc <4 x i64> %213 to <4 x i32>
  %215 = mul <4 x i32> %broadcast.splat1123, %214
  %216 = add <4 x i32> %215, <i32 1, i32 1, i32 1, i32 1>
  %217 = urem <4 x i32> %216, <i32 80, i32 80, i32 80, i32 80>
  %218 = sitofp <4 x i32> %217 to <4 x double>
  %219 = fmul fast <4 x double> %218, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %220 = extractelement <4 x i64> %213, i32 0
  %221 = shl i64 %220, 3
  %222 = add i64 %221, %211
  %223 = getelementptr i8, i8* %call1, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %219, <4 x double>* %224, align 8, !alias.scope !93, !noalias !98
  %index.next1117 = add i64 %index1116, 4
  %vec.ind.next1121 = add <4 x i64> %vec.ind1120, <i64 4, i64 4, i64 4, i64 4>
  %225 = icmp eq i64 %index.next1117, 28
  br i1 %225, label %polly.loop_exit759.1, label %vector.body1114, !llvm.loop !100

polly.loop_exit759.1:                             ; preds = %vector.body1114
  %polly.indvar_next755.1 = add nuw nsw i64 %polly.indvar754.1, 1
  %exitcond798.1.not = icmp eq i64 %polly.indvar_next755.1, 32
  br i1 %exitcond798.1.not, label %polly.loop_header751.1821, label %polly.loop_header751.1

polly.loop_header751.1821:                        ; preds = %polly.loop_exit759.1, %polly.loop_exit759.1832
  %polly.indvar754.1820 = phi i64 [ %polly.indvar_next755.1830, %polly.loop_exit759.1832 ], [ 0, %polly.loop_exit759.1 ]
  %226 = add nuw nsw i64 %polly.indvar754.1820, 32
  %227 = mul nuw nsw i64 %226, 480
  %228 = trunc i64 %226 to i32
  %broadcast.splatinsert1136 = insertelement <4 x i32> poison, i32 %228, i32 0
  %broadcast.splat1137 = shufflevector <4 x i32> %broadcast.splatinsert1136, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %polly.loop_header751.1821
  %index1128 = phi i64 [ 0, %polly.loop_header751.1821 ], [ %index.next1129, %vector.body1126 ]
  %vec.ind1134 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header751.1821 ], [ %vec.ind.next1135, %vector.body1126 ]
  %229 = mul <4 x i32> %vec.ind1134, %broadcast.splat1137
  %230 = add <4 x i32> %229, <i32 1, i32 1, i32 1, i32 1>
  %231 = urem <4 x i32> %230, <i32 80, i32 80, i32 80, i32 80>
  %232 = sitofp <4 x i32> %231 to <4 x double>
  %233 = fmul fast <4 x double> %232, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %234 = shl i64 %index1128, 3
  %235 = add i64 %234, %227
  %236 = getelementptr i8, i8* %call1, i64 %235
  %237 = bitcast i8* %236 to <4 x double>*
  store <4 x double> %233, <4 x double>* %237, align 8, !alias.scope !93, !noalias !98
  %index.next1129 = add i64 %index1128, 4
  %vec.ind.next1135 = add <4 x i32> %vec.ind1134, <i32 4, i32 4, i32 4, i32 4>
  %238 = icmp eq i64 %index.next1129, 32
  br i1 %238, label %polly.loop_exit759.1832, label %vector.body1126, !llvm.loop !101

polly.loop_exit759.1832:                          ; preds = %vector.body1126
  %polly.indvar_next755.1830 = add nuw nsw i64 %polly.indvar754.1820, 1
  %exitcond798.1831.not = icmp eq i64 %polly.indvar_next755.1830, 32
  br i1 %exitcond798.1831.not, label %polly.loop_header751.1.1, label %polly.loop_header751.1821

polly.loop_header751.1.1:                         ; preds = %polly.loop_exit759.1832, %polly.loop_exit759.1.1
  %polly.indvar754.1.1 = phi i64 [ %polly.indvar_next755.1.1, %polly.loop_exit759.1.1 ], [ 0, %polly.loop_exit759.1832 ]
  %239 = add nuw nsw i64 %polly.indvar754.1.1, 32
  %240 = mul nuw nsw i64 %239, 480
  %241 = trunc i64 %239 to i32
  %broadcast.splatinsert1148 = insertelement <4 x i32> poison, i32 %241, i32 0
  %broadcast.splat1149 = shufflevector <4 x i32> %broadcast.splatinsert1148, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1140

vector.body1140:                                  ; preds = %vector.body1140, %polly.loop_header751.1.1
  %index1142 = phi i64 [ 0, %polly.loop_header751.1.1 ], [ %index.next1143, %vector.body1140 ]
  %vec.ind1146 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header751.1.1 ], [ %vec.ind.next1147, %vector.body1140 ]
  %242 = add nuw nsw <4 x i64> %vec.ind1146, <i64 32, i64 32, i64 32, i64 32>
  %243 = trunc <4 x i64> %242 to <4 x i32>
  %244 = mul <4 x i32> %broadcast.splat1149, %243
  %245 = add <4 x i32> %244, <i32 1, i32 1, i32 1, i32 1>
  %246 = urem <4 x i32> %245, <i32 80, i32 80, i32 80, i32 80>
  %247 = sitofp <4 x i32> %246 to <4 x double>
  %248 = fmul fast <4 x double> %247, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %249 = extractelement <4 x i64> %242, i32 0
  %250 = shl i64 %249, 3
  %251 = add i64 %250, %240
  %252 = getelementptr i8, i8* %call1, i64 %251
  %253 = bitcast i8* %252 to <4 x double>*
  store <4 x double> %248, <4 x double>* %253, align 8, !alias.scope !93, !noalias !98
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1147 = add <4 x i64> %vec.ind1146, <i64 4, i64 4, i64 4, i64 4>
  %254 = icmp eq i64 %index.next1143, 28
  br i1 %254, label %polly.loop_exit759.1.1, label %vector.body1140, !llvm.loop !102

polly.loop_exit759.1.1:                           ; preds = %vector.body1140
  %polly.indvar_next755.1.1 = add nuw nsw i64 %polly.indvar754.1.1, 1
  %exitcond798.1.1.not = icmp eq i64 %polly.indvar_next755.1.1, 32
  br i1 %exitcond798.1.1.not, label %polly.loop_header751.2, label %polly.loop_header751.1.1

polly.loop_header751.2:                           ; preds = %polly.loop_exit759.1.1, %polly.loop_exit759.2
  %polly.indvar754.2 = phi i64 [ %polly.indvar_next755.2, %polly.loop_exit759.2 ], [ 0, %polly.loop_exit759.1.1 ]
  %255 = add nuw nsw i64 %polly.indvar754.2, 64
  %256 = mul nuw nsw i64 %255, 480
  %257 = trunc i64 %255 to i32
  %broadcast.splatinsert1162 = insertelement <4 x i32> poison, i32 %257, i32 0
  %broadcast.splat1163 = shufflevector <4 x i32> %broadcast.splatinsert1162, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %polly.loop_header751.2
  %index1154 = phi i64 [ 0, %polly.loop_header751.2 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1160 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header751.2 ], [ %vec.ind.next1161, %vector.body1152 ]
  %258 = mul <4 x i32> %vec.ind1160, %broadcast.splat1163
  %259 = add <4 x i32> %258, <i32 1, i32 1, i32 1, i32 1>
  %260 = urem <4 x i32> %259, <i32 80, i32 80, i32 80, i32 80>
  %261 = sitofp <4 x i32> %260 to <4 x double>
  %262 = fmul fast <4 x double> %261, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %263 = shl i64 %index1154, 3
  %264 = add i64 %263, %256
  %265 = getelementptr i8, i8* %call1, i64 %264
  %266 = bitcast i8* %265 to <4 x double>*
  store <4 x double> %262, <4 x double>* %266, align 8, !alias.scope !93, !noalias !98
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1161 = add <4 x i32> %vec.ind1160, <i32 4, i32 4, i32 4, i32 4>
  %267 = icmp eq i64 %index.next1155, 32
  br i1 %267, label %polly.loop_exit759.2, label %vector.body1152, !llvm.loop !103

polly.loop_exit759.2:                             ; preds = %vector.body1152
  %polly.indvar_next755.2 = add nuw nsw i64 %polly.indvar754.2, 1
  %exitcond798.2.not = icmp eq i64 %polly.indvar_next755.2, 16
  br i1 %exitcond798.2.not, label %polly.loop_header751.1.2, label %polly.loop_header751.2

polly.loop_header751.1.2:                         ; preds = %polly.loop_exit759.2, %polly.loop_exit759.1.2
  %polly.indvar754.1.2 = phi i64 [ %polly.indvar_next755.1.2, %polly.loop_exit759.1.2 ], [ 0, %polly.loop_exit759.2 ]
  %268 = add nuw nsw i64 %polly.indvar754.1.2, 64
  %269 = mul nuw nsw i64 %268, 480
  %270 = trunc i64 %268 to i32
  %broadcast.splatinsert1174 = insertelement <4 x i32> poison, i32 %270, i32 0
  %broadcast.splat1175 = shufflevector <4 x i32> %broadcast.splatinsert1174, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %polly.loop_header751.1.2
  %index1168 = phi i64 [ 0, %polly.loop_header751.1.2 ], [ %index.next1169, %vector.body1166 ]
  %vec.ind1172 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header751.1.2 ], [ %vec.ind.next1173, %vector.body1166 ]
  %271 = add nuw nsw <4 x i64> %vec.ind1172, <i64 32, i64 32, i64 32, i64 32>
  %272 = trunc <4 x i64> %271 to <4 x i32>
  %273 = mul <4 x i32> %broadcast.splat1175, %272
  %274 = add <4 x i32> %273, <i32 1, i32 1, i32 1, i32 1>
  %275 = urem <4 x i32> %274, <i32 80, i32 80, i32 80, i32 80>
  %276 = sitofp <4 x i32> %275 to <4 x double>
  %277 = fmul fast <4 x double> %276, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %278 = extractelement <4 x i64> %271, i32 0
  %279 = shl i64 %278, 3
  %280 = add i64 %279, %269
  %281 = getelementptr i8, i8* %call1, i64 %280
  %282 = bitcast i8* %281 to <4 x double>*
  store <4 x double> %277, <4 x double>* %282, align 8, !alias.scope !93, !noalias !98
  %index.next1169 = add i64 %index1168, 4
  %vec.ind.next1173 = add <4 x i64> %vec.ind1172, <i64 4, i64 4, i64 4, i64 4>
  %283 = icmp eq i64 %index.next1169, 28
  br i1 %283, label %polly.loop_exit759.1.2, label %vector.body1166, !llvm.loop !104

polly.loop_exit759.1.2:                           ; preds = %vector.body1166
  %polly.indvar_next755.1.2 = add nuw nsw i64 %polly.indvar754.1.2, 1
  %exitcond798.1.2.not = icmp eq i64 %polly.indvar_next755.1.2, 16
  br i1 %exitcond798.1.2.not, label %init_array.exit, label %polly.loop_header751.1.2

polly.loop_header725.1:                           ; preds = %polly.loop_exit733, %polly.loop_exit733.1
  %polly.indvar728.1 = phi i64 [ %polly.indvar_next729.1, %polly.loop_exit733.1 ], [ 0, %polly.loop_exit733 ]
  %284 = mul nuw nsw i64 %polly.indvar728.1, 480
  %285 = trunc i64 %polly.indvar728.1 to i32
  %broadcast.splatinsert1044 = insertelement <4 x i32> poison, i32 %285, i32 0
  %broadcast.splat1045 = shufflevector <4 x i32> %broadcast.splatinsert1044, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %polly.loop_header725.1
  %index1038 = phi i64 [ 0, %polly.loop_header725.1 ], [ %index.next1039, %vector.body1036 ]
  %vec.ind1042 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1 ], [ %vec.ind.next1043, %vector.body1036 ]
  %286 = add nuw nsw <4 x i64> %vec.ind1042, <i64 32, i64 32, i64 32, i64 32>
  %287 = trunc <4 x i64> %286 to <4 x i32>
  %288 = mul <4 x i32> %broadcast.splat1045, %287
  %289 = add <4 x i32> %288, <i32 2, i32 2, i32 2, i32 2>
  %290 = urem <4 x i32> %289, <i32 60, i32 60, i32 60, i32 60>
  %291 = sitofp <4 x i32> %290 to <4 x double>
  %292 = fmul fast <4 x double> %291, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %293 = extractelement <4 x i64> %286, i32 0
  %294 = shl i64 %293, 3
  %295 = add i64 %294, %284
  %296 = getelementptr i8, i8* %call2, i64 %295
  %297 = bitcast i8* %296 to <4 x double>*
  store <4 x double> %292, <4 x double>* %297, align 8, !alias.scope !94, !noalias !96
  %index.next1039 = add i64 %index1038, 4
  %vec.ind.next1043 = add <4 x i64> %vec.ind1042, <i64 4, i64 4, i64 4, i64 4>
  %298 = icmp eq i64 %index.next1039, 28
  br i1 %298, label %polly.loop_exit733.1, label %vector.body1036, !llvm.loop !105

polly.loop_exit733.1:                             ; preds = %vector.body1036
  %polly.indvar_next729.1 = add nuw nsw i64 %polly.indvar728.1, 1
  %exitcond804.1.not = icmp eq i64 %polly.indvar_next729.1, 32
  br i1 %exitcond804.1.not, label %polly.loop_header725.1835, label %polly.loop_header725.1

polly.loop_header725.1835:                        ; preds = %polly.loop_exit733.1, %polly.loop_exit733.1846
  %polly.indvar728.1834 = phi i64 [ %polly.indvar_next729.1844, %polly.loop_exit733.1846 ], [ 0, %polly.loop_exit733.1 ]
  %299 = add nuw nsw i64 %polly.indvar728.1834, 32
  %300 = mul nuw nsw i64 %299, 480
  %301 = trunc i64 %299 to i32
  %broadcast.splatinsert1058 = insertelement <4 x i32> poison, i32 %301, i32 0
  %broadcast.splat1059 = shufflevector <4 x i32> %broadcast.splatinsert1058, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1048

vector.body1048:                                  ; preds = %vector.body1048, %polly.loop_header725.1835
  %index1050 = phi i64 [ 0, %polly.loop_header725.1835 ], [ %index.next1051, %vector.body1048 ]
  %vec.ind1056 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725.1835 ], [ %vec.ind.next1057, %vector.body1048 ]
  %302 = mul <4 x i32> %vec.ind1056, %broadcast.splat1059
  %303 = add <4 x i32> %302, <i32 2, i32 2, i32 2, i32 2>
  %304 = urem <4 x i32> %303, <i32 60, i32 60, i32 60, i32 60>
  %305 = sitofp <4 x i32> %304 to <4 x double>
  %306 = fmul fast <4 x double> %305, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %307 = shl i64 %index1050, 3
  %308 = add i64 %307, %300
  %309 = getelementptr i8, i8* %call2, i64 %308
  %310 = bitcast i8* %309 to <4 x double>*
  store <4 x double> %306, <4 x double>* %310, align 8, !alias.scope !94, !noalias !96
  %index.next1051 = add i64 %index1050, 4
  %vec.ind.next1057 = add <4 x i32> %vec.ind1056, <i32 4, i32 4, i32 4, i32 4>
  %311 = icmp eq i64 %index.next1051, 32
  br i1 %311, label %polly.loop_exit733.1846, label %vector.body1048, !llvm.loop !106

polly.loop_exit733.1846:                          ; preds = %vector.body1048
  %polly.indvar_next729.1844 = add nuw nsw i64 %polly.indvar728.1834, 1
  %exitcond804.1845.not = icmp eq i64 %polly.indvar_next729.1844, 32
  br i1 %exitcond804.1845.not, label %polly.loop_header725.1.1, label %polly.loop_header725.1835

polly.loop_header725.1.1:                         ; preds = %polly.loop_exit733.1846, %polly.loop_exit733.1.1
  %polly.indvar728.1.1 = phi i64 [ %polly.indvar_next729.1.1, %polly.loop_exit733.1.1 ], [ 0, %polly.loop_exit733.1846 ]
  %312 = add nuw nsw i64 %polly.indvar728.1.1, 32
  %313 = mul nuw nsw i64 %312, 480
  %314 = trunc i64 %312 to i32
  %broadcast.splatinsert1070 = insertelement <4 x i32> poison, i32 %314, i32 0
  %broadcast.splat1071 = shufflevector <4 x i32> %broadcast.splatinsert1070, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %polly.loop_header725.1.1
  %index1064 = phi i64 [ 0, %polly.loop_header725.1.1 ], [ %index.next1065, %vector.body1062 ]
  %vec.ind1068 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1.1 ], [ %vec.ind.next1069, %vector.body1062 ]
  %315 = add nuw nsw <4 x i64> %vec.ind1068, <i64 32, i64 32, i64 32, i64 32>
  %316 = trunc <4 x i64> %315 to <4 x i32>
  %317 = mul <4 x i32> %broadcast.splat1071, %316
  %318 = add <4 x i32> %317, <i32 2, i32 2, i32 2, i32 2>
  %319 = urem <4 x i32> %318, <i32 60, i32 60, i32 60, i32 60>
  %320 = sitofp <4 x i32> %319 to <4 x double>
  %321 = fmul fast <4 x double> %320, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %322 = extractelement <4 x i64> %315, i32 0
  %323 = shl i64 %322, 3
  %324 = add i64 %323, %313
  %325 = getelementptr i8, i8* %call2, i64 %324
  %326 = bitcast i8* %325 to <4 x double>*
  store <4 x double> %321, <4 x double>* %326, align 8, !alias.scope !94, !noalias !96
  %index.next1065 = add i64 %index1064, 4
  %vec.ind.next1069 = add <4 x i64> %vec.ind1068, <i64 4, i64 4, i64 4, i64 4>
  %327 = icmp eq i64 %index.next1065, 28
  br i1 %327, label %polly.loop_exit733.1.1, label %vector.body1062, !llvm.loop !107

polly.loop_exit733.1.1:                           ; preds = %vector.body1062
  %polly.indvar_next729.1.1 = add nuw nsw i64 %polly.indvar728.1.1, 1
  %exitcond804.1.1.not = icmp eq i64 %polly.indvar_next729.1.1, 32
  br i1 %exitcond804.1.1.not, label %polly.loop_header725.2, label %polly.loop_header725.1.1

polly.loop_header725.2:                           ; preds = %polly.loop_exit733.1.1, %polly.loop_exit733.2
  %polly.indvar728.2 = phi i64 [ %polly.indvar_next729.2, %polly.loop_exit733.2 ], [ 0, %polly.loop_exit733.1.1 ]
  %328 = add nuw nsw i64 %polly.indvar728.2, 64
  %329 = mul nuw nsw i64 %328, 480
  %330 = trunc i64 %328 to i32
  %broadcast.splatinsert1084 = insertelement <4 x i32> poison, i32 %330, i32 0
  %broadcast.splat1085 = shufflevector <4 x i32> %broadcast.splatinsert1084, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %polly.loop_header725.2
  %index1076 = phi i64 [ 0, %polly.loop_header725.2 ], [ %index.next1077, %vector.body1074 ]
  %vec.ind1082 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725.2 ], [ %vec.ind.next1083, %vector.body1074 ]
  %331 = mul <4 x i32> %vec.ind1082, %broadcast.splat1085
  %332 = add <4 x i32> %331, <i32 2, i32 2, i32 2, i32 2>
  %333 = urem <4 x i32> %332, <i32 60, i32 60, i32 60, i32 60>
  %334 = sitofp <4 x i32> %333 to <4 x double>
  %335 = fmul fast <4 x double> %334, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %336 = shl i64 %index1076, 3
  %337 = add i64 %336, %329
  %338 = getelementptr i8, i8* %call2, i64 %337
  %339 = bitcast i8* %338 to <4 x double>*
  store <4 x double> %335, <4 x double>* %339, align 8, !alias.scope !94, !noalias !96
  %index.next1077 = add i64 %index1076, 4
  %vec.ind.next1083 = add <4 x i32> %vec.ind1082, <i32 4, i32 4, i32 4, i32 4>
  %340 = icmp eq i64 %index.next1077, 32
  br i1 %340, label %polly.loop_exit733.2, label %vector.body1074, !llvm.loop !108

polly.loop_exit733.2:                             ; preds = %vector.body1074
  %polly.indvar_next729.2 = add nuw nsw i64 %polly.indvar728.2, 1
  %exitcond804.2.not = icmp eq i64 %polly.indvar_next729.2, 16
  br i1 %exitcond804.2.not, label %polly.loop_header725.1.2, label %polly.loop_header725.2

polly.loop_header725.1.2:                         ; preds = %polly.loop_exit733.2, %polly.loop_exit733.1.2
  %polly.indvar728.1.2 = phi i64 [ %polly.indvar_next729.1.2, %polly.loop_exit733.1.2 ], [ 0, %polly.loop_exit733.2 ]
  %341 = add nuw nsw i64 %polly.indvar728.1.2, 64
  %342 = mul nuw nsw i64 %341, 480
  %343 = trunc i64 %341 to i32
  %broadcast.splatinsert1096 = insertelement <4 x i32> poison, i32 %343, i32 0
  %broadcast.splat1097 = shufflevector <4 x i32> %broadcast.splatinsert1096, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1088

vector.body1088:                                  ; preds = %vector.body1088, %polly.loop_header725.1.2
  %index1090 = phi i64 [ 0, %polly.loop_header725.1.2 ], [ %index.next1091, %vector.body1088 ]
  %vec.ind1094 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1.2 ], [ %vec.ind.next1095, %vector.body1088 ]
  %344 = add nuw nsw <4 x i64> %vec.ind1094, <i64 32, i64 32, i64 32, i64 32>
  %345 = trunc <4 x i64> %344 to <4 x i32>
  %346 = mul <4 x i32> %broadcast.splat1097, %345
  %347 = add <4 x i32> %346, <i32 2, i32 2, i32 2, i32 2>
  %348 = urem <4 x i32> %347, <i32 60, i32 60, i32 60, i32 60>
  %349 = sitofp <4 x i32> %348 to <4 x double>
  %350 = fmul fast <4 x double> %349, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %351 = extractelement <4 x i64> %344, i32 0
  %352 = shl i64 %351, 3
  %353 = add i64 %352, %342
  %354 = getelementptr i8, i8* %call2, i64 %353
  %355 = bitcast i8* %354 to <4 x double>*
  store <4 x double> %350, <4 x double>* %355, align 8, !alias.scope !94, !noalias !96
  %index.next1091 = add i64 %index1090, 4
  %vec.ind.next1095 = add <4 x i64> %vec.ind1094, <i64 4, i64 4, i64 4, i64 4>
  %356 = icmp eq i64 %index.next1091, 28
  br i1 %356, label %polly.loop_exit733.1.2, label %vector.body1088, !llvm.loop !109

polly.loop_exit733.1.2:                           ; preds = %vector.body1088
  %polly.indvar_next729.1.2 = add nuw nsw i64 %polly.indvar728.1.2, 1
  %exitcond804.1.2.not = icmp eq i64 %polly.indvar_next729.1.2, 16
  br i1 %exitcond804.1.2.not, label %polly.loop_header751, label %polly.loop_header725.1.2

polly.loop_header698.1:                           ; preds = %polly.loop_exit706, %polly.loop_exit706.1
  %polly.indvar701.1 = phi i64 [ %polly.indvar_next702.1, %polly.loop_exit706.1 ], [ 0, %polly.loop_exit706 ]
  %357 = mul nuw nsw i64 %polly.indvar701.1, 640
  %358 = trunc i64 %polly.indvar701.1 to i32
  %broadcast.splatinsert930 = insertelement <4 x i32> poison, i32 %358, i32 0
  %broadcast.splat931 = shufflevector <4 x i32> %broadcast.splatinsert930, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body922

vector.body922:                                   ; preds = %vector.body922, %polly.loop_header698.1
  %index924 = phi i64 [ 0, %polly.loop_header698.1 ], [ %index.next925, %vector.body922 ]
  %vec.ind928 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.1 ], [ %vec.ind.next929, %vector.body922 ]
  %359 = add nuw nsw <4 x i64> %vec.ind928, <i64 32, i64 32, i64 32, i64 32>
  %360 = trunc <4 x i64> %359 to <4 x i32>
  %361 = mul <4 x i32> %broadcast.splat931, %360
  %362 = add <4 x i32> %361, <i32 3, i32 3, i32 3, i32 3>
  %363 = urem <4 x i32> %362, <i32 80, i32 80, i32 80, i32 80>
  %364 = sitofp <4 x i32> %363 to <4 x double>
  %365 = fmul fast <4 x double> %364, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %366 = extractelement <4 x i64> %359, i32 0
  %367 = shl i64 %366, 3
  %368 = add nuw nsw i64 %367, %357
  %369 = getelementptr i8, i8* %call, i64 %368
  %370 = bitcast i8* %369 to <4 x double>*
  store <4 x double> %365, <4 x double>* %370, align 8, !alias.scope !90, !noalias !92
  %index.next925 = add i64 %index924, 4
  %vec.ind.next929 = add <4 x i64> %vec.ind928, <i64 4, i64 4, i64 4, i64 4>
  %371 = icmp eq i64 %index.next925, 32
  br i1 %371, label %polly.loop_exit706.1, label %vector.body922, !llvm.loop !110

polly.loop_exit706.1:                             ; preds = %vector.body922
  %polly.indvar_next702.1 = add nuw nsw i64 %polly.indvar701.1, 1
  %exitcond813.1.not = icmp eq i64 %polly.indvar_next702.1, 32
  br i1 %exitcond813.1.not, label %polly.loop_header698.2, label %polly.loop_header698.1

polly.loop_header698.2:                           ; preds = %polly.loop_exit706.1, %polly.loop_exit706.2
  %polly.indvar701.2 = phi i64 [ %polly.indvar_next702.2, %polly.loop_exit706.2 ], [ 0, %polly.loop_exit706.1 ]
  %372 = mul nuw nsw i64 %polly.indvar701.2, 640
  %373 = trunc i64 %polly.indvar701.2 to i32
  %broadcast.splatinsert942 = insertelement <4 x i32> poison, i32 %373, i32 0
  %broadcast.splat943 = shufflevector <4 x i32> %broadcast.splatinsert942, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body934

vector.body934:                                   ; preds = %vector.body934, %polly.loop_header698.2
  %index936 = phi i64 [ 0, %polly.loop_header698.2 ], [ %index.next937, %vector.body934 ]
  %vec.ind940 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.2 ], [ %vec.ind.next941, %vector.body934 ]
  %374 = add nuw nsw <4 x i64> %vec.ind940, <i64 64, i64 64, i64 64, i64 64>
  %375 = trunc <4 x i64> %374 to <4 x i32>
  %376 = mul <4 x i32> %broadcast.splat943, %375
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
  %index.next937 = add i64 %index936, 4
  %vec.ind.next941 = add <4 x i64> %vec.ind940, <i64 4, i64 4, i64 4, i64 4>
  %386 = icmp eq i64 %index.next937, 16
  br i1 %386, label %polly.loop_exit706.2, label %vector.body934, !llvm.loop !111

polly.loop_exit706.2:                             ; preds = %vector.body934
  %polly.indvar_next702.2 = add nuw nsw i64 %polly.indvar701.2, 1
  %exitcond813.2.not = icmp eq i64 %polly.indvar_next702.2, 32
  br i1 %exitcond813.2.not, label %polly.loop_header698.1849, label %polly.loop_header698.2

polly.loop_header698.1849:                        ; preds = %polly.loop_exit706.2, %polly.loop_exit706.1860
  %polly.indvar701.1848 = phi i64 [ %polly.indvar_next702.1858, %polly.loop_exit706.1860 ], [ 0, %polly.loop_exit706.2 ]
  %387 = add nuw nsw i64 %polly.indvar701.1848, 32
  %388 = mul nuw nsw i64 %387, 640
  %389 = trunc i64 %387 to i32
  %broadcast.splatinsert956 = insertelement <4 x i32> poison, i32 %389, i32 0
  %broadcast.splat957 = shufflevector <4 x i32> %broadcast.splatinsert956, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body946

vector.body946:                                   ; preds = %vector.body946, %polly.loop_header698.1849
  %index948 = phi i64 [ 0, %polly.loop_header698.1849 ], [ %index.next949, %vector.body946 ]
  %vec.ind954 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header698.1849 ], [ %vec.ind.next955, %vector.body946 ]
  %390 = mul <4 x i32> %vec.ind954, %broadcast.splat957
  %391 = add <4 x i32> %390, <i32 3, i32 3, i32 3, i32 3>
  %392 = urem <4 x i32> %391, <i32 80, i32 80, i32 80, i32 80>
  %393 = sitofp <4 x i32> %392 to <4 x double>
  %394 = fmul fast <4 x double> %393, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %395 = shl i64 %index948, 3
  %396 = add nuw nsw i64 %395, %388
  %397 = getelementptr i8, i8* %call, i64 %396
  %398 = bitcast i8* %397 to <4 x double>*
  store <4 x double> %394, <4 x double>* %398, align 8, !alias.scope !90, !noalias !92
  %index.next949 = add i64 %index948, 4
  %vec.ind.next955 = add <4 x i32> %vec.ind954, <i32 4, i32 4, i32 4, i32 4>
  %399 = icmp eq i64 %index.next949, 32
  br i1 %399, label %polly.loop_exit706.1860, label %vector.body946, !llvm.loop !112

polly.loop_exit706.1860:                          ; preds = %vector.body946
  %polly.indvar_next702.1858 = add nuw nsw i64 %polly.indvar701.1848, 1
  %exitcond813.1859.not = icmp eq i64 %polly.indvar_next702.1858, 32
  br i1 %exitcond813.1859.not, label %polly.loop_header698.1.1, label %polly.loop_header698.1849

polly.loop_header698.1.1:                         ; preds = %polly.loop_exit706.1860, %polly.loop_exit706.1.1
  %polly.indvar701.1.1 = phi i64 [ %polly.indvar_next702.1.1, %polly.loop_exit706.1.1 ], [ 0, %polly.loop_exit706.1860 ]
  %400 = add nuw nsw i64 %polly.indvar701.1.1, 32
  %401 = mul nuw nsw i64 %400, 640
  %402 = trunc i64 %400 to i32
  %broadcast.splatinsert968 = insertelement <4 x i32> poison, i32 %402, i32 0
  %broadcast.splat969 = shufflevector <4 x i32> %broadcast.splatinsert968, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body960

vector.body960:                                   ; preds = %vector.body960, %polly.loop_header698.1.1
  %index962 = phi i64 [ 0, %polly.loop_header698.1.1 ], [ %index.next963, %vector.body960 ]
  %vec.ind966 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.1.1 ], [ %vec.ind.next967, %vector.body960 ]
  %403 = add nuw nsw <4 x i64> %vec.ind966, <i64 32, i64 32, i64 32, i64 32>
  %404 = trunc <4 x i64> %403 to <4 x i32>
  %405 = mul <4 x i32> %broadcast.splat969, %404
  %406 = add <4 x i32> %405, <i32 3, i32 3, i32 3, i32 3>
  %407 = urem <4 x i32> %406, <i32 80, i32 80, i32 80, i32 80>
  %408 = sitofp <4 x i32> %407 to <4 x double>
  %409 = fmul fast <4 x double> %408, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %410 = extractelement <4 x i64> %403, i32 0
  %411 = shl i64 %410, 3
  %412 = add nuw nsw i64 %411, %401
  %413 = getelementptr i8, i8* %call, i64 %412
  %414 = bitcast i8* %413 to <4 x double>*
  store <4 x double> %409, <4 x double>* %414, align 8, !alias.scope !90, !noalias !92
  %index.next963 = add i64 %index962, 4
  %vec.ind.next967 = add <4 x i64> %vec.ind966, <i64 4, i64 4, i64 4, i64 4>
  %415 = icmp eq i64 %index.next963, 32
  br i1 %415, label %polly.loop_exit706.1.1, label %vector.body960, !llvm.loop !113

polly.loop_exit706.1.1:                           ; preds = %vector.body960
  %polly.indvar_next702.1.1 = add nuw nsw i64 %polly.indvar701.1.1, 1
  %exitcond813.1.1.not = icmp eq i64 %polly.indvar_next702.1.1, 32
  br i1 %exitcond813.1.1.not, label %polly.loop_header698.2.1, label %polly.loop_header698.1.1

polly.loop_header698.2.1:                         ; preds = %polly.loop_exit706.1.1, %polly.loop_exit706.2.1
  %polly.indvar701.2.1 = phi i64 [ %polly.indvar_next702.2.1, %polly.loop_exit706.2.1 ], [ 0, %polly.loop_exit706.1.1 ]
  %416 = add nuw nsw i64 %polly.indvar701.2.1, 32
  %417 = mul nuw nsw i64 %416, 640
  %418 = trunc i64 %416 to i32
  %broadcast.splatinsert980 = insertelement <4 x i32> poison, i32 %418, i32 0
  %broadcast.splat981 = shufflevector <4 x i32> %broadcast.splatinsert980, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body972

vector.body972:                                   ; preds = %vector.body972, %polly.loop_header698.2.1
  %index974 = phi i64 [ 0, %polly.loop_header698.2.1 ], [ %index.next975, %vector.body972 ]
  %vec.ind978 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.2.1 ], [ %vec.ind.next979, %vector.body972 ]
  %419 = add nuw nsw <4 x i64> %vec.ind978, <i64 64, i64 64, i64 64, i64 64>
  %420 = trunc <4 x i64> %419 to <4 x i32>
  %421 = mul <4 x i32> %broadcast.splat981, %420
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
  %index.next975 = add i64 %index974, 4
  %vec.ind.next979 = add <4 x i64> %vec.ind978, <i64 4, i64 4, i64 4, i64 4>
  %431 = icmp eq i64 %index.next975, 16
  br i1 %431, label %polly.loop_exit706.2.1, label %vector.body972, !llvm.loop !114

polly.loop_exit706.2.1:                           ; preds = %vector.body972
  %polly.indvar_next702.2.1 = add nuw nsw i64 %polly.indvar701.2.1, 1
  %exitcond813.2.1.not = icmp eq i64 %polly.indvar_next702.2.1, 32
  br i1 %exitcond813.2.1.not, label %polly.loop_header698.2863, label %polly.loop_header698.2.1

polly.loop_header698.2863:                        ; preds = %polly.loop_exit706.2.1, %polly.loop_exit706.2874
  %polly.indvar701.2862 = phi i64 [ %polly.indvar_next702.2872, %polly.loop_exit706.2874 ], [ 0, %polly.loop_exit706.2.1 ]
  %432 = add nuw nsw i64 %polly.indvar701.2862, 64
  %433 = mul nuw nsw i64 %432, 640
  %434 = trunc i64 %432 to i32
  %broadcast.splatinsert994 = insertelement <4 x i32> poison, i32 %434, i32 0
  %broadcast.splat995 = shufflevector <4 x i32> %broadcast.splatinsert994, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body984

vector.body984:                                   ; preds = %vector.body984, %polly.loop_header698.2863
  %index986 = phi i64 [ 0, %polly.loop_header698.2863 ], [ %index.next987, %vector.body984 ]
  %vec.ind992 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header698.2863 ], [ %vec.ind.next993, %vector.body984 ]
  %435 = mul <4 x i32> %vec.ind992, %broadcast.splat995
  %436 = add <4 x i32> %435, <i32 3, i32 3, i32 3, i32 3>
  %437 = urem <4 x i32> %436, <i32 80, i32 80, i32 80, i32 80>
  %438 = sitofp <4 x i32> %437 to <4 x double>
  %439 = fmul fast <4 x double> %438, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %440 = shl i64 %index986, 3
  %441 = add nuw nsw i64 %440, %433
  %442 = getelementptr i8, i8* %call, i64 %441
  %443 = bitcast i8* %442 to <4 x double>*
  store <4 x double> %439, <4 x double>* %443, align 8, !alias.scope !90, !noalias !92
  %index.next987 = add i64 %index986, 4
  %vec.ind.next993 = add <4 x i32> %vec.ind992, <i32 4, i32 4, i32 4, i32 4>
  %444 = icmp eq i64 %index.next987, 32
  br i1 %444, label %polly.loop_exit706.2874, label %vector.body984, !llvm.loop !115

polly.loop_exit706.2874:                          ; preds = %vector.body984
  %polly.indvar_next702.2872 = add nuw nsw i64 %polly.indvar701.2862, 1
  %exitcond813.2873.not = icmp eq i64 %polly.indvar_next702.2872, 16
  br i1 %exitcond813.2873.not, label %polly.loop_header698.1.2, label %polly.loop_header698.2863

polly.loop_header698.1.2:                         ; preds = %polly.loop_exit706.2874, %polly.loop_exit706.1.2
  %polly.indvar701.1.2 = phi i64 [ %polly.indvar_next702.1.2, %polly.loop_exit706.1.2 ], [ 0, %polly.loop_exit706.2874 ]
  %445 = add nuw nsw i64 %polly.indvar701.1.2, 64
  %446 = mul nuw nsw i64 %445, 640
  %447 = trunc i64 %445 to i32
  %broadcast.splatinsert1006 = insertelement <4 x i32> poison, i32 %447, i32 0
  %broadcast.splat1007 = shufflevector <4 x i32> %broadcast.splatinsert1006, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %polly.loop_header698.1.2
  %index1000 = phi i64 [ 0, %polly.loop_header698.1.2 ], [ %index.next1001, %vector.body998 ]
  %vec.ind1004 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.1.2 ], [ %vec.ind.next1005, %vector.body998 ]
  %448 = add nuw nsw <4 x i64> %vec.ind1004, <i64 32, i64 32, i64 32, i64 32>
  %449 = trunc <4 x i64> %448 to <4 x i32>
  %450 = mul <4 x i32> %broadcast.splat1007, %449
  %451 = add <4 x i32> %450, <i32 3, i32 3, i32 3, i32 3>
  %452 = urem <4 x i32> %451, <i32 80, i32 80, i32 80, i32 80>
  %453 = sitofp <4 x i32> %452 to <4 x double>
  %454 = fmul fast <4 x double> %453, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %455 = extractelement <4 x i64> %448, i32 0
  %456 = shl i64 %455, 3
  %457 = add nuw nsw i64 %456, %446
  %458 = getelementptr i8, i8* %call, i64 %457
  %459 = bitcast i8* %458 to <4 x double>*
  store <4 x double> %454, <4 x double>* %459, align 8, !alias.scope !90, !noalias !92
  %index.next1001 = add i64 %index1000, 4
  %vec.ind.next1005 = add <4 x i64> %vec.ind1004, <i64 4, i64 4, i64 4, i64 4>
  %460 = icmp eq i64 %index.next1001, 32
  br i1 %460, label %polly.loop_exit706.1.2, label %vector.body998, !llvm.loop !116

polly.loop_exit706.1.2:                           ; preds = %vector.body998
  %polly.indvar_next702.1.2 = add nuw nsw i64 %polly.indvar701.1.2, 1
  %exitcond813.1.2.not = icmp eq i64 %polly.indvar_next702.1.2, 16
  br i1 %exitcond813.1.2.not, label %polly.loop_header698.2.2, label %polly.loop_header698.1.2

polly.loop_header698.2.2:                         ; preds = %polly.loop_exit706.1.2, %polly.loop_exit706.2.2
  %polly.indvar701.2.2 = phi i64 [ %polly.indvar_next702.2.2, %polly.loop_exit706.2.2 ], [ 0, %polly.loop_exit706.1.2 ]
  %461 = add nuw nsw i64 %polly.indvar701.2.2, 64
  %462 = mul nuw nsw i64 %461, 640
  %463 = trunc i64 %461 to i32
  %broadcast.splatinsert1018 = insertelement <4 x i32> poison, i32 %463, i32 0
  %broadcast.splat1019 = shufflevector <4 x i32> %broadcast.splatinsert1018, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %polly.loop_header698.2.2
  %index1012 = phi i64 [ 0, %polly.loop_header698.2.2 ], [ %index.next1013, %vector.body1010 ]
  %vec.ind1016 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.2.2 ], [ %vec.ind.next1017, %vector.body1010 ]
  %464 = add nuw nsw <4 x i64> %vec.ind1016, <i64 64, i64 64, i64 64, i64 64>
  %465 = trunc <4 x i64> %464 to <4 x i32>
  %466 = mul <4 x i32> %broadcast.splat1019, %465
  %467 = add <4 x i32> %466, <i32 3, i32 3, i32 3, i32 3>
  %468 = urem <4 x i32> %467, <i32 80, i32 80, i32 80, i32 80>
  %469 = sitofp <4 x i32> %468 to <4 x double>
  %470 = fmul fast <4 x double> %469, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %471 = extractelement <4 x i64> %464, i32 0
  %472 = shl i64 %471, 3
  %473 = add nuw nsw i64 %472, %462
  %474 = getelementptr i8, i8* %call, i64 %473
  %475 = bitcast i8* %474 to <4 x double>*
  store <4 x double> %470, <4 x double>* %475, align 8, !alias.scope !90, !noalias !92
  %index.next1013 = add i64 %index1012, 4
  %vec.ind.next1017 = add <4 x i64> %vec.ind1016, <i64 4, i64 4, i64 4, i64 4>
  %476 = icmp eq i64 %index.next1013, 16
  br i1 %476, label %polly.loop_exit706.2.2, label %vector.body1010, !llvm.loop !117

polly.loop_exit706.2.2:                           ; preds = %vector.body1010
  %polly.indvar_next702.2.2 = add nuw nsw i64 %polly.indvar701.2.2, 1
  %exitcond813.2.2.not = icmp eq i64 %polly.indvar_next702.2.2, 16
  br i1 %exitcond813.2.2.not, label %polly.loop_header725, label %polly.loop_header698.2.2
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
!24 = !{!"llvm.loop.tile.size", i32 64}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 80}
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
!44 = !{!"llvm.loop.tile.size", i32 50}
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
