; ModuleID = 'syr2k_exhaustive/mmp_all_XL_2689.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_2689.c"
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
  %scevgep1132 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1131 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1130 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1129 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1129, %scevgep1132
  %bound1 = icmp ult i8* %scevgep1131, %scevgep1130
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
  br i1 %exitcond18.not.i, label %vector.ph1136, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1136:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1143 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1144 = shufflevector <4 x i64> %broadcast.splatinsert1143, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1135

vector.body1135:                                  ; preds = %vector.body1135, %vector.ph1136
  %index1137 = phi i64 [ 0, %vector.ph1136 ], [ %index.next1138, %vector.body1135 ]
  %vec.ind1141 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1136 ], [ %vec.ind.next1142, %vector.body1135 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1141, %broadcast.splat1144
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv7.i, i64 %index1137
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1138 = add i64 %index1137, 4
  %vec.ind.next1142 = add <4 x i64> %vec.ind1141, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1138, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1135, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1135
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1136, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit864
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start484, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1198 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1198, label %for.body3.i46.preheader1275, label %vector.ph1199

vector.ph1199:                                    ; preds = %for.body3.i46.preheader
  %n.vec1201 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1199
  %index1202 = phi i64 [ 0, %vector.ph1199 ], [ %index.next1203, %vector.body1197 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i, i64 %index1202
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1203 = add i64 %index1202, 4
  %46 = icmp eq i64 %index.next1203, %n.vec1201
  br i1 %46, label %middle.block1195, label %vector.body1197, !llvm.loop !18

middle.block1195:                                 ; preds = %vector.body1197
  %cmp.n1205 = icmp eq i64 %indvars.iv21.i, %n.vec1201
  br i1 %cmp.n1205, label %for.inc6.i, label %for.body3.i46.preheader1275

for.body3.i46.preheader1275:                      ; preds = %for.body3.i46.preheader, %middle.block1195
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1201, %middle.block1195 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1275, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1275 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1195, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

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
  %min.iters.check1221 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1221, label %for.body3.i60.preheader1273, label %vector.ph1222

vector.ph1222:                                    ; preds = %for.body3.i60.preheader
  %n.vec1224 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %vector.ph1222
  %index1225 = phi i64 [ 0, %vector.ph1222 ], [ %index.next1226, %vector.body1220 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i52, i64 %index1225
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1229 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1229, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1226 = add i64 %index1225, 4
  %57 = icmp eq i64 %index.next1226, %n.vec1224
  br i1 %57, label %middle.block1218, label %vector.body1220, !llvm.loop !60

middle.block1218:                                 ; preds = %vector.body1220
  %cmp.n1228 = icmp eq i64 %indvars.iv21.i52, %n.vec1224
  br i1 %cmp.n1228, label %for.inc6.i63, label %for.body3.i60.preheader1273

for.body3.i60.preheader1273:                      ; preds = %for.body3.i60.preheader, %middle.block1218
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1224, %middle.block1218 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1273, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1273 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1218, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

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
  %min.iters.check1247 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1247, label %for.body3.i99.preheader1271, label %vector.ph1248

vector.ph1248:                                    ; preds = %for.body3.i99.preheader
  %n.vec1250 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1246

vector.body1246:                                  ; preds = %vector.body1246, %vector.ph1248
  %index1251 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1252, %vector.body1246 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i91, i64 %index1251
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1255 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1255, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1252 = add i64 %index1251, 4
  %68 = icmp eq i64 %index.next1252, %n.vec1250
  br i1 %68, label %middle.block1244, label %vector.body1246, !llvm.loop !62

middle.block1244:                                 ; preds = %vector.body1246
  %cmp.n1254 = icmp eq i64 %indvars.iv21.i91, %n.vec1250
  br i1 %cmp.n1254, label %for.inc6.i102, label %for.body3.i99.preheader1271

for.body3.i99.preheader1271:                      ; preds = %for.body3.i99.preheader, %middle.block1244
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1250, %middle.block1244 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1271, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1271 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1244, %for.cond1.preheader.i93
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call829, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
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
  %malloccall = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1259 = phi i64 [ %indvar.next1260, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1259, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1261 = icmp ult i64 %88, 4
  br i1 %min.iters.check1261, label %polly.loop_header191.preheader, label %vector.ph1262

vector.ph1262:                                    ; preds = %polly.loop_header
  %n.vec1264 = and i64 %88, -4
  br label %vector.body1258

vector.body1258:                                  ; preds = %vector.body1258, %vector.ph1262
  %index1265 = phi i64 [ 0, %vector.ph1262 ], [ %index.next1266, %vector.body1258 ]
  %90 = shl nuw nsw i64 %index1265, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1269 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1269, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1266 = add i64 %index1265, 4
  %95 = icmp eq i64 %index.next1266, %n.vec1264
  br i1 %95, label %middle.block1256, label %vector.body1258, !llvm.loop !74

middle.block1256:                                 ; preds = %vector.body1258
  %cmp.n1268 = icmp eq i64 %88, %n.vec1264
  br i1 %cmp.n1268, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1256
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1264, %middle.block1256 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1256
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1260 = add i64 %indvar1259, 1
  br i1 %exitcond1027.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1026.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin1022 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -984)
  %97 = add nsw i64 %smin1022, 1000
  %98 = shl nsw i64 %polly.indvar202, 4
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -16
  %exitcond1025.not = icmp eq i64 %polly.indvar_next203, 63
  br i1 %exitcond1025.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv1014 = phi i64 [ %indvars.iv.next1015, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv1010 = phi i64 [ %indvars.iv.next1011, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv1008 = phi i64 [ %indvars.iv.next1009, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = lshr i64 %polly.indvar208, 1
  %100 = add nuw i64 %indvars.iv1010, %99
  %101 = shl nuw nsw i64 %100, 2
  %102 = sub i64 %indvars.iv1008, %101
  %103 = add i64 %indvars.iv1014, %101
  %104 = mul nuw nsw i64 %polly.indvar208, 12
  %105 = add nuw nsw i64 %104, %99
  %106 = mul nsw i64 %polly.indvar208, -50
  %107 = mul nuw nsw i64 %polly.indvar208, 50
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit250
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next1009 = add nuw nsw i64 %indvars.iv1008, 50
  %indvars.iv.next1011 = add nuw nsw i64 %indvars.iv1010, 12
  %indvars.iv.next1015 = add nsw i64 %indvars.iv1014, -50
  %exitcond1024.not = icmp eq i64 %polly.indvar_next209, 24
  br i1 %exitcond1024.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit250, %polly.loop_header205
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit250 ], [ %103, %polly.loop_header205 ]
  %indvars.iv1012 = phi i64 [ %indvars.iv.next1013, %polly.loop_exit250 ], [ %102, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit250 ], [ %105, %polly.loop_header205 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1012, i64 0)
  %108 = add i64 %smax, %indvars.iv1016
  %109 = shl nsw i64 %polly.indvar214, 2
  %110 = add nsw i64 %109, %106
  %111 = add nsw i64 %110, -1
  %.inv = icmp sgt i64 %110, 49
  %112 = select i1 %.inv, i64 49, i64 %111
  %polly.loop_guard = icmp sgt i64 %112, -1
  %113 = icmp sgt i64 %110, 0
  %114 = select i1 %113, i64 %110, i64 0
  %115 = add nsw i64 %110, 3
  %polly.loop_guard237.not = icmp sgt i64 %114, %115
  br i1 %polly.loop_guard, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit236.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit236.us ], [ 0, %polly.loop_header211 ]
  %116 = add nuw nsw i64 %polly.indvar220.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header217.us ]
  %117 = add nuw nsw i64 %polly.indvar226.us, %107
  %polly.access.mul.call1230.us = mul nuw nsw i64 %117, 1000
  %polly.access.add.call1231.us = add nuw nsw i64 %116, %polly.access.mul.call1230.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw i64 %polly.indvar226.us, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar226.us, %112
  br i1 %exitcond1005.not, label %polly.loop_exit225.loopexit.us, label %polly.loop_header223.us

polly.loop_header234.us:                          ; preds = %polly.loop_exit225.loopexit.us, %polly.loop_header234.us
  %polly.indvar238.us = phi i64 [ %polly.indvar_next239.us, %polly.loop_header234.us ], [ %114, %polly.loop_exit225.loopexit.us ]
  %118 = add nuw nsw i64 %polly.indvar238.us, %107
  %polly.access.mul.call1242.us = mul nsw i64 %118, 1000
  %polly.access.add.call1243.us = add nuw nsw i64 %116, %polly.access.mul.call1242.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1246.us = add nuw nsw i64 %polly.indvar238.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  %polly.indvar_next239.us = add nuw nsw i64 %polly.indvar238.us, 1
  %polly.loop_cond240.not.not.us = icmp slt i64 %polly.indvar238.us, %115
  br i1 %polly.loop_cond240.not.not.us, label %polly.loop_header234.us, label %polly.loop_exit236.us

polly.loop_exit236.us:                            ; preds = %polly.loop_header234.us, %polly.loop_exit225.loopexit.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond1007.not = icmp eq i64 %polly.indvar_next221.us, %97
  br i1 %exitcond1007.not, label %polly.loop_header248.preheader, label %polly.loop_header217.us

polly.loop_exit225.loopexit.us:                   ; preds = %polly.loop_header223.us
  br i1 %polly.loop_guard237.not, label %polly.loop_exit236.us, label %polly.loop_header234.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %polly.loop_guard237.not, label %polly.loop_header248.preheader, label %polly.loop_header217

polly.loop_exit250:                               ; preds = %polly.loop_exit257.loopexit.us, %polly.loop_header248.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp ult i64 %polly.indvar214, 299
  %indvars.iv.next1013 = add i64 %indvars.iv1012, -4
  %indvars.iv.next1017 = add i64 %indvars.iv1016, 4
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_exit236
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit236 ], [ 0, %polly.loop_header211.split ]
  %119 = add nuw nsw i64 %polly.indvar220, %98
  %polly.access.mul.Packed_MemRef_call1245 = mul nuw nsw i64 %polly.indvar220, 1200
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_header234
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %97
  br i1 %exitcond.not, label %polly.loop_header248.preheader, label %polly.loop_header217

polly.loop_header248.preheader:                   ; preds = %polly.loop_exit236, %polly.loop_exit236.us, %polly.loop_header211.split
  %120 = sub nsw i64 %107, %109
  %121 = icmp sgt i64 %120, 0
  %122 = select i1 %121, i64 %120, i64 0
  %polly.loop_guard258 = icmp slt i64 %122, 4
  br i1 %polly.loop_guard258, label %polly.loop_header248.us, label %polly.loop_exit250

polly.loop_header248.us:                          ; preds = %polly.loop_header248.preheader, %polly.loop_exit257.loopexit.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_exit257.loopexit.us ], [ 0, %polly.loop_header248.preheader ]
  %123 = add nuw nsw i64 %polly.indvar251.us, %98
  %polly.access.mul.Packed_MemRef_call1270.us = mul nuw nsw i64 %polly.indvar251.us, 1200
  %124 = shl i64 %123, 3
  br label %polly.loop_header255.us

polly.loop_header255.us:                          ; preds = %polly.loop_header248.us, %polly.loop_exit265.us
  %indvars.iv1018 = phi i64 [ %108, %polly.loop_header248.us ], [ %indvars.iv.next1019, %polly.loop_exit265.us ]
  %polly.indvar259.us = phi i64 [ %122, %polly.loop_header248.us ], [ %polly.indvar_next260.us, %polly.loop_exit265.us ]
  %smin1020 = call i64 @llvm.smin.i64(i64 %indvars.iv1018, i64 49)
  %125 = add nsw i64 %polly.indvar259.us, %110
  %polly.loop_guard266.us1118 = icmp sgt i64 %125, -1
  br i1 %polly.loop_guard266.us1118, label %polly.loop_header263.preheader.us, label %polly.loop_exit265.us

polly.loop_header263.us:                          ; preds = %polly.loop_header263.preheader.us, %polly.loop_header263.us
  %polly.indvar267.us = phi i64 [ %polly.indvar_next268.us, %polly.loop_header263.us ], [ 0, %polly.loop_header263.preheader.us ]
  %126 = add nuw nsw i64 %polly.indvar267.us, %107
  %polly.access.add.Packed_MemRef_call1271.us = add nuw nsw i64 %polly.indvar267.us, %polly.access.mul.Packed_MemRef_call1270.us
  %polly.access.Packed_MemRef_call1272.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.us
  %_p_scalar_273.us = load double, double* %polly.access.Packed_MemRef_call1272.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_276.us, %_p_scalar_273.us
  %127 = mul nuw nsw i64 %126, 8000
  %128 = add nuw nsw i64 %127, %124
  %scevgep277.us = getelementptr i8, i8* %call2, i64 %128
  %scevgep277278.us = bitcast i8* %scevgep277.us to double*
  %_p_scalar_279.us = load double, double* %scevgep277278.us, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.us = fmul fast double %_p_scalar_283.us, %_p_scalar_279.us
  %129 = shl i64 %126, 3
  %130 = add i64 %129, %134
  %scevgep284.us = getelementptr i8, i8* %call, i64 %130
  %scevgep284285.us = bitcast i8* %scevgep284.us to double*
  %_p_scalar_286.us = load double, double* %scevgep284285.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_286.us
  store double %p_add42.i118.us, double* %scevgep284285.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next268.us = add nuw nsw i64 %polly.indvar267.us, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar267.us, %smin1020
  br i1 %exitcond1021.not, label %polly.loop_exit265.us, label %polly.loop_header263.us

polly.loop_exit265.us:                            ; preds = %polly.loop_header263.us, %polly.loop_header255.us
  %polly.indvar_next260.us = add nuw nsw i64 %polly.indvar259.us, 1
  %polly.loop_cond261.us = icmp ult i64 %polly.indvar259.us, 3
  %indvars.iv.next1019 = add i64 %indvars.iv1018, 1
  br i1 %polly.loop_cond261.us, label %polly.loop_header255.us, label %polly.loop_exit257.loopexit.us

polly.loop_header263.preheader.us:                ; preds = %polly.loop_header255.us
  %131 = add nuw nsw i64 %polly.indvar259.us, %109
  %132 = mul i64 %131, 8000
  %133 = add i64 %132, %124
  %scevgep274.us = getelementptr i8, i8* %call2, i64 %133
  %scevgep274275.us = bitcast i8* %scevgep274.us to double*
  %_p_scalar_276.us = load double, double* %scevgep274275.us, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1281.us = add nsw i64 %125, %polly.access.mul.Packed_MemRef_call1270.us
  %polly.access.Packed_MemRef_call1282.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1281.us
  %_p_scalar_283.us = load double, double* %polly.access.Packed_MemRef_call1282.us, align 8
  %134 = mul i64 %131, 9600
  br label %polly.loop_header263.us

polly.loop_exit257.loopexit.us:                   ; preds = %polly.loop_exit265.us
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar_next252.us, %97
  br i1 %exitcond1023.not, label %polly.loop_exit250, label %polly.loop_header248.us

polly.loop_header234:                             ; preds = %polly.loop_header217, %polly.loop_header234
  %polly.indvar238 = phi i64 [ %polly.indvar_next239, %polly.loop_header234 ], [ %114, %polly.loop_header217 ]
  %135 = add nuw nsw i64 %polly.indvar238, %107
  %polly.access.mul.call1242 = mul nsw i64 %135, 1000
  %polly.access.add.call1243 = add nuw nsw i64 %119, %polly.access.mul.call1242
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1243
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1246 = add nuw nsw i64 %polly.indvar238, %polly.access.mul.Packed_MemRef_call1245
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.indvar_next239 = add nuw nsw i64 %polly.indvar238, 1
  %polly.loop_cond240.not.not = icmp slt i64 %polly.indvar238, %115
  br i1 %polly.loop_cond240.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.start289:                                   ; preds = %kernel_syr2k.exit
  %malloccall291 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header375

polly.exiting290:                                 ; preds = %polly.loop_exit399
  tail call void @free(i8* %malloccall291)
  br label %kernel_syr2k.exit90

polly.loop_header375:                             ; preds = %polly.loop_exit383, %polly.start289
  %indvar1233 = phi i64 [ %indvar.next1234, %polly.loop_exit383 ], [ 0, %polly.start289 ]
  %polly.indvar378 = phi i64 [ %polly.indvar_next379, %polly.loop_exit383 ], [ 1, %polly.start289 ]
  %136 = add i64 %indvar1233, 1
  %137 = mul nuw nsw i64 %polly.indvar378, 9600
  %scevgep387 = getelementptr i8, i8* %call, i64 %137
  %min.iters.check1235 = icmp ult i64 %136, 4
  br i1 %min.iters.check1235, label %polly.loop_header381.preheader, label %vector.ph1236

vector.ph1236:                                    ; preds = %polly.loop_header375
  %n.vec1238 = and i64 %136, -4
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.body1232, %vector.ph1236
  %index1239 = phi i64 [ 0, %vector.ph1236 ], [ %index.next1240, %vector.body1232 ]
  %138 = shl nuw nsw i64 %index1239, 3
  %139 = getelementptr i8, i8* %scevgep387, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  %wide.load1243 = load <4 x double>, <4 x double>* %140, align 8, !alias.scope !79, !noalias !81
  %141 = fmul fast <4 x double> %wide.load1243, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %142 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %141, <4 x double>* %142, align 8, !alias.scope !79, !noalias !81
  %index.next1240 = add i64 %index1239, 4
  %143 = icmp eq i64 %index.next1240, %n.vec1238
  br i1 %143, label %middle.block1230, label %vector.body1232, !llvm.loop !85

middle.block1230:                                 ; preds = %vector.body1232
  %cmp.n1242 = icmp eq i64 %136, %n.vec1238
  br i1 %cmp.n1242, label %polly.loop_exit383, label %polly.loop_header381.preheader

polly.loop_header381.preheader:                   ; preds = %polly.loop_header375, %middle.block1230
  %polly.indvar384.ph = phi i64 [ 0, %polly.loop_header375 ], [ %n.vec1238, %middle.block1230 ]
  br label %polly.loop_header381

polly.loop_exit383:                               ; preds = %polly.loop_header381, %middle.block1230
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar_next379, 1200
  %indvar.next1234 = add i64 %indvar1233, 1
  br i1 %exitcond1055.not, label %polly.loop_header391.preheader, label %polly.loop_header375

polly.loop_header391.preheader:                   ; preds = %polly.loop_exit383
  %Packed_MemRef_call1292 = bitcast i8* %malloccall291 to double*
  br label %polly.loop_header391

polly.loop_header381:                             ; preds = %polly.loop_header381.preheader, %polly.loop_header381
  %polly.indvar384 = phi i64 [ %polly.indvar_next385, %polly.loop_header381 ], [ %polly.indvar384.ph, %polly.loop_header381.preheader ]
  %144 = shl nuw nsw i64 %polly.indvar384, 3
  %scevgep388 = getelementptr i8, i8* %scevgep387, i64 %144
  %scevgep388389 = bitcast i8* %scevgep388 to double*
  %_p_scalar_390 = load double, double* %scevgep388389, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_390, 1.200000e+00
  store double %p_mul.i57, double* %scevgep388389, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next385 = add nuw nsw i64 %polly.indvar384, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar_next385, %polly.indvar378
  br i1 %exitcond1054.not, label %polly.loop_exit383, label %polly.loop_header381, !llvm.loop !86

polly.loop_header391:                             ; preds = %polly.loop_header391.preheader, %polly.loop_exit399
  %indvars.iv1028 = phi i64 [ 0, %polly.loop_header391.preheader ], [ %indvars.iv.next1029, %polly.loop_exit399 ]
  %polly.indvar394 = phi i64 [ 0, %polly.loop_header391.preheader ], [ %polly.indvar_next395, %polly.loop_exit399 ]
  %smin1050 = call i64 @llvm.smin.i64(i64 %indvars.iv1028, i64 -984)
  %145 = add nsw i64 %smin1050, 1000
  %146 = shl nsw i64 %polly.indvar394, 4
  br label %polly.loop_header397

polly.loop_exit399:                               ; preds = %polly.loop_exit406
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %indvars.iv.next1029 = add nsw i64 %indvars.iv1028, -16
  %exitcond1053.not = icmp eq i64 %polly.indvar_next395, 63
  br i1 %exitcond1053.not, label %polly.exiting290, label %polly.loop_header391

polly.loop_header397:                             ; preds = %polly.loop_exit406, %polly.loop_header391
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit406 ], [ 0, %polly.loop_header391 ]
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038, %polly.loop_exit406 ], [ 0, %polly.loop_header391 ]
  %indvars.iv1035 = phi i64 [ %indvars.iv.next1036, %polly.loop_exit406 ], [ 0, %polly.loop_header391 ]
  %polly.indvar400 = phi i64 [ %polly.indvar_next401, %polly.loop_exit406 ], [ 0, %polly.loop_header391 ]
  %147 = lshr i64 %polly.indvar400, 1
  %148 = add nuw i64 %indvars.iv1037, %147
  %149 = shl nuw nsw i64 %148, 2
  %150 = sub i64 %indvars.iv1035, %149
  %151 = add i64 %indvars.iv1042, %149
  %152 = mul nuw nsw i64 %polly.indvar400, 12
  %153 = add nuw nsw i64 %152, %147
  %154 = mul nsw i64 %polly.indvar400, -50
  %155 = mul nuw nsw i64 %polly.indvar400, 50
  br label %polly.loop_header404

polly.loop_exit406:                               ; preds = %polly.loop_exit445
  %polly.indvar_next401 = add nuw nsw i64 %polly.indvar400, 1
  %indvars.iv.next1036 = add nuw nsw i64 %indvars.iv1035, 50
  %indvars.iv.next1038 = add nuw nsw i64 %indvars.iv1037, 12
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, -50
  %exitcond1052.not = icmp eq i64 %polly.indvar_next401, 24
  br i1 %exitcond1052.not, label %polly.loop_exit399, label %polly.loop_header397

polly.loop_header404:                             ; preds = %polly.loop_exit445, %polly.loop_header397
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit445 ], [ %151, %polly.loop_header397 ]
  %indvars.iv1039 = phi i64 [ %indvars.iv.next1040, %polly.loop_exit445 ], [ %150, %polly.loop_header397 ]
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit445 ], [ %153, %polly.loop_header397 ]
  %smax1041 = call i64 @llvm.smax.i64(i64 %indvars.iv1039, i64 0)
  %156 = add i64 %smax1041, %indvars.iv1044
  %157 = shl nsw i64 %polly.indvar407, 2
  %158 = add nsw i64 %157, %154
  %159 = add nsw i64 %158, -1
  %.inv883 = icmp sgt i64 %158, 49
  %160 = select i1 %.inv883, i64 49, i64 %159
  %polly.loop_guard420 = icmp sgt i64 %160, -1
  %161 = icmp sgt i64 %158, 0
  %162 = select i1 %161, i64 %158, i64 0
  %163 = add nsw i64 %158, 3
  %polly.loop_guard432.not = icmp sgt i64 %162, %163
  br i1 %polly.loop_guard420, label %polly.loop_header410.us, label %polly.loop_header404.split

polly.loop_header410.us:                          ; preds = %polly.loop_header404, %polly.loop_exit431.us
  %polly.indvar413.us = phi i64 [ %polly.indvar_next414.us, %polly.loop_exit431.us ], [ 0, %polly.loop_header404 ]
  %164 = add nuw nsw i64 %polly.indvar413.us, %146
  %polly.access.mul.Packed_MemRef_call1292.us = mul nuw nsw i64 %polly.indvar413.us, 1200
  br label %polly.loop_header417.us

polly.loop_header417.us:                          ; preds = %polly.loop_header410.us, %polly.loop_header417.us
  %polly.indvar421.us = phi i64 [ %polly.indvar_next422.us, %polly.loop_header417.us ], [ 0, %polly.loop_header410.us ]
  %165 = add nuw nsw i64 %polly.indvar421.us, %155
  %polly.access.mul.call1425.us = mul nuw nsw i64 %165, 1000
  %polly.access.add.call1426.us = add nuw nsw i64 %164, %polly.access.mul.call1425.us
  %polly.access.call1427.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1426.us
  %polly.access.call1427.load.us = load double, double* %polly.access.call1427.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1292.us = add nuw nsw i64 %polly.indvar421.us, %polly.access.mul.Packed_MemRef_call1292.us
  %polly.access.Packed_MemRef_call1292.us = getelementptr double, double* %Packed_MemRef_call1292, i64 %polly.access.add.Packed_MemRef_call1292.us
  store double %polly.access.call1427.load.us, double* %polly.access.Packed_MemRef_call1292.us, align 8
  %polly.indvar_next422.us = add nuw i64 %polly.indvar421.us, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar421.us, %160
  br i1 %exitcond1032.not, label %polly.loop_exit419.loopexit.us, label %polly.loop_header417.us

polly.loop_header429.us:                          ; preds = %polly.loop_exit419.loopexit.us, %polly.loop_header429.us
  %polly.indvar433.us = phi i64 [ %polly.indvar_next434.us, %polly.loop_header429.us ], [ %162, %polly.loop_exit419.loopexit.us ]
  %166 = add nuw nsw i64 %polly.indvar433.us, %155
  %polly.access.mul.call1437.us = mul nsw i64 %166, 1000
  %polly.access.add.call1438.us = add nuw nsw i64 %164, %polly.access.mul.call1437.us
  %polly.access.call1439.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1438.us
  %polly.access.call1439.load.us = load double, double* %polly.access.call1439.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1292441.us = add nuw nsw i64 %polly.indvar433.us, %polly.access.mul.Packed_MemRef_call1292.us
  %polly.access.Packed_MemRef_call1292442.us = getelementptr double, double* %Packed_MemRef_call1292, i64 %polly.access.add.Packed_MemRef_call1292441.us
  store double %polly.access.call1439.load.us, double* %polly.access.Packed_MemRef_call1292442.us, align 8
  %polly.indvar_next434.us = add nuw nsw i64 %polly.indvar433.us, 1
  %polly.loop_cond435.not.not.us = icmp slt i64 %polly.indvar433.us, %163
  br i1 %polly.loop_cond435.not.not.us, label %polly.loop_header429.us, label %polly.loop_exit431.us

polly.loop_exit431.us:                            ; preds = %polly.loop_header429.us, %polly.loop_exit419.loopexit.us
  %polly.indvar_next414.us = add nuw nsw i64 %polly.indvar413.us, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next414.us, %145
  br i1 %exitcond1034.not, label %polly.loop_header443.preheader, label %polly.loop_header410.us

polly.loop_exit419.loopexit.us:                   ; preds = %polly.loop_header417.us
  br i1 %polly.loop_guard432.not, label %polly.loop_exit431.us, label %polly.loop_header429.us

polly.loop_header404.split:                       ; preds = %polly.loop_header404
  br i1 %polly.loop_guard432.not, label %polly.loop_header443.preheader, label %polly.loop_header410

polly.loop_exit445:                               ; preds = %polly.loop_exit452.loopexit.us, %polly.loop_header443.preheader
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %polly.loop_cond409 = icmp ult i64 %polly.indvar407, 299
  %indvars.iv.next1040 = add i64 %indvars.iv1039, -4
  %indvars.iv.next1045 = add i64 %indvars.iv1044, 4
  br i1 %polly.loop_cond409, label %polly.loop_header404, label %polly.loop_exit406

polly.loop_header410:                             ; preds = %polly.loop_header404.split, %polly.loop_exit431
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit431 ], [ 0, %polly.loop_header404.split ]
  %167 = add nuw nsw i64 %polly.indvar413, %146
  %polly.access.mul.Packed_MemRef_call1292440 = mul nuw nsw i64 %polly.indvar413, 1200
  br label %polly.loop_header429

polly.loop_exit431:                               ; preds = %polly.loop_header429
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next414, %145
  br i1 %exitcond1031.not, label %polly.loop_header443.preheader, label %polly.loop_header410

polly.loop_header443.preheader:                   ; preds = %polly.loop_exit431, %polly.loop_exit431.us, %polly.loop_header404.split
  %168 = sub nsw i64 %155, %157
  %169 = icmp sgt i64 %168, 0
  %170 = select i1 %169, i64 %168, i64 0
  %polly.loop_guard453 = icmp slt i64 %170, 4
  br i1 %polly.loop_guard453, label %polly.loop_header443.us, label %polly.loop_exit445

polly.loop_header443.us:                          ; preds = %polly.loop_header443.preheader, %polly.loop_exit452.loopexit.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.loop_exit452.loopexit.us ], [ 0, %polly.loop_header443.preheader ]
  %171 = add nuw nsw i64 %polly.indvar446.us, %146
  %polly.access.mul.Packed_MemRef_call1292465.us = mul nuw nsw i64 %polly.indvar446.us, 1200
  %172 = shl i64 %171, 3
  br label %polly.loop_header450.us

polly.loop_header450.us:                          ; preds = %polly.loop_header443.us, %polly.loop_exit460.us
  %indvars.iv1046 = phi i64 [ %156, %polly.loop_header443.us ], [ %indvars.iv.next1047, %polly.loop_exit460.us ]
  %polly.indvar454.us = phi i64 [ %170, %polly.loop_header443.us ], [ %polly.indvar_next455.us, %polly.loop_exit460.us ]
  %smin1048 = call i64 @llvm.smin.i64(i64 %indvars.iv1046, i64 49)
  %173 = add nsw i64 %polly.indvar454.us, %158
  %polly.loop_guard461.us1119 = icmp sgt i64 %173, -1
  br i1 %polly.loop_guard461.us1119, label %polly.loop_header458.preheader.us, label %polly.loop_exit460.us

polly.loop_header458.us:                          ; preds = %polly.loop_header458.preheader.us, %polly.loop_header458.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_header458.us ], [ 0, %polly.loop_header458.preheader.us ]
  %174 = add nuw nsw i64 %polly.indvar462.us, %155
  %polly.access.add.Packed_MemRef_call1292466.us = add nuw nsw i64 %polly.indvar462.us, %polly.access.mul.Packed_MemRef_call1292465.us
  %polly.access.Packed_MemRef_call1292467.us = getelementptr double, double* %Packed_MemRef_call1292, i64 %polly.access.add.Packed_MemRef_call1292466.us
  %_p_scalar_468.us = load double, double* %polly.access.Packed_MemRef_call1292467.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_471.us, %_p_scalar_468.us
  %175 = mul nuw nsw i64 %174, 8000
  %176 = add nuw nsw i64 %175, %172
  %scevgep472.us = getelementptr i8, i8* %call2, i64 %176
  %scevgep472473.us = bitcast i8* %scevgep472.us to double*
  %_p_scalar_474.us = load double, double* %scevgep472473.us, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.us = fmul fast double %_p_scalar_478.us, %_p_scalar_474.us
  %177 = shl i64 %174, 3
  %178 = add i64 %177, %182
  %scevgep479.us = getelementptr i8, i8* %call, i64 %178
  %scevgep479480.us = bitcast i8* %scevgep479.us to double*
  %_p_scalar_481.us = load double, double* %scevgep479480.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_481.us
  store double %p_add42.i79.us, double* %scevgep479480.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next463.us = add nuw nsw i64 %polly.indvar462.us, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar462.us, %smin1048
  br i1 %exitcond1049.not, label %polly.loop_exit460.us, label %polly.loop_header458.us

polly.loop_exit460.us:                            ; preds = %polly.loop_header458.us, %polly.loop_header450.us
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %polly.loop_cond456.us = icmp ult i64 %polly.indvar454.us, 3
  %indvars.iv.next1047 = add i64 %indvars.iv1046, 1
  br i1 %polly.loop_cond456.us, label %polly.loop_header450.us, label %polly.loop_exit452.loopexit.us

polly.loop_header458.preheader.us:                ; preds = %polly.loop_header450.us
  %179 = add nuw nsw i64 %polly.indvar454.us, %157
  %180 = mul i64 %179, 8000
  %181 = add i64 %180, %172
  %scevgep469.us = getelementptr i8, i8* %call2, i64 %181
  %scevgep469470.us = bitcast i8* %scevgep469.us to double*
  %_p_scalar_471.us = load double, double* %scevgep469470.us, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1292476.us = add nsw i64 %173, %polly.access.mul.Packed_MemRef_call1292465.us
  %polly.access.Packed_MemRef_call1292477.us = getelementptr double, double* %Packed_MemRef_call1292, i64 %polly.access.add.Packed_MemRef_call1292476.us
  %_p_scalar_478.us = load double, double* %polly.access.Packed_MemRef_call1292477.us, align 8
  %182 = mul i64 %179, 9600
  br label %polly.loop_header458.us

polly.loop_exit452.loopexit.us:                   ; preds = %polly.loop_exit460.us
  %polly.indvar_next447.us = add nuw nsw i64 %polly.indvar446.us, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar_next447.us, %145
  br i1 %exitcond1051.not, label %polly.loop_exit445, label %polly.loop_header443.us

polly.loop_header429:                             ; preds = %polly.loop_header410, %polly.loop_header429
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_header429 ], [ %162, %polly.loop_header410 ]
  %183 = add nuw nsw i64 %polly.indvar433, %155
  %polly.access.mul.call1437 = mul nsw i64 %183, 1000
  %polly.access.add.call1438 = add nuw nsw i64 %167, %polly.access.mul.call1437
  %polly.access.call1439 = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1438
  %polly.access.call1439.load = load double, double* %polly.access.call1439, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1292441 = add nuw nsw i64 %polly.indvar433, %polly.access.mul.Packed_MemRef_call1292440
  %polly.access.Packed_MemRef_call1292442 = getelementptr double, double* %Packed_MemRef_call1292, i64 %polly.access.add.Packed_MemRef_call1292441
  store double %polly.access.call1439.load, double* %polly.access.Packed_MemRef_call1292442, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %polly.loop_cond435.not.not = icmp slt i64 %polly.indvar433, %163
  br i1 %polly.loop_cond435.not.not, label %polly.loop_header429, label %polly.loop_exit431

polly.start484:                                   ; preds = %init_array.exit
  %malloccall486 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header570

polly.exiting485:                                 ; preds = %polly.loop_exit594
  tail call void @free(i8* %malloccall486)
  br label %kernel_syr2k.exit

polly.loop_header570:                             ; preds = %polly.loop_exit578, %polly.start484
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit578 ], [ 0, %polly.start484 ]
  %polly.indvar573 = phi i64 [ %polly.indvar_next574, %polly.loop_exit578 ], [ 1, %polly.start484 ]
  %184 = add i64 %indvar, 1
  %185 = mul nuw nsw i64 %polly.indvar573, 9600
  %scevgep582 = getelementptr i8, i8* %call, i64 %185
  %min.iters.check1209 = icmp ult i64 %184, 4
  br i1 %min.iters.check1209, label %polly.loop_header576.preheader, label %vector.ph1210

vector.ph1210:                                    ; preds = %polly.loop_header570
  %n.vec1212 = and i64 %184, -4
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %vector.ph1210
  %index1213 = phi i64 [ 0, %vector.ph1210 ], [ %index.next1214, %vector.body1208 ]
  %186 = shl nuw nsw i64 %index1213, 3
  %187 = getelementptr i8, i8* %scevgep582, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  %wide.load1217 = load <4 x double>, <4 x double>* %188, align 8, !alias.scope !89, !noalias !91
  %189 = fmul fast <4 x double> %wide.load1217, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %190 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %189, <4 x double>* %190, align 8, !alias.scope !89, !noalias !91
  %index.next1214 = add i64 %index1213, 4
  %191 = icmp eq i64 %index.next1214, %n.vec1212
  br i1 %191, label %middle.block1206, label %vector.body1208, !llvm.loop !95

middle.block1206:                                 ; preds = %vector.body1208
  %cmp.n1216 = icmp eq i64 %184, %n.vec1212
  br i1 %cmp.n1216, label %polly.loop_exit578, label %polly.loop_header576.preheader

polly.loop_header576.preheader:                   ; preds = %polly.loop_header570, %middle.block1206
  %polly.indvar579.ph = phi i64 [ 0, %polly.loop_header570 ], [ %n.vec1212, %middle.block1206 ]
  br label %polly.loop_header576

polly.loop_exit578:                               ; preds = %polly.loop_header576, %middle.block1206
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next574, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1083.not, label %polly.loop_header586.preheader, label %polly.loop_header570

polly.loop_header586.preheader:                   ; preds = %polly.loop_exit578
  %Packed_MemRef_call1487 = bitcast i8* %malloccall486 to double*
  br label %polly.loop_header586

polly.loop_header576:                             ; preds = %polly.loop_header576.preheader, %polly.loop_header576
  %polly.indvar579 = phi i64 [ %polly.indvar_next580, %polly.loop_header576 ], [ %polly.indvar579.ph, %polly.loop_header576.preheader ]
  %192 = shl nuw nsw i64 %polly.indvar579, 3
  %scevgep583 = getelementptr i8, i8* %scevgep582, i64 %192
  %scevgep583584 = bitcast i8* %scevgep583 to double*
  %_p_scalar_585 = load double, double* %scevgep583584, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_585, 1.200000e+00
  store double %p_mul.i, double* %scevgep583584, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next580 = add nuw nsw i64 %polly.indvar579, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next580, %polly.indvar573
  br i1 %exitcond1082.not, label %polly.loop_exit578, label %polly.loop_header576, !llvm.loop !96

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_exit594
  %indvars.iv1056 = phi i64 [ 0, %polly.loop_header586.preheader ], [ %indvars.iv.next1057, %polly.loop_exit594 ]
  %polly.indvar589 = phi i64 [ 0, %polly.loop_header586.preheader ], [ %polly.indvar_next590, %polly.loop_exit594 ]
  %smin1078 = call i64 @llvm.smin.i64(i64 %indvars.iv1056, i64 -984)
  %193 = add nsw i64 %smin1078, 1000
  %194 = shl nsw i64 %polly.indvar589, 4
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit601
  %polly.indvar_next590 = add nuw nsw i64 %polly.indvar589, 1
  %indvars.iv.next1057 = add nsw i64 %indvars.iv1056, -16
  %exitcond1081.not = icmp eq i64 %polly.indvar_next590, 63
  br i1 %exitcond1081.not, label %polly.exiting485, label %polly.loop_header586

polly.loop_header592:                             ; preds = %polly.loop_exit601, %polly.loop_header586
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %indvars.iv1065 = phi i64 [ %indvars.iv.next1066, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %polly.indvar595 = phi i64 [ %polly.indvar_next596, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %195 = lshr i64 %polly.indvar595, 1
  %196 = add nuw i64 %indvars.iv1065, %195
  %197 = shl nuw nsw i64 %196, 2
  %198 = sub i64 %indvars.iv1063, %197
  %199 = add i64 %indvars.iv1070, %197
  %200 = mul nuw nsw i64 %polly.indvar595, 12
  %201 = add nuw nsw i64 %200, %195
  %202 = mul nsw i64 %polly.indvar595, -50
  %203 = mul nuw nsw i64 %polly.indvar595, 50
  br label %polly.loop_header599

polly.loop_exit601:                               ; preds = %polly.loop_exit640
  %polly.indvar_next596 = add nuw nsw i64 %polly.indvar595, 1
  %indvars.iv.next1064 = add nuw nsw i64 %indvars.iv1063, 50
  %indvars.iv.next1066 = add nuw nsw i64 %indvars.iv1065, 12
  %indvars.iv.next1071 = add nsw i64 %indvars.iv1070, -50
  %exitcond1080.not = icmp eq i64 %polly.indvar_next596, 24
  br i1 %exitcond1080.not, label %polly.loop_exit594, label %polly.loop_header592

polly.loop_header599:                             ; preds = %polly.loop_exit640, %polly.loop_header592
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit640 ], [ %199, %polly.loop_header592 ]
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit640 ], [ %198, %polly.loop_header592 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit640 ], [ %201, %polly.loop_header592 ]
  %smax1069 = call i64 @llvm.smax.i64(i64 %indvars.iv1067, i64 0)
  %204 = add i64 %smax1069, %indvars.iv1072
  %205 = shl nsw i64 %polly.indvar602, 2
  %206 = add nsw i64 %205, %202
  %207 = add nsw i64 %206, -1
  %.inv884 = icmp sgt i64 %206, 49
  %208 = select i1 %.inv884, i64 49, i64 %207
  %polly.loop_guard615 = icmp sgt i64 %208, -1
  %209 = icmp sgt i64 %206, 0
  %210 = select i1 %209, i64 %206, i64 0
  %211 = add nsw i64 %206, 3
  %polly.loop_guard627.not = icmp sgt i64 %210, %211
  br i1 %polly.loop_guard615, label %polly.loop_header605.us, label %polly.loop_header599.split

polly.loop_header605.us:                          ; preds = %polly.loop_header599, %polly.loop_exit626.us
  %polly.indvar608.us = phi i64 [ %polly.indvar_next609.us, %polly.loop_exit626.us ], [ 0, %polly.loop_header599 ]
  %212 = add nuw nsw i64 %polly.indvar608.us, %194
  %polly.access.mul.Packed_MemRef_call1487.us = mul nuw nsw i64 %polly.indvar608.us, 1200
  br label %polly.loop_header612.us

polly.loop_header612.us:                          ; preds = %polly.loop_header605.us, %polly.loop_header612.us
  %polly.indvar616.us = phi i64 [ %polly.indvar_next617.us, %polly.loop_header612.us ], [ 0, %polly.loop_header605.us ]
  %213 = add nuw nsw i64 %polly.indvar616.us, %203
  %polly.access.mul.call1620.us = mul nuw nsw i64 %213, 1000
  %polly.access.add.call1621.us = add nuw nsw i64 %212, %polly.access.mul.call1620.us
  %polly.access.call1622.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1621.us
  %polly.access.call1622.load.us = load double, double* %polly.access.call1622.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us = add nuw nsw i64 %polly.indvar616.us, %polly.access.mul.Packed_MemRef_call1487.us
  %polly.access.Packed_MemRef_call1487.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us
  store double %polly.access.call1622.load.us, double* %polly.access.Packed_MemRef_call1487.us, align 8
  %polly.indvar_next617.us = add nuw i64 %polly.indvar616.us, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar616.us, %208
  br i1 %exitcond1060.not, label %polly.loop_exit614.loopexit.us, label %polly.loop_header612.us

polly.loop_header624.us:                          ; preds = %polly.loop_exit614.loopexit.us, %polly.loop_header624.us
  %polly.indvar628.us = phi i64 [ %polly.indvar_next629.us, %polly.loop_header624.us ], [ %210, %polly.loop_exit614.loopexit.us ]
  %214 = add nuw nsw i64 %polly.indvar628.us, %203
  %polly.access.mul.call1632.us = mul nsw i64 %214, 1000
  %polly.access.add.call1633.us = add nuw nsw i64 %212, %polly.access.mul.call1632.us
  %polly.access.call1634.us = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1633.us
  %polly.access.call1634.load.us = load double, double* %polly.access.call1634.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487636.us = add nuw nsw i64 %polly.indvar628.us, %polly.access.mul.Packed_MemRef_call1487.us
  %polly.access.Packed_MemRef_call1487637.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487636.us
  store double %polly.access.call1634.load.us, double* %polly.access.Packed_MemRef_call1487637.us, align 8
  %polly.indvar_next629.us = add nuw nsw i64 %polly.indvar628.us, 1
  %polly.loop_cond630.not.not.us = icmp slt i64 %polly.indvar628.us, %211
  br i1 %polly.loop_cond630.not.not.us, label %polly.loop_header624.us, label %polly.loop_exit626.us

polly.loop_exit626.us:                            ; preds = %polly.loop_header624.us, %polly.loop_exit614.loopexit.us
  %polly.indvar_next609.us = add nuw nsw i64 %polly.indvar608.us, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next609.us, %193
  br i1 %exitcond1062.not, label %polly.loop_header638.preheader, label %polly.loop_header605.us

polly.loop_exit614.loopexit.us:                   ; preds = %polly.loop_header612.us
  br i1 %polly.loop_guard627.not, label %polly.loop_exit626.us, label %polly.loop_header624.us

polly.loop_header599.split:                       ; preds = %polly.loop_header599
  br i1 %polly.loop_guard627.not, label %polly.loop_header638.preheader, label %polly.loop_header605

polly.loop_exit640:                               ; preds = %polly.loop_exit647.loopexit.us, %polly.loop_header638.preheader
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %polly.loop_cond604 = icmp ult i64 %polly.indvar602, 299
  %indvars.iv.next1068 = add i64 %indvars.iv1067, -4
  %indvars.iv.next1073 = add i64 %indvars.iv1072, 4
  br i1 %polly.loop_cond604, label %polly.loop_header599, label %polly.loop_exit601

polly.loop_header605:                             ; preds = %polly.loop_header599.split, %polly.loop_exit626
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_exit626 ], [ 0, %polly.loop_header599.split ]
  %215 = add nuw nsw i64 %polly.indvar608, %194
  %polly.access.mul.Packed_MemRef_call1487635 = mul nuw nsw i64 %polly.indvar608, 1200
  br label %polly.loop_header624

polly.loop_exit626:                               ; preds = %polly.loop_header624
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next609, %193
  br i1 %exitcond1059.not, label %polly.loop_header638.preheader, label %polly.loop_header605

polly.loop_header638.preheader:                   ; preds = %polly.loop_exit626, %polly.loop_exit626.us, %polly.loop_header599.split
  %216 = sub nsw i64 %203, %205
  %217 = icmp sgt i64 %216, 0
  %218 = select i1 %217, i64 %216, i64 0
  %polly.loop_guard648 = icmp slt i64 %218, 4
  br i1 %polly.loop_guard648, label %polly.loop_header638.us, label %polly.loop_exit640

polly.loop_header638.us:                          ; preds = %polly.loop_header638.preheader, %polly.loop_exit647.loopexit.us
  %polly.indvar641.us = phi i64 [ %polly.indvar_next642.us, %polly.loop_exit647.loopexit.us ], [ 0, %polly.loop_header638.preheader ]
  %219 = add nuw nsw i64 %polly.indvar641.us, %194
  %polly.access.mul.Packed_MemRef_call1487660.us = mul nuw nsw i64 %polly.indvar641.us, 1200
  %220 = shl i64 %219, 3
  br label %polly.loop_header645.us

polly.loop_header645.us:                          ; preds = %polly.loop_header638.us, %polly.loop_exit655.us
  %indvars.iv1074 = phi i64 [ %204, %polly.loop_header638.us ], [ %indvars.iv.next1075, %polly.loop_exit655.us ]
  %polly.indvar649.us = phi i64 [ %218, %polly.loop_header638.us ], [ %polly.indvar_next650.us, %polly.loop_exit655.us ]
  %smin1076 = call i64 @llvm.smin.i64(i64 %indvars.iv1074, i64 49)
  %221 = add nsw i64 %polly.indvar649.us, %206
  %polly.loop_guard656.us1120 = icmp sgt i64 %221, -1
  br i1 %polly.loop_guard656.us1120, label %polly.loop_header653.preheader.us, label %polly.loop_exit655.us

polly.loop_header653.us:                          ; preds = %polly.loop_header653.preheader.us, %polly.loop_header653.us
  %polly.indvar657.us = phi i64 [ %polly.indvar_next658.us, %polly.loop_header653.us ], [ 0, %polly.loop_header653.preheader.us ]
  %222 = add nuw nsw i64 %polly.indvar657.us, %203
  %polly.access.add.Packed_MemRef_call1487661.us = add nuw nsw i64 %polly.indvar657.us, %polly.access.mul.Packed_MemRef_call1487660.us
  %polly.access.Packed_MemRef_call1487662.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487661.us
  %_p_scalar_663.us = load double, double* %polly.access.Packed_MemRef_call1487662.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_666.us, %_p_scalar_663.us
  %223 = mul nuw nsw i64 %222, 8000
  %224 = add nuw nsw i64 %223, %220
  %scevgep667.us = getelementptr i8, i8* %call2, i64 %224
  %scevgep667668.us = bitcast i8* %scevgep667.us to double*
  %_p_scalar_669.us = load double, double* %scevgep667668.us, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.us = fmul fast double %_p_scalar_673.us, %_p_scalar_669.us
  %225 = shl i64 %222, 3
  %226 = add i64 %225, %230
  %scevgep674.us = getelementptr i8, i8* %call, i64 %226
  %scevgep674675.us = bitcast i8* %scevgep674.us to double*
  %_p_scalar_676.us = load double, double* %scevgep674675.us, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_676.us
  store double %p_add42.i.us, double* %scevgep674675.us, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next658.us = add nuw nsw i64 %polly.indvar657.us, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar657.us, %smin1076
  br i1 %exitcond1077.not, label %polly.loop_exit655.us, label %polly.loop_header653.us

polly.loop_exit655.us:                            ; preds = %polly.loop_header653.us, %polly.loop_header645.us
  %polly.indvar_next650.us = add nuw nsw i64 %polly.indvar649.us, 1
  %polly.loop_cond651.us = icmp ult i64 %polly.indvar649.us, 3
  %indvars.iv.next1075 = add i64 %indvars.iv1074, 1
  br i1 %polly.loop_cond651.us, label %polly.loop_header645.us, label %polly.loop_exit647.loopexit.us

polly.loop_header653.preheader.us:                ; preds = %polly.loop_header645.us
  %227 = add nuw nsw i64 %polly.indvar649.us, %205
  %228 = mul i64 %227, 8000
  %229 = add i64 %228, %220
  %scevgep664.us = getelementptr i8, i8* %call2, i64 %229
  %scevgep664665.us = bitcast i8* %scevgep664.us to double*
  %_p_scalar_666.us = load double, double* %scevgep664665.us, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1487671.us = add nsw i64 %221, %polly.access.mul.Packed_MemRef_call1487660.us
  %polly.access.Packed_MemRef_call1487672.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487671.us
  %_p_scalar_673.us = load double, double* %polly.access.Packed_MemRef_call1487672.us, align 8
  %230 = mul i64 %227, 9600
  br label %polly.loop_header653.us

polly.loop_exit647.loopexit.us:                   ; preds = %polly.loop_exit655.us
  %polly.indvar_next642.us = add nuw nsw i64 %polly.indvar641.us, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar_next642.us, %193
  br i1 %exitcond1079.not, label %polly.loop_exit640, label %polly.loop_header638.us

polly.loop_header624:                             ; preds = %polly.loop_header605, %polly.loop_header624
  %polly.indvar628 = phi i64 [ %polly.indvar_next629, %polly.loop_header624 ], [ %210, %polly.loop_header605 ]
  %231 = add nuw nsw i64 %polly.indvar628, %203
  %polly.access.mul.call1632 = mul nsw i64 %231, 1000
  %polly.access.add.call1633 = add nuw nsw i64 %215, %polly.access.mul.call1632
  %polly.access.call1634 = getelementptr double, double* %polly.access.cast.call1681, i64 %polly.access.add.call1633
  %polly.access.call1634.load = load double, double* %polly.access.call1634, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487636 = add nuw nsw i64 %polly.indvar628, %polly.access.mul.Packed_MemRef_call1487635
  %polly.access.Packed_MemRef_call1487637 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487636
  store double %polly.access.call1634.load, double* %polly.access.Packed_MemRef_call1487637, align 8
  %polly.indvar_next629 = add nuw nsw i64 %polly.indvar628, 1
  %polly.loop_cond630.not.not = icmp slt i64 %polly.indvar628, %211
  br i1 %polly.loop_cond630.not.not, label %polly.loop_header624, label %polly.loop_exit626

polly.loop_header803:                             ; preds = %entry, %polly.loop_exit811
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit811 ], [ 0, %entry ]
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_exit811 ], [ 0, %entry ]
  %smin1110 = call i64 @llvm.smin.i64(i64 %indvars.iv1108, i64 -1168)
  %232 = shl nsw i64 %polly.indvar806, 5
  %233 = add nsw i64 %smin1110, 1199
  br label %polly.loop_header809

polly.loop_exit811:                               ; preds = %polly.loop_exit817
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %indvars.iv.next1109 = add nsw i64 %indvars.iv1108, -32
  %exitcond1113.not = icmp eq i64 %polly.indvar_next807, 38
  br i1 %exitcond1113.not, label %polly.loop_header830, label %polly.loop_header803

polly.loop_header809:                             ; preds = %polly.loop_exit817, %polly.loop_header803
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit817 ], [ 0, %polly.loop_header803 ]
  %polly.indvar812 = phi i64 [ %polly.indvar_next813, %polly.loop_exit817 ], [ 0, %polly.loop_header803 ]
  %234 = mul nsw i64 %polly.indvar812, -32
  %smin = call i64 @llvm.smin.i64(i64 %234, i64 -1168)
  %235 = add nsw i64 %smin, 1200
  %smin1106 = call i64 @llvm.smin.i64(i64 %indvars.iv1104, i64 -1168)
  %236 = shl nsw i64 %polly.indvar812, 5
  %237 = add nsw i64 %smin1106, 1199
  br label %polly.loop_header815

polly.loop_exit817:                               ; preds = %polly.loop_exit823
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -32
  %exitcond1112.not = icmp eq i64 %polly.indvar_next813, 38
  br i1 %exitcond1112.not, label %polly.loop_exit811, label %polly.loop_header809

polly.loop_header815:                             ; preds = %polly.loop_exit823, %polly.loop_header809
  %polly.indvar818 = phi i64 [ 0, %polly.loop_header809 ], [ %polly.indvar_next819, %polly.loop_exit823 ]
  %238 = add nuw nsw i64 %polly.indvar818, %232
  %239 = trunc i64 %238 to i32
  %240 = mul nuw nsw i64 %238, 9600
  %min.iters.check = icmp eq i64 %235, 0
  br i1 %min.iters.check, label %polly.loop_header821, label %vector.ph1148

vector.ph1148:                                    ; preds = %polly.loop_header815
  %broadcast.splatinsert1155 = insertelement <4 x i64> poison, i64 %236, i32 0
  %broadcast.splat1156 = shufflevector <4 x i64> %broadcast.splatinsert1155, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1157 = insertelement <4 x i32> poison, i32 %239, i32 0
  %broadcast.splat1158 = shufflevector <4 x i32> %broadcast.splatinsert1157, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %vector.ph1148
  %index1149 = phi i64 [ 0, %vector.ph1148 ], [ %index.next1150, %vector.body1147 ]
  %vec.ind1153 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1148 ], [ %vec.ind.next1154, %vector.body1147 ]
  %241 = add nuw nsw <4 x i64> %vec.ind1153, %broadcast.splat1156
  %242 = trunc <4 x i64> %241 to <4 x i32>
  %243 = mul <4 x i32> %broadcast.splat1158, %242
  %244 = add <4 x i32> %243, <i32 3, i32 3, i32 3, i32 3>
  %245 = urem <4 x i32> %244, <i32 1200, i32 1200, i32 1200, i32 1200>
  %246 = sitofp <4 x i32> %245 to <4 x double>
  %247 = fmul fast <4 x double> %246, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %248 = extractelement <4 x i64> %241, i32 0
  %249 = shl i64 %248, 3
  %250 = add nuw nsw i64 %249, %240
  %251 = getelementptr i8, i8* %call, i64 %250
  %252 = bitcast i8* %251 to <4 x double>*
  store <4 x double> %247, <4 x double>* %252, align 8, !alias.scope !99, !noalias !101
  %index.next1150 = add i64 %index1149, 4
  %vec.ind.next1154 = add <4 x i64> %vec.ind1153, <i64 4, i64 4, i64 4, i64 4>
  %253 = icmp eq i64 %index.next1150, %235
  br i1 %253, label %polly.loop_exit823, label %vector.body1147, !llvm.loop !104

polly.loop_exit823:                               ; preds = %vector.body1147, %polly.loop_header821
  %polly.indvar_next819 = add nuw nsw i64 %polly.indvar818, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar818, %233
  br i1 %exitcond1111.not, label %polly.loop_exit817, label %polly.loop_header815

polly.loop_header821:                             ; preds = %polly.loop_header815, %polly.loop_header821
  %polly.indvar824 = phi i64 [ %polly.indvar_next825, %polly.loop_header821 ], [ 0, %polly.loop_header815 ]
  %254 = add nuw nsw i64 %polly.indvar824, %236
  %255 = trunc i64 %254 to i32
  %256 = mul i32 %255, %239
  %257 = add i32 %256, 3
  %258 = urem i32 %257, 1200
  %p_conv31.i = sitofp i32 %258 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %259 = shl i64 %254, 3
  %260 = add nuw nsw i64 %259, %240
  %scevgep827 = getelementptr i8, i8* %call, i64 %260
  %scevgep827828 = bitcast i8* %scevgep827 to double*
  store double %p_div33.i, double* %scevgep827828, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next825 = add nuw nsw i64 %polly.indvar824, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar824, %237
  br i1 %exitcond1107.not, label %polly.loop_exit823, label %polly.loop_header821, !llvm.loop !105

polly.loop_header830:                             ; preds = %polly.loop_exit811, %polly.loop_exit838
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit838 ], [ 0, %polly.loop_exit811 ]
  %polly.indvar833 = phi i64 [ %polly.indvar_next834, %polly.loop_exit838 ], [ 0, %polly.loop_exit811 ]
  %smin1100 = call i64 @llvm.smin.i64(i64 %indvars.iv1098, i64 -1168)
  %261 = shl nsw i64 %polly.indvar833, 5
  %262 = add nsw i64 %smin1100, 1199
  br label %polly.loop_header836

polly.loop_exit838:                               ; preds = %polly.loop_exit844
  %polly.indvar_next834 = add nuw nsw i64 %polly.indvar833, 1
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, -32
  %exitcond1103.not = icmp eq i64 %polly.indvar_next834, 38
  br i1 %exitcond1103.not, label %polly.loop_header856, label %polly.loop_header830

polly.loop_header836:                             ; preds = %polly.loop_exit844, %polly.loop_header830
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit844 ], [ 0, %polly.loop_header830 ]
  %polly.indvar839 = phi i64 [ %polly.indvar_next840, %polly.loop_exit844 ], [ 0, %polly.loop_header830 ]
  %263 = mul nsw i64 %polly.indvar839, -32
  %smin1162 = call i64 @llvm.smin.i64(i64 %263, i64 -968)
  %264 = add nsw i64 %smin1162, 1000
  %smin1096 = call i64 @llvm.smin.i64(i64 %indvars.iv1094, i64 -968)
  %265 = shl nsw i64 %polly.indvar839, 5
  %266 = add nsw i64 %smin1096, 999
  br label %polly.loop_header842

polly.loop_exit844:                               ; preds = %polly.loop_exit850
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %indvars.iv.next1095 = add nsw i64 %indvars.iv1094, -32
  %exitcond1102.not = icmp eq i64 %polly.indvar_next840, 32
  br i1 %exitcond1102.not, label %polly.loop_exit838, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_exit850, %polly.loop_header836
  %polly.indvar845 = phi i64 [ 0, %polly.loop_header836 ], [ %polly.indvar_next846, %polly.loop_exit850 ]
  %267 = add nuw nsw i64 %polly.indvar845, %261
  %268 = trunc i64 %267 to i32
  %269 = mul nuw nsw i64 %267, 8000
  %min.iters.check1163 = icmp eq i64 %264, 0
  br i1 %min.iters.check1163, label %polly.loop_header848, label %vector.ph1164

vector.ph1164:                                    ; preds = %polly.loop_header842
  %broadcast.splatinsert1173 = insertelement <4 x i64> poison, i64 %265, i32 0
  %broadcast.splat1174 = shufflevector <4 x i64> %broadcast.splatinsert1173, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1175 = insertelement <4 x i32> poison, i32 %268, i32 0
  %broadcast.splat1176 = shufflevector <4 x i32> %broadcast.splatinsert1175, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1161

vector.body1161:                                  ; preds = %vector.body1161, %vector.ph1164
  %index1167 = phi i64 [ 0, %vector.ph1164 ], [ %index.next1168, %vector.body1161 ]
  %vec.ind1171 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1164 ], [ %vec.ind.next1172, %vector.body1161 ]
  %270 = add nuw nsw <4 x i64> %vec.ind1171, %broadcast.splat1174
  %271 = trunc <4 x i64> %270 to <4 x i32>
  %272 = mul <4 x i32> %broadcast.splat1176, %271
  %273 = add <4 x i32> %272, <i32 2, i32 2, i32 2, i32 2>
  %274 = urem <4 x i32> %273, <i32 1000, i32 1000, i32 1000, i32 1000>
  %275 = sitofp <4 x i32> %274 to <4 x double>
  %276 = fmul fast <4 x double> %275, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %277 = extractelement <4 x i64> %270, i32 0
  %278 = shl i64 %277, 3
  %279 = add nuw nsw i64 %278, %269
  %280 = getelementptr i8, i8* %call2, i64 %279
  %281 = bitcast i8* %280 to <4 x double>*
  store <4 x double> %276, <4 x double>* %281, align 8, !alias.scope !103, !noalias !106
  %index.next1168 = add i64 %index1167, 4
  %vec.ind.next1172 = add <4 x i64> %vec.ind1171, <i64 4, i64 4, i64 4, i64 4>
  %282 = icmp eq i64 %index.next1168, %264
  br i1 %282, label %polly.loop_exit850, label %vector.body1161, !llvm.loop !107

polly.loop_exit850:                               ; preds = %vector.body1161, %polly.loop_header848
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %exitcond1101.not = icmp eq i64 %polly.indvar845, %262
  br i1 %exitcond1101.not, label %polly.loop_exit844, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_header842, %polly.loop_header848
  %polly.indvar851 = phi i64 [ %polly.indvar_next852, %polly.loop_header848 ], [ 0, %polly.loop_header842 ]
  %283 = add nuw nsw i64 %polly.indvar851, %265
  %284 = trunc i64 %283 to i32
  %285 = mul i32 %284, %268
  %286 = add i32 %285, 2
  %287 = urem i32 %286, 1000
  %p_conv10.i = sitofp i32 %287 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %288 = shl i64 %283, 3
  %289 = add nuw nsw i64 %288, %269
  %scevgep854 = getelementptr i8, i8* %call2, i64 %289
  %scevgep854855 = bitcast i8* %scevgep854 to double*
  store double %p_div12.i, double* %scevgep854855, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar851, %266
  br i1 %exitcond1097.not, label %polly.loop_exit850, label %polly.loop_header848, !llvm.loop !108

polly.loop_header856:                             ; preds = %polly.loop_exit838, %polly.loop_exit864
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit864 ], [ 0, %polly.loop_exit838 ]
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_exit864 ], [ 0, %polly.loop_exit838 ]
  %smin1090 = call i64 @llvm.smin.i64(i64 %indvars.iv1088, i64 -1168)
  %290 = shl nsw i64 %polly.indvar859, 5
  %291 = add nsw i64 %smin1090, 1199
  br label %polly.loop_header862

polly.loop_exit864:                               ; preds = %polly.loop_exit870
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %indvars.iv.next1089 = add nsw i64 %indvars.iv1088, -32
  %exitcond1093.not = icmp eq i64 %polly.indvar_next860, 38
  br i1 %exitcond1093.not, label %init_array.exit, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_exit870, %polly.loop_header856
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085, %polly.loop_exit870 ], [ 0, %polly.loop_header856 ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %polly.loop_header856 ]
  %292 = mul nsw i64 %polly.indvar865, -32
  %smin1180 = call i64 @llvm.smin.i64(i64 %292, i64 -968)
  %293 = add nsw i64 %smin1180, 1000
  %smin1086 = call i64 @llvm.smin.i64(i64 %indvars.iv1084, i64 -968)
  %294 = shl nsw i64 %polly.indvar865, 5
  %295 = add nsw i64 %smin1086, 999
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1085 = add nsw i64 %indvars.iv1084, -32
  %exitcond1092.not = icmp eq i64 %polly.indvar_next866, 32
  br i1 %exitcond1092.not, label %polly.loop_exit864, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %polly.indvar871 = phi i64 [ 0, %polly.loop_header862 ], [ %polly.indvar_next872, %polly.loop_exit876 ]
  %296 = add nuw nsw i64 %polly.indvar871, %290
  %297 = trunc i64 %296 to i32
  %298 = mul nuw nsw i64 %296, 8000
  %min.iters.check1181 = icmp eq i64 %293, 0
  br i1 %min.iters.check1181, label %polly.loop_header874, label %vector.ph1182

vector.ph1182:                                    ; preds = %polly.loop_header868
  %broadcast.splatinsert1191 = insertelement <4 x i64> poison, i64 %294, i32 0
  %broadcast.splat1192 = shufflevector <4 x i64> %broadcast.splatinsert1191, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1193 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1194 = shufflevector <4 x i32> %broadcast.splatinsert1193, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %vector.ph1182
  %index1185 = phi i64 [ 0, %vector.ph1182 ], [ %index.next1186, %vector.body1179 ]
  %vec.ind1189 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1182 ], [ %vec.ind.next1190, %vector.body1179 ]
  %299 = add nuw nsw <4 x i64> %vec.ind1189, %broadcast.splat1192
  %300 = trunc <4 x i64> %299 to <4 x i32>
  %301 = mul <4 x i32> %broadcast.splat1194, %300
  %302 = add <4 x i32> %301, <i32 1, i32 1, i32 1, i32 1>
  %303 = urem <4 x i32> %302, <i32 1200, i32 1200, i32 1200, i32 1200>
  %304 = sitofp <4 x i32> %303 to <4 x double>
  %305 = fmul fast <4 x double> %304, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %306 = extractelement <4 x i64> %299, i32 0
  %307 = shl i64 %306, 3
  %308 = add nuw nsw i64 %307, %298
  %309 = getelementptr i8, i8* %call1, i64 %308
  %310 = bitcast i8* %309 to <4 x double>*
  store <4 x double> %305, <4 x double>* %310, align 8, !alias.scope !102, !noalias !109
  %index.next1186 = add i64 %index1185, 4
  %vec.ind.next1190 = add <4 x i64> %vec.ind1189, <i64 4, i64 4, i64 4, i64 4>
  %311 = icmp eq i64 %index.next1186, %293
  br i1 %311, label %polly.loop_exit876, label %vector.body1179, !llvm.loop !110

polly.loop_exit876:                               ; preds = %vector.body1179, %polly.loop_header874
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar871, %291
  br i1 %exitcond1091.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_header868, %polly.loop_header874
  %polly.indvar877 = phi i64 [ %polly.indvar_next878, %polly.loop_header874 ], [ 0, %polly.loop_header868 ]
  %312 = add nuw nsw i64 %polly.indvar877, %294
  %313 = trunc i64 %312 to i32
  %314 = mul i32 %313, %297
  %315 = add i32 %314, 1
  %316 = urem i32 %315, 1200
  %p_conv.i = sitofp i32 %316 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %317 = shl i64 %312, 3
  %318 = add nuw nsw i64 %317, %298
  %scevgep881 = getelementptr i8, i8* %call1, i64 %318
  %scevgep881882 = bitcast i8* %scevgep881 to double*
  store double %p_div.i, double* %scevgep881882, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar877, %295
  br i1 %exitcond1087.not, label %polly.loop_exit876, label %polly.loop_header874, !llvm.loop !111
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
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 16}
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
!50 = !{!"llvm.loop.tile.size", i32 4}
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
!77 = !{!68, !72, !73}
!78 = !{!68, !71, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !83, !84}
!88 = !{!79, !82, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call1"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !93, !94}
!98 = !{!89, !92, !94}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !76, !13}
!106 = !{!102, !99}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !76, !13}
!109 = !{!103, !99}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !76, !13}
