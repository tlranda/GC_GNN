; ModuleID = 'syr2k_recreations//mmp_syr2k_S_94.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_94.c"
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
  %call721 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1582 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1582, %call2
  %polly.access.call2602 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2602, %call1
  %2 = or i1 %0, %1
  %polly.access.call622 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call622, %call2
  %4 = icmp ule i8* %polly.access.call2602, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call622, %call1
  %8 = icmp ule i8* %polly.access.call1582, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header707, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep890 = getelementptr i8, i8* %call2, i64 %12
  %scevgep889 = getelementptr i8, i8* %call2, i64 %11
  %scevgep888 = getelementptr i8, i8* %call1, i64 %12
  %scevgep887 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep887, %scevgep890
  %bound1 = icmp ult i8* %scevgep889, %scevgep888
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
  br i1 %exitcond18.not.i, label %vector.ph894, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph894:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert901 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat902 = shufflevector <4 x i64> %broadcast.splatinsert901, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body893

vector.body893:                                   ; preds = %vector.body893, %vector.ph894
  %index895 = phi i64 [ 0, %vector.ph894 ], [ %index.next896, %vector.body893 ]
  %vec.ind899 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph894 ], [ %vec.ind.next900, %vector.body893 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind899, %broadcast.splat902
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv7.i, i64 %index895
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next896 = add i64 %index895, 4
  %vec.ind.next900 = add <4 x i64> %vec.ind899, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next896, 80
  br i1 %40, label %for.inc41.i, label %vector.body893, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body893
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph894, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit768.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start413, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1247, label %vector.ph1176

vector.ph1176:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %vector.ph1176
  %index1177 = phi i64 [ 0, %vector.ph1176 ], [ %index.next1178, %vector.body1175 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv21.i, i64 %index1177
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1178 = add i64 %index1177, 4
  %46 = icmp eq i64 %index.next1178, %n.vec
  br i1 %46, label %middle.block1173, label %vector.body1175, !llvm.loop !18

middle.block1173:                                 ; preds = %vector.body1175
  %cmp.n1180 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1180, label %for.inc6.i, label %for.body3.i46.preheader1247

for.body3.i46.preheader1247:                      ; preds = %for.body3.i46.preheader, %middle.block1173
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1173 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1247, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1247 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1173, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting414
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start255, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1196 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1196, label %for.body3.i60.preheader1246, label %vector.ph1197

vector.ph1197:                                    ; preds = %for.body3.i60.preheader
  %n.vec1199 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1195

vector.body1195:                                  ; preds = %vector.body1195, %vector.ph1197
  %index1200 = phi i64 [ 0, %vector.ph1197 ], [ %index.next1201, %vector.body1195 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv21.i52, i64 %index1200
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1204 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1204, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1201 = add i64 %index1200, 4
  %57 = icmp eq i64 %index.next1201, %n.vec1199
  br i1 %57, label %middle.block1193, label %vector.body1195, !llvm.loop !60

middle.block1193:                                 ; preds = %vector.body1195
  %cmp.n1203 = icmp eq i64 %indvars.iv21.i52, %n.vec1199
  br i1 %cmp.n1203, label %for.inc6.i63, label %for.body3.i60.preheader1246

for.body3.i60.preheader1246:                      ; preds = %for.body3.i60.preheader, %middle.block1193
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1199, %middle.block1193 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1246, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1246 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1193, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting256
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1222 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1222, label %for.body3.i99.preheader1245, label %vector.ph1223

vector.ph1223:                                    ; preds = %for.body3.i99.preheader
  %n.vec1225 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %vector.ph1223
  %index1226 = phi i64 [ 0, %vector.ph1223 ], [ %index.next1227, %vector.body1221 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv21.i91, i64 %index1226
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1230 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1230, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1227 = add i64 %index1226, 4
  %68 = icmp eq i64 %index.next1227, %n.vec1225
  br i1 %68, label %middle.block1219, label %vector.body1221, !llvm.loop !62

middle.block1219:                                 ; preds = %vector.body1221
  %cmp.n1229 = icmp eq i64 %indvars.iv21.i91, %n.vec1225
  br i1 %cmp.n1229, label %for.inc6.i102, label %for.body3.i99.preheader1245

for.body3.i99.preheader1245:                      ; preds = %for.body3.i99.preheader, %middle.block1219
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1225, %middle.block1219 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1245, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1245 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1219, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit223
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1234 = phi i64 [ %indvar.next1235, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1234, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1236 = icmp ult i64 %88, 4
  br i1 %min.iters.check1236, label %polly.loop_header191.preheader, label %vector.ph1237

vector.ph1237:                                    ; preds = %polly.loop_header
  %n.vec1239 = and i64 %88, -4
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1237
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1241, %vector.body1233 ]
  %90 = shl nuw nsw i64 %index1240, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1244 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1244, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1241 = add i64 %index1240, 4
  %95 = icmp eq i64 %index.next1241, %n.vec1239
  br i1 %95, label %middle.block1231, label %vector.body1233, !llvm.loop !74

middle.block1231:                                 ; preds = %vector.body1233
  %cmp.n1243 = icmp eq i64 %88, %n.vec1239
  br i1 %cmp.n1243, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1231
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1239, %middle.block1231 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1231
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond784.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1235 = add i64 %indvar1234, 1
  br i1 %exitcond784.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall, i8* noundef nonnull align 8 dereferenceable(480) %call1, i64 480, i1 false)
  %scevgep780.1 = getelementptr i8, i8* %malloccall, i64 480
  %scevgep781.1 = getelementptr i8, i8* %call1, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.1, i64 480, i1 false)
  %scevgep780.2 = getelementptr i8, i8* %malloccall, i64 960
  %scevgep781.2 = getelementptr i8, i8* %call1, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.2, i64 480, i1 false)
  %scevgep780.3 = getelementptr i8, i8* %malloccall, i64 1440
  %scevgep781.3 = getelementptr i8, i8* %call1, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.3, i64 480, i1 false)
  %scevgep780.4 = getelementptr i8, i8* %malloccall, i64 1920
  %scevgep781.4 = getelementptr i8, i8* %call1, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.4, i64 480, i1 false)
  %scevgep780.5 = getelementptr i8, i8* %malloccall, i64 2400
  %scevgep781.5 = getelementptr i8, i8* %call1, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.5, i64 480, i1 false)
  %scevgep780.6 = getelementptr i8, i8* %malloccall, i64 2880
  %scevgep781.6 = getelementptr i8, i8* %call1, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.6, i64 480, i1 false)
  %scevgep780.7 = getelementptr i8, i8* %malloccall, i64 3360
  %scevgep781.7 = getelementptr i8, i8* %call1, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.7, i64 480, i1 false)
  %scevgep780.8 = getelementptr i8, i8* %malloccall, i64 3840
  %scevgep781.8 = getelementptr i8, i8* %call1, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.8, i64 480, i1 false)
  %scevgep780.9 = getelementptr i8, i8* %malloccall, i64 4320
  %scevgep781.9 = getelementptr i8, i8* %call1, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.9, i64 480, i1 false)
  %scevgep780.10 = getelementptr i8, i8* %malloccall, i64 4800
  %scevgep781.10 = getelementptr i8, i8* %call1, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.10, i64 480, i1 false)
  %scevgep780.11 = getelementptr i8, i8* %malloccall, i64 5280
  %scevgep781.11 = getelementptr i8, i8* %call1, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.11, i64 480, i1 false)
  %scevgep780.12 = getelementptr i8, i8* %malloccall, i64 5760
  %scevgep781.12 = getelementptr i8, i8* %call1, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.12, i64 480, i1 false)
  %scevgep780.13 = getelementptr i8, i8* %malloccall, i64 6240
  %scevgep781.13 = getelementptr i8, i8* %call1, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.13, i64 480, i1 false)
  %scevgep780.14 = getelementptr i8, i8* %malloccall, i64 6720
  %scevgep781.14 = getelementptr i8, i8* %call1, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.14, i64 480, i1 false)
  %scevgep780.15 = getelementptr i8, i8* %malloccall, i64 7200
  %scevgep781.15 = getelementptr i8, i8* %call1, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.15, i64 480, i1 false)
  %scevgep780.16 = getelementptr i8, i8* %malloccall, i64 7680
  %scevgep781.16 = getelementptr i8, i8* %call1, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.16, i64 480, i1 false)
  %scevgep780.17 = getelementptr i8, i8* %malloccall, i64 8160
  %scevgep781.17 = getelementptr i8, i8* %call1, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.17, i64 480, i1 false)
  %scevgep780.18 = getelementptr i8, i8* %malloccall, i64 8640
  %scevgep781.18 = getelementptr i8, i8* %call1, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.18, i64 480, i1 false)
  %scevgep780.19 = getelementptr i8, i8* %malloccall, i64 9120
  %scevgep781.19 = getelementptr i8, i8* %call1, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.19, i64 480, i1 false)
  %scevgep780.20 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep781.20 = getelementptr i8, i8* %call1, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.20, i64 480, i1 false)
  %scevgep780.21 = getelementptr i8, i8* %malloccall, i64 10080
  %scevgep781.21 = getelementptr i8, i8* %call1, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.21, i64 480, i1 false)
  %scevgep780.22 = getelementptr i8, i8* %malloccall, i64 10560
  %scevgep781.22 = getelementptr i8, i8* %call1, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.22, i64 480, i1 false)
  %scevgep780.23 = getelementptr i8, i8* %malloccall, i64 11040
  %scevgep781.23 = getelementptr i8, i8* %call1, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.23, i64 480, i1 false)
  %scevgep780.24 = getelementptr i8, i8* %malloccall, i64 11520
  %scevgep781.24 = getelementptr i8, i8* %call1, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.24, i64 480, i1 false)
  %scevgep780.25 = getelementptr i8, i8* %malloccall, i64 12000
  %scevgep781.25 = getelementptr i8, i8* %call1, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.25, i64 480, i1 false)
  %scevgep780.26 = getelementptr i8, i8* %malloccall, i64 12480
  %scevgep781.26 = getelementptr i8, i8* %call1, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.26, i64 480, i1 false)
  %scevgep780.27 = getelementptr i8, i8* %malloccall, i64 12960
  %scevgep781.27 = getelementptr i8, i8* %call1, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.27, i64 480, i1 false)
  %scevgep780.28 = getelementptr i8, i8* %malloccall, i64 13440
  %scevgep781.28 = getelementptr i8, i8* %call1, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.28, i64 480, i1 false)
  %scevgep780.29 = getelementptr i8, i8* %malloccall, i64 13920
  %scevgep781.29 = getelementptr i8, i8* %call1, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.29, i64 480, i1 false)
  %scevgep780.30 = getelementptr i8, i8* %malloccall, i64 14400
  %scevgep781.30 = getelementptr i8, i8* %call1, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.30, i64 480, i1 false)
  %scevgep780.31 = getelementptr i8, i8* %malloccall, i64 14880
  %scevgep781.31 = getelementptr i8, i8* %call1, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.31, i64 480, i1 false)
  %scevgep780.32 = getelementptr i8, i8* %malloccall, i64 15360
  %scevgep781.32 = getelementptr i8, i8* %call1, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.32, i64 480, i1 false)
  %scevgep780.33 = getelementptr i8, i8* %malloccall, i64 15840
  %scevgep781.33 = getelementptr i8, i8* %call1, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.33, i64 480, i1 false)
  %scevgep780.34 = getelementptr i8, i8* %malloccall, i64 16320
  %scevgep781.34 = getelementptr i8, i8* %call1, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.34, i64 480, i1 false)
  %scevgep780.35 = getelementptr i8, i8* %malloccall, i64 16800
  %scevgep781.35 = getelementptr i8, i8* %call1, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.35, i64 480, i1 false)
  %scevgep780.36 = getelementptr i8, i8* %malloccall, i64 17280
  %scevgep781.36 = getelementptr i8, i8* %call1, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.36, i64 480, i1 false)
  %scevgep780.37 = getelementptr i8, i8* %malloccall, i64 17760
  %scevgep781.37 = getelementptr i8, i8* %call1, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.37, i64 480, i1 false)
  %scevgep780.38 = getelementptr i8, i8* %malloccall, i64 18240
  %scevgep781.38 = getelementptr i8, i8* %call1, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.38, i64 480, i1 false)
  %scevgep780.39 = getelementptr i8, i8* %malloccall, i64 18720
  %scevgep781.39 = getelementptr i8, i8* %call1, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.39, i64 480, i1 false)
  %scevgep780.40 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep781.40 = getelementptr i8, i8* %call1, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.40, i64 480, i1 false)
  %scevgep780.41 = getelementptr i8, i8* %malloccall, i64 19680
  %scevgep781.41 = getelementptr i8, i8* %call1, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.41, i64 480, i1 false)
  %scevgep780.42 = getelementptr i8, i8* %malloccall, i64 20160
  %scevgep781.42 = getelementptr i8, i8* %call1, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.42, i64 480, i1 false)
  %scevgep780.43 = getelementptr i8, i8* %malloccall, i64 20640
  %scevgep781.43 = getelementptr i8, i8* %call1, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.43, i64 480, i1 false)
  %scevgep780.44 = getelementptr i8, i8* %malloccall, i64 21120
  %scevgep781.44 = getelementptr i8, i8* %call1, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.44, i64 480, i1 false)
  %scevgep780.45 = getelementptr i8, i8* %malloccall, i64 21600
  %scevgep781.45 = getelementptr i8, i8* %call1, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.45, i64 480, i1 false)
  %scevgep780.46 = getelementptr i8, i8* %malloccall, i64 22080
  %scevgep781.46 = getelementptr i8, i8* %call1, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.46, i64 480, i1 false)
  %scevgep780.47 = getelementptr i8, i8* %malloccall, i64 22560
  %scevgep781.47 = getelementptr i8, i8* %call1, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.47, i64 480, i1 false)
  %scevgep780.48 = getelementptr i8, i8* %malloccall, i64 23040
  %scevgep781.48 = getelementptr i8, i8* %call1, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.48, i64 480, i1 false)
  %scevgep780.49 = getelementptr i8, i8* %malloccall, i64 23520
  %scevgep781.49 = getelementptr i8, i8* %call1, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.49, i64 480, i1 false)
  %scevgep780.50 = getelementptr i8, i8* %malloccall, i64 24000
  %scevgep781.50 = getelementptr i8, i8* %call1, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.50, i64 480, i1 false)
  %scevgep780.51 = getelementptr i8, i8* %malloccall, i64 24480
  %scevgep781.51 = getelementptr i8, i8* %call1, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.51, i64 480, i1 false)
  %scevgep780.52 = getelementptr i8, i8* %malloccall, i64 24960
  %scevgep781.52 = getelementptr i8, i8* %call1, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.52, i64 480, i1 false)
  %scevgep780.53 = getelementptr i8, i8* %malloccall, i64 25440
  %scevgep781.53 = getelementptr i8, i8* %call1, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.53, i64 480, i1 false)
  %scevgep780.54 = getelementptr i8, i8* %malloccall, i64 25920
  %scevgep781.54 = getelementptr i8, i8* %call1, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.54, i64 480, i1 false)
  %scevgep780.55 = getelementptr i8, i8* %malloccall, i64 26400
  %scevgep781.55 = getelementptr i8, i8* %call1, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.55, i64 480, i1 false)
  %scevgep780.56 = getelementptr i8, i8* %malloccall, i64 26880
  %scevgep781.56 = getelementptr i8, i8* %call1, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.56, i64 480, i1 false)
  %scevgep780.57 = getelementptr i8, i8* %malloccall, i64 27360
  %scevgep781.57 = getelementptr i8, i8* %call1, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.57, i64 480, i1 false)
  %scevgep780.58 = getelementptr i8, i8* %malloccall, i64 27840
  %scevgep781.58 = getelementptr i8, i8* %call1, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.58, i64 480, i1 false)
  %scevgep780.59 = getelementptr i8, i8* %malloccall, i64 28320
  %scevgep781.59 = getelementptr i8, i8* %call1, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.59, i64 480, i1 false)
  %scevgep780.60 = getelementptr i8, i8* %malloccall, i64 28800
  %scevgep781.60 = getelementptr i8, i8* %call1, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.60, i64 480, i1 false)
  %scevgep780.61 = getelementptr i8, i8* %malloccall, i64 29280
  %scevgep781.61 = getelementptr i8, i8* %call1, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.61, i64 480, i1 false)
  %scevgep780.62 = getelementptr i8, i8* %malloccall, i64 29760
  %scevgep781.62 = getelementptr i8, i8* %call1, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.62, i64 480, i1 false)
  %scevgep780.63 = getelementptr i8, i8* %malloccall, i64 30240
  %scevgep781.63 = getelementptr i8, i8* %call1, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.63, i64 480, i1 false)
  %scevgep780.64 = getelementptr i8, i8* %malloccall, i64 30720
  %scevgep781.64 = getelementptr i8, i8* %call1, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.64, i64 480, i1 false)
  %scevgep780.65 = getelementptr i8, i8* %malloccall, i64 31200
  %scevgep781.65 = getelementptr i8, i8* %call1, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.65, i64 480, i1 false)
  %scevgep780.66 = getelementptr i8, i8* %malloccall, i64 31680
  %scevgep781.66 = getelementptr i8, i8* %call1, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.66, i64 480, i1 false)
  %scevgep780.67 = getelementptr i8, i8* %malloccall, i64 32160
  %scevgep781.67 = getelementptr i8, i8* %call1, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.67, i64 480, i1 false)
  %scevgep780.68 = getelementptr i8, i8* %malloccall, i64 32640
  %scevgep781.68 = getelementptr i8, i8* %call1, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.68, i64 480, i1 false)
  %scevgep780.69 = getelementptr i8, i8* %malloccall, i64 33120
  %scevgep781.69 = getelementptr i8, i8* %call1, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.69, i64 480, i1 false)
  %scevgep780.70 = getelementptr i8, i8* %malloccall, i64 33600
  %scevgep781.70 = getelementptr i8, i8* %call1, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.70, i64 480, i1 false)
  %scevgep780.71 = getelementptr i8, i8* %malloccall, i64 34080
  %scevgep781.71 = getelementptr i8, i8* %call1, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.71, i64 480, i1 false)
  %scevgep780.72 = getelementptr i8, i8* %malloccall, i64 34560
  %scevgep781.72 = getelementptr i8, i8* %call1, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.72, i64 480, i1 false)
  %scevgep780.73 = getelementptr i8, i8* %malloccall, i64 35040
  %scevgep781.73 = getelementptr i8, i8* %call1, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.73, i64 480, i1 false)
  %scevgep780.74 = getelementptr i8, i8* %malloccall, i64 35520
  %scevgep781.74 = getelementptr i8, i8* %call1, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.74, i64 480, i1 false)
  %scevgep780.75 = getelementptr i8, i8* %malloccall, i64 36000
  %scevgep781.75 = getelementptr i8, i8* %call1, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.75, i64 480, i1 false)
  %scevgep780.76 = getelementptr i8, i8* %malloccall, i64 36480
  %scevgep781.76 = getelementptr i8, i8* %call1, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.76, i64 480, i1 false)
  %scevgep780.77 = getelementptr i8, i8* %malloccall, i64 36960
  %scevgep781.77 = getelementptr i8, i8* %call1, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.77, i64 480, i1 false)
  %scevgep780.78 = getelementptr i8, i8* %malloccall, i64 37440
  %scevgep781.78 = getelementptr i8, i8* %call1, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.78, i64 480, i1 false)
  %scevgep780.79 = getelementptr i8, i8* %malloccall, i64 37920
  %scevgep781.79 = getelementptr i8, i8* %call1, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep780.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep781.79, i64 480, i1 false)
  br label %polly.loop_header215

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond783.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond783.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header215:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit223
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_header199.preheader ]
  %97 = shl nuw nsw i64 %polly.indvar218, 3
  %scevgep237 = getelementptr i8, i8* %call2, i64 %97
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %exitcond778.not = icmp eq i64 %polly.indvar_next219, 60
  br i1 %exitcond778.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 1, %polly.loop_header215 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_header215 ]
  %98 = mul nuw nsw i64 %polly.indvar224, 480
  %scevgep238 = getelementptr i8, i8* %scevgep237, i64 %98
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %99 = mul nuw nsw i64 %polly.indvar224, 640
  %scevgep249 = getelementptr i8, i8* %call, i64 %99
  %_p_scalar_240.pre = load double, double* %scevgep238239, align 8, !alias.scope !72, !noalias !77
  %polly.access.mul.Packed_MemRef_call1245 = mul nuw nsw i64 %polly.indvar224, 60
  %polly.access.add.Packed_MemRef_call1246 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1245, %polly.indvar218
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  %_p_scalar_248 = load double, double* %polly.access.Packed_MemRef_call1247, align 8
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_header227
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond777.not = icmp eq i64 %polly.indvar_next225, 80
  br i1 %exitcond777.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_header227, %polly.loop_header221
  %polly.indvar230 = phi i64 [ 0, %polly.loop_header221 ], [ %polly.indvar_next231, %polly.loop_header227 ]
  %polly.access.mul.Packed_MemRef_call1233 = mul nuw nsw i64 %polly.indvar230, 60
  %polly.access.add.Packed_MemRef_call1234 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1233, %polly.indvar218
  %polly.access.Packed_MemRef_call1235 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1234
  %_p_scalar_236 = load double, double* %polly.access.Packed_MemRef_call1235, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_240.pre, %_p_scalar_236
  %100 = mul nuw nsw i64 %polly.indvar230, 480
  %scevgep242 = getelementptr i8, i8* %scevgep237, i64 %100
  %scevgep242243 = bitcast i8* %scevgep242 to double*
  %_p_scalar_244 = load double, double* %scevgep242243, align 8, !alias.scope !72, !noalias !77
  %p_mul37.i114 = fmul fast double %_p_scalar_248, %_p_scalar_244
  %101 = shl nuw nsw i64 %polly.indvar230, 3
  %scevgep250 = getelementptr i8, i8* %scevgep249, i64 %101
  %scevgep250251 = bitcast i8* %scevgep250 to double*
  %_p_scalar_252 = load double, double* %scevgep250251, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_252
  store double %p_add42.i118, double* %scevgep250251, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next231, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit229, label %polly.loop_header227

polly.start255:                                   ; preds = %kernel_syr2k.exit
  %malloccall257 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header341

polly.exiting256:                                 ; preds = %polly.loop_exit381
  tail call void @free(i8* nonnull %malloccall257)
  br label %kernel_syr2k.exit90

polly.loop_header341:                             ; preds = %polly.loop_exit349, %polly.start255
  %indvar1208 = phi i64 [ %indvar.next1209, %polly.loop_exit349 ], [ 0, %polly.start255 ]
  %polly.indvar344 = phi i64 [ %polly.indvar_next345, %polly.loop_exit349 ], [ 1, %polly.start255 ]
  %102 = add i64 %indvar1208, 1
  %103 = mul nuw nsw i64 %polly.indvar344, 640
  %scevgep353 = getelementptr i8, i8* %call, i64 %103
  %min.iters.check1210 = icmp ult i64 %102, 4
  br i1 %min.iters.check1210, label %polly.loop_header347.preheader, label %vector.ph1211

vector.ph1211:                                    ; preds = %polly.loop_header341
  %n.vec1213 = and i64 %102, -4
  br label %vector.body1207

vector.body1207:                                  ; preds = %vector.body1207, %vector.ph1211
  %index1214 = phi i64 [ 0, %vector.ph1211 ], [ %index.next1215, %vector.body1207 ]
  %104 = shl nuw nsw i64 %index1214, 3
  %105 = getelementptr i8, i8* %scevgep353, i64 %104
  %106 = bitcast i8* %105 to <4 x double>*
  %wide.load1218 = load <4 x double>, <4 x double>* %106, align 8, !alias.scope !78, !noalias !80
  %107 = fmul fast <4 x double> %wide.load1218, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %108 = bitcast i8* %105 to <4 x double>*
  store <4 x double> %107, <4 x double>* %108, align 8, !alias.scope !78, !noalias !80
  %index.next1215 = add i64 %index1214, 4
  %109 = icmp eq i64 %index.next1215, %n.vec1213
  br i1 %109, label %middle.block1205, label %vector.body1207, !llvm.loop !84

middle.block1205:                                 ; preds = %vector.body1207
  %cmp.n1217 = icmp eq i64 %102, %n.vec1213
  br i1 %cmp.n1217, label %polly.loop_exit349, label %polly.loop_header347.preheader

polly.loop_header347.preheader:                   ; preds = %polly.loop_header341, %middle.block1205
  %polly.indvar350.ph = phi i64 [ 0, %polly.loop_header341 ], [ %n.vec1213, %middle.block1205 ]
  br label %polly.loop_header347

polly.loop_exit349:                               ; preds = %polly.loop_header347, %middle.block1205
  %polly.indvar_next345 = add nuw nsw i64 %polly.indvar344, 1
  %exitcond795.not = icmp eq i64 %polly.indvar_next345, 80
  %indvar.next1209 = add i64 %indvar1208, 1
  br i1 %exitcond795.not, label %polly.loop_header357.preheader, label %polly.loop_header341

polly.loop_header357.preheader:                   ; preds = %polly.loop_exit349
  %Packed_MemRef_call1258 = bitcast i8* %malloccall257 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall257, i8* noundef nonnull align 8 dereferenceable(480) %call1, i64 480, i1 false)
  %scevgep791.1 = getelementptr i8, i8* %malloccall257, i64 480
  %scevgep792.1 = getelementptr i8, i8* %call1, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.1, i64 480, i1 false)
  %scevgep791.2 = getelementptr i8, i8* %malloccall257, i64 960
  %scevgep792.2 = getelementptr i8, i8* %call1, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.2, i64 480, i1 false)
  %scevgep791.3 = getelementptr i8, i8* %malloccall257, i64 1440
  %scevgep792.3 = getelementptr i8, i8* %call1, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.3, i64 480, i1 false)
  %scevgep791.4 = getelementptr i8, i8* %malloccall257, i64 1920
  %scevgep792.4 = getelementptr i8, i8* %call1, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.4, i64 480, i1 false)
  %scevgep791.5 = getelementptr i8, i8* %malloccall257, i64 2400
  %scevgep792.5 = getelementptr i8, i8* %call1, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.5, i64 480, i1 false)
  %scevgep791.6 = getelementptr i8, i8* %malloccall257, i64 2880
  %scevgep792.6 = getelementptr i8, i8* %call1, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.6, i64 480, i1 false)
  %scevgep791.7 = getelementptr i8, i8* %malloccall257, i64 3360
  %scevgep792.7 = getelementptr i8, i8* %call1, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.7, i64 480, i1 false)
  %scevgep791.8 = getelementptr i8, i8* %malloccall257, i64 3840
  %scevgep792.8 = getelementptr i8, i8* %call1, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.8, i64 480, i1 false)
  %scevgep791.9 = getelementptr i8, i8* %malloccall257, i64 4320
  %scevgep792.9 = getelementptr i8, i8* %call1, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.9, i64 480, i1 false)
  %scevgep791.10 = getelementptr i8, i8* %malloccall257, i64 4800
  %scevgep792.10 = getelementptr i8, i8* %call1, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.10, i64 480, i1 false)
  %scevgep791.11 = getelementptr i8, i8* %malloccall257, i64 5280
  %scevgep792.11 = getelementptr i8, i8* %call1, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.11, i64 480, i1 false)
  %scevgep791.12 = getelementptr i8, i8* %malloccall257, i64 5760
  %scevgep792.12 = getelementptr i8, i8* %call1, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.12, i64 480, i1 false)
  %scevgep791.13 = getelementptr i8, i8* %malloccall257, i64 6240
  %scevgep792.13 = getelementptr i8, i8* %call1, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.13, i64 480, i1 false)
  %scevgep791.14 = getelementptr i8, i8* %malloccall257, i64 6720
  %scevgep792.14 = getelementptr i8, i8* %call1, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.14, i64 480, i1 false)
  %scevgep791.15 = getelementptr i8, i8* %malloccall257, i64 7200
  %scevgep792.15 = getelementptr i8, i8* %call1, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.15, i64 480, i1 false)
  %scevgep791.16 = getelementptr i8, i8* %malloccall257, i64 7680
  %scevgep792.16 = getelementptr i8, i8* %call1, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.16, i64 480, i1 false)
  %scevgep791.17 = getelementptr i8, i8* %malloccall257, i64 8160
  %scevgep792.17 = getelementptr i8, i8* %call1, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.17, i64 480, i1 false)
  %scevgep791.18 = getelementptr i8, i8* %malloccall257, i64 8640
  %scevgep792.18 = getelementptr i8, i8* %call1, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.18, i64 480, i1 false)
  %scevgep791.19 = getelementptr i8, i8* %malloccall257, i64 9120
  %scevgep792.19 = getelementptr i8, i8* %call1, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.19, i64 480, i1 false)
  %scevgep791.20 = getelementptr i8, i8* %malloccall257, i64 9600
  %scevgep792.20 = getelementptr i8, i8* %call1, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.20, i64 480, i1 false)
  %scevgep791.21 = getelementptr i8, i8* %malloccall257, i64 10080
  %scevgep792.21 = getelementptr i8, i8* %call1, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.21, i64 480, i1 false)
  %scevgep791.22 = getelementptr i8, i8* %malloccall257, i64 10560
  %scevgep792.22 = getelementptr i8, i8* %call1, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.22, i64 480, i1 false)
  %scevgep791.23 = getelementptr i8, i8* %malloccall257, i64 11040
  %scevgep792.23 = getelementptr i8, i8* %call1, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.23, i64 480, i1 false)
  %scevgep791.24 = getelementptr i8, i8* %malloccall257, i64 11520
  %scevgep792.24 = getelementptr i8, i8* %call1, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.24, i64 480, i1 false)
  %scevgep791.25 = getelementptr i8, i8* %malloccall257, i64 12000
  %scevgep792.25 = getelementptr i8, i8* %call1, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.25, i64 480, i1 false)
  %scevgep791.26 = getelementptr i8, i8* %malloccall257, i64 12480
  %scevgep792.26 = getelementptr i8, i8* %call1, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.26, i64 480, i1 false)
  %scevgep791.27 = getelementptr i8, i8* %malloccall257, i64 12960
  %scevgep792.27 = getelementptr i8, i8* %call1, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.27, i64 480, i1 false)
  %scevgep791.28 = getelementptr i8, i8* %malloccall257, i64 13440
  %scevgep792.28 = getelementptr i8, i8* %call1, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.28, i64 480, i1 false)
  %scevgep791.29 = getelementptr i8, i8* %malloccall257, i64 13920
  %scevgep792.29 = getelementptr i8, i8* %call1, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.29, i64 480, i1 false)
  %scevgep791.30 = getelementptr i8, i8* %malloccall257, i64 14400
  %scevgep792.30 = getelementptr i8, i8* %call1, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.30, i64 480, i1 false)
  %scevgep791.31 = getelementptr i8, i8* %malloccall257, i64 14880
  %scevgep792.31 = getelementptr i8, i8* %call1, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.31, i64 480, i1 false)
  %scevgep791.32 = getelementptr i8, i8* %malloccall257, i64 15360
  %scevgep792.32 = getelementptr i8, i8* %call1, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.32, i64 480, i1 false)
  %scevgep791.33 = getelementptr i8, i8* %malloccall257, i64 15840
  %scevgep792.33 = getelementptr i8, i8* %call1, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.33, i64 480, i1 false)
  %scevgep791.34 = getelementptr i8, i8* %malloccall257, i64 16320
  %scevgep792.34 = getelementptr i8, i8* %call1, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.34, i64 480, i1 false)
  %scevgep791.35 = getelementptr i8, i8* %malloccall257, i64 16800
  %scevgep792.35 = getelementptr i8, i8* %call1, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.35, i64 480, i1 false)
  %scevgep791.36 = getelementptr i8, i8* %malloccall257, i64 17280
  %scevgep792.36 = getelementptr i8, i8* %call1, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.36, i64 480, i1 false)
  %scevgep791.37 = getelementptr i8, i8* %malloccall257, i64 17760
  %scevgep792.37 = getelementptr i8, i8* %call1, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.37, i64 480, i1 false)
  %scevgep791.38 = getelementptr i8, i8* %malloccall257, i64 18240
  %scevgep792.38 = getelementptr i8, i8* %call1, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.38, i64 480, i1 false)
  %scevgep791.39 = getelementptr i8, i8* %malloccall257, i64 18720
  %scevgep792.39 = getelementptr i8, i8* %call1, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.39, i64 480, i1 false)
  %scevgep791.40 = getelementptr i8, i8* %malloccall257, i64 19200
  %scevgep792.40 = getelementptr i8, i8* %call1, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.40, i64 480, i1 false)
  %scevgep791.41 = getelementptr i8, i8* %malloccall257, i64 19680
  %scevgep792.41 = getelementptr i8, i8* %call1, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.41, i64 480, i1 false)
  %scevgep791.42 = getelementptr i8, i8* %malloccall257, i64 20160
  %scevgep792.42 = getelementptr i8, i8* %call1, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.42, i64 480, i1 false)
  %scevgep791.43 = getelementptr i8, i8* %malloccall257, i64 20640
  %scevgep792.43 = getelementptr i8, i8* %call1, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.43, i64 480, i1 false)
  %scevgep791.44 = getelementptr i8, i8* %malloccall257, i64 21120
  %scevgep792.44 = getelementptr i8, i8* %call1, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.44, i64 480, i1 false)
  %scevgep791.45 = getelementptr i8, i8* %malloccall257, i64 21600
  %scevgep792.45 = getelementptr i8, i8* %call1, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.45, i64 480, i1 false)
  %scevgep791.46 = getelementptr i8, i8* %malloccall257, i64 22080
  %scevgep792.46 = getelementptr i8, i8* %call1, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.46, i64 480, i1 false)
  %scevgep791.47 = getelementptr i8, i8* %malloccall257, i64 22560
  %scevgep792.47 = getelementptr i8, i8* %call1, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.47, i64 480, i1 false)
  %scevgep791.48 = getelementptr i8, i8* %malloccall257, i64 23040
  %scevgep792.48 = getelementptr i8, i8* %call1, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.48, i64 480, i1 false)
  %scevgep791.49 = getelementptr i8, i8* %malloccall257, i64 23520
  %scevgep792.49 = getelementptr i8, i8* %call1, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.49, i64 480, i1 false)
  %scevgep791.50 = getelementptr i8, i8* %malloccall257, i64 24000
  %scevgep792.50 = getelementptr i8, i8* %call1, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.50, i64 480, i1 false)
  %scevgep791.51 = getelementptr i8, i8* %malloccall257, i64 24480
  %scevgep792.51 = getelementptr i8, i8* %call1, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.51, i64 480, i1 false)
  %scevgep791.52 = getelementptr i8, i8* %malloccall257, i64 24960
  %scevgep792.52 = getelementptr i8, i8* %call1, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.52, i64 480, i1 false)
  %scevgep791.53 = getelementptr i8, i8* %malloccall257, i64 25440
  %scevgep792.53 = getelementptr i8, i8* %call1, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.53, i64 480, i1 false)
  %scevgep791.54 = getelementptr i8, i8* %malloccall257, i64 25920
  %scevgep792.54 = getelementptr i8, i8* %call1, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.54, i64 480, i1 false)
  %scevgep791.55 = getelementptr i8, i8* %malloccall257, i64 26400
  %scevgep792.55 = getelementptr i8, i8* %call1, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.55, i64 480, i1 false)
  %scevgep791.56 = getelementptr i8, i8* %malloccall257, i64 26880
  %scevgep792.56 = getelementptr i8, i8* %call1, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.56, i64 480, i1 false)
  %scevgep791.57 = getelementptr i8, i8* %malloccall257, i64 27360
  %scevgep792.57 = getelementptr i8, i8* %call1, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.57, i64 480, i1 false)
  %scevgep791.58 = getelementptr i8, i8* %malloccall257, i64 27840
  %scevgep792.58 = getelementptr i8, i8* %call1, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.58, i64 480, i1 false)
  %scevgep791.59 = getelementptr i8, i8* %malloccall257, i64 28320
  %scevgep792.59 = getelementptr i8, i8* %call1, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.59, i64 480, i1 false)
  %scevgep791.60 = getelementptr i8, i8* %malloccall257, i64 28800
  %scevgep792.60 = getelementptr i8, i8* %call1, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.60, i64 480, i1 false)
  %scevgep791.61 = getelementptr i8, i8* %malloccall257, i64 29280
  %scevgep792.61 = getelementptr i8, i8* %call1, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.61, i64 480, i1 false)
  %scevgep791.62 = getelementptr i8, i8* %malloccall257, i64 29760
  %scevgep792.62 = getelementptr i8, i8* %call1, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.62, i64 480, i1 false)
  %scevgep791.63 = getelementptr i8, i8* %malloccall257, i64 30240
  %scevgep792.63 = getelementptr i8, i8* %call1, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.63, i64 480, i1 false)
  %scevgep791.64 = getelementptr i8, i8* %malloccall257, i64 30720
  %scevgep792.64 = getelementptr i8, i8* %call1, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.64, i64 480, i1 false)
  %scevgep791.65 = getelementptr i8, i8* %malloccall257, i64 31200
  %scevgep792.65 = getelementptr i8, i8* %call1, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.65, i64 480, i1 false)
  %scevgep791.66 = getelementptr i8, i8* %malloccall257, i64 31680
  %scevgep792.66 = getelementptr i8, i8* %call1, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.66, i64 480, i1 false)
  %scevgep791.67 = getelementptr i8, i8* %malloccall257, i64 32160
  %scevgep792.67 = getelementptr i8, i8* %call1, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.67, i64 480, i1 false)
  %scevgep791.68 = getelementptr i8, i8* %malloccall257, i64 32640
  %scevgep792.68 = getelementptr i8, i8* %call1, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.68, i64 480, i1 false)
  %scevgep791.69 = getelementptr i8, i8* %malloccall257, i64 33120
  %scevgep792.69 = getelementptr i8, i8* %call1, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.69, i64 480, i1 false)
  %scevgep791.70 = getelementptr i8, i8* %malloccall257, i64 33600
  %scevgep792.70 = getelementptr i8, i8* %call1, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.70, i64 480, i1 false)
  %scevgep791.71 = getelementptr i8, i8* %malloccall257, i64 34080
  %scevgep792.71 = getelementptr i8, i8* %call1, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.71, i64 480, i1 false)
  %scevgep791.72 = getelementptr i8, i8* %malloccall257, i64 34560
  %scevgep792.72 = getelementptr i8, i8* %call1, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.72, i64 480, i1 false)
  %scevgep791.73 = getelementptr i8, i8* %malloccall257, i64 35040
  %scevgep792.73 = getelementptr i8, i8* %call1, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.73, i64 480, i1 false)
  %scevgep791.74 = getelementptr i8, i8* %malloccall257, i64 35520
  %scevgep792.74 = getelementptr i8, i8* %call1, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.74, i64 480, i1 false)
  %scevgep791.75 = getelementptr i8, i8* %malloccall257, i64 36000
  %scevgep792.75 = getelementptr i8, i8* %call1, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.75, i64 480, i1 false)
  %scevgep791.76 = getelementptr i8, i8* %malloccall257, i64 36480
  %scevgep792.76 = getelementptr i8, i8* %call1, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.76, i64 480, i1 false)
  %scevgep791.77 = getelementptr i8, i8* %malloccall257, i64 36960
  %scevgep792.77 = getelementptr i8, i8* %call1, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.77, i64 480, i1 false)
  %scevgep791.78 = getelementptr i8, i8* %malloccall257, i64 37440
  %scevgep792.78 = getelementptr i8, i8* %call1, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.78, i64 480, i1 false)
  %scevgep791.79 = getelementptr i8, i8* %malloccall257, i64 37920
  %scevgep792.79 = getelementptr i8, i8* %call1, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep791.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.79, i64 480, i1 false)
  br label %polly.loop_header373

polly.loop_header347:                             ; preds = %polly.loop_header347.preheader, %polly.loop_header347
  %polly.indvar350 = phi i64 [ %polly.indvar_next351, %polly.loop_header347 ], [ %polly.indvar350.ph, %polly.loop_header347.preheader ]
  %110 = shl nuw nsw i64 %polly.indvar350, 3
  %scevgep354 = getelementptr i8, i8* %scevgep353, i64 %110
  %scevgep354355 = bitcast i8* %scevgep354 to double*
  %_p_scalar_356 = load double, double* %scevgep354355, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_356, 1.200000e+00
  store double %p_mul.i57, double* %scevgep354355, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next351 = add nuw nsw i64 %polly.indvar350, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next351, %polly.indvar344
  br i1 %exitcond794.not, label %polly.loop_exit349, label %polly.loop_header347, !llvm.loop !85

polly.loop_header373:                             ; preds = %polly.loop_header357.preheader, %polly.loop_exit381
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_exit381 ], [ 0, %polly.loop_header357.preheader ]
  %111 = shl nuw nsw i64 %polly.indvar376, 3
  %scevgep395 = getelementptr i8, i8* %call2, i64 %111
  br label %polly.loop_header379

polly.loop_exit381:                               ; preds = %polly.loop_exit387
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond789.not = icmp eq i64 %polly.indvar_next377, 60
  br i1 %exitcond789.not, label %polly.exiting256, label %polly.loop_header373

polly.loop_header379:                             ; preds = %polly.loop_exit387, %polly.loop_header373
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit387 ], [ 1, %polly.loop_header373 ]
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_exit387 ], [ 0, %polly.loop_header373 ]
  %112 = mul nuw nsw i64 %polly.indvar382, 480
  %scevgep396 = getelementptr i8, i8* %scevgep395, i64 %112
  %scevgep396397 = bitcast i8* %scevgep396 to double*
  %113 = mul nuw nsw i64 %polly.indvar382, 640
  %scevgep407 = getelementptr i8, i8* %call, i64 %113
  %_p_scalar_398.pre = load double, double* %scevgep396397, align 8, !alias.scope !82, !noalias !86
  %polly.access.mul.Packed_MemRef_call1258403 = mul nuw nsw i64 %polly.indvar382, 60
  %polly.access.add.Packed_MemRef_call1258404 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1258403, %polly.indvar376
  %polly.access.Packed_MemRef_call1258405 = getelementptr double, double* %Packed_MemRef_call1258, i64 %polly.access.add.Packed_MemRef_call1258404
  %_p_scalar_406 = load double, double* %polly.access.Packed_MemRef_call1258405, align 8
  br label %polly.loop_header385

polly.loop_exit387:                               ; preds = %polly.loop_header385
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 1
  %exitcond788.not = icmp eq i64 %polly.indvar_next383, 80
  br i1 %exitcond788.not, label %polly.loop_exit381, label %polly.loop_header379

polly.loop_header385:                             ; preds = %polly.loop_header385, %polly.loop_header379
  %polly.indvar388 = phi i64 [ 0, %polly.loop_header379 ], [ %polly.indvar_next389, %polly.loop_header385 ]
  %polly.access.mul.Packed_MemRef_call1258391 = mul nuw nsw i64 %polly.indvar388, 60
  %polly.access.add.Packed_MemRef_call1258392 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1258391, %polly.indvar376
  %polly.access.Packed_MemRef_call1258393 = getelementptr double, double* %Packed_MemRef_call1258, i64 %polly.access.add.Packed_MemRef_call1258392
  %_p_scalar_394 = load double, double* %polly.access.Packed_MemRef_call1258393, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_398.pre, %_p_scalar_394
  %114 = mul nuw nsw i64 %polly.indvar388, 480
  %scevgep400 = getelementptr i8, i8* %scevgep395, i64 %114
  %scevgep400401 = bitcast i8* %scevgep400 to double*
  %_p_scalar_402 = load double, double* %scevgep400401, align 8, !alias.scope !82, !noalias !86
  %p_mul37.i75 = fmul fast double %_p_scalar_406, %_p_scalar_402
  %115 = shl nuw nsw i64 %polly.indvar388, 3
  %scevgep408 = getelementptr i8, i8* %scevgep407, i64 %115
  %scevgep408409 = bitcast i8* %scevgep408 to double*
  %_p_scalar_410 = load double, double* %scevgep408409, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_410
  store double %p_add42.i79, double* %scevgep408409, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %exitcond787.not = icmp eq i64 %polly.indvar_next389, %indvars.iv785
  br i1 %exitcond787.not, label %polly.loop_exit387, label %polly.loop_header385

polly.start413:                                   ; preds = %init_array.exit
  %malloccall415 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header499

polly.exiting414:                                 ; preds = %polly.loop_exit539
  tail call void @free(i8* nonnull %malloccall415)
  br label %kernel_syr2k.exit

polly.loop_header499:                             ; preds = %polly.loop_exit507, %polly.start413
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit507 ], [ 0, %polly.start413 ]
  %polly.indvar502 = phi i64 [ %polly.indvar_next503, %polly.loop_exit507 ], [ 1, %polly.start413 ]
  %116 = add i64 %indvar, 1
  %117 = mul nuw nsw i64 %polly.indvar502, 640
  %scevgep511 = getelementptr i8, i8* %call, i64 %117
  %min.iters.check1184 = icmp ult i64 %116, 4
  br i1 %min.iters.check1184, label %polly.loop_header505.preheader, label %vector.ph1185

vector.ph1185:                                    ; preds = %polly.loop_header499
  %n.vec1187 = and i64 %116, -4
  br label %vector.body1183

vector.body1183:                                  ; preds = %vector.body1183, %vector.ph1185
  %index1188 = phi i64 [ 0, %vector.ph1185 ], [ %index.next1189, %vector.body1183 ]
  %118 = shl nuw nsw i64 %index1188, 3
  %119 = getelementptr i8, i8* %scevgep511, i64 %118
  %120 = bitcast i8* %119 to <4 x double>*
  %wide.load1192 = load <4 x double>, <4 x double>* %120, align 8, !alias.scope !87, !noalias !89
  %121 = fmul fast <4 x double> %wide.load1192, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %122 = bitcast i8* %119 to <4 x double>*
  store <4 x double> %121, <4 x double>* %122, align 8, !alias.scope !87, !noalias !89
  %index.next1189 = add i64 %index1188, 4
  %123 = icmp eq i64 %index.next1189, %n.vec1187
  br i1 %123, label %middle.block1181, label %vector.body1183, !llvm.loop !93

middle.block1181:                                 ; preds = %vector.body1183
  %cmp.n1191 = icmp eq i64 %116, %n.vec1187
  br i1 %cmp.n1191, label %polly.loop_exit507, label %polly.loop_header505.preheader

polly.loop_header505.preheader:                   ; preds = %polly.loop_header499, %middle.block1181
  %polly.indvar508.ph = phi i64 [ 0, %polly.loop_header499 ], [ %n.vec1187, %middle.block1181 ]
  br label %polly.loop_header505

polly.loop_exit507:                               ; preds = %polly.loop_header505, %middle.block1181
  %polly.indvar_next503 = add nuw nsw i64 %polly.indvar502, 1
  %exitcond806.not = icmp eq i64 %polly.indvar_next503, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond806.not, label %polly.loop_header515.preheader, label %polly.loop_header499

polly.loop_header515.preheader:                   ; preds = %polly.loop_exit507
  %Packed_MemRef_call1416 = bitcast i8* %malloccall415 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall415, i8* noundef nonnull align 8 dereferenceable(480) %call1, i64 480, i1 false)
  %scevgep802.1 = getelementptr i8, i8* %malloccall415, i64 480
  %scevgep803.1 = getelementptr i8, i8* %call1, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.1, i64 480, i1 false)
  %scevgep802.2 = getelementptr i8, i8* %malloccall415, i64 960
  %scevgep803.2 = getelementptr i8, i8* %call1, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.2, i64 480, i1 false)
  %scevgep802.3 = getelementptr i8, i8* %malloccall415, i64 1440
  %scevgep803.3 = getelementptr i8, i8* %call1, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.3, i64 480, i1 false)
  %scevgep802.4 = getelementptr i8, i8* %malloccall415, i64 1920
  %scevgep803.4 = getelementptr i8, i8* %call1, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.4, i64 480, i1 false)
  %scevgep802.5 = getelementptr i8, i8* %malloccall415, i64 2400
  %scevgep803.5 = getelementptr i8, i8* %call1, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.5, i64 480, i1 false)
  %scevgep802.6 = getelementptr i8, i8* %malloccall415, i64 2880
  %scevgep803.6 = getelementptr i8, i8* %call1, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.6, i64 480, i1 false)
  %scevgep802.7 = getelementptr i8, i8* %malloccall415, i64 3360
  %scevgep803.7 = getelementptr i8, i8* %call1, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.7, i64 480, i1 false)
  %scevgep802.8 = getelementptr i8, i8* %malloccall415, i64 3840
  %scevgep803.8 = getelementptr i8, i8* %call1, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.8, i64 480, i1 false)
  %scevgep802.9 = getelementptr i8, i8* %malloccall415, i64 4320
  %scevgep803.9 = getelementptr i8, i8* %call1, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.9, i64 480, i1 false)
  %scevgep802.10 = getelementptr i8, i8* %malloccall415, i64 4800
  %scevgep803.10 = getelementptr i8, i8* %call1, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.10, i64 480, i1 false)
  %scevgep802.11 = getelementptr i8, i8* %malloccall415, i64 5280
  %scevgep803.11 = getelementptr i8, i8* %call1, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.11, i64 480, i1 false)
  %scevgep802.12 = getelementptr i8, i8* %malloccall415, i64 5760
  %scevgep803.12 = getelementptr i8, i8* %call1, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.12, i64 480, i1 false)
  %scevgep802.13 = getelementptr i8, i8* %malloccall415, i64 6240
  %scevgep803.13 = getelementptr i8, i8* %call1, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.13, i64 480, i1 false)
  %scevgep802.14 = getelementptr i8, i8* %malloccall415, i64 6720
  %scevgep803.14 = getelementptr i8, i8* %call1, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.14, i64 480, i1 false)
  %scevgep802.15 = getelementptr i8, i8* %malloccall415, i64 7200
  %scevgep803.15 = getelementptr i8, i8* %call1, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.15, i64 480, i1 false)
  %scevgep802.16 = getelementptr i8, i8* %malloccall415, i64 7680
  %scevgep803.16 = getelementptr i8, i8* %call1, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.16, i64 480, i1 false)
  %scevgep802.17 = getelementptr i8, i8* %malloccall415, i64 8160
  %scevgep803.17 = getelementptr i8, i8* %call1, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.17, i64 480, i1 false)
  %scevgep802.18 = getelementptr i8, i8* %malloccall415, i64 8640
  %scevgep803.18 = getelementptr i8, i8* %call1, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.18, i64 480, i1 false)
  %scevgep802.19 = getelementptr i8, i8* %malloccall415, i64 9120
  %scevgep803.19 = getelementptr i8, i8* %call1, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.19, i64 480, i1 false)
  %scevgep802.20 = getelementptr i8, i8* %malloccall415, i64 9600
  %scevgep803.20 = getelementptr i8, i8* %call1, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.20, i64 480, i1 false)
  %scevgep802.21 = getelementptr i8, i8* %malloccall415, i64 10080
  %scevgep803.21 = getelementptr i8, i8* %call1, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.21, i64 480, i1 false)
  %scevgep802.22 = getelementptr i8, i8* %malloccall415, i64 10560
  %scevgep803.22 = getelementptr i8, i8* %call1, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.22, i64 480, i1 false)
  %scevgep802.23 = getelementptr i8, i8* %malloccall415, i64 11040
  %scevgep803.23 = getelementptr i8, i8* %call1, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.23, i64 480, i1 false)
  %scevgep802.24 = getelementptr i8, i8* %malloccall415, i64 11520
  %scevgep803.24 = getelementptr i8, i8* %call1, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.24, i64 480, i1 false)
  %scevgep802.25 = getelementptr i8, i8* %malloccall415, i64 12000
  %scevgep803.25 = getelementptr i8, i8* %call1, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.25, i64 480, i1 false)
  %scevgep802.26 = getelementptr i8, i8* %malloccall415, i64 12480
  %scevgep803.26 = getelementptr i8, i8* %call1, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.26, i64 480, i1 false)
  %scevgep802.27 = getelementptr i8, i8* %malloccall415, i64 12960
  %scevgep803.27 = getelementptr i8, i8* %call1, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.27, i64 480, i1 false)
  %scevgep802.28 = getelementptr i8, i8* %malloccall415, i64 13440
  %scevgep803.28 = getelementptr i8, i8* %call1, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.28, i64 480, i1 false)
  %scevgep802.29 = getelementptr i8, i8* %malloccall415, i64 13920
  %scevgep803.29 = getelementptr i8, i8* %call1, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.29, i64 480, i1 false)
  %scevgep802.30 = getelementptr i8, i8* %malloccall415, i64 14400
  %scevgep803.30 = getelementptr i8, i8* %call1, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.30, i64 480, i1 false)
  %scevgep802.31 = getelementptr i8, i8* %malloccall415, i64 14880
  %scevgep803.31 = getelementptr i8, i8* %call1, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.31, i64 480, i1 false)
  %scevgep802.32 = getelementptr i8, i8* %malloccall415, i64 15360
  %scevgep803.32 = getelementptr i8, i8* %call1, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.32, i64 480, i1 false)
  %scevgep802.33 = getelementptr i8, i8* %malloccall415, i64 15840
  %scevgep803.33 = getelementptr i8, i8* %call1, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.33, i64 480, i1 false)
  %scevgep802.34 = getelementptr i8, i8* %malloccall415, i64 16320
  %scevgep803.34 = getelementptr i8, i8* %call1, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.34, i64 480, i1 false)
  %scevgep802.35 = getelementptr i8, i8* %malloccall415, i64 16800
  %scevgep803.35 = getelementptr i8, i8* %call1, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.35, i64 480, i1 false)
  %scevgep802.36 = getelementptr i8, i8* %malloccall415, i64 17280
  %scevgep803.36 = getelementptr i8, i8* %call1, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.36, i64 480, i1 false)
  %scevgep802.37 = getelementptr i8, i8* %malloccall415, i64 17760
  %scevgep803.37 = getelementptr i8, i8* %call1, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.37, i64 480, i1 false)
  %scevgep802.38 = getelementptr i8, i8* %malloccall415, i64 18240
  %scevgep803.38 = getelementptr i8, i8* %call1, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.38, i64 480, i1 false)
  %scevgep802.39 = getelementptr i8, i8* %malloccall415, i64 18720
  %scevgep803.39 = getelementptr i8, i8* %call1, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.39, i64 480, i1 false)
  %scevgep802.40 = getelementptr i8, i8* %malloccall415, i64 19200
  %scevgep803.40 = getelementptr i8, i8* %call1, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.40, i64 480, i1 false)
  %scevgep802.41 = getelementptr i8, i8* %malloccall415, i64 19680
  %scevgep803.41 = getelementptr i8, i8* %call1, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.41, i64 480, i1 false)
  %scevgep802.42 = getelementptr i8, i8* %malloccall415, i64 20160
  %scevgep803.42 = getelementptr i8, i8* %call1, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.42, i64 480, i1 false)
  %scevgep802.43 = getelementptr i8, i8* %malloccall415, i64 20640
  %scevgep803.43 = getelementptr i8, i8* %call1, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.43, i64 480, i1 false)
  %scevgep802.44 = getelementptr i8, i8* %malloccall415, i64 21120
  %scevgep803.44 = getelementptr i8, i8* %call1, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.44, i64 480, i1 false)
  %scevgep802.45 = getelementptr i8, i8* %malloccall415, i64 21600
  %scevgep803.45 = getelementptr i8, i8* %call1, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.45, i64 480, i1 false)
  %scevgep802.46 = getelementptr i8, i8* %malloccall415, i64 22080
  %scevgep803.46 = getelementptr i8, i8* %call1, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.46, i64 480, i1 false)
  %scevgep802.47 = getelementptr i8, i8* %malloccall415, i64 22560
  %scevgep803.47 = getelementptr i8, i8* %call1, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.47, i64 480, i1 false)
  %scevgep802.48 = getelementptr i8, i8* %malloccall415, i64 23040
  %scevgep803.48 = getelementptr i8, i8* %call1, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.48, i64 480, i1 false)
  %scevgep802.49 = getelementptr i8, i8* %malloccall415, i64 23520
  %scevgep803.49 = getelementptr i8, i8* %call1, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.49, i64 480, i1 false)
  %scevgep802.50 = getelementptr i8, i8* %malloccall415, i64 24000
  %scevgep803.50 = getelementptr i8, i8* %call1, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.50, i64 480, i1 false)
  %scevgep802.51 = getelementptr i8, i8* %malloccall415, i64 24480
  %scevgep803.51 = getelementptr i8, i8* %call1, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.51, i64 480, i1 false)
  %scevgep802.52 = getelementptr i8, i8* %malloccall415, i64 24960
  %scevgep803.52 = getelementptr i8, i8* %call1, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.52, i64 480, i1 false)
  %scevgep802.53 = getelementptr i8, i8* %malloccall415, i64 25440
  %scevgep803.53 = getelementptr i8, i8* %call1, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.53, i64 480, i1 false)
  %scevgep802.54 = getelementptr i8, i8* %malloccall415, i64 25920
  %scevgep803.54 = getelementptr i8, i8* %call1, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.54, i64 480, i1 false)
  %scevgep802.55 = getelementptr i8, i8* %malloccall415, i64 26400
  %scevgep803.55 = getelementptr i8, i8* %call1, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.55, i64 480, i1 false)
  %scevgep802.56 = getelementptr i8, i8* %malloccall415, i64 26880
  %scevgep803.56 = getelementptr i8, i8* %call1, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.56, i64 480, i1 false)
  %scevgep802.57 = getelementptr i8, i8* %malloccall415, i64 27360
  %scevgep803.57 = getelementptr i8, i8* %call1, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.57, i64 480, i1 false)
  %scevgep802.58 = getelementptr i8, i8* %malloccall415, i64 27840
  %scevgep803.58 = getelementptr i8, i8* %call1, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.58, i64 480, i1 false)
  %scevgep802.59 = getelementptr i8, i8* %malloccall415, i64 28320
  %scevgep803.59 = getelementptr i8, i8* %call1, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.59, i64 480, i1 false)
  %scevgep802.60 = getelementptr i8, i8* %malloccall415, i64 28800
  %scevgep803.60 = getelementptr i8, i8* %call1, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.60, i64 480, i1 false)
  %scevgep802.61 = getelementptr i8, i8* %malloccall415, i64 29280
  %scevgep803.61 = getelementptr i8, i8* %call1, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.61, i64 480, i1 false)
  %scevgep802.62 = getelementptr i8, i8* %malloccall415, i64 29760
  %scevgep803.62 = getelementptr i8, i8* %call1, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.62, i64 480, i1 false)
  %scevgep802.63 = getelementptr i8, i8* %malloccall415, i64 30240
  %scevgep803.63 = getelementptr i8, i8* %call1, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.63, i64 480, i1 false)
  %scevgep802.64 = getelementptr i8, i8* %malloccall415, i64 30720
  %scevgep803.64 = getelementptr i8, i8* %call1, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.64, i64 480, i1 false)
  %scevgep802.65 = getelementptr i8, i8* %malloccall415, i64 31200
  %scevgep803.65 = getelementptr i8, i8* %call1, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.65, i64 480, i1 false)
  %scevgep802.66 = getelementptr i8, i8* %malloccall415, i64 31680
  %scevgep803.66 = getelementptr i8, i8* %call1, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.66, i64 480, i1 false)
  %scevgep802.67 = getelementptr i8, i8* %malloccall415, i64 32160
  %scevgep803.67 = getelementptr i8, i8* %call1, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.67, i64 480, i1 false)
  %scevgep802.68 = getelementptr i8, i8* %malloccall415, i64 32640
  %scevgep803.68 = getelementptr i8, i8* %call1, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.68, i64 480, i1 false)
  %scevgep802.69 = getelementptr i8, i8* %malloccall415, i64 33120
  %scevgep803.69 = getelementptr i8, i8* %call1, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.69, i64 480, i1 false)
  %scevgep802.70 = getelementptr i8, i8* %malloccall415, i64 33600
  %scevgep803.70 = getelementptr i8, i8* %call1, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.70, i64 480, i1 false)
  %scevgep802.71 = getelementptr i8, i8* %malloccall415, i64 34080
  %scevgep803.71 = getelementptr i8, i8* %call1, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.71, i64 480, i1 false)
  %scevgep802.72 = getelementptr i8, i8* %malloccall415, i64 34560
  %scevgep803.72 = getelementptr i8, i8* %call1, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.72, i64 480, i1 false)
  %scevgep802.73 = getelementptr i8, i8* %malloccall415, i64 35040
  %scevgep803.73 = getelementptr i8, i8* %call1, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.73, i64 480, i1 false)
  %scevgep802.74 = getelementptr i8, i8* %malloccall415, i64 35520
  %scevgep803.74 = getelementptr i8, i8* %call1, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.74, i64 480, i1 false)
  %scevgep802.75 = getelementptr i8, i8* %malloccall415, i64 36000
  %scevgep803.75 = getelementptr i8, i8* %call1, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.75, i64 480, i1 false)
  %scevgep802.76 = getelementptr i8, i8* %malloccall415, i64 36480
  %scevgep803.76 = getelementptr i8, i8* %call1, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.76, i64 480, i1 false)
  %scevgep802.77 = getelementptr i8, i8* %malloccall415, i64 36960
  %scevgep803.77 = getelementptr i8, i8* %call1, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.77, i64 480, i1 false)
  %scevgep802.78 = getelementptr i8, i8* %malloccall415, i64 37440
  %scevgep803.78 = getelementptr i8, i8* %call1, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.78, i64 480, i1 false)
  %scevgep802.79 = getelementptr i8, i8* %malloccall415, i64 37920
  %scevgep803.79 = getelementptr i8, i8* %call1, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep802.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep803.79, i64 480, i1 false)
  br label %polly.loop_header531

polly.loop_header505:                             ; preds = %polly.loop_header505.preheader, %polly.loop_header505
  %polly.indvar508 = phi i64 [ %polly.indvar_next509, %polly.loop_header505 ], [ %polly.indvar508.ph, %polly.loop_header505.preheader ]
  %124 = shl nuw nsw i64 %polly.indvar508, 3
  %scevgep512 = getelementptr i8, i8* %scevgep511, i64 %124
  %scevgep512513 = bitcast i8* %scevgep512 to double*
  %_p_scalar_514 = load double, double* %scevgep512513, align 8, !alias.scope !87, !noalias !89
  %p_mul.i = fmul fast double %_p_scalar_514, 1.200000e+00
  store double %p_mul.i, double* %scevgep512513, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next509 = add nuw nsw i64 %polly.indvar508, 1
  %exitcond805.not = icmp eq i64 %polly.indvar_next509, %polly.indvar502
  br i1 %exitcond805.not, label %polly.loop_exit507, label %polly.loop_header505, !llvm.loop !94

polly.loop_header531:                             ; preds = %polly.loop_header515.preheader, %polly.loop_exit539
  %polly.indvar534 = phi i64 [ %polly.indvar_next535, %polly.loop_exit539 ], [ 0, %polly.loop_header515.preheader ]
  %125 = shl nuw nsw i64 %polly.indvar534, 3
  %scevgep553 = getelementptr i8, i8* %call2, i64 %125
  br label %polly.loop_header537

polly.loop_exit539:                               ; preds = %polly.loop_exit545
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next535, 60
  br i1 %exitcond800.not, label %polly.exiting414, label %polly.loop_header531

polly.loop_header537:                             ; preds = %polly.loop_exit545, %polly.loop_header531
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %polly.loop_exit545 ], [ 1, %polly.loop_header531 ]
  %polly.indvar540 = phi i64 [ %polly.indvar_next541, %polly.loop_exit545 ], [ 0, %polly.loop_header531 ]
  %126 = mul nuw nsw i64 %polly.indvar540, 480
  %scevgep554 = getelementptr i8, i8* %scevgep553, i64 %126
  %scevgep554555 = bitcast i8* %scevgep554 to double*
  %127 = mul nuw nsw i64 %polly.indvar540, 640
  %scevgep565 = getelementptr i8, i8* %call, i64 %127
  %_p_scalar_556.pre = load double, double* %scevgep554555, align 8, !alias.scope !91, !noalias !95
  %polly.access.mul.Packed_MemRef_call1416561 = mul nuw nsw i64 %polly.indvar540, 60
  %polly.access.add.Packed_MemRef_call1416562 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1416561, %polly.indvar534
  %polly.access.Packed_MemRef_call1416563 = getelementptr double, double* %Packed_MemRef_call1416, i64 %polly.access.add.Packed_MemRef_call1416562
  %_p_scalar_564 = load double, double* %polly.access.Packed_MemRef_call1416563, align 8
  br label %polly.loop_header543

polly.loop_exit545:                               ; preds = %polly.loop_header543
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %indvars.iv.next797 = add nuw nsw i64 %indvars.iv796, 1
  %exitcond799.not = icmp eq i64 %polly.indvar_next541, 80
  br i1 %exitcond799.not, label %polly.loop_exit539, label %polly.loop_header537

polly.loop_header543:                             ; preds = %polly.loop_header543, %polly.loop_header537
  %polly.indvar546 = phi i64 [ 0, %polly.loop_header537 ], [ %polly.indvar_next547, %polly.loop_header543 ]
  %polly.access.mul.Packed_MemRef_call1416549 = mul nuw nsw i64 %polly.indvar546, 60
  %polly.access.add.Packed_MemRef_call1416550 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1416549, %polly.indvar534
  %polly.access.Packed_MemRef_call1416551 = getelementptr double, double* %Packed_MemRef_call1416, i64 %polly.access.add.Packed_MemRef_call1416550
  %_p_scalar_552 = load double, double* %polly.access.Packed_MemRef_call1416551, align 8
  %p_mul27.i = fmul fast double %_p_scalar_556.pre, %_p_scalar_552
  %128 = mul nuw nsw i64 %polly.indvar546, 480
  %scevgep558 = getelementptr i8, i8* %scevgep553, i64 %128
  %scevgep558559 = bitcast i8* %scevgep558 to double*
  %_p_scalar_560 = load double, double* %scevgep558559, align 8, !alias.scope !91, !noalias !95
  %p_mul37.i = fmul fast double %_p_scalar_564, %_p_scalar_560
  %129 = shl nuw nsw i64 %polly.indvar546, 3
  %scevgep566 = getelementptr i8, i8* %scevgep565, i64 %129
  %scevgep566567 = bitcast i8* %scevgep566 to double*
  %_p_scalar_568 = load double, double* %scevgep566567, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_568
  store double %p_add42.i, double* %scevgep566567, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next547 = add nuw nsw i64 %polly.indvar546, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next547, %indvars.iv796
  br i1 %exitcond798.not, label %polly.loop_exit545, label %polly.loop_header543

polly.loop_header707:                             ; preds = %entry, %polly.loop_exit715
  %polly.indvar710 = phi i64 [ %polly.indvar_next711, %polly.loop_exit715 ], [ 0, %entry ]
  %130 = mul nuw nsw i64 %polly.indvar710, 640
  %131 = trunc i64 %polly.indvar710 to i32
  %broadcast.splatinsert915 = insertelement <4 x i32> poison, i32 %131, i32 0
  %broadcast.splat916 = shufflevector <4 x i32> %broadcast.splatinsert915, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body905

vector.body905:                                   ; preds = %vector.body905, %polly.loop_header707
  %index907 = phi i64 [ 0, %polly.loop_header707 ], [ %index.next908, %vector.body905 ]
  %vec.ind913 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header707 ], [ %vec.ind.next914, %vector.body905 ]
  %132 = mul <4 x i32> %vec.ind913, %broadcast.splat916
  %133 = add <4 x i32> %132, <i32 3, i32 3, i32 3, i32 3>
  %134 = urem <4 x i32> %133, <i32 80, i32 80, i32 80, i32 80>
  %135 = sitofp <4 x i32> %134 to <4 x double>
  %136 = fmul fast <4 x double> %135, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %137 = shl i64 %index907, 3
  %138 = add nuw nsw i64 %137, %130
  %139 = getelementptr i8, i8* %call, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %136, <4 x double>* %140, align 8, !alias.scope !96, !noalias !98
  %index.next908 = add i64 %index907, 4
  %vec.ind.next914 = add <4 x i32> %vec.ind913, <i32 4, i32 4, i32 4, i32 4>
  %141 = icmp eq i64 %index.next908, 32
  br i1 %141, label %polly.loop_exit715, label %vector.body905, !llvm.loop !101

polly.loop_exit715:                               ; preds = %vector.body905
  %polly.indvar_next711 = add nuw nsw i64 %polly.indvar710, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next711, 32
  br i1 %exitcond825.not, label %polly.loop_header707.1, label %polly.loop_header707

polly.loop_header734:                             ; preds = %polly.loop_exit715.2.2, %polly.loop_exit742
  %polly.indvar737 = phi i64 [ %polly.indvar_next738, %polly.loop_exit742 ], [ 0, %polly.loop_exit715.2.2 ]
  %142 = mul nuw nsw i64 %polly.indvar737, 480
  %143 = trunc i64 %polly.indvar737 to i32
  %broadcast.splatinsert1029 = insertelement <4 x i32> poison, i32 %143, i32 0
  %broadcast.splat1030 = shufflevector <4 x i32> %broadcast.splatinsert1029, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %polly.loop_header734
  %index1021 = phi i64 [ 0, %polly.loop_header734 ], [ %index.next1022, %vector.body1019 ]
  %vec.ind1027 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734 ], [ %vec.ind.next1028, %vector.body1019 ]
  %144 = mul <4 x i32> %vec.ind1027, %broadcast.splat1030
  %145 = add <4 x i32> %144, <i32 2, i32 2, i32 2, i32 2>
  %146 = urem <4 x i32> %145, <i32 60, i32 60, i32 60, i32 60>
  %147 = sitofp <4 x i32> %146 to <4 x double>
  %148 = fmul fast <4 x double> %147, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %149 = shl i64 %index1021, 3
  %150 = add i64 %149, %142
  %151 = getelementptr i8, i8* %call2, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %148, <4 x double>* %152, align 8, !alias.scope !100, !noalias !102
  %index.next1022 = add i64 %index1021, 4
  %vec.ind.next1028 = add <4 x i32> %vec.ind1027, <i32 4, i32 4, i32 4, i32 4>
  %153 = icmp eq i64 %index.next1022, 32
  br i1 %153, label %polly.loop_exit742, label %vector.body1019, !llvm.loop !103

polly.loop_exit742:                               ; preds = %vector.body1019
  %polly.indvar_next738 = add nuw nsw i64 %polly.indvar737, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next738, 32
  br i1 %exitcond816.not, label %polly.loop_header734.1, label %polly.loop_header734

polly.loop_header760:                             ; preds = %polly.loop_exit742.1.2, %polly.loop_exit768
  %polly.indvar763 = phi i64 [ %polly.indvar_next764, %polly.loop_exit768 ], [ 0, %polly.loop_exit742.1.2 ]
  %154 = mul nuw nsw i64 %polly.indvar763, 480
  %155 = trunc i64 %polly.indvar763 to i32
  %broadcast.splatinsert1107 = insertelement <4 x i32> poison, i32 %155, i32 0
  %broadcast.splat1108 = shufflevector <4 x i32> %broadcast.splatinsert1107, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1097

vector.body1097:                                  ; preds = %vector.body1097, %polly.loop_header760
  %index1099 = phi i64 [ 0, %polly.loop_header760 ], [ %index.next1100, %vector.body1097 ]
  %vec.ind1105 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header760 ], [ %vec.ind.next1106, %vector.body1097 ]
  %156 = mul <4 x i32> %vec.ind1105, %broadcast.splat1108
  %157 = add <4 x i32> %156, <i32 1, i32 1, i32 1, i32 1>
  %158 = urem <4 x i32> %157, <i32 80, i32 80, i32 80, i32 80>
  %159 = sitofp <4 x i32> %158 to <4 x double>
  %160 = fmul fast <4 x double> %159, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %161 = shl i64 %index1099, 3
  %162 = add i64 %161, %154
  %163 = getelementptr i8, i8* %call1, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %160, <4 x double>* %164, align 8, !alias.scope !99, !noalias !104
  %index.next1100 = add i64 %index1099, 4
  %vec.ind.next1106 = add <4 x i32> %vec.ind1105, <i32 4, i32 4, i32 4, i32 4>
  %165 = icmp eq i64 %index.next1100, 32
  br i1 %165, label %polly.loop_exit768, label %vector.body1097, !llvm.loop !105

polly.loop_exit768:                               ; preds = %vector.body1097
  %polly.indvar_next764 = add nuw nsw i64 %polly.indvar763, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next764, 32
  br i1 %exitcond810.not, label %polly.loop_header760.1, label %polly.loop_header760

polly.loop_header760.1:                           ; preds = %polly.loop_exit768, %polly.loop_exit768.1
  %polly.indvar763.1 = phi i64 [ %polly.indvar_next764.1, %polly.loop_exit768.1 ], [ 0, %polly.loop_exit768 ]
  %166 = mul nuw nsw i64 %polly.indvar763.1, 480
  %167 = trunc i64 %polly.indvar763.1 to i32
  %broadcast.splatinsert1119 = insertelement <4 x i32> poison, i32 %167, i32 0
  %broadcast.splat1120 = shufflevector <4 x i32> %broadcast.splatinsert1119, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1111

vector.body1111:                                  ; preds = %vector.body1111, %polly.loop_header760.1
  %index1113 = phi i64 [ 0, %polly.loop_header760.1 ], [ %index.next1114, %vector.body1111 ]
  %vec.ind1117 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header760.1 ], [ %vec.ind.next1118, %vector.body1111 ]
  %168 = add nuw nsw <4 x i64> %vec.ind1117, <i64 32, i64 32, i64 32, i64 32>
  %169 = trunc <4 x i64> %168 to <4 x i32>
  %170 = mul <4 x i32> %broadcast.splat1120, %169
  %171 = add <4 x i32> %170, <i32 1, i32 1, i32 1, i32 1>
  %172 = urem <4 x i32> %171, <i32 80, i32 80, i32 80, i32 80>
  %173 = sitofp <4 x i32> %172 to <4 x double>
  %174 = fmul fast <4 x double> %173, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %175 = extractelement <4 x i64> %168, i32 0
  %176 = shl i64 %175, 3
  %177 = add i64 %176, %166
  %178 = getelementptr i8, i8* %call1, i64 %177
  %179 = bitcast i8* %178 to <4 x double>*
  store <4 x double> %174, <4 x double>* %179, align 8, !alias.scope !99, !noalias !104
  %index.next1114 = add i64 %index1113, 4
  %vec.ind.next1118 = add <4 x i64> %vec.ind1117, <i64 4, i64 4, i64 4, i64 4>
  %180 = icmp eq i64 %index.next1114, 28
  br i1 %180, label %polly.loop_exit768.1, label %vector.body1111, !llvm.loop !106

polly.loop_exit768.1:                             ; preds = %vector.body1111
  %polly.indvar_next764.1 = add nuw nsw i64 %polly.indvar763.1, 1
  %exitcond810.1.not = icmp eq i64 %polly.indvar_next764.1, 32
  br i1 %exitcond810.1.not, label %polly.loop_header760.1830, label %polly.loop_header760.1

polly.loop_header760.1830:                        ; preds = %polly.loop_exit768.1, %polly.loop_exit768.1841
  %polly.indvar763.1829 = phi i64 [ %polly.indvar_next764.1839, %polly.loop_exit768.1841 ], [ 0, %polly.loop_exit768.1 ]
  %181 = add nuw nsw i64 %polly.indvar763.1829, 32
  %182 = mul nuw nsw i64 %181, 480
  %183 = trunc i64 %181 to i32
  %broadcast.splatinsert1133 = insertelement <4 x i32> poison, i32 %183, i32 0
  %broadcast.splat1134 = shufflevector <4 x i32> %broadcast.splatinsert1133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1123

vector.body1123:                                  ; preds = %vector.body1123, %polly.loop_header760.1830
  %index1125 = phi i64 [ 0, %polly.loop_header760.1830 ], [ %index.next1126, %vector.body1123 ]
  %vec.ind1131 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header760.1830 ], [ %vec.ind.next1132, %vector.body1123 ]
  %184 = mul <4 x i32> %vec.ind1131, %broadcast.splat1134
  %185 = add <4 x i32> %184, <i32 1, i32 1, i32 1, i32 1>
  %186 = urem <4 x i32> %185, <i32 80, i32 80, i32 80, i32 80>
  %187 = sitofp <4 x i32> %186 to <4 x double>
  %188 = fmul fast <4 x double> %187, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %189 = shl i64 %index1125, 3
  %190 = add i64 %189, %182
  %191 = getelementptr i8, i8* %call1, i64 %190
  %192 = bitcast i8* %191 to <4 x double>*
  store <4 x double> %188, <4 x double>* %192, align 8, !alias.scope !99, !noalias !104
  %index.next1126 = add i64 %index1125, 4
  %vec.ind.next1132 = add <4 x i32> %vec.ind1131, <i32 4, i32 4, i32 4, i32 4>
  %193 = icmp eq i64 %index.next1126, 32
  br i1 %193, label %polly.loop_exit768.1841, label %vector.body1123, !llvm.loop !107

polly.loop_exit768.1841:                          ; preds = %vector.body1123
  %polly.indvar_next764.1839 = add nuw nsw i64 %polly.indvar763.1829, 1
  %exitcond810.1840.not = icmp eq i64 %polly.indvar_next764.1839, 32
  br i1 %exitcond810.1840.not, label %polly.loop_header760.1.1, label %polly.loop_header760.1830

polly.loop_header760.1.1:                         ; preds = %polly.loop_exit768.1841, %polly.loop_exit768.1.1
  %polly.indvar763.1.1 = phi i64 [ %polly.indvar_next764.1.1, %polly.loop_exit768.1.1 ], [ 0, %polly.loop_exit768.1841 ]
  %194 = add nuw nsw i64 %polly.indvar763.1.1, 32
  %195 = mul nuw nsw i64 %194, 480
  %196 = trunc i64 %194 to i32
  %broadcast.splatinsert1145 = insertelement <4 x i32> poison, i32 %196, i32 0
  %broadcast.splat1146 = shufflevector <4 x i32> %broadcast.splatinsert1145, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %polly.loop_header760.1.1
  %index1139 = phi i64 [ 0, %polly.loop_header760.1.1 ], [ %index.next1140, %vector.body1137 ]
  %vec.ind1143 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header760.1.1 ], [ %vec.ind.next1144, %vector.body1137 ]
  %197 = add nuw nsw <4 x i64> %vec.ind1143, <i64 32, i64 32, i64 32, i64 32>
  %198 = trunc <4 x i64> %197 to <4 x i32>
  %199 = mul <4 x i32> %broadcast.splat1146, %198
  %200 = add <4 x i32> %199, <i32 1, i32 1, i32 1, i32 1>
  %201 = urem <4 x i32> %200, <i32 80, i32 80, i32 80, i32 80>
  %202 = sitofp <4 x i32> %201 to <4 x double>
  %203 = fmul fast <4 x double> %202, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %204 = extractelement <4 x i64> %197, i32 0
  %205 = shl i64 %204, 3
  %206 = add i64 %205, %195
  %207 = getelementptr i8, i8* %call1, i64 %206
  %208 = bitcast i8* %207 to <4 x double>*
  store <4 x double> %203, <4 x double>* %208, align 8, !alias.scope !99, !noalias !104
  %index.next1140 = add i64 %index1139, 4
  %vec.ind.next1144 = add <4 x i64> %vec.ind1143, <i64 4, i64 4, i64 4, i64 4>
  %209 = icmp eq i64 %index.next1140, 28
  br i1 %209, label %polly.loop_exit768.1.1, label %vector.body1137, !llvm.loop !108

polly.loop_exit768.1.1:                           ; preds = %vector.body1137
  %polly.indvar_next764.1.1 = add nuw nsw i64 %polly.indvar763.1.1, 1
  %exitcond810.1.1.not = icmp eq i64 %polly.indvar_next764.1.1, 32
  br i1 %exitcond810.1.1.not, label %polly.loop_header760.2, label %polly.loop_header760.1.1

polly.loop_header760.2:                           ; preds = %polly.loop_exit768.1.1, %polly.loop_exit768.2
  %polly.indvar763.2 = phi i64 [ %polly.indvar_next764.2, %polly.loop_exit768.2 ], [ 0, %polly.loop_exit768.1.1 ]
  %210 = add nuw nsw i64 %polly.indvar763.2, 64
  %211 = mul nuw nsw i64 %210, 480
  %212 = trunc i64 %210 to i32
  %broadcast.splatinsert1159 = insertelement <4 x i32> poison, i32 %212, i32 0
  %broadcast.splat1160 = shufflevector <4 x i32> %broadcast.splatinsert1159, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1149

vector.body1149:                                  ; preds = %vector.body1149, %polly.loop_header760.2
  %index1151 = phi i64 [ 0, %polly.loop_header760.2 ], [ %index.next1152, %vector.body1149 ]
  %vec.ind1157 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header760.2 ], [ %vec.ind.next1158, %vector.body1149 ]
  %213 = mul <4 x i32> %vec.ind1157, %broadcast.splat1160
  %214 = add <4 x i32> %213, <i32 1, i32 1, i32 1, i32 1>
  %215 = urem <4 x i32> %214, <i32 80, i32 80, i32 80, i32 80>
  %216 = sitofp <4 x i32> %215 to <4 x double>
  %217 = fmul fast <4 x double> %216, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %218 = shl i64 %index1151, 3
  %219 = add i64 %218, %211
  %220 = getelementptr i8, i8* %call1, i64 %219
  %221 = bitcast i8* %220 to <4 x double>*
  store <4 x double> %217, <4 x double>* %221, align 8, !alias.scope !99, !noalias !104
  %index.next1152 = add i64 %index1151, 4
  %vec.ind.next1158 = add <4 x i32> %vec.ind1157, <i32 4, i32 4, i32 4, i32 4>
  %222 = icmp eq i64 %index.next1152, 32
  br i1 %222, label %polly.loop_exit768.2, label %vector.body1149, !llvm.loop !109

polly.loop_exit768.2:                             ; preds = %vector.body1149
  %polly.indvar_next764.2 = add nuw nsw i64 %polly.indvar763.2, 1
  %exitcond810.2.not = icmp eq i64 %polly.indvar_next764.2, 16
  br i1 %exitcond810.2.not, label %polly.loop_header760.1.2, label %polly.loop_header760.2

polly.loop_header760.1.2:                         ; preds = %polly.loop_exit768.2, %polly.loop_exit768.1.2
  %polly.indvar763.1.2 = phi i64 [ %polly.indvar_next764.1.2, %polly.loop_exit768.1.2 ], [ 0, %polly.loop_exit768.2 ]
  %223 = add nuw nsw i64 %polly.indvar763.1.2, 64
  %224 = mul nuw nsw i64 %223, 480
  %225 = trunc i64 %223 to i32
  %broadcast.splatinsert1171 = insertelement <4 x i32> poison, i32 %225, i32 0
  %broadcast.splat1172 = shufflevector <4 x i32> %broadcast.splatinsert1171, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1163

vector.body1163:                                  ; preds = %vector.body1163, %polly.loop_header760.1.2
  %index1165 = phi i64 [ 0, %polly.loop_header760.1.2 ], [ %index.next1166, %vector.body1163 ]
  %vec.ind1169 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header760.1.2 ], [ %vec.ind.next1170, %vector.body1163 ]
  %226 = add nuw nsw <4 x i64> %vec.ind1169, <i64 32, i64 32, i64 32, i64 32>
  %227 = trunc <4 x i64> %226 to <4 x i32>
  %228 = mul <4 x i32> %broadcast.splat1172, %227
  %229 = add <4 x i32> %228, <i32 1, i32 1, i32 1, i32 1>
  %230 = urem <4 x i32> %229, <i32 80, i32 80, i32 80, i32 80>
  %231 = sitofp <4 x i32> %230 to <4 x double>
  %232 = fmul fast <4 x double> %231, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %233 = extractelement <4 x i64> %226, i32 0
  %234 = shl i64 %233, 3
  %235 = add i64 %234, %224
  %236 = getelementptr i8, i8* %call1, i64 %235
  %237 = bitcast i8* %236 to <4 x double>*
  store <4 x double> %232, <4 x double>* %237, align 8, !alias.scope !99, !noalias !104
  %index.next1166 = add i64 %index1165, 4
  %vec.ind.next1170 = add <4 x i64> %vec.ind1169, <i64 4, i64 4, i64 4, i64 4>
  %238 = icmp eq i64 %index.next1166, 28
  br i1 %238, label %polly.loop_exit768.1.2, label %vector.body1163, !llvm.loop !110

polly.loop_exit768.1.2:                           ; preds = %vector.body1163
  %polly.indvar_next764.1.2 = add nuw nsw i64 %polly.indvar763.1.2, 1
  %exitcond810.1.2.not = icmp eq i64 %polly.indvar_next764.1.2, 16
  br i1 %exitcond810.1.2.not, label %init_array.exit, label %polly.loop_header760.1.2

polly.loop_header734.1:                           ; preds = %polly.loop_exit742, %polly.loop_exit742.1
  %polly.indvar737.1 = phi i64 [ %polly.indvar_next738.1, %polly.loop_exit742.1 ], [ 0, %polly.loop_exit742 ]
  %239 = mul nuw nsw i64 %polly.indvar737.1, 480
  %240 = trunc i64 %polly.indvar737.1 to i32
  %broadcast.splatinsert1041 = insertelement <4 x i32> poison, i32 %240, i32 0
  %broadcast.splat1042 = shufflevector <4 x i32> %broadcast.splatinsert1041, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1033

vector.body1033:                                  ; preds = %vector.body1033, %polly.loop_header734.1
  %index1035 = phi i64 [ 0, %polly.loop_header734.1 ], [ %index.next1036, %vector.body1033 ]
  %vec.ind1039 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1 ], [ %vec.ind.next1040, %vector.body1033 ]
  %241 = add nuw nsw <4 x i64> %vec.ind1039, <i64 32, i64 32, i64 32, i64 32>
  %242 = trunc <4 x i64> %241 to <4 x i32>
  %243 = mul <4 x i32> %broadcast.splat1042, %242
  %244 = add <4 x i32> %243, <i32 2, i32 2, i32 2, i32 2>
  %245 = urem <4 x i32> %244, <i32 60, i32 60, i32 60, i32 60>
  %246 = sitofp <4 x i32> %245 to <4 x double>
  %247 = fmul fast <4 x double> %246, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %248 = extractelement <4 x i64> %241, i32 0
  %249 = shl i64 %248, 3
  %250 = add i64 %249, %239
  %251 = getelementptr i8, i8* %call2, i64 %250
  %252 = bitcast i8* %251 to <4 x double>*
  store <4 x double> %247, <4 x double>* %252, align 8, !alias.scope !100, !noalias !102
  %index.next1036 = add i64 %index1035, 4
  %vec.ind.next1040 = add <4 x i64> %vec.ind1039, <i64 4, i64 4, i64 4, i64 4>
  %253 = icmp eq i64 %index.next1036, 28
  br i1 %253, label %polly.loop_exit742.1, label %vector.body1033, !llvm.loop !111

polly.loop_exit742.1:                             ; preds = %vector.body1033
  %polly.indvar_next738.1 = add nuw nsw i64 %polly.indvar737.1, 1
  %exitcond816.1.not = icmp eq i64 %polly.indvar_next738.1, 32
  br i1 %exitcond816.1.not, label %polly.loop_header734.1844, label %polly.loop_header734.1

polly.loop_header734.1844:                        ; preds = %polly.loop_exit742.1, %polly.loop_exit742.1855
  %polly.indvar737.1843 = phi i64 [ %polly.indvar_next738.1853, %polly.loop_exit742.1855 ], [ 0, %polly.loop_exit742.1 ]
  %254 = add nuw nsw i64 %polly.indvar737.1843, 32
  %255 = mul nuw nsw i64 %254, 480
  %256 = trunc i64 %254 to i32
  %broadcast.splatinsert1055 = insertelement <4 x i32> poison, i32 %256, i32 0
  %broadcast.splat1056 = shufflevector <4 x i32> %broadcast.splatinsert1055, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1045

vector.body1045:                                  ; preds = %vector.body1045, %polly.loop_header734.1844
  %index1047 = phi i64 [ 0, %polly.loop_header734.1844 ], [ %index.next1048, %vector.body1045 ]
  %vec.ind1053 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.1844 ], [ %vec.ind.next1054, %vector.body1045 ]
  %257 = mul <4 x i32> %vec.ind1053, %broadcast.splat1056
  %258 = add <4 x i32> %257, <i32 2, i32 2, i32 2, i32 2>
  %259 = urem <4 x i32> %258, <i32 60, i32 60, i32 60, i32 60>
  %260 = sitofp <4 x i32> %259 to <4 x double>
  %261 = fmul fast <4 x double> %260, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %262 = shl i64 %index1047, 3
  %263 = add i64 %262, %255
  %264 = getelementptr i8, i8* %call2, i64 %263
  %265 = bitcast i8* %264 to <4 x double>*
  store <4 x double> %261, <4 x double>* %265, align 8, !alias.scope !100, !noalias !102
  %index.next1048 = add i64 %index1047, 4
  %vec.ind.next1054 = add <4 x i32> %vec.ind1053, <i32 4, i32 4, i32 4, i32 4>
  %266 = icmp eq i64 %index.next1048, 32
  br i1 %266, label %polly.loop_exit742.1855, label %vector.body1045, !llvm.loop !112

polly.loop_exit742.1855:                          ; preds = %vector.body1045
  %polly.indvar_next738.1853 = add nuw nsw i64 %polly.indvar737.1843, 1
  %exitcond816.1854.not = icmp eq i64 %polly.indvar_next738.1853, 32
  br i1 %exitcond816.1854.not, label %polly.loop_header734.1.1, label %polly.loop_header734.1844

polly.loop_header734.1.1:                         ; preds = %polly.loop_exit742.1855, %polly.loop_exit742.1.1
  %polly.indvar737.1.1 = phi i64 [ %polly.indvar_next738.1.1, %polly.loop_exit742.1.1 ], [ 0, %polly.loop_exit742.1855 ]
  %267 = add nuw nsw i64 %polly.indvar737.1.1, 32
  %268 = mul nuw nsw i64 %267, 480
  %269 = trunc i64 %267 to i32
  %broadcast.splatinsert1067 = insertelement <4 x i32> poison, i32 %269, i32 0
  %broadcast.splat1068 = shufflevector <4 x i32> %broadcast.splatinsert1067, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1059

vector.body1059:                                  ; preds = %vector.body1059, %polly.loop_header734.1.1
  %index1061 = phi i64 [ 0, %polly.loop_header734.1.1 ], [ %index.next1062, %vector.body1059 ]
  %vec.ind1065 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.1 ], [ %vec.ind.next1066, %vector.body1059 ]
  %270 = add nuw nsw <4 x i64> %vec.ind1065, <i64 32, i64 32, i64 32, i64 32>
  %271 = trunc <4 x i64> %270 to <4 x i32>
  %272 = mul <4 x i32> %broadcast.splat1068, %271
  %273 = add <4 x i32> %272, <i32 2, i32 2, i32 2, i32 2>
  %274 = urem <4 x i32> %273, <i32 60, i32 60, i32 60, i32 60>
  %275 = sitofp <4 x i32> %274 to <4 x double>
  %276 = fmul fast <4 x double> %275, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %277 = extractelement <4 x i64> %270, i32 0
  %278 = shl i64 %277, 3
  %279 = add i64 %278, %268
  %280 = getelementptr i8, i8* %call2, i64 %279
  %281 = bitcast i8* %280 to <4 x double>*
  store <4 x double> %276, <4 x double>* %281, align 8, !alias.scope !100, !noalias !102
  %index.next1062 = add i64 %index1061, 4
  %vec.ind.next1066 = add <4 x i64> %vec.ind1065, <i64 4, i64 4, i64 4, i64 4>
  %282 = icmp eq i64 %index.next1062, 28
  br i1 %282, label %polly.loop_exit742.1.1, label %vector.body1059, !llvm.loop !113

polly.loop_exit742.1.1:                           ; preds = %vector.body1059
  %polly.indvar_next738.1.1 = add nuw nsw i64 %polly.indvar737.1.1, 1
  %exitcond816.1.1.not = icmp eq i64 %polly.indvar_next738.1.1, 32
  br i1 %exitcond816.1.1.not, label %polly.loop_header734.2, label %polly.loop_header734.1.1

polly.loop_header734.2:                           ; preds = %polly.loop_exit742.1.1, %polly.loop_exit742.2
  %polly.indvar737.2 = phi i64 [ %polly.indvar_next738.2, %polly.loop_exit742.2 ], [ 0, %polly.loop_exit742.1.1 ]
  %283 = add nuw nsw i64 %polly.indvar737.2, 64
  %284 = mul nuw nsw i64 %283, 480
  %285 = trunc i64 %283 to i32
  %broadcast.splatinsert1081 = insertelement <4 x i32> poison, i32 %285, i32 0
  %broadcast.splat1082 = shufflevector <4 x i32> %broadcast.splatinsert1081, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1071

vector.body1071:                                  ; preds = %vector.body1071, %polly.loop_header734.2
  %index1073 = phi i64 [ 0, %polly.loop_header734.2 ], [ %index.next1074, %vector.body1071 ]
  %vec.ind1079 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.2 ], [ %vec.ind.next1080, %vector.body1071 ]
  %286 = mul <4 x i32> %vec.ind1079, %broadcast.splat1082
  %287 = add <4 x i32> %286, <i32 2, i32 2, i32 2, i32 2>
  %288 = urem <4 x i32> %287, <i32 60, i32 60, i32 60, i32 60>
  %289 = sitofp <4 x i32> %288 to <4 x double>
  %290 = fmul fast <4 x double> %289, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %291 = shl i64 %index1073, 3
  %292 = add i64 %291, %284
  %293 = getelementptr i8, i8* %call2, i64 %292
  %294 = bitcast i8* %293 to <4 x double>*
  store <4 x double> %290, <4 x double>* %294, align 8, !alias.scope !100, !noalias !102
  %index.next1074 = add i64 %index1073, 4
  %vec.ind.next1080 = add <4 x i32> %vec.ind1079, <i32 4, i32 4, i32 4, i32 4>
  %295 = icmp eq i64 %index.next1074, 32
  br i1 %295, label %polly.loop_exit742.2, label %vector.body1071, !llvm.loop !114

polly.loop_exit742.2:                             ; preds = %vector.body1071
  %polly.indvar_next738.2 = add nuw nsw i64 %polly.indvar737.2, 1
  %exitcond816.2.not = icmp eq i64 %polly.indvar_next738.2, 16
  br i1 %exitcond816.2.not, label %polly.loop_header734.1.2, label %polly.loop_header734.2

polly.loop_header734.1.2:                         ; preds = %polly.loop_exit742.2, %polly.loop_exit742.1.2
  %polly.indvar737.1.2 = phi i64 [ %polly.indvar_next738.1.2, %polly.loop_exit742.1.2 ], [ 0, %polly.loop_exit742.2 ]
  %296 = add nuw nsw i64 %polly.indvar737.1.2, 64
  %297 = mul nuw nsw i64 %296, 480
  %298 = trunc i64 %296 to i32
  %broadcast.splatinsert1093 = insertelement <4 x i32> poison, i32 %298, i32 0
  %broadcast.splat1094 = shufflevector <4 x i32> %broadcast.splatinsert1093, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1085

vector.body1085:                                  ; preds = %vector.body1085, %polly.loop_header734.1.2
  %index1087 = phi i64 [ 0, %polly.loop_header734.1.2 ], [ %index.next1088, %vector.body1085 ]
  %vec.ind1091 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.2 ], [ %vec.ind.next1092, %vector.body1085 ]
  %299 = add nuw nsw <4 x i64> %vec.ind1091, <i64 32, i64 32, i64 32, i64 32>
  %300 = trunc <4 x i64> %299 to <4 x i32>
  %301 = mul <4 x i32> %broadcast.splat1094, %300
  %302 = add <4 x i32> %301, <i32 2, i32 2, i32 2, i32 2>
  %303 = urem <4 x i32> %302, <i32 60, i32 60, i32 60, i32 60>
  %304 = sitofp <4 x i32> %303 to <4 x double>
  %305 = fmul fast <4 x double> %304, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %306 = extractelement <4 x i64> %299, i32 0
  %307 = shl i64 %306, 3
  %308 = add i64 %307, %297
  %309 = getelementptr i8, i8* %call2, i64 %308
  %310 = bitcast i8* %309 to <4 x double>*
  store <4 x double> %305, <4 x double>* %310, align 8, !alias.scope !100, !noalias !102
  %index.next1088 = add i64 %index1087, 4
  %vec.ind.next1092 = add <4 x i64> %vec.ind1091, <i64 4, i64 4, i64 4, i64 4>
  %311 = icmp eq i64 %index.next1088, 28
  br i1 %311, label %polly.loop_exit742.1.2, label %vector.body1085, !llvm.loop !115

polly.loop_exit742.1.2:                           ; preds = %vector.body1085
  %polly.indvar_next738.1.2 = add nuw nsw i64 %polly.indvar737.1.2, 1
  %exitcond816.1.2.not = icmp eq i64 %polly.indvar_next738.1.2, 16
  br i1 %exitcond816.1.2.not, label %polly.loop_header760, label %polly.loop_header734.1.2

polly.loop_header707.1:                           ; preds = %polly.loop_exit715, %polly.loop_exit715.1
  %polly.indvar710.1 = phi i64 [ %polly.indvar_next711.1, %polly.loop_exit715.1 ], [ 0, %polly.loop_exit715 ]
  %312 = mul nuw nsw i64 %polly.indvar710.1, 640
  %313 = trunc i64 %polly.indvar710.1 to i32
  %broadcast.splatinsert927 = insertelement <4 x i32> poison, i32 %313, i32 0
  %broadcast.splat928 = shufflevector <4 x i32> %broadcast.splatinsert927, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body919

vector.body919:                                   ; preds = %vector.body919, %polly.loop_header707.1
  %index921 = phi i64 [ 0, %polly.loop_header707.1 ], [ %index.next922, %vector.body919 ]
  %vec.ind925 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header707.1 ], [ %vec.ind.next926, %vector.body919 ]
  %314 = add nuw nsw <4 x i64> %vec.ind925, <i64 32, i64 32, i64 32, i64 32>
  %315 = trunc <4 x i64> %314 to <4 x i32>
  %316 = mul <4 x i32> %broadcast.splat928, %315
  %317 = add <4 x i32> %316, <i32 3, i32 3, i32 3, i32 3>
  %318 = urem <4 x i32> %317, <i32 80, i32 80, i32 80, i32 80>
  %319 = sitofp <4 x i32> %318 to <4 x double>
  %320 = fmul fast <4 x double> %319, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %321 = extractelement <4 x i64> %314, i32 0
  %322 = shl i64 %321, 3
  %323 = add nuw nsw i64 %322, %312
  %324 = getelementptr i8, i8* %call, i64 %323
  %325 = bitcast i8* %324 to <4 x double>*
  store <4 x double> %320, <4 x double>* %325, align 8, !alias.scope !96, !noalias !98
  %index.next922 = add i64 %index921, 4
  %vec.ind.next926 = add <4 x i64> %vec.ind925, <i64 4, i64 4, i64 4, i64 4>
  %326 = icmp eq i64 %index.next922, 32
  br i1 %326, label %polly.loop_exit715.1, label %vector.body919, !llvm.loop !116

polly.loop_exit715.1:                             ; preds = %vector.body919
  %polly.indvar_next711.1 = add nuw nsw i64 %polly.indvar710.1, 1
  %exitcond825.1.not = icmp eq i64 %polly.indvar_next711.1, 32
  br i1 %exitcond825.1.not, label %polly.loop_header707.2, label %polly.loop_header707.1

polly.loop_header707.2:                           ; preds = %polly.loop_exit715.1, %polly.loop_exit715.2
  %polly.indvar710.2 = phi i64 [ %polly.indvar_next711.2, %polly.loop_exit715.2 ], [ 0, %polly.loop_exit715.1 ]
  %327 = mul nuw nsw i64 %polly.indvar710.2, 640
  %328 = trunc i64 %polly.indvar710.2 to i32
  %broadcast.splatinsert939 = insertelement <4 x i32> poison, i32 %328, i32 0
  %broadcast.splat940 = shufflevector <4 x i32> %broadcast.splatinsert939, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body931

vector.body931:                                   ; preds = %vector.body931, %polly.loop_header707.2
  %index933 = phi i64 [ 0, %polly.loop_header707.2 ], [ %index.next934, %vector.body931 ]
  %vec.ind937 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header707.2 ], [ %vec.ind.next938, %vector.body931 ]
  %329 = add nuw nsw <4 x i64> %vec.ind937, <i64 64, i64 64, i64 64, i64 64>
  %330 = trunc <4 x i64> %329 to <4 x i32>
  %331 = mul <4 x i32> %broadcast.splat940, %330
  %332 = add <4 x i32> %331, <i32 3, i32 3, i32 3, i32 3>
  %333 = urem <4 x i32> %332, <i32 80, i32 80, i32 80, i32 80>
  %334 = sitofp <4 x i32> %333 to <4 x double>
  %335 = fmul fast <4 x double> %334, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %336 = extractelement <4 x i64> %329, i32 0
  %337 = shl i64 %336, 3
  %338 = add nuw nsw i64 %337, %327
  %339 = getelementptr i8, i8* %call, i64 %338
  %340 = bitcast i8* %339 to <4 x double>*
  store <4 x double> %335, <4 x double>* %340, align 8, !alias.scope !96, !noalias !98
  %index.next934 = add i64 %index933, 4
  %vec.ind.next938 = add <4 x i64> %vec.ind937, <i64 4, i64 4, i64 4, i64 4>
  %341 = icmp eq i64 %index.next934, 16
  br i1 %341, label %polly.loop_exit715.2, label %vector.body931, !llvm.loop !117

polly.loop_exit715.2:                             ; preds = %vector.body931
  %polly.indvar_next711.2 = add nuw nsw i64 %polly.indvar710.2, 1
  %exitcond825.2.not = icmp eq i64 %polly.indvar_next711.2, 32
  br i1 %exitcond825.2.not, label %polly.loop_header707.1858, label %polly.loop_header707.2

polly.loop_header707.1858:                        ; preds = %polly.loop_exit715.2, %polly.loop_exit715.1869
  %polly.indvar710.1857 = phi i64 [ %polly.indvar_next711.1867, %polly.loop_exit715.1869 ], [ 0, %polly.loop_exit715.2 ]
  %342 = add nuw nsw i64 %polly.indvar710.1857, 32
  %343 = mul nuw nsw i64 %342, 640
  %344 = trunc i64 %342 to i32
  %broadcast.splatinsert953 = insertelement <4 x i32> poison, i32 %344, i32 0
  %broadcast.splat954 = shufflevector <4 x i32> %broadcast.splatinsert953, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body943

vector.body943:                                   ; preds = %vector.body943, %polly.loop_header707.1858
  %index945 = phi i64 [ 0, %polly.loop_header707.1858 ], [ %index.next946, %vector.body943 ]
  %vec.ind951 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header707.1858 ], [ %vec.ind.next952, %vector.body943 ]
  %345 = mul <4 x i32> %vec.ind951, %broadcast.splat954
  %346 = add <4 x i32> %345, <i32 3, i32 3, i32 3, i32 3>
  %347 = urem <4 x i32> %346, <i32 80, i32 80, i32 80, i32 80>
  %348 = sitofp <4 x i32> %347 to <4 x double>
  %349 = fmul fast <4 x double> %348, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %350 = shl i64 %index945, 3
  %351 = add nuw nsw i64 %350, %343
  %352 = getelementptr i8, i8* %call, i64 %351
  %353 = bitcast i8* %352 to <4 x double>*
  store <4 x double> %349, <4 x double>* %353, align 8, !alias.scope !96, !noalias !98
  %index.next946 = add i64 %index945, 4
  %vec.ind.next952 = add <4 x i32> %vec.ind951, <i32 4, i32 4, i32 4, i32 4>
  %354 = icmp eq i64 %index.next946, 32
  br i1 %354, label %polly.loop_exit715.1869, label %vector.body943, !llvm.loop !118

polly.loop_exit715.1869:                          ; preds = %vector.body943
  %polly.indvar_next711.1867 = add nuw nsw i64 %polly.indvar710.1857, 1
  %exitcond825.1868.not = icmp eq i64 %polly.indvar_next711.1867, 32
  br i1 %exitcond825.1868.not, label %polly.loop_header707.1.1, label %polly.loop_header707.1858

polly.loop_header707.1.1:                         ; preds = %polly.loop_exit715.1869, %polly.loop_exit715.1.1
  %polly.indvar710.1.1 = phi i64 [ %polly.indvar_next711.1.1, %polly.loop_exit715.1.1 ], [ 0, %polly.loop_exit715.1869 ]
  %355 = add nuw nsw i64 %polly.indvar710.1.1, 32
  %356 = mul nuw nsw i64 %355, 640
  %357 = trunc i64 %355 to i32
  %broadcast.splatinsert965 = insertelement <4 x i32> poison, i32 %357, i32 0
  %broadcast.splat966 = shufflevector <4 x i32> %broadcast.splatinsert965, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body957

vector.body957:                                   ; preds = %vector.body957, %polly.loop_header707.1.1
  %index959 = phi i64 [ 0, %polly.loop_header707.1.1 ], [ %index.next960, %vector.body957 ]
  %vec.ind963 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header707.1.1 ], [ %vec.ind.next964, %vector.body957 ]
  %358 = add nuw nsw <4 x i64> %vec.ind963, <i64 32, i64 32, i64 32, i64 32>
  %359 = trunc <4 x i64> %358 to <4 x i32>
  %360 = mul <4 x i32> %broadcast.splat966, %359
  %361 = add <4 x i32> %360, <i32 3, i32 3, i32 3, i32 3>
  %362 = urem <4 x i32> %361, <i32 80, i32 80, i32 80, i32 80>
  %363 = sitofp <4 x i32> %362 to <4 x double>
  %364 = fmul fast <4 x double> %363, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %365 = extractelement <4 x i64> %358, i32 0
  %366 = shl i64 %365, 3
  %367 = add nuw nsw i64 %366, %356
  %368 = getelementptr i8, i8* %call, i64 %367
  %369 = bitcast i8* %368 to <4 x double>*
  store <4 x double> %364, <4 x double>* %369, align 8, !alias.scope !96, !noalias !98
  %index.next960 = add i64 %index959, 4
  %vec.ind.next964 = add <4 x i64> %vec.ind963, <i64 4, i64 4, i64 4, i64 4>
  %370 = icmp eq i64 %index.next960, 32
  br i1 %370, label %polly.loop_exit715.1.1, label %vector.body957, !llvm.loop !119

polly.loop_exit715.1.1:                           ; preds = %vector.body957
  %polly.indvar_next711.1.1 = add nuw nsw i64 %polly.indvar710.1.1, 1
  %exitcond825.1.1.not = icmp eq i64 %polly.indvar_next711.1.1, 32
  br i1 %exitcond825.1.1.not, label %polly.loop_header707.2.1, label %polly.loop_header707.1.1

polly.loop_header707.2.1:                         ; preds = %polly.loop_exit715.1.1, %polly.loop_exit715.2.1
  %polly.indvar710.2.1 = phi i64 [ %polly.indvar_next711.2.1, %polly.loop_exit715.2.1 ], [ 0, %polly.loop_exit715.1.1 ]
  %371 = add nuw nsw i64 %polly.indvar710.2.1, 32
  %372 = mul nuw nsw i64 %371, 640
  %373 = trunc i64 %371 to i32
  %broadcast.splatinsert977 = insertelement <4 x i32> poison, i32 %373, i32 0
  %broadcast.splat978 = shufflevector <4 x i32> %broadcast.splatinsert977, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body969

vector.body969:                                   ; preds = %vector.body969, %polly.loop_header707.2.1
  %index971 = phi i64 [ 0, %polly.loop_header707.2.1 ], [ %index.next972, %vector.body969 ]
  %vec.ind975 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header707.2.1 ], [ %vec.ind.next976, %vector.body969 ]
  %374 = add nuw nsw <4 x i64> %vec.ind975, <i64 64, i64 64, i64 64, i64 64>
  %375 = trunc <4 x i64> %374 to <4 x i32>
  %376 = mul <4 x i32> %broadcast.splat978, %375
  %377 = add <4 x i32> %376, <i32 3, i32 3, i32 3, i32 3>
  %378 = urem <4 x i32> %377, <i32 80, i32 80, i32 80, i32 80>
  %379 = sitofp <4 x i32> %378 to <4 x double>
  %380 = fmul fast <4 x double> %379, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %381 = extractelement <4 x i64> %374, i32 0
  %382 = shl i64 %381, 3
  %383 = add nuw nsw i64 %382, %372
  %384 = getelementptr i8, i8* %call, i64 %383
  %385 = bitcast i8* %384 to <4 x double>*
  store <4 x double> %380, <4 x double>* %385, align 8, !alias.scope !96, !noalias !98
  %index.next972 = add i64 %index971, 4
  %vec.ind.next976 = add <4 x i64> %vec.ind975, <i64 4, i64 4, i64 4, i64 4>
  %386 = icmp eq i64 %index.next972, 16
  br i1 %386, label %polly.loop_exit715.2.1, label %vector.body969, !llvm.loop !120

polly.loop_exit715.2.1:                           ; preds = %vector.body969
  %polly.indvar_next711.2.1 = add nuw nsw i64 %polly.indvar710.2.1, 1
  %exitcond825.2.1.not = icmp eq i64 %polly.indvar_next711.2.1, 32
  br i1 %exitcond825.2.1.not, label %polly.loop_header707.2872, label %polly.loop_header707.2.1

polly.loop_header707.2872:                        ; preds = %polly.loop_exit715.2.1, %polly.loop_exit715.2883
  %polly.indvar710.2871 = phi i64 [ %polly.indvar_next711.2881, %polly.loop_exit715.2883 ], [ 0, %polly.loop_exit715.2.1 ]
  %387 = add nuw nsw i64 %polly.indvar710.2871, 64
  %388 = mul nuw nsw i64 %387, 640
  %389 = trunc i64 %387 to i32
  %broadcast.splatinsert991 = insertelement <4 x i32> poison, i32 %389, i32 0
  %broadcast.splat992 = shufflevector <4 x i32> %broadcast.splatinsert991, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body981

vector.body981:                                   ; preds = %vector.body981, %polly.loop_header707.2872
  %index983 = phi i64 [ 0, %polly.loop_header707.2872 ], [ %index.next984, %vector.body981 ]
  %vec.ind989 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header707.2872 ], [ %vec.ind.next990, %vector.body981 ]
  %390 = mul <4 x i32> %vec.ind989, %broadcast.splat992
  %391 = add <4 x i32> %390, <i32 3, i32 3, i32 3, i32 3>
  %392 = urem <4 x i32> %391, <i32 80, i32 80, i32 80, i32 80>
  %393 = sitofp <4 x i32> %392 to <4 x double>
  %394 = fmul fast <4 x double> %393, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %395 = shl i64 %index983, 3
  %396 = add nuw nsw i64 %395, %388
  %397 = getelementptr i8, i8* %call, i64 %396
  %398 = bitcast i8* %397 to <4 x double>*
  store <4 x double> %394, <4 x double>* %398, align 8, !alias.scope !96, !noalias !98
  %index.next984 = add i64 %index983, 4
  %vec.ind.next990 = add <4 x i32> %vec.ind989, <i32 4, i32 4, i32 4, i32 4>
  %399 = icmp eq i64 %index.next984, 32
  br i1 %399, label %polly.loop_exit715.2883, label %vector.body981, !llvm.loop !121

polly.loop_exit715.2883:                          ; preds = %vector.body981
  %polly.indvar_next711.2881 = add nuw nsw i64 %polly.indvar710.2871, 1
  %exitcond825.2882.not = icmp eq i64 %polly.indvar_next711.2881, 16
  br i1 %exitcond825.2882.not, label %polly.loop_header707.1.2, label %polly.loop_header707.2872

polly.loop_header707.1.2:                         ; preds = %polly.loop_exit715.2883, %polly.loop_exit715.1.2
  %polly.indvar710.1.2 = phi i64 [ %polly.indvar_next711.1.2, %polly.loop_exit715.1.2 ], [ 0, %polly.loop_exit715.2883 ]
  %400 = add nuw nsw i64 %polly.indvar710.1.2, 64
  %401 = mul nuw nsw i64 %400, 640
  %402 = trunc i64 %400 to i32
  %broadcast.splatinsert1003 = insertelement <4 x i32> poison, i32 %402, i32 0
  %broadcast.splat1004 = shufflevector <4 x i32> %broadcast.splatinsert1003, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body995

vector.body995:                                   ; preds = %vector.body995, %polly.loop_header707.1.2
  %index997 = phi i64 [ 0, %polly.loop_header707.1.2 ], [ %index.next998, %vector.body995 ]
  %vec.ind1001 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header707.1.2 ], [ %vec.ind.next1002, %vector.body995 ]
  %403 = add nuw nsw <4 x i64> %vec.ind1001, <i64 32, i64 32, i64 32, i64 32>
  %404 = trunc <4 x i64> %403 to <4 x i32>
  %405 = mul <4 x i32> %broadcast.splat1004, %404
  %406 = add <4 x i32> %405, <i32 3, i32 3, i32 3, i32 3>
  %407 = urem <4 x i32> %406, <i32 80, i32 80, i32 80, i32 80>
  %408 = sitofp <4 x i32> %407 to <4 x double>
  %409 = fmul fast <4 x double> %408, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %410 = extractelement <4 x i64> %403, i32 0
  %411 = shl i64 %410, 3
  %412 = add nuw nsw i64 %411, %401
  %413 = getelementptr i8, i8* %call, i64 %412
  %414 = bitcast i8* %413 to <4 x double>*
  store <4 x double> %409, <4 x double>* %414, align 8, !alias.scope !96, !noalias !98
  %index.next998 = add i64 %index997, 4
  %vec.ind.next1002 = add <4 x i64> %vec.ind1001, <i64 4, i64 4, i64 4, i64 4>
  %415 = icmp eq i64 %index.next998, 32
  br i1 %415, label %polly.loop_exit715.1.2, label %vector.body995, !llvm.loop !122

polly.loop_exit715.1.2:                           ; preds = %vector.body995
  %polly.indvar_next711.1.2 = add nuw nsw i64 %polly.indvar710.1.2, 1
  %exitcond825.1.2.not = icmp eq i64 %polly.indvar_next711.1.2, 16
  br i1 %exitcond825.1.2.not, label %polly.loop_header707.2.2, label %polly.loop_header707.1.2

polly.loop_header707.2.2:                         ; preds = %polly.loop_exit715.1.2, %polly.loop_exit715.2.2
  %polly.indvar710.2.2 = phi i64 [ %polly.indvar_next711.2.2, %polly.loop_exit715.2.2 ], [ 0, %polly.loop_exit715.1.2 ]
  %416 = add nuw nsw i64 %polly.indvar710.2.2, 64
  %417 = mul nuw nsw i64 %416, 640
  %418 = trunc i64 %416 to i32
  %broadcast.splatinsert1015 = insertelement <4 x i32> poison, i32 %418, i32 0
  %broadcast.splat1016 = shufflevector <4 x i32> %broadcast.splatinsert1015, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1007

vector.body1007:                                  ; preds = %vector.body1007, %polly.loop_header707.2.2
  %index1009 = phi i64 [ 0, %polly.loop_header707.2.2 ], [ %index.next1010, %vector.body1007 ]
  %vec.ind1013 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header707.2.2 ], [ %vec.ind.next1014, %vector.body1007 ]
  %419 = add nuw nsw <4 x i64> %vec.ind1013, <i64 64, i64 64, i64 64, i64 64>
  %420 = trunc <4 x i64> %419 to <4 x i32>
  %421 = mul <4 x i32> %broadcast.splat1016, %420
  %422 = add <4 x i32> %421, <i32 3, i32 3, i32 3, i32 3>
  %423 = urem <4 x i32> %422, <i32 80, i32 80, i32 80, i32 80>
  %424 = sitofp <4 x i32> %423 to <4 x double>
  %425 = fmul fast <4 x double> %424, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %426 = extractelement <4 x i64> %419, i32 0
  %427 = shl i64 %426, 3
  %428 = add nuw nsw i64 %427, %417
  %429 = getelementptr i8, i8* %call, i64 %428
  %430 = bitcast i8* %429 to <4 x double>*
  store <4 x double> %425, <4 x double>* %430, align 8, !alias.scope !96, !noalias !98
  %index.next1010 = add i64 %index1009, 4
  %vec.ind.next1014 = add <4 x i64> %vec.ind1013, <i64 4, i64 4, i64 4, i64 4>
  %431 = icmp eq i64 %index.next1010, 16
  br i1 %431, label %polly.loop_exit715.2.2, label %vector.body1007, !llvm.loop !123

polly.loop_exit715.2.2:                           ; preds = %vector.body1007
  %polly.indvar_next711.2.2 = add nuw nsw i64 %polly.indvar710.2.2, 1
  %exitcond825.2.2.not = icmp eq i64 %polly.indvar_next711.2.2, 16
  br i1 %exitcond825.2.2.not, label %polly.loop_header734, label %polly.loop_header707.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 256}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
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
!50 = !{!"llvm.loop.tile.size", i32 128}
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
