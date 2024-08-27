; ModuleID = 'syr2k_recreations//mmp_syr2k_S_116.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_116.c"
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !40

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit513.1
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
  br i1 %57, label %middle.block1189, label %vector.body1191, !llvm.loop !51

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !40

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit363.1
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
  br i1 %68, label %middle.block1215, label %vector.body1217, !llvm.loop !53

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !40

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit213.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !55
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !57

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !58

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
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
  %wide.load1240 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1240, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1237 = add i64 %index1236, 4
  %95 = icmp eq i64 %index.next1237, %n.vec1235
  br i1 %95, label %middle.block1227, label %vector.body1229, !llvm.loop !64

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
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond767.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond767.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit213.1
  %indvars.iv761 = phi i64 [ %indvars.iv.next762, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit193 ]
  %smin763 = call i64 @llvm.smin.i64(i64 %indvars.iv761, i64 -52)
  %97 = add nsw i64 %smin763, 60
  %98 = shl nsw i64 %polly.indvar202, 3
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 49)
  %99 = mul nuw nsw i64 %polly.indvar214, 480
  %scevgep232 = getelementptr i8, i8* %call2, i64 %99
  %scevgep239 = getelementptr i8, i8* %call1, i64 %99
  %100 = mul nuw nsw i64 %polly.indvar214, 640
  %scevgep243 = getelementptr i8, i8* %call, i64 %100
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond765.not = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond765.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %101 = add nuw nsw i64 %polly.indvar220, %98
  %102 = shl i64 %101, 3
  %scevgep233 = getelementptr i8, i8* %scevgep232, i64 %102
  %scevgep233234 = bitcast i8* %scevgep233 to double*
  %_p_scalar_235 = load double, double* %scevgep233234, align 8, !alias.scope !63, !noalias !67
  %scevgep240 = getelementptr i8, i8* %scevgep239, i64 %102
  %scevgep240241 = bitcast i8* %scevgep240 to double*
  %_p_scalar_242 = load double, double* %scevgep240241, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond764.not = icmp eq i64 %polly.indvar_next221, %97
  br i1 %exitcond764.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header223, %polly.loop_header217
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next227, %polly.loop_header223 ]
  %103 = mul nuw nsw i64 %polly.indvar226, 480
  %104 = add i64 %103, %102
  %scevgep229 = getelementptr i8, i8* %call1, i64 %104
  %scevgep229230 = bitcast i8* %scevgep229 to double*
  %_p_scalar_231 = load double, double* %scevgep229230, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112 = fmul fast double %_p_scalar_235, %_p_scalar_231
  %scevgep236 = getelementptr i8, i8* %call2, i64 %104
  %scevgep236237 = bitcast i8* %scevgep236 to double*
  %_p_scalar_238 = load double, double* %scevgep236237, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114 = fmul fast double %_p_scalar_242, %_p_scalar_238
  %105 = shl i64 %polly.indvar226, 3
  %scevgep244 = getelementptr i8, i8* %scevgep243, i64 %105
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_246
  store double %p_add42.i118, double* %scevgep244245, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar226, %smin
  br i1 %exitcond.not, label %polly.loop_exit225, label %polly.loop_header223

polly.loop_header333:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit341
  %indvar1204 = phi i64 [ %indvar.next1205, %polly.loop_exit341 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar336 = phi i64 [ %polly.indvar_next337, %polly.loop_exit341 ], [ 1, %kernel_syr2k.exit ]
  %106 = add i64 %indvar1204, 1
  %107 = mul nuw nsw i64 %polly.indvar336, 640
  %scevgep345 = getelementptr i8, i8* %call, i64 %107
  %min.iters.check1206 = icmp ult i64 %106, 4
  br i1 %min.iters.check1206, label %polly.loop_header339.preheader, label %vector.ph1207

vector.ph1207:                                    ; preds = %polly.loop_header333
  %n.vec1209 = and i64 %106, -4
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %vector.ph1207
  %index1210 = phi i64 [ 0, %vector.ph1207 ], [ %index.next1211, %vector.body1203 ]
  %108 = shl nuw nsw i64 %index1210, 3
  %109 = getelementptr i8, i8* %scevgep345, i64 %108
  %110 = bitcast i8* %109 to <4 x double>*
  %wide.load1214 = load <4 x double>, <4 x double>* %110, align 8, !alias.scope !69, !noalias !71
  %111 = fmul fast <4 x double> %wide.load1214, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %112 = bitcast i8* %109 to <4 x double>*
  store <4 x double> %111, <4 x double>* %112, align 8, !alias.scope !69, !noalias !71
  %index.next1211 = add i64 %index1210, 4
  %113 = icmp eq i64 %index.next1211, %n.vec1209
  br i1 %113, label %middle.block1201, label %vector.body1203, !llvm.loop !74

middle.block1201:                                 ; preds = %vector.body1203
  %cmp.n1213 = icmp eq i64 %106, %n.vec1209
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
  %114 = shl nuw nsw i64 %polly.indvar342, 3
  %scevgep346 = getelementptr i8, i8* %scevgep345, i64 %114
  %scevgep346347 = bitcast i8* %scevgep346 to double*
  %_p_scalar_348 = load double, double* %scevgep346347, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_348, 1.200000e+00
  store double %p_mul.i57, double* %scevgep346347, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next343 = add nuw nsw i64 %polly.indvar342, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next343, %polly.indvar336
  br i1 %exitcond779.not, label %polly.loop_exit341, label %polly.loop_header339, !llvm.loop !75

polly.loop_header349:                             ; preds = %polly.loop_exit341, %polly.loop_exit363.1
  %indvars.iv773 = phi i64 [ %indvars.iv.next774, %polly.loop_exit363.1 ], [ 0, %polly.loop_exit341 ]
  %polly.indvar352 = phi i64 [ %polly.indvar_next353, %polly.loop_exit363.1 ], [ 0, %polly.loop_exit341 ]
  %smin775 = call i64 @llvm.smin.i64(i64 %indvars.iv773, i64 -52)
  %115 = add nsw i64 %smin775, 60
  %116 = shl nsw i64 %polly.indvar352, 3
  br label %polly.loop_header361

polly.loop_header361:                             ; preds = %polly.loop_exit369, %polly.loop_header349
  %indvars.iv769 = phi i64 [ %indvars.iv.next770, %polly.loop_exit369 ], [ 0, %polly.loop_header349 ]
  %polly.indvar364 = phi i64 [ %polly.indvar_next365, %polly.loop_exit369 ], [ 0, %polly.loop_header349 ]
  %smin771 = call i64 @llvm.smin.i64(i64 %indvars.iv769, i64 49)
  %117 = mul nuw nsw i64 %polly.indvar364, 480
  %scevgep382 = getelementptr i8, i8* %call2, i64 %117
  %scevgep389 = getelementptr i8, i8* %call1, i64 %117
  %118 = mul nuw nsw i64 %polly.indvar364, 640
  %scevgep393 = getelementptr i8, i8* %call, i64 %118
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_exit375
  %polly.indvar_next365 = add nuw nsw i64 %polly.indvar364, 1
  %indvars.iv.next770 = add nuw nsw i64 %indvars.iv769, 1
  %exitcond777.not = icmp eq i64 %indvars.iv.next770, 80
  br i1 %exitcond777.not, label %polly.loop_header361.1, label %polly.loop_header361

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.loop_header361
  %polly.indvar370 = phi i64 [ 0, %polly.loop_header361 ], [ %polly.indvar_next371, %polly.loop_exit375 ]
  %119 = add nuw nsw i64 %polly.indvar370, %116
  %120 = shl i64 %119, 3
  %scevgep383 = getelementptr i8, i8* %scevgep382, i64 %120
  %scevgep383384 = bitcast i8* %scevgep383 to double*
  %_p_scalar_385 = load double, double* %scevgep383384, align 8, !alias.scope !73, !noalias !76
  %scevgep390 = getelementptr i8, i8* %scevgep389, i64 %120
  %scevgep390391 = bitcast i8* %scevgep390 to double*
  %_p_scalar_392 = load double, double* %scevgep390391, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond776.not = icmp eq i64 %polly.indvar_next371, %115
  br i1 %exitcond776.not, label %polly.loop_exit369, label %polly.loop_header367

polly.loop_header373:                             ; preds = %polly.loop_header373, %polly.loop_header367
  %polly.indvar376 = phi i64 [ 0, %polly.loop_header367 ], [ %polly.indvar_next377, %polly.loop_header373 ]
  %121 = mul nuw nsw i64 %polly.indvar376, 480
  %122 = add i64 %121, %120
  %scevgep379 = getelementptr i8, i8* %call1, i64 %122
  %scevgep379380 = bitcast i8* %scevgep379 to double*
  %_p_scalar_381 = load double, double* %scevgep379380, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73 = fmul fast double %_p_scalar_385, %_p_scalar_381
  %scevgep386 = getelementptr i8, i8* %call2, i64 %122
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75 = fmul fast double %_p_scalar_392, %_p_scalar_388
  %123 = shl i64 %polly.indvar376, 3
  %scevgep394 = getelementptr i8, i8* %scevgep393, i64 %123
  %scevgep394395 = bitcast i8* %scevgep394 to double*
  %_p_scalar_396 = load double, double* %scevgep394395, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_396
  store double %p_add42.i79, double* %scevgep394395, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond772.not = icmp eq i64 %polly.indvar376, %smin771
  br i1 %exitcond772.not, label %polly.loop_exit375, label %polly.loop_header373

polly.loop_header483:                             ; preds = %init_array.exit, %polly.loop_exit491
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit491 ], [ 0, %init_array.exit ]
  %polly.indvar486 = phi i64 [ %polly.indvar_next487, %polly.loop_exit491 ], [ 1, %init_array.exit ]
  %124 = add i64 %indvar, 1
  %125 = mul nuw nsw i64 %polly.indvar486, 640
  %scevgep495 = getelementptr i8, i8* %call, i64 %125
  %min.iters.check1180 = icmp ult i64 %124, 4
  br i1 %min.iters.check1180, label %polly.loop_header489.preheader, label %vector.ph1181

vector.ph1181:                                    ; preds = %polly.loop_header483
  %n.vec1183 = and i64 %124, -4
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %vector.ph1181
  %index1184 = phi i64 [ 0, %vector.ph1181 ], [ %index.next1185, %vector.body1179 ]
  %126 = shl nuw nsw i64 %index1184, 3
  %127 = getelementptr i8, i8* %scevgep495, i64 %126
  %128 = bitcast i8* %127 to <4 x double>*
  %wide.load1188 = load <4 x double>, <4 x double>* %128, align 8, !alias.scope !78, !noalias !80
  %129 = fmul fast <4 x double> %wide.load1188, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %130 = bitcast i8* %127 to <4 x double>*
  store <4 x double> %129, <4 x double>* %130, align 8, !alias.scope !78, !noalias !80
  %index.next1185 = add i64 %index1184, 4
  %131 = icmp eq i64 %index.next1185, %n.vec1183
  br i1 %131, label %middle.block1177, label %vector.body1179, !llvm.loop !83

middle.block1177:                                 ; preds = %vector.body1179
  %cmp.n1187 = icmp eq i64 %124, %n.vec1183
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
  %132 = shl nuw nsw i64 %polly.indvar492, 3
  %scevgep496 = getelementptr i8, i8* %scevgep495, i64 %132
  %scevgep496497 = bitcast i8* %scevgep496 to double*
  %_p_scalar_498 = load double, double* %scevgep496497, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_498, 1.200000e+00
  store double %p_mul.i, double* %scevgep496497, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next493 = add nuw nsw i64 %polly.indvar492, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next493, %polly.indvar486
  br i1 %exitcond791.not, label %polly.loop_exit491, label %polly.loop_header489, !llvm.loop !84

polly.loop_header499:                             ; preds = %polly.loop_exit491, %polly.loop_exit513.1
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit513.1 ], [ 0, %polly.loop_exit491 ]
  %polly.indvar502 = phi i64 [ %polly.indvar_next503, %polly.loop_exit513.1 ], [ 0, %polly.loop_exit491 ]
  %smin787 = call i64 @llvm.smin.i64(i64 %indvars.iv785, i64 -52)
  %133 = add nsw i64 %smin787, 60
  %134 = shl nsw i64 %polly.indvar502, 3
  br label %polly.loop_header511

polly.loop_header511:                             ; preds = %polly.loop_exit519, %polly.loop_header499
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %polly.loop_exit519 ], [ 0, %polly.loop_header499 ]
  %polly.indvar514 = phi i64 [ %polly.indvar_next515, %polly.loop_exit519 ], [ 0, %polly.loop_header499 ]
  %smin783 = call i64 @llvm.smin.i64(i64 %indvars.iv781, i64 49)
  %135 = mul nuw nsw i64 %polly.indvar514, 480
  %scevgep532 = getelementptr i8, i8* %call2, i64 %135
  %scevgep539 = getelementptr i8, i8* %call1, i64 %135
  %136 = mul nuw nsw i64 %polly.indvar514, 640
  %scevgep543 = getelementptr i8, i8* %call, i64 %136
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_exit525
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1
  %exitcond789.not = icmp eq i64 %indvars.iv.next782, 80
  br i1 %exitcond789.not, label %polly.loop_header511.1, label %polly.loop_header511

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.loop_header511
  %polly.indvar520 = phi i64 [ 0, %polly.loop_header511 ], [ %polly.indvar_next521, %polly.loop_exit525 ]
  %137 = add nuw nsw i64 %polly.indvar520, %134
  %138 = shl i64 %137, 3
  %scevgep533 = getelementptr i8, i8* %scevgep532, i64 %138
  %scevgep533534 = bitcast i8* %scevgep533 to double*
  %_p_scalar_535 = load double, double* %scevgep533534, align 8, !alias.scope !82, !noalias !85
  %scevgep540 = getelementptr i8, i8* %scevgep539, i64 %138
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_header523
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond788.not = icmp eq i64 %polly.indvar_next521, %133
  br i1 %exitcond788.not, label %polly.loop_exit519, label %polly.loop_header517

polly.loop_header523:                             ; preds = %polly.loop_header523, %polly.loop_header517
  %polly.indvar526 = phi i64 [ 0, %polly.loop_header517 ], [ %polly.indvar_next527, %polly.loop_header523 ]
  %139 = mul nuw nsw i64 %polly.indvar526, 480
  %140 = add i64 %139, %138
  %scevgep529 = getelementptr i8, i8* %call1, i64 %140
  %scevgep529530 = bitcast i8* %scevgep529 to double*
  %_p_scalar_531 = load double, double* %scevgep529530, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i = fmul fast double %_p_scalar_535, %_p_scalar_531
  %scevgep536 = getelementptr i8, i8* %call2, i64 %140
  %scevgep536537 = bitcast i8* %scevgep536 to double*
  %_p_scalar_538 = load double, double* %scevgep536537, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i = fmul fast double %_p_scalar_542, %_p_scalar_538
  %141 = shl i64 %polly.indvar526, 3
  %scevgep544 = getelementptr i8, i8* %scevgep543, i64 %141
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_546
  store double %p_add42.i, double* %scevgep544545, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond784.not = icmp eq i64 %polly.indvar526, %smin783
  br i1 %exitcond784.not, label %polly.loop_exit525, label %polly.loop_header523

polly.loop_header685:                             ; preds = %entry, %polly.loop_exit693
  %polly.indvar688 = phi i64 [ %polly.indvar_next689, %polly.loop_exit693 ], [ 0, %entry ]
  %142 = mul nuw nsw i64 %polly.indvar688, 640
  %143 = trunc i64 %polly.indvar688 to i32
  %broadcast.splatinsert911 = insertelement <4 x i32> poison, i32 %143, i32 0
  %broadcast.splat912 = shufflevector <4 x i32> %broadcast.splatinsert911, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body901

vector.body901:                                   ; preds = %vector.body901, %polly.loop_header685
  %index903 = phi i64 [ 0, %polly.loop_header685 ], [ %index.next904, %vector.body901 ]
  %vec.ind909 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685 ], [ %vec.ind.next910, %vector.body901 ]
  %144 = mul <4 x i32> %vec.ind909, %broadcast.splat912
  %145 = add <4 x i32> %144, <i32 3, i32 3, i32 3, i32 3>
  %146 = urem <4 x i32> %145, <i32 80, i32 80, i32 80, i32 80>
  %147 = sitofp <4 x i32> %146 to <4 x double>
  %148 = fmul fast <4 x double> %147, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %149 = shl i64 %index903, 3
  %150 = add nuw nsw i64 %149, %142
  %151 = getelementptr i8, i8* %call, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %148, <4 x double>* %152, align 8, !alias.scope !87, !noalias !89
  %index.next904 = add i64 %index903, 4
  %vec.ind.next910 = add <4 x i32> %vec.ind909, <i32 4, i32 4, i32 4, i32 4>
  %153 = icmp eq i64 %index.next904, 32
  br i1 %153, label %polly.loop_exit693, label %vector.body901, !llvm.loop !92

polly.loop_exit693:                               ; preds = %vector.body901
  %polly.indvar_next689 = add nuw nsw i64 %polly.indvar688, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next689, 32
  br i1 %exitcond812.not, label %polly.loop_header685.1, label %polly.loop_header685

polly.loop_header712:                             ; preds = %polly.loop_exit693.2.2, %polly.loop_exit720
  %polly.indvar715 = phi i64 [ %polly.indvar_next716, %polly.loop_exit720 ], [ 0, %polly.loop_exit693.2.2 ]
  %154 = mul nuw nsw i64 %polly.indvar715, 480
  %155 = trunc i64 %polly.indvar715 to i32
  %broadcast.splatinsert1025 = insertelement <4 x i32> poison, i32 %155, i32 0
  %broadcast.splat1026 = shufflevector <4 x i32> %broadcast.splatinsert1025, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1015

vector.body1015:                                  ; preds = %vector.body1015, %polly.loop_header712
  %index1017 = phi i64 [ 0, %polly.loop_header712 ], [ %index.next1018, %vector.body1015 ]
  %vec.ind1023 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712 ], [ %vec.ind.next1024, %vector.body1015 ]
  %156 = mul <4 x i32> %vec.ind1023, %broadcast.splat1026
  %157 = add <4 x i32> %156, <i32 2, i32 2, i32 2, i32 2>
  %158 = urem <4 x i32> %157, <i32 60, i32 60, i32 60, i32 60>
  %159 = sitofp <4 x i32> %158 to <4 x double>
  %160 = fmul fast <4 x double> %159, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %161 = shl i64 %index1017, 3
  %162 = add i64 %161, %154
  %163 = getelementptr i8, i8* %call2, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %160, <4 x double>* %164, align 8, !alias.scope !91, !noalias !93
  %index.next1018 = add i64 %index1017, 4
  %vec.ind.next1024 = add <4 x i32> %vec.ind1023, <i32 4, i32 4, i32 4, i32 4>
  %165 = icmp eq i64 %index.next1018, 32
  br i1 %165, label %polly.loop_exit720, label %vector.body1015, !llvm.loop !94

polly.loop_exit720:                               ; preds = %vector.body1015
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next716, 32
  br i1 %exitcond803.not, label %polly.loop_header712.1, label %polly.loop_header712

polly.loop_header738:                             ; preds = %polly.loop_exit720.1.2, %polly.loop_exit746
  %polly.indvar741 = phi i64 [ %polly.indvar_next742, %polly.loop_exit746 ], [ 0, %polly.loop_exit720.1.2 ]
  %166 = mul nuw nsw i64 %polly.indvar741, 480
  %167 = trunc i64 %polly.indvar741 to i32
  %broadcast.splatinsert1103 = insertelement <4 x i32> poison, i32 %167, i32 0
  %broadcast.splat1104 = shufflevector <4 x i32> %broadcast.splatinsert1103, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1093

vector.body1093:                                  ; preds = %vector.body1093, %polly.loop_header738
  %index1095 = phi i64 [ 0, %polly.loop_header738 ], [ %index.next1096, %vector.body1093 ]
  %vec.ind1101 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738 ], [ %vec.ind.next1102, %vector.body1093 ]
  %168 = mul <4 x i32> %vec.ind1101, %broadcast.splat1104
  %169 = add <4 x i32> %168, <i32 1, i32 1, i32 1, i32 1>
  %170 = urem <4 x i32> %169, <i32 80, i32 80, i32 80, i32 80>
  %171 = sitofp <4 x i32> %170 to <4 x double>
  %172 = fmul fast <4 x double> %171, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %173 = shl i64 %index1095, 3
  %174 = add i64 %173, %166
  %175 = getelementptr i8, i8* %call1, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %172, <4 x double>* %176, align 8, !alias.scope !90, !noalias !95
  %index.next1096 = add i64 %index1095, 4
  %vec.ind.next1102 = add <4 x i32> %vec.ind1101, <i32 4, i32 4, i32 4, i32 4>
  %177 = icmp eq i64 %index.next1096, 32
  br i1 %177, label %polly.loop_exit746, label %vector.body1093, !llvm.loop !96

polly.loop_exit746:                               ; preds = %vector.body1093
  %polly.indvar_next742 = add nuw nsw i64 %polly.indvar741, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next742, 32
  br i1 %exitcond797.not, label %polly.loop_header738.1, label %polly.loop_header738

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 50, %polly.loop_exit219 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 49)
  %178 = mul nuw nsw i64 %polly.indvar214.1, 480
  %scevgep232.1 = getelementptr i8, i8* %call2, i64 %178
  %scevgep239.1 = getelementptr i8, i8* %call1, i64 %178
  %179 = mul nuw nsw i64 %polly.indvar214.1, 640
  %scevgep243.1 = getelementptr i8, i8* %call, i64 %179
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit225.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_exit225.1 ]
  %180 = add nuw nsw i64 %polly.indvar220.1, %98
  %181 = shl i64 %180, 3
  %scevgep233.1 = getelementptr i8, i8* %scevgep232.1, i64 %181
  %scevgep233234.1 = bitcast i8* %scevgep233.1 to double*
  %_p_scalar_235.1 = load double, double* %scevgep233234.1, align 8, !alias.scope !63, !noalias !67
  %scevgep240.1 = getelementptr i8, i8* %scevgep239.1, i64 %181
  %scevgep240241.1 = bitcast i8* %scevgep240.1 to double*
  %_p_scalar_242.1 = load double, double* %scevgep240241.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.1

polly.loop_header223.1:                           ; preds = %polly.loop_header223.1, %polly.loop_header217.1
  %polly.indvar226.1 = phi i64 [ 0, %polly.loop_header217.1 ], [ %polly.indvar_next227.1, %polly.loop_header223.1 ]
  %182 = add nuw nsw i64 %polly.indvar226.1, 50
  %183 = mul nuw nsw i64 %182, 480
  %184 = add i64 %183, %181
  %scevgep229.1 = getelementptr i8, i8* %call1, i64 %184
  %scevgep229230.1 = bitcast i8* %scevgep229.1 to double*
  %_p_scalar_231.1 = load double, double* %scevgep229230.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.1 = fmul fast double %_p_scalar_235.1, %_p_scalar_231.1
  %scevgep236.1 = getelementptr i8, i8* %call2, i64 %184
  %scevgep236237.1 = bitcast i8* %scevgep236.1 to double*
  %_p_scalar_238.1 = load double, double* %scevgep236237.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.1 = fmul fast double %_p_scalar_242.1, %_p_scalar_238.1
  %185 = shl i64 %182, 3
  %scevgep244.1 = getelementptr i8, i8* %scevgep243.1, i64 %185
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_246.1
  store double %p_add42.i118.1, double* %scevgep244245.1, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar226.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.1

polly.loop_exit225.1:                             ; preds = %polly.loop_header223.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond764.1.not = icmp eq i64 %polly.indvar_next221.1, %97
  br i1 %exitcond764.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond765.1.not = icmp eq i64 %indvars.iv.next.1, 30
  br i1 %exitcond765.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.1
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next762 = add nsw i64 %indvars.iv761, -8
  %exitcond766.not = icmp eq i64 %polly.indvar_next203, 8
  br i1 %exitcond766.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header361.1:                           ; preds = %polly.loop_exit369, %polly.loop_exit369.1
  %indvars.iv769.1 = phi i64 [ %indvars.iv.next770.1, %polly.loop_exit369.1 ], [ 0, %polly.loop_exit369 ]
  %polly.indvar364.1 = phi i64 [ %polly.indvar_next365.1, %polly.loop_exit369.1 ], [ 50, %polly.loop_exit369 ]
  %smin771.1 = call i64 @llvm.smin.i64(i64 %indvars.iv769.1, i64 49)
  %186 = mul nuw nsw i64 %polly.indvar364.1, 480
  %scevgep382.1 = getelementptr i8, i8* %call2, i64 %186
  %scevgep389.1 = getelementptr i8, i8* %call1, i64 %186
  %187 = mul nuw nsw i64 %polly.indvar364.1, 640
  %scevgep393.1 = getelementptr i8, i8* %call, i64 %187
  br label %polly.loop_header367.1

polly.loop_header367.1:                           ; preds = %polly.loop_exit375.1, %polly.loop_header361.1
  %polly.indvar370.1 = phi i64 [ 0, %polly.loop_header361.1 ], [ %polly.indvar_next371.1, %polly.loop_exit375.1 ]
  %188 = add nuw nsw i64 %polly.indvar370.1, %116
  %189 = shl i64 %188, 3
  %scevgep383.1 = getelementptr i8, i8* %scevgep382.1, i64 %189
  %scevgep383384.1 = bitcast i8* %scevgep383.1 to double*
  %_p_scalar_385.1 = load double, double* %scevgep383384.1, align 8, !alias.scope !73, !noalias !76
  %scevgep390.1 = getelementptr i8, i8* %scevgep389.1, i64 %189
  %scevgep390391.1 = bitcast i8* %scevgep390.1 to double*
  %_p_scalar_392.1 = load double, double* %scevgep390391.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header373.1

polly.loop_header373.1:                           ; preds = %polly.loop_header373.1, %polly.loop_header367.1
  %polly.indvar376.1 = phi i64 [ 0, %polly.loop_header367.1 ], [ %polly.indvar_next377.1, %polly.loop_header373.1 ]
  %190 = add nuw nsw i64 %polly.indvar376.1, 50
  %191 = mul nuw nsw i64 %190, 480
  %192 = add i64 %191, %189
  %scevgep379.1 = getelementptr i8, i8* %call1, i64 %192
  %scevgep379380.1 = bitcast i8* %scevgep379.1 to double*
  %_p_scalar_381.1 = load double, double* %scevgep379380.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.1 = fmul fast double %_p_scalar_385.1, %_p_scalar_381.1
  %scevgep386.1 = getelementptr i8, i8* %call2, i64 %192
  %scevgep386387.1 = bitcast i8* %scevgep386.1 to double*
  %_p_scalar_388.1 = load double, double* %scevgep386387.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.1 = fmul fast double %_p_scalar_392.1, %_p_scalar_388.1
  %193 = shl i64 %190, 3
  %scevgep394.1 = getelementptr i8, i8* %scevgep393.1, i64 %193
  %scevgep394395.1 = bitcast i8* %scevgep394.1 to double*
  %_p_scalar_396.1 = load double, double* %scevgep394395.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_396.1
  store double %p_add42.i79.1, double* %scevgep394395.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next377.1 = add nuw nsw i64 %polly.indvar376.1, 1
  %exitcond772.1.not = icmp eq i64 %polly.indvar376.1, %smin771.1
  br i1 %exitcond772.1.not, label %polly.loop_exit375.1, label %polly.loop_header373.1

polly.loop_exit375.1:                             ; preds = %polly.loop_header373.1
  %polly.indvar_next371.1 = add nuw nsw i64 %polly.indvar370.1, 1
  %exitcond776.1.not = icmp eq i64 %polly.indvar_next371.1, %115
  br i1 %exitcond776.1.not, label %polly.loop_exit369.1, label %polly.loop_header367.1

polly.loop_exit369.1:                             ; preds = %polly.loop_exit375.1
  %polly.indvar_next365.1 = add nuw nsw i64 %polly.indvar364.1, 1
  %indvars.iv.next770.1 = add nuw nsw i64 %indvars.iv769.1, 1
  %exitcond777.1.not = icmp eq i64 %indvars.iv.next770.1, 30
  br i1 %exitcond777.1.not, label %polly.loop_exit363.1, label %polly.loop_header361.1

polly.loop_exit363.1:                             ; preds = %polly.loop_exit369.1
  %polly.indvar_next353 = add nuw nsw i64 %polly.indvar352, 1
  %indvars.iv.next774 = add nsw i64 %indvars.iv773, -8
  %exitcond778.not = icmp eq i64 %polly.indvar_next353, 8
  br i1 %exitcond778.not, label %kernel_syr2k.exit90, label %polly.loop_header349

polly.loop_header511.1:                           ; preds = %polly.loop_exit519, %polly.loop_exit519.1
  %indvars.iv781.1 = phi i64 [ %indvars.iv.next782.1, %polly.loop_exit519.1 ], [ 0, %polly.loop_exit519 ]
  %polly.indvar514.1 = phi i64 [ %polly.indvar_next515.1, %polly.loop_exit519.1 ], [ 50, %polly.loop_exit519 ]
  %smin783.1 = call i64 @llvm.smin.i64(i64 %indvars.iv781.1, i64 49)
  %194 = mul nuw nsw i64 %polly.indvar514.1, 480
  %scevgep532.1 = getelementptr i8, i8* %call2, i64 %194
  %scevgep539.1 = getelementptr i8, i8* %call1, i64 %194
  %195 = mul nuw nsw i64 %polly.indvar514.1, 640
  %scevgep543.1 = getelementptr i8, i8* %call, i64 %195
  br label %polly.loop_header517.1

polly.loop_header517.1:                           ; preds = %polly.loop_exit525.1, %polly.loop_header511.1
  %polly.indvar520.1 = phi i64 [ 0, %polly.loop_header511.1 ], [ %polly.indvar_next521.1, %polly.loop_exit525.1 ]
  %196 = add nuw nsw i64 %polly.indvar520.1, %134
  %197 = shl i64 %196, 3
  %scevgep533.1 = getelementptr i8, i8* %scevgep532.1, i64 %197
  %scevgep533534.1 = bitcast i8* %scevgep533.1 to double*
  %_p_scalar_535.1 = load double, double* %scevgep533534.1, align 8, !alias.scope !82, !noalias !85
  %scevgep540.1 = getelementptr i8, i8* %scevgep539.1, i64 %197
  %scevgep540541.1 = bitcast i8* %scevgep540.1 to double*
  %_p_scalar_542.1 = load double, double* %scevgep540541.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header523.1

polly.loop_header523.1:                           ; preds = %polly.loop_header523.1, %polly.loop_header517.1
  %polly.indvar526.1 = phi i64 [ 0, %polly.loop_header517.1 ], [ %polly.indvar_next527.1, %polly.loop_header523.1 ]
  %198 = add nuw nsw i64 %polly.indvar526.1, 50
  %199 = mul nuw nsw i64 %198, 480
  %200 = add i64 %199, %197
  %scevgep529.1 = getelementptr i8, i8* %call1, i64 %200
  %scevgep529530.1 = bitcast i8* %scevgep529.1 to double*
  %_p_scalar_531.1 = load double, double* %scevgep529530.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.1 = fmul fast double %_p_scalar_535.1, %_p_scalar_531.1
  %scevgep536.1 = getelementptr i8, i8* %call2, i64 %200
  %scevgep536537.1 = bitcast i8* %scevgep536.1 to double*
  %_p_scalar_538.1 = load double, double* %scevgep536537.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.1 = fmul fast double %_p_scalar_542.1, %_p_scalar_538.1
  %201 = shl i64 %198, 3
  %scevgep544.1 = getelementptr i8, i8* %scevgep543.1, i64 %201
  %scevgep544545.1 = bitcast i8* %scevgep544.1 to double*
  %_p_scalar_546.1 = load double, double* %scevgep544545.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_546.1
  store double %p_add42.i.1, double* %scevgep544545.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next527.1 = add nuw nsw i64 %polly.indvar526.1, 1
  %exitcond784.1.not = icmp eq i64 %polly.indvar526.1, %smin783.1
  br i1 %exitcond784.1.not, label %polly.loop_exit525.1, label %polly.loop_header523.1

polly.loop_exit525.1:                             ; preds = %polly.loop_header523.1
  %polly.indvar_next521.1 = add nuw nsw i64 %polly.indvar520.1, 1
  %exitcond788.1.not = icmp eq i64 %polly.indvar_next521.1, %133
  br i1 %exitcond788.1.not, label %polly.loop_exit519.1, label %polly.loop_header517.1

polly.loop_exit519.1:                             ; preds = %polly.loop_exit525.1
  %polly.indvar_next515.1 = add nuw nsw i64 %polly.indvar514.1, 1
  %indvars.iv.next782.1 = add nuw nsw i64 %indvars.iv781.1, 1
  %exitcond789.1.not = icmp eq i64 %indvars.iv.next782.1, 30
  br i1 %exitcond789.1.not, label %polly.loop_exit513.1, label %polly.loop_header511.1

polly.loop_exit513.1:                             ; preds = %polly.loop_exit519.1
  %polly.indvar_next503 = add nuw nsw i64 %polly.indvar502, 1
  %indvars.iv.next786 = add nsw i64 %indvars.iv785, -8
  %exitcond790.not = icmp eq i64 %polly.indvar_next503, 8
  br i1 %exitcond790.not, label %kernel_syr2k.exit, label %polly.loop_header499

polly.loop_header738.1:                           ; preds = %polly.loop_exit746, %polly.loop_exit746.1
  %polly.indvar741.1 = phi i64 [ %polly.indvar_next742.1, %polly.loop_exit746.1 ], [ 0, %polly.loop_exit746 ]
  %202 = mul nuw nsw i64 %polly.indvar741.1, 480
  %203 = trunc i64 %polly.indvar741.1 to i32
  %broadcast.splatinsert1115 = insertelement <4 x i32> poison, i32 %203, i32 0
  %broadcast.splat1116 = shufflevector <4 x i32> %broadcast.splatinsert1115, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %polly.loop_header738.1
  %index1109 = phi i64 [ 0, %polly.loop_header738.1 ], [ %index.next1110, %vector.body1107 ]
  %vec.ind1113 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1 ], [ %vec.ind.next1114, %vector.body1107 ]
  %204 = add nuw nsw <4 x i64> %vec.ind1113, <i64 32, i64 32, i64 32, i64 32>
  %205 = trunc <4 x i64> %204 to <4 x i32>
  %206 = mul <4 x i32> %broadcast.splat1116, %205
  %207 = add <4 x i32> %206, <i32 1, i32 1, i32 1, i32 1>
  %208 = urem <4 x i32> %207, <i32 80, i32 80, i32 80, i32 80>
  %209 = sitofp <4 x i32> %208 to <4 x double>
  %210 = fmul fast <4 x double> %209, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %211 = extractelement <4 x i64> %204, i32 0
  %212 = shl i64 %211, 3
  %213 = add i64 %212, %202
  %214 = getelementptr i8, i8* %call1, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %210, <4 x double>* %215, align 8, !alias.scope !90, !noalias !95
  %index.next1110 = add i64 %index1109, 4
  %vec.ind.next1114 = add <4 x i64> %vec.ind1113, <i64 4, i64 4, i64 4, i64 4>
  %216 = icmp eq i64 %index.next1110, 28
  br i1 %216, label %polly.loop_exit746.1, label %vector.body1107, !llvm.loop !97

polly.loop_exit746.1:                             ; preds = %vector.body1107
  %polly.indvar_next742.1 = add nuw nsw i64 %polly.indvar741.1, 1
  %exitcond797.1.not = icmp eq i64 %polly.indvar_next742.1, 32
  br i1 %exitcond797.1.not, label %polly.loop_header738.1820, label %polly.loop_header738.1

polly.loop_header738.1820:                        ; preds = %polly.loop_exit746.1, %polly.loop_exit746.1831
  %polly.indvar741.1819 = phi i64 [ %polly.indvar_next742.1829, %polly.loop_exit746.1831 ], [ 0, %polly.loop_exit746.1 ]
  %217 = add nuw nsw i64 %polly.indvar741.1819, 32
  %218 = mul nuw nsw i64 %217, 480
  %219 = trunc i64 %217 to i32
  %broadcast.splatinsert1129 = insertelement <4 x i32> poison, i32 %219, i32 0
  %broadcast.splat1130 = shufflevector <4 x i32> %broadcast.splatinsert1129, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %polly.loop_header738.1820
  %index1121 = phi i64 [ 0, %polly.loop_header738.1820 ], [ %index.next1122, %vector.body1119 ]
  %vec.ind1127 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738.1820 ], [ %vec.ind.next1128, %vector.body1119 ]
  %220 = mul <4 x i32> %vec.ind1127, %broadcast.splat1130
  %221 = add <4 x i32> %220, <i32 1, i32 1, i32 1, i32 1>
  %222 = urem <4 x i32> %221, <i32 80, i32 80, i32 80, i32 80>
  %223 = sitofp <4 x i32> %222 to <4 x double>
  %224 = fmul fast <4 x double> %223, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %225 = shl i64 %index1121, 3
  %226 = add i64 %225, %218
  %227 = getelementptr i8, i8* %call1, i64 %226
  %228 = bitcast i8* %227 to <4 x double>*
  store <4 x double> %224, <4 x double>* %228, align 8, !alias.scope !90, !noalias !95
  %index.next1122 = add i64 %index1121, 4
  %vec.ind.next1128 = add <4 x i32> %vec.ind1127, <i32 4, i32 4, i32 4, i32 4>
  %229 = icmp eq i64 %index.next1122, 32
  br i1 %229, label %polly.loop_exit746.1831, label %vector.body1119, !llvm.loop !98

polly.loop_exit746.1831:                          ; preds = %vector.body1119
  %polly.indvar_next742.1829 = add nuw nsw i64 %polly.indvar741.1819, 1
  %exitcond797.1830.not = icmp eq i64 %polly.indvar_next742.1829, 32
  br i1 %exitcond797.1830.not, label %polly.loop_header738.1.1, label %polly.loop_header738.1820

polly.loop_header738.1.1:                         ; preds = %polly.loop_exit746.1831, %polly.loop_exit746.1.1
  %polly.indvar741.1.1 = phi i64 [ %polly.indvar_next742.1.1, %polly.loop_exit746.1.1 ], [ 0, %polly.loop_exit746.1831 ]
  %230 = add nuw nsw i64 %polly.indvar741.1.1, 32
  %231 = mul nuw nsw i64 %230, 480
  %232 = trunc i64 %230 to i32
  %broadcast.splatinsert1141 = insertelement <4 x i32> poison, i32 %232, i32 0
  %broadcast.splat1142 = shufflevector <4 x i32> %broadcast.splatinsert1141, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %polly.loop_header738.1.1
  %index1135 = phi i64 [ 0, %polly.loop_header738.1.1 ], [ %index.next1136, %vector.body1133 ]
  %vec.ind1139 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1.1 ], [ %vec.ind.next1140, %vector.body1133 ]
  %233 = add nuw nsw <4 x i64> %vec.ind1139, <i64 32, i64 32, i64 32, i64 32>
  %234 = trunc <4 x i64> %233 to <4 x i32>
  %235 = mul <4 x i32> %broadcast.splat1142, %234
  %236 = add <4 x i32> %235, <i32 1, i32 1, i32 1, i32 1>
  %237 = urem <4 x i32> %236, <i32 80, i32 80, i32 80, i32 80>
  %238 = sitofp <4 x i32> %237 to <4 x double>
  %239 = fmul fast <4 x double> %238, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %240 = extractelement <4 x i64> %233, i32 0
  %241 = shl i64 %240, 3
  %242 = add i64 %241, %231
  %243 = getelementptr i8, i8* %call1, i64 %242
  %244 = bitcast i8* %243 to <4 x double>*
  store <4 x double> %239, <4 x double>* %244, align 8, !alias.scope !90, !noalias !95
  %index.next1136 = add i64 %index1135, 4
  %vec.ind.next1140 = add <4 x i64> %vec.ind1139, <i64 4, i64 4, i64 4, i64 4>
  %245 = icmp eq i64 %index.next1136, 28
  br i1 %245, label %polly.loop_exit746.1.1, label %vector.body1133, !llvm.loop !99

polly.loop_exit746.1.1:                           ; preds = %vector.body1133
  %polly.indvar_next742.1.1 = add nuw nsw i64 %polly.indvar741.1.1, 1
  %exitcond797.1.1.not = icmp eq i64 %polly.indvar_next742.1.1, 32
  br i1 %exitcond797.1.1.not, label %polly.loop_header738.2, label %polly.loop_header738.1.1

polly.loop_header738.2:                           ; preds = %polly.loop_exit746.1.1, %polly.loop_exit746.2
  %polly.indvar741.2 = phi i64 [ %polly.indvar_next742.2, %polly.loop_exit746.2 ], [ 0, %polly.loop_exit746.1.1 ]
  %246 = add nuw nsw i64 %polly.indvar741.2, 64
  %247 = mul nuw nsw i64 %246, 480
  %248 = trunc i64 %246 to i32
  %broadcast.splatinsert1155 = insertelement <4 x i32> poison, i32 %248, i32 0
  %broadcast.splat1156 = shufflevector <4 x i32> %broadcast.splatinsert1155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %polly.loop_header738.2
  %index1147 = phi i64 [ 0, %polly.loop_header738.2 ], [ %index.next1148, %vector.body1145 ]
  %vec.ind1153 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738.2 ], [ %vec.ind.next1154, %vector.body1145 ]
  %249 = mul <4 x i32> %vec.ind1153, %broadcast.splat1156
  %250 = add <4 x i32> %249, <i32 1, i32 1, i32 1, i32 1>
  %251 = urem <4 x i32> %250, <i32 80, i32 80, i32 80, i32 80>
  %252 = sitofp <4 x i32> %251 to <4 x double>
  %253 = fmul fast <4 x double> %252, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %254 = shl i64 %index1147, 3
  %255 = add i64 %254, %247
  %256 = getelementptr i8, i8* %call1, i64 %255
  %257 = bitcast i8* %256 to <4 x double>*
  store <4 x double> %253, <4 x double>* %257, align 8, !alias.scope !90, !noalias !95
  %index.next1148 = add i64 %index1147, 4
  %vec.ind.next1154 = add <4 x i32> %vec.ind1153, <i32 4, i32 4, i32 4, i32 4>
  %258 = icmp eq i64 %index.next1148, 32
  br i1 %258, label %polly.loop_exit746.2, label %vector.body1145, !llvm.loop !100

polly.loop_exit746.2:                             ; preds = %vector.body1145
  %polly.indvar_next742.2 = add nuw nsw i64 %polly.indvar741.2, 1
  %exitcond797.2.not = icmp eq i64 %polly.indvar_next742.2, 16
  br i1 %exitcond797.2.not, label %polly.loop_header738.1.2, label %polly.loop_header738.2

polly.loop_header738.1.2:                         ; preds = %polly.loop_exit746.2, %polly.loop_exit746.1.2
  %polly.indvar741.1.2 = phi i64 [ %polly.indvar_next742.1.2, %polly.loop_exit746.1.2 ], [ 0, %polly.loop_exit746.2 ]
  %259 = add nuw nsw i64 %polly.indvar741.1.2, 64
  %260 = mul nuw nsw i64 %259, 480
  %261 = trunc i64 %259 to i32
  %broadcast.splatinsert1167 = insertelement <4 x i32> poison, i32 %261, i32 0
  %broadcast.splat1168 = shufflevector <4 x i32> %broadcast.splatinsert1167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %polly.loop_header738.1.2
  %index1161 = phi i64 [ 0, %polly.loop_header738.1.2 ], [ %index.next1162, %vector.body1159 ]
  %vec.ind1165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1.2 ], [ %vec.ind.next1166, %vector.body1159 ]
  %262 = add nuw nsw <4 x i64> %vec.ind1165, <i64 32, i64 32, i64 32, i64 32>
  %263 = trunc <4 x i64> %262 to <4 x i32>
  %264 = mul <4 x i32> %broadcast.splat1168, %263
  %265 = add <4 x i32> %264, <i32 1, i32 1, i32 1, i32 1>
  %266 = urem <4 x i32> %265, <i32 80, i32 80, i32 80, i32 80>
  %267 = sitofp <4 x i32> %266 to <4 x double>
  %268 = fmul fast <4 x double> %267, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %269 = extractelement <4 x i64> %262, i32 0
  %270 = shl i64 %269, 3
  %271 = add i64 %270, %260
  %272 = getelementptr i8, i8* %call1, i64 %271
  %273 = bitcast i8* %272 to <4 x double>*
  store <4 x double> %268, <4 x double>* %273, align 8, !alias.scope !90, !noalias !95
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1166 = add <4 x i64> %vec.ind1165, <i64 4, i64 4, i64 4, i64 4>
  %274 = icmp eq i64 %index.next1162, 28
  br i1 %274, label %polly.loop_exit746.1.2, label %vector.body1159, !llvm.loop !101

polly.loop_exit746.1.2:                           ; preds = %vector.body1159
  %polly.indvar_next742.1.2 = add nuw nsw i64 %polly.indvar741.1.2, 1
  %exitcond797.1.2.not = icmp eq i64 %polly.indvar_next742.1.2, 16
  br i1 %exitcond797.1.2.not, label %init_array.exit, label %polly.loop_header738.1.2

polly.loop_header712.1:                           ; preds = %polly.loop_exit720, %polly.loop_exit720.1
  %polly.indvar715.1 = phi i64 [ %polly.indvar_next716.1, %polly.loop_exit720.1 ], [ 0, %polly.loop_exit720 ]
  %275 = mul nuw nsw i64 %polly.indvar715.1, 480
  %276 = trunc i64 %polly.indvar715.1 to i32
  %broadcast.splatinsert1037 = insertelement <4 x i32> poison, i32 %276, i32 0
  %broadcast.splat1038 = shufflevector <4 x i32> %broadcast.splatinsert1037, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %polly.loop_header712.1
  %index1031 = phi i64 [ 0, %polly.loop_header712.1 ], [ %index.next1032, %vector.body1029 ]
  %vec.ind1035 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1 ], [ %vec.ind.next1036, %vector.body1029 ]
  %277 = add nuw nsw <4 x i64> %vec.ind1035, <i64 32, i64 32, i64 32, i64 32>
  %278 = trunc <4 x i64> %277 to <4 x i32>
  %279 = mul <4 x i32> %broadcast.splat1038, %278
  %280 = add <4 x i32> %279, <i32 2, i32 2, i32 2, i32 2>
  %281 = urem <4 x i32> %280, <i32 60, i32 60, i32 60, i32 60>
  %282 = sitofp <4 x i32> %281 to <4 x double>
  %283 = fmul fast <4 x double> %282, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %284 = extractelement <4 x i64> %277, i32 0
  %285 = shl i64 %284, 3
  %286 = add i64 %285, %275
  %287 = getelementptr i8, i8* %call2, i64 %286
  %288 = bitcast i8* %287 to <4 x double>*
  store <4 x double> %283, <4 x double>* %288, align 8, !alias.scope !91, !noalias !93
  %index.next1032 = add i64 %index1031, 4
  %vec.ind.next1036 = add <4 x i64> %vec.ind1035, <i64 4, i64 4, i64 4, i64 4>
  %289 = icmp eq i64 %index.next1032, 28
  br i1 %289, label %polly.loop_exit720.1, label %vector.body1029, !llvm.loop !102

polly.loop_exit720.1:                             ; preds = %vector.body1029
  %polly.indvar_next716.1 = add nuw nsw i64 %polly.indvar715.1, 1
  %exitcond803.1.not = icmp eq i64 %polly.indvar_next716.1, 32
  br i1 %exitcond803.1.not, label %polly.loop_header712.1834, label %polly.loop_header712.1

polly.loop_header712.1834:                        ; preds = %polly.loop_exit720.1, %polly.loop_exit720.1845
  %polly.indvar715.1833 = phi i64 [ %polly.indvar_next716.1843, %polly.loop_exit720.1845 ], [ 0, %polly.loop_exit720.1 ]
  %290 = add nuw nsw i64 %polly.indvar715.1833, 32
  %291 = mul nuw nsw i64 %290, 480
  %292 = trunc i64 %290 to i32
  %broadcast.splatinsert1051 = insertelement <4 x i32> poison, i32 %292, i32 0
  %broadcast.splat1052 = shufflevector <4 x i32> %broadcast.splatinsert1051, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1041

vector.body1041:                                  ; preds = %vector.body1041, %polly.loop_header712.1834
  %index1043 = phi i64 [ 0, %polly.loop_header712.1834 ], [ %index.next1044, %vector.body1041 ]
  %vec.ind1049 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712.1834 ], [ %vec.ind.next1050, %vector.body1041 ]
  %293 = mul <4 x i32> %vec.ind1049, %broadcast.splat1052
  %294 = add <4 x i32> %293, <i32 2, i32 2, i32 2, i32 2>
  %295 = urem <4 x i32> %294, <i32 60, i32 60, i32 60, i32 60>
  %296 = sitofp <4 x i32> %295 to <4 x double>
  %297 = fmul fast <4 x double> %296, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %298 = shl i64 %index1043, 3
  %299 = add i64 %298, %291
  %300 = getelementptr i8, i8* %call2, i64 %299
  %301 = bitcast i8* %300 to <4 x double>*
  store <4 x double> %297, <4 x double>* %301, align 8, !alias.scope !91, !noalias !93
  %index.next1044 = add i64 %index1043, 4
  %vec.ind.next1050 = add <4 x i32> %vec.ind1049, <i32 4, i32 4, i32 4, i32 4>
  %302 = icmp eq i64 %index.next1044, 32
  br i1 %302, label %polly.loop_exit720.1845, label %vector.body1041, !llvm.loop !103

polly.loop_exit720.1845:                          ; preds = %vector.body1041
  %polly.indvar_next716.1843 = add nuw nsw i64 %polly.indvar715.1833, 1
  %exitcond803.1844.not = icmp eq i64 %polly.indvar_next716.1843, 32
  br i1 %exitcond803.1844.not, label %polly.loop_header712.1.1, label %polly.loop_header712.1834

polly.loop_header712.1.1:                         ; preds = %polly.loop_exit720.1845, %polly.loop_exit720.1.1
  %polly.indvar715.1.1 = phi i64 [ %polly.indvar_next716.1.1, %polly.loop_exit720.1.1 ], [ 0, %polly.loop_exit720.1845 ]
  %303 = add nuw nsw i64 %polly.indvar715.1.1, 32
  %304 = mul nuw nsw i64 %303, 480
  %305 = trunc i64 %303 to i32
  %broadcast.splatinsert1063 = insertelement <4 x i32> poison, i32 %305, i32 0
  %broadcast.splat1064 = shufflevector <4 x i32> %broadcast.splatinsert1063, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %polly.loop_header712.1.1
  %index1057 = phi i64 [ 0, %polly.loop_header712.1.1 ], [ %index.next1058, %vector.body1055 ]
  %vec.ind1061 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1.1 ], [ %vec.ind.next1062, %vector.body1055 ]
  %306 = add nuw nsw <4 x i64> %vec.ind1061, <i64 32, i64 32, i64 32, i64 32>
  %307 = trunc <4 x i64> %306 to <4 x i32>
  %308 = mul <4 x i32> %broadcast.splat1064, %307
  %309 = add <4 x i32> %308, <i32 2, i32 2, i32 2, i32 2>
  %310 = urem <4 x i32> %309, <i32 60, i32 60, i32 60, i32 60>
  %311 = sitofp <4 x i32> %310 to <4 x double>
  %312 = fmul fast <4 x double> %311, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %313 = extractelement <4 x i64> %306, i32 0
  %314 = shl i64 %313, 3
  %315 = add i64 %314, %304
  %316 = getelementptr i8, i8* %call2, i64 %315
  %317 = bitcast i8* %316 to <4 x double>*
  store <4 x double> %312, <4 x double>* %317, align 8, !alias.scope !91, !noalias !93
  %index.next1058 = add i64 %index1057, 4
  %vec.ind.next1062 = add <4 x i64> %vec.ind1061, <i64 4, i64 4, i64 4, i64 4>
  %318 = icmp eq i64 %index.next1058, 28
  br i1 %318, label %polly.loop_exit720.1.1, label %vector.body1055, !llvm.loop !104

polly.loop_exit720.1.1:                           ; preds = %vector.body1055
  %polly.indvar_next716.1.1 = add nuw nsw i64 %polly.indvar715.1.1, 1
  %exitcond803.1.1.not = icmp eq i64 %polly.indvar_next716.1.1, 32
  br i1 %exitcond803.1.1.not, label %polly.loop_header712.2, label %polly.loop_header712.1.1

polly.loop_header712.2:                           ; preds = %polly.loop_exit720.1.1, %polly.loop_exit720.2
  %polly.indvar715.2 = phi i64 [ %polly.indvar_next716.2, %polly.loop_exit720.2 ], [ 0, %polly.loop_exit720.1.1 ]
  %319 = add nuw nsw i64 %polly.indvar715.2, 64
  %320 = mul nuw nsw i64 %319, 480
  %321 = trunc i64 %319 to i32
  %broadcast.splatinsert1077 = insertelement <4 x i32> poison, i32 %321, i32 0
  %broadcast.splat1078 = shufflevector <4 x i32> %broadcast.splatinsert1077, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %polly.loop_header712.2
  %index1069 = phi i64 [ 0, %polly.loop_header712.2 ], [ %index.next1070, %vector.body1067 ]
  %vec.ind1075 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712.2 ], [ %vec.ind.next1076, %vector.body1067 ]
  %322 = mul <4 x i32> %vec.ind1075, %broadcast.splat1078
  %323 = add <4 x i32> %322, <i32 2, i32 2, i32 2, i32 2>
  %324 = urem <4 x i32> %323, <i32 60, i32 60, i32 60, i32 60>
  %325 = sitofp <4 x i32> %324 to <4 x double>
  %326 = fmul fast <4 x double> %325, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %327 = shl i64 %index1069, 3
  %328 = add i64 %327, %320
  %329 = getelementptr i8, i8* %call2, i64 %328
  %330 = bitcast i8* %329 to <4 x double>*
  store <4 x double> %326, <4 x double>* %330, align 8, !alias.scope !91, !noalias !93
  %index.next1070 = add i64 %index1069, 4
  %vec.ind.next1076 = add <4 x i32> %vec.ind1075, <i32 4, i32 4, i32 4, i32 4>
  %331 = icmp eq i64 %index.next1070, 32
  br i1 %331, label %polly.loop_exit720.2, label %vector.body1067, !llvm.loop !105

polly.loop_exit720.2:                             ; preds = %vector.body1067
  %polly.indvar_next716.2 = add nuw nsw i64 %polly.indvar715.2, 1
  %exitcond803.2.not = icmp eq i64 %polly.indvar_next716.2, 16
  br i1 %exitcond803.2.not, label %polly.loop_header712.1.2, label %polly.loop_header712.2

polly.loop_header712.1.2:                         ; preds = %polly.loop_exit720.2, %polly.loop_exit720.1.2
  %polly.indvar715.1.2 = phi i64 [ %polly.indvar_next716.1.2, %polly.loop_exit720.1.2 ], [ 0, %polly.loop_exit720.2 ]
  %332 = add nuw nsw i64 %polly.indvar715.1.2, 64
  %333 = mul nuw nsw i64 %332, 480
  %334 = trunc i64 %332 to i32
  %broadcast.splatinsert1089 = insertelement <4 x i32> poison, i32 %334, i32 0
  %broadcast.splat1090 = shufflevector <4 x i32> %broadcast.splatinsert1089, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %polly.loop_header712.1.2
  %index1083 = phi i64 [ 0, %polly.loop_header712.1.2 ], [ %index.next1084, %vector.body1081 ]
  %vec.ind1087 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1.2 ], [ %vec.ind.next1088, %vector.body1081 ]
  %335 = add nuw nsw <4 x i64> %vec.ind1087, <i64 32, i64 32, i64 32, i64 32>
  %336 = trunc <4 x i64> %335 to <4 x i32>
  %337 = mul <4 x i32> %broadcast.splat1090, %336
  %338 = add <4 x i32> %337, <i32 2, i32 2, i32 2, i32 2>
  %339 = urem <4 x i32> %338, <i32 60, i32 60, i32 60, i32 60>
  %340 = sitofp <4 x i32> %339 to <4 x double>
  %341 = fmul fast <4 x double> %340, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %342 = extractelement <4 x i64> %335, i32 0
  %343 = shl i64 %342, 3
  %344 = add i64 %343, %333
  %345 = getelementptr i8, i8* %call2, i64 %344
  %346 = bitcast i8* %345 to <4 x double>*
  store <4 x double> %341, <4 x double>* %346, align 8, !alias.scope !91, !noalias !93
  %index.next1084 = add i64 %index1083, 4
  %vec.ind.next1088 = add <4 x i64> %vec.ind1087, <i64 4, i64 4, i64 4, i64 4>
  %347 = icmp eq i64 %index.next1084, 28
  br i1 %347, label %polly.loop_exit720.1.2, label %vector.body1081, !llvm.loop !106

polly.loop_exit720.1.2:                           ; preds = %vector.body1081
  %polly.indvar_next716.1.2 = add nuw nsw i64 %polly.indvar715.1.2, 1
  %exitcond803.1.2.not = icmp eq i64 %polly.indvar_next716.1.2, 16
  br i1 %exitcond803.1.2.not, label %polly.loop_header738, label %polly.loop_header712.1.2

polly.loop_header685.1:                           ; preds = %polly.loop_exit693, %polly.loop_exit693.1
  %polly.indvar688.1 = phi i64 [ %polly.indvar_next689.1, %polly.loop_exit693.1 ], [ 0, %polly.loop_exit693 ]
  %348 = mul nuw nsw i64 %polly.indvar688.1, 640
  %349 = trunc i64 %polly.indvar688.1 to i32
  %broadcast.splatinsert923 = insertelement <4 x i32> poison, i32 %349, i32 0
  %broadcast.splat924 = shufflevector <4 x i32> %broadcast.splatinsert923, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body915

vector.body915:                                   ; preds = %vector.body915, %polly.loop_header685.1
  %index917 = phi i64 [ 0, %polly.loop_header685.1 ], [ %index.next918, %vector.body915 ]
  %vec.ind921 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1 ], [ %vec.ind.next922, %vector.body915 ]
  %350 = add nuw nsw <4 x i64> %vec.ind921, <i64 32, i64 32, i64 32, i64 32>
  %351 = trunc <4 x i64> %350 to <4 x i32>
  %352 = mul <4 x i32> %broadcast.splat924, %351
  %353 = add <4 x i32> %352, <i32 3, i32 3, i32 3, i32 3>
  %354 = urem <4 x i32> %353, <i32 80, i32 80, i32 80, i32 80>
  %355 = sitofp <4 x i32> %354 to <4 x double>
  %356 = fmul fast <4 x double> %355, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %357 = extractelement <4 x i64> %350, i32 0
  %358 = shl i64 %357, 3
  %359 = add nuw nsw i64 %358, %348
  %360 = getelementptr i8, i8* %call, i64 %359
  %361 = bitcast i8* %360 to <4 x double>*
  store <4 x double> %356, <4 x double>* %361, align 8, !alias.scope !87, !noalias !89
  %index.next918 = add i64 %index917, 4
  %vec.ind.next922 = add <4 x i64> %vec.ind921, <i64 4, i64 4, i64 4, i64 4>
  %362 = icmp eq i64 %index.next918, 32
  br i1 %362, label %polly.loop_exit693.1, label %vector.body915, !llvm.loop !107

polly.loop_exit693.1:                             ; preds = %vector.body915
  %polly.indvar_next689.1 = add nuw nsw i64 %polly.indvar688.1, 1
  %exitcond812.1.not = icmp eq i64 %polly.indvar_next689.1, 32
  br i1 %exitcond812.1.not, label %polly.loop_header685.2, label %polly.loop_header685.1

polly.loop_header685.2:                           ; preds = %polly.loop_exit693.1, %polly.loop_exit693.2
  %polly.indvar688.2 = phi i64 [ %polly.indvar_next689.2, %polly.loop_exit693.2 ], [ 0, %polly.loop_exit693.1 ]
  %363 = mul nuw nsw i64 %polly.indvar688.2, 640
  %364 = trunc i64 %polly.indvar688.2 to i32
  %broadcast.splatinsert935 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat936 = shufflevector <4 x i32> %broadcast.splatinsert935, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %polly.loop_header685.2
  %index929 = phi i64 [ 0, %polly.loop_header685.2 ], [ %index.next930, %vector.body927 ]
  %vec.ind933 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2 ], [ %vec.ind.next934, %vector.body927 ]
  %365 = add nuw nsw <4 x i64> %vec.ind933, <i64 64, i64 64, i64 64, i64 64>
  %366 = trunc <4 x i64> %365 to <4 x i32>
  %367 = mul <4 x i32> %broadcast.splat936, %366
  %368 = add <4 x i32> %367, <i32 3, i32 3, i32 3, i32 3>
  %369 = urem <4 x i32> %368, <i32 80, i32 80, i32 80, i32 80>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %372 = extractelement <4 x i64> %365, i32 0
  %373 = shl i64 %372, 3
  %374 = add nuw nsw i64 %373, %363
  %375 = getelementptr i8, i8* %call, i64 %374
  %376 = bitcast i8* %375 to <4 x double>*
  store <4 x double> %371, <4 x double>* %376, align 8, !alias.scope !87, !noalias !89
  %index.next930 = add i64 %index929, 4
  %vec.ind.next934 = add <4 x i64> %vec.ind933, <i64 4, i64 4, i64 4, i64 4>
  %377 = icmp eq i64 %index.next930, 16
  br i1 %377, label %polly.loop_exit693.2, label %vector.body927, !llvm.loop !108

polly.loop_exit693.2:                             ; preds = %vector.body927
  %polly.indvar_next689.2 = add nuw nsw i64 %polly.indvar688.2, 1
  %exitcond812.2.not = icmp eq i64 %polly.indvar_next689.2, 32
  br i1 %exitcond812.2.not, label %polly.loop_header685.1848, label %polly.loop_header685.2

polly.loop_header685.1848:                        ; preds = %polly.loop_exit693.2, %polly.loop_exit693.1859
  %polly.indvar688.1847 = phi i64 [ %polly.indvar_next689.1857, %polly.loop_exit693.1859 ], [ 0, %polly.loop_exit693.2 ]
  %378 = add nuw nsw i64 %polly.indvar688.1847, 32
  %379 = mul nuw nsw i64 %378, 640
  %380 = trunc i64 %378 to i32
  %broadcast.splatinsert949 = insertelement <4 x i32> poison, i32 %380, i32 0
  %broadcast.splat950 = shufflevector <4 x i32> %broadcast.splatinsert949, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body939

vector.body939:                                   ; preds = %vector.body939, %polly.loop_header685.1848
  %index941 = phi i64 [ 0, %polly.loop_header685.1848 ], [ %index.next942, %vector.body939 ]
  %vec.ind947 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685.1848 ], [ %vec.ind.next948, %vector.body939 ]
  %381 = mul <4 x i32> %vec.ind947, %broadcast.splat950
  %382 = add <4 x i32> %381, <i32 3, i32 3, i32 3, i32 3>
  %383 = urem <4 x i32> %382, <i32 80, i32 80, i32 80, i32 80>
  %384 = sitofp <4 x i32> %383 to <4 x double>
  %385 = fmul fast <4 x double> %384, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %386 = shl i64 %index941, 3
  %387 = add nuw nsw i64 %386, %379
  %388 = getelementptr i8, i8* %call, i64 %387
  %389 = bitcast i8* %388 to <4 x double>*
  store <4 x double> %385, <4 x double>* %389, align 8, !alias.scope !87, !noalias !89
  %index.next942 = add i64 %index941, 4
  %vec.ind.next948 = add <4 x i32> %vec.ind947, <i32 4, i32 4, i32 4, i32 4>
  %390 = icmp eq i64 %index.next942, 32
  br i1 %390, label %polly.loop_exit693.1859, label %vector.body939, !llvm.loop !109

polly.loop_exit693.1859:                          ; preds = %vector.body939
  %polly.indvar_next689.1857 = add nuw nsw i64 %polly.indvar688.1847, 1
  %exitcond812.1858.not = icmp eq i64 %polly.indvar_next689.1857, 32
  br i1 %exitcond812.1858.not, label %polly.loop_header685.1.1, label %polly.loop_header685.1848

polly.loop_header685.1.1:                         ; preds = %polly.loop_exit693.1859, %polly.loop_exit693.1.1
  %polly.indvar688.1.1 = phi i64 [ %polly.indvar_next689.1.1, %polly.loop_exit693.1.1 ], [ 0, %polly.loop_exit693.1859 ]
  %391 = add nuw nsw i64 %polly.indvar688.1.1, 32
  %392 = mul nuw nsw i64 %391, 640
  %393 = trunc i64 %391 to i32
  %broadcast.splatinsert961 = insertelement <4 x i32> poison, i32 %393, i32 0
  %broadcast.splat962 = shufflevector <4 x i32> %broadcast.splatinsert961, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body953

vector.body953:                                   ; preds = %vector.body953, %polly.loop_header685.1.1
  %index955 = phi i64 [ 0, %polly.loop_header685.1.1 ], [ %index.next956, %vector.body953 ]
  %vec.ind959 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1.1 ], [ %vec.ind.next960, %vector.body953 ]
  %394 = add nuw nsw <4 x i64> %vec.ind959, <i64 32, i64 32, i64 32, i64 32>
  %395 = trunc <4 x i64> %394 to <4 x i32>
  %396 = mul <4 x i32> %broadcast.splat962, %395
  %397 = add <4 x i32> %396, <i32 3, i32 3, i32 3, i32 3>
  %398 = urem <4 x i32> %397, <i32 80, i32 80, i32 80, i32 80>
  %399 = sitofp <4 x i32> %398 to <4 x double>
  %400 = fmul fast <4 x double> %399, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %401 = extractelement <4 x i64> %394, i32 0
  %402 = shl i64 %401, 3
  %403 = add nuw nsw i64 %402, %392
  %404 = getelementptr i8, i8* %call, i64 %403
  %405 = bitcast i8* %404 to <4 x double>*
  store <4 x double> %400, <4 x double>* %405, align 8, !alias.scope !87, !noalias !89
  %index.next956 = add i64 %index955, 4
  %vec.ind.next960 = add <4 x i64> %vec.ind959, <i64 4, i64 4, i64 4, i64 4>
  %406 = icmp eq i64 %index.next956, 32
  br i1 %406, label %polly.loop_exit693.1.1, label %vector.body953, !llvm.loop !110

polly.loop_exit693.1.1:                           ; preds = %vector.body953
  %polly.indvar_next689.1.1 = add nuw nsw i64 %polly.indvar688.1.1, 1
  %exitcond812.1.1.not = icmp eq i64 %polly.indvar_next689.1.1, 32
  br i1 %exitcond812.1.1.not, label %polly.loop_header685.2.1, label %polly.loop_header685.1.1

polly.loop_header685.2.1:                         ; preds = %polly.loop_exit693.1.1, %polly.loop_exit693.2.1
  %polly.indvar688.2.1 = phi i64 [ %polly.indvar_next689.2.1, %polly.loop_exit693.2.1 ], [ 0, %polly.loop_exit693.1.1 ]
  %407 = add nuw nsw i64 %polly.indvar688.2.1, 32
  %408 = mul nuw nsw i64 %407, 640
  %409 = trunc i64 %407 to i32
  %broadcast.splatinsert973 = insertelement <4 x i32> poison, i32 %409, i32 0
  %broadcast.splat974 = shufflevector <4 x i32> %broadcast.splatinsert973, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %polly.loop_header685.2.1
  %index967 = phi i64 [ 0, %polly.loop_header685.2.1 ], [ %index.next968, %vector.body965 ]
  %vec.ind971 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2.1 ], [ %vec.ind.next972, %vector.body965 ]
  %410 = add nuw nsw <4 x i64> %vec.ind971, <i64 64, i64 64, i64 64, i64 64>
  %411 = trunc <4 x i64> %410 to <4 x i32>
  %412 = mul <4 x i32> %broadcast.splat974, %411
  %413 = add <4 x i32> %412, <i32 3, i32 3, i32 3, i32 3>
  %414 = urem <4 x i32> %413, <i32 80, i32 80, i32 80, i32 80>
  %415 = sitofp <4 x i32> %414 to <4 x double>
  %416 = fmul fast <4 x double> %415, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %417 = extractelement <4 x i64> %410, i32 0
  %418 = shl i64 %417, 3
  %419 = add nuw nsw i64 %418, %408
  %420 = getelementptr i8, i8* %call, i64 %419
  %421 = bitcast i8* %420 to <4 x double>*
  store <4 x double> %416, <4 x double>* %421, align 8, !alias.scope !87, !noalias !89
  %index.next968 = add i64 %index967, 4
  %vec.ind.next972 = add <4 x i64> %vec.ind971, <i64 4, i64 4, i64 4, i64 4>
  %422 = icmp eq i64 %index.next968, 16
  br i1 %422, label %polly.loop_exit693.2.1, label %vector.body965, !llvm.loop !111

polly.loop_exit693.2.1:                           ; preds = %vector.body965
  %polly.indvar_next689.2.1 = add nuw nsw i64 %polly.indvar688.2.1, 1
  %exitcond812.2.1.not = icmp eq i64 %polly.indvar_next689.2.1, 32
  br i1 %exitcond812.2.1.not, label %polly.loop_header685.2862, label %polly.loop_header685.2.1

polly.loop_header685.2862:                        ; preds = %polly.loop_exit693.2.1, %polly.loop_exit693.2873
  %polly.indvar688.2861 = phi i64 [ %polly.indvar_next689.2871, %polly.loop_exit693.2873 ], [ 0, %polly.loop_exit693.2.1 ]
  %423 = add nuw nsw i64 %polly.indvar688.2861, 64
  %424 = mul nuw nsw i64 %423, 640
  %425 = trunc i64 %423 to i32
  %broadcast.splatinsert987 = insertelement <4 x i32> poison, i32 %425, i32 0
  %broadcast.splat988 = shufflevector <4 x i32> %broadcast.splatinsert987, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body977

vector.body977:                                   ; preds = %vector.body977, %polly.loop_header685.2862
  %index979 = phi i64 [ 0, %polly.loop_header685.2862 ], [ %index.next980, %vector.body977 ]
  %vec.ind985 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685.2862 ], [ %vec.ind.next986, %vector.body977 ]
  %426 = mul <4 x i32> %vec.ind985, %broadcast.splat988
  %427 = add <4 x i32> %426, <i32 3, i32 3, i32 3, i32 3>
  %428 = urem <4 x i32> %427, <i32 80, i32 80, i32 80, i32 80>
  %429 = sitofp <4 x i32> %428 to <4 x double>
  %430 = fmul fast <4 x double> %429, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %431 = shl i64 %index979, 3
  %432 = add nuw nsw i64 %431, %424
  %433 = getelementptr i8, i8* %call, i64 %432
  %434 = bitcast i8* %433 to <4 x double>*
  store <4 x double> %430, <4 x double>* %434, align 8, !alias.scope !87, !noalias !89
  %index.next980 = add i64 %index979, 4
  %vec.ind.next986 = add <4 x i32> %vec.ind985, <i32 4, i32 4, i32 4, i32 4>
  %435 = icmp eq i64 %index.next980, 32
  br i1 %435, label %polly.loop_exit693.2873, label %vector.body977, !llvm.loop !112

polly.loop_exit693.2873:                          ; preds = %vector.body977
  %polly.indvar_next689.2871 = add nuw nsw i64 %polly.indvar688.2861, 1
  %exitcond812.2872.not = icmp eq i64 %polly.indvar_next689.2871, 16
  br i1 %exitcond812.2872.not, label %polly.loop_header685.1.2, label %polly.loop_header685.2862

polly.loop_header685.1.2:                         ; preds = %polly.loop_exit693.2873, %polly.loop_exit693.1.2
  %polly.indvar688.1.2 = phi i64 [ %polly.indvar_next689.1.2, %polly.loop_exit693.1.2 ], [ 0, %polly.loop_exit693.2873 ]
  %436 = add nuw nsw i64 %polly.indvar688.1.2, 64
  %437 = mul nuw nsw i64 %436, 640
  %438 = trunc i64 %436 to i32
  %broadcast.splatinsert999 = insertelement <4 x i32> poison, i32 %438, i32 0
  %broadcast.splat1000 = shufflevector <4 x i32> %broadcast.splatinsert999, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body991

vector.body991:                                   ; preds = %vector.body991, %polly.loop_header685.1.2
  %index993 = phi i64 [ 0, %polly.loop_header685.1.2 ], [ %index.next994, %vector.body991 ]
  %vec.ind997 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1.2 ], [ %vec.ind.next998, %vector.body991 ]
  %439 = add nuw nsw <4 x i64> %vec.ind997, <i64 32, i64 32, i64 32, i64 32>
  %440 = trunc <4 x i64> %439 to <4 x i32>
  %441 = mul <4 x i32> %broadcast.splat1000, %440
  %442 = add <4 x i32> %441, <i32 3, i32 3, i32 3, i32 3>
  %443 = urem <4 x i32> %442, <i32 80, i32 80, i32 80, i32 80>
  %444 = sitofp <4 x i32> %443 to <4 x double>
  %445 = fmul fast <4 x double> %444, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %446 = extractelement <4 x i64> %439, i32 0
  %447 = shl i64 %446, 3
  %448 = add nuw nsw i64 %447, %437
  %449 = getelementptr i8, i8* %call, i64 %448
  %450 = bitcast i8* %449 to <4 x double>*
  store <4 x double> %445, <4 x double>* %450, align 8, !alias.scope !87, !noalias !89
  %index.next994 = add i64 %index993, 4
  %vec.ind.next998 = add <4 x i64> %vec.ind997, <i64 4, i64 4, i64 4, i64 4>
  %451 = icmp eq i64 %index.next994, 32
  br i1 %451, label %polly.loop_exit693.1.2, label %vector.body991, !llvm.loop !113

polly.loop_exit693.1.2:                           ; preds = %vector.body991
  %polly.indvar_next689.1.2 = add nuw nsw i64 %polly.indvar688.1.2, 1
  %exitcond812.1.2.not = icmp eq i64 %polly.indvar_next689.1.2, 16
  br i1 %exitcond812.1.2.not, label %polly.loop_header685.2.2, label %polly.loop_header685.1.2

polly.loop_header685.2.2:                         ; preds = %polly.loop_exit693.1.2, %polly.loop_exit693.2.2
  %polly.indvar688.2.2 = phi i64 [ %polly.indvar_next689.2.2, %polly.loop_exit693.2.2 ], [ 0, %polly.loop_exit693.1.2 ]
  %452 = add nuw nsw i64 %polly.indvar688.2.2, 64
  %453 = mul nuw nsw i64 %452, 640
  %454 = trunc i64 %452 to i32
  %broadcast.splatinsert1011 = insertelement <4 x i32> poison, i32 %454, i32 0
  %broadcast.splat1012 = shufflevector <4 x i32> %broadcast.splatinsert1011, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %polly.loop_header685.2.2
  %index1005 = phi i64 [ 0, %polly.loop_header685.2.2 ], [ %index.next1006, %vector.body1003 ]
  %vec.ind1009 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2.2 ], [ %vec.ind.next1010, %vector.body1003 ]
  %455 = add nuw nsw <4 x i64> %vec.ind1009, <i64 64, i64 64, i64 64, i64 64>
  %456 = trunc <4 x i64> %455 to <4 x i32>
  %457 = mul <4 x i32> %broadcast.splat1012, %456
  %458 = add <4 x i32> %457, <i32 3, i32 3, i32 3, i32 3>
  %459 = urem <4 x i32> %458, <i32 80, i32 80, i32 80, i32 80>
  %460 = sitofp <4 x i32> %459 to <4 x double>
  %461 = fmul fast <4 x double> %460, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %462 = extractelement <4 x i64> %455, i32 0
  %463 = shl i64 %462, 3
  %464 = add nuw nsw i64 %463, %453
  %465 = getelementptr i8, i8* %call, i64 %464
  %466 = bitcast i8* %465 to <4 x double>*
  store <4 x double> %461, <4 x double>* %466, align 8, !alias.scope !87, !noalias !89
  %index.next1006 = add i64 %index1005, 4
  %vec.ind.next1010 = add <4 x i64> %vec.ind1009, <i64 4, i64 4, i64 4, i64 4>
  %467 = icmp eq i64 %index.next1006, 16
  br i1 %467, label %polly.loop_exit693.2.2, label %vector.body1003, !llvm.loop !114

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
!24 = !{!"llvm.loop.tile.size", i32 50}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 8}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !44, !45, !48}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 128}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !47}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.tile.followup_tile", !49}
!49 = distinct !{!49, !12, !50}
!50 = !{!"llvm.loop.id", !"i2"}
!51 = distinct !{!51, !12, !13}
!52 = distinct !{!52, !12, !13}
!53 = distinct !{!53, !12, !13}
!54 = distinct !{!54, !12, !13}
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !4, i64 0}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !60, !"polly.alias.scope.MemRef_call"}
!60 = distinct !{!60, !"polly.alias.scope.domain"}
!61 = !{!62, !63}
!62 = distinct !{!62, !60, !"polly.alias.scope.MemRef_call1"}
!63 = distinct !{!63, !60, !"polly.alias.scope.MemRef_call2"}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !66, !13}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = !{!59, !62}
!68 = !{!59, !63}
!69 = distinct !{!69, !70, !"polly.alias.scope.MemRef_call"}
!70 = distinct !{!70, !"polly.alias.scope.domain"}
!71 = !{!72, !73}
!72 = distinct !{!72, !70, !"polly.alias.scope.MemRef_call1"}
!73 = distinct !{!73, !70, !"polly.alias.scope.MemRef_call2"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !66, !13}
!76 = !{!69, !72}
!77 = !{!69, !73}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !66, !13}
!85 = !{!78, !81}
!86 = !{!78, !82}
!87 = distinct !{!87, !88, !"polly.alias.scope.MemRef_call"}
!88 = distinct !{!88, !"polly.alias.scope.domain"}
!89 = !{!90, !91}
!90 = distinct !{!90, !88, !"polly.alias.scope.MemRef_call1"}
!91 = distinct !{!91, !88, !"polly.alias.scope.MemRef_call2"}
!92 = distinct !{!92, !13}
!93 = !{!90, !87}
!94 = distinct !{!94, !13}
!95 = !{!91, !87}
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
!114 = distinct !{!114, !13}
