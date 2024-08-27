; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1812.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1812.c"
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
  %call848 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1700 = bitcast i8* %call1 to double*
  %polly.access.call1709 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2710 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1709, %call2
  %polly.access.call2729 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2729, %call1
  %2 = or i1 %0, %1
  %polly.access.call749 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call749, %call2
  %4 = icmp ule i8* %polly.access.call2729, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call749, %call1
  %8 = icmp ule i8* %polly.access.call1709, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header822, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1125 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1124 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1123 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1122 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1122, %scevgep1125
  %bound1 = icmp ult i8* %scevgep1124, %scevgep1123
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
  br i1 %exitcond18.not.i, label %vector.ph1129, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1129:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1136 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1137 = shufflevector <4 x i64> %broadcast.splatinsert1136, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1128

vector.body1128:                                  ; preds = %vector.body1128, %vector.ph1129
  %index1130 = phi i64 [ 0, %vector.ph1129 ], [ %index.next1131, %vector.body1128 ]
  %vec.ind1134 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1129 ], [ %vec.ind.next1135, %vector.body1128 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1134, %broadcast.splat1137
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call848, i64 %indvars.iv7.i, i64 %index1130
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1131 = add i64 %index1130, 4
  %vec.ind.next1135 = add <4 x i64> %vec.ind1134, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1131, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1128, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1128
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1129, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit883
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start495, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1191 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1191, label %for.body3.i46.preheader1325, label %vector.ph1192

vector.ph1192:                                    ; preds = %for.body3.i46.preheader
  %n.vec1194 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %vector.ph1192
  %index1195 = phi i64 [ 0, %vector.ph1192 ], [ %index.next1196, %vector.body1190 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call848, i64 %indvars.iv21.i, i64 %index1195
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1196 = add i64 %index1195, 4
  %46 = icmp eq i64 %index.next1196, %n.vec1194
  br i1 %46, label %middle.block1188, label %vector.body1190, !llvm.loop !18

middle.block1188:                                 ; preds = %vector.body1190
  %cmp.n1198 = icmp eq i64 %indvars.iv21.i, %n.vec1194
  br i1 %cmp.n1198, label %for.inc6.i, label %for.body3.i46.preheader1325

for.body3.i46.preheader1325:                      ; preds = %for.body3.i46.preheader, %middle.block1188
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1194, %middle.block1188 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1325, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1325 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call848, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1188, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !22
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !22
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call848, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !23

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !33

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting496
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start292, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1233 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1233, label %for.body3.i60.preheader1323, label %vector.ph1234

vector.ph1234:                                    ; preds = %for.body3.i60.preheader
  %n.vec1236 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.body1232, %vector.ph1234
  %index1237 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1238, %vector.body1232 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call848, i64 %indvars.iv21.i52, i64 %index1237
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1241 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1241, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1238 = add i64 %index1237, 4
  %57 = icmp eq i64 %index.next1238, %n.vec1236
  br i1 %57, label %middle.block1230, label %vector.body1232, !llvm.loop !57

middle.block1230:                                 ; preds = %vector.body1232
  %cmp.n1240 = icmp eq i64 %indvars.iv21.i52, %n.vec1236
  br i1 %cmp.n1240, label %for.inc6.i63, label %for.body3.i60.preheader1323

for.body3.i60.preheader1323:                      ; preds = %for.body3.i60.preheader, %middle.block1230
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1236, %middle.block1230 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1323, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1323 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call848, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1230, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !22
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !22
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call848, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !23

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !33

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting293
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1278 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1278, label %for.body3.i99.preheader1321, label %vector.ph1279

vector.ph1279:                                    ; preds = %for.body3.i99.preheader
  %n.vec1281 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1277

vector.body1277:                                  ; preds = %vector.body1277, %vector.ph1279
  %index1282 = phi i64 [ 0, %vector.ph1279 ], [ %index.next1283, %vector.body1277 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call848, i64 %indvars.iv21.i91, i64 %index1282
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1286 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1286, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1283 = add i64 %index1282, 4
  %68 = icmp eq i64 %index.next1283, %n.vec1281
  br i1 %68, label %middle.block1275, label %vector.body1277, !llvm.loop !59

middle.block1275:                                 ; preds = %vector.body1277
  %cmp.n1285 = icmp eq i64 %indvars.iv21.i91, %n.vec1281
  br i1 %cmp.n1285, label %for.inc6.i102, label %for.body3.i99.preheader1321

for.body3.i99.preheader1321:                      ; preds = %for.body3.i99.preheader, %middle.block1275
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1281, %middle.block1275 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1321, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1321 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call848, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1275, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !22
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !22
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call848, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !23

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !33

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !45

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !61
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call848, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !63

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !64

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1290 = phi i64 [ %indvar.next1291, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1290, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1292 = icmp ult i64 %88, 4
  br i1 %min.iters.check1292, label %polly.loop_header192.preheader, label %vector.ph1293

vector.ph1293:                                    ; preds = %polly.loop_header
  %n.vec1295 = and i64 %88, -4
  br label %vector.body1289

vector.body1289:                                  ; preds = %vector.body1289, %vector.ph1293
  %index1296 = phi i64 [ 0, %vector.ph1293 ], [ %index.next1297, %vector.body1289 ]
  %90 = shl nuw nsw i64 %index1296, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1300 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1300, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1297 = add i64 %index1296, 4
  %95 = icmp eq i64 %index.next1297, %n.vec1295
  br i1 %95, label %middle.block1287, label %vector.body1289, !llvm.loop !72

middle.block1287:                                 ; preds = %vector.body1289
  %cmp.n1299 = icmp eq i64 %88, %n.vec1295
  br i1 %cmp.n1299, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1287
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1295, %middle.block1287 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1287
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1291 = add i64 %indvar1290, 1
  br i1 %exitcond1036.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1035.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1034.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2710, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1033.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nuw nsw i64 %polly.indvar219, 20
  %98 = udiv i64 %polly.indvar219, 5
  %99 = mul nuw nsw i64 %polly.indvar219, 20
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 20
  %exitcond1032.not = icmp eq i64 %polly.indvar_next220, 60
  br i1 %exitcond1032.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv1021 = phi i64 [ %indvars.iv.next1022, %polly.loop_exit230 ], [ %indvars.iv, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %100 = mul nsw i64 %polly.indvar225, -100
  %101 = add i64 %97, %100
  %102 = mul nuw nsw i64 %polly.indvar225, 100
  %103 = sub nsw i64 %99, %102
  %104 = add nuw nsw i64 %102, 100
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit259
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1022 = add nsw i64 %indvars.iv1021, -100
  %exitcond1031.not = icmp eq i64 %polly.indvar225, %98
  br i1 %exitcond1031.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit259, %polly.loop_header222
  %indvars.iv1023 = phi i64 [ %indvars.iv.next1024, %polly.loop_exit259 ], [ %indvars.iv1021, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit259 ], [ 0, %polly.loop_header222 ]
  %105 = add i64 %101, %polly.indvar231
  %smin1304 = call i64 @llvm.smin.i64(i64 %105, i64 99)
  %106 = add nsw i64 %smin1304, 1
  %smin1027 = call i64 @llvm.smin.i64(i64 %indvars.iv1023, i64 99)
  %107 = add nsw i64 %polly.indvar231, %103
  %polly.loop_guard1111 = icmp sgt i64 %107, -1
  %108 = add nuw nsw i64 %polly.indvar231, %99
  %.not = icmp ult i64 %108, %104
  %polly.access.mul.call1251 = mul nuw nsw i64 %108, 1000
  br i1 %polly.loop_guard1111, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %109 = add nuw nsw i64 %polly.indvar243.us, %102
  %polly.access.mul.call1247.us = mul nuw nsw i64 %109, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %polly.access.mul.call1247.us, %polly.indvar237.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar243.us, %smin1027
  br i1 %exitcond1025.not, label %polly.cond.loopexit.us, label %polly.loop_header240.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1252.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.call1251
  %polly.access.call1253.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1252.us
  %polly.access.call1253.load.us = load double, double* %polly.access.call1253.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1255.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %107
  %polly.access.Packed_MemRef_call1256.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.us
  store double %polly.access.call1253.load.us, double* %polly.access.Packed_MemRef_call1256.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar_next238.us, 1000
  br i1 %exitcond1026.not, label %polly.loop_header257.preheader, label %polly.loop_header234.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header240.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %.not, label %polly.loop_exit259, label %polly.loop_header234

polly.loop_exit259:                               ; preds = %polly.loop_exit266.loopexit.us, %polly.loop_header228.split, %polly.loop_header257.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1024 = add nsw i64 %indvars.iv1023, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar_next232, 20
  br i1 %exitcond1030.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_header234
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_header234 ], [ 0, %polly.loop_header228.split ]
  %polly.access.add.call1252 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.call1251
  %polly.access.call1253 = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1252
  %polly.access.call1253.load = load double, double* %polly.access.call1253, align 8, !alias.scope !68, !noalias !76
  %polly.access.mul.Packed_MemRef_call1254 = mul nuw nsw i64 %polly.indvar237, 1200
  %polly.access.add.Packed_MemRef_call1255 = add nsw i64 %polly.access.mul.Packed_MemRef_call1254, %107
  %polly.access.Packed_MemRef_call1256 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255
  store double %polly.access.call1253.load, double* %polly.access.Packed_MemRef_call1256, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next238, 1000
  br i1 %exitcond.not, label %polly.loop_header257.preheader, label %polly.loop_header234

polly.loop_header257.preheader:                   ; preds = %polly.loop_header234, %polly.merge.us
  %110 = mul nuw nsw i64 %108, 9600
  br i1 %polly.loop_guard1111, label %polly.loop_header257.us, label %polly.loop_exit259

polly.loop_header257.us:                          ; preds = %polly.loop_header257.preheader, %polly.loop_exit266.loopexit.us
  %polly.indvar260.us = phi i64 [ %polly.indvar_next261.us, %polly.loop_exit266.loopexit.us ], [ 0, %polly.loop_header257.preheader ]
  %polly.access.mul.Packed_MemRef_call1271.us = mul nuw nsw i64 %polly.indvar260.us, 1200
  %polly.access.add.Packed_MemRef_call2276.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1271.us, %108
  %polly.access.Packed_MemRef_call2277.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2276.us
  %_p_scalar_278.us = load double, double* %polly.access.Packed_MemRef_call2277.us, align 8
  %polly.access.add.Packed_MemRef_call1284.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1271.us, %107
  %polly.access.Packed_MemRef_call1285.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call1285.us, align 8
  %min.iters.check1305 = icmp ult i64 %106, 4
  br i1 %min.iters.check1305, label %polly.loop_header264.us.preheader, label %vector.ph1306

vector.ph1306:                                    ; preds = %polly.loop_header257.us
  %n.vec1308 = and i64 %106, -4
  %broadcast.splatinsert1314 = insertelement <4 x double> poison, double %_p_scalar_278.us, i32 0
  %broadcast.splat1315 = shufflevector <4 x double> %broadcast.splatinsert1314, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1317 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1318 = shufflevector <4 x double> %broadcast.splatinsert1317, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1303

vector.body1303:                                  ; preds = %vector.body1303, %vector.ph1306
  %index1309 = phi i64 [ 0, %vector.ph1306 ], [ %index.next1310, %vector.body1303 ]
  %111 = add nuw nsw i64 %index1309, %102
  %112 = add nuw nsw i64 %index1309, %polly.access.mul.Packed_MemRef_call1271.us
  %113 = getelementptr double, double* %Packed_MemRef_call1, i64 %112
  %114 = bitcast double* %113 to <4 x double>*
  %wide.load1313 = load <4 x double>, <4 x double>* %114, align 8
  %115 = fmul fast <4 x double> %broadcast.splat1315, %wide.load1313
  %116 = add nuw nsw i64 %111, %polly.access.mul.Packed_MemRef_call1271.us
  %117 = getelementptr double, double* %Packed_MemRef_call2, i64 %116
  %118 = bitcast double* %117 to <4 x double>*
  %wide.load1316 = load <4 x double>, <4 x double>* %118, align 8
  %119 = fmul fast <4 x double> %broadcast.splat1318, %wide.load1316
  %120 = shl i64 %111, 3
  %121 = add nuw nsw i64 %120, %110
  %122 = getelementptr i8, i8* %call, i64 %121
  %123 = bitcast i8* %122 to <4 x double>*
  %wide.load1319 = load <4 x double>, <4 x double>* %123, align 8, !alias.scope !65, !noalias !67
  %124 = fadd fast <4 x double> %119, %115
  %125 = fmul fast <4 x double> %124, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %126 = fadd fast <4 x double> %125, %wide.load1319
  %127 = bitcast i8* %122 to <4 x double>*
  store <4 x double> %126, <4 x double>* %127, align 8, !alias.scope !65, !noalias !67
  %index.next1310 = add i64 %index1309, 4
  %128 = icmp eq i64 %index.next1310, %n.vec1308
  br i1 %128, label %middle.block1301, label %vector.body1303, !llvm.loop !77

middle.block1301:                                 ; preds = %vector.body1303
  %cmp.n1312 = icmp eq i64 %106, %n.vec1308
  br i1 %cmp.n1312, label %polly.loop_exit266.loopexit.us, label %polly.loop_header264.us.preheader

polly.loop_header264.us.preheader:                ; preds = %polly.loop_header257.us, %middle.block1301
  %polly.indvar268.us.ph = phi i64 [ 0, %polly.loop_header257.us ], [ %n.vec1308, %middle.block1301 ]
  br label %polly.loop_header264.us

polly.loop_header264.us:                          ; preds = %polly.loop_header264.us.preheader, %polly.loop_header264.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_header264.us ], [ %polly.indvar268.us.ph, %polly.loop_header264.us.preheader ]
  %129 = add nuw nsw i64 %polly.indvar268.us, %102
  %polly.access.add.Packed_MemRef_call1272.us = add nuw nsw i64 %polly.indvar268.us, %polly.access.mul.Packed_MemRef_call1271.us
  %polly.access.Packed_MemRef_call1273.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1272.us
  %_p_scalar_274.us = load double, double* %polly.access.Packed_MemRef_call1273.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_278.us, %_p_scalar_274.us
  %polly.access.add.Packed_MemRef_call2280.us = add nuw nsw i64 %129, %polly.access.mul.Packed_MemRef_call1271.us
  %polly.access.Packed_MemRef_call2281.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call2281.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %130 = shl i64 %129, 3
  %131 = add nuw nsw i64 %130, %110
  %scevgep287.us = getelementptr i8, i8* %call, i64 %131
  %scevgep287288.us = bitcast i8* %scevgep287.us to double*
  %_p_scalar_289.us = load double, double* %scevgep287288.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_289.us
  store double %p_add42.i118.us, double* %scevgep287288.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar268.us, %smin1027
  br i1 %exitcond1028.not, label %polly.loop_exit266.loopexit.us, label %polly.loop_header264.us, !llvm.loop !78

polly.loop_exit266.loopexit.us:                   ; preds = %polly.loop_header264.us, %middle.block1301
  %polly.indvar_next261.us = add nuw nsw i64 %polly.indvar260.us, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next261.us, 1000
  br i1 %exitcond1029.not, label %polly.loop_exit259, label %polly.loop_header257.us

polly.start292:                                   ; preds = %kernel_syr2k.exit
  %malloccall294 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall296 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header380

polly.exiting293:                                 ; preds = %polly.loop_exit421
  tail call void @free(i8* %malloccall294)
  tail call void @free(i8* %malloccall296)
  br label %kernel_syr2k.exit90

polly.loop_header380:                             ; preds = %polly.loop_exit388, %polly.start292
  %indvar1245 = phi i64 [ %indvar.next1246, %polly.loop_exit388 ], [ 0, %polly.start292 ]
  %polly.indvar383 = phi i64 [ %polly.indvar_next384, %polly.loop_exit388 ], [ 1, %polly.start292 ]
  %132 = add i64 %indvar1245, 1
  %133 = mul nuw nsw i64 %polly.indvar383, 9600
  %scevgep392 = getelementptr i8, i8* %call, i64 %133
  %min.iters.check1247 = icmp ult i64 %132, 4
  br i1 %min.iters.check1247, label %polly.loop_header386.preheader, label %vector.ph1248

vector.ph1248:                                    ; preds = %polly.loop_header380
  %n.vec1250 = and i64 %132, -4
  br label %vector.body1244

vector.body1244:                                  ; preds = %vector.body1244, %vector.ph1248
  %index1251 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1252, %vector.body1244 ]
  %134 = shl nuw nsw i64 %index1251, 3
  %135 = getelementptr i8, i8* %scevgep392, i64 %134
  %136 = bitcast i8* %135 to <4 x double>*
  %wide.load1255 = load <4 x double>, <4 x double>* %136, align 8, !alias.scope !79, !noalias !81
  %137 = fmul fast <4 x double> %wide.load1255, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %138 = bitcast i8* %135 to <4 x double>*
  store <4 x double> %137, <4 x double>* %138, align 8, !alias.scope !79, !noalias !81
  %index.next1252 = add i64 %index1251, 4
  %139 = icmp eq i64 %index.next1252, %n.vec1250
  br i1 %139, label %middle.block1242, label %vector.body1244, !llvm.loop !86

middle.block1242:                                 ; preds = %vector.body1244
  %cmp.n1254 = icmp eq i64 %132, %n.vec1250
  br i1 %cmp.n1254, label %polly.loop_exit388, label %polly.loop_header386.preheader

polly.loop_header386.preheader:                   ; preds = %polly.loop_header380, %middle.block1242
  %polly.indvar389.ph = phi i64 [ 0, %polly.loop_header380 ], [ %n.vec1250, %middle.block1242 ]
  br label %polly.loop_header386

polly.loop_exit388:                               ; preds = %polly.loop_header386, %middle.block1242
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar_next384, 1200
  %indvar.next1246 = add i64 %indvar1245, 1
  br i1 %exitcond1056.not, label %polly.loop_header396.preheader, label %polly.loop_header380

polly.loop_header396.preheader:                   ; preds = %polly.loop_exit388
  %Packed_MemRef_call1295 = bitcast i8* %malloccall294 to double*
  %Packed_MemRef_call2297 = bitcast i8* %malloccall296 to double*
  br label %polly.loop_header396

polly.loop_header386:                             ; preds = %polly.loop_header386.preheader, %polly.loop_header386
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_header386 ], [ %polly.indvar389.ph, %polly.loop_header386.preheader ]
  %140 = shl nuw nsw i64 %polly.indvar389, 3
  %scevgep393 = getelementptr i8, i8* %scevgep392, i64 %140
  %scevgep393394 = bitcast i8* %scevgep393 to double*
  %_p_scalar_395 = load double, double* %scevgep393394, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_395, 1.200000e+00
  store double %p_mul.i57, double* %scevgep393394, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next390, %polly.indvar383
  br i1 %exitcond1055.not, label %polly.loop_exit388, label %polly.loop_header386, !llvm.loop !87

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_exit404
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 0, %polly.loop_header396.preheader ]
  %polly.access.mul.Packed_MemRef_call2297 = mul nuw nsw i64 %polly.indvar399, 1200
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_header402
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next400, 1000
  br i1 %exitcond1054.not, label %polly.loop_header412, label %polly.loop_header396

polly.loop_header402:                             ; preds = %polly.loop_header402, %polly.loop_header396
  %polly.indvar405 = phi i64 [ 0, %polly.loop_header396 ], [ %polly.indvar_next406, %polly.loop_header402 ]
  %polly.access.mul.call2409 = mul nuw nsw i64 %polly.indvar405, 1000
  %polly.access.add.call2410 = add nuw nsw i64 %polly.access.mul.call2409, %polly.indvar399
  %polly.access.call2411 = getelementptr double, double* %polly.access.cast.call2710, i64 %polly.access.add.call2410
  %polly.access.call2411.load = load double, double* %polly.access.call2411, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call2297 = add nuw nsw i64 %polly.indvar405, %polly.access.mul.Packed_MemRef_call2297
  %polly.access.Packed_MemRef_call2297 = getelementptr double, double* %Packed_MemRef_call2297, i64 %polly.access.add.Packed_MemRef_call2297
  store double %polly.access.call2411.load, double* %polly.access.Packed_MemRef_call2297, align 8
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next406, 1200
  br i1 %exitcond1053.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header412:                             ; preds = %polly.loop_exit404, %polly.loop_exit421
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit421 ], [ 0, %polly.loop_exit404 ]
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit421 ], [ 0, %polly.loop_exit404 ]
  %141 = mul nuw nsw i64 %polly.indvar415, 20
  %142 = udiv i64 %polly.indvar415, 5
  %143 = mul nuw nsw i64 %polly.indvar415, 20
  br label %polly.loop_header419

polly.loop_exit421:                               ; preds = %polly.loop_exit427
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 20
  %exitcond1052.not = icmp eq i64 %polly.indvar_next416, 60
  br i1 %exitcond1052.not, label %polly.exiting293, label %polly.loop_header412

polly.loop_header419:                             ; preds = %polly.loop_exit427, %polly.loop_header412
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit427 ], [ %indvars.iv1038, %polly.loop_header412 ]
  %polly.indvar422 = phi i64 [ %polly.indvar_next423, %polly.loop_exit427 ], [ 0, %polly.loop_header412 ]
  %144 = mul nsw i64 %polly.indvar422, -100
  %145 = add i64 %141, %144
  %146 = mul nuw nsw i64 %polly.indvar422, 100
  %147 = sub nsw i64 %143, %146
  %148 = add nuw nsw i64 %146, 100
  br label %polly.loop_header425

polly.loop_exit427:                               ; preds = %polly.loop_exit462
  %polly.indvar_next423 = add nuw nsw i64 %polly.indvar422, 1
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -100
  %exitcond1051.not = icmp eq i64 %polly.indvar422, %142
  br i1 %exitcond1051.not, label %polly.loop_exit421, label %polly.loop_header419

polly.loop_header425:                             ; preds = %polly.loop_exit462, %polly.loop_header419
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit462 ], [ %indvars.iv1040, %polly.loop_header419 ]
  %polly.indvar428 = phi i64 [ %polly.indvar_next429, %polly.loop_exit462 ], [ 0, %polly.loop_header419 ]
  %149 = add i64 %145, %polly.indvar428
  %smin1259 = call i64 @llvm.smin.i64(i64 %149, i64 99)
  %150 = add nsw i64 %smin1259, 1
  %smin1047 = call i64 @llvm.smin.i64(i64 %indvars.iv1042, i64 99)
  %151 = add nsw i64 %polly.indvar428, %147
  %polly.loop_guard4411112 = icmp sgt i64 %151, -1
  %152 = add nuw nsw i64 %polly.indvar428, %143
  %.not902 = icmp ult i64 %152, %148
  %polly.access.mul.call1454 = mul nuw nsw i64 %152, 1000
  br i1 %polly.loop_guard4411112, label %polly.loop_header431.us, label %polly.loop_header425.split

polly.loop_header431.us:                          ; preds = %polly.loop_header425, %polly.merge450.us
  %polly.indvar434.us = phi i64 [ %polly.indvar_next435.us, %polly.merge450.us ], [ 0, %polly.loop_header425 ]
  %polly.access.mul.Packed_MemRef_call1295.us = mul nuw nsw i64 %polly.indvar434.us, 1200
  br label %polly.loop_header438.us

polly.loop_header438.us:                          ; preds = %polly.loop_header431.us, %polly.loop_header438.us
  %polly.indvar442.us = phi i64 [ %polly.indvar_next443.us, %polly.loop_header438.us ], [ 0, %polly.loop_header431.us ]
  %153 = add nuw nsw i64 %polly.indvar442.us, %146
  %polly.access.mul.call1446.us = mul nuw nsw i64 %153, 1000
  %polly.access.add.call1447.us = add nuw nsw i64 %polly.access.mul.call1446.us, %polly.indvar434.us
  %polly.access.call1448.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1447.us
  %polly.access.call1448.load.us = load double, double* %polly.access.call1448.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1295.us = add nuw nsw i64 %polly.indvar442.us, %polly.access.mul.Packed_MemRef_call1295.us
  %polly.access.Packed_MemRef_call1295.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295.us
  store double %polly.access.call1448.load.us, double* %polly.access.Packed_MemRef_call1295.us, align 8
  %polly.indvar_next443.us = add nuw nsw i64 %polly.indvar442.us, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar442.us, %smin1047
  br i1 %exitcond1045.not, label %polly.cond449.loopexit.us, label %polly.loop_header438.us

polly.then451.us:                                 ; preds = %polly.cond449.loopexit.us
  %polly.access.add.call1455.us = add nuw nsw i64 %polly.indvar434.us, %polly.access.mul.call1454
  %polly.access.call1456.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1455.us
  %polly.access.call1456.load.us = load double, double* %polly.access.call1456.us, align 8, !alias.scope !82, !noalias !89
  %polly.access.add.Packed_MemRef_call1295458.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1295.us, %151
  %polly.access.Packed_MemRef_call1295459.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295458.us
  store double %polly.access.call1456.load.us, double* %polly.access.Packed_MemRef_call1295459.us, align 8
  br label %polly.merge450.us

polly.merge450.us:                                ; preds = %polly.then451.us, %polly.cond449.loopexit.us
  %polly.indvar_next435.us = add nuw nsw i64 %polly.indvar434.us, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next435.us, 1000
  br i1 %exitcond1046.not, label %polly.loop_header460.preheader, label %polly.loop_header431.us

polly.cond449.loopexit.us:                        ; preds = %polly.loop_header438.us
  br i1 %.not902, label %polly.merge450.us, label %polly.then451.us

polly.loop_header425.split:                       ; preds = %polly.loop_header425
  br i1 %.not902, label %polly.loop_exit462, label %polly.loop_header431

polly.loop_exit462:                               ; preds = %polly.loop_exit469.loopexit.us, %polly.loop_header425.split, %polly.loop_header460.preheader
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next429, 20
  br i1 %exitcond1050.not, label %polly.loop_exit427, label %polly.loop_header425

polly.loop_header431:                             ; preds = %polly.loop_header425.split, %polly.loop_header431
  %polly.indvar434 = phi i64 [ %polly.indvar_next435, %polly.loop_header431 ], [ 0, %polly.loop_header425.split ]
  %polly.access.add.call1455 = add nuw nsw i64 %polly.indvar434, %polly.access.mul.call1454
  %polly.access.call1456 = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1455
  %polly.access.call1456.load = load double, double* %polly.access.call1456, align 8, !alias.scope !82, !noalias !89
  %polly.access.mul.Packed_MemRef_call1295457 = mul nuw nsw i64 %polly.indvar434, 1200
  %polly.access.add.Packed_MemRef_call1295458 = add nsw i64 %polly.access.mul.Packed_MemRef_call1295457, %151
  %polly.access.Packed_MemRef_call1295459 = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295458
  store double %polly.access.call1456.load, double* %polly.access.Packed_MemRef_call1295459, align 8
  %polly.indvar_next435 = add nuw nsw i64 %polly.indvar434, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next435, 1000
  br i1 %exitcond1037.not, label %polly.loop_header460.preheader, label %polly.loop_header431

polly.loop_header460.preheader:                   ; preds = %polly.loop_header431, %polly.merge450.us
  %154 = mul nuw nsw i64 %152, 9600
  br i1 %polly.loop_guard4411112, label %polly.loop_header460.us, label %polly.loop_exit462

polly.loop_header460.us:                          ; preds = %polly.loop_header460.preheader, %polly.loop_exit469.loopexit.us
  %polly.indvar463.us = phi i64 [ %polly.indvar_next464.us, %polly.loop_exit469.loopexit.us ], [ 0, %polly.loop_header460.preheader ]
  %polly.access.mul.Packed_MemRef_call1295474.us = mul nuw nsw i64 %polly.indvar463.us, 1200
  %polly.access.add.Packed_MemRef_call2297479.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1295474.us, %152
  %polly.access.Packed_MemRef_call2297480.us = getelementptr double, double* %Packed_MemRef_call2297, i64 %polly.access.add.Packed_MemRef_call2297479.us
  %_p_scalar_481.us = load double, double* %polly.access.Packed_MemRef_call2297480.us, align 8
  %polly.access.add.Packed_MemRef_call1295487.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1295474.us, %151
  %polly.access.Packed_MemRef_call1295488.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295487.us
  %_p_scalar_489.us = load double, double* %polly.access.Packed_MemRef_call1295488.us, align 8
  %min.iters.check1260 = icmp ult i64 %150, 4
  br i1 %min.iters.check1260, label %polly.loop_header467.us.preheader, label %vector.ph1261

vector.ph1261:                                    ; preds = %polly.loop_header460.us
  %n.vec1263 = and i64 %150, -4
  %broadcast.splatinsert1269 = insertelement <4 x double> poison, double %_p_scalar_481.us, i32 0
  %broadcast.splat1270 = shufflevector <4 x double> %broadcast.splatinsert1269, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1272 = insertelement <4 x double> poison, double %_p_scalar_489.us, i32 0
  %broadcast.splat1273 = shufflevector <4 x double> %broadcast.splatinsert1272, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1258

vector.body1258:                                  ; preds = %vector.body1258, %vector.ph1261
  %index1264 = phi i64 [ 0, %vector.ph1261 ], [ %index.next1265, %vector.body1258 ]
  %155 = add nuw nsw i64 %index1264, %146
  %156 = add nuw nsw i64 %index1264, %polly.access.mul.Packed_MemRef_call1295474.us
  %157 = getelementptr double, double* %Packed_MemRef_call1295, i64 %156
  %158 = bitcast double* %157 to <4 x double>*
  %wide.load1268 = load <4 x double>, <4 x double>* %158, align 8
  %159 = fmul fast <4 x double> %broadcast.splat1270, %wide.load1268
  %160 = add nuw nsw i64 %155, %polly.access.mul.Packed_MemRef_call1295474.us
  %161 = getelementptr double, double* %Packed_MemRef_call2297, i64 %160
  %162 = bitcast double* %161 to <4 x double>*
  %wide.load1271 = load <4 x double>, <4 x double>* %162, align 8
  %163 = fmul fast <4 x double> %broadcast.splat1273, %wide.load1271
  %164 = shl i64 %155, 3
  %165 = add nuw nsw i64 %164, %154
  %166 = getelementptr i8, i8* %call, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  %wide.load1274 = load <4 x double>, <4 x double>* %167, align 8, !alias.scope !79, !noalias !81
  %168 = fadd fast <4 x double> %163, %159
  %169 = fmul fast <4 x double> %168, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %170 = fadd fast <4 x double> %169, %wide.load1274
  %171 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %170, <4 x double>* %171, align 8, !alias.scope !79, !noalias !81
  %index.next1265 = add i64 %index1264, 4
  %172 = icmp eq i64 %index.next1265, %n.vec1263
  br i1 %172, label %middle.block1256, label %vector.body1258, !llvm.loop !90

middle.block1256:                                 ; preds = %vector.body1258
  %cmp.n1267 = icmp eq i64 %150, %n.vec1263
  br i1 %cmp.n1267, label %polly.loop_exit469.loopexit.us, label %polly.loop_header467.us.preheader

polly.loop_header467.us.preheader:                ; preds = %polly.loop_header460.us, %middle.block1256
  %polly.indvar471.us.ph = phi i64 [ 0, %polly.loop_header460.us ], [ %n.vec1263, %middle.block1256 ]
  br label %polly.loop_header467.us

polly.loop_header467.us:                          ; preds = %polly.loop_header467.us.preheader, %polly.loop_header467.us
  %polly.indvar471.us = phi i64 [ %polly.indvar_next472.us, %polly.loop_header467.us ], [ %polly.indvar471.us.ph, %polly.loop_header467.us.preheader ]
  %173 = add nuw nsw i64 %polly.indvar471.us, %146
  %polly.access.add.Packed_MemRef_call1295475.us = add nuw nsw i64 %polly.indvar471.us, %polly.access.mul.Packed_MemRef_call1295474.us
  %polly.access.Packed_MemRef_call1295476.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295475.us
  %_p_scalar_477.us = load double, double* %polly.access.Packed_MemRef_call1295476.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_481.us, %_p_scalar_477.us
  %polly.access.add.Packed_MemRef_call2297483.us = add nuw nsw i64 %173, %polly.access.mul.Packed_MemRef_call1295474.us
  %polly.access.Packed_MemRef_call2297484.us = getelementptr double, double* %Packed_MemRef_call2297, i64 %polly.access.add.Packed_MemRef_call2297483.us
  %_p_scalar_485.us = load double, double* %polly.access.Packed_MemRef_call2297484.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_489.us, %_p_scalar_485.us
  %174 = shl i64 %173, 3
  %175 = add nuw nsw i64 %174, %154
  %scevgep490.us = getelementptr i8, i8* %call, i64 %175
  %scevgep490491.us = bitcast i8* %scevgep490.us to double*
  %_p_scalar_492.us = load double, double* %scevgep490491.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_492.us
  store double %p_add42.i79.us, double* %scevgep490491.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next472.us = add nuw nsw i64 %polly.indvar471.us, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar471.us, %smin1047
  br i1 %exitcond1048.not, label %polly.loop_exit469.loopexit.us, label %polly.loop_header467.us, !llvm.loop !91

polly.loop_exit469.loopexit.us:                   ; preds = %polly.loop_header467.us, %middle.block1256
  %polly.indvar_next464.us = add nuw nsw i64 %polly.indvar463.us, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next464.us, 1000
  br i1 %exitcond1049.not, label %polly.loop_exit462, label %polly.loop_header460.us

polly.start495:                                   ; preds = %init_array.exit
  %malloccall497 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  %malloccall499 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header583

polly.exiting496:                                 ; preds = %polly.loop_exit624
  tail call void @free(i8* %malloccall497)
  tail call void @free(i8* %malloccall499)
  br label %kernel_syr2k.exit

polly.loop_header583:                             ; preds = %polly.loop_exit591, %polly.start495
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit591 ], [ 0, %polly.start495 ]
  %polly.indvar586 = phi i64 [ %polly.indvar_next587, %polly.loop_exit591 ], [ 1, %polly.start495 ]
  %176 = add i64 %indvar, 1
  %177 = mul nuw nsw i64 %polly.indvar586, 9600
  %scevgep595 = getelementptr i8, i8* %call, i64 %177
  %min.iters.check1202 = icmp ult i64 %176, 4
  br i1 %min.iters.check1202, label %polly.loop_header589.preheader, label %vector.ph1203

vector.ph1203:                                    ; preds = %polly.loop_header583
  %n.vec1205 = and i64 %176, -4
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %vector.ph1203
  %index1206 = phi i64 [ 0, %vector.ph1203 ], [ %index.next1207, %vector.body1201 ]
  %178 = shl nuw nsw i64 %index1206, 3
  %179 = getelementptr i8, i8* %scevgep595, i64 %178
  %180 = bitcast i8* %179 to <4 x double>*
  %wide.load1210 = load <4 x double>, <4 x double>* %180, align 8, !alias.scope !92, !noalias !94
  %181 = fmul fast <4 x double> %wide.load1210, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %182 = bitcast i8* %179 to <4 x double>*
  store <4 x double> %181, <4 x double>* %182, align 8, !alias.scope !92, !noalias !94
  %index.next1207 = add i64 %index1206, 4
  %183 = icmp eq i64 %index.next1207, %n.vec1205
  br i1 %183, label %middle.block1199, label %vector.body1201, !llvm.loop !99

middle.block1199:                                 ; preds = %vector.body1201
  %cmp.n1209 = icmp eq i64 %176, %n.vec1205
  br i1 %cmp.n1209, label %polly.loop_exit591, label %polly.loop_header589.preheader

polly.loop_header589.preheader:                   ; preds = %polly.loop_header583, %middle.block1199
  %polly.indvar592.ph = phi i64 [ 0, %polly.loop_header583 ], [ %n.vec1205, %middle.block1199 ]
  br label %polly.loop_header589

polly.loop_exit591:                               ; preds = %polly.loop_header589, %middle.block1199
  %polly.indvar_next587 = add nuw nsw i64 %polly.indvar586, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar_next587, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1076.not, label %polly.loop_header599.preheader, label %polly.loop_header583

polly.loop_header599.preheader:                   ; preds = %polly.loop_exit591
  %Packed_MemRef_call1498 = bitcast i8* %malloccall497 to double*
  %Packed_MemRef_call2500 = bitcast i8* %malloccall499 to double*
  br label %polly.loop_header599

polly.loop_header589:                             ; preds = %polly.loop_header589.preheader, %polly.loop_header589
  %polly.indvar592 = phi i64 [ %polly.indvar_next593, %polly.loop_header589 ], [ %polly.indvar592.ph, %polly.loop_header589.preheader ]
  %184 = shl nuw nsw i64 %polly.indvar592, 3
  %scevgep596 = getelementptr i8, i8* %scevgep595, i64 %184
  %scevgep596597 = bitcast i8* %scevgep596 to double*
  %_p_scalar_598 = load double, double* %scevgep596597, align 8, !alias.scope !92, !noalias !94
  %p_mul.i = fmul fast double %_p_scalar_598, 1.200000e+00
  store double %p_mul.i, double* %scevgep596597, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next593 = add nuw nsw i64 %polly.indvar592, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar_next593, %polly.indvar586
  br i1 %exitcond1075.not, label %polly.loop_exit591, label %polly.loop_header589, !llvm.loop !100

polly.loop_header599:                             ; preds = %polly.loop_header599.preheader, %polly.loop_exit607
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit607 ], [ 0, %polly.loop_header599.preheader ]
  %polly.access.mul.Packed_MemRef_call2500 = mul nuw nsw i64 %polly.indvar602, 1200
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next603, 1000
  br i1 %exitcond1074.not, label %polly.loop_header615, label %polly.loop_header599

polly.loop_header605:                             ; preds = %polly.loop_header605, %polly.loop_header599
  %polly.indvar608 = phi i64 [ 0, %polly.loop_header599 ], [ %polly.indvar_next609, %polly.loop_header605 ]
  %polly.access.mul.call2612 = mul nuw nsw i64 %polly.indvar608, 1000
  %polly.access.add.call2613 = add nuw nsw i64 %polly.access.mul.call2612, %polly.indvar602
  %polly.access.call2614 = getelementptr double, double* %polly.access.cast.call2710, i64 %polly.access.add.call2613
  %polly.access.call2614.load = load double, double* %polly.access.call2614, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2500 = add nuw nsw i64 %polly.indvar608, %polly.access.mul.Packed_MemRef_call2500
  %polly.access.Packed_MemRef_call2500 = getelementptr double, double* %Packed_MemRef_call2500, i64 %polly.access.add.Packed_MemRef_call2500
  store double %polly.access.call2614.load, double* %polly.access.Packed_MemRef_call2500, align 8
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next609, 1200
  br i1 %exitcond1073.not, label %polly.loop_exit607, label %polly.loop_header605

polly.loop_header615:                             ; preds = %polly.loop_exit607, %polly.loop_exit624
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit624 ], [ 0, %polly.loop_exit607 ]
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit624 ], [ 0, %polly.loop_exit607 ]
  %185 = mul nuw nsw i64 %polly.indvar618, 20
  %186 = udiv i64 %polly.indvar618, 5
  %187 = mul nuw nsw i64 %polly.indvar618, 20
  br label %polly.loop_header622

polly.loop_exit624:                               ; preds = %polly.loop_exit630
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %indvars.iv.next1059 = add nuw nsw i64 %indvars.iv1058, 20
  %exitcond1072.not = icmp eq i64 %polly.indvar_next619, 60
  br i1 %exitcond1072.not, label %polly.exiting496, label %polly.loop_header615

polly.loop_header622:                             ; preds = %polly.loop_exit630, %polly.loop_header615
  %indvars.iv1060 = phi i64 [ %indvars.iv.next1061, %polly.loop_exit630 ], [ %indvars.iv1058, %polly.loop_header615 ]
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit630 ], [ 0, %polly.loop_header615 ]
  %188 = mul nsw i64 %polly.indvar625, -100
  %189 = add i64 %185, %188
  %190 = mul nuw nsw i64 %polly.indvar625, 100
  %191 = sub nsw i64 %187, %190
  %192 = add nuw nsw i64 %190, 100
  br label %polly.loop_header628

polly.loop_exit630:                               ; preds = %polly.loop_exit665
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %indvars.iv.next1061 = add nsw i64 %indvars.iv1060, -100
  %exitcond1071.not = icmp eq i64 %polly.indvar625, %186
  br i1 %exitcond1071.not, label %polly.loop_exit624, label %polly.loop_header622

polly.loop_header628:                             ; preds = %polly.loop_exit665, %polly.loop_header622
  %indvars.iv1062 = phi i64 [ %indvars.iv.next1063, %polly.loop_exit665 ], [ %indvars.iv1060, %polly.loop_header622 ]
  %polly.indvar631 = phi i64 [ %polly.indvar_next632, %polly.loop_exit665 ], [ 0, %polly.loop_header622 ]
  %193 = add i64 %189, %polly.indvar631
  %smin1214 = call i64 @llvm.smin.i64(i64 %193, i64 99)
  %194 = add nsw i64 %smin1214, 1
  %smin1067 = call i64 @llvm.smin.i64(i64 %indvars.iv1062, i64 99)
  %195 = add nsw i64 %polly.indvar631, %191
  %polly.loop_guard6441113 = icmp sgt i64 %195, -1
  %196 = add nuw nsw i64 %polly.indvar631, %187
  %.not903 = icmp ult i64 %196, %192
  %polly.access.mul.call1657 = mul nuw nsw i64 %196, 1000
  br i1 %polly.loop_guard6441113, label %polly.loop_header634.us, label %polly.loop_header628.split

polly.loop_header634.us:                          ; preds = %polly.loop_header628, %polly.merge653.us
  %polly.indvar637.us = phi i64 [ %polly.indvar_next638.us, %polly.merge653.us ], [ 0, %polly.loop_header628 ]
  %polly.access.mul.Packed_MemRef_call1498.us = mul nuw nsw i64 %polly.indvar637.us, 1200
  br label %polly.loop_header641.us

polly.loop_header641.us:                          ; preds = %polly.loop_header634.us, %polly.loop_header641.us
  %polly.indvar645.us = phi i64 [ %polly.indvar_next646.us, %polly.loop_header641.us ], [ 0, %polly.loop_header634.us ]
  %197 = add nuw nsw i64 %polly.indvar645.us, %190
  %polly.access.mul.call1649.us = mul nuw nsw i64 %197, 1000
  %polly.access.add.call1650.us = add nuw nsw i64 %polly.access.mul.call1649.us, %polly.indvar637.us
  %polly.access.call1651.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1650.us
  %polly.access.call1651.load.us = load double, double* %polly.access.call1651.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1498.us = add nuw nsw i64 %polly.indvar645.us, %polly.access.mul.Packed_MemRef_call1498.us
  %polly.access.Packed_MemRef_call1498.us = getelementptr double, double* %Packed_MemRef_call1498, i64 %polly.access.add.Packed_MemRef_call1498.us
  store double %polly.access.call1651.load.us, double* %polly.access.Packed_MemRef_call1498.us, align 8
  %polly.indvar_next646.us = add nuw nsw i64 %polly.indvar645.us, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar645.us, %smin1067
  br i1 %exitcond1065.not, label %polly.cond652.loopexit.us, label %polly.loop_header641.us

polly.then654.us:                                 ; preds = %polly.cond652.loopexit.us
  %polly.access.add.call1658.us = add nuw nsw i64 %polly.indvar637.us, %polly.access.mul.call1657
  %polly.access.call1659.us = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1658.us
  %polly.access.call1659.load.us = load double, double* %polly.access.call1659.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1498661.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1498.us, %195
  %polly.access.Packed_MemRef_call1498662.us = getelementptr double, double* %Packed_MemRef_call1498, i64 %polly.access.add.Packed_MemRef_call1498661.us
  store double %polly.access.call1659.load.us, double* %polly.access.Packed_MemRef_call1498662.us, align 8
  br label %polly.merge653.us

polly.merge653.us:                                ; preds = %polly.then654.us, %polly.cond652.loopexit.us
  %polly.indvar_next638.us = add nuw nsw i64 %polly.indvar637.us, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next638.us, 1000
  br i1 %exitcond1066.not, label %polly.loop_header663.preheader, label %polly.loop_header634.us

polly.cond652.loopexit.us:                        ; preds = %polly.loop_header641.us
  br i1 %.not903, label %polly.merge653.us, label %polly.then654.us

polly.loop_header628.split:                       ; preds = %polly.loop_header628
  br i1 %.not903, label %polly.loop_exit665, label %polly.loop_header634

polly.loop_exit665:                               ; preds = %polly.loop_exit672.loopexit.us, %polly.loop_header628.split, %polly.loop_header663.preheader
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %indvars.iv.next1063 = add nsw i64 %indvars.iv1062, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next632, 20
  br i1 %exitcond1070.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header634:                             ; preds = %polly.loop_header628.split, %polly.loop_header634
  %polly.indvar637 = phi i64 [ %polly.indvar_next638, %polly.loop_header634 ], [ 0, %polly.loop_header628.split ]
  %polly.access.add.call1658 = add nuw nsw i64 %polly.indvar637, %polly.access.mul.call1657
  %polly.access.call1659 = getelementptr double, double* %polly.access.cast.call1700, i64 %polly.access.add.call1658
  %polly.access.call1659.load = load double, double* %polly.access.call1659, align 8, !alias.scope !95, !noalias !102
  %polly.access.mul.Packed_MemRef_call1498660 = mul nuw nsw i64 %polly.indvar637, 1200
  %polly.access.add.Packed_MemRef_call1498661 = add nsw i64 %polly.access.mul.Packed_MemRef_call1498660, %195
  %polly.access.Packed_MemRef_call1498662 = getelementptr double, double* %Packed_MemRef_call1498, i64 %polly.access.add.Packed_MemRef_call1498661
  store double %polly.access.call1659.load, double* %polly.access.Packed_MemRef_call1498662, align 8
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next638, 1000
  br i1 %exitcond1057.not, label %polly.loop_header663.preheader, label %polly.loop_header634

polly.loop_header663.preheader:                   ; preds = %polly.loop_header634, %polly.merge653.us
  %198 = mul nuw nsw i64 %196, 9600
  br i1 %polly.loop_guard6441113, label %polly.loop_header663.us, label %polly.loop_exit665

polly.loop_header663.us:                          ; preds = %polly.loop_header663.preheader, %polly.loop_exit672.loopexit.us
  %polly.indvar666.us = phi i64 [ %polly.indvar_next667.us, %polly.loop_exit672.loopexit.us ], [ 0, %polly.loop_header663.preheader ]
  %polly.access.mul.Packed_MemRef_call1498677.us = mul nuw nsw i64 %polly.indvar666.us, 1200
  %polly.access.add.Packed_MemRef_call2500682.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1498677.us, %196
  %polly.access.Packed_MemRef_call2500683.us = getelementptr double, double* %Packed_MemRef_call2500, i64 %polly.access.add.Packed_MemRef_call2500682.us
  %_p_scalar_684.us = load double, double* %polly.access.Packed_MemRef_call2500683.us, align 8
  %polly.access.add.Packed_MemRef_call1498690.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1498677.us, %195
  %polly.access.Packed_MemRef_call1498691.us = getelementptr double, double* %Packed_MemRef_call1498, i64 %polly.access.add.Packed_MemRef_call1498690.us
  %_p_scalar_692.us = load double, double* %polly.access.Packed_MemRef_call1498691.us, align 8
  %min.iters.check1215 = icmp ult i64 %194, 4
  br i1 %min.iters.check1215, label %polly.loop_header670.us.preheader, label %vector.ph1216

vector.ph1216:                                    ; preds = %polly.loop_header663.us
  %n.vec1218 = and i64 %194, -4
  %broadcast.splatinsert1224 = insertelement <4 x double> poison, double %_p_scalar_684.us, i32 0
  %broadcast.splat1225 = shufflevector <4 x double> %broadcast.splatinsert1224, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1227 = insertelement <4 x double> poison, double %_p_scalar_692.us, i32 0
  %broadcast.splat1228 = shufflevector <4 x double> %broadcast.splatinsert1227, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.body1213, %vector.ph1216
  %index1219 = phi i64 [ 0, %vector.ph1216 ], [ %index.next1220, %vector.body1213 ]
  %199 = add nuw nsw i64 %index1219, %190
  %200 = add nuw nsw i64 %index1219, %polly.access.mul.Packed_MemRef_call1498677.us
  %201 = getelementptr double, double* %Packed_MemRef_call1498, i64 %200
  %202 = bitcast double* %201 to <4 x double>*
  %wide.load1223 = load <4 x double>, <4 x double>* %202, align 8
  %203 = fmul fast <4 x double> %broadcast.splat1225, %wide.load1223
  %204 = add nuw nsw i64 %199, %polly.access.mul.Packed_MemRef_call1498677.us
  %205 = getelementptr double, double* %Packed_MemRef_call2500, i64 %204
  %206 = bitcast double* %205 to <4 x double>*
  %wide.load1226 = load <4 x double>, <4 x double>* %206, align 8
  %207 = fmul fast <4 x double> %broadcast.splat1228, %wide.load1226
  %208 = shl i64 %199, 3
  %209 = add nuw nsw i64 %208, %198
  %210 = getelementptr i8, i8* %call, i64 %209
  %211 = bitcast i8* %210 to <4 x double>*
  %wide.load1229 = load <4 x double>, <4 x double>* %211, align 8, !alias.scope !92, !noalias !94
  %212 = fadd fast <4 x double> %207, %203
  %213 = fmul fast <4 x double> %212, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %214 = fadd fast <4 x double> %213, %wide.load1229
  %215 = bitcast i8* %210 to <4 x double>*
  store <4 x double> %214, <4 x double>* %215, align 8, !alias.scope !92, !noalias !94
  %index.next1220 = add i64 %index1219, 4
  %216 = icmp eq i64 %index.next1220, %n.vec1218
  br i1 %216, label %middle.block1211, label %vector.body1213, !llvm.loop !103

middle.block1211:                                 ; preds = %vector.body1213
  %cmp.n1222 = icmp eq i64 %194, %n.vec1218
  br i1 %cmp.n1222, label %polly.loop_exit672.loopexit.us, label %polly.loop_header670.us.preheader

polly.loop_header670.us.preheader:                ; preds = %polly.loop_header663.us, %middle.block1211
  %polly.indvar674.us.ph = phi i64 [ 0, %polly.loop_header663.us ], [ %n.vec1218, %middle.block1211 ]
  br label %polly.loop_header670.us

polly.loop_header670.us:                          ; preds = %polly.loop_header670.us.preheader, %polly.loop_header670.us
  %polly.indvar674.us = phi i64 [ %polly.indvar_next675.us, %polly.loop_header670.us ], [ %polly.indvar674.us.ph, %polly.loop_header670.us.preheader ]
  %217 = add nuw nsw i64 %polly.indvar674.us, %190
  %polly.access.add.Packed_MemRef_call1498678.us = add nuw nsw i64 %polly.indvar674.us, %polly.access.mul.Packed_MemRef_call1498677.us
  %polly.access.Packed_MemRef_call1498679.us = getelementptr double, double* %Packed_MemRef_call1498, i64 %polly.access.add.Packed_MemRef_call1498678.us
  %_p_scalar_680.us = load double, double* %polly.access.Packed_MemRef_call1498679.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_684.us, %_p_scalar_680.us
  %polly.access.add.Packed_MemRef_call2500686.us = add nuw nsw i64 %217, %polly.access.mul.Packed_MemRef_call1498677.us
  %polly.access.Packed_MemRef_call2500687.us = getelementptr double, double* %Packed_MemRef_call2500, i64 %polly.access.add.Packed_MemRef_call2500686.us
  %_p_scalar_688.us = load double, double* %polly.access.Packed_MemRef_call2500687.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_692.us, %_p_scalar_688.us
  %218 = shl i64 %217, 3
  %219 = add nuw nsw i64 %218, %198
  %scevgep693.us = getelementptr i8, i8* %call, i64 %219
  %scevgep693694.us = bitcast i8* %scevgep693.us to double*
  %_p_scalar_695.us = load double, double* %scevgep693694.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_695.us
  store double %p_add42.i.us, double* %scevgep693694.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next675.us = add nuw nsw i64 %polly.indvar674.us, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar674.us, %smin1067
  br i1 %exitcond1068.not, label %polly.loop_exit672.loopexit.us, label %polly.loop_header670.us, !llvm.loop !104

polly.loop_exit672.loopexit.us:                   ; preds = %polly.loop_header670.us, %middle.block1211
  %polly.indvar_next667.us = add nuw nsw i64 %polly.indvar666.us, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar_next667.us, 1000
  br i1 %exitcond1069.not, label %polly.loop_exit665, label %polly.loop_header663.us

polly.loop_header822:                             ; preds = %entry, %polly.loop_exit830
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit830 ], [ 0, %entry ]
  %polly.indvar825 = phi i64 [ %polly.indvar_next826, %polly.loop_exit830 ], [ 0, %entry ]
  %smin1103 = call i64 @llvm.smin.i64(i64 %indvars.iv1101, i64 -1168)
  %220 = shl nsw i64 %polly.indvar825, 5
  %221 = add nsw i64 %smin1103, 1199
  br label %polly.loop_header828

polly.loop_exit830:                               ; preds = %polly.loop_exit836
  %polly.indvar_next826 = add nuw nsw i64 %polly.indvar825, 1
  %indvars.iv.next1102 = add nsw i64 %indvars.iv1101, -32
  %exitcond1106.not = icmp eq i64 %polly.indvar_next826, 38
  br i1 %exitcond1106.not, label %polly.loop_header849, label %polly.loop_header822

polly.loop_header828:                             ; preds = %polly.loop_exit836, %polly.loop_header822
  %indvars.iv1097 = phi i64 [ %indvars.iv.next1098, %polly.loop_exit836 ], [ 0, %polly.loop_header822 ]
  %polly.indvar831 = phi i64 [ %polly.indvar_next832, %polly.loop_exit836 ], [ 0, %polly.loop_header822 ]
  %222 = mul nsw i64 %polly.indvar831, -32
  %smin = call i64 @llvm.smin.i64(i64 %222, i64 -1168)
  %223 = add nsw i64 %smin, 1200
  %smin1099 = call i64 @llvm.smin.i64(i64 %indvars.iv1097, i64 -1168)
  %224 = shl nsw i64 %polly.indvar831, 5
  %225 = add nsw i64 %smin1099, 1199
  br label %polly.loop_header834

polly.loop_exit836:                               ; preds = %polly.loop_exit842
  %polly.indvar_next832 = add nuw nsw i64 %polly.indvar831, 1
  %indvars.iv.next1098 = add nsw i64 %indvars.iv1097, -32
  %exitcond1105.not = icmp eq i64 %polly.indvar_next832, 38
  br i1 %exitcond1105.not, label %polly.loop_exit830, label %polly.loop_header828

polly.loop_header834:                             ; preds = %polly.loop_exit842, %polly.loop_header828
  %polly.indvar837 = phi i64 [ 0, %polly.loop_header828 ], [ %polly.indvar_next838, %polly.loop_exit842 ]
  %226 = add nuw nsw i64 %polly.indvar837, %220
  %227 = trunc i64 %226 to i32
  %228 = mul nuw nsw i64 %226, 9600
  %min.iters.check = icmp eq i64 %223, 0
  br i1 %min.iters.check, label %polly.loop_header840, label %vector.ph1141

vector.ph1141:                                    ; preds = %polly.loop_header834
  %broadcast.splatinsert1148 = insertelement <4 x i64> poison, i64 %224, i32 0
  %broadcast.splat1149 = shufflevector <4 x i64> %broadcast.splatinsert1148, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1150 = insertelement <4 x i32> poison, i32 %227, i32 0
  %broadcast.splat1151 = shufflevector <4 x i32> %broadcast.splatinsert1150, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1140

vector.body1140:                                  ; preds = %vector.body1140, %vector.ph1141
  %index1142 = phi i64 [ 0, %vector.ph1141 ], [ %index.next1143, %vector.body1140 ]
  %vec.ind1146 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1141 ], [ %vec.ind.next1147, %vector.body1140 ]
  %229 = add nuw nsw <4 x i64> %vec.ind1146, %broadcast.splat1149
  %230 = trunc <4 x i64> %229 to <4 x i32>
  %231 = mul <4 x i32> %broadcast.splat1151, %230
  %232 = add <4 x i32> %231, <i32 3, i32 3, i32 3, i32 3>
  %233 = urem <4 x i32> %232, <i32 1200, i32 1200, i32 1200, i32 1200>
  %234 = sitofp <4 x i32> %233 to <4 x double>
  %235 = fmul fast <4 x double> %234, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %236 = extractelement <4 x i64> %229, i32 0
  %237 = shl i64 %236, 3
  %238 = add nuw nsw i64 %237, %228
  %239 = getelementptr i8, i8* %call, i64 %238
  %240 = bitcast i8* %239 to <4 x double>*
  store <4 x double> %235, <4 x double>* %240, align 8, !alias.scope !105, !noalias !107
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1147 = add <4 x i64> %vec.ind1146, <i64 4, i64 4, i64 4, i64 4>
  %241 = icmp eq i64 %index.next1143, %223
  br i1 %241, label %polly.loop_exit842, label %vector.body1140, !llvm.loop !110

polly.loop_exit842:                               ; preds = %vector.body1140, %polly.loop_header840
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar837, %221
  br i1 %exitcond1104.not, label %polly.loop_exit836, label %polly.loop_header834

polly.loop_header840:                             ; preds = %polly.loop_header834, %polly.loop_header840
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_header840 ], [ 0, %polly.loop_header834 ]
  %242 = add nuw nsw i64 %polly.indvar843, %224
  %243 = trunc i64 %242 to i32
  %244 = mul i32 %243, %227
  %245 = add i32 %244, 3
  %246 = urem i32 %245, 1200
  %p_conv31.i = sitofp i32 %246 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %247 = shl i64 %242, 3
  %248 = add nuw nsw i64 %247, %228
  %scevgep846 = getelementptr i8, i8* %call, i64 %248
  %scevgep846847 = bitcast i8* %scevgep846 to double*
  store double %p_div33.i, double* %scevgep846847, align 8, !alias.scope !105, !noalias !107
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar843, %225
  br i1 %exitcond1100.not, label %polly.loop_exit842, label %polly.loop_header840, !llvm.loop !111

polly.loop_header849:                             ; preds = %polly.loop_exit830, %polly.loop_exit857
  %indvars.iv1091 = phi i64 [ %indvars.iv.next1092, %polly.loop_exit857 ], [ 0, %polly.loop_exit830 ]
  %polly.indvar852 = phi i64 [ %polly.indvar_next853, %polly.loop_exit857 ], [ 0, %polly.loop_exit830 ]
  %smin1093 = call i64 @llvm.smin.i64(i64 %indvars.iv1091, i64 -1168)
  %249 = shl nsw i64 %polly.indvar852, 5
  %250 = add nsw i64 %smin1093, 1199
  br label %polly.loop_header855

polly.loop_exit857:                               ; preds = %polly.loop_exit863
  %polly.indvar_next853 = add nuw nsw i64 %polly.indvar852, 1
  %indvars.iv.next1092 = add nsw i64 %indvars.iv1091, -32
  %exitcond1096.not = icmp eq i64 %polly.indvar_next853, 38
  br i1 %exitcond1096.not, label %polly.loop_header875, label %polly.loop_header849

polly.loop_header855:                             ; preds = %polly.loop_exit863, %polly.loop_header849
  %indvars.iv1087 = phi i64 [ %indvars.iv.next1088, %polly.loop_exit863 ], [ 0, %polly.loop_header849 ]
  %polly.indvar858 = phi i64 [ %polly.indvar_next859, %polly.loop_exit863 ], [ 0, %polly.loop_header849 ]
  %251 = mul nsw i64 %polly.indvar858, -32
  %smin1155 = call i64 @llvm.smin.i64(i64 %251, i64 -968)
  %252 = add nsw i64 %smin1155, 1000
  %smin1089 = call i64 @llvm.smin.i64(i64 %indvars.iv1087, i64 -968)
  %253 = shl nsw i64 %polly.indvar858, 5
  %254 = add nsw i64 %smin1089, 999
  br label %polly.loop_header861

polly.loop_exit863:                               ; preds = %polly.loop_exit869
  %polly.indvar_next859 = add nuw nsw i64 %polly.indvar858, 1
  %indvars.iv.next1088 = add nsw i64 %indvars.iv1087, -32
  %exitcond1095.not = icmp eq i64 %polly.indvar_next859, 32
  br i1 %exitcond1095.not, label %polly.loop_exit857, label %polly.loop_header855

polly.loop_header861:                             ; preds = %polly.loop_exit869, %polly.loop_header855
  %polly.indvar864 = phi i64 [ 0, %polly.loop_header855 ], [ %polly.indvar_next865, %polly.loop_exit869 ]
  %255 = add nuw nsw i64 %polly.indvar864, %249
  %256 = trunc i64 %255 to i32
  %257 = mul nuw nsw i64 %255, 8000
  %min.iters.check1156 = icmp eq i64 %252, 0
  br i1 %min.iters.check1156, label %polly.loop_header867, label %vector.ph1157

vector.ph1157:                                    ; preds = %polly.loop_header861
  %broadcast.splatinsert1166 = insertelement <4 x i64> poison, i64 %253, i32 0
  %broadcast.splat1167 = shufflevector <4 x i64> %broadcast.splatinsert1166, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1168 = insertelement <4 x i32> poison, i32 %256, i32 0
  %broadcast.splat1169 = shufflevector <4 x i32> %broadcast.splatinsert1168, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.body1154, %vector.ph1157
  %index1160 = phi i64 [ 0, %vector.ph1157 ], [ %index.next1161, %vector.body1154 ]
  %vec.ind1164 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1157 ], [ %vec.ind.next1165, %vector.body1154 ]
  %258 = add nuw nsw <4 x i64> %vec.ind1164, %broadcast.splat1167
  %259 = trunc <4 x i64> %258 to <4 x i32>
  %260 = mul <4 x i32> %broadcast.splat1169, %259
  %261 = add <4 x i32> %260, <i32 2, i32 2, i32 2, i32 2>
  %262 = urem <4 x i32> %261, <i32 1000, i32 1000, i32 1000, i32 1000>
  %263 = sitofp <4 x i32> %262 to <4 x double>
  %264 = fmul fast <4 x double> %263, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %265 = extractelement <4 x i64> %258, i32 0
  %266 = shl i64 %265, 3
  %267 = add nuw nsw i64 %266, %257
  %268 = getelementptr i8, i8* %call2, i64 %267
  %269 = bitcast i8* %268 to <4 x double>*
  store <4 x double> %264, <4 x double>* %269, align 8, !alias.scope !109, !noalias !112
  %index.next1161 = add i64 %index1160, 4
  %vec.ind.next1165 = add <4 x i64> %vec.ind1164, <i64 4, i64 4, i64 4, i64 4>
  %270 = icmp eq i64 %index.next1161, %252
  br i1 %270, label %polly.loop_exit869, label %vector.body1154, !llvm.loop !113

polly.loop_exit869:                               ; preds = %vector.body1154, %polly.loop_header867
  %polly.indvar_next865 = add nuw nsw i64 %polly.indvar864, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar864, %250
  br i1 %exitcond1094.not, label %polly.loop_exit863, label %polly.loop_header861

polly.loop_header867:                             ; preds = %polly.loop_header861, %polly.loop_header867
  %polly.indvar870 = phi i64 [ %polly.indvar_next871, %polly.loop_header867 ], [ 0, %polly.loop_header861 ]
  %271 = add nuw nsw i64 %polly.indvar870, %253
  %272 = trunc i64 %271 to i32
  %273 = mul i32 %272, %256
  %274 = add i32 %273, 2
  %275 = urem i32 %274, 1000
  %p_conv10.i = sitofp i32 %275 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %276 = shl i64 %271, 3
  %277 = add nuw nsw i64 %276, %257
  %scevgep873 = getelementptr i8, i8* %call2, i64 %277
  %scevgep873874 = bitcast i8* %scevgep873 to double*
  store double %p_div12.i, double* %scevgep873874, align 8, !alias.scope !109, !noalias !112
  %polly.indvar_next871 = add nuw nsw i64 %polly.indvar870, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar870, %254
  br i1 %exitcond1090.not, label %polly.loop_exit869, label %polly.loop_header867, !llvm.loop !114

polly.loop_header875:                             ; preds = %polly.loop_exit857, %polly.loop_exit883
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082, %polly.loop_exit883 ], [ 0, %polly.loop_exit857 ]
  %polly.indvar878 = phi i64 [ %polly.indvar_next879, %polly.loop_exit883 ], [ 0, %polly.loop_exit857 ]
  %smin1083 = call i64 @llvm.smin.i64(i64 %indvars.iv1081, i64 -1168)
  %278 = shl nsw i64 %polly.indvar878, 5
  %279 = add nsw i64 %smin1083, 1199
  br label %polly.loop_header881

polly.loop_exit883:                               ; preds = %polly.loop_exit889
  %polly.indvar_next879 = add nuw nsw i64 %polly.indvar878, 1
  %indvars.iv.next1082 = add nsw i64 %indvars.iv1081, -32
  %exitcond1086.not = icmp eq i64 %polly.indvar_next879, 38
  br i1 %exitcond1086.not, label %init_array.exit, label %polly.loop_header875

polly.loop_header881:                             ; preds = %polly.loop_exit889, %polly.loop_header875
  %indvars.iv1077 = phi i64 [ %indvars.iv.next1078, %polly.loop_exit889 ], [ 0, %polly.loop_header875 ]
  %polly.indvar884 = phi i64 [ %polly.indvar_next885, %polly.loop_exit889 ], [ 0, %polly.loop_header875 ]
  %280 = mul nsw i64 %polly.indvar884, -32
  %smin1173 = call i64 @llvm.smin.i64(i64 %280, i64 -968)
  %281 = add nsw i64 %smin1173, 1000
  %smin1079 = call i64 @llvm.smin.i64(i64 %indvars.iv1077, i64 -968)
  %282 = shl nsw i64 %polly.indvar884, 5
  %283 = add nsw i64 %smin1079, 999
  br label %polly.loop_header887

polly.loop_exit889:                               ; preds = %polly.loop_exit895
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %indvars.iv.next1078 = add nsw i64 %indvars.iv1077, -32
  %exitcond1085.not = icmp eq i64 %polly.indvar_next885, 32
  br i1 %exitcond1085.not, label %polly.loop_exit883, label %polly.loop_header881

polly.loop_header887:                             ; preds = %polly.loop_exit895, %polly.loop_header881
  %polly.indvar890 = phi i64 [ 0, %polly.loop_header881 ], [ %polly.indvar_next891, %polly.loop_exit895 ]
  %284 = add nuw nsw i64 %polly.indvar890, %278
  %285 = trunc i64 %284 to i32
  %286 = mul nuw nsw i64 %284, 8000
  %min.iters.check1174 = icmp eq i64 %281, 0
  br i1 %min.iters.check1174, label %polly.loop_header893, label %vector.ph1175

vector.ph1175:                                    ; preds = %polly.loop_header887
  %broadcast.splatinsert1184 = insertelement <4 x i64> poison, i64 %282, i32 0
  %broadcast.splat1185 = shufflevector <4 x i64> %broadcast.splatinsert1184, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1186 = insertelement <4 x i32> poison, i32 %285, i32 0
  %broadcast.splat1187 = shufflevector <4 x i32> %broadcast.splatinsert1186, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1172

vector.body1172:                                  ; preds = %vector.body1172, %vector.ph1175
  %index1178 = phi i64 [ 0, %vector.ph1175 ], [ %index.next1179, %vector.body1172 ]
  %vec.ind1182 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1175 ], [ %vec.ind.next1183, %vector.body1172 ]
  %287 = add nuw nsw <4 x i64> %vec.ind1182, %broadcast.splat1185
  %288 = trunc <4 x i64> %287 to <4 x i32>
  %289 = mul <4 x i32> %broadcast.splat1187, %288
  %290 = add <4 x i32> %289, <i32 1, i32 1, i32 1, i32 1>
  %291 = urem <4 x i32> %290, <i32 1200, i32 1200, i32 1200, i32 1200>
  %292 = sitofp <4 x i32> %291 to <4 x double>
  %293 = fmul fast <4 x double> %292, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %294 = extractelement <4 x i64> %287, i32 0
  %295 = shl i64 %294, 3
  %296 = add nuw nsw i64 %295, %286
  %297 = getelementptr i8, i8* %call1, i64 %296
  %298 = bitcast i8* %297 to <4 x double>*
  store <4 x double> %293, <4 x double>* %298, align 8, !alias.scope !108, !noalias !115
  %index.next1179 = add i64 %index1178, 4
  %vec.ind.next1183 = add <4 x i64> %vec.ind1182, <i64 4, i64 4, i64 4, i64 4>
  %299 = icmp eq i64 %index.next1179, %281
  br i1 %299, label %polly.loop_exit895, label %vector.body1172, !llvm.loop !116

polly.loop_exit895:                               ; preds = %vector.body1172, %polly.loop_header893
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar890, %279
  br i1 %exitcond1084.not, label %polly.loop_exit889, label %polly.loop_header887

polly.loop_header893:                             ; preds = %polly.loop_header887, %polly.loop_header893
  %polly.indvar896 = phi i64 [ %polly.indvar_next897, %polly.loop_header893 ], [ 0, %polly.loop_header887 ]
  %300 = add nuw nsw i64 %polly.indvar896, %282
  %301 = trunc i64 %300 to i32
  %302 = mul i32 %301, %285
  %303 = add i32 %302, 1
  %304 = urem i32 %303, 1200
  %p_conv.i = sitofp i32 %304 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %305 = shl i64 %300, 3
  %306 = add nuw nsw i64 %305, %286
  %scevgep900 = getelementptr i8, i8* %call1, i64 %306
  %scevgep900901 = bitcast i8* %scevgep900 to double*
  store double %p_div.i, double* %scevgep900901, align 8, !alias.scope !108, !noalias !115
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar896, %283
  br i1 %exitcond1080.not, label %polly.loop_exit895, label %polly.loop_header893, !llvm.loop !117
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
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 100}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 2048}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42, !43, !44}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !24, !46, !47, !48, !49, !50, !54}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 20}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !24, !52, !42, !53, !44}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.data.pack.array", !22}
!54 = !{!"llvm.loop.tile.followup_tile", !55}
!55 = distinct !{!55, !12, !56}
!56 = !{!"llvm.loop.id", !"i2"}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !4, i64 0}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !66, !"polly.alias.scope.MemRef_call"}
!66 = distinct !{!66, !"polly.alias.scope.domain"}
!67 = !{!68, !69, !70, !71}
!68 = distinct !{!68, !66, !"polly.alias.scope.MemRef_call1"}
!69 = distinct !{!69, !66, !"polly.alias.scope.MemRef_call2"}
!70 = distinct !{!70, !66, !"polly.alias.scope.Packed_MemRef_call1"}
!71 = distinct !{!71, !66, !"polly.alias.scope.Packed_MemRef_call2"}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !74, !13}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!65, !68, !70, !71}
!76 = !{!65, !69, !70, !71}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !74, !13}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84, !85}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !80, !"polly.alias.scope.Packed_MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !74, !13}
!88 = !{!79, !82, !84, !85}
!89 = !{!79, !83, !84, !85}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !74, !13}
!92 = distinct !{!92, !93, !"polly.alias.scope.MemRef_call"}
!93 = distinct !{!93, !"polly.alias.scope.domain"}
!94 = !{!95, !96, !97, !98}
!95 = distinct !{!95, !93, !"polly.alias.scope.MemRef_call1"}
!96 = distinct !{!96, !93, !"polly.alias.scope.MemRef_call2"}
!97 = distinct !{!97, !93, !"polly.alias.scope.Packed_MemRef_call1"}
!98 = distinct !{!98, !93, !"polly.alias.scope.Packed_MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !74, !13}
!101 = !{!92, !95, !97, !98}
!102 = !{!92, !96, !97, !98}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !74, !13}
!105 = distinct !{!105, !106, !"polly.alias.scope.MemRef_call"}
!106 = distinct !{!106, !"polly.alias.scope.domain"}
!107 = !{!108, !109}
!108 = distinct !{!108, !106, !"polly.alias.scope.MemRef_call1"}
!109 = distinct !{!109, !106, !"polly.alias.scope.MemRef_call2"}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !74, !13}
!112 = !{!108, !105}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !74, !13}
!115 = !{!109, !105}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !74, !13}
