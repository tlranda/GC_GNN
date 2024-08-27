; ModuleID = 'syr2k_recreations//mmp_syr2k_S_198.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_198.c"
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
  %call699 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1560 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1560, %call2
  %polly.access.call2580 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2580, %call1
  %2 = or i1 %0, %1
  %polly.access.call600 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call600, %call2
  %4 = icmp ule i8* %polly.access.call2580, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call600, %call1
  %8 = icmp ule i8* %polly.access.call1560, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header685, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep886 = getelementptr i8, i8* %call2, i64 %12
  %scevgep885 = getelementptr i8, i8* %call2, i64 %11
  %scevgep884 = getelementptr i8, i8* %call1, i64 %12
  %scevgep883 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep883, %scevgep886
  %bound1 = icmp ult i8* %scevgep885, %scevgep884
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
  br i1 %exitcond18.not.i, label %vector.ph890, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph890:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert897 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat898 = shufflevector <4 x i64> %broadcast.splatinsert897, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body889

vector.body889:                                   ; preds = %vector.body889, %vector.ph890
  %index891 = phi i64 [ 0, %vector.ph890 ], [ %index.next892, %vector.body889 ]
  %vec.ind895 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph890 ], [ %vec.ind.next896, %vector.body889 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind895, %broadcast.splat898
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv7.i, i64 %index891
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next892 = add i64 %index891, 4
  %vec.ind.next896 = add <4 x i64> %vec.ind895, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next892, 80
  br i1 %40, label %for.inc41.i, label %vector.body889, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body889
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph890, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit746.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header483, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1246, label %vector.ph1172

vector.ph1172:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %vector.ph1172
  %index1173 = phi i64 [ 0, %vector.ph1172 ], [ %index.next1174, %vector.body1171 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i, i64 %index1173
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1174 = add i64 %index1173, 4
  %46 = icmp eq i64 %index.next1174, %n.vec
  br i1 %46, label %middle.block1169, label %vector.body1171, !llvm.loop !18

middle.block1169:                                 ; preds = %vector.body1171
  %cmp.n1176 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1176, label %for.inc6.i, label %for.body3.i46.preheader1246

for.body3.i46.preheader1246:                      ; preds = %for.body3.i46.preheader, %middle.block1169
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1169 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1246, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1246 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1169, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !39

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit507
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header333, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1192 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1192, label %for.body3.i60.preheader1244, label %vector.ph1193

vector.ph1193:                                    ; preds = %for.body3.i60.preheader
  %n.vec1195 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %vector.ph1193
  %index1196 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1197, %vector.body1191 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i52, i64 %index1196
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1200 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1200, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1197 = add i64 %index1196, 4
  %57 = icmp eq i64 %index.next1197, %n.vec1195
  br i1 %57, label %middle.block1189, label %vector.body1191, !llvm.loop !50

middle.block1189:                                 ; preds = %vector.body1191
  %cmp.n1199 = icmp eq i64 %indvars.iv21.i52, %n.vec1195
  br i1 %cmp.n1199, label %for.inc6.i63, label %for.body3.i60.preheader1244

for.body3.i60.preheader1244:                      ; preds = %for.body3.i60.preheader, %middle.block1189
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1195, %middle.block1189 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1244, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1244 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !51

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1189, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !39

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit357
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1218 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1218, label %for.body3.i99.preheader1242, label %vector.ph1219

vector.ph1219:                                    ; preds = %for.body3.i99.preheader
  %n.vec1221 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %vector.ph1219
  %index1222 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1223, %vector.body1217 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i91, i64 %index1222
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1226 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1226, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1223 = add i64 %index1222, 4
  %68 = icmp eq i64 %index.next1223, %n.vec1221
  br i1 %68, label %middle.block1215, label %vector.body1217, !llvm.loop !52

middle.block1215:                                 ; preds = %vector.body1217
  %cmp.n1225 = icmp eq i64 %indvars.iv21.i91, %n.vec1221
  br i1 %cmp.n1225, label %for.inc6.i102, label %for.body3.i99.preheader1242

for.body3.i99.preheader1242:                      ; preds = %for.body3.i99.preheader, %middle.block1215
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1221, %middle.block1215 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1242, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1242 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !53

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1215, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !39

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !54
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !56

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !57

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1230 = phi i64 [ %indvar.next1231, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1230, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1232 = icmp ult i64 %88, 4
  br i1 %min.iters.check1232, label %polly.loop_header191.preheader, label %vector.ph1233

vector.ph1233:                                    ; preds = %polly.loop_header
  %n.vec1235 = and i64 %88, -4
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %vector.ph1233
  %index1236 = phi i64 [ 0, %vector.ph1233 ], [ %index.next1237, %vector.body1229 ]
  %90 = shl nuw nsw i64 %index1236, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1240 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !58, !noalias !60
  %93 = fmul fast <4 x double> %wide.load1240, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !58, !noalias !60
  %index.next1237 = add i64 %index1236, 4
  %95 = icmp eq i64 %index.next1237, %n.vec1235
  br i1 %95, label %middle.block1227, label %vector.body1229, !llvm.loop !63

middle.block1227:                                 ; preds = %vector.body1229
  %cmp.n1239 = icmp eq i64 %88, %n.vec1235
  br i1 %cmp.n1239, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1227
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1235, %middle.block1227 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1227
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond768.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1231 = add i64 %indvar1230, 1
  br i1 %exitcond768.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond767.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond767.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !64

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = shl i64 %polly.indvar202, 5
  %98 = shl i64 %polly.indvar202, 5
  %99 = shl i64 %polly.indvar202, 5
  %100 = or i64 %99, 8
  %101 = shl i64 %polly.indvar202, 5
  %102 = or i64 %101, 16
  %103 = or i64 %97, 24
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond766.not = icmp eq i64 %polly.indvar_next203, 15
  br i1 %exitcond766.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv762 = phi i64 [ %indvars.iv.next763, %polly.loop_exit213 ], [ 80, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %104 = shl nuw nsw i64 %polly.indvar208, 2
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit225.3
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next763 = add nsw i64 %indvars.iv762, -4
  %exitcond765.not = icmp eq i64 %polly.indvar_next209, 20
  br i1 %exitcond765.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit225.3, %polly.loop_header205
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit225.3 ], [ 0, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit225.3 ], [ %104, %polly.loop_header205 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 3)
  %105 = mul nuw nsw i64 %polly.indvar214, 480
  %scevgep232 = getelementptr i8, i8* %call2, i64 %105
  %scevgep239 = getelementptr i8, i8* %call1, i64 %105
  %106 = mul nuw nsw i64 %polly.indvar214, 640
  %scevgep243 = getelementptr i8, i8* %call, i64 %106
  %scevgep233 = getelementptr i8, i8* %scevgep232, i64 %98
  %scevgep233234 = bitcast i8* %scevgep233 to double*
  %_p_scalar_235 = load double, double* %scevgep233234, align 8, !alias.scope !62, !noalias !66
  %scevgep240 = getelementptr i8, i8* %scevgep239, i64 %98
  %scevgep240241 = bitcast i8* %scevgep240 to double*
  %_p_scalar_242 = load double, double* %scevgep240241, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223
  %scevgep233.1 = getelementptr i8, i8* %scevgep232, i64 %100
  %scevgep233234.1 = bitcast i8* %scevgep233.1 to double*
  %_p_scalar_235.1 = load double, double* %scevgep233234.1, align 8, !alias.scope !62, !noalias !66
  %scevgep240.1 = getelementptr i8, i8* %scevgep239, i64 %100
  %scevgep240241.1 = bitcast i8* %scevgep240.1 to double*
  %_p_scalar_242.1 = load double, double* %scevgep240241.1, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223.1

polly.loop_header223:                             ; preds = %polly.loop_header223, %polly.loop_header211
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next227, %polly.loop_header223 ]
  %107 = add nuw nsw i64 %polly.indvar226, %104
  %108 = mul nuw nsw i64 %107, 480
  %109 = add nuw nsw i64 %108, %98
  %scevgep229 = getelementptr i8, i8* %call1, i64 %109
  %scevgep229230 = bitcast i8* %scevgep229 to double*
  %_p_scalar_231 = load double, double* %scevgep229230, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112 = fmul fast double %_p_scalar_235, %_p_scalar_231
  %scevgep236 = getelementptr i8, i8* %call2, i64 %109
  %scevgep236237 = bitcast i8* %scevgep236 to double*
  %_p_scalar_238 = load double, double* %scevgep236237, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114 = fmul fast double %_p_scalar_242, %_p_scalar_238
  %110 = shl i64 %107, 3
  %scevgep244 = getelementptr i8, i8* %scevgep243, i64 %110
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_246
  store double %p_add42.i118, double* %scevgep244245, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar226, %smin
  br i1 %exitcond.not, label %polly.loop_exit225, label %polly.loop_header223

polly.loop_header333:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit341
  %indvar1204 = phi i64 [ %indvar.next1205, %polly.loop_exit341 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar336 = phi i64 [ %polly.indvar_next337, %polly.loop_exit341 ], [ 1, %kernel_syr2k.exit ]
  %111 = add i64 %indvar1204, 1
  %112 = mul nuw nsw i64 %polly.indvar336, 640
  %scevgep345 = getelementptr i8, i8* %call, i64 %112
  %min.iters.check1206 = icmp ult i64 %111, 4
  br i1 %min.iters.check1206, label %polly.loop_header339.preheader, label %vector.ph1207

vector.ph1207:                                    ; preds = %polly.loop_header333
  %n.vec1209 = and i64 %111, -4
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %vector.ph1207
  %index1210 = phi i64 [ 0, %vector.ph1207 ], [ %index.next1211, %vector.body1203 ]
  %113 = shl nuw nsw i64 %index1210, 3
  %114 = getelementptr i8, i8* %scevgep345, i64 %113
  %115 = bitcast i8* %114 to <4 x double>*
  %wide.load1214 = load <4 x double>, <4 x double>* %115, align 8, !alias.scope !68, !noalias !70
  %116 = fmul fast <4 x double> %wide.load1214, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %117 = bitcast i8* %114 to <4 x double>*
  store <4 x double> %116, <4 x double>* %117, align 8, !alias.scope !68, !noalias !70
  %index.next1211 = add i64 %index1210, 4
  %118 = icmp eq i64 %index.next1211, %n.vec1209
  br i1 %118, label %middle.block1201, label %vector.body1203, !llvm.loop !73

middle.block1201:                                 ; preds = %vector.body1203
  %cmp.n1213 = icmp eq i64 %111, %n.vec1209
  br i1 %cmp.n1213, label %polly.loop_exit341, label %polly.loop_header339.preheader

polly.loop_header339.preheader:                   ; preds = %polly.loop_header333, %middle.block1201
  %polly.indvar342.ph = phi i64 [ 0, %polly.loop_header333 ], [ %n.vec1209, %middle.block1201 ]
  br label %polly.loop_header339

polly.loop_exit341:                               ; preds = %polly.loop_header339, %middle.block1201
  %polly.indvar_next337 = add nuw nsw i64 %polly.indvar336, 1
  %exitcond780.not = icmp eq i64 %polly.indvar_next337, 80
  %indvar.next1205 = add i64 %indvar1204, 1
  br i1 %exitcond780.not, label %polly.loop_header349, label %polly.loop_header333

polly.loop_header339:                             ; preds = %polly.loop_header339.preheader, %polly.loop_header339
  %polly.indvar342 = phi i64 [ %polly.indvar_next343, %polly.loop_header339 ], [ %polly.indvar342.ph, %polly.loop_header339.preheader ]
  %119 = shl nuw nsw i64 %polly.indvar342, 3
  %scevgep346 = getelementptr i8, i8* %scevgep345, i64 %119
  %scevgep346347 = bitcast i8* %scevgep346 to double*
  %_p_scalar_348 = load double, double* %scevgep346347, align 8, !alias.scope !68, !noalias !70
  %p_mul.i57 = fmul fast double %_p_scalar_348, 1.200000e+00
  store double %p_mul.i57, double* %scevgep346347, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next343 = add nuw nsw i64 %polly.indvar342, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next343, %polly.indvar336
  br i1 %exitcond779.not, label %polly.loop_exit341, label %polly.loop_header339, !llvm.loop !74

polly.loop_header349:                             ; preds = %polly.loop_exit341, %polly.loop_exit357
  %polly.indvar352 = phi i64 [ %polly.indvar_next353, %polly.loop_exit357 ], [ 0, %polly.loop_exit341 ]
  %120 = shl i64 %polly.indvar352, 5
  %121 = shl i64 %polly.indvar352, 5
  %122 = shl i64 %polly.indvar352, 5
  %123 = or i64 %122, 8
  %124 = shl i64 %polly.indvar352, 5
  %125 = or i64 %124, 16
  %126 = or i64 %120, 24
  br label %polly.loop_header355

polly.loop_exit357:                               ; preds = %polly.loop_exit363
  %polly.indvar_next353 = add nuw nsw i64 %polly.indvar352, 1
  %exitcond778.not = icmp eq i64 %polly.indvar_next353, 15
  br i1 %exitcond778.not, label %kernel_syr2k.exit90, label %polly.loop_header349

polly.loop_header355:                             ; preds = %polly.loop_exit363, %polly.loop_header349
  %indvars.iv774 = phi i64 [ %indvars.iv.next775, %polly.loop_exit363 ], [ 80, %polly.loop_header349 ]
  %polly.indvar358 = phi i64 [ %polly.indvar_next359, %polly.loop_exit363 ], [ 0, %polly.loop_header349 ]
  %127 = shl nuw nsw i64 %polly.indvar358, 2
  br label %polly.loop_header361

polly.loop_exit363:                               ; preds = %polly.loop_exit375.3
  %polly.indvar_next359 = add nuw nsw i64 %polly.indvar358, 1
  %indvars.iv.next775 = add nsw i64 %indvars.iv774, -4
  %exitcond777.not = icmp eq i64 %polly.indvar_next359, 20
  br i1 %exitcond777.not, label %polly.loop_exit357, label %polly.loop_header355

polly.loop_header361:                             ; preds = %polly.loop_exit375.3, %polly.loop_header355
  %indvars.iv769 = phi i64 [ %indvars.iv.next770, %polly.loop_exit375.3 ], [ 0, %polly.loop_header355 ]
  %polly.indvar364 = phi i64 [ %polly.indvar_next365, %polly.loop_exit375.3 ], [ %127, %polly.loop_header355 ]
  %smin771 = call i64 @llvm.smin.i64(i64 %indvars.iv769, i64 3)
  %128 = mul nuw nsw i64 %polly.indvar364, 480
  %scevgep382 = getelementptr i8, i8* %call2, i64 %128
  %scevgep389 = getelementptr i8, i8* %call1, i64 %128
  %129 = mul nuw nsw i64 %polly.indvar364, 640
  %scevgep393 = getelementptr i8, i8* %call, i64 %129
  %scevgep383 = getelementptr i8, i8* %scevgep382, i64 %121
  %scevgep383384 = bitcast i8* %scevgep383 to double*
  %_p_scalar_385 = load double, double* %scevgep383384, align 8, !alias.scope !72, !noalias !75
  %scevgep390 = getelementptr i8, i8* %scevgep389, i64 %121
  %scevgep390391 = bitcast i8* %scevgep390 to double*
  %_p_scalar_392 = load double, double* %scevgep390391, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373
  %scevgep383.1 = getelementptr i8, i8* %scevgep382, i64 %123
  %scevgep383384.1 = bitcast i8* %scevgep383.1 to double*
  %_p_scalar_385.1 = load double, double* %scevgep383384.1, align 8, !alias.scope !72, !noalias !75
  %scevgep390.1 = getelementptr i8, i8* %scevgep389, i64 %123
  %scevgep390391.1 = bitcast i8* %scevgep390.1 to double*
  %_p_scalar_392.1 = load double, double* %scevgep390391.1, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header373.1

polly.loop_header373:                             ; preds = %polly.loop_header373, %polly.loop_header361
  %polly.indvar376 = phi i64 [ 0, %polly.loop_header361 ], [ %polly.indvar_next377, %polly.loop_header373 ]
  %130 = add nuw nsw i64 %polly.indvar376, %127
  %131 = mul nuw nsw i64 %130, 480
  %132 = add nuw nsw i64 %131, %121
  %scevgep379 = getelementptr i8, i8* %call1, i64 %132
  %scevgep379380 = bitcast i8* %scevgep379 to double*
  %_p_scalar_381 = load double, double* %scevgep379380, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73 = fmul fast double %_p_scalar_385, %_p_scalar_381
  %scevgep386 = getelementptr i8, i8* %call2, i64 %132
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75 = fmul fast double %_p_scalar_392, %_p_scalar_388
  %133 = shl i64 %130, 3
  %scevgep394 = getelementptr i8, i8* %scevgep393, i64 %133
  %scevgep394395 = bitcast i8* %scevgep394 to double*
  %_p_scalar_396 = load double, double* %scevgep394395, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_396
  store double %p_add42.i79, double* %scevgep394395, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond772.not = icmp eq i64 %polly.indvar376, %smin771
  br i1 %exitcond772.not, label %polly.loop_exit375, label %polly.loop_header373

polly.loop_header483:                             ; preds = %init_array.exit, %polly.loop_exit491
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit491 ], [ 0, %init_array.exit ]
  %polly.indvar486 = phi i64 [ %polly.indvar_next487, %polly.loop_exit491 ], [ 1, %init_array.exit ]
  %134 = add i64 %indvar, 1
  %135 = mul nuw nsw i64 %polly.indvar486, 640
  %scevgep495 = getelementptr i8, i8* %call, i64 %135
  %min.iters.check1180 = icmp ult i64 %134, 4
  br i1 %min.iters.check1180, label %polly.loop_header489.preheader, label %vector.ph1181

vector.ph1181:                                    ; preds = %polly.loop_header483
  %n.vec1183 = and i64 %134, -4
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %vector.ph1181
  %index1184 = phi i64 [ 0, %vector.ph1181 ], [ %index.next1185, %vector.body1179 ]
  %136 = shl nuw nsw i64 %index1184, 3
  %137 = getelementptr i8, i8* %scevgep495, i64 %136
  %138 = bitcast i8* %137 to <4 x double>*
  %wide.load1188 = load <4 x double>, <4 x double>* %138, align 8, !alias.scope !77, !noalias !79
  %139 = fmul fast <4 x double> %wide.load1188, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %140 = bitcast i8* %137 to <4 x double>*
  store <4 x double> %139, <4 x double>* %140, align 8, !alias.scope !77, !noalias !79
  %index.next1185 = add i64 %index1184, 4
  %141 = icmp eq i64 %index.next1185, %n.vec1183
  br i1 %141, label %middle.block1177, label %vector.body1179, !llvm.loop !82

middle.block1177:                                 ; preds = %vector.body1179
  %cmp.n1187 = icmp eq i64 %134, %n.vec1183
  br i1 %cmp.n1187, label %polly.loop_exit491, label %polly.loop_header489.preheader

polly.loop_header489.preheader:                   ; preds = %polly.loop_header483, %middle.block1177
  %polly.indvar492.ph = phi i64 [ 0, %polly.loop_header483 ], [ %n.vec1183, %middle.block1177 ]
  br label %polly.loop_header489

polly.loop_exit491:                               ; preds = %polly.loop_header489, %middle.block1177
  %polly.indvar_next487 = add nuw nsw i64 %polly.indvar486, 1
  %exitcond792.not = icmp eq i64 %polly.indvar_next487, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond792.not, label %polly.loop_header499, label %polly.loop_header483

polly.loop_header489:                             ; preds = %polly.loop_header489.preheader, %polly.loop_header489
  %polly.indvar492 = phi i64 [ %polly.indvar_next493, %polly.loop_header489 ], [ %polly.indvar492.ph, %polly.loop_header489.preheader ]
  %142 = shl nuw nsw i64 %polly.indvar492, 3
  %scevgep496 = getelementptr i8, i8* %scevgep495, i64 %142
  %scevgep496497 = bitcast i8* %scevgep496 to double*
  %_p_scalar_498 = load double, double* %scevgep496497, align 8, !alias.scope !77, !noalias !79
  %p_mul.i = fmul fast double %_p_scalar_498, 1.200000e+00
  store double %p_mul.i, double* %scevgep496497, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next493 = add nuw nsw i64 %polly.indvar492, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next493, %polly.indvar486
  br i1 %exitcond791.not, label %polly.loop_exit491, label %polly.loop_header489, !llvm.loop !83

polly.loop_header499:                             ; preds = %polly.loop_exit491, %polly.loop_exit507
  %polly.indvar502 = phi i64 [ %polly.indvar_next503, %polly.loop_exit507 ], [ 0, %polly.loop_exit491 ]
  %143 = shl i64 %polly.indvar502, 5
  %144 = shl i64 %polly.indvar502, 5
  %145 = shl i64 %polly.indvar502, 5
  %146 = or i64 %145, 8
  %147 = shl i64 %polly.indvar502, 5
  %148 = or i64 %147, 16
  %149 = or i64 %143, 24
  br label %polly.loop_header505

polly.loop_exit507:                               ; preds = %polly.loop_exit513
  %polly.indvar_next503 = add nuw nsw i64 %polly.indvar502, 1
  %exitcond790.not = icmp eq i64 %polly.indvar_next503, 15
  br i1 %exitcond790.not, label %kernel_syr2k.exit, label %polly.loop_header499

polly.loop_header505:                             ; preds = %polly.loop_exit513, %polly.loop_header499
  %indvars.iv786 = phi i64 [ %indvars.iv.next787, %polly.loop_exit513 ], [ 80, %polly.loop_header499 ]
  %polly.indvar508 = phi i64 [ %polly.indvar_next509, %polly.loop_exit513 ], [ 0, %polly.loop_header499 ]
  %150 = shl nuw nsw i64 %polly.indvar508, 2
  br label %polly.loop_header511

polly.loop_exit513:                               ; preds = %polly.loop_exit525.3
  %polly.indvar_next509 = add nuw nsw i64 %polly.indvar508, 1
  %indvars.iv.next787 = add nsw i64 %indvars.iv786, -4
  %exitcond789.not = icmp eq i64 %polly.indvar_next509, 20
  br i1 %exitcond789.not, label %polly.loop_exit507, label %polly.loop_header505

polly.loop_header511:                             ; preds = %polly.loop_exit525.3, %polly.loop_header505
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %polly.loop_exit525.3 ], [ 0, %polly.loop_header505 ]
  %polly.indvar514 = phi i64 [ %polly.indvar_next515, %polly.loop_exit525.3 ], [ %150, %polly.loop_header505 ]
  %smin783 = call i64 @llvm.smin.i64(i64 %indvars.iv781, i64 3)
  %151 = mul nuw nsw i64 %polly.indvar514, 480
  %scevgep532 = getelementptr i8, i8* %call2, i64 %151
  %scevgep539 = getelementptr i8, i8* %call1, i64 %151
  %152 = mul nuw nsw i64 %polly.indvar514, 640
  %scevgep543 = getelementptr i8, i8* %call, i64 %152
  %scevgep533 = getelementptr i8, i8* %scevgep532, i64 %144
  %scevgep533534 = bitcast i8* %scevgep533 to double*
  %_p_scalar_535 = load double, double* %scevgep533534, align 8, !alias.scope !81, !noalias !84
  %scevgep540 = getelementptr i8, i8* %scevgep539, i64 %144
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_header523
  %scevgep533.1 = getelementptr i8, i8* %scevgep532, i64 %146
  %scevgep533534.1 = bitcast i8* %scevgep533.1 to double*
  %_p_scalar_535.1 = load double, double* %scevgep533534.1, align 8, !alias.scope !81, !noalias !84
  %scevgep540.1 = getelementptr i8, i8* %scevgep539, i64 %146
  %scevgep540541.1 = bitcast i8* %scevgep540.1 to double*
  %_p_scalar_542.1 = load double, double* %scevgep540541.1, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header523.1

polly.loop_header523:                             ; preds = %polly.loop_header523, %polly.loop_header511
  %polly.indvar526 = phi i64 [ 0, %polly.loop_header511 ], [ %polly.indvar_next527, %polly.loop_header523 ]
  %153 = add nuw nsw i64 %polly.indvar526, %150
  %154 = mul nuw nsw i64 %153, 480
  %155 = add nuw nsw i64 %154, %144
  %scevgep529 = getelementptr i8, i8* %call1, i64 %155
  %scevgep529530 = bitcast i8* %scevgep529 to double*
  %_p_scalar_531 = load double, double* %scevgep529530, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i = fmul fast double %_p_scalar_535, %_p_scalar_531
  %scevgep536 = getelementptr i8, i8* %call2, i64 %155
  %scevgep536537 = bitcast i8* %scevgep536 to double*
  %_p_scalar_538 = load double, double* %scevgep536537, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i = fmul fast double %_p_scalar_542, %_p_scalar_538
  %156 = shl i64 %153, 3
  %scevgep544 = getelementptr i8, i8* %scevgep543, i64 %156
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_546
  store double %p_add42.i, double* %scevgep544545, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond784.not = icmp eq i64 %polly.indvar526, %smin783
  br i1 %exitcond784.not, label %polly.loop_exit525, label %polly.loop_header523

polly.loop_header685:                             ; preds = %entry, %polly.loop_exit693
  %polly.indvar688 = phi i64 [ %polly.indvar_next689, %polly.loop_exit693 ], [ 0, %entry ]
  %157 = mul nuw nsw i64 %polly.indvar688, 640
  %158 = trunc i64 %polly.indvar688 to i32
  %broadcast.splatinsert911 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat912 = shufflevector <4 x i32> %broadcast.splatinsert911, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body901

vector.body901:                                   ; preds = %vector.body901, %polly.loop_header685
  %index903 = phi i64 [ 0, %polly.loop_header685 ], [ %index.next904, %vector.body901 ]
  %vec.ind909 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685 ], [ %vec.ind.next910, %vector.body901 ]
  %159 = mul <4 x i32> %vec.ind909, %broadcast.splat912
  %160 = add <4 x i32> %159, <i32 3, i32 3, i32 3, i32 3>
  %161 = urem <4 x i32> %160, <i32 80, i32 80, i32 80, i32 80>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %164 = shl i64 %index903, 3
  %165 = add nuw nsw i64 %164, %157
  %166 = getelementptr i8, i8* %call, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !86, !noalias !88
  %index.next904 = add i64 %index903, 4
  %vec.ind.next910 = add <4 x i32> %vec.ind909, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next904, 32
  br i1 %168, label %polly.loop_exit693, label %vector.body901, !llvm.loop !91

polly.loop_exit693:                               ; preds = %vector.body901
  %polly.indvar_next689 = add nuw nsw i64 %polly.indvar688, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next689, 32
  br i1 %exitcond812.not, label %polly.loop_header685.1, label %polly.loop_header685

polly.loop_header712:                             ; preds = %polly.loop_exit693.2.2, %polly.loop_exit720
  %polly.indvar715 = phi i64 [ %polly.indvar_next716, %polly.loop_exit720 ], [ 0, %polly.loop_exit693.2.2 ]
  %169 = mul nuw nsw i64 %polly.indvar715, 480
  %170 = trunc i64 %polly.indvar715 to i32
  %broadcast.splatinsert1025 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat1026 = shufflevector <4 x i32> %broadcast.splatinsert1025, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1015

vector.body1015:                                  ; preds = %vector.body1015, %polly.loop_header712
  %index1017 = phi i64 [ 0, %polly.loop_header712 ], [ %index.next1018, %vector.body1015 ]
  %vec.ind1023 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712 ], [ %vec.ind.next1024, %vector.body1015 ]
  %171 = mul <4 x i32> %vec.ind1023, %broadcast.splat1026
  %172 = add <4 x i32> %171, <i32 2, i32 2, i32 2, i32 2>
  %173 = urem <4 x i32> %172, <i32 60, i32 60, i32 60, i32 60>
  %174 = sitofp <4 x i32> %173 to <4 x double>
  %175 = fmul fast <4 x double> %174, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %176 = shl i64 %index1017, 3
  %177 = add i64 %176, %169
  %178 = getelementptr i8, i8* %call2, i64 %177
  %179 = bitcast i8* %178 to <4 x double>*
  store <4 x double> %175, <4 x double>* %179, align 8, !alias.scope !90, !noalias !92
  %index.next1018 = add i64 %index1017, 4
  %vec.ind.next1024 = add <4 x i32> %vec.ind1023, <i32 4, i32 4, i32 4, i32 4>
  %180 = icmp eq i64 %index.next1018, 32
  br i1 %180, label %polly.loop_exit720, label %vector.body1015, !llvm.loop !93

polly.loop_exit720:                               ; preds = %vector.body1015
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next716, 32
  br i1 %exitcond803.not, label %polly.loop_header712.1, label %polly.loop_header712

polly.loop_header738:                             ; preds = %polly.loop_exit720.1.2, %polly.loop_exit746
  %polly.indvar741 = phi i64 [ %polly.indvar_next742, %polly.loop_exit746 ], [ 0, %polly.loop_exit720.1.2 ]
  %181 = mul nuw nsw i64 %polly.indvar741, 480
  %182 = trunc i64 %polly.indvar741 to i32
  %broadcast.splatinsert1103 = insertelement <4 x i32> poison, i32 %182, i32 0
  %broadcast.splat1104 = shufflevector <4 x i32> %broadcast.splatinsert1103, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1093

vector.body1093:                                  ; preds = %vector.body1093, %polly.loop_header738
  %index1095 = phi i64 [ 0, %polly.loop_header738 ], [ %index.next1096, %vector.body1093 ]
  %vec.ind1101 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738 ], [ %vec.ind.next1102, %vector.body1093 ]
  %183 = mul <4 x i32> %vec.ind1101, %broadcast.splat1104
  %184 = add <4 x i32> %183, <i32 1, i32 1, i32 1, i32 1>
  %185 = urem <4 x i32> %184, <i32 80, i32 80, i32 80, i32 80>
  %186 = sitofp <4 x i32> %185 to <4 x double>
  %187 = fmul fast <4 x double> %186, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %188 = shl i64 %index1095, 3
  %189 = add i64 %188, %181
  %190 = getelementptr i8, i8* %call1, i64 %189
  %191 = bitcast i8* %190 to <4 x double>*
  store <4 x double> %187, <4 x double>* %191, align 8, !alias.scope !89, !noalias !94
  %index.next1096 = add i64 %index1095, 4
  %vec.ind.next1102 = add <4 x i32> %vec.ind1101, <i32 4, i32 4, i32 4, i32 4>
  %192 = icmp eq i64 %index.next1096, 32
  br i1 %192, label %polly.loop_exit746, label %vector.body1093, !llvm.loop !95

polly.loop_exit746:                               ; preds = %vector.body1093
  %polly.indvar_next742 = add nuw nsw i64 %polly.indvar741, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next742, 32
  br i1 %exitcond797.not, label %polly.loop_header738.1, label %polly.loop_header738

polly.loop_header223.1:                           ; preds = %polly.loop_header223.1, %polly.loop_exit225
  %polly.indvar226.1 = phi i64 [ 0, %polly.loop_exit225 ], [ %polly.indvar_next227.1, %polly.loop_header223.1 ]
  %193 = add nuw nsw i64 %polly.indvar226.1, %104
  %194 = mul nuw nsw i64 %193, 480
  %195 = add nuw nsw i64 %194, %100
  %scevgep229.1 = getelementptr i8, i8* %call1, i64 %195
  %scevgep229230.1 = bitcast i8* %scevgep229.1 to double*
  %_p_scalar_231.1 = load double, double* %scevgep229230.1, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.1 = fmul fast double %_p_scalar_235.1, %_p_scalar_231.1
  %scevgep236.1 = getelementptr i8, i8* %call2, i64 %195
  %scevgep236237.1 = bitcast i8* %scevgep236.1 to double*
  %_p_scalar_238.1 = load double, double* %scevgep236237.1, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.1 = fmul fast double %_p_scalar_242.1, %_p_scalar_238.1
  %196 = shl i64 %193, 3
  %scevgep244.1 = getelementptr i8, i8* %scevgep243, i64 %196
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_246.1
  store double %p_add42.i118.1, double* %scevgep244245.1, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar226.1, %smin
  br i1 %exitcond.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.1

polly.loop_exit225.1:                             ; preds = %polly.loop_header223.1
  %scevgep233.2 = getelementptr i8, i8* %scevgep232, i64 %102
  %scevgep233234.2 = bitcast i8* %scevgep233.2 to double*
  %_p_scalar_235.2 = load double, double* %scevgep233234.2, align 8, !alias.scope !62, !noalias !66
  %scevgep240.2 = getelementptr i8, i8* %scevgep239, i64 %102
  %scevgep240241.2 = bitcast i8* %scevgep240.2 to double*
  %_p_scalar_242.2 = load double, double* %scevgep240241.2, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223.2

polly.loop_header223.2:                           ; preds = %polly.loop_header223.2, %polly.loop_exit225.1
  %polly.indvar226.2 = phi i64 [ 0, %polly.loop_exit225.1 ], [ %polly.indvar_next227.2, %polly.loop_header223.2 ]
  %197 = add nuw nsw i64 %polly.indvar226.2, %104
  %198 = mul nuw nsw i64 %197, 480
  %199 = add nuw nsw i64 %198, %102
  %scevgep229.2 = getelementptr i8, i8* %call1, i64 %199
  %scevgep229230.2 = bitcast i8* %scevgep229.2 to double*
  %_p_scalar_231.2 = load double, double* %scevgep229230.2, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.2 = fmul fast double %_p_scalar_235.2, %_p_scalar_231.2
  %scevgep236.2 = getelementptr i8, i8* %call2, i64 %199
  %scevgep236237.2 = bitcast i8* %scevgep236.2 to double*
  %_p_scalar_238.2 = load double, double* %scevgep236237.2, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.2 = fmul fast double %_p_scalar_242.2, %_p_scalar_238.2
  %200 = shl i64 %197, 3
  %scevgep244.2 = getelementptr i8, i8* %scevgep243, i64 %200
  %scevgep244245.2 = bitcast i8* %scevgep244.2 to double*
  %_p_scalar_246.2 = load double, double* %scevgep244245.2, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_246.2
  store double %p_add42.i118.2, double* %scevgep244245.2, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227.2 = add nuw nsw i64 %polly.indvar226.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar226.2, %smin
  br i1 %exitcond.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.2

polly.loop_exit225.2:                             ; preds = %polly.loop_header223.2
  %scevgep233.3 = getelementptr i8, i8* %scevgep232, i64 %103
  %scevgep233234.3 = bitcast i8* %scevgep233.3 to double*
  %_p_scalar_235.3 = load double, double* %scevgep233234.3, align 8, !alias.scope !62, !noalias !66
  %scevgep240.3 = getelementptr i8, i8* %scevgep239, i64 %103
  %scevgep240241.3 = bitcast i8* %scevgep240.3 to double*
  %_p_scalar_242.3 = load double, double* %scevgep240241.3, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223.3

polly.loop_header223.3:                           ; preds = %polly.loop_header223.3, %polly.loop_exit225.2
  %polly.indvar226.3 = phi i64 [ 0, %polly.loop_exit225.2 ], [ %polly.indvar_next227.3, %polly.loop_header223.3 ]
  %201 = add nuw nsw i64 %polly.indvar226.3, %104
  %202 = mul nuw nsw i64 %201, 480
  %203 = add nuw nsw i64 %202, %103
  %scevgep229.3 = getelementptr i8, i8* %call1, i64 %203
  %scevgep229230.3 = bitcast i8* %scevgep229.3 to double*
  %_p_scalar_231.3 = load double, double* %scevgep229230.3, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.3 = fmul fast double %_p_scalar_235.3, %_p_scalar_231.3
  %scevgep236.3 = getelementptr i8, i8* %call2, i64 %203
  %scevgep236237.3 = bitcast i8* %scevgep236.3 to double*
  %_p_scalar_238.3 = load double, double* %scevgep236237.3, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.3 = fmul fast double %_p_scalar_242.3, %_p_scalar_238.3
  %204 = shl i64 %201, 3
  %scevgep244.3 = getelementptr i8, i8* %scevgep243, i64 %204
  %scevgep244245.3 = bitcast i8* %scevgep244.3 to double*
  %_p_scalar_246.3 = load double, double* %scevgep244245.3, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_246.3
  store double %p_add42.i118.3, double* %scevgep244245.3, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227.3 = add nuw nsw i64 %polly.indvar226.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar226.3, %smin
  br i1 %exitcond.3.not, label %polly.loop_exit225.3, label %polly.loop_header223.3

polly.loop_exit225.3:                             ; preds = %polly.loop_header223.3
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond764.not = icmp eq i64 %indvars.iv.next, %indvars.iv762
  br i1 %exitcond764.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header373.1:                           ; preds = %polly.loop_header373.1, %polly.loop_exit375
  %polly.indvar376.1 = phi i64 [ 0, %polly.loop_exit375 ], [ %polly.indvar_next377.1, %polly.loop_header373.1 ]
  %205 = add nuw nsw i64 %polly.indvar376.1, %127
  %206 = mul nuw nsw i64 %205, 480
  %207 = add nuw nsw i64 %206, %123
  %scevgep379.1 = getelementptr i8, i8* %call1, i64 %207
  %scevgep379380.1 = bitcast i8* %scevgep379.1 to double*
  %_p_scalar_381.1 = load double, double* %scevgep379380.1, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.1 = fmul fast double %_p_scalar_385.1, %_p_scalar_381.1
  %scevgep386.1 = getelementptr i8, i8* %call2, i64 %207
  %scevgep386387.1 = bitcast i8* %scevgep386.1 to double*
  %_p_scalar_388.1 = load double, double* %scevgep386387.1, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.1 = fmul fast double %_p_scalar_392.1, %_p_scalar_388.1
  %208 = shl i64 %205, 3
  %scevgep394.1 = getelementptr i8, i8* %scevgep393, i64 %208
  %scevgep394395.1 = bitcast i8* %scevgep394.1 to double*
  %_p_scalar_396.1 = load double, double* %scevgep394395.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_396.1
  store double %p_add42.i79.1, double* %scevgep394395.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next377.1 = add nuw nsw i64 %polly.indvar376.1, 1
  %exitcond772.1.not = icmp eq i64 %polly.indvar376.1, %smin771
  br i1 %exitcond772.1.not, label %polly.loop_exit375.1, label %polly.loop_header373.1

polly.loop_exit375.1:                             ; preds = %polly.loop_header373.1
  %scevgep383.2 = getelementptr i8, i8* %scevgep382, i64 %125
  %scevgep383384.2 = bitcast i8* %scevgep383.2 to double*
  %_p_scalar_385.2 = load double, double* %scevgep383384.2, align 8, !alias.scope !72, !noalias !75
  %scevgep390.2 = getelementptr i8, i8* %scevgep389, i64 %125
  %scevgep390391.2 = bitcast i8* %scevgep390.2 to double*
  %_p_scalar_392.2 = load double, double* %scevgep390391.2, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header373.2

polly.loop_header373.2:                           ; preds = %polly.loop_header373.2, %polly.loop_exit375.1
  %polly.indvar376.2 = phi i64 [ 0, %polly.loop_exit375.1 ], [ %polly.indvar_next377.2, %polly.loop_header373.2 ]
  %209 = add nuw nsw i64 %polly.indvar376.2, %127
  %210 = mul nuw nsw i64 %209, 480
  %211 = add nuw nsw i64 %210, %125
  %scevgep379.2 = getelementptr i8, i8* %call1, i64 %211
  %scevgep379380.2 = bitcast i8* %scevgep379.2 to double*
  %_p_scalar_381.2 = load double, double* %scevgep379380.2, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.2 = fmul fast double %_p_scalar_385.2, %_p_scalar_381.2
  %scevgep386.2 = getelementptr i8, i8* %call2, i64 %211
  %scevgep386387.2 = bitcast i8* %scevgep386.2 to double*
  %_p_scalar_388.2 = load double, double* %scevgep386387.2, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.2 = fmul fast double %_p_scalar_392.2, %_p_scalar_388.2
  %212 = shl i64 %209, 3
  %scevgep394.2 = getelementptr i8, i8* %scevgep393, i64 %212
  %scevgep394395.2 = bitcast i8* %scevgep394.2 to double*
  %_p_scalar_396.2 = load double, double* %scevgep394395.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_396.2
  store double %p_add42.i79.2, double* %scevgep394395.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next377.2 = add nuw nsw i64 %polly.indvar376.2, 1
  %exitcond772.2.not = icmp eq i64 %polly.indvar376.2, %smin771
  br i1 %exitcond772.2.not, label %polly.loop_exit375.2, label %polly.loop_header373.2

polly.loop_exit375.2:                             ; preds = %polly.loop_header373.2
  %scevgep383.3 = getelementptr i8, i8* %scevgep382, i64 %126
  %scevgep383384.3 = bitcast i8* %scevgep383.3 to double*
  %_p_scalar_385.3 = load double, double* %scevgep383384.3, align 8, !alias.scope !72, !noalias !75
  %scevgep390.3 = getelementptr i8, i8* %scevgep389, i64 %126
  %scevgep390391.3 = bitcast i8* %scevgep390.3 to double*
  %_p_scalar_392.3 = load double, double* %scevgep390391.3, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header373.3

polly.loop_header373.3:                           ; preds = %polly.loop_header373.3, %polly.loop_exit375.2
  %polly.indvar376.3 = phi i64 [ 0, %polly.loop_exit375.2 ], [ %polly.indvar_next377.3, %polly.loop_header373.3 ]
  %213 = add nuw nsw i64 %polly.indvar376.3, %127
  %214 = mul nuw nsw i64 %213, 480
  %215 = add nuw nsw i64 %214, %126
  %scevgep379.3 = getelementptr i8, i8* %call1, i64 %215
  %scevgep379380.3 = bitcast i8* %scevgep379.3 to double*
  %_p_scalar_381.3 = load double, double* %scevgep379380.3, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.3 = fmul fast double %_p_scalar_385.3, %_p_scalar_381.3
  %scevgep386.3 = getelementptr i8, i8* %call2, i64 %215
  %scevgep386387.3 = bitcast i8* %scevgep386.3 to double*
  %_p_scalar_388.3 = load double, double* %scevgep386387.3, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.3 = fmul fast double %_p_scalar_392.3, %_p_scalar_388.3
  %216 = shl i64 %213, 3
  %scevgep394.3 = getelementptr i8, i8* %scevgep393, i64 %216
  %scevgep394395.3 = bitcast i8* %scevgep394.3 to double*
  %_p_scalar_396.3 = load double, double* %scevgep394395.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_396.3
  store double %p_add42.i79.3, double* %scevgep394395.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next377.3 = add nuw nsw i64 %polly.indvar376.3, 1
  %exitcond772.3.not = icmp eq i64 %polly.indvar376.3, %smin771
  br i1 %exitcond772.3.not, label %polly.loop_exit375.3, label %polly.loop_header373.3

polly.loop_exit375.3:                             ; preds = %polly.loop_header373.3
  %polly.indvar_next365 = add nuw nsw i64 %polly.indvar364, 1
  %indvars.iv.next770 = add nuw nsw i64 %indvars.iv769, 1
  %exitcond776.not = icmp eq i64 %indvars.iv.next770, %indvars.iv774
  br i1 %exitcond776.not, label %polly.loop_exit363, label %polly.loop_header361

polly.loop_header523.1:                           ; preds = %polly.loop_header523.1, %polly.loop_exit525
  %polly.indvar526.1 = phi i64 [ 0, %polly.loop_exit525 ], [ %polly.indvar_next527.1, %polly.loop_header523.1 ]
  %217 = add nuw nsw i64 %polly.indvar526.1, %150
  %218 = mul nuw nsw i64 %217, 480
  %219 = add nuw nsw i64 %218, %146
  %scevgep529.1 = getelementptr i8, i8* %call1, i64 %219
  %scevgep529530.1 = bitcast i8* %scevgep529.1 to double*
  %_p_scalar_531.1 = load double, double* %scevgep529530.1, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.1 = fmul fast double %_p_scalar_535.1, %_p_scalar_531.1
  %scevgep536.1 = getelementptr i8, i8* %call2, i64 %219
  %scevgep536537.1 = bitcast i8* %scevgep536.1 to double*
  %_p_scalar_538.1 = load double, double* %scevgep536537.1, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.1 = fmul fast double %_p_scalar_542.1, %_p_scalar_538.1
  %220 = shl i64 %217, 3
  %scevgep544.1 = getelementptr i8, i8* %scevgep543, i64 %220
  %scevgep544545.1 = bitcast i8* %scevgep544.1 to double*
  %_p_scalar_546.1 = load double, double* %scevgep544545.1, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_546.1
  store double %p_add42.i.1, double* %scevgep544545.1, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next527.1 = add nuw nsw i64 %polly.indvar526.1, 1
  %exitcond784.1.not = icmp eq i64 %polly.indvar526.1, %smin783
  br i1 %exitcond784.1.not, label %polly.loop_exit525.1, label %polly.loop_header523.1

polly.loop_exit525.1:                             ; preds = %polly.loop_header523.1
  %scevgep533.2 = getelementptr i8, i8* %scevgep532, i64 %148
  %scevgep533534.2 = bitcast i8* %scevgep533.2 to double*
  %_p_scalar_535.2 = load double, double* %scevgep533534.2, align 8, !alias.scope !81, !noalias !84
  %scevgep540.2 = getelementptr i8, i8* %scevgep539, i64 %148
  %scevgep540541.2 = bitcast i8* %scevgep540.2 to double*
  %_p_scalar_542.2 = load double, double* %scevgep540541.2, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header523.2

polly.loop_header523.2:                           ; preds = %polly.loop_header523.2, %polly.loop_exit525.1
  %polly.indvar526.2 = phi i64 [ 0, %polly.loop_exit525.1 ], [ %polly.indvar_next527.2, %polly.loop_header523.2 ]
  %221 = add nuw nsw i64 %polly.indvar526.2, %150
  %222 = mul nuw nsw i64 %221, 480
  %223 = add nuw nsw i64 %222, %148
  %scevgep529.2 = getelementptr i8, i8* %call1, i64 %223
  %scevgep529530.2 = bitcast i8* %scevgep529.2 to double*
  %_p_scalar_531.2 = load double, double* %scevgep529530.2, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.2 = fmul fast double %_p_scalar_535.2, %_p_scalar_531.2
  %scevgep536.2 = getelementptr i8, i8* %call2, i64 %223
  %scevgep536537.2 = bitcast i8* %scevgep536.2 to double*
  %_p_scalar_538.2 = load double, double* %scevgep536537.2, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.2 = fmul fast double %_p_scalar_542.2, %_p_scalar_538.2
  %224 = shl i64 %221, 3
  %scevgep544.2 = getelementptr i8, i8* %scevgep543, i64 %224
  %scevgep544545.2 = bitcast i8* %scevgep544.2 to double*
  %_p_scalar_546.2 = load double, double* %scevgep544545.2, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_546.2
  store double %p_add42.i.2, double* %scevgep544545.2, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next527.2 = add nuw nsw i64 %polly.indvar526.2, 1
  %exitcond784.2.not = icmp eq i64 %polly.indvar526.2, %smin783
  br i1 %exitcond784.2.not, label %polly.loop_exit525.2, label %polly.loop_header523.2

polly.loop_exit525.2:                             ; preds = %polly.loop_header523.2
  %scevgep533.3 = getelementptr i8, i8* %scevgep532, i64 %149
  %scevgep533534.3 = bitcast i8* %scevgep533.3 to double*
  %_p_scalar_535.3 = load double, double* %scevgep533534.3, align 8, !alias.scope !81, !noalias !84
  %scevgep540.3 = getelementptr i8, i8* %scevgep539, i64 %149
  %scevgep540541.3 = bitcast i8* %scevgep540.3 to double*
  %_p_scalar_542.3 = load double, double* %scevgep540541.3, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header523.3

polly.loop_header523.3:                           ; preds = %polly.loop_header523.3, %polly.loop_exit525.2
  %polly.indvar526.3 = phi i64 [ 0, %polly.loop_exit525.2 ], [ %polly.indvar_next527.3, %polly.loop_header523.3 ]
  %225 = add nuw nsw i64 %polly.indvar526.3, %150
  %226 = mul nuw nsw i64 %225, 480
  %227 = add nuw nsw i64 %226, %149
  %scevgep529.3 = getelementptr i8, i8* %call1, i64 %227
  %scevgep529530.3 = bitcast i8* %scevgep529.3 to double*
  %_p_scalar_531.3 = load double, double* %scevgep529530.3, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.3 = fmul fast double %_p_scalar_535.3, %_p_scalar_531.3
  %scevgep536.3 = getelementptr i8, i8* %call2, i64 %227
  %scevgep536537.3 = bitcast i8* %scevgep536.3 to double*
  %_p_scalar_538.3 = load double, double* %scevgep536537.3, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.3 = fmul fast double %_p_scalar_542.3, %_p_scalar_538.3
  %228 = shl i64 %225, 3
  %scevgep544.3 = getelementptr i8, i8* %scevgep543, i64 %228
  %scevgep544545.3 = bitcast i8* %scevgep544.3 to double*
  %_p_scalar_546.3 = load double, double* %scevgep544545.3, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_546.3
  store double %p_add42.i.3, double* %scevgep544545.3, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next527.3 = add nuw nsw i64 %polly.indvar526.3, 1
  %exitcond784.3.not = icmp eq i64 %polly.indvar526.3, %smin783
  br i1 %exitcond784.3.not, label %polly.loop_exit525.3, label %polly.loop_header523.3

polly.loop_exit525.3:                             ; preds = %polly.loop_header523.3
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1
  %exitcond788.not = icmp eq i64 %indvars.iv.next782, %indvars.iv786
  br i1 %exitcond788.not, label %polly.loop_exit513, label %polly.loop_header511

polly.loop_header738.1:                           ; preds = %polly.loop_exit746, %polly.loop_exit746.1
  %polly.indvar741.1 = phi i64 [ %polly.indvar_next742.1, %polly.loop_exit746.1 ], [ 0, %polly.loop_exit746 ]
  %229 = mul nuw nsw i64 %polly.indvar741.1, 480
  %230 = trunc i64 %polly.indvar741.1 to i32
  %broadcast.splatinsert1115 = insertelement <4 x i32> poison, i32 %230, i32 0
  %broadcast.splat1116 = shufflevector <4 x i32> %broadcast.splatinsert1115, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %polly.loop_header738.1
  %index1109 = phi i64 [ 0, %polly.loop_header738.1 ], [ %index.next1110, %vector.body1107 ]
  %vec.ind1113 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1 ], [ %vec.ind.next1114, %vector.body1107 ]
  %231 = add nuw nsw <4 x i64> %vec.ind1113, <i64 32, i64 32, i64 32, i64 32>
  %232 = trunc <4 x i64> %231 to <4 x i32>
  %233 = mul <4 x i32> %broadcast.splat1116, %232
  %234 = add <4 x i32> %233, <i32 1, i32 1, i32 1, i32 1>
  %235 = urem <4 x i32> %234, <i32 80, i32 80, i32 80, i32 80>
  %236 = sitofp <4 x i32> %235 to <4 x double>
  %237 = fmul fast <4 x double> %236, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %238 = extractelement <4 x i64> %231, i32 0
  %239 = shl i64 %238, 3
  %240 = add i64 %239, %229
  %241 = getelementptr i8, i8* %call1, i64 %240
  %242 = bitcast i8* %241 to <4 x double>*
  store <4 x double> %237, <4 x double>* %242, align 8, !alias.scope !89, !noalias !94
  %index.next1110 = add i64 %index1109, 4
  %vec.ind.next1114 = add <4 x i64> %vec.ind1113, <i64 4, i64 4, i64 4, i64 4>
  %243 = icmp eq i64 %index.next1110, 28
  br i1 %243, label %polly.loop_exit746.1, label %vector.body1107, !llvm.loop !96

polly.loop_exit746.1:                             ; preds = %vector.body1107
  %polly.indvar_next742.1 = add nuw nsw i64 %polly.indvar741.1, 1
  %exitcond797.1.not = icmp eq i64 %polly.indvar_next742.1, 32
  br i1 %exitcond797.1.not, label %polly.loop_header738.1820, label %polly.loop_header738.1

polly.loop_header738.1820:                        ; preds = %polly.loop_exit746.1, %polly.loop_exit746.1831
  %polly.indvar741.1819 = phi i64 [ %polly.indvar_next742.1829, %polly.loop_exit746.1831 ], [ 0, %polly.loop_exit746.1 ]
  %244 = add nuw nsw i64 %polly.indvar741.1819, 32
  %245 = mul nuw nsw i64 %244, 480
  %246 = trunc i64 %244 to i32
  %broadcast.splatinsert1129 = insertelement <4 x i32> poison, i32 %246, i32 0
  %broadcast.splat1130 = shufflevector <4 x i32> %broadcast.splatinsert1129, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %polly.loop_header738.1820
  %index1121 = phi i64 [ 0, %polly.loop_header738.1820 ], [ %index.next1122, %vector.body1119 ]
  %vec.ind1127 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738.1820 ], [ %vec.ind.next1128, %vector.body1119 ]
  %247 = mul <4 x i32> %vec.ind1127, %broadcast.splat1130
  %248 = add <4 x i32> %247, <i32 1, i32 1, i32 1, i32 1>
  %249 = urem <4 x i32> %248, <i32 80, i32 80, i32 80, i32 80>
  %250 = sitofp <4 x i32> %249 to <4 x double>
  %251 = fmul fast <4 x double> %250, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %252 = shl i64 %index1121, 3
  %253 = add i64 %252, %245
  %254 = getelementptr i8, i8* %call1, i64 %253
  %255 = bitcast i8* %254 to <4 x double>*
  store <4 x double> %251, <4 x double>* %255, align 8, !alias.scope !89, !noalias !94
  %index.next1122 = add i64 %index1121, 4
  %vec.ind.next1128 = add <4 x i32> %vec.ind1127, <i32 4, i32 4, i32 4, i32 4>
  %256 = icmp eq i64 %index.next1122, 32
  br i1 %256, label %polly.loop_exit746.1831, label %vector.body1119, !llvm.loop !97

polly.loop_exit746.1831:                          ; preds = %vector.body1119
  %polly.indvar_next742.1829 = add nuw nsw i64 %polly.indvar741.1819, 1
  %exitcond797.1830.not = icmp eq i64 %polly.indvar_next742.1829, 32
  br i1 %exitcond797.1830.not, label %polly.loop_header738.1.1, label %polly.loop_header738.1820

polly.loop_header738.1.1:                         ; preds = %polly.loop_exit746.1831, %polly.loop_exit746.1.1
  %polly.indvar741.1.1 = phi i64 [ %polly.indvar_next742.1.1, %polly.loop_exit746.1.1 ], [ 0, %polly.loop_exit746.1831 ]
  %257 = add nuw nsw i64 %polly.indvar741.1.1, 32
  %258 = mul nuw nsw i64 %257, 480
  %259 = trunc i64 %257 to i32
  %broadcast.splatinsert1141 = insertelement <4 x i32> poison, i32 %259, i32 0
  %broadcast.splat1142 = shufflevector <4 x i32> %broadcast.splatinsert1141, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %polly.loop_header738.1.1
  %index1135 = phi i64 [ 0, %polly.loop_header738.1.1 ], [ %index.next1136, %vector.body1133 ]
  %vec.ind1139 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1.1 ], [ %vec.ind.next1140, %vector.body1133 ]
  %260 = add nuw nsw <4 x i64> %vec.ind1139, <i64 32, i64 32, i64 32, i64 32>
  %261 = trunc <4 x i64> %260 to <4 x i32>
  %262 = mul <4 x i32> %broadcast.splat1142, %261
  %263 = add <4 x i32> %262, <i32 1, i32 1, i32 1, i32 1>
  %264 = urem <4 x i32> %263, <i32 80, i32 80, i32 80, i32 80>
  %265 = sitofp <4 x i32> %264 to <4 x double>
  %266 = fmul fast <4 x double> %265, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %267 = extractelement <4 x i64> %260, i32 0
  %268 = shl i64 %267, 3
  %269 = add i64 %268, %258
  %270 = getelementptr i8, i8* %call1, i64 %269
  %271 = bitcast i8* %270 to <4 x double>*
  store <4 x double> %266, <4 x double>* %271, align 8, !alias.scope !89, !noalias !94
  %index.next1136 = add i64 %index1135, 4
  %vec.ind.next1140 = add <4 x i64> %vec.ind1139, <i64 4, i64 4, i64 4, i64 4>
  %272 = icmp eq i64 %index.next1136, 28
  br i1 %272, label %polly.loop_exit746.1.1, label %vector.body1133, !llvm.loop !98

polly.loop_exit746.1.1:                           ; preds = %vector.body1133
  %polly.indvar_next742.1.1 = add nuw nsw i64 %polly.indvar741.1.1, 1
  %exitcond797.1.1.not = icmp eq i64 %polly.indvar_next742.1.1, 32
  br i1 %exitcond797.1.1.not, label %polly.loop_header738.2, label %polly.loop_header738.1.1

polly.loop_header738.2:                           ; preds = %polly.loop_exit746.1.1, %polly.loop_exit746.2
  %polly.indvar741.2 = phi i64 [ %polly.indvar_next742.2, %polly.loop_exit746.2 ], [ 0, %polly.loop_exit746.1.1 ]
  %273 = add nuw nsw i64 %polly.indvar741.2, 64
  %274 = mul nuw nsw i64 %273, 480
  %275 = trunc i64 %273 to i32
  %broadcast.splatinsert1155 = insertelement <4 x i32> poison, i32 %275, i32 0
  %broadcast.splat1156 = shufflevector <4 x i32> %broadcast.splatinsert1155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %polly.loop_header738.2
  %index1147 = phi i64 [ 0, %polly.loop_header738.2 ], [ %index.next1148, %vector.body1145 ]
  %vec.ind1153 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738.2 ], [ %vec.ind.next1154, %vector.body1145 ]
  %276 = mul <4 x i32> %vec.ind1153, %broadcast.splat1156
  %277 = add <4 x i32> %276, <i32 1, i32 1, i32 1, i32 1>
  %278 = urem <4 x i32> %277, <i32 80, i32 80, i32 80, i32 80>
  %279 = sitofp <4 x i32> %278 to <4 x double>
  %280 = fmul fast <4 x double> %279, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %281 = shl i64 %index1147, 3
  %282 = add i64 %281, %274
  %283 = getelementptr i8, i8* %call1, i64 %282
  %284 = bitcast i8* %283 to <4 x double>*
  store <4 x double> %280, <4 x double>* %284, align 8, !alias.scope !89, !noalias !94
  %index.next1148 = add i64 %index1147, 4
  %vec.ind.next1154 = add <4 x i32> %vec.ind1153, <i32 4, i32 4, i32 4, i32 4>
  %285 = icmp eq i64 %index.next1148, 32
  br i1 %285, label %polly.loop_exit746.2, label %vector.body1145, !llvm.loop !99

polly.loop_exit746.2:                             ; preds = %vector.body1145
  %polly.indvar_next742.2 = add nuw nsw i64 %polly.indvar741.2, 1
  %exitcond797.2.not = icmp eq i64 %polly.indvar_next742.2, 16
  br i1 %exitcond797.2.not, label %polly.loop_header738.1.2, label %polly.loop_header738.2

polly.loop_header738.1.2:                         ; preds = %polly.loop_exit746.2, %polly.loop_exit746.1.2
  %polly.indvar741.1.2 = phi i64 [ %polly.indvar_next742.1.2, %polly.loop_exit746.1.2 ], [ 0, %polly.loop_exit746.2 ]
  %286 = add nuw nsw i64 %polly.indvar741.1.2, 64
  %287 = mul nuw nsw i64 %286, 480
  %288 = trunc i64 %286 to i32
  %broadcast.splatinsert1167 = insertelement <4 x i32> poison, i32 %288, i32 0
  %broadcast.splat1168 = shufflevector <4 x i32> %broadcast.splatinsert1167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %polly.loop_header738.1.2
  %index1161 = phi i64 [ 0, %polly.loop_header738.1.2 ], [ %index.next1162, %vector.body1159 ]
  %vec.ind1165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1.2 ], [ %vec.ind.next1166, %vector.body1159 ]
  %289 = add nuw nsw <4 x i64> %vec.ind1165, <i64 32, i64 32, i64 32, i64 32>
  %290 = trunc <4 x i64> %289 to <4 x i32>
  %291 = mul <4 x i32> %broadcast.splat1168, %290
  %292 = add <4 x i32> %291, <i32 1, i32 1, i32 1, i32 1>
  %293 = urem <4 x i32> %292, <i32 80, i32 80, i32 80, i32 80>
  %294 = sitofp <4 x i32> %293 to <4 x double>
  %295 = fmul fast <4 x double> %294, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %296 = extractelement <4 x i64> %289, i32 0
  %297 = shl i64 %296, 3
  %298 = add i64 %297, %287
  %299 = getelementptr i8, i8* %call1, i64 %298
  %300 = bitcast i8* %299 to <4 x double>*
  store <4 x double> %295, <4 x double>* %300, align 8, !alias.scope !89, !noalias !94
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1166 = add <4 x i64> %vec.ind1165, <i64 4, i64 4, i64 4, i64 4>
  %301 = icmp eq i64 %index.next1162, 28
  br i1 %301, label %polly.loop_exit746.1.2, label %vector.body1159, !llvm.loop !100

polly.loop_exit746.1.2:                           ; preds = %vector.body1159
  %polly.indvar_next742.1.2 = add nuw nsw i64 %polly.indvar741.1.2, 1
  %exitcond797.1.2.not = icmp eq i64 %polly.indvar_next742.1.2, 16
  br i1 %exitcond797.1.2.not, label %init_array.exit, label %polly.loop_header738.1.2

polly.loop_header712.1:                           ; preds = %polly.loop_exit720, %polly.loop_exit720.1
  %polly.indvar715.1 = phi i64 [ %polly.indvar_next716.1, %polly.loop_exit720.1 ], [ 0, %polly.loop_exit720 ]
  %302 = mul nuw nsw i64 %polly.indvar715.1, 480
  %303 = trunc i64 %polly.indvar715.1 to i32
  %broadcast.splatinsert1037 = insertelement <4 x i32> poison, i32 %303, i32 0
  %broadcast.splat1038 = shufflevector <4 x i32> %broadcast.splatinsert1037, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %polly.loop_header712.1
  %index1031 = phi i64 [ 0, %polly.loop_header712.1 ], [ %index.next1032, %vector.body1029 ]
  %vec.ind1035 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1 ], [ %vec.ind.next1036, %vector.body1029 ]
  %304 = add nuw nsw <4 x i64> %vec.ind1035, <i64 32, i64 32, i64 32, i64 32>
  %305 = trunc <4 x i64> %304 to <4 x i32>
  %306 = mul <4 x i32> %broadcast.splat1038, %305
  %307 = add <4 x i32> %306, <i32 2, i32 2, i32 2, i32 2>
  %308 = urem <4 x i32> %307, <i32 60, i32 60, i32 60, i32 60>
  %309 = sitofp <4 x i32> %308 to <4 x double>
  %310 = fmul fast <4 x double> %309, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %311 = extractelement <4 x i64> %304, i32 0
  %312 = shl i64 %311, 3
  %313 = add i64 %312, %302
  %314 = getelementptr i8, i8* %call2, i64 %313
  %315 = bitcast i8* %314 to <4 x double>*
  store <4 x double> %310, <4 x double>* %315, align 8, !alias.scope !90, !noalias !92
  %index.next1032 = add i64 %index1031, 4
  %vec.ind.next1036 = add <4 x i64> %vec.ind1035, <i64 4, i64 4, i64 4, i64 4>
  %316 = icmp eq i64 %index.next1032, 28
  br i1 %316, label %polly.loop_exit720.1, label %vector.body1029, !llvm.loop !101

polly.loop_exit720.1:                             ; preds = %vector.body1029
  %polly.indvar_next716.1 = add nuw nsw i64 %polly.indvar715.1, 1
  %exitcond803.1.not = icmp eq i64 %polly.indvar_next716.1, 32
  br i1 %exitcond803.1.not, label %polly.loop_header712.1834, label %polly.loop_header712.1

polly.loop_header712.1834:                        ; preds = %polly.loop_exit720.1, %polly.loop_exit720.1845
  %polly.indvar715.1833 = phi i64 [ %polly.indvar_next716.1843, %polly.loop_exit720.1845 ], [ 0, %polly.loop_exit720.1 ]
  %317 = add nuw nsw i64 %polly.indvar715.1833, 32
  %318 = mul nuw nsw i64 %317, 480
  %319 = trunc i64 %317 to i32
  %broadcast.splatinsert1051 = insertelement <4 x i32> poison, i32 %319, i32 0
  %broadcast.splat1052 = shufflevector <4 x i32> %broadcast.splatinsert1051, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1041

vector.body1041:                                  ; preds = %vector.body1041, %polly.loop_header712.1834
  %index1043 = phi i64 [ 0, %polly.loop_header712.1834 ], [ %index.next1044, %vector.body1041 ]
  %vec.ind1049 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712.1834 ], [ %vec.ind.next1050, %vector.body1041 ]
  %320 = mul <4 x i32> %vec.ind1049, %broadcast.splat1052
  %321 = add <4 x i32> %320, <i32 2, i32 2, i32 2, i32 2>
  %322 = urem <4 x i32> %321, <i32 60, i32 60, i32 60, i32 60>
  %323 = sitofp <4 x i32> %322 to <4 x double>
  %324 = fmul fast <4 x double> %323, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %325 = shl i64 %index1043, 3
  %326 = add i64 %325, %318
  %327 = getelementptr i8, i8* %call2, i64 %326
  %328 = bitcast i8* %327 to <4 x double>*
  store <4 x double> %324, <4 x double>* %328, align 8, !alias.scope !90, !noalias !92
  %index.next1044 = add i64 %index1043, 4
  %vec.ind.next1050 = add <4 x i32> %vec.ind1049, <i32 4, i32 4, i32 4, i32 4>
  %329 = icmp eq i64 %index.next1044, 32
  br i1 %329, label %polly.loop_exit720.1845, label %vector.body1041, !llvm.loop !102

polly.loop_exit720.1845:                          ; preds = %vector.body1041
  %polly.indvar_next716.1843 = add nuw nsw i64 %polly.indvar715.1833, 1
  %exitcond803.1844.not = icmp eq i64 %polly.indvar_next716.1843, 32
  br i1 %exitcond803.1844.not, label %polly.loop_header712.1.1, label %polly.loop_header712.1834

polly.loop_header712.1.1:                         ; preds = %polly.loop_exit720.1845, %polly.loop_exit720.1.1
  %polly.indvar715.1.1 = phi i64 [ %polly.indvar_next716.1.1, %polly.loop_exit720.1.1 ], [ 0, %polly.loop_exit720.1845 ]
  %330 = add nuw nsw i64 %polly.indvar715.1.1, 32
  %331 = mul nuw nsw i64 %330, 480
  %332 = trunc i64 %330 to i32
  %broadcast.splatinsert1063 = insertelement <4 x i32> poison, i32 %332, i32 0
  %broadcast.splat1064 = shufflevector <4 x i32> %broadcast.splatinsert1063, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %polly.loop_header712.1.1
  %index1057 = phi i64 [ 0, %polly.loop_header712.1.1 ], [ %index.next1058, %vector.body1055 ]
  %vec.ind1061 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1.1 ], [ %vec.ind.next1062, %vector.body1055 ]
  %333 = add nuw nsw <4 x i64> %vec.ind1061, <i64 32, i64 32, i64 32, i64 32>
  %334 = trunc <4 x i64> %333 to <4 x i32>
  %335 = mul <4 x i32> %broadcast.splat1064, %334
  %336 = add <4 x i32> %335, <i32 2, i32 2, i32 2, i32 2>
  %337 = urem <4 x i32> %336, <i32 60, i32 60, i32 60, i32 60>
  %338 = sitofp <4 x i32> %337 to <4 x double>
  %339 = fmul fast <4 x double> %338, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %340 = extractelement <4 x i64> %333, i32 0
  %341 = shl i64 %340, 3
  %342 = add i64 %341, %331
  %343 = getelementptr i8, i8* %call2, i64 %342
  %344 = bitcast i8* %343 to <4 x double>*
  store <4 x double> %339, <4 x double>* %344, align 8, !alias.scope !90, !noalias !92
  %index.next1058 = add i64 %index1057, 4
  %vec.ind.next1062 = add <4 x i64> %vec.ind1061, <i64 4, i64 4, i64 4, i64 4>
  %345 = icmp eq i64 %index.next1058, 28
  br i1 %345, label %polly.loop_exit720.1.1, label %vector.body1055, !llvm.loop !103

polly.loop_exit720.1.1:                           ; preds = %vector.body1055
  %polly.indvar_next716.1.1 = add nuw nsw i64 %polly.indvar715.1.1, 1
  %exitcond803.1.1.not = icmp eq i64 %polly.indvar_next716.1.1, 32
  br i1 %exitcond803.1.1.not, label %polly.loop_header712.2, label %polly.loop_header712.1.1

polly.loop_header712.2:                           ; preds = %polly.loop_exit720.1.1, %polly.loop_exit720.2
  %polly.indvar715.2 = phi i64 [ %polly.indvar_next716.2, %polly.loop_exit720.2 ], [ 0, %polly.loop_exit720.1.1 ]
  %346 = add nuw nsw i64 %polly.indvar715.2, 64
  %347 = mul nuw nsw i64 %346, 480
  %348 = trunc i64 %346 to i32
  %broadcast.splatinsert1077 = insertelement <4 x i32> poison, i32 %348, i32 0
  %broadcast.splat1078 = shufflevector <4 x i32> %broadcast.splatinsert1077, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %polly.loop_header712.2
  %index1069 = phi i64 [ 0, %polly.loop_header712.2 ], [ %index.next1070, %vector.body1067 ]
  %vec.ind1075 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712.2 ], [ %vec.ind.next1076, %vector.body1067 ]
  %349 = mul <4 x i32> %vec.ind1075, %broadcast.splat1078
  %350 = add <4 x i32> %349, <i32 2, i32 2, i32 2, i32 2>
  %351 = urem <4 x i32> %350, <i32 60, i32 60, i32 60, i32 60>
  %352 = sitofp <4 x i32> %351 to <4 x double>
  %353 = fmul fast <4 x double> %352, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %354 = shl i64 %index1069, 3
  %355 = add i64 %354, %347
  %356 = getelementptr i8, i8* %call2, i64 %355
  %357 = bitcast i8* %356 to <4 x double>*
  store <4 x double> %353, <4 x double>* %357, align 8, !alias.scope !90, !noalias !92
  %index.next1070 = add i64 %index1069, 4
  %vec.ind.next1076 = add <4 x i32> %vec.ind1075, <i32 4, i32 4, i32 4, i32 4>
  %358 = icmp eq i64 %index.next1070, 32
  br i1 %358, label %polly.loop_exit720.2, label %vector.body1067, !llvm.loop !104

polly.loop_exit720.2:                             ; preds = %vector.body1067
  %polly.indvar_next716.2 = add nuw nsw i64 %polly.indvar715.2, 1
  %exitcond803.2.not = icmp eq i64 %polly.indvar_next716.2, 16
  br i1 %exitcond803.2.not, label %polly.loop_header712.1.2, label %polly.loop_header712.2

polly.loop_header712.1.2:                         ; preds = %polly.loop_exit720.2, %polly.loop_exit720.1.2
  %polly.indvar715.1.2 = phi i64 [ %polly.indvar_next716.1.2, %polly.loop_exit720.1.2 ], [ 0, %polly.loop_exit720.2 ]
  %359 = add nuw nsw i64 %polly.indvar715.1.2, 64
  %360 = mul nuw nsw i64 %359, 480
  %361 = trunc i64 %359 to i32
  %broadcast.splatinsert1089 = insertelement <4 x i32> poison, i32 %361, i32 0
  %broadcast.splat1090 = shufflevector <4 x i32> %broadcast.splatinsert1089, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %polly.loop_header712.1.2
  %index1083 = phi i64 [ 0, %polly.loop_header712.1.2 ], [ %index.next1084, %vector.body1081 ]
  %vec.ind1087 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1.2 ], [ %vec.ind.next1088, %vector.body1081 ]
  %362 = add nuw nsw <4 x i64> %vec.ind1087, <i64 32, i64 32, i64 32, i64 32>
  %363 = trunc <4 x i64> %362 to <4 x i32>
  %364 = mul <4 x i32> %broadcast.splat1090, %363
  %365 = add <4 x i32> %364, <i32 2, i32 2, i32 2, i32 2>
  %366 = urem <4 x i32> %365, <i32 60, i32 60, i32 60, i32 60>
  %367 = sitofp <4 x i32> %366 to <4 x double>
  %368 = fmul fast <4 x double> %367, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %369 = extractelement <4 x i64> %362, i32 0
  %370 = shl i64 %369, 3
  %371 = add i64 %370, %360
  %372 = getelementptr i8, i8* %call2, i64 %371
  %373 = bitcast i8* %372 to <4 x double>*
  store <4 x double> %368, <4 x double>* %373, align 8, !alias.scope !90, !noalias !92
  %index.next1084 = add i64 %index1083, 4
  %vec.ind.next1088 = add <4 x i64> %vec.ind1087, <i64 4, i64 4, i64 4, i64 4>
  %374 = icmp eq i64 %index.next1084, 28
  br i1 %374, label %polly.loop_exit720.1.2, label %vector.body1081, !llvm.loop !105

polly.loop_exit720.1.2:                           ; preds = %vector.body1081
  %polly.indvar_next716.1.2 = add nuw nsw i64 %polly.indvar715.1.2, 1
  %exitcond803.1.2.not = icmp eq i64 %polly.indvar_next716.1.2, 16
  br i1 %exitcond803.1.2.not, label %polly.loop_header738, label %polly.loop_header712.1.2

polly.loop_header685.1:                           ; preds = %polly.loop_exit693, %polly.loop_exit693.1
  %polly.indvar688.1 = phi i64 [ %polly.indvar_next689.1, %polly.loop_exit693.1 ], [ 0, %polly.loop_exit693 ]
  %375 = mul nuw nsw i64 %polly.indvar688.1, 640
  %376 = trunc i64 %polly.indvar688.1 to i32
  %broadcast.splatinsert923 = insertelement <4 x i32> poison, i32 %376, i32 0
  %broadcast.splat924 = shufflevector <4 x i32> %broadcast.splatinsert923, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body915

vector.body915:                                   ; preds = %vector.body915, %polly.loop_header685.1
  %index917 = phi i64 [ 0, %polly.loop_header685.1 ], [ %index.next918, %vector.body915 ]
  %vec.ind921 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1 ], [ %vec.ind.next922, %vector.body915 ]
  %377 = add nuw nsw <4 x i64> %vec.ind921, <i64 32, i64 32, i64 32, i64 32>
  %378 = trunc <4 x i64> %377 to <4 x i32>
  %379 = mul <4 x i32> %broadcast.splat924, %378
  %380 = add <4 x i32> %379, <i32 3, i32 3, i32 3, i32 3>
  %381 = urem <4 x i32> %380, <i32 80, i32 80, i32 80, i32 80>
  %382 = sitofp <4 x i32> %381 to <4 x double>
  %383 = fmul fast <4 x double> %382, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %384 = extractelement <4 x i64> %377, i32 0
  %385 = shl i64 %384, 3
  %386 = add nuw nsw i64 %385, %375
  %387 = getelementptr i8, i8* %call, i64 %386
  %388 = bitcast i8* %387 to <4 x double>*
  store <4 x double> %383, <4 x double>* %388, align 8, !alias.scope !86, !noalias !88
  %index.next918 = add i64 %index917, 4
  %vec.ind.next922 = add <4 x i64> %vec.ind921, <i64 4, i64 4, i64 4, i64 4>
  %389 = icmp eq i64 %index.next918, 32
  br i1 %389, label %polly.loop_exit693.1, label %vector.body915, !llvm.loop !106

polly.loop_exit693.1:                             ; preds = %vector.body915
  %polly.indvar_next689.1 = add nuw nsw i64 %polly.indvar688.1, 1
  %exitcond812.1.not = icmp eq i64 %polly.indvar_next689.1, 32
  br i1 %exitcond812.1.not, label %polly.loop_header685.2, label %polly.loop_header685.1

polly.loop_header685.2:                           ; preds = %polly.loop_exit693.1, %polly.loop_exit693.2
  %polly.indvar688.2 = phi i64 [ %polly.indvar_next689.2, %polly.loop_exit693.2 ], [ 0, %polly.loop_exit693.1 ]
  %390 = mul nuw nsw i64 %polly.indvar688.2, 640
  %391 = trunc i64 %polly.indvar688.2 to i32
  %broadcast.splatinsert935 = insertelement <4 x i32> poison, i32 %391, i32 0
  %broadcast.splat936 = shufflevector <4 x i32> %broadcast.splatinsert935, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %polly.loop_header685.2
  %index929 = phi i64 [ 0, %polly.loop_header685.2 ], [ %index.next930, %vector.body927 ]
  %vec.ind933 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2 ], [ %vec.ind.next934, %vector.body927 ]
  %392 = add nuw nsw <4 x i64> %vec.ind933, <i64 64, i64 64, i64 64, i64 64>
  %393 = trunc <4 x i64> %392 to <4 x i32>
  %394 = mul <4 x i32> %broadcast.splat936, %393
  %395 = add <4 x i32> %394, <i32 3, i32 3, i32 3, i32 3>
  %396 = urem <4 x i32> %395, <i32 80, i32 80, i32 80, i32 80>
  %397 = sitofp <4 x i32> %396 to <4 x double>
  %398 = fmul fast <4 x double> %397, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %399 = extractelement <4 x i64> %392, i32 0
  %400 = shl i64 %399, 3
  %401 = add nuw nsw i64 %400, %390
  %402 = getelementptr i8, i8* %call, i64 %401
  %403 = bitcast i8* %402 to <4 x double>*
  store <4 x double> %398, <4 x double>* %403, align 8, !alias.scope !86, !noalias !88
  %index.next930 = add i64 %index929, 4
  %vec.ind.next934 = add <4 x i64> %vec.ind933, <i64 4, i64 4, i64 4, i64 4>
  %404 = icmp eq i64 %index.next930, 16
  br i1 %404, label %polly.loop_exit693.2, label %vector.body927, !llvm.loop !107

polly.loop_exit693.2:                             ; preds = %vector.body927
  %polly.indvar_next689.2 = add nuw nsw i64 %polly.indvar688.2, 1
  %exitcond812.2.not = icmp eq i64 %polly.indvar_next689.2, 32
  br i1 %exitcond812.2.not, label %polly.loop_header685.1848, label %polly.loop_header685.2

polly.loop_header685.1848:                        ; preds = %polly.loop_exit693.2, %polly.loop_exit693.1859
  %polly.indvar688.1847 = phi i64 [ %polly.indvar_next689.1857, %polly.loop_exit693.1859 ], [ 0, %polly.loop_exit693.2 ]
  %405 = add nuw nsw i64 %polly.indvar688.1847, 32
  %406 = mul nuw nsw i64 %405, 640
  %407 = trunc i64 %405 to i32
  %broadcast.splatinsert949 = insertelement <4 x i32> poison, i32 %407, i32 0
  %broadcast.splat950 = shufflevector <4 x i32> %broadcast.splatinsert949, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body939

vector.body939:                                   ; preds = %vector.body939, %polly.loop_header685.1848
  %index941 = phi i64 [ 0, %polly.loop_header685.1848 ], [ %index.next942, %vector.body939 ]
  %vec.ind947 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685.1848 ], [ %vec.ind.next948, %vector.body939 ]
  %408 = mul <4 x i32> %vec.ind947, %broadcast.splat950
  %409 = add <4 x i32> %408, <i32 3, i32 3, i32 3, i32 3>
  %410 = urem <4 x i32> %409, <i32 80, i32 80, i32 80, i32 80>
  %411 = sitofp <4 x i32> %410 to <4 x double>
  %412 = fmul fast <4 x double> %411, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %413 = shl i64 %index941, 3
  %414 = add nuw nsw i64 %413, %406
  %415 = getelementptr i8, i8* %call, i64 %414
  %416 = bitcast i8* %415 to <4 x double>*
  store <4 x double> %412, <4 x double>* %416, align 8, !alias.scope !86, !noalias !88
  %index.next942 = add i64 %index941, 4
  %vec.ind.next948 = add <4 x i32> %vec.ind947, <i32 4, i32 4, i32 4, i32 4>
  %417 = icmp eq i64 %index.next942, 32
  br i1 %417, label %polly.loop_exit693.1859, label %vector.body939, !llvm.loop !108

polly.loop_exit693.1859:                          ; preds = %vector.body939
  %polly.indvar_next689.1857 = add nuw nsw i64 %polly.indvar688.1847, 1
  %exitcond812.1858.not = icmp eq i64 %polly.indvar_next689.1857, 32
  br i1 %exitcond812.1858.not, label %polly.loop_header685.1.1, label %polly.loop_header685.1848

polly.loop_header685.1.1:                         ; preds = %polly.loop_exit693.1859, %polly.loop_exit693.1.1
  %polly.indvar688.1.1 = phi i64 [ %polly.indvar_next689.1.1, %polly.loop_exit693.1.1 ], [ 0, %polly.loop_exit693.1859 ]
  %418 = add nuw nsw i64 %polly.indvar688.1.1, 32
  %419 = mul nuw nsw i64 %418, 640
  %420 = trunc i64 %418 to i32
  %broadcast.splatinsert961 = insertelement <4 x i32> poison, i32 %420, i32 0
  %broadcast.splat962 = shufflevector <4 x i32> %broadcast.splatinsert961, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body953

vector.body953:                                   ; preds = %vector.body953, %polly.loop_header685.1.1
  %index955 = phi i64 [ 0, %polly.loop_header685.1.1 ], [ %index.next956, %vector.body953 ]
  %vec.ind959 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1.1 ], [ %vec.ind.next960, %vector.body953 ]
  %421 = add nuw nsw <4 x i64> %vec.ind959, <i64 32, i64 32, i64 32, i64 32>
  %422 = trunc <4 x i64> %421 to <4 x i32>
  %423 = mul <4 x i32> %broadcast.splat962, %422
  %424 = add <4 x i32> %423, <i32 3, i32 3, i32 3, i32 3>
  %425 = urem <4 x i32> %424, <i32 80, i32 80, i32 80, i32 80>
  %426 = sitofp <4 x i32> %425 to <4 x double>
  %427 = fmul fast <4 x double> %426, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %428 = extractelement <4 x i64> %421, i32 0
  %429 = shl i64 %428, 3
  %430 = add nuw nsw i64 %429, %419
  %431 = getelementptr i8, i8* %call, i64 %430
  %432 = bitcast i8* %431 to <4 x double>*
  store <4 x double> %427, <4 x double>* %432, align 8, !alias.scope !86, !noalias !88
  %index.next956 = add i64 %index955, 4
  %vec.ind.next960 = add <4 x i64> %vec.ind959, <i64 4, i64 4, i64 4, i64 4>
  %433 = icmp eq i64 %index.next956, 32
  br i1 %433, label %polly.loop_exit693.1.1, label %vector.body953, !llvm.loop !109

polly.loop_exit693.1.1:                           ; preds = %vector.body953
  %polly.indvar_next689.1.1 = add nuw nsw i64 %polly.indvar688.1.1, 1
  %exitcond812.1.1.not = icmp eq i64 %polly.indvar_next689.1.1, 32
  br i1 %exitcond812.1.1.not, label %polly.loop_header685.2.1, label %polly.loop_header685.1.1

polly.loop_header685.2.1:                         ; preds = %polly.loop_exit693.1.1, %polly.loop_exit693.2.1
  %polly.indvar688.2.1 = phi i64 [ %polly.indvar_next689.2.1, %polly.loop_exit693.2.1 ], [ 0, %polly.loop_exit693.1.1 ]
  %434 = add nuw nsw i64 %polly.indvar688.2.1, 32
  %435 = mul nuw nsw i64 %434, 640
  %436 = trunc i64 %434 to i32
  %broadcast.splatinsert973 = insertelement <4 x i32> poison, i32 %436, i32 0
  %broadcast.splat974 = shufflevector <4 x i32> %broadcast.splatinsert973, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %polly.loop_header685.2.1
  %index967 = phi i64 [ 0, %polly.loop_header685.2.1 ], [ %index.next968, %vector.body965 ]
  %vec.ind971 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2.1 ], [ %vec.ind.next972, %vector.body965 ]
  %437 = add nuw nsw <4 x i64> %vec.ind971, <i64 64, i64 64, i64 64, i64 64>
  %438 = trunc <4 x i64> %437 to <4 x i32>
  %439 = mul <4 x i32> %broadcast.splat974, %438
  %440 = add <4 x i32> %439, <i32 3, i32 3, i32 3, i32 3>
  %441 = urem <4 x i32> %440, <i32 80, i32 80, i32 80, i32 80>
  %442 = sitofp <4 x i32> %441 to <4 x double>
  %443 = fmul fast <4 x double> %442, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %444 = extractelement <4 x i64> %437, i32 0
  %445 = shl i64 %444, 3
  %446 = add nuw nsw i64 %445, %435
  %447 = getelementptr i8, i8* %call, i64 %446
  %448 = bitcast i8* %447 to <4 x double>*
  store <4 x double> %443, <4 x double>* %448, align 8, !alias.scope !86, !noalias !88
  %index.next968 = add i64 %index967, 4
  %vec.ind.next972 = add <4 x i64> %vec.ind971, <i64 4, i64 4, i64 4, i64 4>
  %449 = icmp eq i64 %index.next968, 16
  br i1 %449, label %polly.loop_exit693.2.1, label %vector.body965, !llvm.loop !110

polly.loop_exit693.2.1:                           ; preds = %vector.body965
  %polly.indvar_next689.2.1 = add nuw nsw i64 %polly.indvar688.2.1, 1
  %exitcond812.2.1.not = icmp eq i64 %polly.indvar_next689.2.1, 32
  br i1 %exitcond812.2.1.not, label %polly.loop_header685.2862, label %polly.loop_header685.2.1

polly.loop_header685.2862:                        ; preds = %polly.loop_exit693.2.1, %polly.loop_exit693.2873
  %polly.indvar688.2861 = phi i64 [ %polly.indvar_next689.2871, %polly.loop_exit693.2873 ], [ 0, %polly.loop_exit693.2.1 ]
  %450 = add nuw nsw i64 %polly.indvar688.2861, 64
  %451 = mul nuw nsw i64 %450, 640
  %452 = trunc i64 %450 to i32
  %broadcast.splatinsert987 = insertelement <4 x i32> poison, i32 %452, i32 0
  %broadcast.splat988 = shufflevector <4 x i32> %broadcast.splatinsert987, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body977

vector.body977:                                   ; preds = %vector.body977, %polly.loop_header685.2862
  %index979 = phi i64 [ 0, %polly.loop_header685.2862 ], [ %index.next980, %vector.body977 ]
  %vec.ind985 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685.2862 ], [ %vec.ind.next986, %vector.body977 ]
  %453 = mul <4 x i32> %vec.ind985, %broadcast.splat988
  %454 = add <4 x i32> %453, <i32 3, i32 3, i32 3, i32 3>
  %455 = urem <4 x i32> %454, <i32 80, i32 80, i32 80, i32 80>
  %456 = sitofp <4 x i32> %455 to <4 x double>
  %457 = fmul fast <4 x double> %456, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %458 = shl i64 %index979, 3
  %459 = add nuw nsw i64 %458, %451
  %460 = getelementptr i8, i8* %call, i64 %459
  %461 = bitcast i8* %460 to <4 x double>*
  store <4 x double> %457, <4 x double>* %461, align 8, !alias.scope !86, !noalias !88
  %index.next980 = add i64 %index979, 4
  %vec.ind.next986 = add <4 x i32> %vec.ind985, <i32 4, i32 4, i32 4, i32 4>
  %462 = icmp eq i64 %index.next980, 32
  br i1 %462, label %polly.loop_exit693.2873, label %vector.body977, !llvm.loop !111

polly.loop_exit693.2873:                          ; preds = %vector.body977
  %polly.indvar_next689.2871 = add nuw nsw i64 %polly.indvar688.2861, 1
  %exitcond812.2872.not = icmp eq i64 %polly.indvar_next689.2871, 16
  br i1 %exitcond812.2872.not, label %polly.loop_header685.1.2, label %polly.loop_header685.2862

polly.loop_header685.1.2:                         ; preds = %polly.loop_exit693.2873, %polly.loop_exit693.1.2
  %polly.indvar688.1.2 = phi i64 [ %polly.indvar_next689.1.2, %polly.loop_exit693.1.2 ], [ 0, %polly.loop_exit693.2873 ]
  %463 = add nuw nsw i64 %polly.indvar688.1.2, 64
  %464 = mul nuw nsw i64 %463, 640
  %465 = trunc i64 %463 to i32
  %broadcast.splatinsert999 = insertelement <4 x i32> poison, i32 %465, i32 0
  %broadcast.splat1000 = shufflevector <4 x i32> %broadcast.splatinsert999, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body991

vector.body991:                                   ; preds = %vector.body991, %polly.loop_header685.1.2
  %index993 = phi i64 [ 0, %polly.loop_header685.1.2 ], [ %index.next994, %vector.body991 ]
  %vec.ind997 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1.2 ], [ %vec.ind.next998, %vector.body991 ]
  %466 = add nuw nsw <4 x i64> %vec.ind997, <i64 32, i64 32, i64 32, i64 32>
  %467 = trunc <4 x i64> %466 to <4 x i32>
  %468 = mul <4 x i32> %broadcast.splat1000, %467
  %469 = add <4 x i32> %468, <i32 3, i32 3, i32 3, i32 3>
  %470 = urem <4 x i32> %469, <i32 80, i32 80, i32 80, i32 80>
  %471 = sitofp <4 x i32> %470 to <4 x double>
  %472 = fmul fast <4 x double> %471, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %473 = extractelement <4 x i64> %466, i32 0
  %474 = shl i64 %473, 3
  %475 = add nuw nsw i64 %474, %464
  %476 = getelementptr i8, i8* %call, i64 %475
  %477 = bitcast i8* %476 to <4 x double>*
  store <4 x double> %472, <4 x double>* %477, align 8, !alias.scope !86, !noalias !88
  %index.next994 = add i64 %index993, 4
  %vec.ind.next998 = add <4 x i64> %vec.ind997, <i64 4, i64 4, i64 4, i64 4>
  %478 = icmp eq i64 %index.next994, 32
  br i1 %478, label %polly.loop_exit693.1.2, label %vector.body991, !llvm.loop !112

polly.loop_exit693.1.2:                           ; preds = %vector.body991
  %polly.indvar_next689.1.2 = add nuw nsw i64 %polly.indvar688.1.2, 1
  %exitcond812.1.2.not = icmp eq i64 %polly.indvar_next689.1.2, 16
  br i1 %exitcond812.1.2.not, label %polly.loop_header685.2.2, label %polly.loop_header685.1.2

polly.loop_header685.2.2:                         ; preds = %polly.loop_exit693.1.2, %polly.loop_exit693.2.2
  %polly.indvar688.2.2 = phi i64 [ %polly.indvar_next689.2.2, %polly.loop_exit693.2.2 ], [ 0, %polly.loop_exit693.1.2 ]
  %479 = add nuw nsw i64 %polly.indvar688.2.2, 64
  %480 = mul nuw nsw i64 %479, 640
  %481 = trunc i64 %479 to i32
  %broadcast.splatinsert1011 = insertelement <4 x i32> poison, i32 %481, i32 0
  %broadcast.splat1012 = shufflevector <4 x i32> %broadcast.splatinsert1011, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %polly.loop_header685.2.2
  %index1005 = phi i64 [ 0, %polly.loop_header685.2.2 ], [ %index.next1006, %vector.body1003 ]
  %vec.ind1009 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2.2 ], [ %vec.ind.next1010, %vector.body1003 ]
  %482 = add nuw nsw <4 x i64> %vec.ind1009, <i64 64, i64 64, i64 64, i64 64>
  %483 = trunc <4 x i64> %482 to <4 x i32>
  %484 = mul <4 x i32> %broadcast.splat1012, %483
  %485 = add <4 x i32> %484, <i32 3, i32 3, i32 3, i32 3>
  %486 = urem <4 x i32> %485, <i32 80, i32 80, i32 80, i32 80>
  %487 = sitofp <4 x i32> %486 to <4 x double>
  %488 = fmul fast <4 x double> %487, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %489 = extractelement <4 x i64> %482, i32 0
  %490 = shl i64 %489, 3
  %491 = add nuw nsw i64 %490, %480
  %492 = getelementptr i8, i8* %call, i64 %491
  %493 = bitcast i8* %492 to <4 x double>*
  store <4 x double> %488, <4 x double>* %493, align 8, !alias.scope !86, !noalias !88
  %index.next1006 = add i64 %index1005, 4
  %vec.ind.next1010 = add <4 x i64> %vec.ind1009, <i64 4, i64 4, i64 4, i64 4>
  %494 = icmp eq i64 %index.next1006, 16
  br i1 %494, label %polly.loop_exit693.2.2, label %vector.body1003, !llvm.loop !113

polly.loop_exit693.2.2:                           ; preds = %vector.body1003
  %polly.indvar_next689.2.2 = add nuw nsw i64 %polly.indvar688.2.2, 1
  %exitcond812.2.2.not = icmp eq i64 %polly.indvar_next689.2.2, 16
  br i1 %exitcond812.2.2.not, label %polly.loop_header712, label %polly.loop_header685.2.2
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
!24 = !{!"llvm.loop.tile.size", i32 4}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !24, !33, !36}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.followup_floor", !34}
!34 = distinct !{!34, !12, !35}
!35 = !{!"llvm.loop.id", !"j1"}
!36 = !{!"llvm.loop.tile.followup_tile", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j2"}
!39 = distinct !{!39, !12, !22, !40, !41, !42, !43, !44, !47}
!40 = !{!"llvm.loop.id", !"i"}
!41 = !{!"llvm.loop.tile.enable", i1 true}
!42 = !{!"llvm.loop.tile.depth", i32 3}
!43 = !{!"llvm.loop.tile.size", i32 80}
!44 = !{!"llvm.loop.tile.followup_floor", !45}
!45 = distinct !{!45, !12, !46}
!46 = !{!"llvm.loop.id", !"i1"}
!47 = !{!"llvm.loop.tile.followup_tile", !48}
!48 = distinct !{!48, !12, !49}
!49 = !{!"llvm.loop.id", !"i2"}
!50 = distinct !{!50, !12, !13}
!51 = distinct !{!51, !12, !13}
!52 = distinct !{!52, !12, !13}
!53 = distinct !{!53, !12, !13}
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !4, i64 0}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !59, !"polly.alias.scope.MemRef_call"}
!59 = distinct !{!59, !"polly.alias.scope.domain"}
!60 = !{!61, !62}
!61 = distinct !{!61, !59, !"polly.alias.scope.MemRef_call1"}
!62 = distinct !{!62, !59, !"polly.alias.scope.MemRef_call2"}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !65, !13}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = !{!58, !61}
!67 = !{!58, !62}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !65, !13}
!75 = !{!68, !71}
!76 = !{!68, !72}
!77 = distinct !{!77, !78, !"polly.alias.scope.MemRef_call"}
!78 = distinct !{!78, !"polly.alias.scope.domain"}
!79 = !{!80, !81}
!80 = distinct !{!80, !78, !"polly.alias.scope.MemRef_call1"}
!81 = distinct !{!81, !78, !"polly.alias.scope.MemRef_call2"}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !65, !13}
!84 = !{!77, !80}
!85 = !{!77, !81}
!86 = distinct !{!86, !87, !"polly.alias.scope.MemRef_call"}
!87 = distinct !{!87, !"polly.alias.scope.domain"}
!88 = !{!89, !90}
!89 = distinct !{!89, !87, !"polly.alias.scope.MemRef_call1"}
!90 = distinct !{!90, !87, !"polly.alias.scope.MemRef_call2"}
!91 = distinct !{!91, !13}
!92 = !{!89, !86}
!93 = distinct !{!93, !13}
!94 = !{!90, !86}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
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
