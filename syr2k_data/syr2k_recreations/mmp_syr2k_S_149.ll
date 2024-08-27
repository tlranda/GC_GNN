; ModuleID = 'syr2k_recreations//mmp_syr2k_S_149.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_149.c"
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
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv7.i, i64 %index894
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
  br i1 %min.iters.check, label %for.body3.i46.preheader1246, label %vector.ph1175

vector.ph1175:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1174

vector.body1174:                                  ; preds = %vector.body1174, %vector.ph1175
  %index1176 = phi i64 [ 0, %vector.ph1175 ], [ %index.next1177, %vector.body1174 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv21.i, i64 %index1176
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
  br i1 %cmp.n1179, label %for.inc6.i, label %for.body3.i46.preheader1246

for.body3.i46.preheader1246:                      ; preds = %for.body3.i46.preheader, %middle.block1172
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1172 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1246, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1246 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

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
  %min.iters.check1195 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1195, label %for.body3.i60.preheader1245, label %vector.ph1196

vector.ph1196:                                    ; preds = %for.body3.i60.preheader
  %n.vec1198 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1194

vector.body1194:                                  ; preds = %vector.body1194, %vector.ph1196
  %index1199 = phi i64 [ 0, %vector.ph1196 ], [ %index.next1200, %vector.body1194 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv21.i52, i64 %index1199
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1203 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1203, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1200 = add i64 %index1199, 4
  %57 = icmp eq i64 %index.next1200, %n.vec1198
  br i1 %57, label %middle.block1192, label %vector.body1194, !llvm.loop !55

middle.block1192:                                 ; preds = %vector.body1194
  %cmp.n1202 = icmp eq i64 %indvars.iv21.i52, %n.vec1198
  br i1 %cmp.n1202, label %for.inc6.i63, label %for.body3.i60.preheader1245

for.body3.i60.preheader1245:                      ; preds = %for.body3.i60.preheader, %middle.block1192
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1198, %middle.block1192 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1245, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1245 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

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
  %min.iters.check1221 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1221, label %for.body3.i99.preheader1244, label %vector.ph1222

vector.ph1222:                                    ; preds = %for.body3.i99.preheader
  %n.vec1224 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %vector.ph1222
  %index1225 = phi i64 [ 0, %vector.ph1222 ], [ %index.next1226, %vector.body1220 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv21.i91, i64 %index1225
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1229 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1229, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1226 = add i64 %index1225, 4
  %68 = icmp eq i64 %index.next1226, %n.vec1224
  br i1 %68, label %middle.block1218, label %vector.body1220, !llvm.loop !57

middle.block1218:                                 ; preds = %vector.body1220
  %cmp.n1228 = icmp eq i64 %indvars.iv21.i91, %n.vec1224
  br i1 %cmp.n1228, label %for.inc6.i102, label %for.body3.i99.preheader1244

for.body3.i99.preheader1244:                      ; preds = %for.body3.i99.preheader, %middle.block1218
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1224, %middle.block1218 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1244, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1244 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call721, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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

polly.exiting:                                    ; preds = %polly.loop_exit223
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1233 = phi i64 [ %indvar.next1234, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
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
  %wide.load1243 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1243, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1240 = add i64 %index1239, 4
  %95 = icmp eq i64 %index.next1240, %n.vec1238
  br i1 %95, label %middle.block1230, label %vector.body1232, !llvm.loop !69

middle.block1230:                                 ; preds = %vector.body1232
  %cmp.n1242 = icmp eq i64 %88, %n.vec1238
  br i1 %cmp.n1242, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1230
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1238, %middle.block1230 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1230
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond783.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1234 = add i64 %indvar1233, 1
  br i1 %exitcond783.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond782.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond782.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit223
  %indvars.iv = phi i64 [ 1, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit223 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit223 ]
  br label %polly.loop_header205

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond781.not = icmp eq i64 %polly.indvar_next203, 80
  br i1 %exitcond781.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %97 = mul nuw nsw i64 %polly.indvar208, 480
  %scevgep777 = getelementptr i8, i8* %malloccall, i64 %97
  %scevgep778 = getelementptr i8, i8* %call1, i64 %97
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep777, i8* noundef nonnull align 8 dereferenceable(480) %scevgep778, i64 480, i1 false)
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next209, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_preheader222, label %polly.loop_header205

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_preheader222
  %polly.indvar224 = phi i64 [ 0, %polly.loop_preheader222 ], [ %polly.indvar_next225, %polly.loop_exit229 ]
  %98 = shl nuw nsw i64 %polly.indvar224, 3
  %scevgep238 = getelementptr i8, i8* %scevgep237, i64 %98
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %scevgep241 = getelementptr i8, i8* %call2, i64 %98
  %_p_scalar_240.pre = load double, double* %scevgep238239, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call1246 = add nuw nsw i64 %polly.indvar224, %polly.access.mul.Packed_MemRef_call1245
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  %_p_scalar_248 = load double, double* %polly.access.Packed_MemRef_call1247, align 8
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_header227
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond780.not = icmp eq i64 %polly.indvar_next225, 60
  br i1 %exitcond780.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_preheader222:                          ; preds = %polly.loop_header205
  %99 = mul nuw nsw i64 %polly.indvar202, 480
  %scevgep237 = getelementptr i8, i8* %call2, i64 %99
  %100 = mul nuw nsw i64 %polly.indvar202, 640
  %scevgep249 = getelementptr i8, i8* %call, i64 %100
  %polly.access.mul.Packed_MemRef_call1245 = mul nuw nsw i64 %polly.indvar202, 60
  br label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_header227, %polly.loop_header221
  %polly.indvar230 = phi i64 [ 0, %polly.loop_header221 ], [ %polly.indvar_next231, %polly.loop_header227 ]
  %polly.access.mul.Packed_MemRef_call1233 = mul nuw nsw i64 %polly.indvar230, 60
  %polly.access.add.Packed_MemRef_call1234 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1233, %polly.indvar224
  %polly.access.Packed_MemRef_call1235 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1234
  %_p_scalar_236 = load double, double* %polly.access.Packed_MemRef_call1235, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_240.pre, %_p_scalar_236
  %101 = mul nuw nsw i64 %polly.indvar230, 480
  %scevgep242 = getelementptr i8, i8* %scevgep241, i64 %101
  %scevgep242243 = bitcast i8* %scevgep242 to double*
  %_p_scalar_244 = load double, double* %scevgep242243, align 8, !alias.scope !67, !noalias !72
  %p_mul37.i114 = fmul fast double %_p_scalar_248, %_p_scalar_244
  %102 = shl nuw nsw i64 %polly.indvar230, 3
  %scevgep250 = getelementptr i8, i8* %scevgep249, i64 %102
  %scevgep250251 = bitcast i8* %scevgep250 to double*
  %_p_scalar_252 = load double, double* %scevgep250251, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_252
  store double %p_add42.i118, double* %scevgep250251, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next231, %indvars.iv
  br i1 %exitcond779.not, label %polly.loop_exit229, label %polly.loop_header227

polly.start255:                                   ; preds = %kernel_syr2k.exit
  %malloccall257 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header341

polly.exiting256:                                 ; preds = %polly.loop_exit381
  tail call void @free(i8* nonnull %malloccall257)
  br label %kernel_syr2k.exit90

polly.loop_header341:                             ; preds = %polly.loop_exit349, %polly.start255
  %indvar1207 = phi i64 [ %indvar.next1208, %polly.loop_exit349 ], [ 0, %polly.start255 ]
  %polly.indvar344 = phi i64 [ %polly.indvar_next345, %polly.loop_exit349 ], [ 1, %polly.start255 ]
  %103 = add i64 %indvar1207, 1
  %104 = mul nuw nsw i64 %polly.indvar344, 640
  %scevgep353 = getelementptr i8, i8* %call, i64 %104
  %min.iters.check1209 = icmp ult i64 %103, 4
  br i1 %min.iters.check1209, label %polly.loop_header347.preheader, label %vector.ph1210

vector.ph1210:                                    ; preds = %polly.loop_header341
  %n.vec1212 = and i64 %103, -4
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1210
  %index1213 = phi i64 [ 0, %vector.ph1210 ], [ %index.next1214, %vector.body1206 ]
  %105 = shl nuw nsw i64 %index1213, 3
  %106 = getelementptr i8, i8* %scevgep353, i64 %105
  %107 = bitcast i8* %106 to <4 x double>*
  %wide.load1217 = load <4 x double>, <4 x double>* %107, align 8, !alias.scope !73, !noalias !75
  %108 = fmul fast <4 x double> %wide.load1217, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %109 = bitcast i8* %106 to <4 x double>*
  store <4 x double> %108, <4 x double>* %109, align 8, !alias.scope !73, !noalias !75
  %index.next1214 = add i64 %index1213, 4
  %110 = icmp eq i64 %index.next1214, %n.vec1212
  br i1 %110, label %middle.block1204, label %vector.body1206, !llvm.loop !79

middle.block1204:                                 ; preds = %vector.body1206
  %cmp.n1216 = icmp eq i64 %103, %n.vec1212
  br i1 %cmp.n1216, label %polly.loop_exit349, label %polly.loop_header347.preheader

polly.loop_header347.preheader:                   ; preds = %polly.loop_header341, %middle.block1204
  %polly.indvar350.ph = phi i64 [ 0, %polly.loop_header341 ], [ %n.vec1212, %middle.block1204 ]
  br label %polly.loop_header347

polly.loop_exit349:                               ; preds = %polly.loop_header347, %middle.block1204
  %polly.indvar_next345 = add nuw nsw i64 %polly.indvar344, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next345, 80
  %indvar.next1208 = add i64 %indvar1207, 1
  br i1 %exitcond794.not, label %polly.loop_header357.preheader, label %polly.loop_header341

polly.loop_header357.preheader:                   ; preds = %polly.loop_exit349
  %Packed_MemRef_call1258 = bitcast i8* %malloccall257 to double*
  br label %polly.loop_header357

polly.loop_header347:                             ; preds = %polly.loop_header347.preheader, %polly.loop_header347
  %polly.indvar350 = phi i64 [ %polly.indvar_next351, %polly.loop_header347 ], [ %polly.indvar350.ph, %polly.loop_header347.preheader ]
  %111 = shl nuw nsw i64 %polly.indvar350, 3
  %scevgep354 = getelementptr i8, i8* %scevgep353, i64 %111
  %scevgep354355 = bitcast i8* %scevgep354 to double*
  %_p_scalar_356 = load double, double* %scevgep354355, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_356, 1.200000e+00
  store double %p_mul.i57, double* %scevgep354355, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next351 = add nuw nsw i64 %polly.indvar350, 1
  %exitcond793.not = icmp eq i64 %polly.indvar_next351, %polly.indvar344
  br i1 %exitcond793.not, label %polly.loop_exit349, label %polly.loop_header347, !llvm.loop !80

polly.loop_header357:                             ; preds = %polly.loop_header357.preheader, %polly.loop_exit381
  %indvars.iv787 = phi i64 [ 1, %polly.loop_header357.preheader ], [ %indvars.iv.next788, %polly.loop_exit381 ]
  %polly.indvar360 = phi i64 [ 0, %polly.loop_header357.preheader ], [ %polly.indvar_next361, %polly.loop_exit381 ]
  br label %polly.loop_header363

polly.loop_exit381:                               ; preds = %polly.loop_exit387
  %polly.indvar_next361 = add nuw nsw i64 %polly.indvar360, 1
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 1
  %exitcond792.not = icmp eq i64 %polly.indvar_next361, 80
  br i1 %exitcond792.not, label %polly.exiting256, label %polly.loop_header357

polly.loop_header363:                             ; preds = %polly.loop_header363, %polly.loop_header357
  %polly.indvar366 = phi i64 [ 0, %polly.loop_header357 ], [ %polly.indvar_next367, %polly.loop_header363 ]
  %112 = mul nuw nsw i64 %polly.indvar366, 480
  %scevgep785 = getelementptr i8, i8* %malloccall257, i64 %112
  %scevgep786 = getelementptr i8, i8* %call1, i64 %112
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep785, i8* noundef nonnull align 8 dereferenceable(480) %scevgep786, i64 480, i1 false)
  %polly.indvar_next367 = add nuw nsw i64 %polly.indvar366, 1
  %exitcond789.not = icmp eq i64 %polly.indvar_next367, %indvars.iv787
  br i1 %exitcond789.not, label %polly.loop_preheader380, label %polly.loop_header363

polly.loop_header379:                             ; preds = %polly.loop_exit387, %polly.loop_preheader380
  %polly.indvar382 = phi i64 [ 0, %polly.loop_preheader380 ], [ %polly.indvar_next383, %polly.loop_exit387 ]
  %113 = shl nuw nsw i64 %polly.indvar382, 3
  %scevgep396 = getelementptr i8, i8* %scevgep395, i64 %113
  %scevgep396397 = bitcast i8* %scevgep396 to double*
  %scevgep399 = getelementptr i8, i8* %call2, i64 %113
  %_p_scalar_398.pre = load double, double* %scevgep396397, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call1258404 = add nuw nsw i64 %polly.indvar382, %polly.access.mul.Packed_MemRef_call1258403
  %polly.access.Packed_MemRef_call1258405 = getelementptr double, double* %Packed_MemRef_call1258, i64 %polly.access.add.Packed_MemRef_call1258404
  %_p_scalar_406 = load double, double* %polly.access.Packed_MemRef_call1258405, align 8
  br label %polly.loop_header385

polly.loop_exit387:                               ; preds = %polly.loop_header385
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next383, 60
  br i1 %exitcond791.not, label %polly.loop_exit381, label %polly.loop_header379

polly.loop_preheader380:                          ; preds = %polly.loop_header363
  %114 = mul nuw nsw i64 %polly.indvar360, 480
  %scevgep395 = getelementptr i8, i8* %call2, i64 %114
  %115 = mul nuw nsw i64 %polly.indvar360, 640
  %scevgep407 = getelementptr i8, i8* %call, i64 %115
  %polly.access.mul.Packed_MemRef_call1258403 = mul nuw nsw i64 %polly.indvar360, 60
  br label %polly.loop_header379

polly.loop_header385:                             ; preds = %polly.loop_header385, %polly.loop_header379
  %polly.indvar388 = phi i64 [ 0, %polly.loop_header379 ], [ %polly.indvar_next389, %polly.loop_header385 ]
  %polly.access.mul.Packed_MemRef_call1258391 = mul nuw nsw i64 %polly.indvar388, 60
  %polly.access.add.Packed_MemRef_call1258392 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1258391, %polly.indvar382
  %polly.access.Packed_MemRef_call1258393 = getelementptr double, double* %Packed_MemRef_call1258, i64 %polly.access.add.Packed_MemRef_call1258392
  %_p_scalar_394 = load double, double* %polly.access.Packed_MemRef_call1258393, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_398.pre, %_p_scalar_394
  %116 = mul nuw nsw i64 %polly.indvar388, 480
  %scevgep400 = getelementptr i8, i8* %scevgep399, i64 %116
  %scevgep400401 = bitcast i8* %scevgep400 to double*
  %_p_scalar_402 = load double, double* %scevgep400401, align 8, !alias.scope !77, !noalias !81
  %p_mul37.i75 = fmul fast double %_p_scalar_406, %_p_scalar_402
  %117 = shl nuw nsw i64 %polly.indvar388, 3
  %scevgep408 = getelementptr i8, i8* %scevgep407, i64 %117
  %scevgep408409 = bitcast i8* %scevgep408 to double*
  %_p_scalar_410 = load double, double* %scevgep408409, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_410
  store double %p_add42.i79, double* %scevgep408409, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %exitcond790.not = icmp eq i64 %polly.indvar_next389, %indvars.iv787
  br i1 %exitcond790.not, label %polly.loop_exit387, label %polly.loop_header385

polly.start413:                                   ; preds = %init_array.exit
  %malloccall415 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header499

polly.exiting414:                                 ; preds = %polly.loop_exit539
  tail call void @free(i8* nonnull %malloccall415)
  br label %kernel_syr2k.exit

polly.loop_header499:                             ; preds = %polly.loop_exit507, %polly.start413
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit507 ], [ 0, %polly.start413 ]
  %polly.indvar502 = phi i64 [ %polly.indvar_next503, %polly.loop_exit507 ], [ 1, %polly.start413 ]
  %118 = add i64 %indvar, 1
  %119 = mul nuw nsw i64 %polly.indvar502, 640
  %scevgep511 = getelementptr i8, i8* %call, i64 %119
  %min.iters.check1183 = icmp ult i64 %118, 4
  br i1 %min.iters.check1183, label %polly.loop_header505.preheader, label %vector.ph1184

vector.ph1184:                                    ; preds = %polly.loop_header499
  %n.vec1186 = and i64 %118, -4
  br label %vector.body1182

vector.body1182:                                  ; preds = %vector.body1182, %vector.ph1184
  %index1187 = phi i64 [ 0, %vector.ph1184 ], [ %index.next1188, %vector.body1182 ]
  %120 = shl nuw nsw i64 %index1187, 3
  %121 = getelementptr i8, i8* %scevgep511, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load1191 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !82, !noalias !84
  %123 = fmul fast <4 x double> %wide.load1191, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %124 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %123, <4 x double>* %124, align 8, !alias.scope !82, !noalias !84
  %index.next1188 = add i64 %index1187, 4
  %125 = icmp eq i64 %index.next1188, %n.vec1186
  br i1 %125, label %middle.block1180, label %vector.body1182, !llvm.loop !88

middle.block1180:                                 ; preds = %vector.body1182
  %cmp.n1190 = icmp eq i64 %118, %n.vec1186
  br i1 %cmp.n1190, label %polly.loop_exit507, label %polly.loop_header505.preheader

polly.loop_header505.preheader:                   ; preds = %polly.loop_header499, %middle.block1180
  %polly.indvar508.ph = phi i64 [ 0, %polly.loop_header499 ], [ %n.vec1186, %middle.block1180 ]
  br label %polly.loop_header505

polly.loop_exit507:                               ; preds = %polly.loop_header505, %middle.block1180
  %polly.indvar_next503 = add nuw nsw i64 %polly.indvar502, 1
  %exitcond805.not = icmp eq i64 %polly.indvar_next503, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond805.not, label %polly.loop_header515.preheader, label %polly.loop_header499

polly.loop_header515.preheader:                   ; preds = %polly.loop_exit507
  %Packed_MemRef_call1416 = bitcast i8* %malloccall415 to double*
  br label %polly.loop_header515

polly.loop_header505:                             ; preds = %polly.loop_header505.preheader, %polly.loop_header505
  %polly.indvar508 = phi i64 [ %polly.indvar_next509, %polly.loop_header505 ], [ %polly.indvar508.ph, %polly.loop_header505.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar508, 3
  %scevgep512 = getelementptr i8, i8* %scevgep511, i64 %126
  %scevgep512513 = bitcast i8* %scevgep512 to double*
  %_p_scalar_514 = load double, double* %scevgep512513, align 8, !alias.scope !82, !noalias !84
  %p_mul.i = fmul fast double %_p_scalar_514, 1.200000e+00
  store double %p_mul.i, double* %scevgep512513, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next509 = add nuw nsw i64 %polly.indvar508, 1
  %exitcond804.not = icmp eq i64 %polly.indvar_next509, %polly.indvar502
  br i1 %exitcond804.not, label %polly.loop_exit507, label %polly.loop_header505, !llvm.loop !89

polly.loop_header515:                             ; preds = %polly.loop_header515.preheader, %polly.loop_exit539
  %indvars.iv798 = phi i64 [ 1, %polly.loop_header515.preheader ], [ %indvars.iv.next799, %polly.loop_exit539 ]
  %polly.indvar518 = phi i64 [ 0, %polly.loop_header515.preheader ], [ %polly.indvar_next519, %polly.loop_exit539 ]
  br label %polly.loop_header521

polly.loop_exit539:                               ; preds = %polly.loop_exit545
  %polly.indvar_next519 = add nuw nsw i64 %polly.indvar518, 1
  %indvars.iv.next799 = add nuw nsw i64 %indvars.iv798, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next519, 80
  br i1 %exitcond803.not, label %polly.exiting414, label %polly.loop_header515

polly.loop_header521:                             ; preds = %polly.loop_header521, %polly.loop_header515
  %polly.indvar524 = phi i64 [ 0, %polly.loop_header515 ], [ %polly.indvar_next525, %polly.loop_header521 ]
  %127 = mul nuw nsw i64 %polly.indvar524, 480
  %scevgep796 = getelementptr i8, i8* %malloccall415, i64 %127
  %scevgep797 = getelementptr i8, i8* %call1, i64 %127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep796, i8* noundef nonnull align 8 dereferenceable(480) %scevgep797, i64 480, i1 false)
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next525, %indvars.iv798
  br i1 %exitcond800.not, label %polly.loop_preheader538, label %polly.loop_header521

polly.loop_header537:                             ; preds = %polly.loop_exit545, %polly.loop_preheader538
  %polly.indvar540 = phi i64 [ 0, %polly.loop_preheader538 ], [ %polly.indvar_next541, %polly.loop_exit545 ]
  %128 = shl nuw nsw i64 %polly.indvar540, 3
  %scevgep554 = getelementptr i8, i8* %scevgep553, i64 %128
  %scevgep554555 = bitcast i8* %scevgep554 to double*
  %scevgep557 = getelementptr i8, i8* %call2, i64 %128
  %_p_scalar_556.pre = load double, double* %scevgep554555, align 8, !alias.scope !86, !noalias !90
  %polly.access.add.Packed_MemRef_call1416562 = add nuw nsw i64 %polly.indvar540, %polly.access.mul.Packed_MemRef_call1416561
  %polly.access.Packed_MemRef_call1416563 = getelementptr double, double* %Packed_MemRef_call1416, i64 %polly.access.add.Packed_MemRef_call1416562
  %_p_scalar_564 = load double, double* %polly.access.Packed_MemRef_call1416563, align 8
  br label %polly.loop_header543

polly.loop_exit545:                               ; preds = %polly.loop_header543
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %exitcond802.not = icmp eq i64 %polly.indvar_next541, 60
  br i1 %exitcond802.not, label %polly.loop_exit539, label %polly.loop_header537

polly.loop_preheader538:                          ; preds = %polly.loop_header521
  %129 = mul nuw nsw i64 %polly.indvar518, 480
  %scevgep553 = getelementptr i8, i8* %call2, i64 %129
  %130 = mul nuw nsw i64 %polly.indvar518, 640
  %scevgep565 = getelementptr i8, i8* %call, i64 %130
  %polly.access.mul.Packed_MemRef_call1416561 = mul nuw nsw i64 %polly.indvar518, 60
  br label %polly.loop_header537

polly.loop_header543:                             ; preds = %polly.loop_header543, %polly.loop_header537
  %polly.indvar546 = phi i64 [ 0, %polly.loop_header537 ], [ %polly.indvar_next547, %polly.loop_header543 ]
  %polly.access.mul.Packed_MemRef_call1416549 = mul nuw nsw i64 %polly.indvar546, 60
  %polly.access.add.Packed_MemRef_call1416550 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1416549, %polly.indvar540
  %polly.access.Packed_MemRef_call1416551 = getelementptr double, double* %Packed_MemRef_call1416, i64 %polly.access.add.Packed_MemRef_call1416550
  %_p_scalar_552 = load double, double* %polly.access.Packed_MemRef_call1416551, align 8
  %p_mul27.i = fmul fast double %_p_scalar_556.pre, %_p_scalar_552
  %131 = mul nuw nsw i64 %polly.indvar546, 480
  %scevgep558 = getelementptr i8, i8* %scevgep557, i64 %131
  %scevgep558559 = bitcast i8* %scevgep558 to double*
  %_p_scalar_560 = load double, double* %scevgep558559, align 8, !alias.scope !86, !noalias !90
  %p_mul37.i = fmul fast double %_p_scalar_564, %_p_scalar_560
  %132 = shl nuw nsw i64 %polly.indvar546, 3
  %scevgep566 = getelementptr i8, i8* %scevgep565, i64 %132
  %scevgep566567 = bitcast i8* %scevgep566 to double*
  %_p_scalar_568 = load double, double* %scevgep566567, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_568
  store double %p_add42.i, double* %scevgep566567, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next547 = add nuw nsw i64 %polly.indvar546, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next547, %indvars.iv798
  br i1 %exitcond801.not, label %polly.loop_exit545, label %polly.loop_header543

polly.loop_header707:                             ; preds = %entry, %polly.loop_exit715
  %polly.indvar710 = phi i64 [ %polly.indvar_next711, %polly.loop_exit715 ], [ 0, %entry ]
  %133 = mul nuw nsw i64 %polly.indvar710, 640
  %134 = trunc i64 %polly.indvar710 to i32
  %broadcast.splatinsert914 = insertelement <4 x i32> poison, i32 %134, i32 0
  %broadcast.splat915 = shufflevector <4 x i32> %broadcast.splatinsert914, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body904

vector.body904:                                   ; preds = %vector.body904, %polly.loop_header707
  %index906 = phi i64 [ 0, %polly.loop_header707 ], [ %index.next907, %vector.body904 ]
  %vec.ind912 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header707 ], [ %vec.ind.next913, %vector.body904 ]
  %135 = mul <4 x i32> %vec.ind912, %broadcast.splat915
  %136 = add <4 x i32> %135, <i32 3, i32 3, i32 3, i32 3>
  %137 = urem <4 x i32> %136, <i32 80, i32 80, i32 80, i32 80>
  %138 = sitofp <4 x i32> %137 to <4 x double>
  %139 = fmul fast <4 x double> %138, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %140 = shl i64 %index906, 3
  %141 = add nuw nsw i64 %140, %133
  %142 = getelementptr i8, i8* %call, i64 %141
  %143 = bitcast i8* %142 to <4 x double>*
  store <4 x double> %139, <4 x double>* %143, align 8, !alias.scope !91, !noalias !93
  %index.next907 = add i64 %index906, 4
  %vec.ind.next913 = add <4 x i32> %vec.ind912, <i32 4, i32 4, i32 4, i32 4>
  %144 = icmp eq i64 %index.next907, 32
  br i1 %144, label %polly.loop_exit715, label %vector.body904, !llvm.loop !96

polly.loop_exit715:                               ; preds = %vector.body904
  %polly.indvar_next711 = add nuw nsw i64 %polly.indvar710, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next711, 32
  br i1 %exitcond824.not, label %polly.loop_header707.1, label %polly.loop_header707

polly.loop_header734:                             ; preds = %polly.loop_exit715.2.2, %polly.loop_exit742
  %polly.indvar737 = phi i64 [ %polly.indvar_next738, %polly.loop_exit742 ], [ 0, %polly.loop_exit715.2.2 ]
  %145 = mul nuw nsw i64 %polly.indvar737, 480
  %146 = trunc i64 %polly.indvar737 to i32
  %broadcast.splatinsert1028 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat1029 = shufflevector <4 x i32> %broadcast.splatinsert1028, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %polly.loop_header734
  %index1020 = phi i64 [ 0, %polly.loop_header734 ], [ %index.next1021, %vector.body1018 ]
  %vec.ind1026 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734 ], [ %vec.ind.next1027, %vector.body1018 ]
  %147 = mul <4 x i32> %vec.ind1026, %broadcast.splat1029
  %148 = add <4 x i32> %147, <i32 2, i32 2, i32 2, i32 2>
  %149 = urem <4 x i32> %148, <i32 60, i32 60, i32 60, i32 60>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index1020, 3
  %153 = add i64 %152, %145
  %154 = getelementptr i8, i8* %call2, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !95, !noalias !97
  %index.next1021 = add i64 %index1020, 4
  %vec.ind.next1027 = add <4 x i32> %vec.ind1026, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next1021, 32
  br i1 %156, label %polly.loop_exit742, label %vector.body1018, !llvm.loop !98

polly.loop_exit742:                               ; preds = %vector.body1018
  %polly.indvar_next738 = add nuw nsw i64 %polly.indvar737, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next738, 32
  br i1 %exitcond815.not, label %polly.loop_header734.1, label %polly.loop_header734

polly.loop_header760:                             ; preds = %polly.loop_exit742.1.2, %polly.loop_exit768
  %polly.indvar763 = phi i64 [ %polly.indvar_next764, %polly.loop_exit768 ], [ 0, %polly.loop_exit742.1.2 ]
  %157 = mul nuw nsw i64 %polly.indvar763, 480
  %158 = trunc i64 %polly.indvar763 to i32
  %broadcast.splatinsert1106 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1107 = shufflevector <4 x i32> %broadcast.splatinsert1106, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1096

vector.body1096:                                  ; preds = %vector.body1096, %polly.loop_header760
  %index1098 = phi i64 [ 0, %polly.loop_header760 ], [ %index.next1099, %vector.body1096 ]
  %vec.ind1104 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header760 ], [ %vec.ind.next1105, %vector.body1096 ]
  %159 = mul <4 x i32> %vec.ind1104, %broadcast.splat1107
  %160 = add <4 x i32> %159, <i32 1, i32 1, i32 1, i32 1>
  %161 = urem <4 x i32> %160, <i32 80, i32 80, i32 80, i32 80>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %164 = shl i64 %index1098, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call1, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !94, !noalias !99
  %index.next1099 = add i64 %index1098, 4
  %vec.ind.next1105 = add <4 x i32> %vec.ind1104, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1099, 32
  br i1 %168, label %polly.loop_exit768, label %vector.body1096, !llvm.loop !100

polly.loop_exit768:                               ; preds = %vector.body1096
  %polly.indvar_next764 = add nuw nsw i64 %polly.indvar763, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next764, 32
  br i1 %exitcond809.not, label %polly.loop_header760.1, label %polly.loop_header760

polly.loop_header760.1:                           ; preds = %polly.loop_exit768, %polly.loop_exit768.1
  %polly.indvar763.1 = phi i64 [ %polly.indvar_next764.1, %polly.loop_exit768.1 ], [ 0, %polly.loop_exit768 ]
  %169 = mul nuw nsw i64 %polly.indvar763.1, 480
  %170 = trunc i64 %polly.indvar763.1 to i32
  %broadcast.splatinsert1118 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat1119 = shufflevector <4 x i32> %broadcast.splatinsert1118, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1110

vector.body1110:                                  ; preds = %vector.body1110, %polly.loop_header760.1
  %index1112 = phi i64 [ 0, %polly.loop_header760.1 ], [ %index.next1113, %vector.body1110 ]
  %vec.ind1116 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header760.1 ], [ %vec.ind.next1117, %vector.body1110 ]
  %171 = add nuw nsw <4 x i64> %vec.ind1116, <i64 32, i64 32, i64 32, i64 32>
  %172 = trunc <4 x i64> %171 to <4 x i32>
  %173 = mul <4 x i32> %broadcast.splat1119, %172
  %174 = add <4 x i32> %173, <i32 1, i32 1, i32 1, i32 1>
  %175 = urem <4 x i32> %174, <i32 80, i32 80, i32 80, i32 80>
  %176 = sitofp <4 x i32> %175 to <4 x double>
  %177 = fmul fast <4 x double> %176, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %178 = extractelement <4 x i64> %171, i32 0
  %179 = shl i64 %178, 3
  %180 = add i64 %179, %169
  %181 = getelementptr i8, i8* %call1, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %177, <4 x double>* %182, align 8, !alias.scope !94, !noalias !99
  %index.next1113 = add i64 %index1112, 4
  %vec.ind.next1117 = add <4 x i64> %vec.ind1116, <i64 4, i64 4, i64 4, i64 4>
  %183 = icmp eq i64 %index.next1113, 28
  br i1 %183, label %polly.loop_exit768.1, label %vector.body1110, !llvm.loop !101

polly.loop_exit768.1:                             ; preds = %vector.body1110
  %polly.indvar_next764.1 = add nuw nsw i64 %polly.indvar763.1, 1
  %exitcond809.1.not = icmp eq i64 %polly.indvar_next764.1, 32
  br i1 %exitcond809.1.not, label %polly.loop_header760.1829, label %polly.loop_header760.1

polly.loop_header760.1829:                        ; preds = %polly.loop_exit768.1, %polly.loop_exit768.1840
  %polly.indvar763.1828 = phi i64 [ %polly.indvar_next764.1838, %polly.loop_exit768.1840 ], [ 0, %polly.loop_exit768.1 ]
  %184 = add nuw nsw i64 %polly.indvar763.1828, 32
  %185 = mul nuw nsw i64 %184, 480
  %186 = trunc i64 %184 to i32
  %broadcast.splatinsert1132 = insertelement <4 x i32> poison, i32 %186, i32 0
  %broadcast.splat1133 = shufflevector <4 x i32> %broadcast.splatinsert1132, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1122

vector.body1122:                                  ; preds = %vector.body1122, %polly.loop_header760.1829
  %index1124 = phi i64 [ 0, %polly.loop_header760.1829 ], [ %index.next1125, %vector.body1122 ]
  %vec.ind1130 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header760.1829 ], [ %vec.ind.next1131, %vector.body1122 ]
  %187 = mul <4 x i32> %vec.ind1130, %broadcast.splat1133
  %188 = add <4 x i32> %187, <i32 1, i32 1, i32 1, i32 1>
  %189 = urem <4 x i32> %188, <i32 80, i32 80, i32 80, i32 80>
  %190 = sitofp <4 x i32> %189 to <4 x double>
  %191 = fmul fast <4 x double> %190, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %192 = shl i64 %index1124, 3
  %193 = add i64 %192, %185
  %194 = getelementptr i8, i8* %call1, i64 %193
  %195 = bitcast i8* %194 to <4 x double>*
  store <4 x double> %191, <4 x double>* %195, align 8, !alias.scope !94, !noalias !99
  %index.next1125 = add i64 %index1124, 4
  %vec.ind.next1131 = add <4 x i32> %vec.ind1130, <i32 4, i32 4, i32 4, i32 4>
  %196 = icmp eq i64 %index.next1125, 32
  br i1 %196, label %polly.loop_exit768.1840, label %vector.body1122, !llvm.loop !102

polly.loop_exit768.1840:                          ; preds = %vector.body1122
  %polly.indvar_next764.1838 = add nuw nsw i64 %polly.indvar763.1828, 1
  %exitcond809.1839.not = icmp eq i64 %polly.indvar_next764.1838, 32
  br i1 %exitcond809.1839.not, label %polly.loop_header760.1.1, label %polly.loop_header760.1829

polly.loop_header760.1.1:                         ; preds = %polly.loop_exit768.1840, %polly.loop_exit768.1.1
  %polly.indvar763.1.1 = phi i64 [ %polly.indvar_next764.1.1, %polly.loop_exit768.1.1 ], [ 0, %polly.loop_exit768.1840 ]
  %197 = add nuw nsw i64 %polly.indvar763.1.1, 32
  %198 = mul nuw nsw i64 %197, 480
  %199 = trunc i64 %197 to i32
  %broadcast.splatinsert1144 = insertelement <4 x i32> poison, i32 %199, i32 0
  %broadcast.splat1145 = shufflevector <4 x i32> %broadcast.splatinsert1144, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %polly.loop_header760.1.1
  %index1138 = phi i64 [ 0, %polly.loop_header760.1.1 ], [ %index.next1139, %vector.body1136 ]
  %vec.ind1142 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header760.1.1 ], [ %vec.ind.next1143, %vector.body1136 ]
  %200 = add nuw nsw <4 x i64> %vec.ind1142, <i64 32, i64 32, i64 32, i64 32>
  %201 = trunc <4 x i64> %200 to <4 x i32>
  %202 = mul <4 x i32> %broadcast.splat1145, %201
  %203 = add <4 x i32> %202, <i32 1, i32 1, i32 1, i32 1>
  %204 = urem <4 x i32> %203, <i32 80, i32 80, i32 80, i32 80>
  %205 = sitofp <4 x i32> %204 to <4 x double>
  %206 = fmul fast <4 x double> %205, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %207 = extractelement <4 x i64> %200, i32 0
  %208 = shl i64 %207, 3
  %209 = add i64 %208, %198
  %210 = getelementptr i8, i8* %call1, i64 %209
  %211 = bitcast i8* %210 to <4 x double>*
  store <4 x double> %206, <4 x double>* %211, align 8, !alias.scope !94, !noalias !99
  %index.next1139 = add i64 %index1138, 4
  %vec.ind.next1143 = add <4 x i64> %vec.ind1142, <i64 4, i64 4, i64 4, i64 4>
  %212 = icmp eq i64 %index.next1139, 28
  br i1 %212, label %polly.loop_exit768.1.1, label %vector.body1136, !llvm.loop !103

polly.loop_exit768.1.1:                           ; preds = %vector.body1136
  %polly.indvar_next764.1.1 = add nuw nsw i64 %polly.indvar763.1.1, 1
  %exitcond809.1.1.not = icmp eq i64 %polly.indvar_next764.1.1, 32
  br i1 %exitcond809.1.1.not, label %polly.loop_header760.2, label %polly.loop_header760.1.1

polly.loop_header760.2:                           ; preds = %polly.loop_exit768.1.1, %polly.loop_exit768.2
  %polly.indvar763.2 = phi i64 [ %polly.indvar_next764.2, %polly.loop_exit768.2 ], [ 0, %polly.loop_exit768.1.1 ]
  %213 = add nuw nsw i64 %polly.indvar763.2, 64
  %214 = mul nuw nsw i64 %213, 480
  %215 = trunc i64 %213 to i32
  %broadcast.splatinsert1158 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat1159 = shufflevector <4 x i32> %broadcast.splatinsert1158, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %polly.loop_header760.2
  %index1150 = phi i64 [ 0, %polly.loop_header760.2 ], [ %index.next1151, %vector.body1148 ]
  %vec.ind1156 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header760.2 ], [ %vec.ind.next1157, %vector.body1148 ]
  %216 = mul <4 x i32> %vec.ind1156, %broadcast.splat1159
  %217 = add <4 x i32> %216, <i32 1, i32 1, i32 1, i32 1>
  %218 = urem <4 x i32> %217, <i32 80, i32 80, i32 80, i32 80>
  %219 = sitofp <4 x i32> %218 to <4 x double>
  %220 = fmul fast <4 x double> %219, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %221 = shl i64 %index1150, 3
  %222 = add i64 %221, %214
  %223 = getelementptr i8, i8* %call1, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %220, <4 x double>* %224, align 8, !alias.scope !94, !noalias !99
  %index.next1151 = add i64 %index1150, 4
  %vec.ind.next1157 = add <4 x i32> %vec.ind1156, <i32 4, i32 4, i32 4, i32 4>
  %225 = icmp eq i64 %index.next1151, 32
  br i1 %225, label %polly.loop_exit768.2, label %vector.body1148, !llvm.loop !104

polly.loop_exit768.2:                             ; preds = %vector.body1148
  %polly.indvar_next764.2 = add nuw nsw i64 %polly.indvar763.2, 1
  %exitcond809.2.not = icmp eq i64 %polly.indvar_next764.2, 16
  br i1 %exitcond809.2.not, label %polly.loop_header760.1.2, label %polly.loop_header760.2

polly.loop_header760.1.2:                         ; preds = %polly.loop_exit768.2, %polly.loop_exit768.1.2
  %polly.indvar763.1.2 = phi i64 [ %polly.indvar_next764.1.2, %polly.loop_exit768.1.2 ], [ 0, %polly.loop_exit768.2 ]
  %226 = add nuw nsw i64 %polly.indvar763.1.2, 64
  %227 = mul nuw nsw i64 %226, 480
  %228 = trunc i64 %226 to i32
  %broadcast.splatinsert1170 = insertelement <4 x i32> poison, i32 %228, i32 0
  %broadcast.splat1171 = shufflevector <4 x i32> %broadcast.splatinsert1170, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %polly.loop_header760.1.2
  %index1164 = phi i64 [ 0, %polly.loop_header760.1.2 ], [ %index.next1165, %vector.body1162 ]
  %vec.ind1168 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header760.1.2 ], [ %vec.ind.next1169, %vector.body1162 ]
  %229 = add nuw nsw <4 x i64> %vec.ind1168, <i64 32, i64 32, i64 32, i64 32>
  %230 = trunc <4 x i64> %229 to <4 x i32>
  %231 = mul <4 x i32> %broadcast.splat1171, %230
  %232 = add <4 x i32> %231, <i32 1, i32 1, i32 1, i32 1>
  %233 = urem <4 x i32> %232, <i32 80, i32 80, i32 80, i32 80>
  %234 = sitofp <4 x i32> %233 to <4 x double>
  %235 = fmul fast <4 x double> %234, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %236 = extractelement <4 x i64> %229, i32 0
  %237 = shl i64 %236, 3
  %238 = add i64 %237, %227
  %239 = getelementptr i8, i8* %call1, i64 %238
  %240 = bitcast i8* %239 to <4 x double>*
  store <4 x double> %235, <4 x double>* %240, align 8, !alias.scope !94, !noalias !99
  %index.next1165 = add i64 %index1164, 4
  %vec.ind.next1169 = add <4 x i64> %vec.ind1168, <i64 4, i64 4, i64 4, i64 4>
  %241 = icmp eq i64 %index.next1165, 28
  br i1 %241, label %polly.loop_exit768.1.2, label %vector.body1162, !llvm.loop !105

polly.loop_exit768.1.2:                           ; preds = %vector.body1162
  %polly.indvar_next764.1.2 = add nuw nsw i64 %polly.indvar763.1.2, 1
  %exitcond809.1.2.not = icmp eq i64 %polly.indvar_next764.1.2, 16
  br i1 %exitcond809.1.2.not, label %init_array.exit, label %polly.loop_header760.1.2

polly.loop_header734.1:                           ; preds = %polly.loop_exit742, %polly.loop_exit742.1
  %polly.indvar737.1 = phi i64 [ %polly.indvar_next738.1, %polly.loop_exit742.1 ], [ 0, %polly.loop_exit742 ]
  %242 = mul nuw nsw i64 %polly.indvar737.1, 480
  %243 = trunc i64 %polly.indvar737.1 to i32
  %broadcast.splatinsert1040 = insertelement <4 x i32> poison, i32 %243, i32 0
  %broadcast.splat1041 = shufflevector <4 x i32> %broadcast.splatinsert1040, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1032

vector.body1032:                                  ; preds = %vector.body1032, %polly.loop_header734.1
  %index1034 = phi i64 [ 0, %polly.loop_header734.1 ], [ %index.next1035, %vector.body1032 ]
  %vec.ind1038 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1 ], [ %vec.ind.next1039, %vector.body1032 ]
  %244 = add nuw nsw <4 x i64> %vec.ind1038, <i64 32, i64 32, i64 32, i64 32>
  %245 = trunc <4 x i64> %244 to <4 x i32>
  %246 = mul <4 x i32> %broadcast.splat1041, %245
  %247 = add <4 x i32> %246, <i32 2, i32 2, i32 2, i32 2>
  %248 = urem <4 x i32> %247, <i32 60, i32 60, i32 60, i32 60>
  %249 = sitofp <4 x i32> %248 to <4 x double>
  %250 = fmul fast <4 x double> %249, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %251 = extractelement <4 x i64> %244, i32 0
  %252 = shl i64 %251, 3
  %253 = add i64 %252, %242
  %254 = getelementptr i8, i8* %call2, i64 %253
  %255 = bitcast i8* %254 to <4 x double>*
  store <4 x double> %250, <4 x double>* %255, align 8, !alias.scope !95, !noalias !97
  %index.next1035 = add i64 %index1034, 4
  %vec.ind.next1039 = add <4 x i64> %vec.ind1038, <i64 4, i64 4, i64 4, i64 4>
  %256 = icmp eq i64 %index.next1035, 28
  br i1 %256, label %polly.loop_exit742.1, label %vector.body1032, !llvm.loop !106

polly.loop_exit742.1:                             ; preds = %vector.body1032
  %polly.indvar_next738.1 = add nuw nsw i64 %polly.indvar737.1, 1
  %exitcond815.1.not = icmp eq i64 %polly.indvar_next738.1, 32
  br i1 %exitcond815.1.not, label %polly.loop_header734.1843, label %polly.loop_header734.1

polly.loop_header734.1843:                        ; preds = %polly.loop_exit742.1, %polly.loop_exit742.1854
  %polly.indvar737.1842 = phi i64 [ %polly.indvar_next738.1852, %polly.loop_exit742.1854 ], [ 0, %polly.loop_exit742.1 ]
  %257 = add nuw nsw i64 %polly.indvar737.1842, 32
  %258 = mul nuw nsw i64 %257, 480
  %259 = trunc i64 %257 to i32
  %broadcast.splatinsert1054 = insertelement <4 x i32> poison, i32 %259, i32 0
  %broadcast.splat1055 = shufflevector <4 x i32> %broadcast.splatinsert1054, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1044

vector.body1044:                                  ; preds = %vector.body1044, %polly.loop_header734.1843
  %index1046 = phi i64 [ 0, %polly.loop_header734.1843 ], [ %index.next1047, %vector.body1044 ]
  %vec.ind1052 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.1843 ], [ %vec.ind.next1053, %vector.body1044 ]
  %260 = mul <4 x i32> %vec.ind1052, %broadcast.splat1055
  %261 = add <4 x i32> %260, <i32 2, i32 2, i32 2, i32 2>
  %262 = urem <4 x i32> %261, <i32 60, i32 60, i32 60, i32 60>
  %263 = sitofp <4 x i32> %262 to <4 x double>
  %264 = fmul fast <4 x double> %263, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %265 = shl i64 %index1046, 3
  %266 = add i64 %265, %258
  %267 = getelementptr i8, i8* %call2, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %264, <4 x double>* %268, align 8, !alias.scope !95, !noalias !97
  %index.next1047 = add i64 %index1046, 4
  %vec.ind.next1053 = add <4 x i32> %vec.ind1052, <i32 4, i32 4, i32 4, i32 4>
  %269 = icmp eq i64 %index.next1047, 32
  br i1 %269, label %polly.loop_exit742.1854, label %vector.body1044, !llvm.loop !107

polly.loop_exit742.1854:                          ; preds = %vector.body1044
  %polly.indvar_next738.1852 = add nuw nsw i64 %polly.indvar737.1842, 1
  %exitcond815.1853.not = icmp eq i64 %polly.indvar_next738.1852, 32
  br i1 %exitcond815.1853.not, label %polly.loop_header734.1.1, label %polly.loop_header734.1843

polly.loop_header734.1.1:                         ; preds = %polly.loop_exit742.1854, %polly.loop_exit742.1.1
  %polly.indvar737.1.1 = phi i64 [ %polly.indvar_next738.1.1, %polly.loop_exit742.1.1 ], [ 0, %polly.loop_exit742.1854 ]
  %270 = add nuw nsw i64 %polly.indvar737.1.1, 32
  %271 = mul nuw nsw i64 %270, 480
  %272 = trunc i64 %270 to i32
  %broadcast.splatinsert1066 = insertelement <4 x i32> poison, i32 %272, i32 0
  %broadcast.splat1067 = shufflevector <4 x i32> %broadcast.splatinsert1066, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1058

vector.body1058:                                  ; preds = %vector.body1058, %polly.loop_header734.1.1
  %index1060 = phi i64 [ 0, %polly.loop_header734.1.1 ], [ %index.next1061, %vector.body1058 ]
  %vec.ind1064 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.1 ], [ %vec.ind.next1065, %vector.body1058 ]
  %273 = add nuw nsw <4 x i64> %vec.ind1064, <i64 32, i64 32, i64 32, i64 32>
  %274 = trunc <4 x i64> %273 to <4 x i32>
  %275 = mul <4 x i32> %broadcast.splat1067, %274
  %276 = add <4 x i32> %275, <i32 2, i32 2, i32 2, i32 2>
  %277 = urem <4 x i32> %276, <i32 60, i32 60, i32 60, i32 60>
  %278 = sitofp <4 x i32> %277 to <4 x double>
  %279 = fmul fast <4 x double> %278, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %280 = extractelement <4 x i64> %273, i32 0
  %281 = shl i64 %280, 3
  %282 = add i64 %281, %271
  %283 = getelementptr i8, i8* %call2, i64 %282
  %284 = bitcast i8* %283 to <4 x double>*
  store <4 x double> %279, <4 x double>* %284, align 8, !alias.scope !95, !noalias !97
  %index.next1061 = add i64 %index1060, 4
  %vec.ind.next1065 = add <4 x i64> %vec.ind1064, <i64 4, i64 4, i64 4, i64 4>
  %285 = icmp eq i64 %index.next1061, 28
  br i1 %285, label %polly.loop_exit742.1.1, label %vector.body1058, !llvm.loop !108

polly.loop_exit742.1.1:                           ; preds = %vector.body1058
  %polly.indvar_next738.1.1 = add nuw nsw i64 %polly.indvar737.1.1, 1
  %exitcond815.1.1.not = icmp eq i64 %polly.indvar_next738.1.1, 32
  br i1 %exitcond815.1.1.not, label %polly.loop_header734.2, label %polly.loop_header734.1.1

polly.loop_header734.2:                           ; preds = %polly.loop_exit742.1.1, %polly.loop_exit742.2
  %polly.indvar737.2 = phi i64 [ %polly.indvar_next738.2, %polly.loop_exit742.2 ], [ 0, %polly.loop_exit742.1.1 ]
  %286 = add nuw nsw i64 %polly.indvar737.2, 64
  %287 = mul nuw nsw i64 %286, 480
  %288 = trunc i64 %286 to i32
  %broadcast.splatinsert1080 = insertelement <4 x i32> poison, i32 %288, i32 0
  %broadcast.splat1081 = shufflevector <4 x i32> %broadcast.splatinsert1080, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1070

vector.body1070:                                  ; preds = %vector.body1070, %polly.loop_header734.2
  %index1072 = phi i64 [ 0, %polly.loop_header734.2 ], [ %index.next1073, %vector.body1070 ]
  %vec.ind1078 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header734.2 ], [ %vec.ind.next1079, %vector.body1070 ]
  %289 = mul <4 x i32> %vec.ind1078, %broadcast.splat1081
  %290 = add <4 x i32> %289, <i32 2, i32 2, i32 2, i32 2>
  %291 = urem <4 x i32> %290, <i32 60, i32 60, i32 60, i32 60>
  %292 = sitofp <4 x i32> %291 to <4 x double>
  %293 = fmul fast <4 x double> %292, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %294 = shl i64 %index1072, 3
  %295 = add i64 %294, %287
  %296 = getelementptr i8, i8* %call2, i64 %295
  %297 = bitcast i8* %296 to <4 x double>*
  store <4 x double> %293, <4 x double>* %297, align 8, !alias.scope !95, !noalias !97
  %index.next1073 = add i64 %index1072, 4
  %vec.ind.next1079 = add <4 x i32> %vec.ind1078, <i32 4, i32 4, i32 4, i32 4>
  %298 = icmp eq i64 %index.next1073, 32
  br i1 %298, label %polly.loop_exit742.2, label %vector.body1070, !llvm.loop !109

polly.loop_exit742.2:                             ; preds = %vector.body1070
  %polly.indvar_next738.2 = add nuw nsw i64 %polly.indvar737.2, 1
  %exitcond815.2.not = icmp eq i64 %polly.indvar_next738.2, 16
  br i1 %exitcond815.2.not, label %polly.loop_header734.1.2, label %polly.loop_header734.2

polly.loop_header734.1.2:                         ; preds = %polly.loop_exit742.2, %polly.loop_exit742.1.2
  %polly.indvar737.1.2 = phi i64 [ %polly.indvar_next738.1.2, %polly.loop_exit742.1.2 ], [ 0, %polly.loop_exit742.2 ]
  %299 = add nuw nsw i64 %polly.indvar737.1.2, 64
  %300 = mul nuw nsw i64 %299, 480
  %301 = trunc i64 %299 to i32
  %broadcast.splatinsert1092 = insertelement <4 x i32> poison, i32 %301, i32 0
  %broadcast.splat1093 = shufflevector <4 x i32> %broadcast.splatinsert1092, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1084

vector.body1084:                                  ; preds = %vector.body1084, %polly.loop_header734.1.2
  %index1086 = phi i64 [ 0, %polly.loop_header734.1.2 ], [ %index.next1087, %vector.body1084 ]
  %vec.ind1090 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header734.1.2 ], [ %vec.ind.next1091, %vector.body1084 ]
  %302 = add nuw nsw <4 x i64> %vec.ind1090, <i64 32, i64 32, i64 32, i64 32>
  %303 = trunc <4 x i64> %302 to <4 x i32>
  %304 = mul <4 x i32> %broadcast.splat1093, %303
  %305 = add <4 x i32> %304, <i32 2, i32 2, i32 2, i32 2>
  %306 = urem <4 x i32> %305, <i32 60, i32 60, i32 60, i32 60>
  %307 = sitofp <4 x i32> %306 to <4 x double>
  %308 = fmul fast <4 x double> %307, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %309 = extractelement <4 x i64> %302, i32 0
  %310 = shl i64 %309, 3
  %311 = add i64 %310, %300
  %312 = getelementptr i8, i8* %call2, i64 %311
  %313 = bitcast i8* %312 to <4 x double>*
  store <4 x double> %308, <4 x double>* %313, align 8, !alias.scope !95, !noalias !97
  %index.next1087 = add i64 %index1086, 4
  %vec.ind.next1091 = add <4 x i64> %vec.ind1090, <i64 4, i64 4, i64 4, i64 4>
  %314 = icmp eq i64 %index.next1087, 28
  br i1 %314, label %polly.loop_exit742.1.2, label %vector.body1084, !llvm.loop !110

polly.loop_exit742.1.2:                           ; preds = %vector.body1084
  %polly.indvar_next738.1.2 = add nuw nsw i64 %polly.indvar737.1.2, 1
  %exitcond815.1.2.not = icmp eq i64 %polly.indvar_next738.1.2, 16
  br i1 %exitcond815.1.2.not, label %polly.loop_header760, label %polly.loop_header734.1.2

polly.loop_header707.1:                           ; preds = %polly.loop_exit715, %polly.loop_exit715.1
  %polly.indvar710.1 = phi i64 [ %polly.indvar_next711.1, %polly.loop_exit715.1 ], [ 0, %polly.loop_exit715 ]
  %315 = mul nuw nsw i64 %polly.indvar710.1, 640
  %316 = trunc i64 %polly.indvar710.1 to i32
  %broadcast.splatinsert926 = insertelement <4 x i32> poison, i32 %316, i32 0
  %broadcast.splat927 = shufflevector <4 x i32> %broadcast.splatinsert926, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body918

vector.body918:                                   ; preds = %vector.body918, %polly.loop_header707.1
  %index920 = phi i64 [ 0, %polly.loop_header707.1 ], [ %index.next921, %vector.body918 ]
  %vec.ind924 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header707.1 ], [ %vec.ind.next925, %vector.body918 ]
  %317 = add nuw nsw <4 x i64> %vec.ind924, <i64 32, i64 32, i64 32, i64 32>
  %318 = trunc <4 x i64> %317 to <4 x i32>
  %319 = mul <4 x i32> %broadcast.splat927, %318
  %320 = add <4 x i32> %319, <i32 3, i32 3, i32 3, i32 3>
  %321 = urem <4 x i32> %320, <i32 80, i32 80, i32 80, i32 80>
  %322 = sitofp <4 x i32> %321 to <4 x double>
  %323 = fmul fast <4 x double> %322, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %324 = extractelement <4 x i64> %317, i32 0
  %325 = shl i64 %324, 3
  %326 = add nuw nsw i64 %325, %315
  %327 = getelementptr i8, i8* %call, i64 %326
  %328 = bitcast i8* %327 to <4 x double>*
  store <4 x double> %323, <4 x double>* %328, align 8, !alias.scope !91, !noalias !93
  %index.next921 = add i64 %index920, 4
  %vec.ind.next925 = add <4 x i64> %vec.ind924, <i64 4, i64 4, i64 4, i64 4>
  %329 = icmp eq i64 %index.next921, 32
  br i1 %329, label %polly.loop_exit715.1, label %vector.body918, !llvm.loop !111

polly.loop_exit715.1:                             ; preds = %vector.body918
  %polly.indvar_next711.1 = add nuw nsw i64 %polly.indvar710.1, 1
  %exitcond824.1.not = icmp eq i64 %polly.indvar_next711.1, 32
  br i1 %exitcond824.1.not, label %polly.loop_header707.2, label %polly.loop_header707.1

polly.loop_header707.2:                           ; preds = %polly.loop_exit715.1, %polly.loop_exit715.2
  %polly.indvar710.2 = phi i64 [ %polly.indvar_next711.2, %polly.loop_exit715.2 ], [ 0, %polly.loop_exit715.1 ]
  %330 = mul nuw nsw i64 %polly.indvar710.2, 640
  %331 = trunc i64 %polly.indvar710.2 to i32
  %broadcast.splatinsert938 = insertelement <4 x i32> poison, i32 %331, i32 0
  %broadcast.splat939 = shufflevector <4 x i32> %broadcast.splatinsert938, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body930

vector.body930:                                   ; preds = %vector.body930, %polly.loop_header707.2
  %index932 = phi i64 [ 0, %polly.loop_header707.2 ], [ %index.next933, %vector.body930 ]
  %vec.ind936 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header707.2 ], [ %vec.ind.next937, %vector.body930 ]
  %332 = add nuw nsw <4 x i64> %vec.ind936, <i64 64, i64 64, i64 64, i64 64>
  %333 = trunc <4 x i64> %332 to <4 x i32>
  %334 = mul <4 x i32> %broadcast.splat939, %333
  %335 = add <4 x i32> %334, <i32 3, i32 3, i32 3, i32 3>
  %336 = urem <4 x i32> %335, <i32 80, i32 80, i32 80, i32 80>
  %337 = sitofp <4 x i32> %336 to <4 x double>
  %338 = fmul fast <4 x double> %337, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %339 = extractelement <4 x i64> %332, i32 0
  %340 = shl i64 %339, 3
  %341 = add nuw nsw i64 %340, %330
  %342 = getelementptr i8, i8* %call, i64 %341
  %343 = bitcast i8* %342 to <4 x double>*
  store <4 x double> %338, <4 x double>* %343, align 8, !alias.scope !91, !noalias !93
  %index.next933 = add i64 %index932, 4
  %vec.ind.next937 = add <4 x i64> %vec.ind936, <i64 4, i64 4, i64 4, i64 4>
  %344 = icmp eq i64 %index.next933, 16
  br i1 %344, label %polly.loop_exit715.2, label %vector.body930, !llvm.loop !112

polly.loop_exit715.2:                             ; preds = %vector.body930
  %polly.indvar_next711.2 = add nuw nsw i64 %polly.indvar710.2, 1
  %exitcond824.2.not = icmp eq i64 %polly.indvar_next711.2, 32
  br i1 %exitcond824.2.not, label %polly.loop_header707.1857, label %polly.loop_header707.2

polly.loop_header707.1857:                        ; preds = %polly.loop_exit715.2, %polly.loop_exit715.1868
  %polly.indvar710.1856 = phi i64 [ %polly.indvar_next711.1866, %polly.loop_exit715.1868 ], [ 0, %polly.loop_exit715.2 ]
  %345 = add nuw nsw i64 %polly.indvar710.1856, 32
  %346 = mul nuw nsw i64 %345, 640
  %347 = trunc i64 %345 to i32
  %broadcast.splatinsert952 = insertelement <4 x i32> poison, i32 %347, i32 0
  %broadcast.splat953 = shufflevector <4 x i32> %broadcast.splatinsert952, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %polly.loop_header707.1857
  %index944 = phi i64 [ 0, %polly.loop_header707.1857 ], [ %index.next945, %vector.body942 ]
  %vec.ind950 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header707.1857 ], [ %vec.ind.next951, %vector.body942 ]
  %348 = mul <4 x i32> %vec.ind950, %broadcast.splat953
  %349 = add <4 x i32> %348, <i32 3, i32 3, i32 3, i32 3>
  %350 = urem <4 x i32> %349, <i32 80, i32 80, i32 80, i32 80>
  %351 = sitofp <4 x i32> %350 to <4 x double>
  %352 = fmul fast <4 x double> %351, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %353 = shl i64 %index944, 3
  %354 = add nuw nsw i64 %353, %346
  %355 = getelementptr i8, i8* %call, i64 %354
  %356 = bitcast i8* %355 to <4 x double>*
  store <4 x double> %352, <4 x double>* %356, align 8, !alias.scope !91, !noalias !93
  %index.next945 = add i64 %index944, 4
  %vec.ind.next951 = add <4 x i32> %vec.ind950, <i32 4, i32 4, i32 4, i32 4>
  %357 = icmp eq i64 %index.next945, 32
  br i1 %357, label %polly.loop_exit715.1868, label %vector.body942, !llvm.loop !113

polly.loop_exit715.1868:                          ; preds = %vector.body942
  %polly.indvar_next711.1866 = add nuw nsw i64 %polly.indvar710.1856, 1
  %exitcond824.1867.not = icmp eq i64 %polly.indvar_next711.1866, 32
  br i1 %exitcond824.1867.not, label %polly.loop_header707.1.1, label %polly.loop_header707.1857

polly.loop_header707.1.1:                         ; preds = %polly.loop_exit715.1868, %polly.loop_exit715.1.1
  %polly.indvar710.1.1 = phi i64 [ %polly.indvar_next711.1.1, %polly.loop_exit715.1.1 ], [ 0, %polly.loop_exit715.1868 ]
  %358 = add nuw nsw i64 %polly.indvar710.1.1, 32
  %359 = mul nuw nsw i64 %358, 640
  %360 = trunc i64 %358 to i32
  %broadcast.splatinsert964 = insertelement <4 x i32> poison, i32 %360, i32 0
  %broadcast.splat965 = shufflevector <4 x i32> %broadcast.splatinsert964, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body956

vector.body956:                                   ; preds = %vector.body956, %polly.loop_header707.1.1
  %index958 = phi i64 [ 0, %polly.loop_header707.1.1 ], [ %index.next959, %vector.body956 ]
  %vec.ind962 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header707.1.1 ], [ %vec.ind.next963, %vector.body956 ]
  %361 = add nuw nsw <4 x i64> %vec.ind962, <i64 32, i64 32, i64 32, i64 32>
  %362 = trunc <4 x i64> %361 to <4 x i32>
  %363 = mul <4 x i32> %broadcast.splat965, %362
  %364 = add <4 x i32> %363, <i32 3, i32 3, i32 3, i32 3>
  %365 = urem <4 x i32> %364, <i32 80, i32 80, i32 80, i32 80>
  %366 = sitofp <4 x i32> %365 to <4 x double>
  %367 = fmul fast <4 x double> %366, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %368 = extractelement <4 x i64> %361, i32 0
  %369 = shl i64 %368, 3
  %370 = add nuw nsw i64 %369, %359
  %371 = getelementptr i8, i8* %call, i64 %370
  %372 = bitcast i8* %371 to <4 x double>*
  store <4 x double> %367, <4 x double>* %372, align 8, !alias.scope !91, !noalias !93
  %index.next959 = add i64 %index958, 4
  %vec.ind.next963 = add <4 x i64> %vec.ind962, <i64 4, i64 4, i64 4, i64 4>
  %373 = icmp eq i64 %index.next959, 32
  br i1 %373, label %polly.loop_exit715.1.1, label %vector.body956, !llvm.loop !114

polly.loop_exit715.1.1:                           ; preds = %vector.body956
  %polly.indvar_next711.1.1 = add nuw nsw i64 %polly.indvar710.1.1, 1
  %exitcond824.1.1.not = icmp eq i64 %polly.indvar_next711.1.1, 32
  br i1 %exitcond824.1.1.not, label %polly.loop_header707.2.1, label %polly.loop_header707.1.1

polly.loop_header707.2.1:                         ; preds = %polly.loop_exit715.1.1, %polly.loop_exit715.2.1
  %polly.indvar710.2.1 = phi i64 [ %polly.indvar_next711.2.1, %polly.loop_exit715.2.1 ], [ 0, %polly.loop_exit715.1.1 ]
  %374 = add nuw nsw i64 %polly.indvar710.2.1, 32
  %375 = mul nuw nsw i64 %374, 640
  %376 = trunc i64 %374 to i32
  %broadcast.splatinsert976 = insertelement <4 x i32> poison, i32 %376, i32 0
  %broadcast.splat977 = shufflevector <4 x i32> %broadcast.splatinsert976, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body968

vector.body968:                                   ; preds = %vector.body968, %polly.loop_header707.2.1
  %index970 = phi i64 [ 0, %polly.loop_header707.2.1 ], [ %index.next971, %vector.body968 ]
  %vec.ind974 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header707.2.1 ], [ %vec.ind.next975, %vector.body968 ]
  %377 = add nuw nsw <4 x i64> %vec.ind974, <i64 64, i64 64, i64 64, i64 64>
  %378 = trunc <4 x i64> %377 to <4 x i32>
  %379 = mul <4 x i32> %broadcast.splat977, %378
  %380 = add <4 x i32> %379, <i32 3, i32 3, i32 3, i32 3>
  %381 = urem <4 x i32> %380, <i32 80, i32 80, i32 80, i32 80>
  %382 = sitofp <4 x i32> %381 to <4 x double>
  %383 = fmul fast <4 x double> %382, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %384 = extractelement <4 x i64> %377, i32 0
  %385 = shl i64 %384, 3
  %386 = add nuw nsw i64 %385, %375
  %387 = getelementptr i8, i8* %call, i64 %386
  %388 = bitcast i8* %387 to <4 x double>*
  store <4 x double> %383, <4 x double>* %388, align 8, !alias.scope !91, !noalias !93
  %index.next971 = add i64 %index970, 4
  %vec.ind.next975 = add <4 x i64> %vec.ind974, <i64 4, i64 4, i64 4, i64 4>
  %389 = icmp eq i64 %index.next971, 16
  br i1 %389, label %polly.loop_exit715.2.1, label %vector.body968, !llvm.loop !115

polly.loop_exit715.2.1:                           ; preds = %vector.body968
  %polly.indvar_next711.2.1 = add nuw nsw i64 %polly.indvar710.2.1, 1
  %exitcond824.2.1.not = icmp eq i64 %polly.indvar_next711.2.1, 32
  br i1 %exitcond824.2.1.not, label %polly.loop_header707.2871, label %polly.loop_header707.2.1

polly.loop_header707.2871:                        ; preds = %polly.loop_exit715.2.1, %polly.loop_exit715.2882
  %polly.indvar710.2870 = phi i64 [ %polly.indvar_next711.2880, %polly.loop_exit715.2882 ], [ 0, %polly.loop_exit715.2.1 ]
  %390 = add nuw nsw i64 %polly.indvar710.2870, 64
  %391 = mul nuw nsw i64 %390, 640
  %392 = trunc i64 %390 to i32
  %broadcast.splatinsert990 = insertelement <4 x i32> poison, i32 %392, i32 0
  %broadcast.splat991 = shufflevector <4 x i32> %broadcast.splatinsert990, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body980

vector.body980:                                   ; preds = %vector.body980, %polly.loop_header707.2871
  %index982 = phi i64 [ 0, %polly.loop_header707.2871 ], [ %index.next983, %vector.body980 ]
  %vec.ind988 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header707.2871 ], [ %vec.ind.next989, %vector.body980 ]
  %393 = mul <4 x i32> %vec.ind988, %broadcast.splat991
  %394 = add <4 x i32> %393, <i32 3, i32 3, i32 3, i32 3>
  %395 = urem <4 x i32> %394, <i32 80, i32 80, i32 80, i32 80>
  %396 = sitofp <4 x i32> %395 to <4 x double>
  %397 = fmul fast <4 x double> %396, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %398 = shl i64 %index982, 3
  %399 = add nuw nsw i64 %398, %391
  %400 = getelementptr i8, i8* %call, i64 %399
  %401 = bitcast i8* %400 to <4 x double>*
  store <4 x double> %397, <4 x double>* %401, align 8, !alias.scope !91, !noalias !93
  %index.next983 = add i64 %index982, 4
  %vec.ind.next989 = add <4 x i32> %vec.ind988, <i32 4, i32 4, i32 4, i32 4>
  %402 = icmp eq i64 %index.next983, 32
  br i1 %402, label %polly.loop_exit715.2882, label %vector.body980, !llvm.loop !116

polly.loop_exit715.2882:                          ; preds = %vector.body980
  %polly.indvar_next711.2880 = add nuw nsw i64 %polly.indvar710.2870, 1
  %exitcond824.2881.not = icmp eq i64 %polly.indvar_next711.2880, 16
  br i1 %exitcond824.2881.not, label %polly.loop_header707.1.2, label %polly.loop_header707.2871

polly.loop_header707.1.2:                         ; preds = %polly.loop_exit715.2882, %polly.loop_exit715.1.2
  %polly.indvar710.1.2 = phi i64 [ %polly.indvar_next711.1.2, %polly.loop_exit715.1.2 ], [ 0, %polly.loop_exit715.2882 ]
  %403 = add nuw nsw i64 %polly.indvar710.1.2, 64
  %404 = mul nuw nsw i64 %403, 640
  %405 = trunc i64 %403 to i32
  %broadcast.splatinsert1002 = insertelement <4 x i32> poison, i32 %405, i32 0
  %broadcast.splat1003 = shufflevector <4 x i32> %broadcast.splatinsert1002, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body994

vector.body994:                                   ; preds = %vector.body994, %polly.loop_header707.1.2
  %index996 = phi i64 [ 0, %polly.loop_header707.1.2 ], [ %index.next997, %vector.body994 ]
  %vec.ind1000 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header707.1.2 ], [ %vec.ind.next1001, %vector.body994 ]
  %406 = add nuw nsw <4 x i64> %vec.ind1000, <i64 32, i64 32, i64 32, i64 32>
  %407 = trunc <4 x i64> %406 to <4 x i32>
  %408 = mul <4 x i32> %broadcast.splat1003, %407
  %409 = add <4 x i32> %408, <i32 3, i32 3, i32 3, i32 3>
  %410 = urem <4 x i32> %409, <i32 80, i32 80, i32 80, i32 80>
  %411 = sitofp <4 x i32> %410 to <4 x double>
  %412 = fmul fast <4 x double> %411, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %413 = extractelement <4 x i64> %406, i32 0
  %414 = shl i64 %413, 3
  %415 = add nuw nsw i64 %414, %404
  %416 = getelementptr i8, i8* %call, i64 %415
  %417 = bitcast i8* %416 to <4 x double>*
  store <4 x double> %412, <4 x double>* %417, align 8, !alias.scope !91, !noalias !93
  %index.next997 = add i64 %index996, 4
  %vec.ind.next1001 = add <4 x i64> %vec.ind1000, <i64 4, i64 4, i64 4, i64 4>
  %418 = icmp eq i64 %index.next997, 32
  br i1 %418, label %polly.loop_exit715.1.2, label %vector.body994, !llvm.loop !117

polly.loop_exit715.1.2:                           ; preds = %vector.body994
  %polly.indvar_next711.1.2 = add nuw nsw i64 %polly.indvar710.1.2, 1
  %exitcond824.1.2.not = icmp eq i64 %polly.indvar_next711.1.2, 16
  br i1 %exitcond824.1.2.not, label %polly.loop_header707.2.2, label %polly.loop_header707.1.2

polly.loop_header707.2.2:                         ; preds = %polly.loop_exit715.1.2, %polly.loop_exit715.2.2
  %polly.indvar710.2.2 = phi i64 [ %polly.indvar_next711.2.2, %polly.loop_exit715.2.2 ], [ 0, %polly.loop_exit715.1.2 ]
  %419 = add nuw nsw i64 %polly.indvar710.2.2, 64
  %420 = mul nuw nsw i64 %419, 640
  %421 = trunc i64 %419 to i32
  %broadcast.splatinsert1014 = insertelement <4 x i32> poison, i32 %421, i32 0
  %broadcast.splat1015 = shufflevector <4 x i32> %broadcast.splatinsert1014, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1006

vector.body1006:                                  ; preds = %vector.body1006, %polly.loop_header707.2.2
  %index1008 = phi i64 [ 0, %polly.loop_header707.2.2 ], [ %index.next1009, %vector.body1006 ]
  %vec.ind1012 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header707.2.2 ], [ %vec.ind.next1013, %vector.body1006 ]
  %422 = add nuw nsw <4 x i64> %vec.ind1012, <i64 64, i64 64, i64 64, i64 64>
  %423 = trunc <4 x i64> %422 to <4 x i32>
  %424 = mul <4 x i32> %broadcast.splat1015, %423
  %425 = add <4 x i32> %424, <i32 3, i32 3, i32 3, i32 3>
  %426 = urem <4 x i32> %425, <i32 80, i32 80, i32 80, i32 80>
  %427 = sitofp <4 x i32> %426 to <4 x double>
  %428 = fmul fast <4 x double> %427, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %429 = extractelement <4 x i64> %422, i32 0
  %430 = shl i64 %429, 3
  %431 = add nuw nsw i64 %430, %420
  %432 = getelementptr i8, i8* %call, i64 %431
  %433 = bitcast i8* %432 to <4 x double>*
  store <4 x double> %428, <4 x double>* %433, align 8, !alias.scope !91, !noalias !93
  %index.next1009 = add i64 %index1008, 4
  %vec.ind.next1013 = add <4 x i64> %vec.ind1012, <i64 4, i64 4, i64 4, i64 4>
  %434 = icmp eq i64 %index.next1009, 16
  br i1 %434, label %polly.loop_exit715.2.2, label %vector.body1006, !llvm.loop !118

polly.loop_exit715.2.2:                           ; preds = %vector.body1006
  %polly.indvar_next711.2.2 = add nuw nsw i64 %polly.indvar710.2.2, 1
  %exitcond824.2.2.not = icmp eq i64 %polly.indvar_next711.2.2, 16
  br i1 %exitcond824.2.2.not, label %polly.loop_header734, label %polly.loop_header707.2.2
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
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 100}
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
!48 = !{!"llvm.loop.tile.size", i32 80}
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
