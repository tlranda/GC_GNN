; ModuleID = 'syr2k_recreations//mmp_syr2k_S_191.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_191.c"
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
  %call720 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1581 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1581, %call2
  %polly.access.call2601 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2601, %call1
  %2 = or i1 %0, %1
  %polly.access.call621 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call621, %call2
  %4 = icmp ule i8* %polly.access.call2601, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call621, %call1
  %8 = icmp ule i8* %polly.access.call1581, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header706, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep933 = getelementptr i8, i8* %call2, i64 %12
  %scevgep932 = getelementptr i8, i8* %call2, i64 %11
  %scevgep931 = getelementptr i8, i8* %call1, i64 %12
  %scevgep930 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep930, %scevgep933
  %bound1 = icmp ult i8* %scevgep932, %scevgep931
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
  br i1 %exitcond18.not.i, label %vector.ph937, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph937:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert944 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat945 = shufflevector <4 x i64> %broadcast.splatinsert944, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body936

vector.body936:                                   ; preds = %vector.body936, %vector.ph937
  %index938 = phi i64 [ 0, %vector.ph937 ], [ %index.next939, %vector.body936 ]
  %vec.ind942 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph937 ], [ %vec.ind.next943, %vector.body936 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind942, %broadcast.splat945
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv7.i, i64 %index938
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next939 = add i64 %index938, 4
  %vec.ind.next943 = add <4 x i64> %vec.ind942, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next939, 80
  br i1 %40, label %for.inc41.i, label %vector.body936, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body936
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph937, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit767.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header496, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1293, label %vector.ph1219

vector.ph1219:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1218

vector.body1218:                                  ; preds = %vector.body1218, %vector.ph1219
  %index1220 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1221, %vector.body1218 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv21.i, i64 %index1220
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1221 = add i64 %index1220, 4
  %46 = icmp eq i64 %index.next1221, %n.vec
  br i1 %46, label %middle.block1216, label %vector.body1218, !llvm.loop !18

middle.block1216:                                 ; preds = %vector.body1218
  %cmp.n1223 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1223, label %for.inc6.i, label %for.body3.i46.preheader1293

for.body3.i46.preheader1293:                      ; preds = %for.body3.i46.preheader, %middle.block1216
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1216 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1293, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1293 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1216, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit522
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header338, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1239 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1239, label %for.body3.i60.preheader1291, label %vector.ph1240

vector.ph1240:                                    ; preds = %for.body3.i60.preheader
  %n.vec1242 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %vector.ph1240
  %index1243 = phi i64 [ 0, %vector.ph1240 ], [ %index.next1244, %vector.body1238 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv21.i52, i64 %index1243
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1247 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1247, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1244 = add i64 %index1243, 4
  %57 = icmp eq i64 %index.next1244, %n.vec1242
  br i1 %57, label %middle.block1236, label %vector.body1238, !llvm.loop !54

middle.block1236:                                 ; preds = %vector.body1238
  %cmp.n1246 = icmp eq i64 %indvars.iv21.i52, %n.vec1242
  br i1 %cmp.n1246, label %for.inc6.i63, label %for.body3.i60.preheader1291

for.body3.i60.preheader1291:                      ; preds = %for.body3.i60.preheader, %middle.block1236
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1242, %middle.block1236 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1291, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1291 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1236, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit364
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1265 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1265, label %for.body3.i99.preheader1289, label %vector.ph1266

vector.ph1266:                                    ; preds = %for.body3.i99.preheader
  %n.vec1268 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1264

vector.body1264:                                  ; preds = %vector.body1264, %vector.ph1266
  %index1269 = phi i64 [ 0, %vector.ph1266 ], [ %index.next1270, %vector.body1264 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv21.i91, i64 %index1269
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1273 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1273, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1270 = add i64 %index1269, 4
  %68 = icmp eq i64 %index.next1270, %n.vec1268
  br i1 %68, label %middle.block1262, label %vector.body1264, !llvm.loop !56

middle.block1262:                                 ; preds = %vector.body1264
  %cmp.n1272 = icmp eq i64 %indvars.iv21.i91, %n.vec1268
  br i1 %cmp.n1272, label %for.inc6.i102, label %for.body3.i99.preheader1289

for.body3.i99.preheader1289:                      ; preds = %for.body3.i99.preheader, %middle.block1262
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1268, %middle.block1262 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1289, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1289 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1262, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call720, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1277 = phi i64 [ %indvar.next1278, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1277, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1279 = icmp ult i64 %88, 4
  br i1 %min.iters.check1279, label %polly.loop_header191.preheader, label %vector.ph1280

vector.ph1280:                                    ; preds = %polly.loop_header
  %n.vec1282 = and i64 %88, -4
  br label %vector.body1276

vector.body1276:                                  ; preds = %vector.body1276, %vector.ph1280
  %index1283 = phi i64 [ 0, %vector.ph1280 ], [ %index.next1284, %vector.body1276 ]
  %90 = shl nuw nsw i64 %index1283, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1287 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1287, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1284 = add i64 %index1283, 4
  %95 = icmp eq i64 %index.next1284, %n.vec1282
  br i1 %95, label %middle.block1274, label %vector.body1276, !llvm.loop !67

middle.block1274:                                 ; preds = %vector.body1276
  %cmp.n1286 = icmp eq i64 %88, %n.vec1282
  br i1 %cmp.n1286, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1274
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1282, %middle.block1274 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1274
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1278 = add i64 %indvar1277, 1
  br i1 %exitcond798.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond797.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv789 = phi i64 [ %indvars.iv.next790, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit207 ], [ 7, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = shl nuw nsw i64 %indvars.iv785, 2
  %98 = and i64 %97, 9223372036854775776
  %99 = mul nuw nsw i64 %polly.indvar202, 3
  %100 = add nuw nsw i64 %99, 7
  %pexp.p_div_q = lshr i64 %100, 3
  %101 = sub nsw i64 %polly.indvar202, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %101, 3
  br i1 %polly.loop_guard, label %polly.loop_header205.preheader, label %polly.loop_exit207

polly.loop_header205.preheader:                   ; preds = %polly.loop_header199
  %102 = sub nsw i64 %indvars.iv789, %98
  %103 = add i64 %indvars.iv, %98
  %104 = mul nuw nsw i64 %polly.indvar202, 20
  %105 = mul nsw i64 %polly.indvar202, -20
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -12
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 3
  %indvars.iv.next790 = add nuw nsw i64 %indvars.iv789, 12
  %exitcond796.not = icmp eq i64 %polly.indvar_next203, 4
  br i1 %exitcond796.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205.preheader, %polly.loop_exit213
  %indvars.iv791 = phi i64 [ %102, %polly.loop_header205.preheader ], [ %indvars.iv.next792, %polly.loop_exit213 ]
  %indvars.iv787 = phi i64 [ %103, %polly.loop_header205.preheader ], [ %indvars.iv.next788, %polly.loop_exit213 ]
  %polly.indvar208 = phi i64 [ %101, %polly.loop_header205.preheader ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv787, i64 0)
  %106 = add i64 %smax, %indvars.iv791
  %107 = shl nsw i64 %polly.indvar208, 5
  %108 = sub nsw i64 %104, %107
  %109 = icmp sgt i64 %108, 0
  %110 = select i1 %109, i64 %108, i64 0
  %111 = mul nsw i64 %polly.indvar208, -32
  %112 = icmp slt i64 %111, -48
  %113 = select i1 %112, i64 %111, i64 -48
  %114 = add nsw i64 %113, 79
  %polly.loop_guard221.not = icmp sgt i64 %110, %114
  br i1 %polly.loop_guard221.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit220, %polly.loop_header205
  %polly.indvar_next209 = add nsw i64 %polly.indvar208, 1
  %polly.loop_cond210 = icmp slt i64 %polly.indvar208, 2
  %indvars.iv.next788 = add i64 %indvars.iv787, -32
  %indvars.iv.next792 = add i64 %indvars.iv791, 32
  br i1 %polly.loop_cond210, label %polly.loop_header205, label %polly.loop_exit207

polly.loop_header211:                             ; preds = %polly.loop_header205, %polly.loop_exit220
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit220 ], [ 0, %polly.loop_header205 ]
  %115 = shl nuw nsw i64 %polly.indvar214, 3
  %scevgep233 = getelementptr i8, i8* %call1, i64 %115
  %scevgep237 = getelementptr i8, i8* %call2, i64 %115
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_exit228
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond795.not = icmp eq i64 %polly.indvar_next215, 60
  br i1 %exitcond795.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header218:                             ; preds = %polly.loop_exit228, %polly.loop_header211
  %indvars.iv793 = phi i64 [ %indvars.iv.next794, %polly.loop_exit228 ], [ %106, %polly.loop_header211 ]
  %polly.indvar222 = phi i64 [ %polly.indvar_next223, %polly.loop_exit228 ], [ %110, %polly.loop_header211 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv793, i64 19)
  %116 = add i64 %polly.indvar222, %107
  %117 = add i64 %116, %105
  %polly.loop_guard229919 = icmp sgt i64 %117, -1
  br i1 %polly.loop_guard229919, label %polly.loop_header226.preheader, label %polly.loop_exit228

polly.loop_header226.preheader:                   ; preds = %polly.loop_header218
  %118 = mul i64 %116, 480
  %scevgep238 = getelementptr i8, i8* %scevgep237, i64 %118
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !66, !noalias !70
  %scevgep246 = getelementptr i8, i8* %scevgep233, i64 %118
  %scevgep246247 = bitcast i8* %scevgep246 to double*
  %_p_scalar_248 = load double, double* %scevgep246247, align 8, !alias.scope !65, !noalias !71
  %119 = mul i64 %116, 640
  br label %polly.loop_header226

polly.loop_exit228:                               ; preds = %polly.loop_header226, %polly.loop_header218
  %polly.indvar_next223 = add nuw nsw i64 %polly.indvar222, 1
  %polly.loop_cond224.not.not = icmp slt i64 %polly.indvar222, %114
  %indvars.iv.next794 = add i64 %indvars.iv793, 1
  br i1 %polly.loop_cond224.not.not, label %polly.loop_header218, label %polly.loop_exit220

polly.loop_header226:                             ; preds = %polly.loop_header226.preheader, %polly.loop_header226
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_header226 ], [ 0, %polly.loop_header226.preheader ]
  %120 = add nuw nsw i64 %polly.indvar230, %104
  %121 = mul nuw nsw i64 %120, 480
  %scevgep234 = getelementptr i8, i8* %scevgep233, i64 %121
  %scevgep234235 = bitcast i8* %scevgep234 to double*
  %_p_scalar_236 = load double, double* %scevgep234235, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_240, %_p_scalar_236
  %scevgep242 = getelementptr i8, i8* %scevgep237, i64 %121
  %scevgep242243 = bitcast i8* %scevgep242 to double*
  %_p_scalar_244 = load double, double* %scevgep242243, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_248, %_p_scalar_244
  %122 = shl i64 %120, 3
  %123 = add i64 %122, %119
  %scevgep249 = getelementptr i8, i8* %call, i64 %123
  %scevgep249250 = bitcast i8* %scevgep249 to double*
  %_p_scalar_251 = load double, double* %scevgep249250, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_251
  store double %p_add42.i118, double* %scevgep249250, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond.not = icmp eq i64 %polly.indvar230, %smin
  br i1 %exitcond.not, label %polly.loop_exit228, label %polly.loop_header226

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar1251 = phi i64 [ %indvar.next1252, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %124 = add i64 %indvar1251, 1
  %125 = mul nuw nsw i64 %polly.indvar341, 640
  %scevgep350 = getelementptr i8, i8* %call, i64 %125
  %min.iters.check1253 = icmp ult i64 %124, 4
  br i1 %min.iters.check1253, label %polly.loop_header344.preheader, label %vector.ph1254

vector.ph1254:                                    ; preds = %polly.loop_header338
  %n.vec1256 = and i64 %124, -4
  br label %vector.body1250

vector.body1250:                                  ; preds = %vector.body1250, %vector.ph1254
  %index1257 = phi i64 [ 0, %vector.ph1254 ], [ %index.next1258, %vector.body1250 ]
  %126 = shl nuw nsw i64 %index1257, 3
  %127 = getelementptr i8, i8* %scevgep350, i64 %126
  %128 = bitcast i8* %127 to <4 x double>*
  %wide.load1261 = load <4 x double>, <4 x double>* %128, align 8, !alias.scope !72, !noalias !74
  %129 = fmul fast <4 x double> %wide.load1261, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %130 = bitcast i8* %127 to <4 x double>*
  store <4 x double> %129, <4 x double>* %130, align 8, !alias.scope !72, !noalias !74
  %index.next1258 = add i64 %index1257, 4
  %131 = icmp eq i64 %index.next1258, %n.vec1256
  br i1 %131, label %middle.block1248, label %vector.body1250, !llvm.loop !77

middle.block1248:                                 ; preds = %vector.body1250
  %cmp.n1260 = icmp eq i64 %124, %n.vec1256
  br i1 %cmp.n1260, label %polly.loop_exit346, label %polly.loop_header344.preheader

polly.loop_header344.preheader:                   ; preds = %polly.loop_header338, %middle.block1248
  %polly.indvar347.ph = phi i64 [ 0, %polly.loop_header338 ], [ %n.vec1256, %middle.block1248 ]
  br label %polly.loop_header344

polly.loop_exit346:                               ; preds = %polly.loop_header344, %middle.block1248
  %polly.indvar_next342 = add nuw nsw i64 %polly.indvar341, 1
  %exitcond817.not = icmp eq i64 %polly.indvar_next342, 80
  %indvar.next1252 = add i64 %indvar1251, 1
  br i1 %exitcond817.not, label %polly.loop_header354, label %polly.loop_header338

polly.loop_header344:                             ; preds = %polly.loop_header344.preheader, %polly.loop_header344
  %polly.indvar347 = phi i64 [ %polly.indvar_next348, %polly.loop_header344 ], [ %polly.indvar347.ph, %polly.loop_header344.preheader ]
  %132 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %132
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond816.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !78

polly.loop_header354:                             ; preds = %polly.loop_exit346, %polly.loop_exit364
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %polly.loop_exit364 ], [ 0, %polly.loop_exit346 ]
  %indvars.iv801 = phi i64 [ %indvars.iv.next802, %polly.loop_exit364 ], [ 7, %polly.loop_exit346 ]
  %indvars.iv799 = phi i64 [ %indvars.iv.next800, %polly.loop_exit364 ], [ 0, %polly.loop_exit346 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit364 ], [ 0, %polly.loop_exit346 ]
  %133 = shl nuw nsw i64 %indvars.iv801, 2
  %134 = and i64 %133, 9223372036854775776
  %135 = mul nuw nsw i64 %polly.indvar357, 3
  %136 = add nuw nsw i64 %135, 7
  %pexp.p_div_q360 = lshr i64 %136, 3
  %137 = sub nsw i64 %polly.indvar357, %pexp.p_div_q360
  %polly.loop_guard365 = icmp slt i64 %137, 3
  br i1 %polly.loop_guard365, label %polly.loop_header362.preheader, label %polly.loop_exit364

polly.loop_header362.preheader:                   ; preds = %polly.loop_header354
  %138 = sub nsw i64 %indvars.iv806, %134
  %139 = add i64 %indvars.iv799, %134
  %140 = mul nuw nsw i64 %polly.indvar357, 20
  %141 = mul nsw i64 %polly.indvar357, -20
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_exit371, %polly.loop_header354
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %indvars.iv.next800 = add nsw i64 %indvars.iv799, -12
  %indvars.iv.next802 = add nuw nsw i64 %indvars.iv801, 3
  %indvars.iv.next807 = add nuw nsw i64 %indvars.iv806, 12
  %exitcond815.not = icmp eq i64 %polly.indvar_next358, 4
  br i1 %exitcond815.not, label %kernel_syr2k.exit90, label %polly.loop_header354

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_exit371
  %indvars.iv808 = phi i64 [ %138, %polly.loop_header362.preheader ], [ %indvars.iv.next809, %polly.loop_exit371 ]
  %indvars.iv803 = phi i64 [ %139, %polly.loop_header362.preheader ], [ %indvars.iv.next804, %polly.loop_exit371 ]
  %polly.indvar366 = phi i64 [ %137, %polly.loop_header362.preheader ], [ %polly.indvar_next367, %polly.loop_exit371 ]
  %smax805 = call i64 @llvm.smax.i64(i64 %indvars.iv803, i64 0)
  %142 = add i64 %smax805, %indvars.iv808
  %143 = shl nsw i64 %polly.indvar366, 5
  %144 = sub nsw i64 %140, %143
  %145 = icmp sgt i64 %144, 0
  %146 = select i1 %145, i64 %144, i64 0
  %147 = mul nsw i64 %polly.indvar366, -32
  %148 = icmp slt i64 %147, -48
  %149 = select i1 %148, i64 %147, i64 -48
  %150 = add nsw i64 %149, 79
  %polly.loop_guard379.not = icmp sgt i64 %146, %150
  br i1 %polly.loop_guard379.not, label %polly.loop_exit371, label %polly.loop_header369

polly.loop_exit371:                               ; preds = %polly.loop_exit378, %polly.loop_header362
  %polly.indvar_next367 = add nsw i64 %polly.indvar366, 1
  %polly.loop_cond368 = icmp slt i64 %polly.indvar366, 2
  %indvars.iv.next804 = add i64 %indvars.iv803, -32
  %indvars.iv.next809 = add i64 %indvars.iv808, 32
  br i1 %polly.loop_cond368, label %polly.loop_header362, label %polly.loop_exit364

polly.loop_header369:                             ; preds = %polly.loop_header362, %polly.loop_exit378
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_exit378 ], [ 0, %polly.loop_header362 ]
  %151 = shl nuw nsw i64 %polly.indvar372, 3
  %scevgep391 = getelementptr i8, i8* %call1, i64 %151
  %scevgep395 = getelementptr i8, i8* %call2, i64 %151
  br label %polly.loop_header376

polly.loop_exit378:                               ; preds = %polly.loop_exit386
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next373, 60
  br i1 %exitcond814.not, label %polly.loop_exit371, label %polly.loop_header369

polly.loop_header376:                             ; preds = %polly.loop_exit386, %polly.loop_header369
  %indvars.iv810 = phi i64 [ %indvars.iv.next811, %polly.loop_exit386 ], [ %142, %polly.loop_header369 ]
  %polly.indvar380 = phi i64 [ %polly.indvar_next381, %polly.loop_exit386 ], [ %146, %polly.loop_header369 ]
  %smin812 = call i64 @llvm.smin.i64(i64 %indvars.iv810, i64 19)
  %152 = add i64 %polly.indvar380, %143
  %153 = add i64 %152, %141
  %polly.loop_guard387920 = icmp sgt i64 %153, -1
  br i1 %polly.loop_guard387920, label %polly.loop_header384.preheader, label %polly.loop_exit386

polly.loop_header384.preheader:                   ; preds = %polly.loop_header376
  %154 = mul i64 %152, 480
  %scevgep396 = getelementptr i8, i8* %scevgep395, i64 %154
  %scevgep396397 = bitcast i8* %scevgep396 to double*
  %_p_scalar_398 = load double, double* %scevgep396397, align 8, !alias.scope !76, !noalias !79
  %scevgep404 = getelementptr i8, i8* %scevgep391, i64 %154
  %scevgep404405 = bitcast i8* %scevgep404 to double*
  %_p_scalar_406 = load double, double* %scevgep404405, align 8, !alias.scope !75, !noalias !80
  %155 = mul i64 %152, 640
  br label %polly.loop_header384

polly.loop_exit386:                               ; preds = %polly.loop_header384, %polly.loop_header376
  %polly.indvar_next381 = add nuw nsw i64 %polly.indvar380, 1
  %polly.loop_cond382.not.not = icmp slt i64 %polly.indvar380, %150
  %indvars.iv.next811 = add i64 %indvars.iv810, 1
  br i1 %polly.loop_cond382.not.not, label %polly.loop_header376, label %polly.loop_exit378

polly.loop_header384:                             ; preds = %polly.loop_header384.preheader, %polly.loop_header384
  %polly.indvar388 = phi i64 [ %polly.indvar_next389, %polly.loop_header384 ], [ 0, %polly.loop_header384.preheader ]
  %156 = add nuw nsw i64 %polly.indvar388, %140
  %157 = mul nuw nsw i64 %156, 480
  %scevgep392 = getelementptr i8, i8* %scevgep391, i64 %157
  %scevgep392393 = bitcast i8* %scevgep392 to double*
  %_p_scalar_394 = load double, double* %scevgep392393, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_398, %_p_scalar_394
  %scevgep400 = getelementptr i8, i8* %scevgep395, i64 %157
  %scevgep400401 = bitcast i8* %scevgep400 to double*
  %_p_scalar_402 = load double, double* %scevgep400401, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_406, %_p_scalar_402
  %158 = shl i64 %156, 3
  %159 = add i64 %158, %155
  %scevgep407 = getelementptr i8, i8* %call, i64 %159
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_409
  store double %p_add42.i79, double* %scevgep407408, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %exitcond813.not = icmp eq i64 %polly.indvar388, %smin812
  br i1 %exitcond813.not, label %polly.loop_exit386, label %polly.loop_header384

polly.loop_header496:                             ; preds = %init_array.exit, %polly.loop_exit504
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit504 ], [ 0, %init_array.exit ]
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_exit504 ], [ 1, %init_array.exit ]
  %160 = add i64 %indvar, 1
  %161 = mul nuw nsw i64 %polly.indvar499, 640
  %scevgep508 = getelementptr i8, i8* %call, i64 %161
  %min.iters.check1227 = icmp ult i64 %160, 4
  br i1 %min.iters.check1227, label %polly.loop_header502.preheader, label %vector.ph1228

vector.ph1228:                                    ; preds = %polly.loop_header496
  %n.vec1230 = and i64 %160, -4
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %vector.ph1228
  %index1231 = phi i64 [ 0, %vector.ph1228 ], [ %index.next1232, %vector.body1226 ]
  %162 = shl nuw nsw i64 %index1231, 3
  %163 = getelementptr i8, i8* %scevgep508, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  %wide.load1235 = load <4 x double>, <4 x double>* %164, align 8, !alias.scope !81, !noalias !83
  %165 = fmul fast <4 x double> %wide.load1235, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %166 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %165, <4 x double>* %166, align 8, !alias.scope !81, !noalias !83
  %index.next1232 = add i64 %index1231, 4
  %167 = icmp eq i64 %index.next1232, %n.vec1230
  br i1 %167, label %middle.block1224, label %vector.body1226, !llvm.loop !86

middle.block1224:                                 ; preds = %vector.body1226
  %cmp.n1234 = icmp eq i64 %160, %n.vec1230
  br i1 %cmp.n1234, label %polly.loop_exit504, label %polly.loop_header502.preheader

polly.loop_header502.preheader:                   ; preds = %polly.loop_header496, %middle.block1224
  %polly.indvar505.ph = phi i64 [ 0, %polly.loop_header496 ], [ %n.vec1230, %middle.block1224 ]
  br label %polly.loop_header502

polly.loop_exit504:                               ; preds = %polly.loop_header502, %middle.block1224
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next500, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond836.not, label %polly.loop_header512, label %polly.loop_header496

polly.loop_header502:                             ; preds = %polly.loop_header502.preheader, %polly.loop_header502
  %polly.indvar505 = phi i64 [ %polly.indvar_next506, %polly.loop_header502 ], [ %polly.indvar505.ph, %polly.loop_header502.preheader ]
  %168 = shl nuw nsw i64 %polly.indvar505, 3
  %scevgep509 = getelementptr i8, i8* %scevgep508, i64 %168
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_511, 1.200000e+00
  store double %p_mul.i, double* %scevgep509510, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next506 = add nuw nsw i64 %polly.indvar505, 1
  %exitcond835.not = icmp eq i64 %polly.indvar_next506, %polly.indvar499
  br i1 %exitcond835.not, label %polly.loop_exit504, label %polly.loop_header502, !llvm.loop !87

polly.loop_header512:                             ; preds = %polly.loop_exit504, %polly.loop_exit522
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %polly.loop_exit522 ], [ 0, %polly.loop_exit504 ]
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %polly.loop_exit522 ], [ 7, %polly.loop_exit504 ]
  %indvars.iv818 = phi i64 [ %indvars.iv.next819, %polly.loop_exit522 ], [ 0, %polly.loop_exit504 ]
  %polly.indvar515 = phi i64 [ %polly.indvar_next516, %polly.loop_exit522 ], [ 0, %polly.loop_exit504 ]
  %169 = shl nuw nsw i64 %indvars.iv820, 2
  %170 = and i64 %169, 9223372036854775776
  %171 = mul nuw nsw i64 %polly.indvar515, 3
  %172 = add nuw nsw i64 %171, 7
  %pexp.p_div_q518 = lshr i64 %172, 3
  %173 = sub nsw i64 %polly.indvar515, %pexp.p_div_q518
  %polly.loop_guard523 = icmp slt i64 %173, 3
  br i1 %polly.loop_guard523, label %polly.loop_header520.preheader, label %polly.loop_exit522

polly.loop_header520.preheader:                   ; preds = %polly.loop_header512
  %174 = sub nsw i64 %indvars.iv825, %170
  %175 = add i64 %indvars.iv818, %170
  %176 = mul nuw nsw i64 %polly.indvar515, 20
  %177 = mul nsw i64 %polly.indvar515, -20
  br label %polly.loop_header520

polly.loop_exit522:                               ; preds = %polly.loop_exit529, %polly.loop_header512
  %polly.indvar_next516 = add nuw nsw i64 %polly.indvar515, 1
  %indvars.iv.next819 = add nsw i64 %indvars.iv818, -12
  %indvars.iv.next821 = add nuw nsw i64 %indvars.iv820, 3
  %indvars.iv.next826 = add nuw nsw i64 %indvars.iv825, 12
  %exitcond834.not = icmp eq i64 %polly.indvar_next516, 4
  br i1 %exitcond834.not, label %kernel_syr2k.exit, label %polly.loop_header512

polly.loop_header520:                             ; preds = %polly.loop_header520.preheader, %polly.loop_exit529
  %indvars.iv827 = phi i64 [ %174, %polly.loop_header520.preheader ], [ %indvars.iv.next828, %polly.loop_exit529 ]
  %indvars.iv822 = phi i64 [ %175, %polly.loop_header520.preheader ], [ %indvars.iv.next823, %polly.loop_exit529 ]
  %polly.indvar524 = phi i64 [ %173, %polly.loop_header520.preheader ], [ %polly.indvar_next525, %polly.loop_exit529 ]
  %smax824 = call i64 @llvm.smax.i64(i64 %indvars.iv822, i64 0)
  %178 = add i64 %smax824, %indvars.iv827
  %179 = shl nsw i64 %polly.indvar524, 5
  %180 = sub nsw i64 %176, %179
  %181 = icmp sgt i64 %180, 0
  %182 = select i1 %181, i64 %180, i64 0
  %183 = mul nsw i64 %polly.indvar524, -32
  %184 = icmp slt i64 %183, -48
  %185 = select i1 %184, i64 %183, i64 -48
  %186 = add nsw i64 %185, 79
  %polly.loop_guard537.not = icmp sgt i64 %182, %186
  br i1 %polly.loop_guard537.not, label %polly.loop_exit529, label %polly.loop_header527

polly.loop_exit529:                               ; preds = %polly.loop_exit536, %polly.loop_header520
  %polly.indvar_next525 = add nsw i64 %polly.indvar524, 1
  %polly.loop_cond526 = icmp slt i64 %polly.indvar524, 2
  %indvars.iv.next823 = add i64 %indvars.iv822, -32
  %indvars.iv.next828 = add i64 %indvars.iv827, 32
  br i1 %polly.loop_cond526, label %polly.loop_header520, label %polly.loop_exit522

polly.loop_header527:                             ; preds = %polly.loop_header520, %polly.loop_exit536
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_exit536 ], [ 0, %polly.loop_header520 ]
  %187 = shl nuw nsw i64 %polly.indvar530, 3
  %scevgep549 = getelementptr i8, i8* %call1, i64 %187
  %scevgep553 = getelementptr i8, i8* %call2, i64 %187
  br label %polly.loop_header534

polly.loop_exit536:                               ; preds = %polly.loop_exit544
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next531, 60
  br i1 %exitcond833.not, label %polly.loop_exit529, label %polly.loop_header527

polly.loop_header534:                             ; preds = %polly.loop_exit544, %polly.loop_header527
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit544 ], [ %178, %polly.loop_header527 ]
  %polly.indvar538 = phi i64 [ %polly.indvar_next539, %polly.loop_exit544 ], [ %182, %polly.loop_header527 ]
  %smin831 = call i64 @llvm.smin.i64(i64 %indvars.iv829, i64 19)
  %188 = add i64 %polly.indvar538, %179
  %189 = add i64 %188, %177
  %polly.loop_guard545921 = icmp sgt i64 %189, -1
  br i1 %polly.loop_guard545921, label %polly.loop_header542.preheader, label %polly.loop_exit544

polly.loop_header542.preheader:                   ; preds = %polly.loop_header534
  %190 = mul i64 %188, 480
  %scevgep554 = getelementptr i8, i8* %scevgep553, i64 %190
  %scevgep554555 = bitcast i8* %scevgep554 to double*
  %_p_scalar_556 = load double, double* %scevgep554555, align 8, !alias.scope !85, !noalias !88
  %scevgep562 = getelementptr i8, i8* %scevgep549, i64 %190
  %scevgep562563 = bitcast i8* %scevgep562 to double*
  %_p_scalar_564 = load double, double* %scevgep562563, align 8, !alias.scope !84, !noalias !89
  %191 = mul i64 %188, 640
  br label %polly.loop_header542

polly.loop_exit544:                               ; preds = %polly.loop_header542, %polly.loop_header534
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %polly.loop_cond540.not.not = icmp slt i64 %polly.indvar538, %186
  %indvars.iv.next830 = add i64 %indvars.iv829, 1
  br i1 %polly.loop_cond540.not.not, label %polly.loop_header534, label %polly.loop_exit536

polly.loop_header542:                             ; preds = %polly.loop_header542.preheader, %polly.loop_header542
  %polly.indvar546 = phi i64 [ %polly.indvar_next547, %polly.loop_header542 ], [ 0, %polly.loop_header542.preheader ]
  %192 = add nuw nsw i64 %polly.indvar546, %176
  %193 = mul nuw nsw i64 %192, 480
  %scevgep550 = getelementptr i8, i8* %scevgep549, i64 %193
  %scevgep550551 = bitcast i8* %scevgep550 to double*
  %_p_scalar_552 = load double, double* %scevgep550551, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_556, %_p_scalar_552
  %scevgep558 = getelementptr i8, i8* %scevgep553, i64 %193
  %scevgep558559 = bitcast i8* %scevgep558 to double*
  %_p_scalar_560 = load double, double* %scevgep558559, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_564, %_p_scalar_560
  %194 = shl i64 %192, 3
  %195 = add i64 %194, %191
  %scevgep565 = getelementptr i8, i8* %call, i64 %195
  %scevgep565566 = bitcast i8* %scevgep565 to double*
  %_p_scalar_567 = load double, double* %scevgep565566, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_567
  store double %p_add42.i, double* %scevgep565566, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next547 = add nuw nsw i64 %polly.indvar546, 1
  %exitcond832.not = icmp eq i64 %polly.indvar546, %smin831
  br i1 %exitcond832.not, label %polly.loop_exit544, label %polly.loop_header542

polly.loop_header706:                             ; preds = %entry, %polly.loop_exit714
  %polly.indvar709 = phi i64 [ %polly.indvar_next710, %polly.loop_exit714 ], [ 0, %entry ]
  %196 = mul nuw nsw i64 %polly.indvar709, 640
  %197 = trunc i64 %polly.indvar709 to i32
  %broadcast.splatinsert958 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat959 = shufflevector <4 x i32> %broadcast.splatinsert958, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body948

vector.body948:                                   ; preds = %vector.body948, %polly.loop_header706
  %index950 = phi i64 [ 0, %polly.loop_header706 ], [ %index.next951, %vector.body948 ]
  %vec.ind956 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header706 ], [ %vec.ind.next957, %vector.body948 ]
  %198 = mul <4 x i32> %vec.ind956, %broadcast.splat959
  %199 = add <4 x i32> %198, <i32 3, i32 3, i32 3, i32 3>
  %200 = urem <4 x i32> %199, <i32 80, i32 80, i32 80, i32 80>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %203 = shl i64 %index950, 3
  %204 = add nuw nsw i64 %203, %196
  %205 = getelementptr i8, i8* %call, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %202, <4 x double>* %206, align 8, !alias.scope !90, !noalias !92
  %index.next951 = add i64 %index950, 4
  %vec.ind.next957 = add <4 x i32> %vec.ind956, <i32 4, i32 4, i32 4, i32 4>
  %207 = icmp eq i64 %index.next951, 32
  br i1 %207, label %polly.loop_exit714, label %vector.body948, !llvm.loop !95

polly.loop_exit714:                               ; preds = %vector.body948
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %exitcond856.not = icmp eq i64 %polly.indvar_next710, 32
  br i1 %exitcond856.not, label %polly.loop_header706.1, label %polly.loop_header706

polly.loop_header733:                             ; preds = %polly.loop_exit714.2.2, %polly.loop_exit741
  %polly.indvar736 = phi i64 [ %polly.indvar_next737, %polly.loop_exit741 ], [ 0, %polly.loop_exit714.2.2 ]
  %208 = mul nuw nsw i64 %polly.indvar736, 480
  %209 = trunc i64 %polly.indvar736 to i32
  %broadcast.splatinsert1072 = insertelement <4 x i32> poison, i32 %209, i32 0
  %broadcast.splat1073 = shufflevector <4 x i32> %broadcast.splatinsert1072, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %polly.loop_header733
  %index1064 = phi i64 [ 0, %polly.loop_header733 ], [ %index.next1065, %vector.body1062 ]
  %vec.ind1070 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header733 ], [ %vec.ind.next1071, %vector.body1062 ]
  %210 = mul <4 x i32> %vec.ind1070, %broadcast.splat1073
  %211 = add <4 x i32> %210, <i32 2, i32 2, i32 2, i32 2>
  %212 = urem <4 x i32> %211, <i32 60, i32 60, i32 60, i32 60>
  %213 = sitofp <4 x i32> %212 to <4 x double>
  %214 = fmul fast <4 x double> %213, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %215 = shl i64 %index1064, 3
  %216 = add i64 %215, %208
  %217 = getelementptr i8, i8* %call2, i64 %216
  %218 = bitcast i8* %217 to <4 x double>*
  store <4 x double> %214, <4 x double>* %218, align 8, !alias.scope !94, !noalias !96
  %index.next1065 = add i64 %index1064, 4
  %vec.ind.next1071 = add <4 x i32> %vec.ind1070, <i32 4, i32 4, i32 4, i32 4>
  %219 = icmp eq i64 %index.next1065, 32
  br i1 %219, label %polly.loop_exit741, label %vector.body1062, !llvm.loop !97

polly.loop_exit741:                               ; preds = %vector.body1062
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next737, 32
  br i1 %exitcond847.not, label %polly.loop_header733.1, label %polly.loop_header733

polly.loop_header759:                             ; preds = %polly.loop_exit741.1.2, %polly.loop_exit767
  %polly.indvar762 = phi i64 [ %polly.indvar_next763, %polly.loop_exit767 ], [ 0, %polly.loop_exit741.1.2 ]
  %220 = mul nuw nsw i64 %polly.indvar762, 480
  %221 = trunc i64 %polly.indvar762 to i32
  %broadcast.splatinsert1150 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1151 = shufflevector <4 x i32> %broadcast.splatinsert1150, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1140

vector.body1140:                                  ; preds = %vector.body1140, %polly.loop_header759
  %index1142 = phi i64 [ 0, %polly.loop_header759 ], [ %index.next1143, %vector.body1140 ]
  %vec.ind1148 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header759 ], [ %vec.ind.next1149, %vector.body1140 ]
  %222 = mul <4 x i32> %vec.ind1148, %broadcast.splat1151
  %223 = add <4 x i32> %222, <i32 1, i32 1, i32 1, i32 1>
  %224 = urem <4 x i32> %223, <i32 80, i32 80, i32 80, i32 80>
  %225 = sitofp <4 x i32> %224 to <4 x double>
  %226 = fmul fast <4 x double> %225, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %227 = shl i64 %index1142, 3
  %228 = add i64 %227, %220
  %229 = getelementptr i8, i8* %call1, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %226, <4 x double>* %230, align 8, !alias.scope !93, !noalias !98
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1149 = add <4 x i32> %vec.ind1148, <i32 4, i32 4, i32 4, i32 4>
  %231 = icmp eq i64 %index.next1143, 32
  br i1 %231, label %polly.loop_exit767, label %vector.body1140, !llvm.loop !99

polly.loop_exit767:                               ; preds = %vector.body1140
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next763, 32
  br i1 %exitcond841.not, label %polly.loop_header759.1, label %polly.loop_header759

polly.loop_header759.1:                           ; preds = %polly.loop_exit767, %polly.loop_exit767.1
  %polly.indvar762.1 = phi i64 [ %polly.indvar_next763.1, %polly.loop_exit767.1 ], [ 0, %polly.loop_exit767 ]
  %232 = mul nuw nsw i64 %polly.indvar762.1, 480
  %233 = trunc i64 %polly.indvar762.1 to i32
  %broadcast.splatinsert1162 = insertelement <4 x i32> poison, i32 %233, i32 0
  %broadcast.splat1163 = shufflevector <4 x i32> %broadcast.splatinsert1162, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.body1154, %polly.loop_header759.1
  %index1156 = phi i64 [ 0, %polly.loop_header759.1 ], [ %index.next1157, %vector.body1154 ]
  %vec.ind1160 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header759.1 ], [ %vec.ind.next1161, %vector.body1154 ]
  %234 = add nuw nsw <4 x i64> %vec.ind1160, <i64 32, i64 32, i64 32, i64 32>
  %235 = trunc <4 x i64> %234 to <4 x i32>
  %236 = mul <4 x i32> %broadcast.splat1163, %235
  %237 = add <4 x i32> %236, <i32 1, i32 1, i32 1, i32 1>
  %238 = urem <4 x i32> %237, <i32 80, i32 80, i32 80, i32 80>
  %239 = sitofp <4 x i32> %238 to <4 x double>
  %240 = fmul fast <4 x double> %239, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %241 = extractelement <4 x i64> %234, i32 0
  %242 = shl i64 %241, 3
  %243 = add i64 %242, %232
  %244 = getelementptr i8, i8* %call1, i64 %243
  %245 = bitcast i8* %244 to <4 x double>*
  store <4 x double> %240, <4 x double>* %245, align 8, !alias.scope !93, !noalias !98
  %index.next1157 = add i64 %index1156, 4
  %vec.ind.next1161 = add <4 x i64> %vec.ind1160, <i64 4, i64 4, i64 4, i64 4>
  %246 = icmp eq i64 %index.next1157, 28
  br i1 %246, label %polly.loop_exit767.1, label %vector.body1154, !llvm.loop !100

polly.loop_exit767.1:                             ; preds = %vector.body1154
  %polly.indvar_next763.1 = add nuw nsw i64 %polly.indvar762.1, 1
  %exitcond841.1.not = icmp eq i64 %polly.indvar_next763.1, 32
  br i1 %exitcond841.1.not, label %polly.loop_header759.1864, label %polly.loop_header759.1

polly.loop_header759.1864:                        ; preds = %polly.loop_exit767.1, %polly.loop_exit767.1875
  %polly.indvar762.1863 = phi i64 [ %polly.indvar_next763.1873, %polly.loop_exit767.1875 ], [ 0, %polly.loop_exit767.1 ]
  %247 = add nuw nsw i64 %polly.indvar762.1863, 32
  %248 = mul nuw nsw i64 %247, 480
  %249 = trunc i64 %247 to i32
  %broadcast.splatinsert1176 = insertelement <4 x i32> poison, i32 %249, i32 0
  %broadcast.splat1177 = shufflevector <4 x i32> %broadcast.splatinsert1176, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %polly.loop_header759.1864
  %index1168 = phi i64 [ 0, %polly.loop_header759.1864 ], [ %index.next1169, %vector.body1166 ]
  %vec.ind1174 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header759.1864 ], [ %vec.ind.next1175, %vector.body1166 ]
  %250 = mul <4 x i32> %vec.ind1174, %broadcast.splat1177
  %251 = add <4 x i32> %250, <i32 1, i32 1, i32 1, i32 1>
  %252 = urem <4 x i32> %251, <i32 80, i32 80, i32 80, i32 80>
  %253 = sitofp <4 x i32> %252 to <4 x double>
  %254 = fmul fast <4 x double> %253, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %255 = shl i64 %index1168, 3
  %256 = add i64 %255, %248
  %257 = getelementptr i8, i8* %call1, i64 %256
  %258 = bitcast i8* %257 to <4 x double>*
  store <4 x double> %254, <4 x double>* %258, align 8, !alias.scope !93, !noalias !98
  %index.next1169 = add i64 %index1168, 4
  %vec.ind.next1175 = add <4 x i32> %vec.ind1174, <i32 4, i32 4, i32 4, i32 4>
  %259 = icmp eq i64 %index.next1169, 32
  br i1 %259, label %polly.loop_exit767.1875, label %vector.body1166, !llvm.loop !101

polly.loop_exit767.1875:                          ; preds = %vector.body1166
  %polly.indvar_next763.1873 = add nuw nsw i64 %polly.indvar762.1863, 1
  %exitcond841.1874.not = icmp eq i64 %polly.indvar_next763.1873, 32
  br i1 %exitcond841.1874.not, label %polly.loop_header759.1.1, label %polly.loop_header759.1864

polly.loop_header759.1.1:                         ; preds = %polly.loop_exit767.1875, %polly.loop_exit767.1.1
  %polly.indvar762.1.1 = phi i64 [ %polly.indvar_next763.1.1, %polly.loop_exit767.1.1 ], [ 0, %polly.loop_exit767.1875 ]
  %260 = add nuw nsw i64 %polly.indvar762.1.1, 32
  %261 = mul nuw nsw i64 %260, 480
  %262 = trunc i64 %260 to i32
  %broadcast.splatinsert1188 = insertelement <4 x i32> poison, i32 %262, i32 0
  %broadcast.splat1189 = shufflevector <4 x i32> %broadcast.splatinsert1188, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1180

vector.body1180:                                  ; preds = %vector.body1180, %polly.loop_header759.1.1
  %index1182 = phi i64 [ 0, %polly.loop_header759.1.1 ], [ %index.next1183, %vector.body1180 ]
  %vec.ind1186 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header759.1.1 ], [ %vec.ind.next1187, %vector.body1180 ]
  %263 = add nuw nsw <4 x i64> %vec.ind1186, <i64 32, i64 32, i64 32, i64 32>
  %264 = trunc <4 x i64> %263 to <4 x i32>
  %265 = mul <4 x i32> %broadcast.splat1189, %264
  %266 = add <4 x i32> %265, <i32 1, i32 1, i32 1, i32 1>
  %267 = urem <4 x i32> %266, <i32 80, i32 80, i32 80, i32 80>
  %268 = sitofp <4 x i32> %267 to <4 x double>
  %269 = fmul fast <4 x double> %268, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %270 = extractelement <4 x i64> %263, i32 0
  %271 = shl i64 %270, 3
  %272 = add i64 %271, %261
  %273 = getelementptr i8, i8* %call1, i64 %272
  %274 = bitcast i8* %273 to <4 x double>*
  store <4 x double> %269, <4 x double>* %274, align 8, !alias.scope !93, !noalias !98
  %index.next1183 = add i64 %index1182, 4
  %vec.ind.next1187 = add <4 x i64> %vec.ind1186, <i64 4, i64 4, i64 4, i64 4>
  %275 = icmp eq i64 %index.next1183, 28
  br i1 %275, label %polly.loop_exit767.1.1, label %vector.body1180, !llvm.loop !102

polly.loop_exit767.1.1:                           ; preds = %vector.body1180
  %polly.indvar_next763.1.1 = add nuw nsw i64 %polly.indvar762.1.1, 1
  %exitcond841.1.1.not = icmp eq i64 %polly.indvar_next763.1.1, 32
  br i1 %exitcond841.1.1.not, label %polly.loop_header759.2, label %polly.loop_header759.1.1

polly.loop_header759.2:                           ; preds = %polly.loop_exit767.1.1, %polly.loop_exit767.2
  %polly.indvar762.2 = phi i64 [ %polly.indvar_next763.2, %polly.loop_exit767.2 ], [ 0, %polly.loop_exit767.1.1 ]
  %276 = add nuw nsw i64 %polly.indvar762.2, 64
  %277 = mul nuw nsw i64 %276, 480
  %278 = trunc i64 %276 to i32
  %broadcast.splatinsert1202 = insertelement <4 x i32> poison, i32 %278, i32 0
  %broadcast.splat1203 = shufflevector <4 x i32> %broadcast.splatinsert1202, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.body1192, %polly.loop_header759.2
  %index1194 = phi i64 [ 0, %polly.loop_header759.2 ], [ %index.next1195, %vector.body1192 ]
  %vec.ind1200 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header759.2 ], [ %vec.ind.next1201, %vector.body1192 ]
  %279 = mul <4 x i32> %vec.ind1200, %broadcast.splat1203
  %280 = add <4 x i32> %279, <i32 1, i32 1, i32 1, i32 1>
  %281 = urem <4 x i32> %280, <i32 80, i32 80, i32 80, i32 80>
  %282 = sitofp <4 x i32> %281 to <4 x double>
  %283 = fmul fast <4 x double> %282, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %284 = shl i64 %index1194, 3
  %285 = add i64 %284, %277
  %286 = getelementptr i8, i8* %call1, i64 %285
  %287 = bitcast i8* %286 to <4 x double>*
  store <4 x double> %283, <4 x double>* %287, align 8, !alias.scope !93, !noalias !98
  %index.next1195 = add i64 %index1194, 4
  %vec.ind.next1201 = add <4 x i32> %vec.ind1200, <i32 4, i32 4, i32 4, i32 4>
  %288 = icmp eq i64 %index.next1195, 32
  br i1 %288, label %polly.loop_exit767.2, label %vector.body1192, !llvm.loop !103

polly.loop_exit767.2:                             ; preds = %vector.body1192
  %polly.indvar_next763.2 = add nuw nsw i64 %polly.indvar762.2, 1
  %exitcond841.2.not = icmp eq i64 %polly.indvar_next763.2, 16
  br i1 %exitcond841.2.not, label %polly.loop_header759.1.2, label %polly.loop_header759.2

polly.loop_header759.1.2:                         ; preds = %polly.loop_exit767.2, %polly.loop_exit767.1.2
  %polly.indvar762.1.2 = phi i64 [ %polly.indvar_next763.1.2, %polly.loop_exit767.1.2 ], [ 0, %polly.loop_exit767.2 ]
  %289 = add nuw nsw i64 %polly.indvar762.1.2, 64
  %290 = mul nuw nsw i64 %289, 480
  %291 = trunc i64 %289 to i32
  %broadcast.splatinsert1214 = insertelement <4 x i32> poison, i32 %291, i32 0
  %broadcast.splat1215 = shufflevector <4 x i32> %broadcast.splatinsert1214, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %polly.loop_header759.1.2
  %index1208 = phi i64 [ 0, %polly.loop_header759.1.2 ], [ %index.next1209, %vector.body1206 ]
  %vec.ind1212 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header759.1.2 ], [ %vec.ind.next1213, %vector.body1206 ]
  %292 = add nuw nsw <4 x i64> %vec.ind1212, <i64 32, i64 32, i64 32, i64 32>
  %293 = trunc <4 x i64> %292 to <4 x i32>
  %294 = mul <4 x i32> %broadcast.splat1215, %293
  %295 = add <4 x i32> %294, <i32 1, i32 1, i32 1, i32 1>
  %296 = urem <4 x i32> %295, <i32 80, i32 80, i32 80, i32 80>
  %297 = sitofp <4 x i32> %296 to <4 x double>
  %298 = fmul fast <4 x double> %297, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %299 = extractelement <4 x i64> %292, i32 0
  %300 = shl i64 %299, 3
  %301 = add i64 %300, %290
  %302 = getelementptr i8, i8* %call1, i64 %301
  %303 = bitcast i8* %302 to <4 x double>*
  store <4 x double> %298, <4 x double>* %303, align 8, !alias.scope !93, !noalias !98
  %index.next1209 = add i64 %index1208, 4
  %vec.ind.next1213 = add <4 x i64> %vec.ind1212, <i64 4, i64 4, i64 4, i64 4>
  %304 = icmp eq i64 %index.next1209, 28
  br i1 %304, label %polly.loop_exit767.1.2, label %vector.body1206, !llvm.loop !104

polly.loop_exit767.1.2:                           ; preds = %vector.body1206
  %polly.indvar_next763.1.2 = add nuw nsw i64 %polly.indvar762.1.2, 1
  %exitcond841.1.2.not = icmp eq i64 %polly.indvar_next763.1.2, 16
  br i1 %exitcond841.1.2.not, label %init_array.exit, label %polly.loop_header759.1.2

polly.loop_header733.1:                           ; preds = %polly.loop_exit741, %polly.loop_exit741.1
  %polly.indvar736.1 = phi i64 [ %polly.indvar_next737.1, %polly.loop_exit741.1 ], [ 0, %polly.loop_exit741 ]
  %305 = mul nuw nsw i64 %polly.indvar736.1, 480
  %306 = trunc i64 %polly.indvar736.1 to i32
  %broadcast.splatinsert1084 = insertelement <4 x i32> poison, i32 %306, i32 0
  %broadcast.splat1085 = shufflevector <4 x i32> %broadcast.splatinsert1084, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1076

vector.body1076:                                  ; preds = %vector.body1076, %polly.loop_header733.1
  %index1078 = phi i64 [ 0, %polly.loop_header733.1 ], [ %index.next1079, %vector.body1076 ]
  %vec.ind1082 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header733.1 ], [ %vec.ind.next1083, %vector.body1076 ]
  %307 = add nuw nsw <4 x i64> %vec.ind1082, <i64 32, i64 32, i64 32, i64 32>
  %308 = trunc <4 x i64> %307 to <4 x i32>
  %309 = mul <4 x i32> %broadcast.splat1085, %308
  %310 = add <4 x i32> %309, <i32 2, i32 2, i32 2, i32 2>
  %311 = urem <4 x i32> %310, <i32 60, i32 60, i32 60, i32 60>
  %312 = sitofp <4 x i32> %311 to <4 x double>
  %313 = fmul fast <4 x double> %312, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %314 = extractelement <4 x i64> %307, i32 0
  %315 = shl i64 %314, 3
  %316 = add i64 %315, %305
  %317 = getelementptr i8, i8* %call2, i64 %316
  %318 = bitcast i8* %317 to <4 x double>*
  store <4 x double> %313, <4 x double>* %318, align 8, !alias.scope !94, !noalias !96
  %index.next1079 = add i64 %index1078, 4
  %vec.ind.next1083 = add <4 x i64> %vec.ind1082, <i64 4, i64 4, i64 4, i64 4>
  %319 = icmp eq i64 %index.next1079, 28
  br i1 %319, label %polly.loop_exit741.1, label %vector.body1076, !llvm.loop !105

polly.loop_exit741.1:                             ; preds = %vector.body1076
  %polly.indvar_next737.1 = add nuw nsw i64 %polly.indvar736.1, 1
  %exitcond847.1.not = icmp eq i64 %polly.indvar_next737.1, 32
  br i1 %exitcond847.1.not, label %polly.loop_header733.1878, label %polly.loop_header733.1

polly.loop_header733.1878:                        ; preds = %polly.loop_exit741.1, %polly.loop_exit741.1889
  %polly.indvar736.1877 = phi i64 [ %polly.indvar_next737.1887, %polly.loop_exit741.1889 ], [ 0, %polly.loop_exit741.1 ]
  %320 = add nuw nsw i64 %polly.indvar736.1877, 32
  %321 = mul nuw nsw i64 %320, 480
  %322 = trunc i64 %320 to i32
  %broadcast.splatinsert1098 = insertelement <4 x i32> poison, i32 %322, i32 0
  %broadcast.splat1099 = shufflevector <4 x i32> %broadcast.splatinsert1098, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1088

vector.body1088:                                  ; preds = %vector.body1088, %polly.loop_header733.1878
  %index1090 = phi i64 [ 0, %polly.loop_header733.1878 ], [ %index.next1091, %vector.body1088 ]
  %vec.ind1096 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header733.1878 ], [ %vec.ind.next1097, %vector.body1088 ]
  %323 = mul <4 x i32> %vec.ind1096, %broadcast.splat1099
  %324 = add <4 x i32> %323, <i32 2, i32 2, i32 2, i32 2>
  %325 = urem <4 x i32> %324, <i32 60, i32 60, i32 60, i32 60>
  %326 = sitofp <4 x i32> %325 to <4 x double>
  %327 = fmul fast <4 x double> %326, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %328 = shl i64 %index1090, 3
  %329 = add i64 %328, %321
  %330 = getelementptr i8, i8* %call2, i64 %329
  %331 = bitcast i8* %330 to <4 x double>*
  store <4 x double> %327, <4 x double>* %331, align 8, !alias.scope !94, !noalias !96
  %index.next1091 = add i64 %index1090, 4
  %vec.ind.next1097 = add <4 x i32> %vec.ind1096, <i32 4, i32 4, i32 4, i32 4>
  %332 = icmp eq i64 %index.next1091, 32
  br i1 %332, label %polly.loop_exit741.1889, label %vector.body1088, !llvm.loop !106

polly.loop_exit741.1889:                          ; preds = %vector.body1088
  %polly.indvar_next737.1887 = add nuw nsw i64 %polly.indvar736.1877, 1
  %exitcond847.1888.not = icmp eq i64 %polly.indvar_next737.1887, 32
  br i1 %exitcond847.1888.not, label %polly.loop_header733.1.1, label %polly.loop_header733.1878

polly.loop_header733.1.1:                         ; preds = %polly.loop_exit741.1889, %polly.loop_exit741.1.1
  %polly.indvar736.1.1 = phi i64 [ %polly.indvar_next737.1.1, %polly.loop_exit741.1.1 ], [ 0, %polly.loop_exit741.1889 ]
  %333 = add nuw nsw i64 %polly.indvar736.1.1, 32
  %334 = mul nuw nsw i64 %333, 480
  %335 = trunc i64 %333 to i32
  %broadcast.splatinsert1110 = insertelement <4 x i32> poison, i32 %335, i32 0
  %broadcast.splat1111 = shufflevector <4 x i32> %broadcast.splatinsert1110, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1102

vector.body1102:                                  ; preds = %vector.body1102, %polly.loop_header733.1.1
  %index1104 = phi i64 [ 0, %polly.loop_header733.1.1 ], [ %index.next1105, %vector.body1102 ]
  %vec.ind1108 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header733.1.1 ], [ %vec.ind.next1109, %vector.body1102 ]
  %336 = add nuw nsw <4 x i64> %vec.ind1108, <i64 32, i64 32, i64 32, i64 32>
  %337 = trunc <4 x i64> %336 to <4 x i32>
  %338 = mul <4 x i32> %broadcast.splat1111, %337
  %339 = add <4 x i32> %338, <i32 2, i32 2, i32 2, i32 2>
  %340 = urem <4 x i32> %339, <i32 60, i32 60, i32 60, i32 60>
  %341 = sitofp <4 x i32> %340 to <4 x double>
  %342 = fmul fast <4 x double> %341, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %343 = extractelement <4 x i64> %336, i32 0
  %344 = shl i64 %343, 3
  %345 = add i64 %344, %334
  %346 = getelementptr i8, i8* %call2, i64 %345
  %347 = bitcast i8* %346 to <4 x double>*
  store <4 x double> %342, <4 x double>* %347, align 8, !alias.scope !94, !noalias !96
  %index.next1105 = add i64 %index1104, 4
  %vec.ind.next1109 = add <4 x i64> %vec.ind1108, <i64 4, i64 4, i64 4, i64 4>
  %348 = icmp eq i64 %index.next1105, 28
  br i1 %348, label %polly.loop_exit741.1.1, label %vector.body1102, !llvm.loop !107

polly.loop_exit741.1.1:                           ; preds = %vector.body1102
  %polly.indvar_next737.1.1 = add nuw nsw i64 %polly.indvar736.1.1, 1
  %exitcond847.1.1.not = icmp eq i64 %polly.indvar_next737.1.1, 32
  br i1 %exitcond847.1.1.not, label %polly.loop_header733.2, label %polly.loop_header733.1.1

polly.loop_header733.2:                           ; preds = %polly.loop_exit741.1.1, %polly.loop_exit741.2
  %polly.indvar736.2 = phi i64 [ %polly.indvar_next737.2, %polly.loop_exit741.2 ], [ 0, %polly.loop_exit741.1.1 ]
  %349 = add nuw nsw i64 %polly.indvar736.2, 64
  %350 = mul nuw nsw i64 %349, 480
  %351 = trunc i64 %349 to i32
  %broadcast.splatinsert1124 = insertelement <4 x i32> poison, i32 %351, i32 0
  %broadcast.splat1125 = shufflevector <4 x i32> %broadcast.splatinsert1124, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %polly.loop_header733.2
  %index1116 = phi i64 [ 0, %polly.loop_header733.2 ], [ %index.next1117, %vector.body1114 ]
  %vec.ind1122 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header733.2 ], [ %vec.ind.next1123, %vector.body1114 ]
  %352 = mul <4 x i32> %vec.ind1122, %broadcast.splat1125
  %353 = add <4 x i32> %352, <i32 2, i32 2, i32 2, i32 2>
  %354 = urem <4 x i32> %353, <i32 60, i32 60, i32 60, i32 60>
  %355 = sitofp <4 x i32> %354 to <4 x double>
  %356 = fmul fast <4 x double> %355, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %357 = shl i64 %index1116, 3
  %358 = add i64 %357, %350
  %359 = getelementptr i8, i8* %call2, i64 %358
  %360 = bitcast i8* %359 to <4 x double>*
  store <4 x double> %356, <4 x double>* %360, align 8, !alias.scope !94, !noalias !96
  %index.next1117 = add i64 %index1116, 4
  %vec.ind.next1123 = add <4 x i32> %vec.ind1122, <i32 4, i32 4, i32 4, i32 4>
  %361 = icmp eq i64 %index.next1117, 32
  br i1 %361, label %polly.loop_exit741.2, label %vector.body1114, !llvm.loop !108

polly.loop_exit741.2:                             ; preds = %vector.body1114
  %polly.indvar_next737.2 = add nuw nsw i64 %polly.indvar736.2, 1
  %exitcond847.2.not = icmp eq i64 %polly.indvar_next737.2, 16
  br i1 %exitcond847.2.not, label %polly.loop_header733.1.2, label %polly.loop_header733.2

polly.loop_header733.1.2:                         ; preds = %polly.loop_exit741.2, %polly.loop_exit741.1.2
  %polly.indvar736.1.2 = phi i64 [ %polly.indvar_next737.1.2, %polly.loop_exit741.1.2 ], [ 0, %polly.loop_exit741.2 ]
  %362 = add nuw nsw i64 %polly.indvar736.1.2, 64
  %363 = mul nuw nsw i64 %362, 480
  %364 = trunc i64 %362 to i32
  %broadcast.splatinsert1136 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat1137 = shufflevector <4 x i32> %broadcast.splatinsert1136, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1128

vector.body1128:                                  ; preds = %vector.body1128, %polly.loop_header733.1.2
  %index1130 = phi i64 [ 0, %polly.loop_header733.1.2 ], [ %index.next1131, %vector.body1128 ]
  %vec.ind1134 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header733.1.2 ], [ %vec.ind.next1135, %vector.body1128 ]
  %365 = add nuw nsw <4 x i64> %vec.ind1134, <i64 32, i64 32, i64 32, i64 32>
  %366 = trunc <4 x i64> %365 to <4 x i32>
  %367 = mul <4 x i32> %broadcast.splat1137, %366
  %368 = add <4 x i32> %367, <i32 2, i32 2, i32 2, i32 2>
  %369 = urem <4 x i32> %368, <i32 60, i32 60, i32 60, i32 60>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %372 = extractelement <4 x i64> %365, i32 0
  %373 = shl i64 %372, 3
  %374 = add i64 %373, %363
  %375 = getelementptr i8, i8* %call2, i64 %374
  %376 = bitcast i8* %375 to <4 x double>*
  store <4 x double> %371, <4 x double>* %376, align 8, !alias.scope !94, !noalias !96
  %index.next1131 = add i64 %index1130, 4
  %vec.ind.next1135 = add <4 x i64> %vec.ind1134, <i64 4, i64 4, i64 4, i64 4>
  %377 = icmp eq i64 %index.next1131, 28
  br i1 %377, label %polly.loop_exit741.1.2, label %vector.body1128, !llvm.loop !109

polly.loop_exit741.1.2:                           ; preds = %vector.body1128
  %polly.indvar_next737.1.2 = add nuw nsw i64 %polly.indvar736.1.2, 1
  %exitcond847.1.2.not = icmp eq i64 %polly.indvar_next737.1.2, 16
  br i1 %exitcond847.1.2.not, label %polly.loop_header759, label %polly.loop_header733.1.2

polly.loop_header706.1:                           ; preds = %polly.loop_exit714, %polly.loop_exit714.1
  %polly.indvar709.1 = phi i64 [ %polly.indvar_next710.1, %polly.loop_exit714.1 ], [ 0, %polly.loop_exit714 ]
  %378 = mul nuw nsw i64 %polly.indvar709.1, 640
  %379 = trunc i64 %polly.indvar709.1 to i32
  %broadcast.splatinsert970 = insertelement <4 x i32> poison, i32 %379, i32 0
  %broadcast.splat971 = shufflevector <4 x i32> %broadcast.splatinsert970, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body962

vector.body962:                                   ; preds = %vector.body962, %polly.loop_header706.1
  %index964 = phi i64 [ 0, %polly.loop_header706.1 ], [ %index.next965, %vector.body962 ]
  %vec.ind968 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header706.1 ], [ %vec.ind.next969, %vector.body962 ]
  %380 = add nuw nsw <4 x i64> %vec.ind968, <i64 32, i64 32, i64 32, i64 32>
  %381 = trunc <4 x i64> %380 to <4 x i32>
  %382 = mul <4 x i32> %broadcast.splat971, %381
  %383 = add <4 x i32> %382, <i32 3, i32 3, i32 3, i32 3>
  %384 = urem <4 x i32> %383, <i32 80, i32 80, i32 80, i32 80>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %387 = extractelement <4 x i64> %380, i32 0
  %388 = shl i64 %387, 3
  %389 = add nuw nsw i64 %388, %378
  %390 = getelementptr i8, i8* %call, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %386, <4 x double>* %391, align 8, !alias.scope !90, !noalias !92
  %index.next965 = add i64 %index964, 4
  %vec.ind.next969 = add <4 x i64> %vec.ind968, <i64 4, i64 4, i64 4, i64 4>
  %392 = icmp eq i64 %index.next965, 32
  br i1 %392, label %polly.loop_exit714.1, label %vector.body962, !llvm.loop !110

polly.loop_exit714.1:                             ; preds = %vector.body962
  %polly.indvar_next710.1 = add nuw nsw i64 %polly.indvar709.1, 1
  %exitcond856.1.not = icmp eq i64 %polly.indvar_next710.1, 32
  br i1 %exitcond856.1.not, label %polly.loop_header706.2, label %polly.loop_header706.1

polly.loop_header706.2:                           ; preds = %polly.loop_exit714.1, %polly.loop_exit714.2
  %polly.indvar709.2 = phi i64 [ %polly.indvar_next710.2, %polly.loop_exit714.2 ], [ 0, %polly.loop_exit714.1 ]
  %393 = mul nuw nsw i64 %polly.indvar709.2, 640
  %394 = trunc i64 %polly.indvar709.2 to i32
  %broadcast.splatinsert982 = insertelement <4 x i32> poison, i32 %394, i32 0
  %broadcast.splat983 = shufflevector <4 x i32> %broadcast.splatinsert982, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body974

vector.body974:                                   ; preds = %vector.body974, %polly.loop_header706.2
  %index976 = phi i64 [ 0, %polly.loop_header706.2 ], [ %index.next977, %vector.body974 ]
  %vec.ind980 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header706.2 ], [ %vec.ind.next981, %vector.body974 ]
  %395 = add nuw nsw <4 x i64> %vec.ind980, <i64 64, i64 64, i64 64, i64 64>
  %396 = trunc <4 x i64> %395 to <4 x i32>
  %397 = mul <4 x i32> %broadcast.splat983, %396
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
  %index.next977 = add i64 %index976, 4
  %vec.ind.next981 = add <4 x i64> %vec.ind980, <i64 4, i64 4, i64 4, i64 4>
  %407 = icmp eq i64 %index.next977, 16
  br i1 %407, label %polly.loop_exit714.2, label %vector.body974, !llvm.loop !111

polly.loop_exit714.2:                             ; preds = %vector.body974
  %polly.indvar_next710.2 = add nuw nsw i64 %polly.indvar709.2, 1
  %exitcond856.2.not = icmp eq i64 %polly.indvar_next710.2, 32
  br i1 %exitcond856.2.not, label %polly.loop_header706.1892, label %polly.loop_header706.2

polly.loop_header706.1892:                        ; preds = %polly.loop_exit714.2, %polly.loop_exit714.1903
  %polly.indvar709.1891 = phi i64 [ %polly.indvar_next710.1901, %polly.loop_exit714.1903 ], [ 0, %polly.loop_exit714.2 ]
  %408 = add nuw nsw i64 %polly.indvar709.1891, 32
  %409 = mul nuw nsw i64 %408, 640
  %410 = trunc i64 %408 to i32
  %broadcast.splatinsert996 = insertelement <4 x i32> poison, i32 %410, i32 0
  %broadcast.splat997 = shufflevector <4 x i32> %broadcast.splatinsert996, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %polly.loop_header706.1892
  %index988 = phi i64 [ 0, %polly.loop_header706.1892 ], [ %index.next989, %vector.body986 ]
  %vec.ind994 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header706.1892 ], [ %vec.ind.next995, %vector.body986 ]
  %411 = mul <4 x i32> %vec.ind994, %broadcast.splat997
  %412 = add <4 x i32> %411, <i32 3, i32 3, i32 3, i32 3>
  %413 = urem <4 x i32> %412, <i32 80, i32 80, i32 80, i32 80>
  %414 = sitofp <4 x i32> %413 to <4 x double>
  %415 = fmul fast <4 x double> %414, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %416 = shl i64 %index988, 3
  %417 = add nuw nsw i64 %416, %409
  %418 = getelementptr i8, i8* %call, i64 %417
  %419 = bitcast i8* %418 to <4 x double>*
  store <4 x double> %415, <4 x double>* %419, align 8, !alias.scope !90, !noalias !92
  %index.next989 = add i64 %index988, 4
  %vec.ind.next995 = add <4 x i32> %vec.ind994, <i32 4, i32 4, i32 4, i32 4>
  %420 = icmp eq i64 %index.next989, 32
  br i1 %420, label %polly.loop_exit714.1903, label %vector.body986, !llvm.loop !112

polly.loop_exit714.1903:                          ; preds = %vector.body986
  %polly.indvar_next710.1901 = add nuw nsw i64 %polly.indvar709.1891, 1
  %exitcond856.1902.not = icmp eq i64 %polly.indvar_next710.1901, 32
  br i1 %exitcond856.1902.not, label %polly.loop_header706.1.1, label %polly.loop_header706.1892

polly.loop_header706.1.1:                         ; preds = %polly.loop_exit714.1903, %polly.loop_exit714.1.1
  %polly.indvar709.1.1 = phi i64 [ %polly.indvar_next710.1.1, %polly.loop_exit714.1.1 ], [ 0, %polly.loop_exit714.1903 ]
  %421 = add nuw nsw i64 %polly.indvar709.1.1, 32
  %422 = mul nuw nsw i64 %421, 640
  %423 = trunc i64 %421 to i32
  %broadcast.splatinsert1008 = insertelement <4 x i32> poison, i32 %423, i32 0
  %broadcast.splat1009 = shufflevector <4 x i32> %broadcast.splatinsert1008, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1000

vector.body1000:                                  ; preds = %vector.body1000, %polly.loop_header706.1.1
  %index1002 = phi i64 [ 0, %polly.loop_header706.1.1 ], [ %index.next1003, %vector.body1000 ]
  %vec.ind1006 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header706.1.1 ], [ %vec.ind.next1007, %vector.body1000 ]
  %424 = add nuw nsw <4 x i64> %vec.ind1006, <i64 32, i64 32, i64 32, i64 32>
  %425 = trunc <4 x i64> %424 to <4 x i32>
  %426 = mul <4 x i32> %broadcast.splat1009, %425
  %427 = add <4 x i32> %426, <i32 3, i32 3, i32 3, i32 3>
  %428 = urem <4 x i32> %427, <i32 80, i32 80, i32 80, i32 80>
  %429 = sitofp <4 x i32> %428 to <4 x double>
  %430 = fmul fast <4 x double> %429, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %431 = extractelement <4 x i64> %424, i32 0
  %432 = shl i64 %431, 3
  %433 = add nuw nsw i64 %432, %422
  %434 = getelementptr i8, i8* %call, i64 %433
  %435 = bitcast i8* %434 to <4 x double>*
  store <4 x double> %430, <4 x double>* %435, align 8, !alias.scope !90, !noalias !92
  %index.next1003 = add i64 %index1002, 4
  %vec.ind.next1007 = add <4 x i64> %vec.ind1006, <i64 4, i64 4, i64 4, i64 4>
  %436 = icmp eq i64 %index.next1003, 32
  br i1 %436, label %polly.loop_exit714.1.1, label %vector.body1000, !llvm.loop !113

polly.loop_exit714.1.1:                           ; preds = %vector.body1000
  %polly.indvar_next710.1.1 = add nuw nsw i64 %polly.indvar709.1.1, 1
  %exitcond856.1.1.not = icmp eq i64 %polly.indvar_next710.1.1, 32
  br i1 %exitcond856.1.1.not, label %polly.loop_header706.2.1, label %polly.loop_header706.1.1

polly.loop_header706.2.1:                         ; preds = %polly.loop_exit714.1.1, %polly.loop_exit714.2.1
  %polly.indvar709.2.1 = phi i64 [ %polly.indvar_next710.2.1, %polly.loop_exit714.2.1 ], [ 0, %polly.loop_exit714.1.1 ]
  %437 = add nuw nsw i64 %polly.indvar709.2.1, 32
  %438 = mul nuw nsw i64 %437, 640
  %439 = trunc i64 %437 to i32
  %broadcast.splatinsert1020 = insertelement <4 x i32> poison, i32 %439, i32 0
  %broadcast.splat1021 = shufflevector <4 x i32> %broadcast.splatinsert1020, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %polly.loop_header706.2.1
  %index1014 = phi i64 [ 0, %polly.loop_header706.2.1 ], [ %index.next1015, %vector.body1012 ]
  %vec.ind1018 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header706.2.1 ], [ %vec.ind.next1019, %vector.body1012 ]
  %440 = add nuw nsw <4 x i64> %vec.ind1018, <i64 64, i64 64, i64 64, i64 64>
  %441 = trunc <4 x i64> %440 to <4 x i32>
  %442 = mul <4 x i32> %broadcast.splat1021, %441
  %443 = add <4 x i32> %442, <i32 3, i32 3, i32 3, i32 3>
  %444 = urem <4 x i32> %443, <i32 80, i32 80, i32 80, i32 80>
  %445 = sitofp <4 x i32> %444 to <4 x double>
  %446 = fmul fast <4 x double> %445, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %447 = extractelement <4 x i64> %440, i32 0
  %448 = shl i64 %447, 3
  %449 = add nuw nsw i64 %448, %438
  %450 = getelementptr i8, i8* %call, i64 %449
  %451 = bitcast i8* %450 to <4 x double>*
  store <4 x double> %446, <4 x double>* %451, align 8, !alias.scope !90, !noalias !92
  %index.next1015 = add i64 %index1014, 4
  %vec.ind.next1019 = add <4 x i64> %vec.ind1018, <i64 4, i64 4, i64 4, i64 4>
  %452 = icmp eq i64 %index.next1015, 16
  br i1 %452, label %polly.loop_exit714.2.1, label %vector.body1012, !llvm.loop !114

polly.loop_exit714.2.1:                           ; preds = %vector.body1012
  %polly.indvar_next710.2.1 = add nuw nsw i64 %polly.indvar709.2.1, 1
  %exitcond856.2.1.not = icmp eq i64 %polly.indvar_next710.2.1, 32
  br i1 %exitcond856.2.1.not, label %polly.loop_header706.2906, label %polly.loop_header706.2.1

polly.loop_header706.2906:                        ; preds = %polly.loop_exit714.2.1, %polly.loop_exit714.2917
  %polly.indvar709.2905 = phi i64 [ %polly.indvar_next710.2915, %polly.loop_exit714.2917 ], [ 0, %polly.loop_exit714.2.1 ]
  %453 = add nuw nsw i64 %polly.indvar709.2905, 64
  %454 = mul nuw nsw i64 %453, 640
  %455 = trunc i64 %453 to i32
  %broadcast.splatinsert1034 = insertelement <4 x i32> poison, i32 %455, i32 0
  %broadcast.splat1035 = shufflevector <4 x i32> %broadcast.splatinsert1034, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1024

vector.body1024:                                  ; preds = %vector.body1024, %polly.loop_header706.2906
  %index1026 = phi i64 [ 0, %polly.loop_header706.2906 ], [ %index.next1027, %vector.body1024 ]
  %vec.ind1032 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header706.2906 ], [ %vec.ind.next1033, %vector.body1024 ]
  %456 = mul <4 x i32> %vec.ind1032, %broadcast.splat1035
  %457 = add <4 x i32> %456, <i32 3, i32 3, i32 3, i32 3>
  %458 = urem <4 x i32> %457, <i32 80, i32 80, i32 80, i32 80>
  %459 = sitofp <4 x i32> %458 to <4 x double>
  %460 = fmul fast <4 x double> %459, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %461 = shl i64 %index1026, 3
  %462 = add nuw nsw i64 %461, %454
  %463 = getelementptr i8, i8* %call, i64 %462
  %464 = bitcast i8* %463 to <4 x double>*
  store <4 x double> %460, <4 x double>* %464, align 8, !alias.scope !90, !noalias !92
  %index.next1027 = add i64 %index1026, 4
  %vec.ind.next1033 = add <4 x i32> %vec.ind1032, <i32 4, i32 4, i32 4, i32 4>
  %465 = icmp eq i64 %index.next1027, 32
  br i1 %465, label %polly.loop_exit714.2917, label %vector.body1024, !llvm.loop !115

polly.loop_exit714.2917:                          ; preds = %vector.body1024
  %polly.indvar_next710.2915 = add nuw nsw i64 %polly.indvar709.2905, 1
  %exitcond856.2916.not = icmp eq i64 %polly.indvar_next710.2915, 16
  br i1 %exitcond856.2916.not, label %polly.loop_header706.1.2, label %polly.loop_header706.2906

polly.loop_header706.1.2:                         ; preds = %polly.loop_exit714.2917, %polly.loop_exit714.1.2
  %polly.indvar709.1.2 = phi i64 [ %polly.indvar_next710.1.2, %polly.loop_exit714.1.2 ], [ 0, %polly.loop_exit714.2917 ]
  %466 = add nuw nsw i64 %polly.indvar709.1.2, 64
  %467 = mul nuw nsw i64 %466, 640
  %468 = trunc i64 %466 to i32
  %broadcast.splatinsert1046 = insertelement <4 x i32> poison, i32 %468, i32 0
  %broadcast.splat1047 = shufflevector <4 x i32> %broadcast.splatinsert1046, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.body1038, %polly.loop_header706.1.2
  %index1040 = phi i64 [ 0, %polly.loop_header706.1.2 ], [ %index.next1041, %vector.body1038 ]
  %vec.ind1044 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header706.1.2 ], [ %vec.ind.next1045, %vector.body1038 ]
  %469 = add nuw nsw <4 x i64> %vec.ind1044, <i64 32, i64 32, i64 32, i64 32>
  %470 = trunc <4 x i64> %469 to <4 x i32>
  %471 = mul <4 x i32> %broadcast.splat1047, %470
  %472 = add <4 x i32> %471, <i32 3, i32 3, i32 3, i32 3>
  %473 = urem <4 x i32> %472, <i32 80, i32 80, i32 80, i32 80>
  %474 = sitofp <4 x i32> %473 to <4 x double>
  %475 = fmul fast <4 x double> %474, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %476 = extractelement <4 x i64> %469, i32 0
  %477 = shl i64 %476, 3
  %478 = add nuw nsw i64 %477, %467
  %479 = getelementptr i8, i8* %call, i64 %478
  %480 = bitcast i8* %479 to <4 x double>*
  store <4 x double> %475, <4 x double>* %480, align 8, !alias.scope !90, !noalias !92
  %index.next1041 = add i64 %index1040, 4
  %vec.ind.next1045 = add <4 x i64> %vec.ind1044, <i64 4, i64 4, i64 4, i64 4>
  %481 = icmp eq i64 %index.next1041, 32
  br i1 %481, label %polly.loop_exit714.1.2, label %vector.body1038, !llvm.loop !116

polly.loop_exit714.1.2:                           ; preds = %vector.body1038
  %polly.indvar_next710.1.2 = add nuw nsw i64 %polly.indvar709.1.2, 1
  %exitcond856.1.2.not = icmp eq i64 %polly.indvar_next710.1.2, 16
  br i1 %exitcond856.1.2.not, label %polly.loop_header706.2.2, label %polly.loop_header706.1.2

polly.loop_header706.2.2:                         ; preds = %polly.loop_exit714.1.2, %polly.loop_exit714.2.2
  %polly.indvar709.2.2 = phi i64 [ %polly.indvar_next710.2.2, %polly.loop_exit714.2.2 ], [ 0, %polly.loop_exit714.1.2 ]
  %482 = add nuw nsw i64 %polly.indvar709.2.2, 64
  %483 = mul nuw nsw i64 %482, 640
  %484 = trunc i64 %482 to i32
  %broadcast.splatinsert1058 = insertelement <4 x i32> poison, i32 %484, i32 0
  %broadcast.splat1059 = shufflevector <4 x i32> %broadcast.splatinsert1058, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %polly.loop_header706.2.2
  %index1052 = phi i64 [ 0, %polly.loop_header706.2.2 ], [ %index.next1053, %vector.body1050 ]
  %vec.ind1056 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header706.2.2 ], [ %vec.ind.next1057, %vector.body1050 ]
  %485 = add nuw nsw <4 x i64> %vec.ind1056, <i64 64, i64 64, i64 64, i64 64>
  %486 = trunc <4 x i64> %485 to <4 x i32>
  %487 = mul <4 x i32> %broadcast.splat1059, %486
  %488 = add <4 x i32> %487, <i32 3, i32 3, i32 3, i32 3>
  %489 = urem <4 x i32> %488, <i32 80, i32 80, i32 80, i32 80>
  %490 = sitofp <4 x i32> %489 to <4 x double>
  %491 = fmul fast <4 x double> %490, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %492 = extractelement <4 x i64> %485, i32 0
  %493 = shl i64 %492, 3
  %494 = add nuw nsw i64 %493, %483
  %495 = getelementptr i8, i8* %call, i64 %494
  %496 = bitcast i8* %495 to <4 x double>*
  store <4 x double> %491, <4 x double>* %496, align 8, !alias.scope !90, !noalias !92
  %index.next1053 = add i64 %index1052, 4
  %vec.ind.next1057 = add <4 x i64> %vec.ind1056, <i64 4, i64 4, i64 4, i64 4>
  %497 = icmp eq i64 %index.next1053, 16
  br i1 %497, label %polly.loop_exit714.2.2, label %vector.body1050, !llvm.loop !117

polly.loop_exit714.2.2:                           ; preds = %vector.body1050
  %polly.indvar_next710.2.2 = add nuw nsw i64 %polly.indvar709.2.2, 1
  %exitcond856.2.2.not = icmp eq i64 %polly.indvar_next710.2.2, 16
  br i1 %exitcond856.2.2.not, label %polly.loop_header733, label %polly.loop_header706.2.2
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
declare i64 @llvm.smax.i64(i64, i64) #5

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
!24 = !{!"llvm.loop.tile.size", i32 20}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 64}
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
!44 = !{!"llvm.loop.tile.size", i32 32}
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
