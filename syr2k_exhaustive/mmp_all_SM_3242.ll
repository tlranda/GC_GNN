; ModuleID = 'syr2k_exhaustive/mmp_all_SM_3242.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_3242.c"
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
  %call829 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1681 = bitcast i8* %call1 to double*
  %polly.access.call1690 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1690, %call2
  %polly.access.call2710 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2710, %call1
  %2 = or i1 %0, %1
  %polly.access.call730 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call730, %call2
  %4 = icmp ule i8* %polly.access.call2710, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call730, %call1
  %8 = icmp ule i8* %polly.access.call1690, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header803, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1123 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1122 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1121 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1120 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1120, %scevgep1123
  %bound1 = icmp ult i8* %scevgep1122, %scevgep1121
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
  br i1 %exitcond18.not.i, label %vector.ph1127, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1127:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1134 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1135 = shufflevector <4 x i64> %broadcast.splatinsert1134, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %vector.ph1127
  %index1128 = phi i64 [ 0, %vector.ph1127 ], [ %index.next1129, %vector.body1126 ]
  %vec.ind1132 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1127 ], [ %vec.ind.next1133, %vector.body1126 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1132, %broadcast.splat1135
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv7.i, i64 %index1128
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1129 = add i64 %index1128, 4
  %vec.ind.next1133 = add <4 x i64> %vec.ind1132, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1129, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1126, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1126
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1127, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit864
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start484, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1190 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1190, label %for.body3.i46.preheader1270, label %vector.ph1191

vector.ph1191:                                    ; preds = %for.body3.i46.preheader
  %n.vec1193 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %vector.ph1191
  %index1194 = phi i64 [ 0, %vector.ph1191 ], [ %index.next1195, %vector.body1189 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i, i64 %index1194
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1195 = add i64 %index1194, 4
  %46 = icmp eq i64 %index.next1195, %n.vec1193
  br i1 %46, label %middle.block1187, label %vector.body1189, !llvm.loop !18

middle.block1187:                                 ; preds = %vector.body1189
  %cmp.n1197 = icmp eq i64 %indvars.iv21.i, %n.vec1193
  br i1 %cmp.n1197, label %for.inc6.i, label %for.body3.i46.preheader1270

for.body3.i46.preheader1270:                      ; preds = %for.body3.i46.preheader, %middle.block1187
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1193, %middle.block1187 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1270, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1270 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1187, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting485
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start289, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1213 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1213, label %for.body3.i60.preheader1267, label %vector.ph1214

vector.ph1214:                                    ; preds = %for.body3.i60.preheader
  %n.vec1216 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %vector.ph1214
  %index1217 = phi i64 [ 0, %vector.ph1214 ], [ %index.next1218, %vector.body1212 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i52, i64 %index1217
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1221 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1221, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1218 = add i64 %index1217, 4
  %57 = icmp eq i64 %index.next1218, %n.vec1216
  br i1 %57, label %middle.block1210, label %vector.body1212, !llvm.loop !59

middle.block1210:                                 ; preds = %vector.body1212
  %cmp.n1220 = icmp eq i64 %indvars.iv21.i52, %n.vec1216
  br i1 %cmp.n1220, label %for.inc6.i63, label %for.body3.i60.preheader1267

for.body3.i60.preheader1267:                      ; preds = %for.body3.i60.preheader, %middle.block1210
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1216, %middle.block1210 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1267, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1267 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1210, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting290
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1239 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1239, label %for.body3.i99.preheader1264, label %vector.ph1240

vector.ph1240:                                    ; preds = %for.body3.i99.preheader
  %n.vec1242 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %vector.ph1240
  %index1243 = phi i64 [ 0, %vector.ph1240 ], [ %index.next1244, %vector.body1238 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i91, i64 %index1243
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1247 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1247, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1244 = add i64 %index1243, 4
  %68 = icmp eq i64 %index.next1244, %n.vec1242
  br i1 %68, label %middle.block1236, label %vector.body1238, !llvm.loop !61

middle.block1236:                                 ; preds = %vector.body1238
  %cmp.n1246 = icmp eq i64 %indvars.iv21.i91, %n.vec1242
  br i1 %cmp.n1246, label %for.inc6.i102, label %for.body3.i99.preheader1264

for.body3.i99.preheader1264:                      ; preds = %for.body3.i99.preheader, %middle.block1236
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1242, %middle.block1236 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1264, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1264 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1236, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !45

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !63
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !65

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !66

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1251 = phi i64 [ %indvar.next1252, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1251, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1253 = icmp ult i64 %88, 4
  br i1 %min.iters.check1253, label %polly.loop_header191.preheader, label %vector.ph1254

vector.ph1254:                                    ; preds = %polly.loop_header
  %n.vec1256 = and i64 %88, -4
  br label %vector.body1250

vector.body1250:                                  ; preds = %vector.body1250, %vector.ph1254
  %index1257 = phi i64 [ 0, %vector.ph1254 ], [ %index.next1258, %vector.body1250 ]
  %90 = shl nuw nsw i64 %index1257, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1261 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1261, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1258 = add i64 %index1257, 4
  %95 = icmp eq i64 %index.next1258, %n.vec1256
  br i1 %95, label %middle.block1248, label %vector.body1250, !llvm.loop !73

middle.block1248:                                 ; preds = %vector.body1250
  %cmp.n1260 = icmp eq i64 %88, %n.vec1256
  br i1 %cmp.n1260, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1248
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1256, %middle.block1248 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1248
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1252 = add i64 %indvar1251, 1
  br i1 %exitcond1022.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1021.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, 100
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond1020.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv1011 = phi i64 [ %indvars.iv.next1012, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv1007 = phi i64 [ %indvars.iv.next1008, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %98 = lshr i64 %polly.indvar208, 3
  %99 = add nuw i64 %indvars.iv1007, %98
  %100 = shl nuw nsw i64 %99, 5
  %101 = sub i64 %indvars.iv, %100
  %102 = add i64 %indvars.iv1011, %100
  %103 = mul nuw nsw i64 %polly.indvar208, 3
  %104 = add nuw nsw i64 %103, %98
  %105 = mul nsw i64 %polly.indvar208, -100
  %106 = mul nuw nsw i64 %polly.indvar208, 100
  %107 = add nsw i64 %105, 1199
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit250
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 100
  %indvars.iv.next1008 = add nuw nsw i64 %indvars.iv1007, 3
  %indvars.iv.next1012 = add nsw i64 %indvars.iv1011, -100
  %exitcond1019.not = icmp eq i64 %polly.indvar_next209, 12
  br i1 %exitcond1019.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit250, %polly.loop_header205
  %indvars.iv1013 = phi i64 [ %indvars.iv.next1014, %polly.loop_exit250 ], [ %102, %polly.loop_header205 ]
  %indvars.iv1009 = phi i64 [ %indvars.iv.next1010, %polly.loop_exit250 ], [ %101, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit250 ], [ %104, %polly.loop_header205 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1009, i64 0)
  %108 = add i64 %smax, %indvars.iv1013
  %109 = shl nsw i64 %polly.indvar214, 5
  %110 = add nsw i64 %109, %105
  %111 = add nsw i64 %110, -1
  %.inv = icmp sgt i64 %110, 99
  %112 = select i1 %.inv, i64 99, i64 %111
  %polly.loop_guard = icmp sgt i64 %112, -1
  %113 = icmp sgt i64 %110, 0
  %114 = select i1 %113, i64 %110, i64 0
  %115 = add nsw i64 %110, 31
  %116 = icmp slt i64 %107, %115
  %117 = select i1 %116, i64 %107, i64 %115
  %polly.loop_guard237.not = icmp sgt i64 %114, %117
  br i1 %polly.loop_guard, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit236.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit236.us ], [ 0, %polly.loop_header211 ]
  %118 = add nuw nsw i64 %polly.indvar220.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header217.us ]
  %119 = add nuw nsw i64 %polly.indvar226.us, %106
  %polly.access.mul.call1230.us = mul nuw nsw i64 %119, 1000
  %polly.access.add.call1231.us = add nuw nsw i64 %118, %polly.access.mul.call1230.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw i64 %polly.indvar226.us, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar226.us, %112
  br i1 %exitcond1005.not, label %polly.loop_exit225.loopexit.us, label %polly.loop_header223.us

polly.loop_header234.us:                          ; preds = %polly.loop_exit225.loopexit.us, %polly.loop_header234.us
  %polly.indvar238.us = phi i64 [ %polly.indvar_next239.us, %polly.loop_header234.us ], [ %114, %polly.loop_exit225.loopexit.us ]
  %120 = add nuw nsw i64 %polly.indvar238.us, %106
  %polly.access.mul.call1242.us = mul nsw i64 %120, 1000
  %polly.access.add.call1243.us = add nuw nsw i64 %118, %polly.access.mul.call1242.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1246.us = add nuw nsw i64 %polly.indvar238.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  %polly.indvar_next239.us = add nuw nsw i64 %polly.indvar238.us, 1
  %polly.loop_cond240.not.not.us = icmp slt i64 %polly.indvar238.us, %117
  br i1 %polly.loop_cond240.not.not.us, label %polly.loop_header234.us, label %polly.loop_exit236.us

polly.loop_exit236.us:                            ; preds = %polly.loop_header234.us, %polly.loop_exit225.loopexit.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond1006.not = icmp eq i64 %polly.indvar_next221.us, 100
  br i1 %exitcond1006.not, label %polly.loop_header248.preheader, label %polly.loop_header217.us

polly.loop_exit225.loopexit.us:                   ; preds = %polly.loop_header223.us
  br i1 %polly.loop_guard237.not, label %polly.loop_exit236.us, label %polly.loop_header234.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %polly.loop_guard237.not, label %polly.loop_header248.preheader, label %polly.loop_header217

polly.loop_exit250:                               ; preds = %polly.loop_exit257, %polly.loop_header248.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp ult i64 %polly.indvar214, 37
  %indvars.iv.next1010 = add i64 %indvars.iv1009, -32
  %indvars.iv.next1014 = add i64 %indvars.iv1013, 32
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_exit236
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit236 ], [ 0, %polly.loop_header211.split ]
  %121 = add nuw nsw i64 %polly.indvar220, %97
  %polly.access.mul.Packed_MemRef_call1245 = mul nuw nsw i64 %polly.indvar220, 1200
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_header234
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 100
  br i1 %exitcond.not, label %polly.loop_header248.preheader, label %polly.loop_header217

polly.loop_header248.preheader:                   ; preds = %polly.loop_exit236, %polly.loop_exit236.us, %polly.loop_header211.split
  %122 = sub nsw i64 %106, %109
  %123 = icmp sgt i64 %122, 0
  %124 = select i1 %123, i64 %122, i64 0
  %125 = mul nsw i64 %polly.indvar214, -32
  %126 = icmp slt i64 %125, -1168
  %127 = select i1 %126, i64 %125, i64 -1168
  %128 = add nsw i64 %127, 1199
  %polly.loop_guard258.not = icmp sgt i64 %124, %128
  br i1 %polly.loop_guard258.not, label %polly.loop_exit250, label %polly.loop_header248

polly.loop_header234:                             ; preds = %polly.loop_header217, %polly.loop_header234
  %polly.indvar238 = phi i64 [ %polly.indvar_next239, %polly.loop_header234 ], [ %114, %polly.loop_header217 ]
  %129 = add nuw nsw i64 %polly.indvar238, %106
  %polly.access.mul.call1242 = mul nsw i64 %129, 1000
  %polly.access.add.call1243 = add nuw nsw i64 %121, %polly.access.mul.call1242
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1243
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1246 = add nuw nsw i64 %polly.indvar238, %polly.access.mul.Packed_MemRef_call1245
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.indvar_next239 = add nuw nsw i64 %polly.indvar238, 1
  %polly.loop_cond240.not.not = icmp slt i64 %polly.indvar238, %117
  br i1 %polly.loop_cond240.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header248:                             ; preds = %polly.loop_header248.preheader, %polly.loop_exit257
  %polly.indvar251 = phi i64 [ %polly.indvar_next252, %polly.loop_exit257 ], [ 0, %polly.loop_header248.preheader ]
  %130 = add nuw nsw i64 %polly.indvar251, %97
  %polly.access.mul.Packed_MemRef_call1270 = mul nuw nsw i64 %polly.indvar251, 1200
  %131 = shl i64 %130, 3
  br label %polly.loop_header255

polly.loop_exit257:                               ; preds = %polly.loop_exit265
  %polly.indvar_next252 = add nuw nsw i64 %polly.indvar251, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next252, 100
  br i1 %exitcond1018.not, label %polly.loop_exit250, label %polly.loop_header248

polly.loop_header255:                             ; preds = %polly.loop_header248, %polly.loop_exit265
  %indvars.iv1015 = phi i64 [ %108, %polly.loop_header248 ], [ %indvars.iv.next1016, %polly.loop_exit265 ]
  %polly.indvar259 = phi i64 [ %124, %polly.loop_header248 ], [ %polly.indvar_next260, %polly.loop_exit265 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1015, i64 99)
  %132 = add nsw i64 %polly.indvar259, %110
  %polly.loop_guard2661106 = icmp sgt i64 %132, -1
  br i1 %polly.loop_guard2661106, label %polly.loop_header263.preheader, label %polly.loop_exit265

polly.loop_header263.preheader:                   ; preds = %polly.loop_header255
  %133 = add nuw nsw i64 %polly.indvar259, %109
  %134 = mul i64 %133, 8000
  %135 = add i64 %134, %131
  %scevgep274 = getelementptr i8, i8* %call2, i64 %135
  %scevgep274275 = bitcast i8* %scevgep274 to double*
  %_p_scalar_276 = load double, double* %scevgep274275, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1281 = add nsw i64 %132, %polly.access.mul.Packed_MemRef_call1270
  %polly.access.Packed_MemRef_call1282 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1281
  %_p_scalar_283 = load double, double* %polly.access.Packed_MemRef_call1282, align 8
  %136 = mul i64 %133, 9600
  br label %polly.loop_header263

polly.loop_exit265:                               ; preds = %polly.loop_header263, %polly.loop_header255
  %polly.indvar_next260 = add nuw nsw i64 %polly.indvar259, 1
  %polly.loop_cond261.not.not = icmp slt i64 %polly.indvar259, %128
  %indvars.iv.next1016 = add i64 %indvars.iv1015, 1
  br i1 %polly.loop_cond261.not.not, label %polly.loop_header255, label %polly.loop_exit257

polly.loop_header263:                             ; preds = %polly.loop_header263.preheader, %polly.loop_header263
  %polly.indvar267 = phi i64 [ %polly.indvar_next268, %polly.loop_header263 ], [ 0, %polly.loop_header263.preheader ]
  %137 = add nuw nsw i64 %polly.indvar267, %106
  %polly.access.add.Packed_MemRef_call1271 = add nuw nsw i64 %polly.indvar267, %polly.access.mul.Packed_MemRef_call1270
  %polly.access.Packed_MemRef_call1272 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271
  %_p_scalar_273 = load double, double* %polly.access.Packed_MemRef_call1272, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_276, %_p_scalar_273
  %138 = mul nuw nsw i64 %137, 8000
  %139 = add nuw nsw i64 %138, %131
  %scevgep277 = getelementptr i8, i8* %call2, i64 %139
  %scevgep277278 = bitcast i8* %scevgep277 to double*
  %_p_scalar_279 = load double, double* %scevgep277278, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114 = fmul fast double %_p_scalar_283, %_p_scalar_279
  %140 = shl i64 %137, 3
  %141 = add i64 %140, %136
  %scevgep284 = getelementptr i8, i8* %call, i64 %141
  %scevgep284285 = bitcast i8* %scevgep284 to double*
  %_p_scalar_286 = load double, double* %scevgep284285, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_286
  store double %p_add42.i118, double* %scevgep284285, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next268 = add nuw nsw i64 %polly.indvar267, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar267, %smin
  br i1 %exitcond1017.not, label %polly.loop_exit265, label %polly.loop_header263

polly.start289:                                   ; preds = %kernel_syr2k.exit
  %malloccall291 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header375

polly.exiting290:                                 ; preds = %polly.loop_exit399
  tail call void @free(i8* %malloccall291)
  br label %kernel_syr2k.exit90

polly.loop_header375:                             ; preds = %polly.loop_exit383, %polly.start289
  %indvar1225 = phi i64 [ %indvar.next1226, %polly.loop_exit383 ], [ 0, %polly.start289 ]
  %polly.indvar378 = phi i64 [ %polly.indvar_next379, %polly.loop_exit383 ], [ 1, %polly.start289 ]
  %142 = add i64 %indvar1225, 1
  %143 = mul nuw nsw i64 %polly.indvar378, 9600
  %scevgep387 = getelementptr i8, i8* %call, i64 %143
  %min.iters.check1227 = icmp ult i64 %142, 4
  br i1 %min.iters.check1227, label %polly.loop_header381.preheader, label %vector.ph1228

vector.ph1228:                                    ; preds = %polly.loop_header375
  %n.vec1230 = and i64 %142, -4
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %vector.ph1228
  %index1231 = phi i64 [ 0, %vector.ph1228 ], [ %index.next1232, %vector.body1224 ]
  %144 = shl nuw nsw i64 %index1231, 3
  %145 = getelementptr i8, i8* %scevgep387, i64 %144
  %146 = bitcast i8* %145 to <4 x double>*
  %wide.load1235 = load <4 x double>, <4 x double>* %146, align 8, !alias.scope !78, !noalias !80
  %147 = fmul fast <4 x double> %wide.load1235, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %148 = bitcast i8* %145 to <4 x double>*
  store <4 x double> %147, <4 x double>* %148, align 8, !alias.scope !78, !noalias !80
  %index.next1232 = add i64 %index1231, 4
  %149 = icmp eq i64 %index.next1232, %n.vec1230
  br i1 %149, label %middle.block1222, label %vector.body1224, !llvm.loop !84

middle.block1222:                                 ; preds = %vector.body1224
  %cmp.n1234 = icmp eq i64 %142, %n.vec1230
  br i1 %cmp.n1234, label %polly.loop_exit383, label %polly.loop_header381.preheader

polly.loop_header381.preheader:                   ; preds = %polly.loop_header375, %middle.block1222
  %polly.indvar384.ph = phi i64 [ 0, %polly.loop_header375 ], [ %n.vec1230, %middle.block1222 ]
  br label %polly.loop_header381

polly.loop_exit383:                               ; preds = %polly.loop_header381, %middle.block1222
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next379, 1200
  %indvar.next1226 = add i64 %indvar1225, 1
  br i1 %exitcond1045.not, label %polly.loop_header391.preheader, label %polly.loop_header375

polly.loop_header391.preheader:                   ; preds = %polly.loop_exit383
  %Packed_MemRef_call1292 = bitcast i8* %malloccall291 to double*
  br label %polly.loop_header391

polly.loop_header381:                             ; preds = %polly.loop_header381.preheader, %polly.loop_header381
  %polly.indvar384 = phi i64 [ %polly.indvar_next385, %polly.loop_header381 ], [ %polly.indvar384.ph, %polly.loop_header381.preheader ]
  %150 = shl nuw nsw i64 %polly.indvar384, 3
  %scevgep388 = getelementptr i8, i8* %scevgep387, i64 %150
  %scevgep388389 = bitcast i8* %scevgep388 to double*
  %_p_scalar_390 = load double, double* %scevgep388389, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_390, 1.200000e+00
  store double %p_mul.i57, double* %scevgep388389, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next385 = add nuw nsw i64 %polly.indvar384, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar_next385, %polly.indvar378
  br i1 %exitcond1044.not, label %polly.loop_exit383, label %polly.loop_header381, !llvm.loop !85

polly.loop_header391:                             ; preds = %polly.loop_header391.preheader, %polly.loop_exit399
  %polly.indvar394 = phi i64 [ %polly.indvar_next395, %polly.loop_exit399 ], [ 0, %polly.loop_header391.preheader ]
  %151 = mul nuw nsw i64 %polly.indvar394, 100
  br label %polly.loop_header397

polly.loop_exit399:                               ; preds = %polly.loop_exit406
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next395, 10
  br i1 %exitcond1043.not, label %polly.exiting290, label %polly.loop_header391

polly.loop_header397:                             ; preds = %polly.loop_exit406, %polly.loop_header391
  %indvars.iv1033 = phi i64 [ %indvars.iv.next1034, %polly.loop_exit406 ], [ 0, %polly.loop_header391 ]
  %indvars.iv1028 = phi i64 [ %indvars.iv.next1029, %polly.loop_exit406 ], [ 0, %polly.loop_header391 ]
  %indvars.iv1026 = phi i64 [ %indvars.iv.next1027, %polly.loop_exit406 ], [ 0, %polly.loop_header391 ]
  %polly.indvar400 = phi i64 [ %polly.indvar_next401, %polly.loop_exit406 ], [ 0, %polly.loop_header391 ]
  %152 = lshr i64 %polly.indvar400, 3
  %153 = add nuw i64 %indvars.iv1028, %152
  %154 = shl nuw nsw i64 %153, 5
  %155 = sub i64 %indvars.iv1026, %154
  %156 = add i64 %indvars.iv1033, %154
  %157 = mul nuw nsw i64 %polly.indvar400, 3
  %158 = add nuw nsw i64 %157, %152
  %159 = mul nsw i64 %polly.indvar400, -100
  %160 = mul nuw nsw i64 %polly.indvar400, 100
  %161 = add nsw i64 %159, 1199
  br label %polly.loop_header404

polly.loop_exit406:                               ; preds = %polly.loop_exit445
  %polly.indvar_next401 = add nuw nsw i64 %polly.indvar400, 1
  %indvars.iv.next1027 = add nuw nsw i64 %indvars.iv1026, 100
  %indvars.iv.next1029 = add nuw nsw i64 %indvars.iv1028, 3
  %indvars.iv.next1034 = add nsw i64 %indvars.iv1033, -100
  %exitcond1042.not = icmp eq i64 %polly.indvar_next401, 12
  br i1 %exitcond1042.not, label %polly.loop_exit399, label %polly.loop_header397

polly.loop_header404:                             ; preds = %polly.loop_exit445, %polly.loop_header397
  %indvars.iv1035 = phi i64 [ %indvars.iv.next1036, %polly.loop_exit445 ], [ %156, %polly.loop_header397 ]
  %indvars.iv1030 = phi i64 [ %indvars.iv.next1031, %polly.loop_exit445 ], [ %155, %polly.loop_header397 ]
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit445 ], [ %158, %polly.loop_header397 ]
  %smax1032 = call i64 @llvm.smax.i64(i64 %indvars.iv1030, i64 0)
  %162 = add i64 %smax1032, %indvars.iv1035
  %163 = shl nsw i64 %polly.indvar407, 5
  %164 = add nsw i64 %163, %159
  %165 = add nsw i64 %164, -1
  %.inv883 = icmp sgt i64 %164, 99
  %166 = select i1 %.inv883, i64 99, i64 %165
  %polly.loop_guard420 = icmp sgt i64 %166, -1
  %167 = icmp sgt i64 %164, 0
  %168 = select i1 %167, i64 %164, i64 0
  %169 = add nsw i64 %164, 31
  %170 = icmp slt i64 %161, %169
  %171 = select i1 %170, i64 %161, i64 %169
  %polly.loop_guard432.not = icmp sgt i64 %168, %171
  br i1 %polly.loop_guard420, label %polly.loop_header410.us, label %polly.loop_header404.split

polly.loop_header410.us:                          ; preds = %polly.loop_header404, %polly.loop_exit431.us
  %polly.indvar413.us = phi i64 [ %polly.indvar_next414.us, %polly.loop_exit431.us ], [ 0, %polly.loop_header404 ]
  %172 = add nuw nsw i64 %polly.indvar413.us, %151
  %polly.access.mul.Packed_MemRef_call1292.us = mul nuw nsw i64 %polly.indvar413.us, 1200
  br label %polly.loop_header417.us

polly.loop_header417.us:                          ; preds = %polly.loop_header410.us, %polly.loop_header417.us
  %polly.indvar421.us = phi i64 [ %polly.indvar_next422.us, %polly.loop_header417.us ], [ 0, %polly.loop_header410.us ]
  %173 = add nuw nsw i64 %polly.indvar421.us, %160
  %polly.access.mul.call1425.us = mul nuw nsw i64 %173, 1000
  %polly.access.add.call1426.us = add nuw nsw i64 %172, %polly.access.mul.call1425.us
  %polly.access.call1427.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1426.us
  %polly.access.call1427.load.us = load double, double* %polly.access.call1427.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1292.us = add nuw nsw i64 %polly.indvar421.us, %polly.access.mul.Packed_MemRef_call1292.us
  %polly.access.Packed_MemRef_call1292.us = getelementptr double, double* %Packed_MemRef_call1292, i64 %polly.access.add.Packed_MemRef_call1292.us
  store double %polly.access.call1427.load.us, double* %polly.access.Packed_MemRef_call1292.us, align 8
  %polly.indvar_next422.us = add nuw i64 %polly.indvar421.us, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar421.us, %166
  br i1 %exitcond1024.not, label %polly.loop_exit419.loopexit.us, label %polly.loop_header417.us

polly.loop_header429.us:                          ; preds = %polly.loop_exit419.loopexit.us, %polly.loop_header429.us
  %polly.indvar433.us = phi i64 [ %polly.indvar_next434.us, %polly.loop_header429.us ], [ %168, %polly.loop_exit419.loopexit.us ]
  %174 = add nuw nsw i64 %polly.indvar433.us, %160
  %polly.access.mul.call1437.us = mul nsw i64 %174, 1000
  %polly.access.add.call1438.us = add nuw nsw i64 %172, %polly.access.mul.call1437.us
  %polly.access.call1439.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1438.us
  %polly.access.call1439.load.us = load double, double* %polly.access.call1439.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1292441.us = add nuw nsw i64 %polly.indvar433.us, %polly.access.mul.Packed_MemRef_call1292.us
  %polly.access.Packed_MemRef_call1292442.us = getelementptr double, double* %Packed_MemRef_call1292, i64 %polly.access.add.Packed_MemRef_call1292441.us
  store double %polly.access.call1439.load.us, double* %polly.access.Packed_MemRef_call1292442.us, align 8
  %polly.indvar_next434.us = add nuw nsw i64 %polly.indvar433.us, 1
  %polly.loop_cond435.not.not.us = icmp slt i64 %polly.indvar433.us, %171
  br i1 %polly.loop_cond435.not.not.us, label %polly.loop_header429.us, label %polly.loop_exit431.us

polly.loop_exit431.us:                            ; preds = %polly.loop_header429.us, %polly.loop_exit419.loopexit.us
  %polly.indvar_next414.us = add nuw nsw i64 %polly.indvar413.us, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar_next414.us, 100
  br i1 %exitcond1025.not, label %polly.loop_header443.preheader, label %polly.loop_header410.us

polly.loop_exit419.loopexit.us:                   ; preds = %polly.loop_header417.us
  br i1 %polly.loop_guard432.not, label %polly.loop_exit431.us, label %polly.loop_header429.us

polly.loop_header404.split:                       ; preds = %polly.loop_header404
  br i1 %polly.loop_guard432.not, label %polly.loop_header443.preheader, label %polly.loop_header410

polly.loop_exit445:                               ; preds = %polly.loop_exit452, %polly.loop_header443.preheader
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %polly.loop_cond409 = icmp ult i64 %polly.indvar407, 37
  %indvars.iv.next1031 = add i64 %indvars.iv1030, -32
  %indvars.iv.next1036 = add i64 %indvars.iv1035, 32
  br i1 %polly.loop_cond409, label %polly.loop_header404, label %polly.loop_exit406

polly.loop_header410:                             ; preds = %polly.loop_header404.split, %polly.loop_exit431
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit431 ], [ 0, %polly.loop_header404.split ]
  %175 = add nuw nsw i64 %polly.indvar413, %151
  %polly.access.mul.Packed_MemRef_call1292440 = mul nuw nsw i64 %polly.indvar413, 1200
  br label %polly.loop_header429

polly.loop_exit431:                               ; preds = %polly.loop_header429
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar_next414, 100
  br i1 %exitcond1023.not, label %polly.loop_header443.preheader, label %polly.loop_header410

polly.loop_header443.preheader:                   ; preds = %polly.loop_exit431, %polly.loop_exit431.us, %polly.loop_header404.split
  %176 = sub nsw i64 %160, %163
  %177 = icmp sgt i64 %176, 0
  %178 = select i1 %177, i64 %176, i64 0
  %179 = mul nsw i64 %polly.indvar407, -32
  %180 = icmp slt i64 %179, -1168
  %181 = select i1 %180, i64 %179, i64 -1168
  %182 = add nsw i64 %181, 1199
  %polly.loop_guard453.not = icmp sgt i64 %178, %182
  br i1 %polly.loop_guard453.not, label %polly.loop_exit445, label %polly.loop_header443

polly.loop_header429:                             ; preds = %polly.loop_header410, %polly.loop_header429
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_header429 ], [ %168, %polly.loop_header410 ]
  %183 = add nuw nsw i64 %polly.indvar433, %160
  %polly.access.mul.call1437 = mul nsw i64 %183, 1000
  %polly.access.add.call1438 = add nuw nsw i64 %175, %polly.access.mul.call1437
  %polly.access.call1439 = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1438
  %polly.access.call1439.load = load double, double* %polly.access.call1439, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1292441 = add nuw nsw i64 %polly.indvar433, %polly.access.mul.Packed_MemRef_call1292440
  %polly.access.Packed_MemRef_call1292442 = getelementptr double, double* %Packed_MemRef_call1292, i64 %polly.access.add.Packed_MemRef_call1292441
  store double %polly.access.call1439.load, double* %polly.access.Packed_MemRef_call1292442, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %polly.loop_cond435.not.not = icmp slt i64 %polly.indvar433, %171
  br i1 %polly.loop_cond435.not.not, label %polly.loop_header429, label %polly.loop_exit431

polly.loop_header443:                             ; preds = %polly.loop_header443.preheader, %polly.loop_exit452
  %polly.indvar446 = phi i64 [ %polly.indvar_next447, %polly.loop_exit452 ], [ 0, %polly.loop_header443.preheader ]
  %184 = add nuw nsw i64 %polly.indvar446, %151
  %polly.access.mul.Packed_MemRef_call1292465 = mul nuw nsw i64 %polly.indvar446, 1200
  %185 = shl i64 %184, 3
  br label %polly.loop_header450

polly.loop_exit452:                               ; preds = %polly.loop_exit460
  %polly.indvar_next447 = add nuw nsw i64 %polly.indvar446, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next447, 100
  br i1 %exitcond1041.not, label %polly.loop_exit445, label %polly.loop_header443

polly.loop_header450:                             ; preds = %polly.loop_header443, %polly.loop_exit460
  %indvars.iv1037 = phi i64 [ %162, %polly.loop_header443 ], [ %indvars.iv.next1038, %polly.loop_exit460 ]
  %polly.indvar454 = phi i64 [ %178, %polly.loop_header443 ], [ %polly.indvar_next455, %polly.loop_exit460 ]
  %smin1039 = call i64 @llvm.smin.i64(i64 %indvars.iv1037, i64 99)
  %186 = add nsw i64 %polly.indvar454, %164
  %polly.loop_guard4611107 = icmp sgt i64 %186, -1
  br i1 %polly.loop_guard4611107, label %polly.loop_header458.preheader, label %polly.loop_exit460

polly.loop_header458.preheader:                   ; preds = %polly.loop_header450
  %187 = add nuw nsw i64 %polly.indvar454, %163
  %188 = mul i64 %187, 8000
  %189 = add i64 %188, %185
  %scevgep469 = getelementptr i8, i8* %call2, i64 %189
  %scevgep469470 = bitcast i8* %scevgep469 to double*
  %_p_scalar_471 = load double, double* %scevgep469470, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1292476 = add nsw i64 %186, %polly.access.mul.Packed_MemRef_call1292465
  %polly.access.Packed_MemRef_call1292477 = getelementptr double, double* %Packed_MemRef_call1292, i64 %polly.access.add.Packed_MemRef_call1292476
  %_p_scalar_478 = load double, double* %polly.access.Packed_MemRef_call1292477, align 8
  %190 = mul i64 %187, 9600
  br label %polly.loop_header458

polly.loop_exit460:                               ; preds = %polly.loop_header458, %polly.loop_header450
  %polly.indvar_next455 = add nuw nsw i64 %polly.indvar454, 1
  %polly.loop_cond456.not.not = icmp slt i64 %polly.indvar454, %182
  %indvars.iv.next1038 = add i64 %indvars.iv1037, 1
  br i1 %polly.loop_cond456.not.not, label %polly.loop_header450, label %polly.loop_exit452

polly.loop_header458:                             ; preds = %polly.loop_header458.preheader, %polly.loop_header458
  %polly.indvar462 = phi i64 [ %polly.indvar_next463, %polly.loop_header458 ], [ 0, %polly.loop_header458.preheader ]
  %191 = add nuw nsw i64 %polly.indvar462, %160
  %polly.access.add.Packed_MemRef_call1292466 = add nuw nsw i64 %polly.indvar462, %polly.access.mul.Packed_MemRef_call1292465
  %polly.access.Packed_MemRef_call1292467 = getelementptr double, double* %Packed_MemRef_call1292, i64 %polly.access.add.Packed_MemRef_call1292466
  %_p_scalar_468 = load double, double* %polly.access.Packed_MemRef_call1292467, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_471, %_p_scalar_468
  %192 = mul nuw nsw i64 %191, 8000
  %193 = add nuw nsw i64 %192, %185
  %scevgep472 = getelementptr i8, i8* %call2, i64 %193
  %scevgep472473 = bitcast i8* %scevgep472 to double*
  %_p_scalar_474 = load double, double* %scevgep472473, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75 = fmul fast double %_p_scalar_478, %_p_scalar_474
  %194 = shl i64 %191, 3
  %195 = add i64 %194, %190
  %scevgep479 = getelementptr i8, i8* %call, i64 %195
  %scevgep479480 = bitcast i8* %scevgep479 to double*
  %_p_scalar_481 = load double, double* %scevgep479480, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_481
  store double %p_add42.i79, double* %scevgep479480, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next463 = add nuw nsw i64 %polly.indvar462, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar462, %smin1039
  br i1 %exitcond1040.not, label %polly.loop_exit460, label %polly.loop_header458

polly.start484:                                   ; preds = %init_array.exit
  %malloccall486 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header570

polly.exiting485:                                 ; preds = %polly.loop_exit594
  tail call void @free(i8* %malloccall486)
  br label %kernel_syr2k.exit

polly.loop_header570:                             ; preds = %polly.loop_exit578, %polly.start484
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit578 ], [ 0, %polly.start484 ]
  %polly.indvar573 = phi i64 [ %polly.indvar_next574, %polly.loop_exit578 ], [ 1, %polly.start484 ]
  %196 = add i64 %indvar, 1
  %197 = mul nuw nsw i64 %polly.indvar573, 9600
  %scevgep582 = getelementptr i8, i8* %call, i64 %197
  %min.iters.check1201 = icmp ult i64 %196, 4
  br i1 %min.iters.check1201, label %polly.loop_header576.preheader, label %vector.ph1202

vector.ph1202:                                    ; preds = %polly.loop_header570
  %n.vec1204 = and i64 %196, -4
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %vector.ph1202
  %index1205 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1206, %vector.body1200 ]
  %198 = shl nuw nsw i64 %index1205, 3
  %199 = getelementptr i8, i8* %scevgep582, i64 %198
  %200 = bitcast i8* %199 to <4 x double>*
  %wide.load1209 = load <4 x double>, <4 x double>* %200, align 8, !alias.scope !88, !noalias !90
  %201 = fmul fast <4 x double> %wide.load1209, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %202 = bitcast i8* %199 to <4 x double>*
  store <4 x double> %201, <4 x double>* %202, align 8, !alias.scope !88, !noalias !90
  %index.next1206 = add i64 %index1205, 4
  %203 = icmp eq i64 %index.next1206, %n.vec1204
  br i1 %203, label %middle.block1198, label %vector.body1200, !llvm.loop !94

middle.block1198:                                 ; preds = %vector.body1200
  %cmp.n1208 = icmp eq i64 %196, %n.vec1204
  br i1 %cmp.n1208, label %polly.loop_exit578, label %polly.loop_header576.preheader

polly.loop_header576.preheader:                   ; preds = %polly.loop_header570, %middle.block1198
  %polly.indvar579.ph = phi i64 [ 0, %polly.loop_header570 ], [ %n.vec1204, %middle.block1198 ]
  br label %polly.loop_header576

polly.loop_exit578:                               ; preds = %polly.loop_header576, %middle.block1198
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar_next574, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1068.not, label %polly.loop_header586.preheader, label %polly.loop_header570

polly.loop_header586.preheader:                   ; preds = %polly.loop_exit578
  %Packed_MemRef_call1487 = bitcast i8* %malloccall486 to double*
  br label %polly.loop_header586

polly.loop_header576:                             ; preds = %polly.loop_header576.preheader, %polly.loop_header576
  %polly.indvar579 = phi i64 [ %polly.indvar_next580, %polly.loop_header576 ], [ %polly.indvar579.ph, %polly.loop_header576.preheader ]
  %204 = shl nuw nsw i64 %polly.indvar579, 3
  %scevgep583 = getelementptr i8, i8* %scevgep582, i64 %204
  %scevgep583584 = bitcast i8* %scevgep583 to double*
  %_p_scalar_585 = load double, double* %scevgep583584, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_585, 1.200000e+00
  store double %p_mul.i, double* %scevgep583584, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next580 = add nuw nsw i64 %polly.indvar579, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar_next580, %polly.indvar573
  br i1 %exitcond1067.not, label %polly.loop_exit578, label %polly.loop_header576, !llvm.loop !95

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_exit594
  %polly.indvar589 = phi i64 [ %polly.indvar_next590, %polly.loop_exit594 ], [ 0, %polly.loop_header586.preheader ]
  %205 = mul nuw nsw i64 %polly.indvar589, 100
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit601
  %polly.indvar_next590 = add nuw nsw i64 %polly.indvar589, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next590, 10
  br i1 %exitcond1066.not, label %polly.exiting485, label %polly.loop_header586

polly.loop_header592:                             ; preds = %polly.loop_exit601, %polly.loop_header586
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %indvars.iv1051 = phi i64 [ %indvars.iv.next1052, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %polly.indvar595 = phi i64 [ %polly.indvar_next596, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %206 = lshr i64 %polly.indvar595, 3
  %207 = add nuw i64 %indvars.iv1051, %206
  %208 = shl nuw nsw i64 %207, 5
  %209 = sub i64 %indvars.iv1049, %208
  %210 = add i64 %indvars.iv1056, %208
  %211 = mul nuw nsw i64 %polly.indvar595, 3
  %212 = add nuw nsw i64 %211, %206
  %213 = mul nsw i64 %polly.indvar595, -100
  %214 = mul nuw nsw i64 %polly.indvar595, 100
  %215 = add nsw i64 %213, 1199
  br label %polly.loop_header599

polly.loop_exit601:                               ; preds = %polly.loop_exit640
  %polly.indvar_next596 = add nuw nsw i64 %polly.indvar595, 1
  %indvars.iv.next1050 = add nuw nsw i64 %indvars.iv1049, 100
  %indvars.iv.next1052 = add nuw nsw i64 %indvars.iv1051, 3
  %indvars.iv.next1057 = add nsw i64 %indvars.iv1056, -100
  %exitcond1065.not = icmp eq i64 %polly.indvar_next596, 12
  br i1 %exitcond1065.not, label %polly.loop_exit594, label %polly.loop_header592

polly.loop_header599:                             ; preds = %polly.loop_exit640, %polly.loop_header592
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit640 ], [ %210, %polly.loop_header592 ]
  %indvars.iv1053 = phi i64 [ %indvars.iv.next1054, %polly.loop_exit640 ], [ %209, %polly.loop_header592 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit640 ], [ %212, %polly.loop_header592 ]
  %smax1055 = call i64 @llvm.smax.i64(i64 %indvars.iv1053, i64 0)
  %216 = add i64 %smax1055, %indvars.iv1058
  %217 = shl nsw i64 %polly.indvar602, 5
  %218 = add nsw i64 %217, %213
  %219 = add nsw i64 %218, -1
  %.inv884 = icmp sgt i64 %218, 99
  %220 = select i1 %.inv884, i64 99, i64 %219
  %polly.loop_guard615 = icmp sgt i64 %220, -1
  %221 = icmp sgt i64 %218, 0
  %222 = select i1 %221, i64 %218, i64 0
  %223 = add nsw i64 %218, 31
  %224 = icmp slt i64 %215, %223
  %225 = select i1 %224, i64 %215, i64 %223
  %polly.loop_guard627.not = icmp sgt i64 %222, %225
  br i1 %polly.loop_guard615, label %polly.loop_header605.us, label %polly.loop_header599.split

polly.loop_header605.us:                          ; preds = %polly.loop_header599, %polly.loop_exit626.us
  %polly.indvar608.us = phi i64 [ %polly.indvar_next609.us, %polly.loop_exit626.us ], [ 0, %polly.loop_header599 ]
  %226 = add nuw nsw i64 %polly.indvar608.us, %205
  %polly.access.mul.Packed_MemRef_call1487.us = mul nuw nsw i64 %polly.indvar608.us, 1200
  br label %polly.loop_header612.us

polly.loop_header612.us:                          ; preds = %polly.loop_header605.us, %polly.loop_header612.us
  %polly.indvar616.us = phi i64 [ %polly.indvar_next617.us, %polly.loop_header612.us ], [ 0, %polly.loop_header605.us ]
  %227 = add nuw nsw i64 %polly.indvar616.us, %214
  %polly.access.mul.call1620.us = mul nuw nsw i64 %227, 1000
  %polly.access.add.call1621.us = add nuw nsw i64 %226, %polly.access.mul.call1620.us
  %polly.access.call1622.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1621.us
  %polly.access.call1622.load.us = load double, double* %polly.access.call1622.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487.us = add nuw nsw i64 %polly.indvar616.us, %polly.access.mul.Packed_MemRef_call1487.us
  %polly.access.Packed_MemRef_call1487.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us
  store double %polly.access.call1622.load.us, double* %polly.access.Packed_MemRef_call1487.us, align 8
  %polly.indvar_next617.us = add nuw i64 %polly.indvar616.us, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar616.us, %220
  br i1 %exitcond1047.not, label %polly.loop_exit614.loopexit.us, label %polly.loop_header612.us

polly.loop_header624.us:                          ; preds = %polly.loop_exit614.loopexit.us, %polly.loop_header624.us
  %polly.indvar628.us = phi i64 [ %polly.indvar_next629.us, %polly.loop_header624.us ], [ %222, %polly.loop_exit614.loopexit.us ]
  %228 = add nuw nsw i64 %polly.indvar628.us, %214
  %polly.access.mul.call1632.us = mul nsw i64 %228, 1000
  %polly.access.add.call1633.us = add nuw nsw i64 %226, %polly.access.mul.call1632.us
  %polly.access.call1634.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1633.us
  %polly.access.call1634.load.us = load double, double* %polly.access.call1634.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487636.us = add nuw nsw i64 %polly.indvar628.us, %polly.access.mul.Packed_MemRef_call1487.us
  %polly.access.Packed_MemRef_call1487637.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487636.us
  store double %polly.access.call1634.load.us, double* %polly.access.Packed_MemRef_call1487637.us, align 8
  %polly.indvar_next629.us = add nuw nsw i64 %polly.indvar628.us, 1
  %polly.loop_cond630.not.not.us = icmp slt i64 %polly.indvar628.us, %225
  br i1 %polly.loop_cond630.not.not.us, label %polly.loop_header624.us, label %polly.loop_exit626.us

polly.loop_exit626.us:                            ; preds = %polly.loop_header624.us, %polly.loop_exit614.loopexit.us
  %polly.indvar_next609.us = add nuw nsw i64 %polly.indvar608.us, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next609.us, 100
  br i1 %exitcond1048.not, label %polly.loop_header638.preheader, label %polly.loop_header605.us

polly.loop_exit614.loopexit.us:                   ; preds = %polly.loop_header612.us
  br i1 %polly.loop_guard627.not, label %polly.loop_exit626.us, label %polly.loop_header624.us

polly.loop_header599.split:                       ; preds = %polly.loop_header599
  br i1 %polly.loop_guard627.not, label %polly.loop_header638.preheader, label %polly.loop_header605

polly.loop_exit640:                               ; preds = %polly.loop_exit647, %polly.loop_header638.preheader
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %polly.loop_cond604 = icmp ult i64 %polly.indvar602, 37
  %indvars.iv.next1054 = add i64 %indvars.iv1053, -32
  %indvars.iv.next1059 = add i64 %indvars.iv1058, 32
  br i1 %polly.loop_cond604, label %polly.loop_header599, label %polly.loop_exit601

polly.loop_header605:                             ; preds = %polly.loop_header599.split, %polly.loop_exit626
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_exit626 ], [ 0, %polly.loop_header599.split ]
  %229 = add nuw nsw i64 %polly.indvar608, %205
  %polly.access.mul.Packed_MemRef_call1487635 = mul nuw nsw i64 %polly.indvar608, 1200
  br label %polly.loop_header624

polly.loop_exit626:                               ; preds = %polly.loop_header624
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next609, 100
  br i1 %exitcond1046.not, label %polly.loop_header638.preheader, label %polly.loop_header605

polly.loop_header638.preheader:                   ; preds = %polly.loop_exit626, %polly.loop_exit626.us, %polly.loop_header599.split
  %230 = sub nsw i64 %214, %217
  %231 = icmp sgt i64 %230, 0
  %232 = select i1 %231, i64 %230, i64 0
  %233 = mul nsw i64 %polly.indvar602, -32
  %234 = icmp slt i64 %233, -1168
  %235 = select i1 %234, i64 %233, i64 -1168
  %236 = add nsw i64 %235, 1199
  %polly.loop_guard648.not = icmp sgt i64 %232, %236
  br i1 %polly.loop_guard648.not, label %polly.loop_exit640, label %polly.loop_header638

polly.loop_header624:                             ; preds = %polly.loop_header605, %polly.loop_header624
  %polly.indvar628 = phi i64 [ %polly.indvar_next629, %polly.loop_header624 ], [ %222, %polly.loop_header605 ]
  %237 = add nuw nsw i64 %polly.indvar628, %214
  %polly.access.mul.call1632 = mul nsw i64 %237, 1000
  %polly.access.add.call1633 = add nuw nsw i64 %229, %polly.access.mul.call1632
  %polly.access.call1634 = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1633
  %polly.access.call1634.load = load double, double* %polly.access.call1634, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1487636 = add nuw nsw i64 %polly.indvar628, %polly.access.mul.Packed_MemRef_call1487635
  %polly.access.Packed_MemRef_call1487637 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487636
  store double %polly.access.call1634.load, double* %polly.access.Packed_MemRef_call1487637, align 8
  %polly.indvar_next629 = add nuw nsw i64 %polly.indvar628, 1
  %polly.loop_cond630.not.not = icmp slt i64 %polly.indvar628, %225
  br i1 %polly.loop_cond630.not.not, label %polly.loop_header624, label %polly.loop_exit626

polly.loop_header638:                             ; preds = %polly.loop_header638.preheader, %polly.loop_exit647
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_exit647 ], [ 0, %polly.loop_header638.preheader ]
  %238 = add nuw nsw i64 %polly.indvar641, %205
  %polly.access.mul.Packed_MemRef_call1487660 = mul nuw nsw i64 %polly.indvar641, 1200
  %239 = shl i64 %238, 3
  br label %polly.loop_header645

polly.loop_exit647:                               ; preds = %polly.loop_exit655
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next642, 100
  br i1 %exitcond1064.not, label %polly.loop_exit640, label %polly.loop_header638

polly.loop_header645:                             ; preds = %polly.loop_header638, %polly.loop_exit655
  %indvars.iv1060 = phi i64 [ %216, %polly.loop_header638 ], [ %indvars.iv.next1061, %polly.loop_exit655 ]
  %polly.indvar649 = phi i64 [ %232, %polly.loop_header638 ], [ %polly.indvar_next650, %polly.loop_exit655 ]
  %smin1062 = call i64 @llvm.smin.i64(i64 %indvars.iv1060, i64 99)
  %240 = add nsw i64 %polly.indvar649, %218
  %polly.loop_guard6561108 = icmp sgt i64 %240, -1
  br i1 %polly.loop_guard6561108, label %polly.loop_header653.preheader, label %polly.loop_exit655

polly.loop_header653.preheader:                   ; preds = %polly.loop_header645
  %241 = add nuw nsw i64 %polly.indvar649, %217
  %242 = mul i64 %241, 8000
  %243 = add i64 %242, %239
  %scevgep664 = getelementptr i8, i8* %call2, i64 %243
  %scevgep664665 = bitcast i8* %scevgep664 to double*
  %_p_scalar_666 = load double, double* %scevgep664665, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487671 = add nsw i64 %240, %polly.access.mul.Packed_MemRef_call1487660
  %polly.access.Packed_MemRef_call1487672 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487671
  %_p_scalar_673 = load double, double* %polly.access.Packed_MemRef_call1487672, align 8
  %244 = mul i64 %241, 9600
  br label %polly.loop_header653

polly.loop_exit655:                               ; preds = %polly.loop_header653, %polly.loop_header645
  %polly.indvar_next650 = add nuw nsw i64 %polly.indvar649, 1
  %polly.loop_cond651.not.not = icmp slt i64 %polly.indvar649, %236
  %indvars.iv.next1061 = add i64 %indvars.iv1060, 1
  br i1 %polly.loop_cond651.not.not, label %polly.loop_header645, label %polly.loop_exit647

polly.loop_header653:                             ; preds = %polly.loop_header653.preheader, %polly.loop_header653
  %polly.indvar657 = phi i64 [ %polly.indvar_next658, %polly.loop_header653 ], [ 0, %polly.loop_header653.preheader ]
  %245 = add nuw nsw i64 %polly.indvar657, %214
  %polly.access.add.Packed_MemRef_call1487661 = add nuw nsw i64 %polly.indvar657, %polly.access.mul.Packed_MemRef_call1487660
  %polly.access.Packed_MemRef_call1487662 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487661
  %_p_scalar_663 = load double, double* %polly.access.Packed_MemRef_call1487662, align 8
  %p_mul27.i = fmul fast double %_p_scalar_666, %_p_scalar_663
  %246 = mul nuw nsw i64 %245, 8000
  %247 = add nuw nsw i64 %246, %239
  %scevgep667 = getelementptr i8, i8* %call2, i64 %247
  %scevgep667668 = bitcast i8* %scevgep667 to double*
  %_p_scalar_669 = load double, double* %scevgep667668, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i = fmul fast double %_p_scalar_673, %_p_scalar_669
  %248 = shl i64 %245, 3
  %249 = add i64 %248, %244
  %scevgep674 = getelementptr i8, i8* %call, i64 %249
  %scevgep674675 = bitcast i8* %scevgep674 to double*
  %_p_scalar_676 = load double, double* %scevgep674675, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_676
  store double %p_add42.i, double* %scevgep674675, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next658 = add nuw nsw i64 %polly.indvar657, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar657, %smin1062
  br i1 %exitcond1063.not, label %polly.loop_exit655, label %polly.loop_header653

polly.loop_header803:                             ; preds = %entry, %polly.loop_exit811
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094, %polly.loop_exit811 ], [ 0, %entry ]
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_exit811 ], [ 0, %entry ]
  %smin1095 = call i64 @llvm.smin.i64(i64 %indvars.iv1093, i64 -1168)
  %250 = shl nsw i64 %polly.indvar806, 5
  %251 = add nsw i64 %smin1095, 1199
  br label %polly.loop_header809

polly.loop_exit811:                               ; preds = %polly.loop_exit817
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %indvars.iv.next1094 = add nsw i64 %indvars.iv1093, -32
  %exitcond1098.not = icmp eq i64 %polly.indvar_next807, 38
  br i1 %exitcond1098.not, label %polly.loop_header830, label %polly.loop_header803

polly.loop_header809:                             ; preds = %polly.loop_exit817, %polly.loop_header803
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090, %polly.loop_exit817 ], [ 0, %polly.loop_header803 ]
  %polly.indvar812 = phi i64 [ %polly.indvar_next813, %polly.loop_exit817 ], [ 0, %polly.loop_header803 ]
  %252 = mul nsw i64 %polly.indvar812, -32
  %smin1139 = call i64 @llvm.smin.i64(i64 %252, i64 -1168)
  %253 = add nsw i64 %smin1139, 1200
  %smin1091 = call i64 @llvm.smin.i64(i64 %indvars.iv1089, i64 -1168)
  %254 = shl nsw i64 %polly.indvar812, 5
  %255 = add nsw i64 %smin1091, 1199
  br label %polly.loop_header815

polly.loop_exit817:                               ; preds = %polly.loop_exit823
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %indvars.iv.next1090 = add nsw i64 %indvars.iv1089, -32
  %exitcond1097.not = icmp eq i64 %polly.indvar_next813, 38
  br i1 %exitcond1097.not, label %polly.loop_exit811, label %polly.loop_header809

polly.loop_header815:                             ; preds = %polly.loop_exit823, %polly.loop_header809
  %polly.indvar818 = phi i64 [ 0, %polly.loop_header809 ], [ %polly.indvar_next819, %polly.loop_exit823 ]
  %256 = add nuw nsw i64 %polly.indvar818, %250
  %257 = trunc i64 %256 to i32
  %258 = mul nuw nsw i64 %256, 9600
  %min.iters.check = icmp eq i64 %253, 0
  br i1 %min.iters.check, label %polly.loop_header821, label %vector.ph1140

vector.ph1140:                                    ; preds = %polly.loop_header815
  %broadcast.splatinsert1147 = insertelement <4 x i64> poison, i64 %254, i32 0
  %broadcast.splat1148 = shufflevector <4 x i64> %broadcast.splatinsert1147, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1149 = insertelement <4 x i32> poison, i32 %257, i32 0
  %broadcast.splat1150 = shufflevector <4 x i32> %broadcast.splatinsert1149, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1138

vector.body1138:                                  ; preds = %vector.body1138, %vector.ph1140
  %index1141 = phi i64 [ 0, %vector.ph1140 ], [ %index.next1142, %vector.body1138 ]
  %vec.ind1145 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1140 ], [ %vec.ind.next1146, %vector.body1138 ]
  %259 = add nuw nsw <4 x i64> %vec.ind1145, %broadcast.splat1148
  %260 = trunc <4 x i64> %259 to <4 x i32>
  %261 = mul <4 x i32> %broadcast.splat1150, %260
  %262 = add <4 x i32> %261, <i32 3, i32 3, i32 3, i32 3>
  %263 = urem <4 x i32> %262, <i32 1200, i32 1200, i32 1200, i32 1200>
  %264 = sitofp <4 x i32> %263 to <4 x double>
  %265 = fmul fast <4 x double> %264, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %266 = extractelement <4 x i64> %259, i32 0
  %267 = shl i64 %266, 3
  %268 = add nuw nsw i64 %267, %258
  %269 = getelementptr i8, i8* %call, i64 %268
  %270 = bitcast i8* %269 to <4 x double>*
  store <4 x double> %265, <4 x double>* %270, align 8, !alias.scope !98, !noalias !100
  %index.next1142 = add i64 %index1141, 4
  %vec.ind.next1146 = add <4 x i64> %vec.ind1145, <i64 4, i64 4, i64 4, i64 4>
  %271 = icmp eq i64 %index.next1142, %253
  br i1 %271, label %polly.loop_exit823, label %vector.body1138, !llvm.loop !103

polly.loop_exit823:                               ; preds = %vector.body1138, %polly.loop_header821
  %polly.indvar_next819 = add nuw nsw i64 %polly.indvar818, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar818, %251
  br i1 %exitcond1096.not, label %polly.loop_exit817, label %polly.loop_header815

polly.loop_header821:                             ; preds = %polly.loop_header815, %polly.loop_header821
  %polly.indvar824 = phi i64 [ %polly.indvar_next825, %polly.loop_header821 ], [ 0, %polly.loop_header815 ]
  %272 = add nuw nsw i64 %polly.indvar824, %254
  %273 = trunc i64 %272 to i32
  %274 = mul i32 %273, %257
  %275 = add i32 %274, 3
  %276 = urem i32 %275, 1200
  %p_conv31.i = sitofp i32 %276 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %277 = shl i64 %272, 3
  %278 = add nuw nsw i64 %277, %258
  %scevgep827 = getelementptr i8, i8* %call, i64 %278
  %scevgep827828 = bitcast i8* %scevgep827 to double*
  store double %p_div33.i, double* %scevgep827828, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next825 = add nuw nsw i64 %polly.indvar824, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar824, %255
  br i1 %exitcond1092.not, label %polly.loop_exit823, label %polly.loop_header821, !llvm.loop !104

polly.loop_header830:                             ; preds = %polly.loop_exit811, %polly.loop_exit838
  %indvars.iv1083 = phi i64 [ %indvars.iv.next1084, %polly.loop_exit838 ], [ 0, %polly.loop_exit811 ]
  %polly.indvar833 = phi i64 [ %polly.indvar_next834, %polly.loop_exit838 ], [ 0, %polly.loop_exit811 ]
  %smin1085 = call i64 @llvm.smin.i64(i64 %indvars.iv1083, i64 -1168)
  %279 = shl nsw i64 %polly.indvar833, 5
  %280 = add nsw i64 %smin1085, 1199
  br label %polly.loop_header836

polly.loop_exit838:                               ; preds = %polly.loop_exit844
  %polly.indvar_next834 = add nuw nsw i64 %polly.indvar833, 1
  %indvars.iv.next1084 = add nsw i64 %indvars.iv1083, -32
  %exitcond1088.not = icmp eq i64 %polly.indvar_next834, 38
  br i1 %exitcond1088.not, label %polly.loop_header856, label %polly.loop_header830

polly.loop_header836:                             ; preds = %polly.loop_exit844, %polly.loop_header830
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit844 ], [ 0, %polly.loop_header830 ]
  %polly.indvar839 = phi i64 [ %polly.indvar_next840, %polly.loop_exit844 ], [ 0, %polly.loop_header830 ]
  %281 = mul nsw i64 %polly.indvar839, -32
  %smin1154 = call i64 @llvm.smin.i64(i64 %281, i64 -968)
  %282 = add nsw i64 %smin1154, 1000
  %smin1081 = call i64 @llvm.smin.i64(i64 %indvars.iv1079, i64 -968)
  %283 = shl nsw i64 %polly.indvar839, 5
  %284 = add nsw i64 %smin1081, 999
  br label %polly.loop_header842

polly.loop_exit844:                               ; preds = %polly.loop_exit850
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %indvars.iv.next1080 = add nsw i64 %indvars.iv1079, -32
  %exitcond1087.not = icmp eq i64 %polly.indvar_next840, 32
  br i1 %exitcond1087.not, label %polly.loop_exit838, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_exit850, %polly.loop_header836
  %polly.indvar845 = phi i64 [ 0, %polly.loop_header836 ], [ %polly.indvar_next846, %polly.loop_exit850 ]
  %285 = add nuw nsw i64 %polly.indvar845, %279
  %286 = trunc i64 %285 to i32
  %287 = mul nuw nsw i64 %285, 8000
  %min.iters.check1155 = icmp eq i64 %282, 0
  br i1 %min.iters.check1155, label %polly.loop_header848, label %vector.ph1156

vector.ph1156:                                    ; preds = %polly.loop_header842
  %broadcast.splatinsert1165 = insertelement <4 x i64> poison, i64 %283, i32 0
  %broadcast.splat1166 = shufflevector <4 x i64> %broadcast.splatinsert1165, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1167 = insertelement <4 x i32> poison, i32 %286, i32 0
  %broadcast.splat1168 = shufflevector <4 x i32> %broadcast.splatinsert1167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1153

vector.body1153:                                  ; preds = %vector.body1153, %vector.ph1156
  %index1159 = phi i64 [ 0, %vector.ph1156 ], [ %index.next1160, %vector.body1153 ]
  %vec.ind1163 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1156 ], [ %vec.ind.next1164, %vector.body1153 ]
  %288 = add nuw nsw <4 x i64> %vec.ind1163, %broadcast.splat1166
  %289 = trunc <4 x i64> %288 to <4 x i32>
  %290 = mul <4 x i32> %broadcast.splat1168, %289
  %291 = add <4 x i32> %290, <i32 2, i32 2, i32 2, i32 2>
  %292 = urem <4 x i32> %291, <i32 1000, i32 1000, i32 1000, i32 1000>
  %293 = sitofp <4 x i32> %292 to <4 x double>
  %294 = fmul fast <4 x double> %293, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %295 = extractelement <4 x i64> %288, i32 0
  %296 = shl i64 %295, 3
  %297 = add nuw nsw i64 %296, %287
  %298 = getelementptr i8, i8* %call2, i64 %297
  %299 = bitcast i8* %298 to <4 x double>*
  store <4 x double> %294, <4 x double>* %299, align 8, !alias.scope !102, !noalias !105
  %index.next1160 = add i64 %index1159, 4
  %vec.ind.next1164 = add <4 x i64> %vec.ind1163, <i64 4, i64 4, i64 4, i64 4>
  %300 = icmp eq i64 %index.next1160, %282
  br i1 %300, label %polly.loop_exit850, label %vector.body1153, !llvm.loop !106

polly.loop_exit850:                               ; preds = %vector.body1153, %polly.loop_header848
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar845, %280
  br i1 %exitcond1086.not, label %polly.loop_exit844, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_header842, %polly.loop_header848
  %polly.indvar851 = phi i64 [ %polly.indvar_next852, %polly.loop_header848 ], [ 0, %polly.loop_header842 ]
  %301 = add nuw nsw i64 %polly.indvar851, %283
  %302 = trunc i64 %301 to i32
  %303 = mul i32 %302, %286
  %304 = add i32 %303, 2
  %305 = urem i32 %304, 1000
  %p_conv10.i = sitofp i32 %305 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %306 = shl i64 %301, 3
  %307 = add nuw nsw i64 %306, %287
  %scevgep854 = getelementptr i8, i8* %call2, i64 %307
  %scevgep854855 = bitcast i8* %scevgep854 to double*
  store double %p_div12.i, double* %scevgep854855, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar851, %284
  br i1 %exitcond1082.not, label %polly.loop_exit850, label %polly.loop_header848, !llvm.loop !107

polly.loop_header856:                             ; preds = %polly.loop_exit838, %polly.loop_exit864
  %indvars.iv1073 = phi i64 [ %indvars.iv.next1074, %polly.loop_exit864 ], [ 0, %polly.loop_exit838 ]
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_exit864 ], [ 0, %polly.loop_exit838 ]
  %smin1075 = call i64 @llvm.smin.i64(i64 %indvars.iv1073, i64 -1168)
  %308 = shl nsw i64 %polly.indvar859, 5
  %309 = add nsw i64 %smin1075, 1199
  br label %polly.loop_header862

polly.loop_exit864:                               ; preds = %polly.loop_exit870
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %indvars.iv.next1074 = add nsw i64 %indvars.iv1073, -32
  %exitcond1078.not = icmp eq i64 %polly.indvar_next860, 38
  br i1 %exitcond1078.not, label %init_array.exit, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_exit870, %polly.loop_header856
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070, %polly.loop_exit870 ], [ 0, %polly.loop_header856 ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %polly.loop_header856 ]
  %310 = mul nsw i64 %polly.indvar865, -32
  %smin1172 = call i64 @llvm.smin.i64(i64 %310, i64 -968)
  %311 = add nsw i64 %smin1172, 1000
  %smin1071 = call i64 @llvm.smin.i64(i64 %indvars.iv1069, i64 -968)
  %312 = shl nsw i64 %polly.indvar865, 5
  %313 = add nsw i64 %smin1071, 999
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, -32
  %exitcond1077.not = icmp eq i64 %polly.indvar_next866, 32
  br i1 %exitcond1077.not, label %polly.loop_exit864, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %polly.indvar871 = phi i64 [ 0, %polly.loop_header862 ], [ %polly.indvar_next872, %polly.loop_exit876 ]
  %314 = add nuw nsw i64 %polly.indvar871, %308
  %315 = trunc i64 %314 to i32
  %316 = mul nuw nsw i64 %314, 8000
  %min.iters.check1173 = icmp eq i64 %311, 0
  br i1 %min.iters.check1173, label %polly.loop_header874, label %vector.ph1174

vector.ph1174:                                    ; preds = %polly.loop_header868
  %broadcast.splatinsert1183 = insertelement <4 x i64> poison, i64 %312, i32 0
  %broadcast.splat1184 = shufflevector <4 x i64> %broadcast.splatinsert1183, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1185 = insertelement <4 x i32> poison, i32 %315, i32 0
  %broadcast.splat1186 = shufflevector <4 x i32> %broadcast.splatinsert1185, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %vector.ph1174
  %index1177 = phi i64 [ 0, %vector.ph1174 ], [ %index.next1178, %vector.body1171 ]
  %vec.ind1181 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1174 ], [ %vec.ind.next1182, %vector.body1171 ]
  %317 = add nuw nsw <4 x i64> %vec.ind1181, %broadcast.splat1184
  %318 = trunc <4 x i64> %317 to <4 x i32>
  %319 = mul <4 x i32> %broadcast.splat1186, %318
  %320 = add <4 x i32> %319, <i32 1, i32 1, i32 1, i32 1>
  %321 = urem <4 x i32> %320, <i32 1200, i32 1200, i32 1200, i32 1200>
  %322 = sitofp <4 x i32> %321 to <4 x double>
  %323 = fmul fast <4 x double> %322, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %324 = extractelement <4 x i64> %317, i32 0
  %325 = shl i64 %324, 3
  %326 = add nuw nsw i64 %325, %316
  %327 = getelementptr i8, i8* %call1, i64 %326
  %328 = bitcast i8* %327 to <4 x double>*
  store <4 x double> %323, <4 x double>* %328, align 8, !alias.scope !101, !noalias !108
  %index.next1178 = add i64 %index1177, 4
  %vec.ind.next1182 = add <4 x i64> %vec.ind1181, <i64 4, i64 4, i64 4, i64 4>
  %329 = icmp eq i64 %index.next1178, %311
  br i1 %329, label %polly.loop_exit876, label %vector.body1171, !llvm.loop !109

polly.loop_exit876:                               ; preds = %vector.body1171, %polly.loop_header874
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar871, %309
  br i1 %exitcond1076.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_header868, %polly.loop_header874
  %polly.indvar877 = phi i64 [ %polly.indvar_next878, %polly.loop_header874 ], [ 0, %polly.loop_header868 ]
  %330 = add nuw nsw i64 %polly.indvar877, %312
  %331 = trunc i64 %330 to i32
  %332 = mul i32 %331, %315
  %333 = add i32 %332, 1
  %334 = urem i32 %333, 1200
  %p_conv.i = sitofp i32 %334 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %335 = shl i64 %330, 3
  %336 = add nuw nsw i64 %335, %316
  %scevgep881 = getelementptr i8, i8* %call1, i64 %336
  %scevgep881882 = bitcast i8* %scevgep881 to double*
  store double %p_div.i, double* %scevgep881882, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar877, %313
  br i1 %exitcond1072.not, label %polly.loop_exit876, label %polly.loop_header874, !llvm.loop !110
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
!21 = distinct !{!"A"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 100}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !25, !34, !37}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !23, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !23, !39, !40}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = !{!"llvm.loop.interchange.followup_interchanged", !41}
!41 = distinct !{!41, !12, !23, !39, !42, !43, !44}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !23, !46, !47, !48, !49, !50, !56}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 32}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !23, !52, !53, !54, !55}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.loop.interchange.enable", i1 true}
!54 = !{!"llvm.loop.interchange.depth", i32 5}
!55 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!56 = !{!"llvm.loop.tile.followup_tile", !57}
!57 = distinct !{!57, !12, !23, !58}
!58 = !{!"llvm.loop.id", !"i2"}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !4, i64 0}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !68, !"polly.alias.scope.MemRef_call"}
!68 = distinct !{!68, !"polly.alias.scope.domain"}
!69 = !{!70, !71, !72}
!70 = distinct !{!70, !68, !"polly.alias.scope.MemRef_call1"}
!71 = distinct !{!71, !68, !"polly.alias.scope.MemRef_call2"}
!72 = distinct !{!72, !68, !"polly.alias.scope.Packed_MemRef_call1"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !75, !13}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!67, !71, !72}
!77 = !{!67, !70, !72}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !75, !13}
!86 = !{!78, !82, !83}
!87 = !{!78, !81, !83}
!88 = distinct !{!88, !89, !"polly.alias.scope.MemRef_call"}
!89 = distinct !{!89, !"polly.alias.scope.domain"}
!90 = !{!91, !92, !93}
!91 = distinct !{!91, !89, !"polly.alias.scope.MemRef_call1"}
!92 = distinct !{!92, !89, !"polly.alias.scope.MemRef_call2"}
!93 = distinct !{!93, !89, !"polly.alias.scope.Packed_MemRef_call1"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !75, !13}
!96 = !{!88, !92, !93}
!97 = !{!88, !91, !93}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !75, !13}
!105 = !{!101, !98}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !75, !13}
!108 = !{!102, !98}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !75, !13}
