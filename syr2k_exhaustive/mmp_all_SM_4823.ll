; ModuleID = 'syr2k_exhaustive/mmp_all_SM_4823.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_4823.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 1440000, i32 8) #6
  %call813 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1665 = bitcast i8* %call1 to double*
  %polly.access.call1674 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1674, %call2
  %polly.access.call2694 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2694, %call1
  %2 = or i1 %0, %1
  %polly.access.call714 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call714, %call2
  %4 = icmp ule i8* %polly.access.call2694, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call714, %call1
  %8 = icmp ule i8* %polly.access.call1674, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header787, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1108 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1107 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1106 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1105 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1105, %scevgep1108
  %bound1 = icmp ult i8* %scevgep1107, %scevgep1106
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
  %16 = urem <4 x i32> %15, <i32 1200, i32 1200, i32 1200, i32 1200>
  %17 = sitofp <4 x i32> %16 to <4 x double>
  %18 = fmul fast <4 x double> %17, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %19 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %index
  %20 = bitcast double* %19 to <4 x double>*
  store <4 x double> %18, <4 x double>* %20, align 8, !tbaa !2, !alias.scope !6, !noalias !9
  %21 = add <4 x i32> %14, <i32 2, i32 2, i32 2, i32 2>
  %22 = urem <4 x i32> %21, <i32 1000, i32 1000, i32 1000, i32 1000>
  %23 = sitofp <4 x i32> %22 to <4 x double>
  %24 = fmul fast <4 x double> %23, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %25 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %index
  %26 = bitcast double* %25 to <4 x double>*
  store <4 x double> %24, <4 x double>* %26, align 8, !tbaa !2, !alias.scope !9
  %index.next = add i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 4, i64 4, i64 4, i64 4>
  %27 = icmp eq i64 %index.next, 1000
  br i1 %27, label %for.inc17.i, label %vector.body, !llvm.loop !11

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %28 = mul nuw nsw i64 %indvars.iv10.i, %indvars.iv16.i
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, 1
  %rem.i = urem i32 %30, 1200
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fmul fast double %conv.i, 0x3F4B4E81B4E81B4F
  %arrayidx6.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %31 = add i32 %29, 2
  %rem9.i = urem i32 %31, 1000
  %conv10.i = sitofp i32 %rem9.i to double
  %div12.i = fmul fast double %conv10.i, 1.000000e-03
  %arrayidx16.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div12.i, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next11.i, 1000
  br i1 %exitcond15.not.i, label %for.inc17.i, label %for.body3.i, !llvm.loop !14

for.inc17.i:                                      ; preds = %vector.body, %for.body3.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 1200
  br i1 %exitcond18.not.i, label %vector.ph1112, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1112:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1119 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1120 = shufflevector <4 x i64> %broadcast.splatinsert1119, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1111

vector.body1111:                                  ; preds = %vector.body1111, %vector.ph1112
  %index1113 = phi i64 [ 0, %vector.ph1112 ], [ %index.next1114, %vector.body1111 ]
  %vec.ind1117 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1112 ], [ %vec.ind.next1118, %vector.body1111 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1117, %broadcast.splat1120
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv7.i, i64 %index1113
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1114 = add i64 %index1113, 4
  %vec.ind.next1118 = add <4 x i64> %vec.ind1117, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1114, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1111, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1111
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1112, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit848
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start472, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1174 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1174, label %for.body3.i46.preheader1251, label %vector.ph1175

vector.ph1175:                                    ; preds = %for.body3.i46.preheader
  %n.vec1177 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %vector.ph1175
  %index1178 = phi i64 [ 0, %vector.ph1175 ], [ %index.next1179, %vector.body1173 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i, i64 %index1178
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1179 = add i64 %index1178, 4
  %46 = icmp eq i64 %index.next1179, %n.vec1177
  br i1 %46, label %middle.block1171, label %vector.body1173, !llvm.loop !18

middle.block1171:                                 ; preds = %vector.body1173
  %cmp.n1181 = icmp eq i64 %indvars.iv21.i, %n.vec1177
  br i1 %cmp.n1181, label %for.inc6.i, label %for.body3.i46.preheader1251

for.body3.i46.preheader1251:                      ; preds = %for.body3.i46.preheader, %middle.block1171
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1177, %middle.block1171 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1251, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1251 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1171, %for.cond1.preheader.i45
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next22.i, 1200
  br i1 %exitcond23.not.i, label %for.cond12.preheader.i, label %for.cond1.preheader.i45, !llvm.loop !20

for.cond12.preheader.i:                           ; preds = %for.inc6.i, %for.inc49.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %for.inc49.i ], [ 0, %for.inc6.i ]
  %indvars.iv13.i = phi i64 [ %indvars.iv.next14.i, %for.inc49.i ], [ 1, %for.inc6.i ]
  br label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %for.inc46.i, %for.cond12.preheader.i
  %indvars.iv10.i47 = phi i64 [ 0, %for.cond12.preheader.i ], [ %indvars.iv.next11.i51, %for.inc46.i ]
  %arrayidx26.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  %arrayidx36.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond15.preheader.i
  %indvars.iv.i48 = phi i64 [ 0, %for.cond15.preheader.i ], [ %indvars.iv.next.i49, %for.body17.i ]
  %arrayidx21.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !32

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting473
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start281, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1197 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1197, label %for.body3.i60.preheader1249, label %vector.ph1198

vector.ph1198:                                    ; preds = %for.body3.i60.preheader
  %n.vec1200 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1196

vector.body1196:                                  ; preds = %vector.body1196, %vector.ph1198
  %index1201 = phi i64 [ 0, %vector.ph1198 ], [ %index.next1202, %vector.body1196 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i52, i64 %index1201
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1205 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1205, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1202 = add i64 %index1201, 4
  %57 = icmp eq i64 %index.next1202, %n.vec1200
  br i1 %57, label %middle.block1194, label %vector.body1196, !llvm.loop !55

middle.block1194:                                 ; preds = %vector.body1196
  %cmp.n1204 = icmp eq i64 %indvars.iv21.i52, %n.vec1200
  br i1 %cmp.n1204, label %for.inc6.i63, label %for.body3.i60.preheader1249

for.body3.i60.preheader1249:                      ; preds = %for.body3.i60.preheader, %middle.block1194
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1200, %middle.block1194 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1249, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1249 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1194, %for.cond1.preheader.i54
  %indvars.iv.next22.i61 = add nuw nsw i64 %indvars.iv21.i52, 1
  %exitcond23.not.i62 = icmp eq i64 %indvars.iv.next22.i61, 1200
  br i1 %exitcond23.not.i62, label %for.cond12.preheader.i66, label %for.cond1.preheader.i54, !llvm.loop !20

for.cond12.preheader.i66:                         ; preds = %for.inc6.i63, %for.inc49.i89
  %indvars.iv15.i64 = phi i64 [ %indvars.iv.next16.i86, %for.inc49.i89 ], [ 0, %for.inc6.i63 ]
  %indvars.iv13.i65 = phi i64 [ %indvars.iv.next14.i87, %for.inc49.i89 ], [ 1, %for.inc6.i63 ]
  br label %for.cond15.preheader.i70

for.cond15.preheader.i70:                         ; preds = %for.inc46.i85, %for.cond12.preheader.i66
  %indvars.iv10.i67 = phi i64 [ 0, %for.cond12.preheader.i66 ], [ %indvars.iv.next11.i83, %for.inc46.i85 ]
  %arrayidx26.i68 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  %arrayidx36.i69 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  br label %for.body17.i82

for.body17.i82:                                   ; preds = %for.body17.i82, %for.cond15.preheader.i70
  %indvars.iv.i71 = phi i64 [ 0, %for.cond15.preheader.i70 ], [ %indvars.iv.next.i80, %for.body17.i82 ]
  %arrayidx21.i72 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !32

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting282
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1223 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1223, label %for.body3.i99.preheader1247, label %vector.ph1224

vector.ph1224:                                    ; preds = %for.body3.i99.preheader
  %n.vec1226 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %vector.ph1224
  %index1227 = phi i64 [ 0, %vector.ph1224 ], [ %index.next1228, %vector.body1222 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i91, i64 %index1227
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1231 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1231, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1228 = add i64 %index1227, 4
  %68 = icmp eq i64 %index.next1228, %n.vec1226
  br i1 %68, label %middle.block1220, label %vector.body1222, !llvm.loop !57

middle.block1220:                                 ; preds = %vector.body1222
  %cmp.n1230 = icmp eq i64 %indvars.iv21.i91, %n.vec1226
  br i1 %cmp.n1230, label %for.inc6.i102, label %for.body3.i99.preheader1247

for.body3.i99.preheader1247:                      ; preds = %for.body3.i99.preheader, %middle.block1220
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1226, %middle.block1220 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1247, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1247 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1220, %for.cond1.preheader.i93
  %indvars.iv.next22.i100 = add nuw nsw i64 %indvars.iv21.i91, 1
  %exitcond23.not.i101 = icmp eq i64 %indvars.iv.next22.i100, 1200
  br i1 %exitcond23.not.i101, label %for.cond12.preheader.i105, label %for.cond1.preheader.i93, !llvm.loop !20

for.cond12.preheader.i105:                        ; preds = %for.inc6.i102, %for.inc49.i128
  %indvars.iv15.i103 = phi i64 [ %indvars.iv.next16.i125, %for.inc49.i128 ], [ 0, %for.inc6.i102 ]
  %indvars.iv13.i104 = phi i64 [ %indvars.iv.next14.i126, %for.inc49.i128 ], [ 1, %for.inc6.i102 ]
  br label %for.cond15.preheader.i109

for.cond15.preheader.i109:                        ; preds = %for.inc46.i124, %for.cond12.preheader.i105
  %indvars.iv10.i106 = phi i64 [ 0, %for.cond12.preheader.i105 ], [ %indvars.iv.next11.i122, %for.inc46.i124 ]
  %arrayidx26.i107 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  %arrayidx36.i108 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  br label %for.body17.i121

for.body17.i121:                                  ; preds = %for.body17.i121, %for.cond15.preheader.i109
  %indvars.iv.i110 = phi i64 [ 0, %for.cond15.preheader.i109 ], [ %indvars.iv.next.i119, %for.body17.i121 ]
  %arrayidx21.i111 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !32

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
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
  %79 = mul nuw nsw i64 %indvars.iv4.i, 1200
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
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
  %malloccall = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1235 = phi i64 [ %indvar.next1236, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1235, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1237 = icmp ult i64 %88, 4
  br i1 %min.iters.check1237, label %polly.loop_header191.preheader, label %vector.ph1238

vector.ph1238:                                    ; preds = %polly.loop_header
  %n.vec1240 = and i64 %88, -4
  br label %vector.body1234

vector.body1234:                                  ; preds = %vector.body1234, %vector.ph1238
  %index1241 = phi i64 [ 0, %vector.ph1238 ], [ %index.next1242, %vector.body1234 ]
  %90 = shl nuw nsw i64 %index1241, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1245 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1245, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1242 = add i64 %index1241, 4
  %95 = icmp eq i64 %index.next1242, %n.vec1240
  br i1 %95, label %middle.block1232, label %vector.body1234, !llvm.loop !69

middle.block1232:                                 ; preds = %vector.body1234
  %cmp.n1244 = icmp eq i64 %88, %n.vec1240
  br i1 %cmp.n1244, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1232
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1240, %middle.block1232 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1232
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1001.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1236 = add i64 %indvar1235, 1
  br i1 %exitcond1001.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond1000.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1000.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv983 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next984, %polly.loop_exit207 ]
  %indvars.iv979 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next980, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = mul nuw nsw i64 %polly.indvar202, 7
  %98 = add nuw nsw i64 %97, 6
  %pexp.p_div_q = udiv i64 %98, 25
  %99 = add nuw nsw i64 %pexp.p_div_q, %polly.indvar202
  %.inv = icmp ult i64 %99, 23
  %100 = mul nsw i64 %polly.indvar202, -64
  %101 = icmp slt i64 %100, -1136
  %102 = select i1 %101, i64 %100, i64 -1136
  %103 = add nsw i64 %102, 1199
  %104 = shl nsw i64 %polly.indvar202, 6
  %.op = add nuw i64 %99, 2
  %105 = select i1 %.inv, i64 %.op, i64 24
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next980 = add nsw i64 %indvars.iv979, -64
  %indvars.iv.next984 = add nuw nsw i64 %indvars.iv983, 64
  %exitcond999.not = icmp eq i64 %polly.indvar_next203, 19
  br i1 %exitcond999.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %smin995 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -872)
  %106 = add nsw i64 %smin995, 1000
  %107 = shl nsw i64 %polly.indvar208, 7
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %exitcond998.not = icmp eq i64 %polly.indvar_next209, 8
  br i1 %exitcond998.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv985 = phi i64 [ %indvars.iv.next986, %polly.loop_exit219 ], [ %indvars.iv983, %polly.loop_header205 ]
  %indvars.iv981 = phi i64 [ %indvars.iv.next982, %polly.loop_exit219 ], [ %indvars.iv979, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %108 = mul nsw i64 %polly.indvar214, 50
  %109 = add nsw i64 %108, %100
  %110 = icmp sgt i64 %109, 0
  %111 = select i1 %110, i64 %109, i64 0
  %polly.loop_guard.not = icmp sgt i64 %111, %103
  br i1 %polly.loop_guard.not, label %polly.loop_exit219, label %polly.loop_header217.preheader

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv981, i64 0)
  %112 = add i64 %smax, %indvars.iv985
  %113 = sub nsw i64 %104, %108
  %114 = add nuw nsw i64 %108, 50
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit250, %polly.loop_header211
  %polly.indvar_next215 = add nuw i64 %polly.indvar214, 1
  %indvars.iv.next982 = add i64 %indvars.iv981, 50
  %indvars.iv.next986 = add i64 %indvars.iv985, -50
  %exitcond997.not = icmp eq i64 %polly.indvar_next215, %105
  br i1 %exitcond997.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit250
  %indvars.iv987 = phi i64 [ %112, %polly.loop_header217.preheader ], [ %indvars.iv.next988, %polly.loop_exit250 ]
  %polly.indvar220 = phi i64 [ %111, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit250 ]
  %smin993 = call i64 @llvm.smin.i64(i64 %indvars.iv987, i64 49)
  %115 = add nsw i64 %polly.indvar220, %113
  %polly.loop_guard2331092 = icmp sgt i64 %115, -1
  %116 = add nuw nsw i64 %polly.indvar220, %104
  %.not = icmp ult i64 %116, %114
  %polly.access.mul.call1242 = mul nsw i64 %116, 1000
  %117 = add nuw i64 %polly.access.mul.call1242, %107
  br i1 %polly.loop_guard2331092, label %polly.loop_header223.us, label %polly.loop_header217.split

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.merge.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.merge.us ], [ 0, %polly.loop_header217 ]
  %118 = add nuw nsw i64 %polly.indvar226.us, %107
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar226.us, 1200
  br label %polly.loop_header230.us

polly.loop_header230.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header223.us ]
  %119 = add nuw nsw i64 %polly.indvar234.us, %108
  %polly.access.mul.call1238.us = mul nsw i64 %119, 1000
  %polly.access.add.call1239.us = add nuw nsw i64 %118, %polly.access.mul.call1238.us
  %polly.access.call1240.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1239.us
  %polly.access.call1240.load.us = load double, double* %polly.access.call1240.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar234.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1240.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next235.us = add nuw nsw i64 %polly.indvar234.us, 1
  %exitcond990.not = icmp eq i64 %polly.indvar234.us, %smin993
  br i1 %exitcond990.not, label %polly.cond.loopexit.us, label %polly.loop_header230.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1243.us = add i64 %117, %polly.indvar226.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %115
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next227.us, %106
  br i1 %exitcond992.not, label %polly.loop_header248.preheader, label %polly.loop_header223.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header230.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %.not, label %polly.loop_exit250, label %polly.loop_header223

polly.loop_exit250:                               ; preds = %polly.loop_exit257.loopexit.us, %polly.loop_header217.split, %polly.loop_header248.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222.not.not = icmp ult i64 %polly.indvar220, %103
  %indvars.iv.next988 = add i64 %indvars.iv987, 1
  br i1 %polly.loop_cond222.not.not, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header223:                             ; preds = %polly.loop_header217.split, %polly.loop_header223
  %polly.indvar226 = phi i64 [ %polly.indvar_next227, %polly.loop_header223 ], [ 0, %polly.loop_header217.split ]
  %polly.access.add.call1243 = add i64 %117, %polly.indvar226
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1245 = mul nuw nsw i64 %polly.indvar226, 1200
  %polly.access.add.Packed_MemRef_call1246 = add nsw i64 %polly.access.mul.Packed_MemRef_call1245, %115
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next227, %106
  br i1 %exitcond.not, label %polly.loop_header248.preheader, label %polly.loop_header223

polly.loop_header248.preheader:                   ; preds = %polly.loop_header223, %polly.merge.us
  %120 = mul i64 %116, 8000
  %121 = mul i64 %116, 9600
  br i1 %polly.loop_guard2331092, label %polly.loop_header248.us, label %polly.loop_exit250

polly.loop_header248.us:                          ; preds = %polly.loop_header248.preheader, %polly.loop_exit257.loopexit.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_exit257.loopexit.us ], [ 0, %polly.loop_header248.preheader ]
  %122 = add nuw nsw i64 %polly.indvar251.us, %107
  %polly.access.mul.Packed_MemRef_call1262.us = mul nuw nsw i64 %polly.indvar251.us, 1200
  %123 = shl i64 %122, 3
  %124 = add i64 %123, %120
  %scevgep266.us = getelementptr i8, i8* %call2, i64 %124
  %scevgep266267.us = bitcast i8* %scevgep266.us to double*
  %_p_scalar_268.us = load double, double* %scevgep266267.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1273.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1262.us, %115
  %polly.access.Packed_MemRef_call1274.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.us
  %_p_scalar_275.us = load double, double* %polly.access.Packed_MemRef_call1274.us, align 8
  br label %polly.loop_header255.us

polly.loop_header255.us:                          ; preds = %polly.loop_header248.us, %polly.loop_header255.us
  %polly.indvar259.us = phi i64 [ %polly.indvar_next260.us, %polly.loop_header255.us ], [ 0, %polly.loop_header248.us ]
  %125 = add nuw nsw i64 %polly.indvar259.us, %108
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar259.us, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  %_p_scalar_265.us = load double, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_268.us, %_p_scalar_265.us
  %126 = mul i64 %125, 8000
  %127 = add i64 %126, %123
  %scevgep269.us = getelementptr i8, i8* %call2, i64 %127
  %scevgep269270.us = bitcast i8* %scevgep269.us to double*
  %_p_scalar_271.us = load double, double* %scevgep269270.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_275.us, %_p_scalar_271.us
  %128 = shl i64 %125, 3
  %129 = add i64 %128, %121
  %scevgep276.us = getelementptr i8, i8* %call, i64 %129
  %scevgep276277.us = bitcast i8* %scevgep276.us to double*
  %_p_scalar_278.us = load double, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_278.us
  store double %p_add42.i118.us, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next260.us = add nuw nsw i64 %polly.indvar259.us, 1
  %exitcond994.not = icmp eq i64 %polly.indvar259.us, %smin993
  br i1 %exitcond994.not, label %polly.loop_exit257.loopexit.us, label %polly.loop_header255.us

polly.loop_exit257.loopexit.us:                   ; preds = %polly.loop_header255.us
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next252.us, %106
  br i1 %exitcond996.not, label %polly.loop_exit250, label %polly.loop_header248.us

polly.start281:                                   ; preds = %kernel_syr2k.exit
  %malloccall283 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header367

polly.exiting282:                                 ; preds = %polly.loop_exit391
  tail call void @free(i8* %malloccall283)
  br label %kernel_syr2k.exit90

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.start281
  %indvar1209 = phi i64 [ %indvar.next1210, %polly.loop_exit375 ], [ 0, %polly.start281 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit375 ], [ 1, %polly.start281 ]
  %130 = add i64 %indvar1209, 1
  %131 = mul nuw nsw i64 %polly.indvar370, 9600
  %scevgep379 = getelementptr i8, i8* %call, i64 %131
  %min.iters.check1211 = icmp ult i64 %130, 4
  br i1 %min.iters.check1211, label %polly.loop_header373.preheader, label %vector.ph1212

vector.ph1212:                                    ; preds = %polly.loop_header367
  %n.vec1214 = and i64 %130, -4
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %vector.ph1212
  %index1215 = phi i64 [ 0, %vector.ph1212 ], [ %index.next1216, %vector.body1208 ]
  %132 = shl nuw nsw i64 %index1215, 3
  %133 = getelementptr i8, i8* %scevgep379, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load1219 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !74, !noalias !76
  %135 = fmul fast <4 x double> %wide.load1219, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %136 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %135, <4 x double>* %136, align 8, !alias.scope !74, !noalias !76
  %index.next1216 = add i64 %index1215, 4
  %137 = icmp eq i64 %index.next1216, %n.vec1214
  br i1 %137, label %middle.block1206, label %vector.body1208, !llvm.loop !80

middle.block1206:                                 ; preds = %vector.body1208
  %cmp.n1218 = icmp eq i64 %130, %n.vec1214
  br i1 %cmp.n1218, label %polly.loop_exit375, label %polly.loop_header373.preheader

polly.loop_header373.preheader:                   ; preds = %polly.loop_header367, %middle.block1206
  %polly.indvar376.ph = phi i64 [ 0, %polly.loop_header367 ], [ %n.vec1214, %middle.block1206 ]
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373, %middle.block1206
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next371, 1200
  %indvar.next1210 = add i64 %indvar1209, 1
  br i1 %exitcond1029.not, label %polly.loop_header383.preheader, label %polly.loop_header367

polly.loop_header383.preheader:                   ; preds = %polly.loop_exit375
  %Packed_MemRef_call1284 = bitcast i8* %malloccall283 to double*
  br label %polly.loop_header383

polly.loop_header373:                             ; preds = %polly.loop_header373.preheader, %polly.loop_header373
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_header373 ], [ %polly.indvar376.ph, %polly.loop_header373.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar376, 3
  %scevgep380 = getelementptr i8, i8* %scevgep379, i64 %138
  %scevgep380381 = bitcast i8* %scevgep380 to double*
  %_p_scalar_382 = load double, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_382, 1.200000e+00
  store double %p_mul.i57, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next377, %polly.indvar370
  br i1 %exitcond1028.not, label %polly.loop_exit375, label %polly.loop_header373, !llvm.loop !81

polly.loop_header383:                             ; preds = %polly.loop_header383.preheader, %polly.loop_exit391
  %indvars.iv1011 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next1012, %polly.loop_exit391 ]
  %indvars.iv1006 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next1007, %polly.loop_exit391 ]
  %polly.indvar386 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %polly.indvar_next387, %polly.loop_exit391 ]
  %139 = mul nuw nsw i64 %polly.indvar386, 7
  %140 = add nuw nsw i64 %139, 6
  %pexp.p_div_q395 = udiv i64 %140, 25
  %141 = add nuw nsw i64 %pexp.p_div_q395, %polly.indvar386
  %.inv867 = icmp ult i64 %141, 23
  %142 = mul nsw i64 %polly.indvar386, -64
  %143 = icmp slt i64 %142, -1136
  %144 = select i1 %143, i64 %142, i64 -1136
  %145 = add nsw i64 %144, 1199
  %146 = shl nsw i64 %polly.indvar386, 6
  %.op1093 = add nuw i64 %141, 2
  %147 = select i1 %.inv867, i64 %.op1093, i64 24
  br label %polly.loop_header389

polly.loop_exit391:                               ; preds = %polly.loop_exit398
  %polly.indvar_next387 = add nuw nsw i64 %polly.indvar386, 1
  %indvars.iv.next1007 = add nsw i64 %indvars.iv1006, -64
  %indvars.iv.next1012 = add nuw nsw i64 %indvars.iv1011, 64
  %exitcond1027.not = icmp eq i64 %polly.indvar_next387, 19
  br i1 %exitcond1027.not, label %polly.exiting282, label %polly.loop_header383

polly.loop_header389:                             ; preds = %polly.loop_exit398, %polly.loop_header383
  %indvars.iv1002 = phi i64 [ %indvars.iv.next1003, %polly.loop_exit398 ], [ 0, %polly.loop_header383 ]
  %polly.indvar392 = phi i64 [ %polly.indvar_next393, %polly.loop_exit398 ], [ 0, %polly.loop_header383 ]
  %smin1023 = call i64 @llvm.smin.i64(i64 %indvars.iv1002, i64 -872)
  %148 = add nsw i64 %smin1023, 1000
  %149 = shl nsw i64 %polly.indvar392, 7
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_exit405
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %indvars.iv.next1003 = add nsw i64 %indvars.iv1002, -128
  %exitcond1026.not = icmp eq i64 %polly.indvar_next393, 8
  br i1 %exitcond1026.not, label %polly.loop_exit391, label %polly.loop_header389

polly.loop_header396:                             ; preds = %polly.loop_exit405, %polly.loop_header389
  %indvars.iv1013 = phi i64 [ %indvars.iv.next1014, %polly.loop_exit405 ], [ %indvars.iv1011, %polly.loop_header389 ]
  %indvars.iv1008 = phi i64 [ %indvars.iv.next1009, %polly.loop_exit405 ], [ %indvars.iv1006, %polly.loop_header389 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit405 ], [ 0, %polly.loop_header389 ]
  %150 = mul nsw i64 %polly.indvar399, 50
  %151 = add nsw i64 %150, %142
  %152 = icmp sgt i64 %151, 0
  %153 = select i1 %152, i64 %151, i64 0
  %polly.loop_guard406.not = icmp sgt i64 %153, %145
  br i1 %polly.loop_guard406.not, label %polly.loop_exit405, label %polly.loop_header403.preheader

polly.loop_header403.preheader:                   ; preds = %polly.loop_header396
  %smax1010 = call i64 @llvm.smax.i64(i64 %indvars.iv1008, i64 0)
  %154 = add i64 %smax1010, %indvars.iv1013
  %155 = sub nsw i64 %146, %150
  %156 = add nuw nsw i64 %150, 50
  br label %polly.loop_header403

polly.loop_exit405:                               ; preds = %polly.loop_exit441, %polly.loop_header396
  %polly.indvar_next400 = add nuw i64 %polly.indvar399, 1
  %indvars.iv.next1009 = add i64 %indvars.iv1008, 50
  %indvars.iv.next1014 = add i64 %indvars.iv1013, -50
  %exitcond1025.not = icmp eq i64 %polly.indvar_next400, %147
  br i1 %exitcond1025.not, label %polly.loop_exit398, label %polly.loop_header396

polly.loop_header403:                             ; preds = %polly.loop_header403.preheader, %polly.loop_exit441
  %indvars.iv1015 = phi i64 [ %154, %polly.loop_header403.preheader ], [ %indvars.iv.next1016, %polly.loop_exit441 ]
  %polly.indvar407 = phi i64 [ %153, %polly.loop_header403.preheader ], [ %polly.indvar_next408, %polly.loop_exit441 ]
  %smin1021 = call i64 @llvm.smin.i64(i64 %indvars.iv1015, i64 49)
  %157 = add nsw i64 %polly.indvar407, %155
  %polly.loop_guard4201094 = icmp sgt i64 %157, -1
  %158 = add nuw nsw i64 %polly.indvar407, %146
  %.not868 = icmp ult i64 %158, %156
  %polly.access.mul.call1433 = mul nsw i64 %158, 1000
  %159 = add nuw i64 %polly.access.mul.call1433, %149
  br i1 %polly.loop_guard4201094, label %polly.loop_header410.us, label %polly.loop_header403.split

polly.loop_header410.us:                          ; preds = %polly.loop_header403, %polly.merge429.us
  %polly.indvar413.us = phi i64 [ %polly.indvar_next414.us, %polly.merge429.us ], [ 0, %polly.loop_header403 ]
  %160 = add nuw nsw i64 %polly.indvar413.us, %149
  %polly.access.mul.Packed_MemRef_call1284.us = mul nuw nsw i64 %polly.indvar413.us, 1200
  br label %polly.loop_header417.us

polly.loop_header417.us:                          ; preds = %polly.loop_header410.us, %polly.loop_header417.us
  %polly.indvar421.us = phi i64 [ %polly.indvar_next422.us, %polly.loop_header417.us ], [ 0, %polly.loop_header410.us ]
  %161 = add nuw nsw i64 %polly.indvar421.us, %150
  %polly.access.mul.call1425.us = mul nsw i64 %161, 1000
  %polly.access.add.call1426.us = add nuw nsw i64 %160, %polly.access.mul.call1425.us
  %polly.access.call1427.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1426.us
  %polly.access.call1427.load.us = load double, double* %polly.access.call1427.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284.us = add nuw nsw i64 %polly.indvar421.us, %polly.access.mul.Packed_MemRef_call1284.us
  %polly.access.Packed_MemRef_call1284.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us
  store double %polly.access.call1427.load.us, double* %polly.access.Packed_MemRef_call1284.us, align 8
  %polly.indvar_next422.us = add nuw nsw i64 %polly.indvar421.us, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar421.us, %smin1021
  br i1 %exitcond1018.not, label %polly.cond428.loopexit.us, label %polly.loop_header417.us

polly.then430.us:                                 ; preds = %polly.cond428.loopexit.us
  %polly.access.add.call1434.us = add i64 %159, %polly.indvar413.us
  %polly.access.call1435.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.us
  %polly.access.call1435.load.us = load double, double* %polly.access.call1435.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1284.us, %157
  %polly.access.Packed_MemRef_call1284438.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.us
  store double %polly.access.call1435.load.us, double* %polly.access.Packed_MemRef_call1284438.us, align 8
  br label %polly.merge429.us

polly.merge429.us:                                ; preds = %polly.then430.us, %polly.cond428.loopexit.us
  %polly.indvar_next414.us = add nuw nsw i64 %polly.indvar413.us, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next414.us, %148
  br i1 %exitcond1020.not, label %polly.loop_header439.preheader, label %polly.loop_header410.us

polly.cond428.loopexit.us:                        ; preds = %polly.loop_header417.us
  br i1 %.not868, label %polly.merge429.us, label %polly.then430.us

polly.loop_header403.split:                       ; preds = %polly.loop_header403
  br i1 %.not868, label %polly.loop_exit441, label %polly.loop_header410

polly.loop_exit441:                               ; preds = %polly.loop_exit448.loopexit.us, %polly.loop_header403.split, %polly.loop_header439.preheader
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %polly.loop_cond409.not.not = icmp ult i64 %polly.indvar407, %145
  %indvars.iv.next1016 = add i64 %indvars.iv1015, 1
  br i1 %polly.loop_cond409.not.not, label %polly.loop_header403, label %polly.loop_exit405

polly.loop_header410:                             ; preds = %polly.loop_header403.split, %polly.loop_header410
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_header410 ], [ 0, %polly.loop_header403.split ]
  %polly.access.add.call1434 = add i64 %159, %polly.indvar413
  %polly.access.call1435 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434
  %polly.access.call1435.load = load double, double* %polly.access.call1435, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1284436 = mul nuw nsw i64 %polly.indvar413, 1200
  %polly.access.add.Packed_MemRef_call1284437 = add nsw i64 %polly.access.mul.Packed_MemRef_call1284436, %157
  %polly.access.Packed_MemRef_call1284438 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437
  store double %polly.access.call1435.load, double* %polly.access.Packed_MemRef_call1284438, align 8
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar_next414, %148
  br i1 %exitcond1005.not, label %polly.loop_header439.preheader, label %polly.loop_header410

polly.loop_header439.preheader:                   ; preds = %polly.loop_header410, %polly.merge429.us
  %162 = mul i64 %158, 8000
  %163 = mul i64 %158, 9600
  br i1 %polly.loop_guard4201094, label %polly.loop_header439.us, label %polly.loop_exit441

polly.loop_header439.us:                          ; preds = %polly.loop_header439.preheader, %polly.loop_exit448.loopexit.us
  %polly.indvar442.us = phi i64 [ %polly.indvar_next443.us, %polly.loop_exit448.loopexit.us ], [ 0, %polly.loop_header439.preheader ]
  %164 = add nuw nsw i64 %polly.indvar442.us, %149
  %polly.access.mul.Packed_MemRef_call1284453.us = mul nuw nsw i64 %polly.indvar442.us, 1200
  %165 = shl i64 %164, 3
  %166 = add i64 %165, %162
  %scevgep457.us = getelementptr i8, i8* %call2, i64 %166
  %scevgep457458.us = bitcast i8* %scevgep457.us to double*
  %_p_scalar_459.us = load double, double* %scevgep457458.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1284464.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1284453.us, %157
  %polly.access.Packed_MemRef_call1284465.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284464.us
  %_p_scalar_466.us = load double, double* %polly.access.Packed_MemRef_call1284465.us, align 8
  br label %polly.loop_header446.us

polly.loop_header446.us:                          ; preds = %polly.loop_header439.us, %polly.loop_header446.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_header446.us ], [ 0, %polly.loop_header439.us ]
  %167 = add nuw nsw i64 %polly.indvar450.us, %150
  %polly.access.add.Packed_MemRef_call1284454.us = add nuw nsw i64 %polly.indvar450.us, %polly.access.mul.Packed_MemRef_call1284453.us
  %polly.access.Packed_MemRef_call1284455.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284454.us
  %_p_scalar_456.us = load double, double* %polly.access.Packed_MemRef_call1284455.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_459.us, %_p_scalar_456.us
  %168 = mul i64 %167, 8000
  %169 = add i64 %168, %165
  %scevgep460.us = getelementptr i8, i8* %call2, i64 %169
  %scevgep460461.us = bitcast i8* %scevgep460.us to double*
  %_p_scalar_462.us = load double, double* %scevgep460461.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_466.us, %_p_scalar_462.us
  %170 = shl i64 %167, 3
  %171 = add i64 %170, %163
  %scevgep467.us = getelementptr i8, i8* %call, i64 %171
  %scevgep467468.us = bitcast i8* %scevgep467.us to double*
  %_p_scalar_469.us = load double, double* %scevgep467468.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_469.us
  store double %p_add42.i79.us, double* %scevgep467468.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar450.us, %smin1021
  br i1 %exitcond1022.not, label %polly.loop_exit448.loopexit.us, label %polly.loop_header446.us

polly.loop_exit448.loopexit.us:                   ; preds = %polly.loop_header446.us
  %polly.indvar_next443.us = add nuw nsw i64 %polly.indvar442.us, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar_next443.us, %148
  br i1 %exitcond1024.not, label %polly.loop_exit441, label %polly.loop_header439.us

polly.start472:                                   ; preds = %init_array.exit
  %malloccall474 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header558

polly.exiting473:                                 ; preds = %polly.loop_exit582
  tail call void @free(i8* %malloccall474)
  br label %kernel_syr2k.exit

polly.loop_header558:                             ; preds = %polly.loop_exit566, %polly.start472
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit566 ], [ 0, %polly.start472 ]
  %polly.indvar561 = phi i64 [ %polly.indvar_next562, %polly.loop_exit566 ], [ 1, %polly.start472 ]
  %172 = add i64 %indvar, 1
  %173 = mul nuw nsw i64 %polly.indvar561, 9600
  %scevgep570 = getelementptr i8, i8* %call, i64 %173
  %min.iters.check1185 = icmp ult i64 %172, 4
  br i1 %min.iters.check1185, label %polly.loop_header564.preheader, label %vector.ph1186

vector.ph1186:                                    ; preds = %polly.loop_header558
  %n.vec1188 = and i64 %172, -4
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %vector.ph1186
  %index1189 = phi i64 [ 0, %vector.ph1186 ], [ %index.next1190, %vector.body1184 ]
  %174 = shl nuw nsw i64 %index1189, 3
  %175 = getelementptr i8, i8* %scevgep570, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  %wide.load1193 = load <4 x double>, <4 x double>* %176, align 8, !alias.scope !84, !noalias !86
  %177 = fmul fast <4 x double> %wide.load1193, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %178 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %177, <4 x double>* %178, align 8, !alias.scope !84, !noalias !86
  %index.next1190 = add i64 %index1189, 4
  %179 = icmp eq i64 %index.next1190, %n.vec1188
  br i1 %179, label %middle.block1182, label %vector.body1184, !llvm.loop !90

middle.block1182:                                 ; preds = %vector.body1184
  %cmp.n1192 = icmp eq i64 %172, %n.vec1188
  br i1 %cmp.n1192, label %polly.loop_exit566, label %polly.loop_header564.preheader

polly.loop_header564.preheader:                   ; preds = %polly.loop_header558, %middle.block1182
  %polly.indvar567.ph = phi i64 [ 0, %polly.loop_header558 ], [ %n.vec1188, %middle.block1182 ]
  br label %polly.loop_header564

polly.loop_exit566:                               ; preds = %polly.loop_header564, %middle.block1182
  %polly.indvar_next562 = add nuw nsw i64 %polly.indvar561, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next562, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1057.not, label %polly.loop_header574.preheader, label %polly.loop_header558

polly.loop_header574.preheader:                   ; preds = %polly.loop_exit566
  %Packed_MemRef_call1475 = bitcast i8* %malloccall474 to double*
  br label %polly.loop_header574

polly.loop_header564:                             ; preds = %polly.loop_header564.preheader, %polly.loop_header564
  %polly.indvar567 = phi i64 [ %polly.indvar_next568, %polly.loop_header564 ], [ %polly.indvar567.ph, %polly.loop_header564.preheader ]
  %180 = shl nuw nsw i64 %polly.indvar567, 3
  %scevgep571 = getelementptr i8, i8* %scevgep570, i64 %180
  %scevgep571572 = bitcast i8* %scevgep571 to double*
  %_p_scalar_573 = load double, double* %scevgep571572, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_573, 1.200000e+00
  store double %p_mul.i, double* %scevgep571572, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar_next568, %polly.indvar561
  br i1 %exitcond1056.not, label %polly.loop_exit566, label %polly.loop_header564, !llvm.loop !91

polly.loop_header574:                             ; preds = %polly.loop_header574.preheader, %polly.loop_exit582
  %indvars.iv1039 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %indvars.iv.next1040, %polly.loop_exit582 ]
  %indvars.iv1034 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %indvars.iv.next1035, %polly.loop_exit582 ]
  %polly.indvar577 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %polly.indvar_next578, %polly.loop_exit582 ]
  %181 = mul nuw nsw i64 %polly.indvar577, 7
  %182 = add nuw nsw i64 %181, 6
  %pexp.p_div_q586 = udiv i64 %182, 25
  %183 = add nuw nsw i64 %pexp.p_div_q586, %polly.indvar577
  %.inv869 = icmp ult i64 %183, 23
  %184 = mul nsw i64 %polly.indvar577, -64
  %185 = icmp slt i64 %184, -1136
  %186 = select i1 %185, i64 %184, i64 -1136
  %187 = add nsw i64 %186, 1199
  %188 = shl nsw i64 %polly.indvar577, 6
  %.op1095 = add nuw i64 %183, 2
  %189 = select i1 %.inv869, i64 %.op1095, i64 24
  br label %polly.loop_header580

polly.loop_exit582:                               ; preds = %polly.loop_exit589
  %polly.indvar_next578 = add nuw nsw i64 %polly.indvar577, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -64
  %indvars.iv.next1040 = add nuw nsw i64 %indvars.iv1039, 64
  %exitcond1055.not = icmp eq i64 %polly.indvar_next578, 19
  br i1 %exitcond1055.not, label %polly.exiting473, label %polly.loop_header574

polly.loop_header580:                             ; preds = %polly.loop_exit589, %polly.loop_header574
  %indvars.iv1030 = phi i64 [ %indvars.iv.next1031, %polly.loop_exit589 ], [ 0, %polly.loop_header574 ]
  %polly.indvar583 = phi i64 [ %polly.indvar_next584, %polly.loop_exit589 ], [ 0, %polly.loop_header574 ]
  %smin1051 = call i64 @llvm.smin.i64(i64 %indvars.iv1030, i64 -872)
  %190 = add nsw i64 %smin1051, 1000
  %191 = shl nsw i64 %polly.indvar583, 7
  br label %polly.loop_header587

polly.loop_exit589:                               ; preds = %polly.loop_exit596
  %polly.indvar_next584 = add nuw nsw i64 %polly.indvar583, 1
  %indvars.iv.next1031 = add nsw i64 %indvars.iv1030, -128
  %exitcond1054.not = icmp eq i64 %polly.indvar_next584, 8
  br i1 %exitcond1054.not, label %polly.loop_exit582, label %polly.loop_header580

polly.loop_header587:                             ; preds = %polly.loop_exit596, %polly.loop_header580
  %indvars.iv1041 = phi i64 [ %indvars.iv.next1042, %polly.loop_exit596 ], [ %indvars.iv1039, %polly.loop_header580 ]
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit596 ], [ %indvars.iv1034, %polly.loop_header580 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit596 ], [ 0, %polly.loop_header580 ]
  %192 = mul nsw i64 %polly.indvar590, 50
  %193 = add nsw i64 %192, %184
  %194 = icmp sgt i64 %193, 0
  %195 = select i1 %194, i64 %193, i64 0
  %polly.loop_guard597.not = icmp sgt i64 %195, %187
  br i1 %polly.loop_guard597.not, label %polly.loop_exit596, label %polly.loop_header594.preheader

polly.loop_header594.preheader:                   ; preds = %polly.loop_header587
  %smax1038 = call i64 @llvm.smax.i64(i64 %indvars.iv1036, i64 0)
  %196 = add i64 %smax1038, %indvars.iv1041
  %197 = sub nsw i64 %188, %192
  %198 = add nuw nsw i64 %192, 50
  br label %polly.loop_header594

polly.loop_exit596:                               ; preds = %polly.loop_exit632, %polly.loop_header587
  %polly.indvar_next591 = add nuw i64 %polly.indvar590, 1
  %indvars.iv.next1037 = add i64 %indvars.iv1036, 50
  %indvars.iv.next1042 = add i64 %indvars.iv1041, -50
  %exitcond1053.not = icmp eq i64 %polly.indvar_next591, %189
  br i1 %exitcond1053.not, label %polly.loop_exit589, label %polly.loop_header587

polly.loop_header594:                             ; preds = %polly.loop_header594.preheader, %polly.loop_exit632
  %indvars.iv1043 = phi i64 [ %196, %polly.loop_header594.preheader ], [ %indvars.iv.next1044, %polly.loop_exit632 ]
  %polly.indvar598 = phi i64 [ %195, %polly.loop_header594.preheader ], [ %polly.indvar_next599, %polly.loop_exit632 ]
  %smin1049 = call i64 @llvm.smin.i64(i64 %indvars.iv1043, i64 49)
  %199 = add nsw i64 %polly.indvar598, %197
  %polly.loop_guard6111096 = icmp sgt i64 %199, -1
  %200 = add nuw nsw i64 %polly.indvar598, %188
  %.not870 = icmp ult i64 %200, %198
  %polly.access.mul.call1624 = mul nsw i64 %200, 1000
  %201 = add nuw i64 %polly.access.mul.call1624, %191
  br i1 %polly.loop_guard6111096, label %polly.loop_header601.us, label %polly.loop_header594.split

polly.loop_header601.us:                          ; preds = %polly.loop_header594, %polly.merge620.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.merge620.us ], [ 0, %polly.loop_header594 ]
  %202 = add nuw nsw i64 %polly.indvar604.us, %191
  %polly.access.mul.Packed_MemRef_call1475.us = mul nuw nsw i64 %polly.indvar604.us, 1200
  br label %polly.loop_header608.us

polly.loop_header608.us:                          ; preds = %polly.loop_header601.us, %polly.loop_header608.us
  %polly.indvar612.us = phi i64 [ %polly.indvar_next613.us, %polly.loop_header608.us ], [ 0, %polly.loop_header601.us ]
  %203 = add nuw nsw i64 %polly.indvar612.us, %192
  %polly.access.mul.call1616.us = mul nsw i64 %203, 1000
  %polly.access.add.call1617.us = add nuw nsw i64 %202, %polly.access.mul.call1616.us
  %polly.access.call1618.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1617.us
  %polly.access.call1618.load.us = load double, double* %polly.access.call1618.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475.us = add nuw nsw i64 %polly.indvar612.us, %polly.access.mul.Packed_MemRef_call1475.us
  %polly.access.Packed_MemRef_call1475.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475.us
  store double %polly.access.call1618.load.us, double* %polly.access.Packed_MemRef_call1475.us, align 8
  %polly.indvar_next613.us = add nuw nsw i64 %polly.indvar612.us, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar612.us, %smin1049
  br i1 %exitcond1046.not, label %polly.cond619.loopexit.us, label %polly.loop_header608.us

polly.then621.us:                                 ; preds = %polly.cond619.loopexit.us
  %polly.access.add.call1625.us = add i64 %201, %polly.indvar604.us
  %polly.access.call1626.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.us
  %polly.access.call1626.load.us = load double, double* %polly.access.call1626.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1475.us, %199
  %polly.access.Packed_MemRef_call1475629.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.us
  store double %polly.access.call1626.load.us, double* %polly.access.Packed_MemRef_call1475629.us, align 8
  br label %polly.merge620.us

polly.merge620.us:                                ; preds = %polly.then621.us, %polly.cond619.loopexit.us
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next605.us, %190
  br i1 %exitcond1048.not, label %polly.loop_header630.preheader, label %polly.loop_header601.us

polly.cond619.loopexit.us:                        ; preds = %polly.loop_header608.us
  br i1 %.not870, label %polly.merge620.us, label %polly.then621.us

polly.loop_header594.split:                       ; preds = %polly.loop_header594
  br i1 %.not870, label %polly.loop_exit632, label %polly.loop_header601

polly.loop_exit632:                               ; preds = %polly.loop_exit639.loopexit.us, %polly.loop_header594.split, %polly.loop_header630.preheader
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %polly.loop_cond600.not.not = icmp ult i64 %polly.indvar598, %187
  %indvars.iv.next1044 = add i64 %indvars.iv1043, 1
  br i1 %polly.loop_cond600.not.not, label %polly.loop_header594, label %polly.loop_exit596

polly.loop_header601:                             ; preds = %polly.loop_header594.split, %polly.loop_header601
  %polly.indvar604 = phi i64 [ %polly.indvar_next605, %polly.loop_header601 ], [ 0, %polly.loop_header594.split ]
  %polly.access.add.call1625 = add i64 %201, %polly.indvar604
  %polly.access.call1626 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625
  %polly.access.call1626.load = load double, double* %polly.access.call1626, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1475627 = mul nuw nsw i64 %polly.indvar604, 1200
  %polly.access.add.Packed_MemRef_call1475628 = add nsw i64 %polly.access.mul.Packed_MemRef_call1475627, %199
  %polly.access.Packed_MemRef_call1475629 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628
  store double %polly.access.call1626.load, double* %polly.access.Packed_MemRef_call1475629, align 8
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next605, %190
  br i1 %exitcond1033.not, label %polly.loop_header630.preheader, label %polly.loop_header601

polly.loop_header630.preheader:                   ; preds = %polly.loop_header601, %polly.merge620.us
  %204 = mul i64 %200, 8000
  %205 = mul i64 %200, 9600
  br i1 %polly.loop_guard6111096, label %polly.loop_header630.us, label %polly.loop_exit632

polly.loop_header630.us:                          ; preds = %polly.loop_header630.preheader, %polly.loop_exit639.loopexit.us
  %polly.indvar633.us = phi i64 [ %polly.indvar_next634.us, %polly.loop_exit639.loopexit.us ], [ 0, %polly.loop_header630.preheader ]
  %206 = add nuw nsw i64 %polly.indvar633.us, %191
  %polly.access.mul.Packed_MemRef_call1475644.us = mul nuw nsw i64 %polly.indvar633.us, 1200
  %207 = shl i64 %206, 3
  %208 = add i64 %207, %204
  %scevgep648.us = getelementptr i8, i8* %call2, i64 %208
  %scevgep648649.us = bitcast i8* %scevgep648.us to double*
  %_p_scalar_650.us = load double, double* %scevgep648649.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1475655.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1475644.us, %199
  %polly.access.Packed_MemRef_call1475656.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475655.us
  %_p_scalar_657.us = load double, double* %polly.access.Packed_MemRef_call1475656.us, align 8
  br label %polly.loop_header637.us

polly.loop_header637.us:                          ; preds = %polly.loop_header630.us, %polly.loop_header637.us
  %polly.indvar641.us = phi i64 [ %polly.indvar_next642.us, %polly.loop_header637.us ], [ 0, %polly.loop_header630.us ]
  %209 = add nuw nsw i64 %polly.indvar641.us, %192
  %polly.access.add.Packed_MemRef_call1475645.us = add nuw nsw i64 %polly.indvar641.us, %polly.access.mul.Packed_MemRef_call1475644.us
  %polly.access.Packed_MemRef_call1475646.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475645.us
  %_p_scalar_647.us = load double, double* %polly.access.Packed_MemRef_call1475646.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_650.us, %_p_scalar_647.us
  %210 = mul i64 %209, 8000
  %211 = add i64 %210, %207
  %scevgep651.us = getelementptr i8, i8* %call2, i64 %211
  %scevgep651652.us = bitcast i8* %scevgep651.us to double*
  %_p_scalar_653.us = load double, double* %scevgep651652.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_657.us, %_p_scalar_653.us
  %212 = shl i64 %209, 3
  %213 = add i64 %212, %205
  %scevgep658.us = getelementptr i8, i8* %call, i64 %213
  %scevgep658659.us = bitcast i8* %scevgep658.us to double*
  %_p_scalar_660.us = load double, double* %scevgep658659.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_660.us
  store double %p_add42.i.us, double* %scevgep658659.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next642.us = add nuw nsw i64 %polly.indvar641.us, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar641.us, %smin1049
  br i1 %exitcond1050.not, label %polly.loop_exit639.loopexit.us, label %polly.loop_header637.us

polly.loop_exit639.loopexit.us:                   ; preds = %polly.loop_header637.us
  %polly.indvar_next634.us = add nuw nsw i64 %polly.indvar633.us, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next634.us, %190
  br i1 %exitcond1052.not, label %polly.loop_exit632, label %polly.loop_header630.us

polly.loop_header787:                             ; preds = %entry, %polly.loop_exit795
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %polly.loop_exit795 ], [ 0, %entry ]
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %entry ]
  %smin1084 = call i64 @llvm.smin.i64(i64 %indvars.iv1082, i64 -1168)
  %214 = shl nsw i64 %polly.indvar790, 5
  %215 = add nsw i64 %smin1084, 1199
  br label %polly.loop_header793

polly.loop_exit795:                               ; preds = %polly.loop_exit801
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %indvars.iv.next1083 = add nsw i64 %indvars.iv1082, -32
  %exitcond1087.not = icmp eq i64 %polly.indvar_next791, 38
  br i1 %exitcond1087.not, label %polly.loop_header814, label %polly.loop_header787

polly.loop_header793:                             ; preds = %polly.loop_exit801, %polly.loop_header787
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079, %polly.loop_exit801 ], [ 0, %polly.loop_header787 ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_header787 ]
  %216 = mul nsw i64 %polly.indvar796, -32
  %smin = call i64 @llvm.smin.i64(i64 %216, i64 -1168)
  %217 = add nsw i64 %smin, 1200
  %smin1080 = call i64 @llvm.smin.i64(i64 %indvars.iv1078, i64 -1168)
  %218 = shl nsw i64 %polly.indvar796, 5
  %219 = add nsw i64 %smin1080, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next1079 = add nsw i64 %indvars.iv1078, -32
  %exitcond1086.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond1086.not, label %polly.loop_exit795, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %polly.indvar802 = phi i64 [ 0, %polly.loop_header793 ], [ %polly.indvar_next803, %polly.loop_exit807 ]
  %220 = add nuw nsw i64 %polly.indvar802, %214
  %221 = trunc i64 %220 to i32
  %222 = mul nuw nsw i64 %220, 9600
  %min.iters.check = icmp eq i64 %217, 0
  br i1 %min.iters.check, label %polly.loop_header805, label %vector.ph1124

vector.ph1124:                                    ; preds = %polly.loop_header799
  %broadcast.splatinsert1131 = insertelement <4 x i64> poison, i64 %218, i32 0
  %broadcast.splat1132 = shufflevector <4 x i64> %broadcast.splatinsert1131, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1133 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1134 = shufflevector <4 x i32> %broadcast.splatinsert1133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1123

vector.body1123:                                  ; preds = %vector.body1123, %vector.ph1124
  %index1125 = phi i64 [ 0, %vector.ph1124 ], [ %index.next1126, %vector.body1123 ]
  %vec.ind1129 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1124 ], [ %vec.ind.next1130, %vector.body1123 ]
  %223 = add nuw nsw <4 x i64> %vec.ind1129, %broadcast.splat1132
  %224 = trunc <4 x i64> %223 to <4 x i32>
  %225 = mul <4 x i32> %broadcast.splat1134, %224
  %226 = add <4 x i32> %225, <i32 3, i32 3, i32 3, i32 3>
  %227 = urem <4 x i32> %226, <i32 1200, i32 1200, i32 1200, i32 1200>
  %228 = sitofp <4 x i32> %227 to <4 x double>
  %229 = fmul fast <4 x double> %228, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %230 = extractelement <4 x i64> %223, i32 0
  %231 = shl i64 %230, 3
  %232 = add nuw nsw i64 %231, %222
  %233 = getelementptr i8, i8* %call, i64 %232
  %234 = bitcast i8* %233 to <4 x double>*
  store <4 x double> %229, <4 x double>* %234, align 8, !alias.scope !94, !noalias !96
  %index.next1126 = add i64 %index1125, 4
  %vec.ind.next1130 = add <4 x i64> %vec.ind1129, <i64 4, i64 4, i64 4, i64 4>
  %235 = icmp eq i64 %index.next1126, %217
  br i1 %235, label %polly.loop_exit807, label %vector.body1123, !llvm.loop !99

polly.loop_exit807:                               ; preds = %vector.body1123, %polly.loop_header805
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar802, %215
  br i1 %exitcond1085.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_header799, %polly.loop_header805
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_header805 ], [ 0, %polly.loop_header799 ]
  %236 = add nuw nsw i64 %polly.indvar808, %218
  %237 = trunc i64 %236 to i32
  %238 = mul i32 %237, %221
  %239 = add i32 %238, 3
  %240 = urem i32 %239, 1200
  %p_conv31.i = sitofp i32 %240 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %241 = shl i64 %236, 3
  %242 = add nuw nsw i64 %241, %222
  %scevgep811 = getelementptr i8, i8* %call, i64 %242
  %scevgep811812 = bitcast i8* %scevgep811 to double*
  store double %p_div33.i, double* %scevgep811812, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar808, %219
  br i1 %exitcond1081.not, label %polly.loop_exit807, label %polly.loop_header805, !llvm.loop !100

polly.loop_header814:                             ; preds = %polly.loop_exit795, %polly.loop_exit822
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit822 ], [ 0, %polly.loop_exit795 ]
  %polly.indvar817 = phi i64 [ %polly.indvar_next818, %polly.loop_exit822 ], [ 0, %polly.loop_exit795 ]
  %smin1074 = call i64 @llvm.smin.i64(i64 %indvars.iv1072, i64 -1168)
  %243 = shl nsw i64 %polly.indvar817, 5
  %244 = add nsw i64 %smin1074, 1199
  br label %polly.loop_header820

polly.loop_exit822:                               ; preds = %polly.loop_exit828
  %polly.indvar_next818 = add nuw nsw i64 %polly.indvar817, 1
  %indvars.iv.next1073 = add nsw i64 %indvars.iv1072, -32
  %exitcond1077.not = icmp eq i64 %polly.indvar_next818, 38
  br i1 %exitcond1077.not, label %polly.loop_header840, label %polly.loop_header814

polly.loop_header820:                             ; preds = %polly.loop_exit828, %polly.loop_header814
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %polly.loop_exit828 ], [ 0, %polly.loop_header814 ]
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_header814 ]
  %245 = mul nsw i64 %polly.indvar823, -32
  %smin1138 = call i64 @llvm.smin.i64(i64 %245, i64 -968)
  %246 = add nsw i64 %smin1138, 1000
  %smin1070 = call i64 @llvm.smin.i64(i64 %indvars.iv1068, i64 -968)
  %247 = shl nsw i64 %polly.indvar823, 5
  %248 = add nsw i64 %smin1070, 999
  br label %polly.loop_header826

polly.loop_exit828:                               ; preds = %polly.loop_exit834
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %indvars.iv.next1069 = add nsw i64 %indvars.iv1068, -32
  %exitcond1076.not = icmp eq i64 %polly.indvar_next824, 32
  br i1 %exitcond1076.not, label %polly.loop_exit822, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_exit834, %polly.loop_header820
  %polly.indvar829 = phi i64 [ 0, %polly.loop_header820 ], [ %polly.indvar_next830, %polly.loop_exit834 ]
  %249 = add nuw nsw i64 %polly.indvar829, %243
  %250 = trunc i64 %249 to i32
  %251 = mul nuw nsw i64 %249, 8000
  %min.iters.check1139 = icmp eq i64 %246, 0
  br i1 %min.iters.check1139, label %polly.loop_header832, label %vector.ph1140

vector.ph1140:                                    ; preds = %polly.loop_header826
  %broadcast.splatinsert1149 = insertelement <4 x i64> poison, i64 %247, i32 0
  %broadcast.splat1150 = shufflevector <4 x i64> %broadcast.splatinsert1149, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1151 = insertelement <4 x i32> poison, i32 %250, i32 0
  %broadcast.splat1152 = shufflevector <4 x i32> %broadcast.splatinsert1151, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %vector.ph1140
  %index1143 = phi i64 [ 0, %vector.ph1140 ], [ %index.next1144, %vector.body1137 ]
  %vec.ind1147 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1140 ], [ %vec.ind.next1148, %vector.body1137 ]
  %252 = add nuw nsw <4 x i64> %vec.ind1147, %broadcast.splat1150
  %253 = trunc <4 x i64> %252 to <4 x i32>
  %254 = mul <4 x i32> %broadcast.splat1152, %253
  %255 = add <4 x i32> %254, <i32 2, i32 2, i32 2, i32 2>
  %256 = urem <4 x i32> %255, <i32 1000, i32 1000, i32 1000, i32 1000>
  %257 = sitofp <4 x i32> %256 to <4 x double>
  %258 = fmul fast <4 x double> %257, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %259 = extractelement <4 x i64> %252, i32 0
  %260 = shl i64 %259, 3
  %261 = add nuw nsw i64 %260, %251
  %262 = getelementptr i8, i8* %call2, i64 %261
  %263 = bitcast i8* %262 to <4 x double>*
  store <4 x double> %258, <4 x double>* %263, align 8, !alias.scope !98, !noalias !101
  %index.next1144 = add i64 %index1143, 4
  %vec.ind.next1148 = add <4 x i64> %vec.ind1147, <i64 4, i64 4, i64 4, i64 4>
  %264 = icmp eq i64 %index.next1144, %246
  br i1 %264, label %polly.loop_exit834, label %vector.body1137, !llvm.loop !102

polly.loop_exit834:                               ; preds = %vector.body1137, %polly.loop_header832
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar829, %244
  br i1 %exitcond1075.not, label %polly.loop_exit828, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_header826, %polly.loop_header832
  %polly.indvar835 = phi i64 [ %polly.indvar_next836, %polly.loop_header832 ], [ 0, %polly.loop_header826 ]
  %265 = add nuw nsw i64 %polly.indvar835, %247
  %266 = trunc i64 %265 to i32
  %267 = mul i32 %266, %250
  %268 = add i32 %267, 2
  %269 = urem i32 %268, 1000
  %p_conv10.i = sitofp i32 %269 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %270 = shl i64 %265, 3
  %271 = add nuw nsw i64 %270, %251
  %scevgep838 = getelementptr i8, i8* %call2, i64 %271
  %scevgep838839 = bitcast i8* %scevgep838 to double*
  store double %p_div12.i, double* %scevgep838839, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar835, %248
  br i1 %exitcond1071.not, label %polly.loop_exit834, label %polly.loop_header832, !llvm.loop !103

polly.loop_header840:                             ; preds = %polly.loop_exit822, %polly.loop_exit848
  %indvars.iv1062 = phi i64 [ %indvars.iv.next1063, %polly.loop_exit848 ], [ 0, %polly.loop_exit822 ]
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_exit848 ], [ 0, %polly.loop_exit822 ]
  %smin1064 = call i64 @llvm.smin.i64(i64 %indvars.iv1062, i64 -1168)
  %272 = shl nsw i64 %polly.indvar843, 5
  %273 = add nsw i64 %smin1064, 1199
  br label %polly.loop_header846

polly.loop_exit848:                               ; preds = %polly.loop_exit854
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %indvars.iv.next1063 = add nsw i64 %indvars.iv1062, -32
  %exitcond1067.not = icmp eq i64 %polly.indvar_next844, 38
  br i1 %exitcond1067.not, label %init_array.exit, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_exit854, %polly.loop_header840
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %274 = mul nsw i64 %polly.indvar849, -32
  %smin1156 = call i64 @llvm.smin.i64(i64 %274, i64 -968)
  %275 = add nsw i64 %smin1156, 1000
  %smin1060 = call i64 @llvm.smin.i64(i64 %indvars.iv1058, i64 -968)
  %276 = shl nsw i64 %polly.indvar849, 5
  %277 = add nsw i64 %smin1060, 999
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, -32
  %exitcond1066.not = icmp eq i64 %polly.indvar_next850, 32
  br i1 %exitcond1066.not, label %polly.loop_exit848, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %polly.indvar855 = phi i64 [ 0, %polly.loop_header846 ], [ %polly.indvar_next856, %polly.loop_exit860 ]
  %278 = add nuw nsw i64 %polly.indvar855, %272
  %279 = trunc i64 %278 to i32
  %280 = mul nuw nsw i64 %278, 8000
  %min.iters.check1157 = icmp eq i64 %275, 0
  br i1 %min.iters.check1157, label %polly.loop_header858, label %vector.ph1158

vector.ph1158:                                    ; preds = %polly.loop_header852
  %broadcast.splatinsert1167 = insertelement <4 x i64> poison, i64 %276, i32 0
  %broadcast.splat1168 = shufflevector <4 x i64> %broadcast.splatinsert1167, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1169 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1170 = shufflevector <4 x i32> %broadcast.splatinsert1169, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %vector.ph1158
  %index1161 = phi i64 [ 0, %vector.ph1158 ], [ %index.next1162, %vector.body1155 ]
  %vec.ind1165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1158 ], [ %vec.ind.next1166, %vector.body1155 ]
  %281 = add nuw nsw <4 x i64> %vec.ind1165, %broadcast.splat1168
  %282 = trunc <4 x i64> %281 to <4 x i32>
  %283 = mul <4 x i32> %broadcast.splat1170, %282
  %284 = add <4 x i32> %283, <i32 1, i32 1, i32 1, i32 1>
  %285 = urem <4 x i32> %284, <i32 1200, i32 1200, i32 1200, i32 1200>
  %286 = sitofp <4 x i32> %285 to <4 x double>
  %287 = fmul fast <4 x double> %286, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %288 = extractelement <4 x i64> %281, i32 0
  %289 = shl i64 %288, 3
  %290 = add nuw nsw i64 %289, %280
  %291 = getelementptr i8, i8* %call1, i64 %290
  %292 = bitcast i8* %291 to <4 x double>*
  store <4 x double> %287, <4 x double>* %292, align 8, !alias.scope !97, !noalias !104
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1166 = add <4 x i64> %vec.ind1165, <i64 4, i64 4, i64 4, i64 4>
  %293 = icmp eq i64 %index.next1162, %275
  br i1 %293, label %polly.loop_exit860, label %vector.body1155, !llvm.loop !105

polly.loop_exit860:                               ; preds = %vector.body1155, %polly.loop_header858
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar855, %273
  br i1 %exitcond1065.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_header852, %polly.loop_header858
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_header858 ], [ 0, %polly.loop_header852 ]
  %294 = add nuw nsw i64 %polly.indvar861, %276
  %295 = trunc i64 %294 to i32
  %296 = mul i32 %295, %279
  %297 = add i32 %296, 1
  %298 = urem i32 %297, 1200
  %p_conv.i = sitofp i32 %298 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %299 = shl i64 %294, 3
  %300 = add nuw nsw i64 %299, %280
  %scevgep865 = getelementptr i8, i8* %call1, i64 %300
  %scevgep865866 = bitcast i8* %scevgep865 to double*
  store double %p_div.i, double* %scevgep865866, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar861, %277
  br i1 %exitcond1061.not, label %polly.loop_exit860, label %polly.loop_header858, !llvm.loop !106
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

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
!21 = distinct !{!"A"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 50}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 128}
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
!48 = !{!"llvm.loop.tile.size", i32 64}
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
!72 = !{!63, !67, !68}
!73 = !{!63, !66, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call1"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !78, !79}
!83 = !{!74, !77, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call1"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !88, !89}
!93 = !{!84, !87, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !71, !13}
!101 = !{!97, !94}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !71, !13}
!104 = !{!98, !94}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !71, !13}
