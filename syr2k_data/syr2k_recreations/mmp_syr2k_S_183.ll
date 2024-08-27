; ModuleID = 'syr2k_recreations//mmp_syr2k_S_183.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_183.c"
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
  br i1 %57, label %middle.block1189, label %vector.body1191, !llvm.loop !54

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

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
  br i1 %68, label %middle.block1215, label %vector.body1217, !llvm.loop !56

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %wide.load1240 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1240, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1237 = add i64 %index1236, 4
  %95 = icmp eq i64 %index.next1237, %n.vec1235
  br i1 %95, label %middle.block1227, label %vector.body1229, !llvm.loop !67

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
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond767.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond767.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = shl i64 %polly.indvar202, 5
  %98 = shl i64 %polly.indvar202, 5
  %scevgep232 = getelementptr i8, i8* %call2, i64 %98
  %scevgep239 = getelementptr i8, i8* %call1, i64 %98
  %99 = shl i64 %polly.indvar202, 5
  %100 = or i64 %99, 8
  %scevgep232.1 = getelementptr i8, i8* %call2, i64 %100
  %scevgep239.1 = getelementptr i8, i8* %call1, i64 %100
  %101 = shl i64 %polly.indvar202, 5
  %102 = or i64 %101, 16
  %scevgep232.2 = getelementptr i8, i8* %call2, i64 %102
  %scevgep239.2 = getelementptr i8, i8* %call1, i64 %102
  %103 = or i64 %97, 24
  %scevgep232.3 = getelementptr i8, i8* %call2, i64 %103
  %scevgep239.3 = getelementptr i8, i8* %call1, i64 %103
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit219.3
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond766.not = icmp eq i64 %polly.indvar_next203, 15
  br i1 %exitcond766.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit219.3, %polly.loop_header199
  %indvars.iv761 = phi i64 [ %indvars.iv.next762, %polly.loop_exit219.3 ], [ 80, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit219.3 ], [ 0, %polly.loop_header199 ]
  %104 = shl nsw i64 %polly.indvar208, 3
  br label %polly.loop_header217

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header205
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit225 ], [ 0, %polly.loop_header205 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit225 ], [ %104, %polly.loop_header205 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 7)
  %105 = mul nuw nsw i64 %polly.indvar220, 480
  %106 = mul nuw nsw i64 %polly.indvar220, 640
  %scevgep243 = getelementptr i8, i8* %call, i64 %106
  %scevgep233 = getelementptr i8, i8* %scevgep232, i64 %105
  %scevgep233234 = bitcast i8* %scevgep233 to double*
  %_p_scalar_235 = load double, double* %scevgep233234, align 8, !alias.scope !66, !noalias !70
  %scevgep240 = getelementptr i8, i8* %scevgep239, i64 %105
  %scevgep240241 = bitcast i8* %scevgep240 to double*
  %_p_scalar_242 = load double, double* %scevgep240241, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond763.not = icmp eq i64 %indvars.iv.next, %indvars.iv761
  br i1 %exitcond763.not, label %polly.loop_header217.1, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header223, %polly.loop_header217
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next227, %polly.loop_header223 ]
  %107 = add nuw nsw i64 %polly.indvar226, %104
  %108 = mul nuw nsw i64 %107, 480
  %109 = add nuw nsw i64 %108, %98
  %scevgep229 = getelementptr i8, i8* %call1, i64 %109
  %scevgep229230 = bitcast i8* %scevgep229 to double*
  %_p_scalar_231 = load double, double* %scevgep229230, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_235, %_p_scalar_231
  %scevgep236 = getelementptr i8, i8* %call2, i64 %109
  %scevgep236237 = bitcast i8* %scevgep236 to double*
  %_p_scalar_238 = load double, double* %scevgep236237, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_242, %_p_scalar_238
  %110 = shl i64 %107, 3
  %scevgep244 = getelementptr i8, i8* %scevgep243, i64 %110
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_246
  store double %p_add42.i118, double* %scevgep244245, align 8, !alias.scope !62, !noalias !64
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
  %wide.load1214 = load <4 x double>, <4 x double>* %115, align 8, !alias.scope !72, !noalias !74
  %116 = fmul fast <4 x double> %wide.load1214, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %117 = bitcast i8* %114 to <4 x double>*
  store <4 x double> %116, <4 x double>* %117, align 8, !alias.scope !72, !noalias !74
  %index.next1211 = add i64 %index1210, 4
  %118 = icmp eq i64 %index.next1211, %n.vec1209
  br i1 %118, label %middle.block1201, label %vector.body1203, !llvm.loop !77

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
  %_p_scalar_348 = load double, double* %scevgep346347, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_348, 1.200000e+00
  store double %p_mul.i57, double* %scevgep346347, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next343 = add nuw nsw i64 %polly.indvar342, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next343, %polly.indvar336
  br i1 %exitcond779.not, label %polly.loop_exit341, label %polly.loop_header339, !llvm.loop !78

polly.loop_header349:                             ; preds = %polly.loop_exit341, %polly.loop_exit357
  %polly.indvar352 = phi i64 [ %polly.indvar_next353, %polly.loop_exit357 ], [ 0, %polly.loop_exit341 ]
  %120 = shl i64 %polly.indvar352, 5
  %121 = shl i64 %polly.indvar352, 5
  %scevgep382 = getelementptr i8, i8* %call2, i64 %121
  %scevgep389 = getelementptr i8, i8* %call1, i64 %121
  %122 = shl i64 %polly.indvar352, 5
  %123 = or i64 %122, 8
  %scevgep382.1 = getelementptr i8, i8* %call2, i64 %123
  %scevgep389.1 = getelementptr i8, i8* %call1, i64 %123
  %124 = shl i64 %polly.indvar352, 5
  %125 = or i64 %124, 16
  %scevgep382.2 = getelementptr i8, i8* %call2, i64 %125
  %scevgep389.2 = getelementptr i8, i8* %call1, i64 %125
  %126 = or i64 %120, 24
  %scevgep382.3 = getelementptr i8, i8* %call2, i64 %126
  %scevgep389.3 = getelementptr i8, i8* %call1, i64 %126
  br label %polly.loop_header355

polly.loop_exit357:                               ; preds = %polly.loop_exit369.3
  %polly.indvar_next353 = add nuw nsw i64 %polly.indvar352, 1
  %exitcond778.not = icmp eq i64 %polly.indvar_next353, 15
  br i1 %exitcond778.not, label %kernel_syr2k.exit90, label %polly.loop_header349

polly.loop_header355:                             ; preds = %polly.loop_exit369.3, %polly.loop_header349
  %indvars.iv773 = phi i64 [ %indvars.iv.next774, %polly.loop_exit369.3 ], [ 80, %polly.loop_header349 ]
  %polly.indvar358 = phi i64 [ %polly.indvar_next359, %polly.loop_exit369.3 ], [ 0, %polly.loop_header349 ]
  %127 = shl nsw i64 %polly.indvar358, 3
  br label %polly.loop_header367

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.loop_header355
  %indvars.iv769 = phi i64 [ %indvars.iv.next770, %polly.loop_exit375 ], [ 0, %polly.loop_header355 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit375 ], [ %127, %polly.loop_header355 ]
  %smin771 = call i64 @llvm.smin.i64(i64 %indvars.iv769, i64 7)
  %128 = mul nuw nsw i64 %polly.indvar370, 480
  %129 = mul nuw nsw i64 %polly.indvar370, 640
  %scevgep393 = getelementptr i8, i8* %call, i64 %129
  %scevgep383 = getelementptr i8, i8* %scevgep382, i64 %128
  %scevgep383384 = bitcast i8* %scevgep383 to double*
  %_p_scalar_385 = load double, double* %scevgep383384, align 8, !alias.scope !76, !noalias !79
  %scevgep390 = getelementptr i8, i8* %scevgep389, i64 %128
  %scevgep390391 = bitcast i8* %scevgep390 to double*
  %_p_scalar_392 = load double, double* %scevgep390391, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %indvars.iv.next770 = add nuw nsw i64 %indvars.iv769, 1
  %exitcond775.not = icmp eq i64 %indvars.iv.next770, %indvars.iv773
  br i1 %exitcond775.not, label %polly.loop_header367.1, label %polly.loop_header367

polly.loop_header373:                             ; preds = %polly.loop_header373, %polly.loop_header367
  %polly.indvar376 = phi i64 [ 0, %polly.loop_header367 ], [ %polly.indvar_next377, %polly.loop_header373 ]
  %130 = add nuw nsw i64 %polly.indvar376, %127
  %131 = mul nuw nsw i64 %130, 480
  %132 = add nuw nsw i64 %131, %121
  %scevgep379 = getelementptr i8, i8* %call1, i64 %132
  %scevgep379380 = bitcast i8* %scevgep379 to double*
  %_p_scalar_381 = load double, double* %scevgep379380, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_385, %_p_scalar_381
  %scevgep386 = getelementptr i8, i8* %call2, i64 %132
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_392, %_p_scalar_388
  %133 = shl i64 %130, 3
  %scevgep394 = getelementptr i8, i8* %scevgep393, i64 %133
  %scevgep394395 = bitcast i8* %scevgep394 to double*
  %_p_scalar_396 = load double, double* %scevgep394395, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_396
  store double %p_add42.i79, double* %scevgep394395, align 8, !alias.scope !72, !noalias !74
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
  %wide.load1188 = load <4 x double>, <4 x double>* %138, align 8, !alias.scope !81, !noalias !83
  %139 = fmul fast <4 x double> %wide.load1188, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %140 = bitcast i8* %137 to <4 x double>*
  store <4 x double> %139, <4 x double>* %140, align 8, !alias.scope !81, !noalias !83
  %index.next1185 = add i64 %index1184, 4
  %141 = icmp eq i64 %index.next1185, %n.vec1183
  br i1 %141, label %middle.block1177, label %vector.body1179, !llvm.loop !86

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
  %_p_scalar_498 = load double, double* %scevgep496497, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_498, 1.200000e+00
  store double %p_mul.i, double* %scevgep496497, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next493 = add nuw nsw i64 %polly.indvar492, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next493, %polly.indvar486
  br i1 %exitcond791.not, label %polly.loop_exit491, label %polly.loop_header489, !llvm.loop !87

polly.loop_header499:                             ; preds = %polly.loop_exit491, %polly.loop_exit507
  %polly.indvar502 = phi i64 [ %polly.indvar_next503, %polly.loop_exit507 ], [ 0, %polly.loop_exit491 ]
  %143 = shl i64 %polly.indvar502, 5
  %144 = shl i64 %polly.indvar502, 5
  %scevgep532 = getelementptr i8, i8* %call2, i64 %144
  %scevgep539 = getelementptr i8, i8* %call1, i64 %144
  %145 = shl i64 %polly.indvar502, 5
  %146 = or i64 %145, 8
  %scevgep532.1 = getelementptr i8, i8* %call2, i64 %146
  %scevgep539.1 = getelementptr i8, i8* %call1, i64 %146
  %147 = shl i64 %polly.indvar502, 5
  %148 = or i64 %147, 16
  %scevgep532.2 = getelementptr i8, i8* %call2, i64 %148
  %scevgep539.2 = getelementptr i8, i8* %call1, i64 %148
  %149 = or i64 %143, 24
  %scevgep532.3 = getelementptr i8, i8* %call2, i64 %149
  %scevgep539.3 = getelementptr i8, i8* %call1, i64 %149
  br label %polly.loop_header505

polly.loop_exit507:                               ; preds = %polly.loop_exit519.3
  %polly.indvar_next503 = add nuw nsw i64 %polly.indvar502, 1
  %exitcond790.not = icmp eq i64 %polly.indvar_next503, 15
  br i1 %exitcond790.not, label %kernel_syr2k.exit, label %polly.loop_header499

polly.loop_header505:                             ; preds = %polly.loop_exit519.3, %polly.loop_header499
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit519.3 ], [ 80, %polly.loop_header499 ]
  %polly.indvar508 = phi i64 [ %polly.indvar_next509, %polly.loop_exit519.3 ], [ 0, %polly.loop_header499 ]
  %150 = shl nsw i64 %polly.indvar508, 3
  br label %polly.loop_header517

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.loop_header505
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %polly.loop_exit525 ], [ 0, %polly.loop_header505 ]
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_exit525 ], [ %150, %polly.loop_header505 ]
  %smin783 = call i64 @llvm.smin.i64(i64 %indvars.iv781, i64 7)
  %151 = mul nuw nsw i64 %polly.indvar520, 480
  %152 = mul nuw nsw i64 %polly.indvar520, 640
  %scevgep543 = getelementptr i8, i8* %call, i64 %152
  %scevgep533 = getelementptr i8, i8* %scevgep532, i64 %151
  %scevgep533534 = bitcast i8* %scevgep533 to double*
  %_p_scalar_535 = load double, double* %scevgep533534, align 8, !alias.scope !85, !noalias !88
  %scevgep540 = getelementptr i8, i8* %scevgep539, i64 %151
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_header523
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1
  %exitcond787.not = icmp eq i64 %indvars.iv.next782, %indvars.iv785
  br i1 %exitcond787.not, label %polly.loop_header517.1, label %polly.loop_header517

polly.loop_header523:                             ; preds = %polly.loop_header523, %polly.loop_header517
  %polly.indvar526 = phi i64 [ 0, %polly.loop_header517 ], [ %polly.indvar_next527, %polly.loop_header523 ]
  %153 = add nuw nsw i64 %polly.indvar526, %150
  %154 = mul nuw nsw i64 %153, 480
  %155 = add nuw nsw i64 %154, %144
  %scevgep529 = getelementptr i8, i8* %call1, i64 %155
  %scevgep529530 = bitcast i8* %scevgep529 to double*
  %_p_scalar_531 = load double, double* %scevgep529530, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_535, %_p_scalar_531
  %scevgep536 = getelementptr i8, i8* %call2, i64 %155
  %scevgep536537 = bitcast i8* %scevgep536 to double*
  %_p_scalar_538 = load double, double* %scevgep536537, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_542, %_p_scalar_538
  %156 = shl i64 %153, 3
  %scevgep544 = getelementptr i8, i8* %scevgep543, i64 %156
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_546
  store double %p_add42.i, double* %scevgep544545, align 8, !alias.scope !81, !noalias !83
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
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !90, !noalias !92
  %index.next904 = add i64 %index903, 4
  %vec.ind.next910 = add <4 x i32> %vec.ind909, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next904, 32
  br i1 %168, label %polly.loop_exit693, label %vector.body901, !llvm.loop !95

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
  store <4 x double> %175, <4 x double>* %179, align 8, !alias.scope !94, !noalias !96
  %index.next1018 = add i64 %index1017, 4
  %vec.ind.next1024 = add <4 x i32> %vec.ind1023, <i32 4, i32 4, i32 4, i32 4>
  %180 = icmp eq i64 %index.next1018, 32
  br i1 %180, label %polly.loop_exit720, label %vector.body1015, !llvm.loop !97

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
  store <4 x double> %187, <4 x double>* %191, align 8, !alias.scope !93, !noalias !98
  %index.next1096 = add i64 %index1095, 4
  %vec.ind.next1102 = add <4 x i32> %vec.ind1101, <i32 4, i32 4, i32 4, i32 4>
  %192 = icmp eq i64 %index.next1096, 32
  br i1 %192, label %polly.loop_exit746, label %vector.body1093, !llvm.loop !99

polly.loop_exit746:                               ; preds = %vector.body1093
  %polly.indvar_next742 = add nuw nsw i64 %polly.indvar741, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next742, 32
  br i1 %exitcond797.not, label %polly.loop_header738.1, label %polly.loop_header738

polly.loop_header217.1:                           ; preds = %polly.loop_exit225, %polly.loop_exit225.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit225.1 ], [ 0, %polly.loop_exit225 ]
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_exit225.1 ], [ %104, %polly.loop_exit225 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 7)
  %193 = mul nuw nsw i64 %polly.indvar220.1, 480
  %194 = mul nuw nsw i64 %polly.indvar220.1, 640
  %scevgep243.1 = getelementptr i8, i8* %call, i64 %194
  %scevgep233.1 = getelementptr i8, i8* %scevgep232.1, i64 %193
  %scevgep233234.1 = bitcast i8* %scevgep233.1 to double*
  %_p_scalar_235.1 = load double, double* %scevgep233234.1, align 8, !alias.scope !66, !noalias !70
  %scevgep240.1 = getelementptr i8, i8* %scevgep239.1, i64 %193
  %scevgep240241.1 = bitcast i8* %scevgep240.1 to double*
  %_p_scalar_242.1 = load double, double* %scevgep240241.1, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.1

polly.loop_header223.1:                           ; preds = %polly.loop_header223.1, %polly.loop_header217.1
  %polly.indvar226.1 = phi i64 [ 0, %polly.loop_header217.1 ], [ %polly.indvar_next227.1, %polly.loop_header223.1 ]
  %195 = add nuw nsw i64 %polly.indvar226.1, %104
  %196 = mul nuw nsw i64 %195, 480
  %197 = add nuw nsw i64 %196, %100
  %scevgep229.1 = getelementptr i8, i8* %call1, i64 %197
  %scevgep229230.1 = bitcast i8* %scevgep229.1 to double*
  %_p_scalar_231.1 = load double, double* %scevgep229230.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_235.1, %_p_scalar_231.1
  %scevgep236.1 = getelementptr i8, i8* %call2, i64 %197
  %scevgep236237.1 = bitcast i8* %scevgep236.1 to double*
  %_p_scalar_238.1 = load double, double* %scevgep236237.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1 = fmul fast double %_p_scalar_242.1, %_p_scalar_238.1
  %198 = shl i64 %195, 3
  %scevgep244.1 = getelementptr i8, i8* %scevgep243.1, i64 %198
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_246.1
  store double %p_add42.i118.1, double* %scevgep244245.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar226.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.1

polly.loop_exit225.1:                             ; preds = %polly.loop_header223.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond763.1.not = icmp eq i64 %indvars.iv.next.1, %indvars.iv761
  br i1 %exitcond763.1.not, label %polly.loop_header217.2, label %polly.loop_header217.1

polly.loop_header217.2:                           ; preds = %polly.loop_exit225.1, %polly.loop_exit225.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit225.2 ], [ 0, %polly.loop_exit225.1 ]
  %polly.indvar220.2 = phi i64 [ %polly.indvar_next221.2, %polly.loop_exit225.2 ], [ %104, %polly.loop_exit225.1 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.2, i64 7)
  %199 = mul nuw nsw i64 %polly.indvar220.2, 480
  %200 = mul nuw nsw i64 %polly.indvar220.2, 640
  %scevgep243.2 = getelementptr i8, i8* %call, i64 %200
  %scevgep233.2 = getelementptr i8, i8* %scevgep232.2, i64 %199
  %scevgep233234.2 = bitcast i8* %scevgep233.2 to double*
  %_p_scalar_235.2 = load double, double* %scevgep233234.2, align 8, !alias.scope !66, !noalias !70
  %scevgep240.2 = getelementptr i8, i8* %scevgep239.2, i64 %199
  %scevgep240241.2 = bitcast i8* %scevgep240.2 to double*
  %_p_scalar_242.2 = load double, double* %scevgep240241.2, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.2

polly.loop_header223.2:                           ; preds = %polly.loop_header223.2, %polly.loop_header217.2
  %polly.indvar226.2 = phi i64 [ 0, %polly.loop_header217.2 ], [ %polly.indvar_next227.2, %polly.loop_header223.2 ]
  %201 = add nuw nsw i64 %polly.indvar226.2, %104
  %202 = mul nuw nsw i64 %201, 480
  %203 = add nuw nsw i64 %202, %102
  %scevgep229.2 = getelementptr i8, i8* %call1, i64 %203
  %scevgep229230.2 = bitcast i8* %scevgep229.2 to double*
  %_p_scalar_231.2 = load double, double* %scevgep229230.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2 = fmul fast double %_p_scalar_235.2, %_p_scalar_231.2
  %scevgep236.2 = getelementptr i8, i8* %call2, i64 %203
  %scevgep236237.2 = bitcast i8* %scevgep236.2 to double*
  %_p_scalar_238.2 = load double, double* %scevgep236237.2, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.2 = fmul fast double %_p_scalar_242.2, %_p_scalar_238.2
  %204 = shl i64 %201, 3
  %scevgep244.2 = getelementptr i8, i8* %scevgep243.2, i64 %204
  %scevgep244245.2 = bitcast i8* %scevgep244.2 to double*
  %_p_scalar_246.2 = load double, double* %scevgep244245.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_246.2
  store double %p_add42.i118.2, double* %scevgep244245.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.2 = add nuw nsw i64 %polly.indvar226.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar226.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.2

polly.loop_exit225.2:                             ; preds = %polly.loop_header223.2
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond763.2.not = icmp eq i64 %indvars.iv.next.2, %indvars.iv761
  br i1 %exitcond763.2.not, label %polly.loop_header217.3, label %polly.loop_header217.2

polly.loop_header217.3:                           ; preds = %polly.loop_exit225.2, %polly.loop_exit225.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %polly.loop_exit225.3 ], [ 0, %polly.loop_exit225.2 ]
  %polly.indvar220.3 = phi i64 [ %polly.indvar_next221.3, %polly.loop_exit225.3 ], [ %104, %polly.loop_exit225.2 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.3, i64 7)
  %205 = mul nuw nsw i64 %polly.indvar220.3, 480
  %206 = mul nuw nsw i64 %polly.indvar220.3, 640
  %scevgep243.3 = getelementptr i8, i8* %call, i64 %206
  %scevgep233.3 = getelementptr i8, i8* %scevgep232.3, i64 %205
  %scevgep233234.3 = bitcast i8* %scevgep233.3 to double*
  %_p_scalar_235.3 = load double, double* %scevgep233234.3, align 8, !alias.scope !66, !noalias !70
  %scevgep240.3 = getelementptr i8, i8* %scevgep239.3, i64 %205
  %scevgep240241.3 = bitcast i8* %scevgep240.3 to double*
  %_p_scalar_242.3 = load double, double* %scevgep240241.3, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.3

polly.loop_header223.3:                           ; preds = %polly.loop_header223.3, %polly.loop_header217.3
  %polly.indvar226.3 = phi i64 [ 0, %polly.loop_header217.3 ], [ %polly.indvar_next227.3, %polly.loop_header223.3 ]
  %207 = add nuw nsw i64 %polly.indvar226.3, %104
  %208 = mul nuw nsw i64 %207, 480
  %209 = add nuw nsw i64 %208, %103
  %scevgep229.3 = getelementptr i8, i8* %call1, i64 %209
  %scevgep229230.3 = bitcast i8* %scevgep229.3 to double*
  %_p_scalar_231.3 = load double, double* %scevgep229230.3, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.3 = fmul fast double %_p_scalar_235.3, %_p_scalar_231.3
  %scevgep236.3 = getelementptr i8, i8* %call2, i64 %209
  %scevgep236237.3 = bitcast i8* %scevgep236.3 to double*
  %_p_scalar_238.3 = load double, double* %scevgep236237.3, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.3 = fmul fast double %_p_scalar_242.3, %_p_scalar_238.3
  %210 = shl i64 %207, 3
  %scevgep244.3 = getelementptr i8, i8* %scevgep243.3, i64 %210
  %scevgep244245.3 = bitcast i8* %scevgep244.3 to double*
  %_p_scalar_246.3 = load double, double* %scevgep244245.3, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_246.3
  store double %p_add42.i118.3, double* %scevgep244245.3, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.3 = add nuw nsw i64 %polly.indvar226.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar226.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit225.3, label %polly.loop_header223.3

polly.loop_exit225.3:                             ; preds = %polly.loop_header223.3
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond763.3.not = icmp eq i64 %indvars.iv.next.3, %indvars.iv761
  br i1 %exitcond763.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.3

polly.loop_exit219.3:                             ; preds = %polly.loop_exit225.3
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next762 = add nsw i64 %indvars.iv761, -8
  %exitcond765.not = icmp eq i64 %polly.indvar_next209, 10
  br i1 %exitcond765.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header367.1:                           ; preds = %polly.loop_exit375, %polly.loop_exit375.1
  %indvars.iv769.1 = phi i64 [ %indvars.iv.next770.1, %polly.loop_exit375.1 ], [ 0, %polly.loop_exit375 ]
  %polly.indvar370.1 = phi i64 [ %polly.indvar_next371.1, %polly.loop_exit375.1 ], [ %127, %polly.loop_exit375 ]
  %smin771.1 = call i64 @llvm.smin.i64(i64 %indvars.iv769.1, i64 7)
  %211 = mul nuw nsw i64 %polly.indvar370.1, 480
  %212 = mul nuw nsw i64 %polly.indvar370.1, 640
  %scevgep393.1 = getelementptr i8, i8* %call, i64 %212
  %scevgep383.1 = getelementptr i8, i8* %scevgep382.1, i64 %211
  %scevgep383384.1 = bitcast i8* %scevgep383.1 to double*
  %_p_scalar_385.1 = load double, double* %scevgep383384.1, align 8, !alias.scope !76, !noalias !79
  %scevgep390.1 = getelementptr i8, i8* %scevgep389.1, i64 %211
  %scevgep390391.1 = bitcast i8* %scevgep390.1 to double*
  %_p_scalar_392.1 = load double, double* %scevgep390391.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header373.1

polly.loop_header373.1:                           ; preds = %polly.loop_header373.1, %polly.loop_header367.1
  %polly.indvar376.1 = phi i64 [ 0, %polly.loop_header367.1 ], [ %polly.indvar_next377.1, %polly.loop_header373.1 ]
  %213 = add nuw nsw i64 %polly.indvar376.1, %127
  %214 = mul nuw nsw i64 %213, 480
  %215 = add nuw nsw i64 %214, %123
  %scevgep379.1 = getelementptr i8, i8* %call1, i64 %215
  %scevgep379380.1 = bitcast i8* %scevgep379.1 to double*
  %_p_scalar_381.1 = load double, double* %scevgep379380.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_385.1, %_p_scalar_381.1
  %scevgep386.1 = getelementptr i8, i8* %call2, i64 %215
  %scevgep386387.1 = bitcast i8* %scevgep386.1 to double*
  %_p_scalar_388.1 = load double, double* %scevgep386387.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1 = fmul fast double %_p_scalar_392.1, %_p_scalar_388.1
  %216 = shl i64 %213, 3
  %scevgep394.1 = getelementptr i8, i8* %scevgep393.1, i64 %216
  %scevgep394395.1 = bitcast i8* %scevgep394.1 to double*
  %_p_scalar_396.1 = load double, double* %scevgep394395.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_396.1
  store double %p_add42.i79.1, double* %scevgep394395.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next377.1 = add nuw nsw i64 %polly.indvar376.1, 1
  %exitcond772.1.not = icmp eq i64 %polly.indvar376.1, %smin771.1
  br i1 %exitcond772.1.not, label %polly.loop_exit375.1, label %polly.loop_header373.1

polly.loop_exit375.1:                             ; preds = %polly.loop_header373.1
  %polly.indvar_next371.1 = add nuw nsw i64 %polly.indvar370.1, 1
  %indvars.iv.next770.1 = add nuw nsw i64 %indvars.iv769.1, 1
  %exitcond775.1.not = icmp eq i64 %indvars.iv.next770.1, %indvars.iv773
  br i1 %exitcond775.1.not, label %polly.loop_header367.2, label %polly.loop_header367.1

polly.loop_header367.2:                           ; preds = %polly.loop_exit375.1, %polly.loop_exit375.2
  %indvars.iv769.2 = phi i64 [ %indvars.iv.next770.2, %polly.loop_exit375.2 ], [ 0, %polly.loop_exit375.1 ]
  %polly.indvar370.2 = phi i64 [ %polly.indvar_next371.2, %polly.loop_exit375.2 ], [ %127, %polly.loop_exit375.1 ]
  %smin771.2 = call i64 @llvm.smin.i64(i64 %indvars.iv769.2, i64 7)
  %217 = mul nuw nsw i64 %polly.indvar370.2, 480
  %218 = mul nuw nsw i64 %polly.indvar370.2, 640
  %scevgep393.2 = getelementptr i8, i8* %call, i64 %218
  %scevgep383.2 = getelementptr i8, i8* %scevgep382.2, i64 %217
  %scevgep383384.2 = bitcast i8* %scevgep383.2 to double*
  %_p_scalar_385.2 = load double, double* %scevgep383384.2, align 8, !alias.scope !76, !noalias !79
  %scevgep390.2 = getelementptr i8, i8* %scevgep389.2, i64 %217
  %scevgep390391.2 = bitcast i8* %scevgep390.2 to double*
  %_p_scalar_392.2 = load double, double* %scevgep390391.2, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header373.2

polly.loop_header373.2:                           ; preds = %polly.loop_header373.2, %polly.loop_header367.2
  %polly.indvar376.2 = phi i64 [ 0, %polly.loop_header367.2 ], [ %polly.indvar_next377.2, %polly.loop_header373.2 ]
  %219 = add nuw nsw i64 %polly.indvar376.2, %127
  %220 = mul nuw nsw i64 %219, 480
  %221 = add nuw nsw i64 %220, %125
  %scevgep379.2 = getelementptr i8, i8* %call1, i64 %221
  %scevgep379380.2 = bitcast i8* %scevgep379.2 to double*
  %_p_scalar_381.2 = load double, double* %scevgep379380.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2 = fmul fast double %_p_scalar_385.2, %_p_scalar_381.2
  %scevgep386.2 = getelementptr i8, i8* %call2, i64 %221
  %scevgep386387.2 = bitcast i8* %scevgep386.2 to double*
  %_p_scalar_388.2 = load double, double* %scevgep386387.2, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.2 = fmul fast double %_p_scalar_392.2, %_p_scalar_388.2
  %222 = shl i64 %219, 3
  %scevgep394.2 = getelementptr i8, i8* %scevgep393.2, i64 %222
  %scevgep394395.2 = bitcast i8* %scevgep394.2 to double*
  %_p_scalar_396.2 = load double, double* %scevgep394395.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_396.2
  store double %p_add42.i79.2, double* %scevgep394395.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next377.2 = add nuw nsw i64 %polly.indvar376.2, 1
  %exitcond772.2.not = icmp eq i64 %polly.indvar376.2, %smin771.2
  br i1 %exitcond772.2.not, label %polly.loop_exit375.2, label %polly.loop_header373.2

polly.loop_exit375.2:                             ; preds = %polly.loop_header373.2
  %polly.indvar_next371.2 = add nuw nsw i64 %polly.indvar370.2, 1
  %indvars.iv.next770.2 = add nuw nsw i64 %indvars.iv769.2, 1
  %exitcond775.2.not = icmp eq i64 %indvars.iv.next770.2, %indvars.iv773
  br i1 %exitcond775.2.not, label %polly.loop_header367.3, label %polly.loop_header367.2

polly.loop_header367.3:                           ; preds = %polly.loop_exit375.2, %polly.loop_exit375.3
  %indvars.iv769.3 = phi i64 [ %indvars.iv.next770.3, %polly.loop_exit375.3 ], [ 0, %polly.loop_exit375.2 ]
  %polly.indvar370.3 = phi i64 [ %polly.indvar_next371.3, %polly.loop_exit375.3 ], [ %127, %polly.loop_exit375.2 ]
  %smin771.3 = call i64 @llvm.smin.i64(i64 %indvars.iv769.3, i64 7)
  %223 = mul nuw nsw i64 %polly.indvar370.3, 480
  %224 = mul nuw nsw i64 %polly.indvar370.3, 640
  %scevgep393.3 = getelementptr i8, i8* %call, i64 %224
  %scevgep383.3 = getelementptr i8, i8* %scevgep382.3, i64 %223
  %scevgep383384.3 = bitcast i8* %scevgep383.3 to double*
  %_p_scalar_385.3 = load double, double* %scevgep383384.3, align 8, !alias.scope !76, !noalias !79
  %scevgep390.3 = getelementptr i8, i8* %scevgep389.3, i64 %223
  %scevgep390391.3 = bitcast i8* %scevgep390.3 to double*
  %_p_scalar_392.3 = load double, double* %scevgep390391.3, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header373.3

polly.loop_header373.3:                           ; preds = %polly.loop_header373.3, %polly.loop_header367.3
  %polly.indvar376.3 = phi i64 [ 0, %polly.loop_header367.3 ], [ %polly.indvar_next377.3, %polly.loop_header373.3 ]
  %225 = add nuw nsw i64 %polly.indvar376.3, %127
  %226 = mul nuw nsw i64 %225, 480
  %227 = add nuw nsw i64 %226, %126
  %scevgep379.3 = getelementptr i8, i8* %call1, i64 %227
  %scevgep379380.3 = bitcast i8* %scevgep379.3 to double*
  %_p_scalar_381.3 = load double, double* %scevgep379380.3, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.3 = fmul fast double %_p_scalar_385.3, %_p_scalar_381.3
  %scevgep386.3 = getelementptr i8, i8* %call2, i64 %227
  %scevgep386387.3 = bitcast i8* %scevgep386.3 to double*
  %_p_scalar_388.3 = load double, double* %scevgep386387.3, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.3 = fmul fast double %_p_scalar_392.3, %_p_scalar_388.3
  %228 = shl i64 %225, 3
  %scevgep394.3 = getelementptr i8, i8* %scevgep393.3, i64 %228
  %scevgep394395.3 = bitcast i8* %scevgep394.3 to double*
  %_p_scalar_396.3 = load double, double* %scevgep394395.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_396.3
  store double %p_add42.i79.3, double* %scevgep394395.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next377.3 = add nuw nsw i64 %polly.indvar376.3, 1
  %exitcond772.3.not = icmp eq i64 %polly.indvar376.3, %smin771.3
  br i1 %exitcond772.3.not, label %polly.loop_exit375.3, label %polly.loop_header373.3

polly.loop_exit375.3:                             ; preds = %polly.loop_header373.3
  %polly.indvar_next371.3 = add nuw nsw i64 %polly.indvar370.3, 1
  %indvars.iv.next770.3 = add nuw nsw i64 %indvars.iv769.3, 1
  %exitcond775.3.not = icmp eq i64 %indvars.iv.next770.3, %indvars.iv773
  br i1 %exitcond775.3.not, label %polly.loop_exit369.3, label %polly.loop_header367.3

polly.loop_exit369.3:                             ; preds = %polly.loop_exit375.3
  %polly.indvar_next359 = add nuw nsw i64 %polly.indvar358, 1
  %indvars.iv.next774 = add nsw i64 %indvars.iv773, -8
  %exitcond777.not = icmp eq i64 %polly.indvar_next359, 10
  br i1 %exitcond777.not, label %polly.loop_exit357, label %polly.loop_header355

polly.loop_header517.1:                           ; preds = %polly.loop_exit525, %polly.loop_exit525.1
  %indvars.iv781.1 = phi i64 [ %indvars.iv.next782.1, %polly.loop_exit525.1 ], [ 0, %polly.loop_exit525 ]
  %polly.indvar520.1 = phi i64 [ %polly.indvar_next521.1, %polly.loop_exit525.1 ], [ %150, %polly.loop_exit525 ]
  %smin783.1 = call i64 @llvm.smin.i64(i64 %indvars.iv781.1, i64 7)
  %229 = mul nuw nsw i64 %polly.indvar520.1, 480
  %230 = mul nuw nsw i64 %polly.indvar520.1, 640
  %scevgep543.1 = getelementptr i8, i8* %call, i64 %230
  %scevgep533.1 = getelementptr i8, i8* %scevgep532.1, i64 %229
  %scevgep533534.1 = bitcast i8* %scevgep533.1 to double*
  %_p_scalar_535.1 = load double, double* %scevgep533534.1, align 8, !alias.scope !85, !noalias !88
  %scevgep540.1 = getelementptr i8, i8* %scevgep539.1, i64 %229
  %scevgep540541.1 = bitcast i8* %scevgep540.1 to double*
  %_p_scalar_542.1 = load double, double* %scevgep540541.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header523.1

polly.loop_header523.1:                           ; preds = %polly.loop_header523.1, %polly.loop_header517.1
  %polly.indvar526.1 = phi i64 [ 0, %polly.loop_header517.1 ], [ %polly.indvar_next527.1, %polly.loop_header523.1 ]
  %231 = add nuw nsw i64 %polly.indvar526.1, %150
  %232 = mul nuw nsw i64 %231, 480
  %233 = add nuw nsw i64 %232, %146
  %scevgep529.1 = getelementptr i8, i8* %call1, i64 %233
  %scevgep529530.1 = bitcast i8* %scevgep529.1 to double*
  %_p_scalar_531.1 = load double, double* %scevgep529530.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_535.1, %_p_scalar_531.1
  %scevgep536.1 = getelementptr i8, i8* %call2, i64 %233
  %scevgep536537.1 = bitcast i8* %scevgep536.1 to double*
  %_p_scalar_538.1 = load double, double* %scevgep536537.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1 = fmul fast double %_p_scalar_542.1, %_p_scalar_538.1
  %234 = shl i64 %231, 3
  %scevgep544.1 = getelementptr i8, i8* %scevgep543.1, i64 %234
  %scevgep544545.1 = bitcast i8* %scevgep544.1 to double*
  %_p_scalar_546.1 = load double, double* %scevgep544545.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_546.1
  store double %p_add42.i.1, double* %scevgep544545.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next527.1 = add nuw nsw i64 %polly.indvar526.1, 1
  %exitcond784.1.not = icmp eq i64 %polly.indvar526.1, %smin783.1
  br i1 %exitcond784.1.not, label %polly.loop_exit525.1, label %polly.loop_header523.1

polly.loop_exit525.1:                             ; preds = %polly.loop_header523.1
  %polly.indvar_next521.1 = add nuw nsw i64 %polly.indvar520.1, 1
  %indvars.iv.next782.1 = add nuw nsw i64 %indvars.iv781.1, 1
  %exitcond787.1.not = icmp eq i64 %indvars.iv.next782.1, %indvars.iv785
  br i1 %exitcond787.1.not, label %polly.loop_header517.2, label %polly.loop_header517.1

polly.loop_header517.2:                           ; preds = %polly.loop_exit525.1, %polly.loop_exit525.2
  %indvars.iv781.2 = phi i64 [ %indvars.iv.next782.2, %polly.loop_exit525.2 ], [ 0, %polly.loop_exit525.1 ]
  %polly.indvar520.2 = phi i64 [ %polly.indvar_next521.2, %polly.loop_exit525.2 ], [ %150, %polly.loop_exit525.1 ]
  %smin783.2 = call i64 @llvm.smin.i64(i64 %indvars.iv781.2, i64 7)
  %235 = mul nuw nsw i64 %polly.indvar520.2, 480
  %236 = mul nuw nsw i64 %polly.indvar520.2, 640
  %scevgep543.2 = getelementptr i8, i8* %call, i64 %236
  %scevgep533.2 = getelementptr i8, i8* %scevgep532.2, i64 %235
  %scevgep533534.2 = bitcast i8* %scevgep533.2 to double*
  %_p_scalar_535.2 = load double, double* %scevgep533534.2, align 8, !alias.scope !85, !noalias !88
  %scevgep540.2 = getelementptr i8, i8* %scevgep539.2, i64 %235
  %scevgep540541.2 = bitcast i8* %scevgep540.2 to double*
  %_p_scalar_542.2 = load double, double* %scevgep540541.2, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header523.2

polly.loop_header523.2:                           ; preds = %polly.loop_header523.2, %polly.loop_header517.2
  %polly.indvar526.2 = phi i64 [ 0, %polly.loop_header517.2 ], [ %polly.indvar_next527.2, %polly.loop_header523.2 ]
  %237 = add nuw nsw i64 %polly.indvar526.2, %150
  %238 = mul nuw nsw i64 %237, 480
  %239 = add nuw nsw i64 %238, %148
  %scevgep529.2 = getelementptr i8, i8* %call1, i64 %239
  %scevgep529530.2 = bitcast i8* %scevgep529.2 to double*
  %_p_scalar_531.2 = load double, double* %scevgep529530.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2 = fmul fast double %_p_scalar_535.2, %_p_scalar_531.2
  %scevgep536.2 = getelementptr i8, i8* %call2, i64 %239
  %scevgep536537.2 = bitcast i8* %scevgep536.2 to double*
  %_p_scalar_538.2 = load double, double* %scevgep536537.2, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.2 = fmul fast double %_p_scalar_542.2, %_p_scalar_538.2
  %240 = shl i64 %237, 3
  %scevgep544.2 = getelementptr i8, i8* %scevgep543.2, i64 %240
  %scevgep544545.2 = bitcast i8* %scevgep544.2 to double*
  %_p_scalar_546.2 = load double, double* %scevgep544545.2, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_546.2
  store double %p_add42.i.2, double* %scevgep544545.2, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next527.2 = add nuw nsw i64 %polly.indvar526.2, 1
  %exitcond784.2.not = icmp eq i64 %polly.indvar526.2, %smin783.2
  br i1 %exitcond784.2.not, label %polly.loop_exit525.2, label %polly.loop_header523.2

polly.loop_exit525.2:                             ; preds = %polly.loop_header523.2
  %polly.indvar_next521.2 = add nuw nsw i64 %polly.indvar520.2, 1
  %indvars.iv.next782.2 = add nuw nsw i64 %indvars.iv781.2, 1
  %exitcond787.2.not = icmp eq i64 %indvars.iv.next782.2, %indvars.iv785
  br i1 %exitcond787.2.not, label %polly.loop_header517.3, label %polly.loop_header517.2

polly.loop_header517.3:                           ; preds = %polly.loop_exit525.2, %polly.loop_exit525.3
  %indvars.iv781.3 = phi i64 [ %indvars.iv.next782.3, %polly.loop_exit525.3 ], [ 0, %polly.loop_exit525.2 ]
  %polly.indvar520.3 = phi i64 [ %polly.indvar_next521.3, %polly.loop_exit525.3 ], [ %150, %polly.loop_exit525.2 ]
  %smin783.3 = call i64 @llvm.smin.i64(i64 %indvars.iv781.3, i64 7)
  %241 = mul nuw nsw i64 %polly.indvar520.3, 480
  %242 = mul nuw nsw i64 %polly.indvar520.3, 640
  %scevgep543.3 = getelementptr i8, i8* %call, i64 %242
  %scevgep533.3 = getelementptr i8, i8* %scevgep532.3, i64 %241
  %scevgep533534.3 = bitcast i8* %scevgep533.3 to double*
  %_p_scalar_535.3 = load double, double* %scevgep533534.3, align 8, !alias.scope !85, !noalias !88
  %scevgep540.3 = getelementptr i8, i8* %scevgep539.3, i64 %241
  %scevgep540541.3 = bitcast i8* %scevgep540.3 to double*
  %_p_scalar_542.3 = load double, double* %scevgep540541.3, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header523.3

polly.loop_header523.3:                           ; preds = %polly.loop_header523.3, %polly.loop_header517.3
  %polly.indvar526.3 = phi i64 [ 0, %polly.loop_header517.3 ], [ %polly.indvar_next527.3, %polly.loop_header523.3 ]
  %243 = add nuw nsw i64 %polly.indvar526.3, %150
  %244 = mul nuw nsw i64 %243, 480
  %245 = add nuw nsw i64 %244, %149
  %scevgep529.3 = getelementptr i8, i8* %call1, i64 %245
  %scevgep529530.3 = bitcast i8* %scevgep529.3 to double*
  %_p_scalar_531.3 = load double, double* %scevgep529530.3, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.3 = fmul fast double %_p_scalar_535.3, %_p_scalar_531.3
  %scevgep536.3 = getelementptr i8, i8* %call2, i64 %245
  %scevgep536537.3 = bitcast i8* %scevgep536.3 to double*
  %_p_scalar_538.3 = load double, double* %scevgep536537.3, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.3 = fmul fast double %_p_scalar_542.3, %_p_scalar_538.3
  %246 = shl i64 %243, 3
  %scevgep544.3 = getelementptr i8, i8* %scevgep543.3, i64 %246
  %scevgep544545.3 = bitcast i8* %scevgep544.3 to double*
  %_p_scalar_546.3 = load double, double* %scevgep544545.3, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_546.3
  store double %p_add42.i.3, double* %scevgep544545.3, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next527.3 = add nuw nsw i64 %polly.indvar526.3, 1
  %exitcond784.3.not = icmp eq i64 %polly.indvar526.3, %smin783.3
  br i1 %exitcond784.3.not, label %polly.loop_exit525.3, label %polly.loop_header523.3

polly.loop_exit525.3:                             ; preds = %polly.loop_header523.3
  %polly.indvar_next521.3 = add nuw nsw i64 %polly.indvar520.3, 1
  %indvars.iv.next782.3 = add nuw nsw i64 %indvars.iv781.3, 1
  %exitcond787.3.not = icmp eq i64 %indvars.iv.next782.3, %indvars.iv785
  br i1 %exitcond787.3.not, label %polly.loop_exit519.3, label %polly.loop_header517.3

polly.loop_exit519.3:                             ; preds = %polly.loop_exit525.3
  %polly.indvar_next509 = add nuw nsw i64 %polly.indvar508, 1
  %indvars.iv.next786 = add nsw i64 %indvars.iv785, -8
  %exitcond789.not = icmp eq i64 %polly.indvar_next509, 10
  br i1 %exitcond789.not, label %polly.loop_exit507, label %polly.loop_header505

polly.loop_header738.1:                           ; preds = %polly.loop_exit746, %polly.loop_exit746.1
  %polly.indvar741.1 = phi i64 [ %polly.indvar_next742.1, %polly.loop_exit746.1 ], [ 0, %polly.loop_exit746 ]
  %247 = mul nuw nsw i64 %polly.indvar741.1, 480
  %248 = trunc i64 %polly.indvar741.1 to i32
  %broadcast.splatinsert1115 = insertelement <4 x i32> poison, i32 %248, i32 0
  %broadcast.splat1116 = shufflevector <4 x i32> %broadcast.splatinsert1115, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %polly.loop_header738.1
  %index1109 = phi i64 [ 0, %polly.loop_header738.1 ], [ %index.next1110, %vector.body1107 ]
  %vec.ind1113 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1 ], [ %vec.ind.next1114, %vector.body1107 ]
  %249 = add nuw nsw <4 x i64> %vec.ind1113, <i64 32, i64 32, i64 32, i64 32>
  %250 = trunc <4 x i64> %249 to <4 x i32>
  %251 = mul <4 x i32> %broadcast.splat1116, %250
  %252 = add <4 x i32> %251, <i32 1, i32 1, i32 1, i32 1>
  %253 = urem <4 x i32> %252, <i32 80, i32 80, i32 80, i32 80>
  %254 = sitofp <4 x i32> %253 to <4 x double>
  %255 = fmul fast <4 x double> %254, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %256 = extractelement <4 x i64> %249, i32 0
  %257 = shl i64 %256, 3
  %258 = add i64 %257, %247
  %259 = getelementptr i8, i8* %call1, i64 %258
  %260 = bitcast i8* %259 to <4 x double>*
  store <4 x double> %255, <4 x double>* %260, align 8, !alias.scope !93, !noalias !98
  %index.next1110 = add i64 %index1109, 4
  %vec.ind.next1114 = add <4 x i64> %vec.ind1113, <i64 4, i64 4, i64 4, i64 4>
  %261 = icmp eq i64 %index.next1110, 28
  br i1 %261, label %polly.loop_exit746.1, label %vector.body1107, !llvm.loop !100

polly.loop_exit746.1:                             ; preds = %vector.body1107
  %polly.indvar_next742.1 = add nuw nsw i64 %polly.indvar741.1, 1
  %exitcond797.1.not = icmp eq i64 %polly.indvar_next742.1, 32
  br i1 %exitcond797.1.not, label %polly.loop_header738.1820, label %polly.loop_header738.1

polly.loop_header738.1820:                        ; preds = %polly.loop_exit746.1, %polly.loop_exit746.1831
  %polly.indvar741.1819 = phi i64 [ %polly.indvar_next742.1829, %polly.loop_exit746.1831 ], [ 0, %polly.loop_exit746.1 ]
  %262 = add nuw nsw i64 %polly.indvar741.1819, 32
  %263 = mul nuw nsw i64 %262, 480
  %264 = trunc i64 %262 to i32
  %broadcast.splatinsert1129 = insertelement <4 x i32> poison, i32 %264, i32 0
  %broadcast.splat1130 = shufflevector <4 x i32> %broadcast.splatinsert1129, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %polly.loop_header738.1820
  %index1121 = phi i64 [ 0, %polly.loop_header738.1820 ], [ %index.next1122, %vector.body1119 ]
  %vec.ind1127 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738.1820 ], [ %vec.ind.next1128, %vector.body1119 ]
  %265 = mul <4 x i32> %vec.ind1127, %broadcast.splat1130
  %266 = add <4 x i32> %265, <i32 1, i32 1, i32 1, i32 1>
  %267 = urem <4 x i32> %266, <i32 80, i32 80, i32 80, i32 80>
  %268 = sitofp <4 x i32> %267 to <4 x double>
  %269 = fmul fast <4 x double> %268, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %270 = shl i64 %index1121, 3
  %271 = add i64 %270, %263
  %272 = getelementptr i8, i8* %call1, i64 %271
  %273 = bitcast i8* %272 to <4 x double>*
  store <4 x double> %269, <4 x double>* %273, align 8, !alias.scope !93, !noalias !98
  %index.next1122 = add i64 %index1121, 4
  %vec.ind.next1128 = add <4 x i32> %vec.ind1127, <i32 4, i32 4, i32 4, i32 4>
  %274 = icmp eq i64 %index.next1122, 32
  br i1 %274, label %polly.loop_exit746.1831, label %vector.body1119, !llvm.loop !101

polly.loop_exit746.1831:                          ; preds = %vector.body1119
  %polly.indvar_next742.1829 = add nuw nsw i64 %polly.indvar741.1819, 1
  %exitcond797.1830.not = icmp eq i64 %polly.indvar_next742.1829, 32
  br i1 %exitcond797.1830.not, label %polly.loop_header738.1.1, label %polly.loop_header738.1820

polly.loop_header738.1.1:                         ; preds = %polly.loop_exit746.1831, %polly.loop_exit746.1.1
  %polly.indvar741.1.1 = phi i64 [ %polly.indvar_next742.1.1, %polly.loop_exit746.1.1 ], [ 0, %polly.loop_exit746.1831 ]
  %275 = add nuw nsw i64 %polly.indvar741.1.1, 32
  %276 = mul nuw nsw i64 %275, 480
  %277 = trunc i64 %275 to i32
  %broadcast.splatinsert1141 = insertelement <4 x i32> poison, i32 %277, i32 0
  %broadcast.splat1142 = shufflevector <4 x i32> %broadcast.splatinsert1141, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %polly.loop_header738.1.1
  %index1135 = phi i64 [ 0, %polly.loop_header738.1.1 ], [ %index.next1136, %vector.body1133 ]
  %vec.ind1139 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1.1 ], [ %vec.ind.next1140, %vector.body1133 ]
  %278 = add nuw nsw <4 x i64> %vec.ind1139, <i64 32, i64 32, i64 32, i64 32>
  %279 = trunc <4 x i64> %278 to <4 x i32>
  %280 = mul <4 x i32> %broadcast.splat1142, %279
  %281 = add <4 x i32> %280, <i32 1, i32 1, i32 1, i32 1>
  %282 = urem <4 x i32> %281, <i32 80, i32 80, i32 80, i32 80>
  %283 = sitofp <4 x i32> %282 to <4 x double>
  %284 = fmul fast <4 x double> %283, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %285 = extractelement <4 x i64> %278, i32 0
  %286 = shl i64 %285, 3
  %287 = add i64 %286, %276
  %288 = getelementptr i8, i8* %call1, i64 %287
  %289 = bitcast i8* %288 to <4 x double>*
  store <4 x double> %284, <4 x double>* %289, align 8, !alias.scope !93, !noalias !98
  %index.next1136 = add i64 %index1135, 4
  %vec.ind.next1140 = add <4 x i64> %vec.ind1139, <i64 4, i64 4, i64 4, i64 4>
  %290 = icmp eq i64 %index.next1136, 28
  br i1 %290, label %polly.loop_exit746.1.1, label %vector.body1133, !llvm.loop !102

polly.loop_exit746.1.1:                           ; preds = %vector.body1133
  %polly.indvar_next742.1.1 = add nuw nsw i64 %polly.indvar741.1.1, 1
  %exitcond797.1.1.not = icmp eq i64 %polly.indvar_next742.1.1, 32
  br i1 %exitcond797.1.1.not, label %polly.loop_header738.2, label %polly.loop_header738.1.1

polly.loop_header738.2:                           ; preds = %polly.loop_exit746.1.1, %polly.loop_exit746.2
  %polly.indvar741.2 = phi i64 [ %polly.indvar_next742.2, %polly.loop_exit746.2 ], [ 0, %polly.loop_exit746.1.1 ]
  %291 = add nuw nsw i64 %polly.indvar741.2, 64
  %292 = mul nuw nsw i64 %291, 480
  %293 = trunc i64 %291 to i32
  %broadcast.splatinsert1155 = insertelement <4 x i32> poison, i32 %293, i32 0
  %broadcast.splat1156 = shufflevector <4 x i32> %broadcast.splatinsert1155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %polly.loop_header738.2
  %index1147 = phi i64 [ 0, %polly.loop_header738.2 ], [ %index.next1148, %vector.body1145 ]
  %vec.ind1153 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738.2 ], [ %vec.ind.next1154, %vector.body1145 ]
  %294 = mul <4 x i32> %vec.ind1153, %broadcast.splat1156
  %295 = add <4 x i32> %294, <i32 1, i32 1, i32 1, i32 1>
  %296 = urem <4 x i32> %295, <i32 80, i32 80, i32 80, i32 80>
  %297 = sitofp <4 x i32> %296 to <4 x double>
  %298 = fmul fast <4 x double> %297, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %299 = shl i64 %index1147, 3
  %300 = add i64 %299, %292
  %301 = getelementptr i8, i8* %call1, i64 %300
  %302 = bitcast i8* %301 to <4 x double>*
  store <4 x double> %298, <4 x double>* %302, align 8, !alias.scope !93, !noalias !98
  %index.next1148 = add i64 %index1147, 4
  %vec.ind.next1154 = add <4 x i32> %vec.ind1153, <i32 4, i32 4, i32 4, i32 4>
  %303 = icmp eq i64 %index.next1148, 32
  br i1 %303, label %polly.loop_exit746.2, label %vector.body1145, !llvm.loop !103

polly.loop_exit746.2:                             ; preds = %vector.body1145
  %polly.indvar_next742.2 = add nuw nsw i64 %polly.indvar741.2, 1
  %exitcond797.2.not = icmp eq i64 %polly.indvar_next742.2, 16
  br i1 %exitcond797.2.not, label %polly.loop_header738.1.2, label %polly.loop_header738.2

polly.loop_header738.1.2:                         ; preds = %polly.loop_exit746.2, %polly.loop_exit746.1.2
  %polly.indvar741.1.2 = phi i64 [ %polly.indvar_next742.1.2, %polly.loop_exit746.1.2 ], [ 0, %polly.loop_exit746.2 ]
  %304 = add nuw nsw i64 %polly.indvar741.1.2, 64
  %305 = mul nuw nsw i64 %304, 480
  %306 = trunc i64 %304 to i32
  %broadcast.splatinsert1167 = insertelement <4 x i32> poison, i32 %306, i32 0
  %broadcast.splat1168 = shufflevector <4 x i32> %broadcast.splatinsert1167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %polly.loop_header738.1.2
  %index1161 = phi i64 [ 0, %polly.loop_header738.1.2 ], [ %index.next1162, %vector.body1159 ]
  %vec.ind1165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1.2 ], [ %vec.ind.next1166, %vector.body1159 ]
  %307 = add nuw nsw <4 x i64> %vec.ind1165, <i64 32, i64 32, i64 32, i64 32>
  %308 = trunc <4 x i64> %307 to <4 x i32>
  %309 = mul <4 x i32> %broadcast.splat1168, %308
  %310 = add <4 x i32> %309, <i32 1, i32 1, i32 1, i32 1>
  %311 = urem <4 x i32> %310, <i32 80, i32 80, i32 80, i32 80>
  %312 = sitofp <4 x i32> %311 to <4 x double>
  %313 = fmul fast <4 x double> %312, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %314 = extractelement <4 x i64> %307, i32 0
  %315 = shl i64 %314, 3
  %316 = add i64 %315, %305
  %317 = getelementptr i8, i8* %call1, i64 %316
  %318 = bitcast i8* %317 to <4 x double>*
  store <4 x double> %313, <4 x double>* %318, align 8, !alias.scope !93, !noalias !98
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1166 = add <4 x i64> %vec.ind1165, <i64 4, i64 4, i64 4, i64 4>
  %319 = icmp eq i64 %index.next1162, 28
  br i1 %319, label %polly.loop_exit746.1.2, label %vector.body1159, !llvm.loop !104

polly.loop_exit746.1.2:                           ; preds = %vector.body1159
  %polly.indvar_next742.1.2 = add nuw nsw i64 %polly.indvar741.1.2, 1
  %exitcond797.1.2.not = icmp eq i64 %polly.indvar_next742.1.2, 16
  br i1 %exitcond797.1.2.not, label %init_array.exit, label %polly.loop_header738.1.2

polly.loop_header712.1:                           ; preds = %polly.loop_exit720, %polly.loop_exit720.1
  %polly.indvar715.1 = phi i64 [ %polly.indvar_next716.1, %polly.loop_exit720.1 ], [ 0, %polly.loop_exit720 ]
  %320 = mul nuw nsw i64 %polly.indvar715.1, 480
  %321 = trunc i64 %polly.indvar715.1 to i32
  %broadcast.splatinsert1037 = insertelement <4 x i32> poison, i32 %321, i32 0
  %broadcast.splat1038 = shufflevector <4 x i32> %broadcast.splatinsert1037, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %polly.loop_header712.1
  %index1031 = phi i64 [ 0, %polly.loop_header712.1 ], [ %index.next1032, %vector.body1029 ]
  %vec.ind1035 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1 ], [ %vec.ind.next1036, %vector.body1029 ]
  %322 = add nuw nsw <4 x i64> %vec.ind1035, <i64 32, i64 32, i64 32, i64 32>
  %323 = trunc <4 x i64> %322 to <4 x i32>
  %324 = mul <4 x i32> %broadcast.splat1038, %323
  %325 = add <4 x i32> %324, <i32 2, i32 2, i32 2, i32 2>
  %326 = urem <4 x i32> %325, <i32 60, i32 60, i32 60, i32 60>
  %327 = sitofp <4 x i32> %326 to <4 x double>
  %328 = fmul fast <4 x double> %327, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %329 = extractelement <4 x i64> %322, i32 0
  %330 = shl i64 %329, 3
  %331 = add i64 %330, %320
  %332 = getelementptr i8, i8* %call2, i64 %331
  %333 = bitcast i8* %332 to <4 x double>*
  store <4 x double> %328, <4 x double>* %333, align 8, !alias.scope !94, !noalias !96
  %index.next1032 = add i64 %index1031, 4
  %vec.ind.next1036 = add <4 x i64> %vec.ind1035, <i64 4, i64 4, i64 4, i64 4>
  %334 = icmp eq i64 %index.next1032, 28
  br i1 %334, label %polly.loop_exit720.1, label %vector.body1029, !llvm.loop !105

polly.loop_exit720.1:                             ; preds = %vector.body1029
  %polly.indvar_next716.1 = add nuw nsw i64 %polly.indvar715.1, 1
  %exitcond803.1.not = icmp eq i64 %polly.indvar_next716.1, 32
  br i1 %exitcond803.1.not, label %polly.loop_header712.1834, label %polly.loop_header712.1

polly.loop_header712.1834:                        ; preds = %polly.loop_exit720.1, %polly.loop_exit720.1845
  %polly.indvar715.1833 = phi i64 [ %polly.indvar_next716.1843, %polly.loop_exit720.1845 ], [ 0, %polly.loop_exit720.1 ]
  %335 = add nuw nsw i64 %polly.indvar715.1833, 32
  %336 = mul nuw nsw i64 %335, 480
  %337 = trunc i64 %335 to i32
  %broadcast.splatinsert1051 = insertelement <4 x i32> poison, i32 %337, i32 0
  %broadcast.splat1052 = shufflevector <4 x i32> %broadcast.splatinsert1051, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1041

vector.body1041:                                  ; preds = %vector.body1041, %polly.loop_header712.1834
  %index1043 = phi i64 [ 0, %polly.loop_header712.1834 ], [ %index.next1044, %vector.body1041 ]
  %vec.ind1049 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712.1834 ], [ %vec.ind.next1050, %vector.body1041 ]
  %338 = mul <4 x i32> %vec.ind1049, %broadcast.splat1052
  %339 = add <4 x i32> %338, <i32 2, i32 2, i32 2, i32 2>
  %340 = urem <4 x i32> %339, <i32 60, i32 60, i32 60, i32 60>
  %341 = sitofp <4 x i32> %340 to <4 x double>
  %342 = fmul fast <4 x double> %341, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %343 = shl i64 %index1043, 3
  %344 = add i64 %343, %336
  %345 = getelementptr i8, i8* %call2, i64 %344
  %346 = bitcast i8* %345 to <4 x double>*
  store <4 x double> %342, <4 x double>* %346, align 8, !alias.scope !94, !noalias !96
  %index.next1044 = add i64 %index1043, 4
  %vec.ind.next1050 = add <4 x i32> %vec.ind1049, <i32 4, i32 4, i32 4, i32 4>
  %347 = icmp eq i64 %index.next1044, 32
  br i1 %347, label %polly.loop_exit720.1845, label %vector.body1041, !llvm.loop !106

polly.loop_exit720.1845:                          ; preds = %vector.body1041
  %polly.indvar_next716.1843 = add nuw nsw i64 %polly.indvar715.1833, 1
  %exitcond803.1844.not = icmp eq i64 %polly.indvar_next716.1843, 32
  br i1 %exitcond803.1844.not, label %polly.loop_header712.1.1, label %polly.loop_header712.1834

polly.loop_header712.1.1:                         ; preds = %polly.loop_exit720.1845, %polly.loop_exit720.1.1
  %polly.indvar715.1.1 = phi i64 [ %polly.indvar_next716.1.1, %polly.loop_exit720.1.1 ], [ 0, %polly.loop_exit720.1845 ]
  %348 = add nuw nsw i64 %polly.indvar715.1.1, 32
  %349 = mul nuw nsw i64 %348, 480
  %350 = trunc i64 %348 to i32
  %broadcast.splatinsert1063 = insertelement <4 x i32> poison, i32 %350, i32 0
  %broadcast.splat1064 = shufflevector <4 x i32> %broadcast.splatinsert1063, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %polly.loop_header712.1.1
  %index1057 = phi i64 [ 0, %polly.loop_header712.1.1 ], [ %index.next1058, %vector.body1055 ]
  %vec.ind1061 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1.1 ], [ %vec.ind.next1062, %vector.body1055 ]
  %351 = add nuw nsw <4 x i64> %vec.ind1061, <i64 32, i64 32, i64 32, i64 32>
  %352 = trunc <4 x i64> %351 to <4 x i32>
  %353 = mul <4 x i32> %broadcast.splat1064, %352
  %354 = add <4 x i32> %353, <i32 2, i32 2, i32 2, i32 2>
  %355 = urem <4 x i32> %354, <i32 60, i32 60, i32 60, i32 60>
  %356 = sitofp <4 x i32> %355 to <4 x double>
  %357 = fmul fast <4 x double> %356, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %358 = extractelement <4 x i64> %351, i32 0
  %359 = shl i64 %358, 3
  %360 = add i64 %359, %349
  %361 = getelementptr i8, i8* %call2, i64 %360
  %362 = bitcast i8* %361 to <4 x double>*
  store <4 x double> %357, <4 x double>* %362, align 8, !alias.scope !94, !noalias !96
  %index.next1058 = add i64 %index1057, 4
  %vec.ind.next1062 = add <4 x i64> %vec.ind1061, <i64 4, i64 4, i64 4, i64 4>
  %363 = icmp eq i64 %index.next1058, 28
  br i1 %363, label %polly.loop_exit720.1.1, label %vector.body1055, !llvm.loop !107

polly.loop_exit720.1.1:                           ; preds = %vector.body1055
  %polly.indvar_next716.1.1 = add nuw nsw i64 %polly.indvar715.1.1, 1
  %exitcond803.1.1.not = icmp eq i64 %polly.indvar_next716.1.1, 32
  br i1 %exitcond803.1.1.not, label %polly.loop_header712.2, label %polly.loop_header712.1.1

polly.loop_header712.2:                           ; preds = %polly.loop_exit720.1.1, %polly.loop_exit720.2
  %polly.indvar715.2 = phi i64 [ %polly.indvar_next716.2, %polly.loop_exit720.2 ], [ 0, %polly.loop_exit720.1.1 ]
  %364 = add nuw nsw i64 %polly.indvar715.2, 64
  %365 = mul nuw nsw i64 %364, 480
  %366 = trunc i64 %364 to i32
  %broadcast.splatinsert1077 = insertelement <4 x i32> poison, i32 %366, i32 0
  %broadcast.splat1078 = shufflevector <4 x i32> %broadcast.splatinsert1077, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %polly.loop_header712.2
  %index1069 = phi i64 [ 0, %polly.loop_header712.2 ], [ %index.next1070, %vector.body1067 ]
  %vec.ind1075 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712.2 ], [ %vec.ind.next1076, %vector.body1067 ]
  %367 = mul <4 x i32> %vec.ind1075, %broadcast.splat1078
  %368 = add <4 x i32> %367, <i32 2, i32 2, i32 2, i32 2>
  %369 = urem <4 x i32> %368, <i32 60, i32 60, i32 60, i32 60>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %372 = shl i64 %index1069, 3
  %373 = add i64 %372, %365
  %374 = getelementptr i8, i8* %call2, i64 %373
  %375 = bitcast i8* %374 to <4 x double>*
  store <4 x double> %371, <4 x double>* %375, align 8, !alias.scope !94, !noalias !96
  %index.next1070 = add i64 %index1069, 4
  %vec.ind.next1076 = add <4 x i32> %vec.ind1075, <i32 4, i32 4, i32 4, i32 4>
  %376 = icmp eq i64 %index.next1070, 32
  br i1 %376, label %polly.loop_exit720.2, label %vector.body1067, !llvm.loop !108

polly.loop_exit720.2:                             ; preds = %vector.body1067
  %polly.indvar_next716.2 = add nuw nsw i64 %polly.indvar715.2, 1
  %exitcond803.2.not = icmp eq i64 %polly.indvar_next716.2, 16
  br i1 %exitcond803.2.not, label %polly.loop_header712.1.2, label %polly.loop_header712.2

polly.loop_header712.1.2:                         ; preds = %polly.loop_exit720.2, %polly.loop_exit720.1.2
  %polly.indvar715.1.2 = phi i64 [ %polly.indvar_next716.1.2, %polly.loop_exit720.1.2 ], [ 0, %polly.loop_exit720.2 ]
  %377 = add nuw nsw i64 %polly.indvar715.1.2, 64
  %378 = mul nuw nsw i64 %377, 480
  %379 = trunc i64 %377 to i32
  %broadcast.splatinsert1089 = insertelement <4 x i32> poison, i32 %379, i32 0
  %broadcast.splat1090 = shufflevector <4 x i32> %broadcast.splatinsert1089, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %polly.loop_header712.1.2
  %index1083 = phi i64 [ 0, %polly.loop_header712.1.2 ], [ %index.next1084, %vector.body1081 ]
  %vec.ind1087 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1.2 ], [ %vec.ind.next1088, %vector.body1081 ]
  %380 = add nuw nsw <4 x i64> %vec.ind1087, <i64 32, i64 32, i64 32, i64 32>
  %381 = trunc <4 x i64> %380 to <4 x i32>
  %382 = mul <4 x i32> %broadcast.splat1090, %381
  %383 = add <4 x i32> %382, <i32 2, i32 2, i32 2, i32 2>
  %384 = urem <4 x i32> %383, <i32 60, i32 60, i32 60, i32 60>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %387 = extractelement <4 x i64> %380, i32 0
  %388 = shl i64 %387, 3
  %389 = add i64 %388, %378
  %390 = getelementptr i8, i8* %call2, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %386, <4 x double>* %391, align 8, !alias.scope !94, !noalias !96
  %index.next1084 = add i64 %index1083, 4
  %vec.ind.next1088 = add <4 x i64> %vec.ind1087, <i64 4, i64 4, i64 4, i64 4>
  %392 = icmp eq i64 %index.next1084, 28
  br i1 %392, label %polly.loop_exit720.1.2, label %vector.body1081, !llvm.loop !109

polly.loop_exit720.1.2:                           ; preds = %vector.body1081
  %polly.indvar_next716.1.2 = add nuw nsw i64 %polly.indvar715.1.2, 1
  %exitcond803.1.2.not = icmp eq i64 %polly.indvar_next716.1.2, 16
  br i1 %exitcond803.1.2.not, label %polly.loop_header738, label %polly.loop_header712.1.2

polly.loop_header685.1:                           ; preds = %polly.loop_exit693, %polly.loop_exit693.1
  %polly.indvar688.1 = phi i64 [ %polly.indvar_next689.1, %polly.loop_exit693.1 ], [ 0, %polly.loop_exit693 ]
  %393 = mul nuw nsw i64 %polly.indvar688.1, 640
  %394 = trunc i64 %polly.indvar688.1 to i32
  %broadcast.splatinsert923 = insertelement <4 x i32> poison, i32 %394, i32 0
  %broadcast.splat924 = shufflevector <4 x i32> %broadcast.splatinsert923, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body915

vector.body915:                                   ; preds = %vector.body915, %polly.loop_header685.1
  %index917 = phi i64 [ 0, %polly.loop_header685.1 ], [ %index.next918, %vector.body915 ]
  %vec.ind921 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1 ], [ %vec.ind.next922, %vector.body915 ]
  %395 = add nuw nsw <4 x i64> %vec.ind921, <i64 32, i64 32, i64 32, i64 32>
  %396 = trunc <4 x i64> %395 to <4 x i32>
  %397 = mul <4 x i32> %broadcast.splat924, %396
  %398 = add <4 x i32> %397, <i32 3, i32 3, i32 3, i32 3>
  %399 = urem <4 x i32> %398, <i32 80, i32 80, i32 80, i32 80>
  %400 = sitofp <4 x i32> %399 to <4 x double>
  %401 = fmul fast <4 x double> %400, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %402 = extractelement <4 x i64> %395, i32 0
  %403 = shl i64 %402, 3
  %404 = add nuw nsw i64 %403, %393
  %405 = getelementptr i8, i8* %call, i64 %404
  %406 = bitcast i8* %405 to <4 x double>*
  store <4 x double> %401, <4 x double>* %406, align 8, !alias.scope !90, !noalias !92
  %index.next918 = add i64 %index917, 4
  %vec.ind.next922 = add <4 x i64> %vec.ind921, <i64 4, i64 4, i64 4, i64 4>
  %407 = icmp eq i64 %index.next918, 32
  br i1 %407, label %polly.loop_exit693.1, label %vector.body915, !llvm.loop !110

polly.loop_exit693.1:                             ; preds = %vector.body915
  %polly.indvar_next689.1 = add nuw nsw i64 %polly.indvar688.1, 1
  %exitcond812.1.not = icmp eq i64 %polly.indvar_next689.1, 32
  br i1 %exitcond812.1.not, label %polly.loop_header685.2, label %polly.loop_header685.1

polly.loop_header685.2:                           ; preds = %polly.loop_exit693.1, %polly.loop_exit693.2
  %polly.indvar688.2 = phi i64 [ %polly.indvar_next689.2, %polly.loop_exit693.2 ], [ 0, %polly.loop_exit693.1 ]
  %408 = mul nuw nsw i64 %polly.indvar688.2, 640
  %409 = trunc i64 %polly.indvar688.2 to i32
  %broadcast.splatinsert935 = insertelement <4 x i32> poison, i32 %409, i32 0
  %broadcast.splat936 = shufflevector <4 x i32> %broadcast.splatinsert935, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %polly.loop_header685.2
  %index929 = phi i64 [ 0, %polly.loop_header685.2 ], [ %index.next930, %vector.body927 ]
  %vec.ind933 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2 ], [ %vec.ind.next934, %vector.body927 ]
  %410 = add nuw nsw <4 x i64> %vec.ind933, <i64 64, i64 64, i64 64, i64 64>
  %411 = trunc <4 x i64> %410 to <4 x i32>
  %412 = mul <4 x i32> %broadcast.splat936, %411
  %413 = add <4 x i32> %412, <i32 3, i32 3, i32 3, i32 3>
  %414 = urem <4 x i32> %413, <i32 80, i32 80, i32 80, i32 80>
  %415 = sitofp <4 x i32> %414 to <4 x double>
  %416 = fmul fast <4 x double> %415, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %417 = extractelement <4 x i64> %410, i32 0
  %418 = shl i64 %417, 3
  %419 = add nuw nsw i64 %418, %408
  %420 = getelementptr i8, i8* %call, i64 %419
  %421 = bitcast i8* %420 to <4 x double>*
  store <4 x double> %416, <4 x double>* %421, align 8, !alias.scope !90, !noalias !92
  %index.next930 = add i64 %index929, 4
  %vec.ind.next934 = add <4 x i64> %vec.ind933, <i64 4, i64 4, i64 4, i64 4>
  %422 = icmp eq i64 %index.next930, 16
  br i1 %422, label %polly.loop_exit693.2, label %vector.body927, !llvm.loop !111

polly.loop_exit693.2:                             ; preds = %vector.body927
  %polly.indvar_next689.2 = add nuw nsw i64 %polly.indvar688.2, 1
  %exitcond812.2.not = icmp eq i64 %polly.indvar_next689.2, 32
  br i1 %exitcond812.2.not, label %polly.loop_header685.1848, label %polly.loop_header685.2

polly.loop_header685.1848:                        ; preds = %polly.loop_exit693.2, %polly.loop_exit693.1859
  %polly.indvar688.1847 = phi i64 [ %polly.indvar_next689.1857, %polly.loop_exit693.1859 ], [ 0, %polly.loop_exit693.2 ]
  %423 = add nuw nsw i64 %polly.indvar688.1847, 32
  %424 = mul nuw nsw i64 %423, 640
  %425 = trunc i64 %423 to i32
  %broadcast.splatinsert949 = insertelement <4 x i32> poison, i32 %425, i32 0
  %broadcast.splat950 = shufflevector <4 x i32> %broadcast.splatinsert949, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body939

vector.body939:                                   ; preds = %vector.body939, %polly.loop_header685.1848
  %index941 = phi i64 [ 0, %polly.loop_header685.1848 ], [ %index.next942, %vector.body939 ]
  %vec.ind947 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685.1848 ], [ %vec.ind.next948, %vector.body939 ]
  %426 = mul <4 x i32> %vec.ind947, %broadcast.splat950
  %427 = add <4 x i32> %426, <i32 3, i32 3, i32 3, i32 3>
  %428 = urem <4 x i32> %427, <i32 80, i32 80, i32 80, i32 80>
  %429 = sitofp <4 x i32> %428 to <4 x double>
  %430 = fmul fast <4 x double> %429, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %431 = shl i64 %index941, 3
  %432 = add nuw nsw i64 %431, %424
  %433 = getelementptr i8, i8* %call, i64 %432
  %434 = bitcast i8* %433 to <4 x double>*
  store <4 x double> %430, <4 x double>* %434, align 8, !alias.scope !90, !noalias !92
  %index.next942 = add i64 %index941, 4
  %vec.ind.next948 = add <4 x i32> %vec.ind947, <i32 4, i32 4, i32 4, i32 4>
  %435 = icmp eq i64 %index.next942, 32
  br i1 %435, label %polly.loop_exit693.1859, label %vector.body939, !llvm.loop !112

polly.loop_exit693.1859:                          ; preds = %vector.body939
  %polly.indvar_next689.1857 = add nuw nsw i64 %polly.indvar688.1847, 1
  %exitcond812.1858.not = icmp eq i64 %polly.indvar_next689.1857, 32
  br i1 %exitcond812.1858.not, label %polly.loop_header685.1.1, label %polly.loop_header685.1848

polly.loop_header685.1.1:                         ; preds = %polly.loop_exit693.1859, %polly.loop_exit693.1.1
  %polly.indvar688.1.1 = phi i64 [ %polly.indvar_next689.1.1, %polly.loop_exit693.1.1 ], [ 0, %polly.loop_exit693.1859 ]
  %436 = add nuw nsw i64 %polly.indvar688.1.1, 32
  %437 = mul nuw nsw i64 %436, 640
  %438 = trunc i64 %436 to i32
  %broadcast.splatinsert961 = insertelement <4 x i32> poison, i32 %438, i32 0
  %broadcast.splat962 = shufflevector <4 x i32> %broadcast.splatinsert961, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body953

vector.body953:                                   ; preds = %vector.body953, %polly.loop_header685.1.1
  %index955 = phi i64 [ 0, %polly.loop_header685.1.1 ], [ %index.next956, %vector.body953 ]
  %vec.ind959 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1.1 ], [ %vec.ind.next960, %vector.body953 ]
  %439 = add nuw nsw <4 x i64> %vec.ind959, <i64 32, i64 32, i64 32, i64 32>
  %440 = trunc <4 x i64> %439 to <4 x i32>
  %441 = mul <4 x i32> %broadcast.splat962, %440
  %442 = add <4 x i32> %441, <i32 3, i32 3, i32 3, i32 3>
  %443 = urem <4 x i32> %442, <i32 80, i32 80, i32 80, i32 80>
  %444 = sitofp <4 x i32> %443 to <4 x double>
  %445 = fmul fast <4 x double> %444, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %446 = extractelement <4 x i64> %439, i32 0
  %447 = shl i64 %446, 3
  %448 = add nuw nsw i64 %447, %437
  %449 = getelementptr i8, i8* %call, i64 %448
  %450 = bitcast i8* %449 to <4 x double>*
  store <4 x double> %445, <4 x double>* %450, align 8, !alias.scope !90, !noalias !92
  %index.next956 = add i64 %index955, 4
  %vec.ind.next960 = add <4 x i64> %vec.ind959, <i64 4, i64 4, i64 4, i64 4>
  %451 = icmp eq i64 %index.next956, 32
  br i1 %451, label %polly.loop_exit693.1.1, label %vector.body953, !llvm.loop !113

polly.loop_exit693.1.1:                           ; preds = %vector.body953
  %polly.indvar_next689.1.1 = add nuw nsw i64 %polly.indvar688.1.1, 1
  %exitcond812.1.1.not = icmp eq i64 %polly.indvar_next689.1.1, 32
  br i1 %exitcond812.1.1.not, label %polly.loop_header685.2.1, label %polly.loop_header685.1.1

polly.loop_header685.2.1:                         ; preds = %polly.loop_exit693.1.1, %polly.loop_exit693.2.1
  %polly.indvar688.2.1 = phi i64 [ %polly.indvar_next689.2.1, %polly.loop_exit693.2.1 ], [ 0, %polly.loop_exit693.1.1 ]
  %452 = add nuw nsw i64 %polly.indvar688.2.1, 32
  %453 = mul nuw nsw i64 %452, 640
  %454 = trunc i64 %452 to i32
  %broadcast.splatinsert973 = insertelement <4 x i32> poison, i32 %454, i32 0
  %broadcast.splat974 = shufflevector <4 x i32> %broadcast.splatinsert973, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %polly.loop_header685.2.1
  %index967 = phi i64 [ 0, %polly.loop_header685.2.1 ], [ %index.next968, %vector.body965 ]
  %vec.ind971 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2.1 ], [ %vec.ind.next972, %vector.body965 ]
  %455 = add nuw nsw <4 x i64> %vec.ind971, <i64 64, i64 64, i64 64, i64 64>
  %456 = trunc <4 x i64> %455 to <4 x i32>
  %457 = mul <4 x i32> %broadcast.splat974, %456
  %458 = add <4 x i32> %457, <i32 3, i32 3, i32 3, i32 3>
  %459 = urem <4 x i32> %458, <i32 80, i32 80, i32 80, i32 80>
  %460 = sitofp <4 x i32> %459 to <4 x double>
  %461 = fmul fast <4 x double> %460, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %462 = extractelement <4 x i64> %455, i32 0
  %463 = shl i64 %462, 3
  %464 = add nuw nsw i64 %463, %453
  %465 = getelementptr i8, i8* %call, i64 %464
  %466 = bitcast i8* %465 to <4 x double>*
  store <4 x double> %461, <4 x double>* %466, align 8, !alias.scope !90, !noalias !92
  %index.next968 = add i64 %index967, 4
  %vec.ind.next972 = add <4 x i64> %vec.ind971, <i64 4, i64 4, i64 4, i64 4>
  %467 = icmp eq i64 %index.next968, 16
  br i1 %467, label %polly.loop_exit693.2.1, label %vector.body965, !llvm.loop !114

polly.loop_exit693.2.1:                           ; preds = %vector.body965
  %polly.indvar_next689.2.1 = add nuw nsw i64 %polly.indvar688.2.1, 1
  %exitcond812.2.1.not = icmp eq i64 %polly.indvar_next689.2.1, 32
  br i1 %exitcond812.2.1.not, label %polly.loop_header685.2862, label %polly.loop_header685.2.1

polly.loop_header685.2862:                        ; preds = %polly.loop_exit693.2.1, %polly.loop_exit693.2873
  %polly.indvar688.2861 = phi i64 [ %polly.indvar_next689.2871, %polly.loop_exit693.2873 ], [ 0, %polly.loop_exit693.2.1 ]
  %468 = add nuw nsw i64 %polly.indvar688.2861, 64
  %469 = mul nuw nsw i64 %468, 640
  %470 = trunc i64 %468 to i32
  %broadcast.splatinsert987 = insertelement <4 x i32> poison, i32 %470, i32 0
  %broadcast.splat988 = shufflevector <4 x i32> %broadcast.splatinsert987, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body977

vector.body977:                                   ; preds = %vector.body977, %polly.loop_header685.2862
  %index979 = phi i64 [ 0, %polly.loop_header685.2862 ], [ %index.next980, %vector.body977 ]
  %vec.ind985 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685.2862 ], [ %vec.ind.next986, %vector.body977 ]
  %471 = mul <4 x i32> %vec.ind985, %broadcast.splat988
  %472 = add <4 x i32> %471, <i32 3, i32 3, i32 3, i32 3>
  %473 = urem <4 x i32> %472, <i32 80, i32 80, i32 80, i32 80>
  %474 = sitofp <4 x i32> %473 to <4 x double>
  %475 = fmul fast <4 x double> %474, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %476 = shl i64 %index979, 3
  %477 = add nuw nsw i64 %476, %469
  %478 = getelementptr i8, i8* %call, i64 %477
  %479 = bitcast i8* %478 to <4 x double>*
  store <4 x double> %475, <4 x double>* %479, align 8, !alias.scope !90, !noalias !92
  %index.next980 = add i64 %index979, 4
  %vec.ind.next986 = add <4 x i32> %vec.ind985, <i32 4, i32 4, i32 4, i32 4>
  %480 = icmp eq i64 %index.next980, 32
  br i1 %480, label %polly.loop_exit693.2873, label %vector.body977, !llvm.loop !115

polly.loop_exit693.2873:                          ; preds = %vector.body977
  %polly.indvar_next689.2871 = add nuw nsw i64 %polly.indvar688.2861, 1
  %exitcond812.2872.not = icmp eq i64 %polly.indvar_next689.2871, 16
  br i1 %exitcond812.2872.not, label %polly.loop_header685.1.2, label %polly.loop_header685.2862

polly.loop_header685.1.2:                         ; preds = %polly.loop_exit693.2873, %polly.loop_exit693.1.2
  %polly.indvar688.1.2 = phi i64 [ %polly.indvar_next689.1.2, %polly.loop_exit693.1.2 ], [ 0, %polly.loop_exit693.2873 ]
  %481 = add nuw nsw i64 %polly.indvar688.1.2, 64
  %482 = mul nuw nsw i64 %481, 640
  %483 = trunc i64 %481 to i32
  %broadcast.splatinsert999 = insertelement <4 x i32> poison, i32 %483, i32 0
  %broadcast.splat1000 = shufflevector <4 x i32> %broadcast.splatinsert999, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body991

vector.body991:                                   ; preds = %vector.body991, %polly.loop_header685.1.2
  %index993 = phi i64 [ 0, %polly.loop_header685.1.2 ], [ %index.next994, %vector.body991 ]
  %vec.ind997 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1.2 ], [ %vec.ind.next998, %vector.body991 ]
  %484 = add nuw nsw <4 x i64> %vec.ind997, <i64 32, i64 32, i64 32, i64 32>
  %485 = trunc <4 x i64> %484 to <4 x i32>
  %486 = mul <4 x i32> %broadcast.splat1000, %485
  %487 = add <4 x i32> %486, <i32 3, i32 3, i32 3, i32 3>
  %488 = urem <4 x i32> %487, <i32 80, i32 80, i32 80, i32 80>
  %489 = sitofp <4 x i32> %488 to <4 x double>
  %490 = fmul fast <4 x double> %489, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %491 = extractelement <4 x i64> %484, i32 0
  %492 = shl i64 %491, 3
  %493 = add nuw nsw i64 %492, %482
  %494 = getelementptr i8, i8* %call, i64 %493
  %495 = bitcast i8* %494 to <4 x double>*
  store <4 x double> %490, <4 x double>* %495, align 8, !alias.scope !90, !noalias !92
  %index.next994 = add i64 %index993, 4
  %vec.ind.next998 = add <4 x i64> %vec.ind997, <i64 4, i64 4, i64 4, i64 4>
  %496 = icmp eq i64 %index.next994, 32
  br i1 %496, label %polly.loop_exit693.1.2, label %vector.body991, !llvm.loop !116

polly.loop_exit693.1.2:                           ; preds = %vector.body991
  %polly.indvar_next689.1.2 = add nuw nsw i64 %polly.indvar688.1.2, 1
  %exitcond812.1.2.not = icmp eq i64 %polly.indvar_next689.1.2, 16
  br i1 %exitcond812.1.2.not, label %polly.loop_header685.2.2, label %polly.loop_header685.1.2

polly.loop_header685.2.2:                         ; preds = %polly.loop_exit693.1.2, %polly.loop_exit693.2.2
  %polly.indvar688.2.2 = phi i64 [ %polly.indvar_next689.2.2, %polly.loop_exit693.2.2 ], [ 0, %polly.loop_exit693.1.2 ]
  %497 = add nuw nsw i64 %polly.indvar688.2.2, 64
  %498 = mul nuw nsw i64 %497, 640
  %499 = trunc i64 %497 to i32
  %broadcast.splatinsert1011 = insertelement <4 x i32> poison, i32 %499, i32 0
  %broadcast.splat1012 = shufflevector <4 x i32> %broadcast.splatinsert1011, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %polly.loop_header685.2.2
  %index1005 = phi i64 [ 0, %polly.loop_header685.2.2 ], [ %index.next1006, %vector.body1003 ]
  %vec.ind1009 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2.2 ], [ %vec.ind.next1010, %vector.body1003 ]
  %500 = add nuw nsw <4 x i64> %vec.ind1009, <i64 64, i64 64, i64 64, i64 64>
  %501 = trunc <4 x i64> %500 to <4 x i32>
  %502 = mul <4 x i32> %broadcast.splat1012, %501
  %503 = add <4 x i32> %502, <i32 3, i32 3, i32 3, i32 3>
  %504 = urem <4 x i32> %503, <i32 80, i32 80, i32 80, i32 80>
  %505 = sitofp <4 x i32> %504 to <4 x double>
  %506 = fmul fast <4 x double> %505, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %507 = extractelement <4 x i64> %500, i32 0
  %508 = shl i64 %507, 3
  %509 = add nuw nsw i64 %508, %498
  %510 = getelementptr i8, i8* %call, i64 %509
  %511 = bitcast i8* %510 to <4 x double>*
  store <4 x double> %506, <4 x double>* %511, align 8, !alias.scope !90, !noalias !92
  %index.next1006 = add i64 %index1005, 4
  %vec.ind.next1010 = add <4 x i64> %vec.ind1009, <i64 4, i64 4, i64 4, i64 4>
  %512 = icmp eq i64 %index.next1006, 16
  br i1 %512, label %polly.loop_exit693.2.2, label %vector.body1003, !llvm.loop !117

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
!24 = !{!"llvm.loop.tile.size", i32 8}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 4}
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
!44 = !{!"llvm.loop.tile.size", i32 100}
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
