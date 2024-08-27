; ModuleID = 'syr2k_exhaustive/mmp_all_XL_1489.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_1489.c"
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
  %call866 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1718 = bitcast i8* %call1 to double*
  %polly.access.call1727 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2728 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1727, %call2
  %polly.access.call2747 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2747, %call1
  %2 = or i1 %0, %1
  %polly.access.call767 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call767, %call2
  %4 = icmp ule i8* %polly.access.call2747, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call767, %call1
  %8 = icmp ule i8* %polly.access.call1727, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header840, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1137 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1136 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1135 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1134 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1134, %scevgep1137
  %bound1 = icmp ult i8* %scevgep1136, %scevgep1135
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
  br i1 %exitcond18.not.i, label %vector.ph1141, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1141:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1148 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1149 = shufflevector <4 x i64> %broadcast.splatinsert1148, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1140

vector.body1140:                                  ; preds = %vector.body1140, %vector.ph1141
  %index1142 = phi i64 [ 0, %vector.ph1141 ], [ %index.next1143, %vector.body1140 ]
  %vec.ind1146 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1141 ], [ %vec.ind.next1147, %vector.body1140 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1146, %broadcast.splat1149
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv7.i, i64 %index1142
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1147 = add <4 x i64> %vec.ind1146, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1143, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1140, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1140
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1141, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit901
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start507, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1203 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1203, label %for.body3.i46.preheader1367, label %vector.ph1204

vector.ph1204:                                    ; preds = %for.body3.i46.preheader
  %n.vec1206 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %vector.ph1204
  %index1207 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1208, %vector.body1202 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i, i64 %index1207
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1208 = add i64 %index1207, 4
  %46 = icmp eq i64 %index.next1208, %n.vec1206
  br i1 %46, label %middle.block1200, label %vector.body1202, !llvm.loop !18

middle.block1200:                                 ; preds = %vector.body1202
  %cmp.n1210 = icmp eq i64 %indvars.iv21.i, %n.vec1206
  br i1 %cmp.n1210, label %for.inc6.i, label %for.body3.i46.preheader1367

for.body3.i46.preheader1367:                      ; preds = %for.body3.i46.preheader, %middle.block1200
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1206, %middle.block1200 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1367, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1367 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1200, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting508
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start298, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1256 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1256, label %for.body3.i60.preheader1366, label %vector.ph1257

vector.ph1257:                                    ; preds = %for.body3.i60.preheader
  %n.vec1259 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %vector.ph1257
  %index1260 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1261, %vector.body1255 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i52, i64 %index1260
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1264 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1264, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1261 = add i64 %index1260, 4
  %57 = icmp eq i64 %index.next1261, %n.vec1259
  br i1 %57, label %middle.block1253, label %vector.body1255, !llvm.loop !57

middle.block1253:                                 ; preds = %vector.body1255
  %cmp.n1263 = icmp eq i64 %indvars.iv21.i52, %n.vec1259
  br i1 %cmp.n1263, label %for.inc6.i63, label %for.body3.i60.preheader1366

for.body3.i60.preheader1366:                      ; preds = %for.body3.i60.preheader, %middle.block1253
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1259, %middle.block1253 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1366, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1366 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1253, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting299
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1312 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1312, label %for.body3.i99.preheader1365, label %vector.ph1313

vector.ph1313:                                    ; preds = %for.body3.i99.preheader
  %n.vec1315 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1311

vector.body1311:                                  ; preds = %vector.body1311, %vector.ph1313
  %index1316 = phi i64 [ 0, %vector.ph1313 ], [ %index.next1317, %vector.body1311 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i91, i64 %index1316
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1320 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1320, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1317 = add i64 %index1316, 4
  %68 = icmp eq i64 %index.next1317, %n.vec1315
  br i1 %68, label %middle.block1309, label %vector.body1311, !llvm.loop !59

middle.block1309:                                 ; preds = %vector.body1311
  %cmp.n1319 = icmp eq i64 %indvars.iv21.i91, %n.vec1315
  br i1 %cmp.n1319, label %for.inc6.i102, label %for.body3.i99.preheader1365

for.body3.i99.preheader1365:                      ; preds = %for.body3.i99.preheader, %middle.block1309
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1315, %middle.block1309 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1365, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1365 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1309, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call866, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1324 = phi i64 [ %indvar.next1325, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1324, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1326 = icmp ult i64 %88, 4
  br i1 %min.iters.check1326, label %polly.loop_header192.preheader, label %vector.ph1327

vector.ph1327:                                    ; preds = %polly.loop_header
  %n.vec1329 = and i64 %88, -4
  br label %vector.body1323

vector.body1323:                                  ; preds = %vector.body1323, %vector.ph1327
  %index1330 = phi i64 [ 0, %vector.ph1327 ], [ %index.next1331, %vector.body1323 ]
  %90 = shl nuw nsw i64 %index1330, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1334 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1334, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1331 = add i64 %index1330, 4
  %95 = icmp eq i64 %index.next1331, %n.vec1329
  br i1 %95, label %middle.block1321, label %vector.body1323, !llvm.loop !72

middle.block1321:                                 ; preds = %vector.body1323
  %cmp.n1333 = icmp eq i64 %88, %n.vec1329
  br i1 %cmp.n1333, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1321
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1329, %middle.block1321 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1321
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1325 = add i64 %indvar1324, 1
  br i1 %exitcond1052.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1051.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1051.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1050.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2728, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1049.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = shl nuw nsw i64 %polly.indvar219, 3
  %98 = mul nuw nsw i64 %polly.indvar219, 76800
  %99 = or i64 %98, 8
  %100 = shl nuw nsw i64 %polly.indvar219, 3
  %101 = lshr i64 %polly.indvar219, 2
  %102 = shl nsw i64 %polly.indvar219, 3
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond1048.not = icmp eq i64 %polly.indvar_next220, 150
  br i1 %exitcond1048.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %103 = mul nuw nsw i64 %polly.indvar225, 20
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next226, 50
  br i1 %exitcond1047.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %104 = mul nsw i64 %polly.indvar231, -32
  %105 = add i64 %97, %104
  %106 = shl nuw nsw i64 %polly.indvar231, 8
  %107 = add nuw i64 %98, %106
  %108 = add nuw i64 %99, %106
  %109 = mul nsw i64 %polly.indvar231, -32
  %110 = add i64 %100, %109
  %111 = shl nsw i64 %polly.indvar231, 5
  %112 = sub nsw i64 %102, %111
  %113 = add nuw nsw i64 %111, 32
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit265
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, -32
  %exitcond1046.not = icmp eq i64 %polly.indvar231, %101
  br i1 %exitcond1046.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_exit265, %polly.loop_header228
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit265 ], [ %indvars.iv1036, %polly.loop_header228 ]
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit265 ], [ 0, %polly.loop_header228 ]
  %114 = add i64 %105, %polly.indvar237
  %smin1349 = call i64 @llvm.smin.i64(i64 %114, i64 31)
  %115 = add nsw i64 %smin1349, 1
  %116 = mul nuw nsw i64 %polly.indvar237, 9600
  %117 = add i64 %107, %116
  %scevgep1336 = getelementptr i8, i8* %call, i64 %117
  %118 = add i64 %108, %116
  %scevgep1337 = getelementptr i8, i8* %call, i64 %118
  %119 = add i64 %110, %polly.indvar237
  %smin1338 = call i64 @llvm.smin.i64(i64 %119, i64 31)
  %120 = shl nsw i64 %smin1338, 3
  %scevgep1339 = getelementptr i8, i8* %scevgep1337, i64 %120
  %121 = add nsw i64 %120, 8
  %smin1042 = call i64 @llvm.smin.i64(i64 %indvars.iv1038, i64 31)
  %122 = add nsw i64 %polly.indvar237, %112
  %polly.loop_guard1129 = icmp sgt i64 %122, -1
  %123 = add nuw nsw i64 %polly.indvar237, %102
  %.not = icmp ult i64 %123, %113
  %polly.access.mul.call1257 = mul nuw nsw i64 %123, 1000
  %124 = add nuw nsw i64 %polly.access.mul.call1257, %103
  br i1 %polly.loop_guard1129, label %polly.loop_header240.us, label %polly.loop_header234.split

polly.loop_header240.us:                          ; preds = %polly.loop_header234, %polly.merge.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.merge.us ], [ 0, %polly.loop_header234 ]
  %125 = add nuw nsw i64 %polly.indvar243.us, %103
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar243.us, 1200
  br label %polly.loop_header246.us

polly.loop_header246.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header246.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header246.us ], [ 0, %polly.loop_header240.us ]
  %126 = add nuw nsw i64 %polly.indvar249.us, %111
  %polly.access.mul.call1253.us = mul nuw nsw i64 %126, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %125, %polly.access.mul.call1253.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar249.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar249.us, %smin1042
  br i1 %exitcond1040.not, label %polly.cond.loopexit.us, label %polly.loop_header246.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1258.us = add nuw nsw i64 %124, %polly.indvar243.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %122
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next244.us, 20
  br i1 %exitcond1041.not, label %polly.loop_header263.preheader, label %polly.loop_header240.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header246.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit265, label %polly.loop_header240.preheader

polly.loop_header240.preheader:                   ; preds = %polly.loop_header234.split
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1718, i64 %124
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %122
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.access.add.call1258.1 = or i64 %124, 1
  %polly.access.call1259.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.1
  %polly.access.call1259.load.1 = load double, double* %polly.access.call1259.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.1 = add nsw i64 %122, 1200
  %polly.access.Packed_MemRef_call1262.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.1
  store double %polly.access.call1259.load.1, double* %polly.access.Packed_MemRef_call1262.1, align 8
  %polly.access.add.call1258.2 = or i64 %124, 2
  %polly.access.call1259.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.2
  %polly.access.call1259.load.2 = load double, double* %polly.access.call1259.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.2 = add nsw i64 %122, 2400
  %polly.access.Packed_MemRef_call1262.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.2
  store double %polly.access.call1259.load.2, double* %polly.access.Packed_MemRef_call1262.2, align 8
  %polly.access.add.call1258.3 = or i64 %124, 3
  %polly.access.call1259.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.3
  %polly.access.call1259.load.3 = load double, double* %polly.access.call1259.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.3 = add nsw i64 %122, 3600
  %polly.access.Packed_MemRef_call1262.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.3
  store double %polly.access.call1259.load.3, double* %polly.access.Packed_MemRef_call1262.3, align 8
  %polly.access.add.call1258.4 = add nuw nsw i64 %124, 4
  %polly.access.call1259.4 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.4
  %polly.access.call1259.load.4 = load double, double* %polly.access.call1259.4, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.4 = add nsw i64 %122, 4800
  %polly.access.Packed_MemRef_call1262.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.4
  store double %polly.access.call1259.load.4, double* %polly.access.Packed_MemRef_call1262.4, align 8
  %polly.access.add.call1258.5 = add nuw nsw i64 %124, 5
  %polly.access.call1259.5 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.5
  %polly.access.call1259.load.5 = load double, double* %polly.access.call1259.5, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.5 = add nsw i64 %122, 6000
  %polly.access.Packed_MemRef_call1262.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.5
  store double %polly.access.call1259.load.5, double* %polly.access.Packed_MemRef_call1262.5, align 8
  %polly.access.add.call1258.6 = add nuw nsw i64 %124, 6
  %polly.access.call1259.6 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.6
  %polly.access.call1259.load.6 = load double, double* %polly.access.call1259.6, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.6 = add nsw i64 %122, 7200
  %polly.access.Packed_MemRef_call1262.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.6
  store double %polly.access.call1259.load.6, double* %polly.access.Packed_MemRef_call1262.6, align 8
  %polly.access.add.call1258.7 = add nuw nsw i64 %124, 7
  %polly.access.call1259.7 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.7
  %polly.access.call1259.load.7 = load double, double* %polly.access.call1259.7, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.7 = add nsw i64 %122, 8400
  %polly.access.Packed_MemRef_call1262.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.7
  store double %polly.access.call1259.load.7, double* %polly.access.Packed_MemRef_call1262.7, align 8
  %polly.access.add.call1258.8 = add nuw nsw i64 %124, 8
  %polly.access.call1259.8 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.8
  %polly.access.call1259.load.8 = load double, double* %polly.access.call1259.8, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.8 = add nsw i64 %122, 9600
  %polly.access.Packed_MemRef_call1262.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.8
  store double %polly.access.call1259.load.8, double* %polly.access.Packed_MemRef_call1262.8, align 8
  %polly.access.add.call1258.9 = add nuw nsw i64 %124, 9
  %polly.access.call1259.9 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.9
  %polly.access.call1259.load.9 = load double, double* %polly.access.call1259.9, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.9 = add nsw i64 %122, 10800
  %polly.access.Packed_MemRef_call1262.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.9
  store double %polly.access.call1259.load.9, double* %polly.access.Packed_MemRef_call1262.9, align 8
  %polly.access.add.call1258.10 = add nuw nsw i64 %124, 10
  %polly.access.call1259.10 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.10
  %polly.access.call1259.load.10 = load double, double* %polly.access.call1259.10, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.10 = add nsw i64 %122, 12000
  %polly.access.Packed_MemRef_call1262.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.10
  store double %polly.access.call1259.load.10, double* %polly.access.Packed_MemRef_call1262.10, align 8
  %polly.access.add.call1258.11 = add nuw nsw i64 %124, 11
  %polly.access.call1259.11 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.11
  %polly.access.call1259.load.11 = load double, double* %polly.access.call1259.11, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.11 = add nsw i64 %122, 13200
  %polly.access.Packed_MemRef_call1262.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.11
  store double %polly.access.call1259.load.11, double* %polly.access.Packed_MemRef_call1262.11, align 8
  %polly.access.add.call1258.12 = add nuw nsw i64 %124, 12
  %polly.access.call1259.12 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.12
  %polly.access.call1259.load.12 = load double, double* %polly.access.call1259.12, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.12 = add nsw i64 %122, 14400
  %polly.access.Packed_MemRef_call1262.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.12
  store double %polly.access.call1259.load.12, double* %polly.access.Packed_MemRef_call1262.12, align 8
  %polly.access.add.call1258.13 = add nuw nsw i64 %124, 13
  %polly.access.call1259.13 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.13
  %polly.access.call1259.load.13 = load double, double* %polly.access.call1259.13, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.13 = add nsw i64 %122, 15600
  %polly.access.Packed_MemRef_call1262.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.13
  store double %polly.access.call1259.load.13, double* %polly.access.Packed_MemRef_call1262.13, align 8
  %polly.access.add.call1258.14 = add nuw nsw i64 %124, 14
  %polly.access.call1259.14 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.14
  %polly.access.call1259.load.14 = load double, double* %polly.access.call1259.14, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.14 = add nsw i64 %122, 16800
  %polly.access.Packed_MemRef_call1262.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.14
  store double %polly.access.call1259.load.14, double* %polly.access.Packed_MemRef_call1262.14, align 8
  %polly.access.add.call1258.15 = add nuw nsw i64 %124, 15
  %polly.access.call1259.15 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.15
  %polly.access.call1259.load.15 = load double, double* %polly.access.call1259.15, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.15 = add nsw i64 %122, 18000
  %polly.access.Packed_MemRef_call1262.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.15
  store double %polly.access.call1259.load.15, double* %polly.access.Packed_MemRef_call1262.15, align 8
  %polly.access.add.call1258.16 = add nuw nsw i64 %124, 16
  %polly.access.call1259.16 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.16
  %polly.access.call1259.load.16 = load double, double* %polly.access.call1259.16, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.16 = add nsw i64 %122, 19200
  %polly.access.Packed_MemRef_call1262.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.16
  store double %polly.access.call1259.load.16, double* %polly.access.Packed_MemRef_call1262.16, align 8
  %polly.access.add.call1258.17 = add nuw nsw i64 %124, 17
  %polly.access.call1259.17 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.17
  %polly.access.call1259.load.17 = load double, double* %polly.access.call1259.17, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.17 = add nsw i64 %122, 20400
  %polly.access.Packed_MemRef_call1262.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.17
  store double %polly.access.call1259.load.17, double* %polly.access.Packed_MemRef_call1262.17, align 8
  %polly.access.add.call1258.18 = add nuw nsw i64 %124, 18
  %polly.access.call1259.18 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.18
  %polly.access.call1259.load.18 = load double, double* %polly.access.call1259.18, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.18 = add nsw i64 %122, 21600
  %polly.access.Packed_MemRef_call1262.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.18
  store double %polly.access.call1259.load.18, double* %polly.access.Packed_MemRef_call1262.18, align 8
  %polly.access.add.call1258.19 = add nuw nsw i64 %124, 19
  %polly.access.call1259.19 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1258.19
  %polly.access.call1259.load.19 = load double, double* %polly.access.call1259.19, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1261.19 = add nsw i64 %122, 22800
  %polly.access.Packed_MemRef_call1262.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.19
  store double %polly.access.call1259.load.19, double* %polly.access.Packed_MemRef_call1262.19, align 8
  br label %polly.loop_exit265

polly.loop_exit265:                               ; preds = %polly.loop_exit272.loopexit.us, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header263.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next238, 8
  br i1 %exitcond1045.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.merge.us
  %127 = mul nuw nsw i64 %123, 9600
  br i1 %polly.loop_guard1129, label %polly.loop_header263.us, label %polly.loop_exit265

polly.loop_header263.us:                          ; preds = %polly.loop_header263.preheader, %polly.loop_exit272.loopexit.us
  %polly.indvar266.us = phi i64 [ %polly.indvar_next267.us, %polly.loop_exit272.loopexit.us ], [ 0, %polly.loop_header263.preheader ]
  %128 = mul nuw nsw i64 %polly.indvar266.us, 9600
  %polly.access.mul.Packed_MemRef_call1277.us = mul nuw nsw i64 %polly.indvar266.us, 1200
  %129 = add nuw nsw i64 %polly.indvar266.us, %103
  %polly.access.mul.Packed_MemRef_call2281.us = mul nuw nsw i64 %129, 1200
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us, %123
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %polly.access.add.Packed_MemRef_call1290.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1277.us, %122
  %polly.access.Packed_MemRef_call1291.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call1291.us, align 8
  %min.iters.check1350 = icmp ult i64 %115, 4
  br i1 %min.iters.check1350, label %polly.loop_header270.us.preheader, label %vector.memcheck1335

vector.memcheck1335:                              ; preds = %polly.loop_header263.us
  %130 = add i64 %121, %128
  %scevgep1341 = getelementptr i8, i8* %malloccall, i64 %130
  %scevgep1340 = getelementptr i8, i8* %malloccall, i64 %128
  %bound01342 = icmp ult i8* %scevgep1336, %scevgep1341
  %bound11343 = icmp ult i8* %scevgep1340, %scevgep1339
  %found.conflict1344 = and i1 %bound01342, %bound11343
  br i1 %found.conflict1344, label %polly.loop_header270.us.preheader, label %vector.ph1351

vector.ph1351:                                    ; preds = %vector.memcheck1335
  %n.vec1353 = and i64 %115, -4
  %broadcast.splatinsert1359 = insertelement <4 x double> poison, double %_p_scalar_284.us, i32 0
  %broadcast.splat1360 = shufflevector <4 x double> %broadcast.splatinsert1359, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1362 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1363 = shufflevector <4 x double> %broadcast.splatinsert1362, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1348

vector.body1348:                                  ; preds = %vector.body1348, %vector.ph1351
  %index1354 = phi i64 [ 0, %vector.ph1351 ], [ %index.next1355, %vector.body1348 ]
  %131 = add nuw nsw i64 %index1354, %111
  %132 = add nuw nsw i64 %index1354, %polly.access.mul.Packed_MemRef_call1277.us
  %133 = getelementptr double, double* %Packed_MemRef_call1, i64 %132
  %134 = bitcast double* %133 to <4 x double>*
  %wide.load1358 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !77
  %135 = fmul fast <4 x double> %broadcast.splat1360, %wide.load1358
  %136 = add nuw nsw i64 %131, %polly.access.mul.Packed_MemRef_call2281.us
  %137 = getelementptr double, double* %Packed_MemRef_call2, i64 %136
  %138 = bitcast double* %137 to <4 x double>*
  %wide.load1361 = load <4 x double>, <4 x double>* %138, align 8
  %139 = fmul fast <4 x double> %broadcast.splat1363, %wide.load1361
  %140 = shl i64 %131, 3
  %141 = add nuw nsw i64 %140, %127
  %142 = getelementptr i8, i8* %call, i64 %141
  %143 = bitcast i8* %142 to <4 x double>*
  %wide.load1364 = load <4 x double>, <4 x double>* %143, align 8, !alias.scope !80, !noalias !82
  %144 = fadd fast <4 x double> %139, %135
  %145 = fmul fast <4 x double> %144, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %146 = fadd fast <4 x double> %145, %wide.load1364
  %147 = bitcast i8* %142 to <4 x double>*
  store <4 x double> %146, <4 x double>* %147, align 8, !alias.scope !80, !noalias !82
  %index.next1355 = add i64 %index1354, 4
  %148 = icmp eq i64 %index.next1355, %n.vec1353
  br i1 %148, label %middle.block1346, label %vector.body1348, !llvm.loop !83

middle.block1346:                                 ; preds = %vector.body1348
  %cmp.n1357 = icmp eq i64 %115, %n.vec1353
  br i1 %cmp.n1357, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us.preheader

polly.loop_header270.us.preheader:                ; preds = %vector.memcheck1335, %polly.loop_header263.us, %middle.block1346
  %polly.indvar274.us.ph = phi i64 [ 0, %vector.memcheck1335 ], [ 0, %polly.loop_header263.us ], [ %n.vec1353, %middle.block1346 ]
  br label %polly.loop_header270.us

polly.loop_header270.us:                          ; preds = %polly.loop_header270.us.preheader, %polly.loop_header270.us
  %polly.indvar274.us = phi i64 [ %polly.indvar_next275.us, %polly.loop_header270.us ], [ %polly.indvar274.us.ph, %polly.loop_header270.us.preheader ]
  %149 = add nuw nsw i64 %polly.indvar274.us, %111
  %polly.access.add.Packed_MemRef_call1278.us = add nuw nsw i64 %polly.indvar274.us, %polly.access.mul.Packed_MemRef_call1277.us
  %polly.access.Packed_MemRef_call1279.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call1279.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_284.us, %_p_scalar_280.us
  %polly.access.add.Packed_MemRef_call2286.us = add nuw nsw i64 %149, %polly.access.mul.Packed_MemRef_call2281.us
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %150 = shl i64 %149, 3
  %151 = add nuw nsw i64 %150, %127
  %scevgep293.us = getelementptr i8, i8* %call, i64 %151
  %scevgep293294.us = bitcast i8* %scevgep293.us to double*
  %_p_scalar_295.us = load double, double* %scevgep293294.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_295.us
  store double %p_add42.i118.us, double* %scevgep293294.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar274.us, %smin1042
  br i1 %exitcond1043.not, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us, !llvm.loop !84

polly.loop_exit272.loopexit.us:                   ; preds = %polly.loop_header270.us, %middle.block1346
  %polly.indvar_next267.us = add nuw nsw i64 %polly.indvar266.us, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar_next267.us, 20
  br i1 %exitcond1044.not, label %polly.loop_exit265, label %polly.loop_header263.us

polly.start298:                                   ; preds = %kernel_syr2k.exit
  %malloccall300 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall302 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header386

polly.exiting299:                                 ; preds = %polly.loop_exit426
  tail call void @free(i8* %malloccall300)
  tail call void @free(i8* %malloccall302)
  br label %kernel_syr2k.exit90

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.start298
  %indvar1268 = phi i64 [ %indvar.next1269, %polly.loop_exit394 ], [ 0, %polly.start298 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 1, %polly.start298 ]
  %152 = add i64 %indvar1268, 1
  %153 = mul nuw nsw i64 %polly.indvar389, 9600
  %scevgep398 = getelementptr i8, i8* %call, i64 %153
  %min.iters.check1270 = icmp ult i64 %152, 4
  br i1 %min.iters.check1270, label %polly.loop_header392.preheader, label %vector.ph1271

vector.ph1271:                                    ; preds = %polly.loop_header386
  %n.vec1273 = and i64 %152, -4
  br label %vector.body1267

vector.body1267:                                  ; preds = %vector.body1267, %vector.ph1271
  %index1274 = phi i64 [ 0, %vector.ph1271 ], [ %index.next1275, %vector.body1267 ]
  %154 = shl nuw nsw i64 %index1274, 3
  %155 = getelementptr i8, i8* %scevgep398, i64 %154
  %156 = bitcast i8* %155 to <4 x double>*
  %wide.load1278 = load <4 x double>, <4 x double>* %156, align 8, !alias.scope !85, !noalias !87
  %157 = fmul fast <4 x double> %wide.load1278, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %158 = bitcast i8* %155 to <4 x double>*
  store <4 x double> %157, <4 x double>* %158, align 8, !alias.scope !85, !noalias !87
  %index.next1275 = add i64 %index1274, 4
  %159 = icmp eq i64 %index.next1275, %n.vec1273
  br i1 %159, label %middle.block1265, label %vector.body1267, !llvm.loop !92

middle.block1265:                                 ; preds = %vector.body1267
  %cmp.n1277 = icmp eq i64 %152, %n.vec1273
  br i1 %cmp.n1277, label %polly.loop_exit394, label %polly.loop_header392.preheader

polly.loop_header392.preheader:                   ; preds = %polly.loop_header386, %middle.block1265
  %polly.indvar395.ph = phi i64 [ 0, %polly.loop_header386 ], [ %n.vec1273, %middle.block1265 ]
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392, %middle.block1265
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next390, 1200
  %indvar.next1269 = add i64 %indvar1268, 1
  br i1 %exitcond1073.not, label %polly.loop_header402.preheader, label %polly.loop_header386

polly.loop_header402.preheader:                   ; preds = %polly.loop_exit394
  %Packed_MemRef_call1301 = bitcast i8* %malloccall300 to double*
  %Packed_MemRef_call2303 = bitcast i8* %malloccall302 to double*
  br label %polly.loop_header402

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_header392
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_header392 ], [ %polly.indvar395.ph, %polly.loop_header392.preheader ]
  %160 = shl nuw nsw i64 %polly.indvar395, 3
  %scevgep399 = getelementptr i8, i8* %scevgep398, i64 %160
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !85, !noalias !87
  %p_mul.i57 = fmul fast double %_p_scalar_401, 1.200000e+00
  store double %p_mul.i57, double* %scevgep399400, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar_next396, %polly.indvar389
  br i1 %exitcond1072.not, label %polly.loop_exit394, label %polly.loop_header392, !llvm.loop !93

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit410
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit410 ], [ 0, %polly.loop_header402.preheader ]
  %polly.access.mul.Packed_MemRef_call2303 = mul nuw nsw i64 %polly.indvar405, 1200
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next406, 1000
  br i1 %exitcond1071.not, label %polly.loop_header418, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %polly.access.mul.call2415 = mul nuw nsw i64 %polly.indvar411, 1000
  %polly.access.add.call2416 = add nuw nsw i64 %polly.access.mul.call2415, %polly.indvar405
  %polly.access.call2417 = getelementptr double, double* %polly.access.cast.call2728, i64 %polly.access.add.call2416
  %polly.access.call2417.load = load double, double* %polly.access.call2417, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2303 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call2303
  %polly.access.Packed_MemRef_call2303 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303
  store double %polly.access.call2417.load, double* %polly.access.Packed_MemRef_call2303, align 8
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next412, 1200
  br i1 %exitcond1070.not, label %polly.loop_exit410, label %polly.loop_header408

polly.loop_header418:                             ; preds = %polly.loop_exit410, %polly.loop_exit426
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit426 ], [ 0, %polly.loop_exit410 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit426 ], [ 0, %polly.loop_exit410 ]
  %161 = shl nuw nsw i64 %polly.indvar421, 3
  %162 = mul nuw nsw i64 %polly.indvar421, 76800
  %163 = or i64 %162, 8
  %164 = shl nuw nsw i64 %polly.indvar421, 3
  %165 = lshr i64 %polly.indvar421, 2
  %166 = shl nsw i64 %polly.indvar421, 3
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit433
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1055 = add nuw nsw i64 %indvars.iv1054, 8
  %exitcond1069.not = icmp eq i64 %polly.indvar_next422, 150
  br i1 %exitcond1069.not, label %polly.exiting299, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit433, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit433 ]
  %167 = mul nuw nsw i64 %polly.indvar427, 20
  br label %polly.loop_header431

polly.loop_exit433:                               ; preds = %polly.loop_exit439
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar_next428, 50
  br i1 %exitcond1068.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header431:                             ; preds = %polly.loop_exit439, %polly.loop_header424
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057, %polly.loop_exit439 ], [ %indvars.iv1054, %polly.loop_header424 ]
  %polly.indvar434 = phi i64 [ %polly.indvar_next435, %polly.loop_exit439 ], [ 0, %polly.loop_header424 ]
  %168 = mul nsw i64 %polly.indvar434, -32
  %169 = add i64 %161, %168
  %170 = shl nuw nsw i64 %polly.indvar434, 8
  %171 = add nuw i64 %162, %170
  %172 = add nuw i64 %163, %170
  %173 = mul nsw i64 %polly.indvar434, -32
  %174 = add i64 %164, %173
  %175 = shl nsw i64 %polly.indvar434, 5
  %176 = sub nsw i64 %166, %175
  %177 = add nuw nsw i64 %175, 32
  br label %polly.loop_header437

polly.loop_exit439:                               ; preds = %polly.loop_exit474
  %polly.indvar_next435 = add nuw nsw i64 %polly.indvar434, 1
  %indvars.iv.next1057 = add nsw i64 %indvars.iv1056, -32
  %exitcond1067.not = icmp eq i64 %polly.indvar434, %165
  br i1 %exitcond1067.not, label %polly.loop_exit433, label %polly.loop_header431

polly.loop_header437:                             ; preds = %polly.loop_exit474, %polly.loop_header431
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit474 ], [ %indvars.iv1056, %polly.loop_header431 ]
  %polly.indvar440 = phi i64 [ %polly.indvar_next441, %polly.loop_exit474 ], [ 0, %polly.loop_header431 ]
  %178 = add i64 %169, %polly.indvar440
  %smin1293 = call i64 @llvm.smin.i64(i64 %178, i64 31)
  %179 = add nsw i64 %smin1293, 1
  %180 = mul nuw nsw i64 %polly.indvar440, 9600
  %181 = add i64 %171, %180
  %scevgep1280 = getelementptr i8, i8* %call, i64 %181
  %182 = add i64 %172, %180
  %scevgep1281 = getelementptr i8, i8* %call, i64 %182
  %183 = add i64 %174, %polly.indvar440
  %smin1282 = call i64 @llvm.smin.i64(i64 %183, i64 31)
  %184 = shl nsw i64 %smin1282, 3
  %scevgep1283 = getelementptr i8, i8* %scevgep1281, i64 %184
  %185 = add nsw i64 %184, 8
  %smin1063 = call i64 @llvm.smin.i64(i64 %indvars.iv1058, i64 31)
  %186 = add nsw i64 %polly.indvar440, %176
  %polly.loop_guard4531130 = icmp sgt i64 %186, -1
  %187 = add nuw nsw i64 %polly.indvar440, %166
  %.not920 = icmp ult i64 %187, %177
  %polly.access.mul.call1466 = mul nuw nsw i64 %187, 1000
  %188 = add nuw nsw i64 %polly.access.mul.call1466, %167
  br i1 %polly.loop_guard4531130, label %polly.loop_header443.us, label %polly.loop_header437.split

polly.loop_header443.us:                          ; preds = %polly.loop_header437, %polly.merge462.us
  %polly.indvar446.us = phi i64 [ %polly.indvar_next447.us, %polly.merge462.us ], [ 0, %polly.loop_header437 ]
  %189 = add nuw nsw i64 %polly.indvar446.us, %167
  %polly.access.mul.Packed_MemRef_call1301.us = mul nuw nsw i64 %polly.indvar446.us, 1200
  br label %polly.loop_header450.us

polly.loop_header450.us:                          ; preds = %polly.loop_header443.us, %polly.loop_header450.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.loop_header450.us ], [ 0, %polly.loop_header443.us ]
  %190 = add nuw nsw i64 %polly.indvar454.us, %175
  %polly.access.mul.call1458.us = mul nuw nsw i64 %190, 1000
  %polly.access.add.call1459.us = add nuw nsw i64 %189, %polly.access.mul.call1458.us
  %polly.access.call1460.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1459.us
  %polly.access.call1460.load.us = load double, double* %polly.access.call1460.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301.us = add nuw nsw i64 %polly.indvar454.us, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us
  store double %polly.access.call1460.load.us, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar454.us, %smin1063
  br i1 %exitcond1061.not, label %polly.cond461.loopexit.us, label %polly.loop_header450.us

polly.then463.us:                                 ; preds = %polly.cond461.loopexit.us
  %polly.access.add.call1467.us = add nuw nsw i64 %188, %polly.indvar446.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.us
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1301.us, %186
  %polly.access.Packed_MemRef_call1301471.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.us
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1301471.us, align 8
  br label %polly.merge462.us

polly.merge462.us:                                ; preds = %polly.then463.us, %polly.cond461.loopexit.us
  %polly.indvar_next447.us = add nuw nsw i64 %polly.indvar446.us, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next447.us, 20
  br i1 %exitcond1062.not, label %polly.loop_header472.preheader, label %polly.loop_header443.us

polly.cond461.loopexit.us:                        ; preds = %polly.loop_header450.us
  br i1 %.not920, label %polly.merge462.us, label %polly.then463.us

polly.loop_header437.split:                       ; preds = %polly.loop_header437
  br i1 %.not920, label %polly.loop_exit474, label %polly.loop_header443.preheader

polly.loop_header443.preheader:                   ; preds = %polly.loop_header437.split
  %polly.access.call1468 = getelementptr double, double* %polly.access.cast.call1718, i64 %188
  %polly.access.call1468.load = load double, double* %polly.access.call1468, align 8, !alias.scope !88, !noalias !95
  %polly.access.Packed_MemRef_call1301471 = getelementptr double, double* %Packed_MemRef_call1301, i64 %186
  store double %polly.access.call1468.load, double* %polly.access.Packed_MemRef_call1301471, align 8
  %polly.access.add.call1467.1 = or i64 %188, 1
  %polly.access.call1468.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.1
  %polly.access.call1468.load.1 = load double, double* %polly.access.call1468.1, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.1 = add nsw i64 %186, 1200
  %polly.access.Packed_MemRef_call1301471.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.1
  store double %polly.access.call1468.load.1, double* %polly.access.Packed_MemRef_call1301471.1, align 8
  %polly.access.add.call1467.2 = or i64 %188, 2
  %polly.access.call1468.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.2
  %polly.access.call1468.load.2 = load double, double* %polly.access.call1468.2, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.2 = add nsw i64 %186, 2400
  %polly.access.Packed_MemRef_call1301471.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.2
  store double %polly.access.call1468.load.2, double* %polly.access.Packed_MemRef_call1301471.2, align 8
  %polly.access.add.call1467.3 = or i64 %188, 3
  %polly.access.call1468.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.3
  %polly.access.call1468.load.3 = load double, double* %polly.access.call1468.3, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.3 = add nsw i64 %186, 3600
  %polly.access.Packed_MemRef_call1301471.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.3
  store double %polly.access.call1468.load.3, double* %polly.access.Packed_MemRef_call1301471.3, align 8
  %polly.access.add.call1467.4 = add nuw nsw i64 %188, 4
  %polly.access.call1468.4 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.4
  %polly.access.call1468.load.4 = load double, double* %polly.access.call1468.4, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.4 = add nsw i64 %186, 4800
  %polly.access.Packed_MemRef_call1301471.4 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.4
  store double %polly.access.call1468.load.4, double* %polly.access.Packed_MemRef_call1301471.4, align 8
  %polly.access.add.call1467.5 = add nuw nsw i64 %188, 5
  %polly.access.call1468.5 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.5
  %polly.access.call1468.load.5 = load double, double* %polly.access.call1468.5, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.5 = add nsw i64 %186, 6000
  %polly.access.Packed_MemRef_call1301471.5 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.5
  store double %polly.access.call1468.load.5, double* %polly.access.Packed_MemRef_call1301471.5, align 8
  %polly.access.add.call1467.6 = add nuw nsw i64 %188, 6
  %polly.access.call1468.6 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.6
  %polly.access.call1468.load.6 = load double, double* %polly.access.call1468.6, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.6 = add nsw i64 %186, 7200
  %polly.access.Packed_MemRef_call1301471.6 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.6
  store double %polly.access.call1468.load.6, double* %polly.access.Packed_MemRef_call1301471.6, align 8
  %polly.access.add.call1467.7 = add nuw nsw i64 %188, 7
  %polly.access.call1468.7 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.7
  %polly.access.call1468.load.7 = load double, double* %polly.access.call1468.7, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.7 = add nsw i64 %186, 8400
  %polly.access.Packed_MemRef_call1301471.7 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.7
  store double %polly.access.call1468.load.7, double* %polly.access.Packed_MemRef_call1301471.7, align 8
  %polly.access.add.call1467.8 = add nuw nsw i64 %188, 8
  %polly.access.call1468.8 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.8
  %polly.access.call1468.load.8 = load double, double* %polly.access.call1468.8, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.8 = add nsw i64 %186, 9600
  %polly.access.Packed_MemRef_call1301471.8 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.8
  store double %polly.access.call1468.load.8, double* %polly.access.Packed_MemRef_call1301471.8, align 8
  %polly.access.add.call1467.9 = add nuw nsw i64 %188, 9
  %polly.access.call1468.9 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.9
  %polly.access.call1468.load.9 = load double, double* %polly.access.call1468.9, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.9 = add nsw i64 %186, 10800
  %polly.access.Packed_MemRef_call1301471.9 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.9
  store double %polly.access.call1468.load.9, double* %polly.access.Packed_MemRef_call1301471.9, align 8
  %polly.access.add.call1467.10 = add nuw nsw i64 %188, 10
  %polly.access.call1468.10 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.10
  %polly.access.call1468.load.10 = load double, double* %polly.access.call1468.10, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.10 = add nsw i64 %186, 12000
  %polly.access.Packed_MemRef_call1301471.10 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.10
  store double %polly.access.call1468.load.10, double* %polly.access.Packed_MemRef_call1301471.10, align 8
  %polly.access.add.call1467.11 = add nuw nsw i64 %188, 11
  %polly.access.call1468.11 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.11
  %polly.access.call1468.load.11 = load double, double* %polly.access.call1468.11, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.11 = add nsw i64 %186, 13200
  %polly.access.Packed_MemRef_call1301471.11 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.11
  store double %polly.access.call1468.load.11, double* %polly.access.Packed_MemRef_call1301471.11, align 8
  %polly.access.add.call1467.12 = add nuw nsw i64 %188, 12
  %polly.access.call1468.12 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.12
  %polly.access.call1468.load.12 = load double, double* %polly.access.call1468.12, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.12 = add nsw i64 %186, 14400
  %polly.access.Packed_MemRef_call1301471.12 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.12
  store double %polly.access.call1468.load.12, double* %polly.access.Packed_MemRef_call1301471.12, align 8
  %polly.access.add.call1467.13 = add nuw nsw i64 %188, 13
  %polly.access.call1468.13 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.13
  %polly.access.call1468.load.13 = load double, double* %polly.access.call1468.13, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.13 = add nsw i64 %186, 15600
  %polly.access.Packed_MemRef_call1301471.13 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.13
  store double %polly.access.call1468.load.13, double* %polly.access.Packed_MemRef_call1301471.13, align 8
  %polly.access.add.call1467.14 = add nuw nsw i64 %188, 14
  %polly.access.call1468.14 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.14
  %polly.access.call1468.load.14 = load double, double* %polly.access.call1468.14, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.14 = add nsw i64 %186, 16800
  %polly.access.Packed_MemRef_call1301471.14 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.14
  store double %polly.access.call1468.load.14, double* %polly.access.Packed_MemRef_call1301471.14, align 8
  %polly.access.add.call1467.15 = add nuw nsw i64 %188, 15
  %polly.access.call1468.15 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.15
  %polly.access.call1468.load.15 = load double, double* %polly.access.call1468.15, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.15 = add nsw i64 %186, 18000
  %polly.access.Packed_MemRef_call1301471.15 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.15
  store double %polly.access.call1468.load.15, double* %polly.access.Packed_MemRef_call1301471.15, align 8
  %polly.access.add.call1467.16 = add nuw nsw i64 %188, 16
  %polly.access.call1468.16 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.16
  %polly.access.call1468.load.16 = load double, double* %polly.access.call1468.16, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.16 = add nsw i64 %186, 19200
  %polly.access.Packed_MemRef_call1301471.16 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.16
  store double %polly.access.call1468.load.16, double* %polly.access.Packed_MemRef_call1301471.16, align 8
  %polly.access.add.call1467.17 = add nuw nsw i64 %188, 17
  %polly.access.call1468.17 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.17
  %polly.access.call1468.load.17 = load double, double* %polly.access.call1468.17, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.17 = add nsw i64 %186, 20400
  %polly.access.Packed_MemRef_call1301471.17 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.17
  store double %polly.access.call1468.load.17, double* %polly.access.Packed_MemRef_call1301471.17, align 8
  %polly.access.add.call1467.18 = add nuw nsw i64 %188, 18
  %polly.access.call1468.18 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.18
  %polly.access.call1468.load.18 = load double, double* %polly.access.call1468.18, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.18 = add nsw i64 %186, 21600
  %polly.access.Packed_MemRef_call1301471.18 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.18
  store double %polly.access.call1468.load.18, double* %polly.access.Packed_MemRef_call1301471.18, align 8
  %polly.access.add.call1467.19 = add nuw nsw i64 %188, 19
  %polly.access.call1468.19 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1467.19
  %polly.access.call1468.load.19 = load double, double* %polly.access.call1468.19, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1301470.19 = add nsw i64 %186, 22800
  %polly.access.Packed_MemRef_call1301471.19 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301470.19
  store double %polly.access.call1468.load.19, double* %polly.access.Packed_MemRef_call1301471.19, align 8
  br label %polly.loop_exit474

polly.loop_exit474:                               ; preds = %polly.loop_exit481.loopexit.us, %polly.loop_header437.split, %polly.loop_header443.preheader, %polly.loop_header472.preheader
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next441, 8
  br i1 %exitcond1066.not, label %polly.loop_exit439, label %polly.loop_header437

polly.loop_header472.preheader:                   ; preds = %polly.merge462.us
  %191 = mul nuw nsw i64 %187, 9600
  br i1 %polly.loop_guard4531130, label %polly.loop_header472.us, label %polly.loop_exit474

polly.loop_header472.us:                          ; preds = %polly.loop_header472.preheader, %polly.loop_exit481.loopexit.us
  %polly.indvar475.us = phi i64 [ %polly.indvar_next476.us, %polly.loop_exit481.loopexit.us ], [ 0, %polly.loop_header472.preheader ]
  %192 = mul nuw nsw i64 %polly.indvar475.us, 9600
  %polly.access.mul.Packed_MemRef_call1301486.us = mul nuw nsw i64 %polly.indvar475.us, 1200
  %193 = add nuw nsw i64 %polly.indvar475.us, %167
  %polly.access.mul.Packed_MemRef_call2303490.us = mul nuw nsw i64 %193, 1200
  %polly.access.add.Packed_MemRef_call2303491.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303490.us, %187
  %polly.access.Packed_MemRef_call2303492.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303491.us
  %_p_scalar_493.us = load double, double* %polly.access.Packed_MemRef_call2303492.us, align 8
  %polly.access.add.Packed_MemRef_call1301499.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1301486.us, %186
  %polly.access.Packed_MemRef_call1301500.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call1301500.us, align 8
  %min.iters.check1294 = icmp ult i64 %179, 4
  br i1 %min.iters.check1294, label %polly.loop_header479.us.preheader, label %vector.memcheck1279

vector.memcheck1279:                              ; preds = %polly.loop_header472.us
  %194 = add i64 %185, %192
  %scevgep1285 = getelementptr i8, i8* %malloccall300, i64 %194
  %scevgep1284 = getelementptr i8, i8* %malloccall300, i64 %192
  %bound01286 = icmp ult i8* %scevgep1280, %scevgep1285
  %bound11287 = icmp ult i8* %scevgep1284, %scevgep1283
  %found.conflict1288 = and i1 %bound01286, %bound11287
  br i1 %found.conflict1288, label %polly.loop_header479.us.preheader, label %vector.ph1295

vector.ph1295:                                    ; preds = %vector.memcheck1279
  %n.vec1297 = and i64 %179, -4
  %broadcast.splatinsert1303 = insertelement <4 x double> poison, double %_p_scalar_493.us, i32 0
  %broadcast.splat1304 = shufflevector <4 x double> %broadcast.splatinsert1303, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1306 = insertelement <4 x double> poison, double %_p_scalar_501.us, i32 0
  %broadcast.splat1307 = shufflevector <4 x double> %broadcast.splatinsert1306, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1292

vector.body1292:                                  ; preds = %vector.body1292, %vector.ph1295
  %index1298 = phi i64 [ 0, %vector.ph1295 ], [ %index.next1299, %vector.body1292 ]
  %195 = add nuw nsw i64 %index1298, %175
  %196 = add nuw nsw i64 %index1298, %polly.access.mul.Packed_MemRef_call1301486.us
  %197 = getelementptr double, double* %Packed_MemRef_call1301, i64 %196
  %198 = bitcast double* %197 to <4 x double>*
  %wide.load1302 = load <4 x double>, <4 x double>* %198, align 8, !alias.scope !96
  %199 = fmul fast <4 x double> %broadcast.splat1304, %wide.load1302
  %200 = add nuw nsw i64 %195, %polly.access.mul.Packed_MemRef_call2303490.us
  %201 = getelementptr double, double* %Packed_MemRef_call2303, i64 %200
  %202 = bitcast double* %201 to <4 x double>*
  %wide.load1305 = load <4 x double>, <4 x double>* %202, align 8
  %203 = fmul fast <4 x double> %broadcast.splat1307, %wide.load1305
  %204 = shl i64 %195, 3
  %205 = add nuw nsw i64 %204, %191
  %206 = getelementptr i8, i8* %call, i64 %205
  %207 = bitcast i8* %206 to <4 x double>*
  %wide.load1308 = load <4 x double>, <4 x double>* %207, align 8, !alias.scope !99, !noalias !101
  %208 = fadd fast <4 x double> %203, %199
  %209 = fmul fast <4 x double> %208, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %210 = fadd fast <4 x double> %209, %wide.load1308
  %211 = bitcast i8* %206 to <4 x double>*
  store <4 x double> %210, <4 x double>* %211, align 8, !alias.scope !99, !noalias !101
  %index.next1299 = add i64 %index1298, 4
  %212 = icmp eq i64 %index.next1299, %n.vec1297
  br i1 %212, label %middle.block1290, label %vector.body1292, !llvm.loop !102

middle.block1290:                                 ; preds = %vector.body1292
  %cmp.n1301 = icmp eq i64 %179, %n.vec1297
  br i1 %cmp.n1301, label %polly.loop_exit481.loopexit.us, label %polly.loop_header479.us.preheader

polly.loop_header479.us.preheader:                ; preds = %vector.memcheck1279, %polly.loop_header472.us, %middle.block1290
  %polly.indvar483.us.ph = phi i64 [ 0, %vector.memcheck1279 ], [ 0, %polly.loop_header472.us ], [ %n.vec1297, %middle.block1290 ]
  br label %polly.loop_header479.us

polly.loop_header479.us:                          ; preds = %polly.loop_header479.us.preheader, %polly.loop_header479.us
  %polly.indvar483.us = phi i64 [ %polly.indvar_next484.us, %polly.loop_header479.us ], [ %polly.indvar483.us.ph, %polly.loop_header479.us.preheader ]
  %213 = add nuw nsw i64 %polly.indvar483.us, %175
  %polly.access.add.Packed_MemRef_call1301487.us = add nuw nsw i64 %polly.indvar483.us, %polly.access.mul.Packed_MemRef_call1301486.us
  %polly.access.Packed_MemRef_call1301488.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301487.us
  %_p_scalar_489.us = load double, double* %polly.access.Packed_MemRef_call1301488.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_493.us, %_p_scalar_489.us
  %polly.access.add.Packed_MemRef_call2303495.us = add nuw nsw i64 %213, %polly.access.mul.Packed_MemRef_call2303490.us
  %polly.access.Packed_MemRef_call2303496.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303495.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call2303496.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_501.us, %_p_scalar_497.us
  %214 = shl i64 %213, 3
  %215 = add nuw nsw i64 %214, %191
  %scevgep502.us = getelementptr i8, i8* %call, i64 %215
  %scevgep502503.us = bitcast i8* %scevgep502.us to double*
  %_p_scalar_504.us = load double, double* %scevgep502503.us, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_504.us
  store double %p_add42.i79.us, double* %scevgep502503.us, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next484.us = add nuw nsw i64 %polly.indvar483.us, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar483.us, %smin1063
  br i1 %exitcond1064.not, label %polly.loop_exit481.loopexit.us, label %polly.loop_header479.us, !llvm.loop !103

polly.loop_exit481.loopexit.us:                   ; preds = %polly.loop_header479.us, %middle.block1290
  %polly.indvar_next476.us = add nuw nsw i64 %polly.indvar475.us, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next476.us, 20
  br i1 %exitcond1065.not, label %polly.loop_exit474, label %polly.loop_header472.us

polly.start507:                                   ; preds = %init_array.exit
  %malloccall509 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall511 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header595

polly.exiting508:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall509)
  tail call void @free(i8* %malloccall511)
  br label %kernel_syr2k.exit

polly.loop_header595:                             ; preds = %polly.loop_exit603, %polly.start507
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit603 ], [ 0, %polly.start507 ]
  %polly.indvar598 = phi i64 [ %polly.indvar_next599, %polly.loop_exit603 ], [ 1, %polly.start507 ]
  %216 = add i64 %indvar, 1
  %217 = mul nuw nsw i64 %polly.indvar598, 9600
  %scevgep607 = getelementptr i8, i8* %call, i64 %217
  %min.iters.check1214 = icmp ult i64 %216, 4
  br i1 %min.iters.check1214, label %polly.loop_header601.preheader, label %vector.ph1215

vector.ph1215:                                    ; preds = %polly.loop_header595
  %n.vec1217 = and i64 %216, -4
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.body1213, %vector.ph1215
  %index1218 = phi i64 [ 0, %vector.ph1215 ], [ %index.next1219, %vector.body1213 ]
  %218 = shl nuw nsw i64 %index1218, 3
  %219 = getelementptr i8, i8* %scevgep607, i64 %218
  %220 = bitcast i8* %219 to <4 x double>*
  %wide.load1222 = load <4 x double>, <4 x double>* %220, align 8, !alias.scope !104, !noalias !106
  %221 = fmul fast <4 x double> %wide.load1222, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %222 = bitcast i8* %219 to <4 x double>*
  store <4 x double> %221, <4 x double>* %222, align 8, !alias.scope !104, !noalias !106
  %index.next1219 = add i64 %index1218, 4
  %223 = icmp eq i64 %index.next1219, %n.vec1217
  br i1 %223, label %middle.block1211, label %vector.body1213, !llvm.loop !111

middle.block1211:                                 ; preds = %vector.body1213
  %cmp.n1221 = icmp eq i64 %216, %n.vec1217
  br i1 %cmp.n1221, label %polly.loop_exit603, label %polly.loop_header601.preheader

polly.loop_header601.preheader:                   ; preds = %polly.loop_header595, %middle.block1211
  %polly.indvar604.ph = phi i64 [ 0, %polly.loop_header595 ], [ %n.vec1217, %middle.block1211 ]
  br label %polly.loop_header601

polly.loop_exit603:                               ; preds = %polly.loop_header601, %middle.block1211
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next599, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1094.not, label %polly.loop_header611.preheader, label %polly.loop_header595

polly.loop_header611.preheader:                   ; preds = %polly.loop_exit603
  %Packed_MemRef_call1510 = bitcast i8* %malloccall509 to double*
  %Packed_MemRef_call2512 = bitcast i8* %malloccall511 to double*
  br label %polly.loop_header611

polly.loop_header601:                             ; preds = %polly.loop_header601.preheader, %polly.loop_header601
  %polly.indvar604 = phi i64 [ %polly.indvar_next605, %polly.loop_header601 ], [ %polly.indvar604.ph, %polly.loop_header601.preheader ]
  %224 = shl nuw nsw i64 %polly.indvar604, 3
  %scevgep608 = getelementptr i8, i8* %scevgep607, i64 %224
  %scevgep608609 = bitcast i8* %scevgep608 to double*
  %_p_scalar_610 = load double, double* %scevgep608609, align 8, !alias.scope !104, !noalias !106
  %p_mul.i = fmul fast double %_p_scalar_610, 1.200000e+00
  store double %p_mul.i, double* %scevgep608609, align 8, !alias.scope !104, !noalias !106
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next605, %polly.indvar598
  br i1 %exitcond1093.not, label %polly.loop_exit603, label %polly.loop_header601, !llvm.loop !112

polly.loop_header611:                             ; preds = %polly.loop_header611.preheader, %polly.loop_exit619
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 0, %polly.loop_header611.preheader ]
  %polly.access.mul.Packed_MemRef_call2512 = mul nuw nsw i64 %polly.indvar614, 1200
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next615, 1000
  br i1 %exitcond1092.not, label %polly.loop_header627, label %polly.loop_header611

polly.loop_header617:                             ; preds = %polly.loop_header617, %polly.loop_header611
  %polly.indvar620 = phi i64 [ 0, %polly.loop_header611 ], [ %polly.indvar_next621, %polly.loop_header617 ]
  %polly.access.mul.call2624 = mul nuw nsw i64 %polly.indvar620, 1000
  %polly.access.add.call2625 = add nuw nsw i64 %polly.access.mul.call2624, %polly.indvar614
  %polly.access.call2626 = getelementptr double, double* %polly.access.cast.call2728, i64 %polly.access.add.call2625
  %polly.access.call2626.load = load double, double* %polly.access.call2626, align 8, !alias.scope !108, !noalias !113
  %polly.access.add.Packed_MemRef_call2512 = add nuw nsw i64 %polly.indvar620, %polly.access.mul.Packed_MemRef_call2512
  %polly.access.Packed_MemRef_call2512 = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512
  store double %polly.access.call2626.load, double* %polly.access.Packed_MemRef_call2512, align 8
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next621, 1200
  br i1 %exitcond1091.not, label %polly.loop_exit619, label %polly.loop_header617

polly.loop_header627:                             ; preds = %polly.loop_exit619, %polly.loop_exit635
  %indvars.iv1075 = phi i64 [ %indvars.iv.next1076, %polly.loop_exit635 ], [ 0, %polly.loop_exit619 ]
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_exit619 ]
  %225 = shl nuw nsw i64 %polly.indvar630, 3
  %226 = mul nuw nsw i64 %polly.indvar630, 76800
  %227 = or i64 %226, 8
  %228 = shl nuw nsw i64 %polly.indvar630, 3
  %229 = lshr i64 %polly.indvar630, 2
  %230 = shl nsw i64 %polly.indvar630, 3
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit642
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %indvars.iv.next1076 = add nuw nsw i64 %indvars.iv1075, 8
  %exitcond1090.not = icmp eq i64 %polly.indvar_next631, 150
  br i1 %exitcond1090.not, label %polly.exiting508, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit642, %polly.loop_header627
  %polly.indvar636 = phi i64 [ 0, %polly.loop_header627 ], [ %polly.indvar_next637, %polly.loop_exit642 ]
  %231 = mul nuw nsw i64 %polly.indvar636, 20
  br label %polly.loop_header640

polly.loop_exit642:                               ; preds = %polly.loop_exit648
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next637, 50
  br i1 %exitcond1089.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header640:                             ; preds = %polly.loop_exit648, %polly.loop_header633
  %indvars.iv1077 = phi i64 [ %indvars.iv.next1078, %polly.loop_exit648 ], [ %indvars.iv1075, %polly.loop_header633 ]
  %polly.indvar643 = phi i64 [ %polly.indvar_next644, %polly.loop_exit648 ], [ 0, %polly.loop_header633 ]
  %232 = mul nsw i64 %polly.indvar643, -32
  %233 = add i64 %225, %232
  %234 = shl nuw nsw i64 %polly.indvar643, 8
  %235 = add nuw i64 %226, %234
  %236 = add nuw i64 %227, %234
  %237 = mul nsw i64 %polly.indvar643, -32
  %238 = add i64 %228, %237
  %239 = shl nsw i64 %polly.indvar643, 5
  %240 = sub nsw i64 %230, %239
  %241 = add nuw nsw i64 %239, 32
  br label %polly.loop_header646

polly.loop_exit648:                               ; preds = %polly.loop_exit683
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %indvars.iv.next1078 = add nsw i64 %indvars.iv1077, -32
  %exitcond1088.not = icmp eq i64 %polly.indvar643, %229
  br i1 %exitcond1088.not, label %polly.loop_exit642, label %polly.loop_header640

polly.loop_header646:                             ; preds = %polly.loop_exit683, %polly.loop_header640
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit683 ], [ %indvars.iv1077, %polly.loop_header640 ]
  %polly.indvar649 = phi i64 [ %polly.indvar_next650, %polly.loop_exit683 ], [ 0, %polly.loop_header640 ]
  %242 = add i64 %233, %polly.indvar649
  %smin1237 = call i64 @llvm.smin.i64(i64 %242, i64 31)
  %243 = add nsw i64 %smin1237, 1
  %244 = mul nuw nsw i64 %polly.indvar649, 9600
  %245 = add i64 %235, %244
  %scevgep1224 = getelementptr i8, i8* %call, i64 %245
  %246 = add i64 %236, %244
  %scevgep1225 = getelementptr i8, i8* %call, i64 %246
  %247 = add i64 %238, %polly.indvar649
  %smin1226 = call i64 @llvm.smin.i64(i64 %247, i64 31)
  %248 = shl nsw i64 %smin1226, 3
  %scevgep1227 = getelementptr i8, i8* %scevgep1225, i64 %248
  %249 = add nsw i64 %248, 8
  %smin1084 = call i64 @llvm.smin.i64(i64 %indvars.iv1079, i64 31)
  %250 = add nsw i64 %polly.indvar649, %240
  %polly.loop_guard6621131 = icmp sgt i64 %250, -1
  %251 = add nuw nsw i64 %polly.indvar649, %230
  %.not921 = icmp ult i64 %251, %241
  %polly.access.mul.call1675 = mul nuw nsw i64 %251, 1000
  %252 = add nuw nsw i64 %polly.access.mul.call1675, %231
  br i1 %polly.loop_guard6621131, label %polly.loop_header652.us, label %polly.loop_header646.split

polly.loop_header652.us:                          ; preds = %polly.loop_header646, %polly.merge671.us
  %polly.indvar655.us = phi i64 [ %polly.indvar_next656.us, %polly.merge671.us ], [ 0, %polly.loop_header646 ]
  %253 = add nuw nsw i64 %polly.indvar655.us, %231
  %polly.access.mul.Packed_MemRef_call1510.us = mul nuw nsw i64 %polly.indvar655.us, 1200
  br label %polly.loop_header659.us

polly.loop_header659.us:                          ; preds = %polly.loop_header652.us, %polly.loop_header659.us
  %polly.indvar663.us = phi i64 [ %polly.indvar_next664.us, %polly.loop_header659.us ], [ 0, %polly.loop_header652.us ]
  %254 = add nuw nsw i64 %polly.indvar663.us, %239
  %polly.access.mul.call1667.us = mul nuw nsw i64 %254, 1000
  %polly.access.add.call1668.us = add nuw nsw i64 %253, %polly.access.mul.call1667.us
  %polly.access.call1669.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1668.us
  %polly.access.call1669.load.us = load double, double* %polly.access.call1669.us, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510.us = add nuw nsw i64 %polly.indvar663.us, %polly.access.mul.Packed_MemRef_call1510.us
  %polly.access.Packed_MemRef_call1510.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510.us
  store double %polly.access.call1669.load.us, double* %polly.access.Packed_MemRef_call1510.us, align 8
  %polly.indvar_next664.us = add nuw nsw i64 %polly.indvar663.us, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar663.us, %smin1084
  br i1 %exitcond1082.not, label %polly.cond670.loopexit.us, label %polly.loop_header659.us

polly.then672.us:                                 ; preds = %polly.cond670.loopexit.us
  %polly.access.add.call1676.us = add nuw nsw i64 %252, %polly.indvar655.us
  %polly.access.call1677.us = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.us
  %polly.access.call1677.load.us = load double, double* %polly.access.call1677.us, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1510.us, %250
  %polly.access.Packed_MemRef_call1510680.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.us
  store double %polly.access.call1677.load.us, double* %polly.access.Packed_MemRef_call1510680.us, align 8
  br label %polly.merge671.us

polly.merge671.us:                                ; preds = %polly.then672.us, %polly.cond670.loopexit.us
  %polly.indvar_next656.us = add nuw nsw i64 %polly.indvar655.us, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next656.us, 20
  br i1 %exitcond1083.not, label %polly.loop_header681.preheader, label %polly.loop_header652.us

polly.cond670.loopexit.us:                        ; preds = %polly.loop_header659.us
  br i1 %.not921, label %polly.merge671.us, label %polly.then672.us

polly.loop_header646.split:                       ; preds = %polly.loop_header646
  br i1 %.not921, label %polly.loop_exit683, label %polly.loop_header652.preheader

polly.loop_header652.preheader:                   ; preds = %polly.loop_header646.split
  %polly.access.call1677 = getelementptr double, double* %polly.access.cast.call1718, i64 %252
  %polly.access.call1677.load = load double, double* %polly.access.call1677, align 8, !alias.scope !107, !noalias !114
  %polly.access.Packed_MemRef_call1510680 = getelementptr double, double* %Packed_MemRef_call1510, i64 %250
  store double %polly.access.call1677.load, double* %polly.access.Packed_MemRef_call1510680, align 8
  %polly.access.add.call1676.1 = or i64 %252, 1
  %polly.access.call1677.1 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.1
  %polly.access.call1677.load.1 = load double, double* %polly.access.call1677.1, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.1 = add nsw i64 %250, 1200
  %polly.access.Packed_MemRef_call1510680.1 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.1
  store double %polly.access.call1677.load.1, double* %polly.access.Packed_MemRef_call1510680.1, align 8
  %polly.access.add.call1676.2 = or i64 %252, 2
  %polly.access.call1677.2 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.2
  %polly.access.call1677.load.2 = load double, double* %polly.access.call1677.2, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.2 = add nsw i64 %250, 2400
  %polly.access.Packed_MemRef_call1510680.2 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.2
  store double %polly.access.call1677.load.2, double* %polly.access.Packed_MemRef_call1510680.2, align 8
  %polly.access.add.call1676.3 = or i64 %252, 3
  %polly.access.call1677.3 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.3
  %polly.access.call1677.load.3 = load double, double* %polly.access.call1677.3, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.3 = add nsw i64 %250, 3600
  %polly.access.Packed_MemRef_call1510680.3 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.3
  store double %polly.access.call1677.load.3, double* %polly.access.Packed_MemRef_call1510680.3, align 8
  %polly.access.add.call1676.4 = add nuw nsw i64 %252, 4
  %polly.access.call1677.4 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.4
  %polly.access.call1677.load.4 = load double, double* %polly.access.call1677.4, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.4 = add nsw i64 %250, 4800
  %polly.access.Packed_MemRef_call1510680.4 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.4
  store double %polly.access.call1677.load.4, double* %polly.access.Packed_MemRef_call1510680.4, align 8
  %polly.access.add.call1676.5 = add nuw nsw i64 %252, 5
  %polly.access.call1677.5 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.5
  %polly.access.call1677.load.5 = load double, double* %polly.access.call1677.5, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.5 = add nsw i64 %250, 6000
  %polly.access.Packed_MemRef_call1510680.5 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.5
  store double %polly.access.call1677.load.5, double* %polly.access.Packed_MemRef_call1510680.5, align 8
  %polly.access.add.call1676.6 = add nuw nsw i64 %252, 6
  %polly.access.call1677.6 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.6
  %polly.access.call1677.load.6 = load double, double* %polly.access.call1677.6, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.6 = add nsw i64 %250, 7200
  %polly.access.Packed_MemRef_call1510680.6 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.6
  store double %polly.access.call1677.load.6, double* %polly.access.Packed_MemRef_call1510680.6, align 8
  %polly.access.add.call1676.7 = add nuw nsw i64 %252, 7
  %polly.access.call1677.7 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.7
  %polly.access.call1677.load.7 = load double, double* %polly.access.call1677.7, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.7 = add nsw i64 %250, 8400
  %polly.access.Packed_MemRef_call1510680.7 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.7
  store double %polly.access.call1677.load.7, double* %polly.access.Packed_MemRef_call1510680.7, align 8
  %polly.access.add.call1676.8 = add nuw nsw i64 %252, 8
  %polly.access.call1677.8 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.8
  %polly.access.call1677.load.8 = load double, double* %polly.access.call1677.8, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.8 = add nsw i64 %250, 9600
  %polly.access.Packed_MemRef_call1510680.8 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.8
  store double %polly.access.call1677.load.8, double* %polly.access.Packed_MemRef_call1510680.8, align 8
  %polly.access.add.call1676.9 = add nuw nsw i64 %252, 9
  %polly.access.call1677.9 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.9
  %polly.access.call1677.load.9 = load double, double* %polly.access.call1677.9, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.9 = add nsw i64 %250, 10800
  %polly.access.Packed_MemRef_call1510680.9 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.9
  store double %polly.access.call1677.load.9, double* %polly.access.Packed_MemRef_call1510680.9, align 8
  %polly.access.add.call1676.10 = add nuw nsw i64 %252, 10
  %polly.access.call1677.10 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.10
  %polly.access.call1677.load.10 = load double, double* %polly.access.call1677.10, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.10 = add nsw i64 %250, 12000
  %polly.access.Packed_MemRef_call1510680.10 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.10
  store double %polly.access.call1677.load.10, double* %polly.access.Packed_MemRef_call1510680.10, align 8
  %polly.access.add.call1676.11 = add nuw nsw i64 %252, 11
  %polly.access.call1677.11 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.11
  %polly.access.call1677.load.11 = load double, double* %polly.access.call1677.11, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.11 = add nsw i64 %250, 13200
  %polly.access.Packed_MemRef_call1510680.11 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.11
  store double %polly.access.call1677.load.11, double* %polly.access.Packed_MemRef_call1510680.11, align 8
  %polly.access.add.call1676.12 = add nuw nsw i64 %252, 12
  %polly.access.call1677.12 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.12
  %polly.access.call1677.load.12 = load double, double* %polly.access.call1677.12, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.12 = add nsw i64 %250, 14400
  %polly.access.Packed_MemRef_call1510680.12 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.12
  store double %polly.access.call1677.load.12, double* %polly.access.Packed_MemRef_call1510680.12, align 8
  %polly.access.add.call1676.13 = add nuw nsw i64 %252, 13
  %polly.access.call1677.13 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.13
  %polly.access.call1677.load.13 = load double, double* %polly.access.call1677.13, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.13 = add nsw i64 %250, 15600
  %polly.access.Packed_MemRef_call1510680.13 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.13
  store double %polly.access.call1677.load.13, double* %polly.access.Packed_MemRef_call1510680.13, align 8
  %polly.access.add.call1676.14 = add nuw nsw i64 %252, 14
  %polly.access.call1677.14 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.14
  %polly.access.call1677.load.14 = load double, double* %polly.access.call1677.14, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.14 = add nsw i64 %250, 16800
  %polly.access.Packed_MemRef_call1510680.14 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.14
  store double %polly.access.call1677.load.14, double* %polly.access.Packed_MemRef_call1510680.14, align 8
  %polly.access.add.call1676.15 = add nuw nsw i64 %252, 15
  %polly.access.call1677.15 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.15
  %polly.access.call1677.load.15 = load double, double* %polly.access.call1677.15, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.15 = add nsw i64 %250, 18000
  %polly.access.Packed_MemRef_call1510680.15 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.15
  store double %polly.access.call1677.load.15, double* %polly.access.Packed_MemRef_call1510680.15, align 8
  %polly.access.add.call1676.16 = add nuw nsw i64 %252, 16
  %polly.access.call1677.16 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.16
  %polly.access.call1677.load.16 = load double, double* %polly.access.call1677.16, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.16 = add nsw i64 %250, 19200
  %polly.access.Packed_MemRef_call1510680.16 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.16
  store double %polly.access.call1677.load.16, double* %polly.access.Packed_MemRef_call1510680.16, align 8
  %polly.access.add.call1676.17 = add nuw nsw i64 %252, 17
  %polly.access.call1677.17 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.17
  %polly.access.call1677.load.17 = load double, double* %polly.access.call1677.17, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.17 = add nsw i64 %250, 20400
  %polly.access.Packed_MemRef_call1510680.17 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.17
  store double %polly.access.call1677.load.17, double* %polly.access.Packed_MemRef_call1510680.17, align 8
  %polly.access.add.call1676.18 = add nuw nsw i64 %252, 18
  %polly.access.call1677.18 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.18
  %polly.access.call1677.load.18 = load double, double* %polly.access.call1677.18, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.18 = add nsw i64 %250, 21600
  %polly.access.Packed_MemRef_call1510680.18 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.18
  store double %polly.access.call1677.load.18, double* %polly.access.Packed_MemRef_call1510680.18, align 8
  %polly.access.add.call1676.19 = add nuw nsw i64 %252, 19
  %polly.access.call1677.19 = getelementptr double, double* %polly.access.cast.call1718, i64 %polly.access.add.call1676.19
  %polly.access.call1677.load.19 = load double, double* %polly.access.call1677.19, align 8, !alias.scope !107, !noalias !114
  %polly.access.add.Packed_MemRef_call1510679.19 = add nsw i64 %250, 22800
  %polly.access.Packed_MemRef_call1510680.19 = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510679.19
  store double %polly.access.call1677.load.19, double* %polly.access.Packed_MemRef_call1510680.19, align 8
  br label %polly.loop_exit683

polly.loop_exit683:                               ; preds = %polly.loop_exit690.loopexit.us, %polly.loop_header646.split, %polly.loop_header652.preheader, %polly.loop_header681.preheader
  %polly.indvar_next650 = add nuw nsw i64 %polly.indvar649, 1
  %indvars.iv.next1080 = add nsw i64 %indvars.iv1079, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next650, 8
  br i1 %exitcond1087.not, label %polly.loop_exit648, label %polly.loop_header646

polly.loop_header681.preheader:                   ; preds = %polly.merge671.us
  %255 = mul nuw nsw i64 %251, 9600
  br i1 %polly.loop_guard6621131, label %polly.loop_header681.us, label %polly.loop_exit683

polly.loop_header681.us:                          ; preds = %polly.loop_header681.preheader, %polly.loop_exit690.loopexit.us
  %polly.indvar684.us = phi i64 [ %polly.indvar_next685.us, %polly.loop_exit690.loopexit.us ], [ 0, %polly.loop_header681.preheader ]
  %256 = mul nuw nsw i64 %polly.indvar684.us, 9600
  %polly.access.mul.Packed_MemRef_call1510695.us = mul nuw nsw i64 %polly.indvar684.us, 1200
  %257 = add nuw nsw i64 %polly.indvar684.us, %231
  %polly.access.mul.Packed_MemRef_call2512699.us = mul nuw nsw i64 %257, 1200
  %polly.access.add.Packed_MemRef_call2512700.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2512699.us, %251
  %polly.access.Packed_MemRef_call2512701.us = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512700.us
  %_p_scalar_702.us = load double, double* %polly.access.Packed_MemRef_call2512701.us, align 8
  %polly.access.add.Packed_MemRef_call1510708.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1510695.us, %250
  %polly.access.Packed_MemRef_call1510709.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510708.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call1510709.us, align 8
  %min.iters.check1238 = icmp ult i64 %243, 4
  br i1 %min.iters.check1238, label %polly.loop_header688.us.preheader, label %vector.memcheck1223

vector.memcheck1223:                              ; preds = %polly.loop_header681.us
  %258 = add i64 %249, %256
  %scevgep1229 = getelementptr i8, i8* %malloccall509, i64 %258
  %scevgep1228 = getelementptr i8, i8* %malloccall509, i64 %256
  %bound01230 = icmp ult i8* %scevgep1224, %scevgep1229
  %bound11231 = icmp ult i8* %scevgep1228, %scevgep1227
  %found.conflict1232 = and i1 %bound01230, %bound11231
  br i1 %found.conflict1232, label %polly.loop_header688.us.preheader, label %vector.ph1239

vector.ph1239:                                    ; preds = %vector.memcheck1223
  %n.vec1241 = and i64 %243, -4
  %broadcast.splatinsert1247 = insertelement <4 x double> poison, double %_p_scalar_702.us, i32 0
  %broadcast.splat1248 = shufflevector <4 x double> %broadcast.splatinsert1247, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1250 = insertelement <4 x double> poison, double %_p_scalar_710.us, i32 0
  %broadcast.splat1251 = shufflevector <4 x double> %broadcast.splatinsert1250, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %vector.ph1239
  %index1242 = phi i64 [ 0, %vector.ph1239 ], [ %index.next1243, %vector.body1236 ]
  %259 = add nuw nsw i64 %index1242, %239
  %260 = add nuw nsw i64 %index1242, %polly.access.mul.Packed_MemRef_call1510695.us
  %261 = getelementptr double, double* %Packed_MemRef_call1510, i64 %260
  %262 = bitcast double* %261 to <4 x double>*
  %wide.load1246 = load <4 x double>, <4 x double>* %262, align 8, !alias.scope !115
  %263 = fmul fast <4 x double> %broadcast.splat1248, %wide.load1246
  %264 = add nuw nsw i64 %259, %polly.access.mul.Packed_MemRef_call2512699.us
  %265 = getelementptr double, double* %Packed_MemRef_call2512, i64 %264
  %266 = bitcast double* %265 to <4 x double>*
  %wide.load1249 = load <4 x double>, <4 x double>* %266, align 8
  %267 = fmul fast <4 x double> %broadcast.splat1251, %wide.load1249
  %268 = shl i64 %259, 3
  %269 = add nuw nsw i64 %268, %255
  %270 = getelementptr i8, i8* %call, i64 %269
  %271 = bitcast i8* %270 to <4 x double>*
  %wide.load1252 = load <4 x double>, <4 x double>* %271, align 8, !alias.scope !118, !noalias !120
  %272 = fadd fast <4 x double> %267, %263
  %273 = fmul fast <4 x double> %272, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %274 = fadd fast <4 x double> %273, %wide.load1252
  %275 = bitcast i8* %270 to <4 x double>*
  store <4 x double> %274, <4 x double>* %275, align 8, !alias.scope !118, !noalias !120
  %index.next1243 = add i64 %index1242, 4
  %276 = icmp eq i64 %index.next1243, %n.vec1241
  br i1 %276, label %middle.block1234, label %vector.body1236, !llvm.loop !121

middle.block1234:                                 ; preds = %vector.body1236
  %cmp.n1245 = icmp eq i64 %243, %n.vec1241
  br i1 %cmp.n1245, label %polly.loop_exit690.loopexit.us, label %polly.loop_header688.us.preheader

polly.loop_header688.us.preheader:                ; preds = %vector.memcheck1223, %polly.loop_header681.us, %middle.block1234
  %polly.indvar692.us.ph = phi i64 [ 0, %vector.memcheck1223 ], [ 0, %polly.loop_header681.us ], [ %n.vec1241, %middle.block1234 ]
  br label %polly.loop_header688.us

polly.loop_header688.us:                          ; preds = %polly.loop_header688.us.preheader, %polly.loop_header688.us
  %polly.indvar692.us = phi i64 [ %polly.indvar_next693.us, %polly.loop_header688.us ], [ %polly.indvar692.us.ph, %polly.loop_header688.us.preheader ]
  %277 = add nuw nsw i64 %polly.indvar692.us, %239
  %polly.access.add.Packed_MemRef_call1510696.us = add nuw nsw i64 %polly.indvar692.us, %polly.access.mul.Packed_MemRef_call1510695.us
  %polly.access.Packed_MemRef_call1510697.us = getelementptr double, double* %Packed_MemRef_call1510, i64 %polly.access.add.Packed_MemRef_call1510696.us
  %_p_scalar_698.us = load double, double* %polly.access.Packed_MemRef_call1510697.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_702.us, %_p_scalar_698.us
  %polly.access.add.Packed_MemRef_call2512704.us = add nuw nsw i64 %277, %polly.access.mul.Packed_MemRef_call2512699.us
  %polly.access.Packed_MemRef_call2512705.us = getelementptr double, double* %Packed_MemRef_call2512, i64 %polly.access.add.Packed_MemRef_call2512704.us
  %_p_scalar_706.us = load double, double* %polly.access.Packed_MemRef_call2512705.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_710.us, %_p_scalar_706.us
  %278 = shl i64 %277, 3
  %279 = add nuw nsw i64 %278, %255
  %scevgep711.us = getelementptr i8, i8* %call, i64 %279
  %scevgep711712.us = bitcast i8* %scevgep711.us to double*
  %_p_scalar_713.us = load double, double* %scevgep711712.us, align 8, !alias.scope !104, !noalias !106
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_713.us
  store double %p_add42.i.us, double* %scevgep711712.us, align 8, !alias.scope !104, !noalias !106
  %polly.indvar_next693.us = add nuw nsw i64 %polly.indvar692.us, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar692.us, %smin1084
  br i1 %exitcond1085.not, label %polly.loop_exit690.loopexit.us, label %polly.loop_header688.us, !llvm.loop !122

polly.loop_exit690.loopexit.us:                   ; preds = %polly.loop_header688.us, %middle.block1234
  %polly.indvar_next685.us = add nuw nsw i64 %polly.indvar684.us, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar_next685.us, 20
  br i1 %exitcond1086.not, label %polly.loop_exit683, label %polly.loop_header681.us

polly.loop_header840:                             ; preds = %entry, %polly.loop_exit848
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %polly.loop_exit848 ], [ 0, %entry ]
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_exit848 ], [ 0, %entry ]
  %smin1121 = call i64 @llvm.smin.i64(i64 %indvars.iv1119, i64 -1168)
  %280 = shl nsw i64 %polly.indvar843, 5
  %281 = add nsw i64 %smin1121, 1199
  br label %polly.loop_header846

polly.loop_exit848:                               ; preds = %polly.loop_exit854
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %indvars.iv.next1120 = add nsw i64 %indvars.iv1119, -32
  %exitcond1124.not = icmp eq i64 %polly.indvar_next844, 38
  br i1 %exitcond1124.not, label %polly.loop_header867, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_exit854, %polly.loop_header840
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %282 = mul nsw i64 %polly.indvar849, -32
  %smin = call i64 @llvm.smin.i64(i64 %282, i64 -1168)
  %283 = add nsw i64 %smin, 1200
  %smin1117 = call i64 @llvm.smin.i64(i64 %indvars.iv1115, i64 -1168)
  %284 = shl nsw i64 %polly.indvar849, 5
  %285 = add nsw i64 %smin1117, 1199
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1116 = add nsw i64 %indvars.iv1115, -32
  %exitcond1123.not = icmp eq i64 %polly.indvar_next850, 38
  br i1 %exitcond1123.not, label %polly.loop_exit848, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %polly.indvar855 = phi i64 [ 0, %polly.loop_header846 ], [ %polly.indvar_next856, %polly.loop_exit860 ]
  %286 = add nuw nsw i64 %polly.indvar855, %280
  %287 = trunc i64 %286 to i32
  %288 = mul nuw nsw i64 %286, 9600
  %min.iters.check = icmp eq i64 %283, 0
  br i1 %min.iters.check, label %polly.loop_header858, label %vector.ph1153

vector.ph1153:                                    ; preds = %polly.loop_header852
  %broadcast.splatinsert1160 = insertelement <4 x i64> poison, i64 %284, i32 0
  %broadcast.splat1161 = shufflevector <4 x i64> %broadcast.splatinsert1160, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1162 = insertelement <4 x i32> poison, i32 %287, i32 0
  %broadcast.splat1163 = shufflevector <4 x i32> %broadcast.splatinsert1162, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %vector.ph1153
  %index1154 = phi i64 [ 0, %vector.ph1153 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1158 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1153 ], [ %vec.ind.next1159, %vector.body1152 ]
  %289 = add nuw nsw <4 x i64> %vec.ind1158, %broadcast.splat1161
  %290 = trunc <4 x i64> %289 to <4 x i32>
  %291 = mul <4 x i32> %broadcast.splat1163, %290
  %292 = add <4 x i32> %291, <i32 3, i32 3, i32 3, i32 3>
  %293 = urem <4 x i32> %292, <i32 1200, i32 1200, i32 1200, i32 1200>
  %294 = sitofp <4 x i32> %293 to <4 x double>
  %295 = fmul fast <4 x double> %294, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %296 = extractelement <4 x i64> %289, i32 0
  %297 = shl i64 %296, 3
  %298 = add nuw nsw i64 %297, %288
  %299 = getelementptr i8, i8* %call, i64 %298
  %300 = bitcast i8* %299 to <4 x double>*
  store <4 x double> %295, <4 x double>* %300, align 8, !alias.scope !123, !noalias !125
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1159 = add <4 x i64> %vec.ind1158, <i64 4, i64 4, i64 4, i64 4>
  %301 = icmp eq i64 %index.next1155, %283
  br i1 %301, label %polly.loop_exit860, label %vector.body1152, !llvm.loop !128

polly.loop_exit860:                               ; preds = %vector.body1152, %polly.loop_header858
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar855, %281
  br i1 %exitcond1122.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_header852, %polly.loop_header858
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_header858 ], [ 0, %polly.loop_header852 ]
  %302 = add nuw nsw i64 %polly.indvar861, %284
  %303 = trunc i64 %302 to i32
  %304 = mul i32 %303, %287
  %305 = add i32 %304, 3
  %306 = urem i32 %305, 1200
  %p_conv31.i = sitofp i32 %306 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %307 = shl i64 %302, 3
  %308 = add nuw nsw i64 %307, %288
  %scevgep864 = getelementptr i8, i8* %call, i64 %308
  %scevgep864865 = bitcast i8* %scevgep864 to double*
  store double %p_div33.i, double* %scevgep864865, align 8, !alias.scope !123, !noalias !125
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar861, %285
  br i1 %exitcond1118.not, label %polly.loop_exit860, label %polly.loop_header858, !llvm.loop !129

polly.loop_header867:                             ; preds = %polly.loop_exit848, %polly.loop_exit875
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110, %polly.loop_exit875 ], [ 0, %polly.loop_exit848 ]
  %polly.indvar870 = phi i64 [ %polly.indvar_next871, %polly.loop_exit875 ], [ 0, %polly.loop_exit848 ]
  %smin1111 = call i64 @llvm.smin.i64(i64 %indvars.iv1109, i64 -1168)
  %309 = shl nsw i64 %polly.indvar870, 5
  %310 = add nsw i64 %smin1111, 1199
  br label %polly.loop_header873

polly.loop_exit875:                               ; preds = %polly.loop_exit881
  %polly.indvar_next871 = add nuw nsw i64 %polly.indvar870, 1
  %indvars.iv.next1110 = add nsw i64 %indvars.iv1109, -32
  %exitcond1114.not = icmp eq i64 %polly.indvar_next871, 38
  br i1 %exitcond1114.not, label %polly.loop_header893, label %polly.loop_header867

polly.loop_header873:                             ; preds = %polly.loop_exit881, %polly.loop_header867
  %indvars.iv1105 = phi i64 [ %indvars.iv.next1106, %polly.loop_exit881 ], [ 0, %polly.loop_header867 ]
  %polly.indvar876 = phi i64 [ %polly.indvar_next877, %polly.loop_exit881 ], [ 0, %polly.loop_header867 ]
  %311 = mul nsw i64 %polly.indvar876, -32
  %smin1167 = call i64 @llvm.smin.i64(i64 %311, i64 -968)
  %312 = add nsw i64 %smin1167, 1000
  %smin1107 = call i64 @llvm.smin.i64(i64 %indvars.iv1105, i64 -968)
  %313 = shl nsw i64 %polly.indvar876, 5
  %314 = add nsw i64 %smin1107, 999
  br label %polly.loop_header879

polly.loop_exit881:                               ; preds = %polly.loop_exit887
  %polly.indvar_next877 = add nuw nsw i64 %polly.indvar876, 1
  %indvars.iv.next1106 = add nsw i64 %indvars.iv1105, -32
  %exitcond1113.not = icmp eq i64 %polly.indvar_next877, 32
  br i1 %exitcond1113.not, label %polly.loop_exit875, label %polly.loop_header873

polly.loop_header879:                             ; preds = %polly.loop_exit887, %polly.loop_header873
  %polly.indvar882 = phi i64 [ 0, %polly.loop_header873 ], [ %polly.indvar_next883, %polly.loop_exit887 ]
  %315 = add nuw nsw i64 %polly.indvar882, %309
  %316 = trunc i64 %315 to i32
  %317 = mul nuw nsw i64 %315, 8000
  %min.iters.check1168 = icmp eq i64 %312, 0
  br i1 %min.iters.check1168, label %polly.loop_header885, label %vector.ph1169

vector.ph1169:                                    ; preds = %polly.loop_header879
  %broadcast.splatinsert1178 = insertelement <4 x i64> poison, i64 %313, i32 0
  %broadcast.splat1179 = shufflevector <4 x i64> %broadcast.splatinsert1178, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1180 = insertelement <4 x i32> poison, i32 %316, i32 0
  %broadcast.splat1181 = shufflevector <4 x i32> %broadcast.splatinsert1180, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %vector.ph1169
  %index1172 = phi i64 [ 0, %vector.ph1169 ], [ %index.next1173, %vector.body1166 ]
  %vec.ind1176 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1169 ], [ %vec.ind.next1177, %vector.body1166 ]
  %318 = add nuw nsw <4 x i64> %vec.ind1176, %broadcast.splat1179
  %319 = trunc <4 x i64> %318 to <4 x i32>
  %320 = mul <4 x i32> %broadcast.splat1181, %319
  %321 = add <4 x i32> %320, <i32 2, i32 2, i32 2, i32 2>
  %322 = urem <4 x i32> %321, <i32 1000, i32 1000, i32 1000, i32 1000>
  %323 = sitofp <4 x i32> %322 to <4 x double>
  %324 = fmul fast <4 x double> %323, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %325 = extractelement <4 x i64> %318, i32 0
  %326 = shl i64 %325, 3
  %327 = add nuw nsw i64 %326, %317
  %328 = getelementptr i8, i8* %call2, i64 %327
  %329 = bitcast i8* %328 to <4 x double>*
  store <4 x double> %324, <4 x double>* %329, align 8, !alias.scope !127, !noalias !130
  %index.next1173 = add i64 %index1172, 4
  %vec.ind.next1177 = add <4 x i64> %vec.ind1176, <i64 4, i64 4, i64 4, i64 4>
  %330 = icmp eq i64 %index.next1173, %312
  br i1 %330, label %polly.loop_exit887, label %vector.body1166, !llvm.loop !131

polly.loop_exit887:                               ; preds = %vector.body1166, %polly.loop_header885
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar882, %310
  br i1 %exitcond1112.not, label %polly.loop_exit881, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_header879, %polly.loop_header885
  %polly.indvar888 = phi i64 [ %polly.indvar_next889, %polly.loop_header885 ], [ 0, %polly.loop_header879 ]
  %331 = add nuw nsw i64 %polly.indvar888, %313
  %332 = trunc i64 %331 to i32
  %333 = mul i32 %332, %316
  %334 = add i32 %333, 2
  %335 = urem i32 %334, 1000
  %p_conv10.i = sitofp i32 %335 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %336 = shl i64 %331, 3
  %337 = add nuw nsw i64 %336, %317
  %scevgep891 = getelementptr i8, i8* %call2, i64 %337
  %scevgep891892 = bitcast i8* %scevgep891 to double*
  store double %p_div12.i, double* %scevgep891892, align 8, !alias.scope !127, !noalias !130
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar888, %314
  br i1 %exitcond1108.not, label %polly.loop_exit887, label %polly.loop_header885, !llvm.loop !132

polly.loop_header893:                             ; preds = %polly.loop_exit875, %polly.loop_exit901
  %indvars.iv1099 = phi i64 [ %indvars.iv.next1100, %polly.loop_exit901 ], [ 0, %polly.loop_exit875 ]
  %polly.indvar896 = phi i64 [ %polly.indvar_next897, %polly.loop_exit901 ], [ 0, %polly.loop_exit875 ]
  %smin1101 = call i64 @llvm.smin.i64(i64 %indvars.iv1099, i64 -1168)
  %338 = shl nsw i64 %polly.indvar896, 5
  %339 = add nsw i64 %smin1101, 1199
  br label %polly.loop_header899

polly.loop_exit901:                               ; preds = %polly.loop_exit907
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %indvars.iv.next1100 = add nsw i64 %indvars.iv1099, -32
  %exitcond1104.not = icmp eq i64 %polly.indvar_next897, 38
  br i1 %exitcond1104.not, label %init_array.exit, label %polly.loop_header893

polly.loop_header899:                             ; preds = %polly.loop_exit907, %polly.loop_header893
  %indvars.iv1095 = phi i64 [ %indvars.iv.next1096, %polly.loop_exit907 ], [ 0, %polly.loop_header893 ]
  %polly.indvar902 = phi i64 [ %polly.indvar_next903, %polly.loop_exit907 ], [ 0, %polly.loop_header893 ]
  %340 = mul nsw i64 %polly.indvar902, -32
  %smin1185 = call i64 @llvm.smin.i64(i64 %340, i64 -968)
  %341 = add nsw i64 %smin1185, 1000
  %smin1097 = call i64 @llvm.smin.i64(i64 %indvars.iv1095, i64 -968)
  %342 = shl nsw i64 %polly.indvar902, 5
  %343 = add nsw i64 %smin1097, 999
  br label %polly.loop_header905

polly.loop_exit907:                               ; preds = %polly.loop_exit913
  %polly.indvar_next903 = add nuw nsw i64 %polly.indvar902, 1
  %indvars.iv.next1096 = add nsw i64 %indvars.iv1095, -32
  %exitcond1103.not = icmp eq i64 %polly.indvar_next903, 32
  br i1 %exitcond1103.not, label %polly.loop_exit901, label %polly.loop_header899

polly.loop_header905:                             ; preds = %polly.loop_exit913, %polly.loop_header899
  %polly.indvar908 = phi i64 [ 0, %polly.loop_header899 ], [ %polly.indvar_next909, %polly.loop_exit913 ]
  %344 = add nuw nsw i64 %polly.indvar908, %338
  %345 = trunc i64 %344 to i32
  %346 = mul nuw nsw i64 %344, 8000
  %min.iters.check1186 = icmp eq i64 %341, 0
  br i1 %min.iters.check1186, label %polly.loop_header911, label %vector.ph1187

vector.ph1187:                                    ; preds = %polly.loop_header905
  %broadcast.splatinsert1196 = insertelement <4 x i64> poison, i64 %342, i32 0
  %broadcast.splat1197 = shufflevector <4 x i64> %broadcast.splatinsert1196, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1198 = insertelement <4 x i32> poison, i32 %345, i32 0
  %broadcast.splat1199 = shufflevector <4 x i32> %broadcast.splatinsert1198, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %vector.ph1187
  %index1190 = phi i64 [ 0, %vector.ph1187 ], [ %index.next1191, %vector.body1184 ]
  %vec.ind1194 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1187 ], [ %vec.ind.next1195, %vector.body1184 ]
  %347 = add nuw nsw <4 x i64> %vec.ind1194, %broadcast.splat1197
  %348 = trunc <4 x i64> %347 to <4 x i32>
  %349 = mul <4 x i32> %broadcast.splat1199, %348
  %350 = add <4 x i32> %349, <i32 1, i32 1, i32 1, i32 1>
  %351 = urem <4 x i32> %350, <i32 1200, i32 1200, i32 1200, i32 1200>
  %352 = sitofp <4 x i32> %351 to <4 x double>
  %353 = fmul fast <4 x double> %352, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %354 = extractelement <4 x i64> %347, i32 0
  %355 = shl i64 %354, 3
  %356 = add nuw nsw i64 %355, %346
  %357 = getelementptr i8, i8* %call1, i64 %356
  %358 = bitcast i8* %357 to <4 x double>*
  store <4 x double> %353, <4 x double>* %358, align 8, !alias.scope !126, !noalias !133
  %index.next1191 = add i64 %index1190, 4
  %vec.ind.next1195 = add <4 x i64> %vec.ind1194, <i64 4, i64 4, i64 4, i64 4>
  %359 = icmp eq i64 %index.next1191, %341
  br i1 %359, label %polly.loop_exit913, label %vector.body1184, !llvm.loop !134

polly.loop_exit913:                               ; preds = %vector.body1184, %polly.loop_header911
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar908, %339
  br i1 %exitcond1102.not, label %polly.loop_exit907, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_header905, %polly.loop_header911
  %polly.indvar914 = phi i64 [ %polly.indvar_next915, %polly.loop_header911 ], [ 0, %polly.loop_header905 ]
  %360 = add nuw nsw i64 %polly.indvar914, %342
  %361 = trunc i64 %360 to i32
  %362 = mul i32 %361, %345
  %363 = add i32 %362, 1
  %364 = urem i32 %363, 1200
  %p_conv.i = sitofp i32 %364 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %365 = shl i64 %360, 3
  %366 = add nuw nsw i64 %365, %346
  %scevgep918 = getelementptr i8, i8* %call1, i64 %366
  %scevgep918919 = bitcast i8* %scevgep918 to double*
  store double %p_div.i, double* %scevgep918919, align 8, !alias.scope !126, !noalias !133
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar914, %343
  br i1 %exitcond1098.not, label %polly.loop_exit913, label %polly.loop_header911, !llvm.loop !135
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
!26 = !{!"llvm.loop.tile.size", i32 32}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 20}
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
!49 = !{!"llvm.loop.tile.size", i32 8}
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
!77 = !{!78}
!78 = distinct !{!78, !79}
!79 = distinct !{!79, !"LVerDomain"}
!80 = !{!65, !66, !"polly.alias.scope.MemRef_call", !81}
!81 = distinct !{!81, !79}
!82 = !{!68, !69, !70, !71, !78}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !86, !"polly.alias.scope.MemRef_call"}
!86 = distinct !{!86, !"polly.alias.scope.domain"}
!87 = !{!88, !89, !90, !91}
!88 = distinct !{!88, !86, !"polly.alias.scope.MemRef_call1"}
!89 = distinct !{!89, !86, !"polly.alias.scope.MemRef_call2"}
!90 = distinct !{!90, !86, !"polly.alias.scope.Packed_MemRef_call1"}
!91 = distinct !{!91, !86, !"polly.alias.scope.Packed_MemRef_call2"}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !74, !13}
!94 = !{!85, !88, !90, !91}
!95 = !{!85, !89, !90, !91}
!96 = !{!97}
!97 = distinct !{!97, !98}
!98 = distinct !{!98, !"LVerDomain"}
!99 = !{!85, !86, !"polly.alias.scope.MemRef_call", !100}
!100 = distinct !{!100, !98}
!101 = !{!88, !89, !90, !91, !97}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !105, !"polly.alias.scope.MemRef_call"}
!105 = distinct !{!105, !"polly.alias.scope.domain"}
!106 = !{!107, !108, !109, !110}
!107 = distinct !{!107, !105, !"polly.alias.scope.MemRef_call1"}
!108 = distinct !{!108, !105, !"polly.alias.scope.MemRef_call2"}
!109 = distinct !{!109, !105, !"polly.alias.scope.Packed_MemRef_call1"}
!110 = distinct !{!110, !105, !"polly.alias.scope.Packed_MemRef_call2"}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !74, !13}
!113 = !{!104, !107, !109, !110}
!114 = !{!104, !108, !109, !110}
!115 = !{!116}
!116 = distinct !{!116, !117}
!117 = distinct !{!117, !"LVerDomain"}
!118 = !{!104, !105, !"polly.alias.scope.MemRef_call", !119}
!119 = distinct !{!119, !117}
!120 = !{!107, !108, !109, !110, !116}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !124, !"polly.alias.scope.MemRef_call"}
!124 = distinct !{!124, !"polly.alias.scope.domain"}
!125 = !{!126, !127}
!126 = distinct !{!126, !124, !"polly.alias.scope.MemRef_call1"}
!127 = distinct !{!127, !124, !"polly.alias.scope.MemRef_call2"}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !74, !13}
!130 = !{!126, !123}
!131 = distinct !{!131, !13}
!132 = distinct !{!132, !74, !13}
!133 = !{!127, !123}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !74, !13}
