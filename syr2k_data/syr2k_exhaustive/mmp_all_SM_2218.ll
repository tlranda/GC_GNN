; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2218.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2218.c"
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
  %call864 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1716 = bitcast i8* %call1 to double*
  %polly.access.call1725 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2726 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1725, %call2
  %polly.access.call2745 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2745, %call1
  %2 = or i1 %0, %1
  %polly.access.call765 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call765, %call2
  %4 = icmp ule i8* %polly.access.call2745, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call765, %call1
  %8 = icmp ule i8* %polly.access.call1725, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header838, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1141 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1140 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1139 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1138 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1138, %scevgep1141
  %bound1 = icmp ult i8* %scevgep1140, %scevgep1139
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
  br i1 %exitcond18.not.i, label %vector.ph1145, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1145:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1152 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1153 = shufflevector <4 x i64> %broadcast.splatinsert1152, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1144

vector.body1144:                                  ; preds = %vector.body1144, %vector.ph1145
  %index1146 = phi i64 [ 0, %vector.ph1145 ], [ %index.next1147, %vector.body1144 ]
  %vec.ind1150 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1145 ], [ %vec.ind.next1151, %vector.body1144 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1150, %broadcast.splat1153
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv7.i, i64 %index1146
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1147 = add i64 %index1146, 4
  %vec.ind.next1151 = add <4 x i64> %vec.ind1150, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1147, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1144, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1144
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1145, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit899
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start506, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1207 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1207, label %for.body3.i46.preheader1371, label %vector.ph1208

vector.ph1208:                                    ; preds = %for.body3.i46.preheader
  %n.vec1210 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1208
  %index1211 = phi i64 [ 0, %vector.ph1208 ], [ %index.next1212, %vector.body1206 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i, i64 %index1211
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1212 = add i64 %index1211, 4
  %46 = icmp eq i64 %index.next1212, %n.vec1210
  br i1 %46, label %middle.block1204, label %vector.body1206, !llvm.loop !18

middle.block1204:                                 ; preds = %vector.body1206
  %cmp.n1214 = icmp eq i64 %indvars.iv21.i, %n.vec1210
  br i1 %cmp.n1214, label %for.inc6.i, label %for.body3.i46.preheader1371

for.body3.i46.preheader1371:                      ; preds = %for.body3.i46.preheader, %middle.block1204
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1210, %middle.block1204 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1371, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1371 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1204, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting507
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start298, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1260 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1260, label %for.body3.i60.preheader1370, label %vector.ph1261

vector.ph1261:                                    ; preds = %for.body3.i60.preheader
  %n.vec1263 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %vector.ph1261
  %index1264 = phi i64 [ 0, %vector.ph1261 ], [ %index.next1265, %vector.body1259 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i52, i64 %index1264
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1268 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1268, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1265 = add i64 %index1264, 4
  %57 = icmp eq i64 %index.next1265, %n.vec1263
  br i1 %57, label %middle.block1257, label %vector.body1259, !llvm.loop !56

middle.block1257:                                 ; preds = %vector.body1259
  %cmp.n1267 = icmp eq i64 %indvars.iv21.i52, %n.vec1263
  br i1 %cmp.n1267, label %for.inc6.i63, label %for.body3.i60.preheader1370

for.body3.i60.preheader1370:                      ; preds = %for.body3.i60.preheader, %middle.block1257
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1263, %middle.block1257 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1370, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1370 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !57

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1257, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1316 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1316, label %for.body3.i99.preheader1369, label %vector.ph1317

vector.ph1317:                                    ; preds = %for.body3.i99.preheader
  %n.vec1319 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1315

vector.body1315:                                  ; preds = %vector.body1315, %vector.ph1317
  %index1320 = phi i64 [ 0, %vector.ph1317 ], [ %index.next1321, %vector.body1315 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i91, i64 %index1320
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1324 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1324, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1321 = add i64 %index1320, 4
  %68 = icmp eq i64 %index.next1321, %n.vec1319
  br i1 %68, label %middle.block1313, label %vector.body1315, !llvm.loop !58

middle.block1313:                                 ; preds = %vector.body1315
  %cmp.n1323 = icmp eq i64 %indvars.iv21.i91, %n.vec1319
  br i1 %cmp.n1323, label %for.inc6.i102, label %for.body3.i99.preheader1369

for.body3.i99.preheader1369:                      ; preds = %for.body3.i99.preheader, %middle.block1313
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1319, %middle.block1313 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1369, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1369 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !59

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1313, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !60
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !62

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !63

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
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
  %indvar1328 = phi i64 [ %indvar.next1329, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1328, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1330 = icmp ult i64 %88, 4
  br i1 %min.iters.check1330, label %polly.loop_header192.preheader, label %vector.ph1331

vector.ph1331:                                    ; preds = %polly.loop_header
  %n.vec1333 = and i64 %88, -4
  br label %vector.body1327

vector.body1327:                                  ; preds = %vector.body1327, %vector.ph1331
  %index1334 = phi i64 [ 0, %vector.ph1331 ], [ %index.next1335, %vector.body1327 ]
  %90 = shl nuw nsw i64 %index1334, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1338 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !64, !noalias !66
  %93 = fmul fast <4 x double> %wide.load1338, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !64, !noalias !66
  %index.next1335 = add i64 %index1334, 4
  %95 = icmp eq i64 %index.next1335, %n.vec1333
  br i1 %95, label %middle.block1325, label %vector.body1327, !llvm.loop !71

middle.block1325:                                 ; preds = %vector.body1327
  %cmp.n1337 = icmp eq i64 %88, %n.vec1333
  br i1 %cmp.n1337, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1325
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1333, %middle.block1325 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1325
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1329 = add i64 %indvar1328, 1
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
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !64, !noalias !66
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1051.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !72

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
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2726, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !68, !noalias !74
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1049.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit224 ], [ 1, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nuw nsw i64 %polly.indvar219, 80
  %98 = mul nuw nsw i64 %polly.indvar219, 768000
  %99 = or i64 %98, 8
  %100 = mul nuw nsw i64 %polly.indvar219, 80
  %101 = mul nuw nsw i64 %polly.indvar219, 80
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 80
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next220, 15
  br i1 %exitcond1048.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %102 = mul nuw nsw i64 %polly.indvar225, 20
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next226, 50
  br i1 %exitcond1047.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %103 = mul nsw i64 %polly.indvar231, -80
  %104 = add i64 %97, %103
  %105 = mul nuw nsw i64 %polly.indvar231, 640
  %106 = add nuw i64 %98, %105
  %107 = add nuw i64 %99, %105
  %108 = mul nsw i64 %polly.indvar231, -80
  %109 = add i64 %100, %108
  %110 = mul nuw nsw i64 %polly.indvar231, 80
  %111 = sub nsw i64 %101, %110
  %112 = add nuw nsw i64 %110, 80
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit265
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -80
  %exitcond1046.not = icmp eq i64 %polly.indvar_next232, %indvars.iv1044
  br i1 %exitcond1046.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_exit265, %polly.loop_header228
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit265 ], [ %indvars.iv1034, %polly.loop_header228 ]
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit265 ], [ 0, %polly.loop_header228 ]
  %113 = add i64 %104, %polly.indvar237
  %smin1353 = call i64 @llvm.smin.i64(i64 %113, i64 79)
  %114 = add nsw i64 %smin1353, 1
  %115 = mul nuw nsw i64 %polly.indvar237, 9600
  %116 = add i64 %106, %115
  %scevgep1340 = getelementptr i8, i8* %call, i64 %116
  %117 = add i64 %107, %115
  %scevgep1341 = getelementptr i8, i8* %call, i64 %117
  %118 = add i64 %109, %polly.indvar237
  %smin1342 = call i64 @llvm.smin.i64(i64 %118, i64 79)
  %119 = shl nsw i64 %smin1342, 3
  %scevgep1343 = getelementptr i8, i8* %scevgep1341, i64 %119
  %120 = add nsw i64 %119, 8
  %smin1040 = call i64 @llvm.smin.i64(i64 %indvars.iv1036, i64 79)
  %121 = add nsw i64 %polly.indvar237, %111
  %polly.loop_guard1133 = icmp sgt i64 %121, -1
  %122 = add nuw nsw i64 %polly.indvar237, %101
  %.not = icmp ult i64 %122, %112
  %polly.access.mul.call1257 = mul nuw nsw i64 %122, 1000
  %123 = add nuw nsw i64 %polly.access.mul.call1257, %102
  br i1 %polly.loop_guard1133, label %polly.loop_header240.us, label %polly.loop_header234.split

polly.loop_header240.us:                          ; preds = %polly.loop_header234, %polly.merge.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.merge.us ], [ 0, %polly.loop_header234 ]
  %124 = add nuw nsw i64 %polly.indvar243.us, %102
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar243.us, 1200
  br label %polly.loop_header246.us

polly.loop_header246.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header246.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header246.us ], [ 0, %polly.loop_header240.us ]
  %125 = add nuw nsw i64 %polly.indvar249.us, %110
  %polly.access.mul.call1253.us = mul nuw nsw i64 %125, 1000
  %polly.access.add.call1254.us = add nuw nsw i64 %124, %polly.access.mul.call1253.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar249.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar249.us, %smin1040
  br i1 %exitcond1038.not, label %polly.cond.loopexit.us, label %polly.loop_header246.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1258.us = add nuw nsw i64 %123, %polly.indvar243.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %121
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar_next244.us, 20
  br i1 %exitcond1039.not, label %polly.loop_header263.preheader, label %polly.loop_header240.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header246.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit265, label %polly.loop_header240.preheader

polly.loop_header240.preheader:                   ; preds = %polly.loop_header234.split
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1716, i64 %123
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !67, !noalias !75
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %121
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.access.add.call1258.1 = or i64 %123, 1
  %polly.access.call1259.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.1
  %polly.access.call1259.load.1 = load double, double* %polly.access.call1259.1, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.1 = add nsw i64 %121, 1200
  %polly.access.Packed_MemRef_call1262.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.1
  store double %polly.access.call1259.load.1, double* %polly.access.Packed_MemRef_call1262.1, align 8
  %polly.access.add.call1258.2 = or i64 %123, 2
  %polly.access.call1259.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.2
  %polly.access.call1259.load.2 = load double, double* %polly.access.call1259.2, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.2 = add nsw i64 %121, 2400
  %polly.access.Packed_MemRef_call1262.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.2
  store double %polly.access.call1259.load.2, double* %polly.access.Packed_MemRef_call1262.2, align 8
  %polly.access.add.call1258.3 = or i64 %123, 3
  %polly.access.call1259.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.3
  %polly.access.call1259.load.3 = load double, double* %polly.access.call1259.3, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.3 = add nsw i64 %121, 3600
  %polly.access.Packed_MemRef_call1262.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.3
  store double %polly.access.call1259.load.3, double* %polly.access.Packed_MemRef_call1262.3, align 8
  %polly.access.add.call1258.4 = add nuw nsw i64 %123, 4
  %polly.access.call1259.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.4
  %polly.access.call1259.load.4 = load double, double* %polly.access.call1259.4, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.4 = add nsw i64 %121, 4800
  %polly.access.Packed_MemRef_call1262.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.4
  store double %polly.access.call1259.load.4, double* %polly.access.Packed_MemRef_call1262.4, align 8
  %polly.access.add.call1258.5 = add nuw nsw i64 %123, 5
  %polly.access.call1259.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.5
  %polly.access.call1259.load.5 = load double, double* %polly.access.call1259.5, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.5 = add nsw i64 %121, 6000
  %polly.access.Packed_MemRef_call1262.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.5
  store double %polly.access.call1259.load.5, double* %polly.access.Packed_MemRef_call1262.5, align 8
  %polly.access.add.call1258.6 = add nuw nsw i64 %123, 6
  %polly.access.call1259.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.6
  %polly.access.call1259.load.6 = load double, double* %polly.access.call1259.6, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.6 = add nsw i64 %121, 7200
  %polly.access.Packed_MemRef_call1262.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.6
  store double %polly.access.call1259.load.6, double* %polly.access.Packed_MemRef_call1262.6, align 8
  %polly.access.add.call1258.7 = add nuw nsw i64 %123, 7
  %polly.access.call1259.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.7
  %polly.access.call1259.load.7 = load double, double* %polly.access.call1259.7, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.7 = add nsw i64 %121, 8400
  %polly.access.Packed_MemRef_call1262.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.7
  store double %polly.access.call1259.load.7, double* %polly.access.Packed_MemRef_call1262.7, align 8
  %polly.access.add.call1258.8 = add nuw nsw i64 %123, 8
  %polly.access.call1259.8 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.8
  %polly.access.call1259.load.8 = load double, double* %polly.access.call1259.8, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.8 = add nsw i64 %121, 9600
  %polly.access.Packed_MemRef_call1262.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.8
  store double %polly.access.call1259.load.8, double* %polly.access.Packed_MemRef_call1262.8, align 8
  %polly.access.add.call1258.9 = add nuw nsw i64 %123, 9
  %polly.access.call1259.9 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.9
  %polly.access.call1259.load.9 = load double, double* %polly.access.call1259.9, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.9 = add nsw i64 %121, 10800
  %polly.access.Packed_MemRef_call1262.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.9
  store double %polly.access.call1259.load.9, double* %polly.access.Packed_MemRef_call1262.9, align 8
  %polly.access.add.call1258.10 = add nuw nsw i64 %123, 10
  %polly.access.call1259.10 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.10
  %polly.access.call1259.load.10 = load double, double* %polly.access.call1259.10, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.10 = add nsw i64 %121, 12000
  %polly.access.Packed_MemRef_call1262.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.10
  store double %polly.access.call1259.load.10, double* %polly.access.Packed_MemRef_call1262.10, align 8
  %polly.access.add.call1258.11 = add nuw nsw i64 %123, 11
  %polly.access.call1259.11 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.11
  %polly.access.call1259.load.11 = load double, double* %polly.access.call1259.11, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.11 = add nsw i64 %121, 13200
  %polly.access.Packed_MemRef_call1262.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.11
  store double %polly.access.call1259.load.11, double* %polly.access.Packed_MemRef_call1262.11, align 8
  %polly.access.add.call1258.12 = add nuw nsw i64 %123, 12
  %polly.access.call1259.12 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.12
  %polly.access.call1259.load.12 = load double, double* %polly.access.call1259.12, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.12 = add nsw i64 %121, 14400
  %polly.access.Packed_MemRef_call1262.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.12
  store double %polly.access.call1259.load.12, double* %polly.access.Packed_MemRef_call1262.12, align 8
  %polly.access.add.call1258.13 = add nuw nsw i64 %123, 13
  %polly.access.call1259.13 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.13
  %polly.access.call1259.load.13 = load double, double* %polly.access.call1259.13, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.13 = add nsw i64 %121, 15600
  %polly.access.Packed_MemRef_call1262.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.13
  store double %polly.access.call1259.load.13, double* %polly.access.Packed_MemRef_call1262.13, align 8
  %polly.access.add.call1258.14 = add nuw nsw i64 %123, 14
  %polly.access.call1259.14 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.14
  %polly.access.call1259.load.14 = load double, double* %polly.access.call1259.14, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.14 = add nsw i64 %121, 16800
  %polly.access.Packed_MemRef_call1262.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.14
  store double %polly.access.call1259.load.14, double* %polly.access.Packed_MemRef_call1262.14, align 8
  %polly.access.add.call1258.15 = add nuw nsw i64 %123, 15
  %polly.access.call1259.15 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.15
  %polly.access.call1259.load.15 = load double, double* %polly.access.call1259.15, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.15 = add nsw i64 %121, 18000
  %polly.access.Packed_MemRef_call1262.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.15
  store double %polly.access.call1259.load.15, double* %polly.access.Packed_MemRef_call1262.15, align 8
  %polly.access.add.call1258.16 = add nuw nsw i64 %123, 16
  %polly.access.call1259.16 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.16
  %polly.access.call1259.load.16 = load double, double* %polly.access.call1259.16, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.16 = add nsw i64 %121, 19200
  %polly.access.Packed_MemRef_call1262.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.16
  store double %polly.access.call1259.load.16, double* %polly.access.Packed_MemRef_call1262.16, align 8
  %polly.access.add.call1258.17 = add nuw nsw i64 %123, 17
  %polly.access.call1259.17 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.17
  %polly.access.call1259.load.17 = load double, double* %polly.access.call1259.17, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.17 = add nsw i64 %121, 20400
  %polly.access.Packed_MemRef_call1262.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.17
  store double %polly.access.call1259.load.17, double* %polly.access.Packed_MemRef_call1262.17, align 8
  %polly.access.add.call1258.18 = add nuw nsw i64 %123, 18
  %polly.access.call1259.18 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.18
  %polly.access.call1259.load.18 = load double, double* %polly.access.call1259.18, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.18 = add nsw i64 %121, 21600
  %polly.access.Packed_MemRef_call1262.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.18
  store double %polly.access.call1259.load.18, double* %polly.access.Packed_MemRef_call1262.18, align 8
  %polly.access.add.call1258.19 = add nuw nsw i64 %123, 19
  %polly.access.call1259.19 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.19
  %polly.access.call1259.load.19 = load double, double* %polly.access.call1259.19, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1261.19 = add nsw i64 %121, 22800
  %polly.access.Packed_MemRef_call1262.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.19
  store double %polly.access.call1259.load.19, double* %polly.access.Packed_MemRef_call1262.19, align 8
  br label %polly.loop_exit265

polly.loop_exit265:                               ; preds = %polly.loop_exit272.loopexit.us, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header263.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next238, 80
  br i1 %exitcond1043.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.merge.us
  %126 = mul nuw nsw i64 %122, 9600
  br i1 %polly.loop_guard1133, label %polly.loop_header263.us, label %polly.loop_exit265

polly.loop_header263.us:                          ; preds = %polly.loop_header263.preheader, %polly.loop_exit272.loopexit.us
  %polly.indvar266.us = phi i64 [ %polly.indvar_next267.us, %polly.loop_exit272.loopexit.us ], [ 0, %polly.loop_header263.preheader ]
  %127 = mul nuw nsw i64 %polly.indvar266.us, 9600
  %polly.access.mul.Packed_MemRef_call1277.us = mul nuw nsw i64 %polly.indvar266.us, 1200
  %128 = add nuw nsw i64 %polly.indvar266.us, %102
  %polly.access.mul.Packed_MemRef_call2281.us = mul nuw nsw i64 %128, 1200
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us, %122
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %polly.access.add.Packed_MemRef_call1290.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1277.us, %121
  %polly.access.Packed_MemRef_call1291.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call1291.us, align 8
  %min.iters.check1354 = icmp ult i64 %114, 4
  br i1 %min.iters.check1354, label %polly.loop_header270.us.preheader, label %vector.memcheck1339

vector.memcheck1339:                              ; preds = %polly.loop_header263.us
  %129 = add i64 %120, %127
  %scevgep1345 = getelementptr i8, i8* %malloccall, i64 %129
  %scevgep1344 = getelementptr i8, i8* %malloccall, i64 %127
  %bound01346 = icmp ult i8* %scevgep1340, %scevgep1345
  %bound11347 = icmp ult i8* %scevgep1344, %scevgep1343
  %found.conflict1348 = and i1 %bound01346, %bound11347
  br i1 %found.conflict1348, label %polly.loop_header270.us.preheader, label %vector.ph1355

vector.ph1355:                                    ; preds = %vector.memcheck1339
  %n.vec1357 = and i64 %114, -4
  %broadcast.splatinsert1363 = insertelement <4 x double> poison, double %_p_scalar_284.us, i32 0
  %broadcast.splat1364 = shufflevector <4 x double> %broadcast.splatinsert1363, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1366 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1367 = shufflevector <4 x double> %broadcast.splatinsert1366, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1352

vector.body1352:                                  ; preds = %vector.body1352, %vector.ph1355
  %index1358 = phi i64 [ 0, %vector.ph1355 ], [ %index.next1359, %vector.body1352 ]
  %130 = add nuw nsw i64 %index1358, %110
  %131 = add nuw nsw i64 %index1358, %polly.access.mul.Packed_MemRef_call1277.us
  %132 = getelementptr double, double* %Packed_MemRef_call1, i64 %131
  %133 = bitcast double* %132 to <4 x double>*
  %wide.load1362 = load <4 x double>, <4 x double>* %133, align 8, !alias.scope !76
  %134 = fmul fast <4 x double> %broadcast.splat1364, %wide.load1362
  %135 = add nuw nsw i64 %130, %polly.access.mul.Packed_MemRef_call2281.us
  %136 = getelementptr double, double* %Packed_MemRef_call2, i64 %135
  %137 = bitcast double* %136 to <4 x double>*
  %wide.load1365 = load <4 x double>, <4 x double>* %137, align 8
  %138 = fmul fast <4 x double> %broadcast.splat1367, %wide.load1365
  %139 = shl i64 %130, 3
  %140 = add nuw nsw i64 %139, %126
  %141 = getelementptr i8, i8* %call, i64 %140
  %142 = bitcast i8* %141 to <4 x double>*
  %wide.load1368 = load <4 x double>, <4 x double>* %142, align 8, !alias.scope !79, !noalias !81
  %143 = fadd fast <4 x double> %138, %134
  %144 = fmul fast <4 x double> %143, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %145 = fadd fast <4 x double> %144, %wide.load1368
  %146 = bitcast i8* %141 to <4 x double>*
  store <4 x double> %145, <4 x double>* %146, align 8, !alias.scope !79, !noalias !81
  %index.next1359 = add i64 %index1358, 4
  %147 = icmp eq i64 %index.next1359, %n.vec1357
  br i1 %147, label %middle.block1350, label %vector.body1352, !llvm.loop !82

middle.block1350:                                 ; preds = %vector.body1352
  %cmp.n1361 = icmp eq i64 %114, %n.vec1357
  br i1 %cmp.n1361, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us.preheader

polly.loop_header270.us.preheader:                ; preds = %vector.memcheck1339, %polly.loop_header263.us, %middle.block1350
  %polly.indvar274.us.ph = phi i64 [ 0, %vector.memcheck1339 ], [ 0, %polly.loop_header263.us ], [ %n.vec1357, %middle.block1350 ]
  br label %polly.loop_header270.us

polly.loop_header270.us:                          ; preds = %polly.loop_header270.us.preheader, %polly.loop_header270.us
  %polly.indvar274.us = phi i64 [ %polly.indvar_next275.us, %polly.loop_header270.us ], [ %polly.indvar274.us.ph, %polly.loop_header270.us.preheader ]
  %148 = add nuw nsw i64 %polly.indvar274.us, %110
  %polly.access.add.Packed_MemRef_call1278.us = add nuw nsw i64 %polly.indvar274.us, %polly.access.mul.Packed_MemRef_call1277.us
  %polly.access.Packed_MemRef_call1279.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call1279.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_284.us, %_p_scalar_280.us
  %polly.access.add.Packed_MemRef_call2286.us = add nuw nsw i64 %148, %polly.access.mul.Packed_MemRef_call2281.us
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %149 = shl i64 %148, 3
  %150 = add nuw nsw i64 %149, %126
  %scevgep293.us = getelementptr i8, i8* %call, i64 %150
  %scevgep293294.us = bitcast i8* %scevgep293.us to double*
  %_p_scalar_295.us = load double, double* %scevgep293294.us, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_295.us
  store double %p_add42.i118.us, double* %scevgep293294.us, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar274.us, %smin1040
  br i1 %exitcond1041.not, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us, !llvm.loop !83

polly.loop_exit272.loopexit.us:                   ; preds = %polly.loop_header270.us, %middle.block1350
  %polly.indvar_next267.us = add nuw nsw i64 %polly.indvar266.us, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next267.us, 20
  br i1 %exitcond1042.not, label %polly.loop_exit265, label %polly.loop_header263.us

polly.start298:                                   ; preds = %kernel_syr2k.exit
  %malloccall300 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall302 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header386

polly.exiting299:                                 ; preds = %polly.loop_exit426
  tail call void @free(i8* %malloccall300)
  tail call void @free(i8* %malloccall302)
  br label %kernel_syr2k.exit90

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.start298
  %indvar1272 = phi i64 [ %indvar.next1273, %polly.loop_exit394 ], [ 0, %polly.start298 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 1, %polly.start298 ]
  %151 = add i64 %indvar1272, 1
  %152 = mul nuw nsw i64 %polly.indvar389, 9600
  %scevgep398 = getelementptr i8, i8* %call, i64 %152
  %min.iters.check1274 = icmp ult i64 %151, 4
  br i1 %min.iters.check1274, label %polly.loop_header392.preheader, label %vector.ph1275

vector.ph1275:                                    ; preds = %polly.loop_header386
  %n.vec1277 = and i64 %151, -4
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %vector.ph1275
  %index1278 = phi i64 [ 0, %vector.ph1275 ], [ %index.next1279, %vector.body1271 ]
  %153 = shl nuw nsw i64 %index1278, 3
  %154 = getelementptr i8, i8* %scevgep398, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  %wide.load1282 = load <4 x double>, <4 x double>* %155, align 8, !alias.scope !84, !noalias !86
  %156 = fmul fast <4 x double> %wide.load1282, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %157 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %156, <4 x double>* %157, align 8, !alias.scope !84, !noalias !86
  %index.next1279 = add i64 %index1278, 4
  %158 = icmp eq i64 %index.next1279, %n.vec1277
  br i1 %158, label %middle.block1269, label %vector.body1271, !llvm.loop !91

middle.block1269:                                 ; preds = %vector.body1271
  %cmp.n1281 = icmp eq i64 %151, %n.vec1277
  br i1 %cmp.n1281, label %polly.loop_exit394, label %polly.loop_header392.preheader

polly.loop_header392.preheader:                   ; preds = %polly.loop_header386, %middle.block1269
  %polly.indvar395.ph = phi i64 [ 0, %polly.loop_header386 ], [ %n.vec1277, %middle.block1269 ]
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392, %middle.block1269
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar_next390, 1200
  %indvar.next1273 = add i64 %indvar1272, 1
  br i1 %exitcond1075.not, label %polly.loop_header402.preheader, label %polly.loop_header386

polly.loop_header402.preheader:                   ; preds = %polly.loop_exit394
  %Packed_MemRef_call1301 = bitcast i8* %malloccall300 to double*
  %Packed_MemRef_call2303 = bitcast i8* %malloccall302 to double*
  br label %polly.loop_header402

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_header392
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_header392 ], [ %polly.indvar395.ph, %polly.loop_header392.preheader ]
  %159 = shl nuw nsw i64 %polly.indvar395, 3
  %scevgep399 = getelementptr i8, i8* %scevgep398, i64 %159
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !84, !noalias !86
  %p_mul.i57 = fmul fast double %_p_scalar_401, 1.200000e+00
  store double %p_mul.i57, double* %scevgep399400, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next396, %polly.indvar389
  br i1 %exitcond1074.not, label %polly.loop_exit394, label %polly.loop_header392, !llvm.loop !92

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit410
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit410 ], [ 0, %polly.loop_header402.preheader ]
  %polly.access.mul.Packed_MemRef_call2303 = mul nuw nsw i64 %polly.indvar405, 1200
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next406, 1000
  br i1 %exitcond1073.not, label %polly.loop_header418, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %polly.access.mul.call2415 = mul nuw nsw i64 %polly.indvar411, 1000
  %polly.access.add.call2416 = add nuw nsw i64 %polly.access.mul.call2415, %polly.indvar405
  %polly.access.call2417 = getelementptr double, double* %polly.access.cast.call2726, i64 %polly.access.add.call2416
  %polly.access.call2417.load = load double, double* %polly.access.call2417, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call2303 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call2303
  %polly.access.Packed_MemRef_call2303 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303
  store double %polly.access.call2417.load, double* %polly.access.Packed_MemRef_call2303, align 8
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar_next412, 1200
  br i1 %exitcond1072.not, label %polly.loop_exit410, label %polly.loop_header408

polly.loop_header418:                             ; preds = %polly.loop_exit410, %polly.loop_exit426
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit426 ], [ 1, %polly.loop_exit410 ]
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit426 ], [ 0, %polly.loop_exit410 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit426 ], [ 0, %polly.loop_exit410 ]
  %160 = mul nuw nsw i64 %polly.indvar421, 80
  %161 = mul nuw nsw i64 %polly.indvar421, 768000
  %162 = or i64 %161, 8
  %163 = mul nuw nsw i64 %polly.indvar421, 80
  %164 = mul nuw nsw i64 %polly.indvar421, 80
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit432
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1055 = add nuw nsw i64 %indvars.iv1054, 80
  %indvars.iv.next1068 = add nuw nsw i64 %indvars.iv1067, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next422, 15
  br i1 %exitcond1071.not, label %polly.exiting299, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit432, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit432 ]
  %165 = mul nuw nsw i64 %polly.indvar427, 20
  br label %polly.loop_header430

polly.loop_exit432:                               ; preds = %polly.loop_exit438
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next428, 50
  br i1 %exitcond1070.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_exit438, %polly.loop_header424
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057, %polly.loop_exit438 ], [ %indvars.iv1054, %polly.loop_header424 ]
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_exit438 ], [ 0, %polly.loop_header424 ]
  %166 = mul nsw i64 %polly.indvar433, -80
  %167 = add i64 %160, %166
  %168 = mul nuw nsw i64 %polly.indvar433, 640
  %169 = add nuw i64 %161, %168
  %170 = add nuw i64 %162, %168
  %171 = mul nsw i64 %polly.indvar433, -80
  %172 = add i64 %163, %171
  %173 = mul nuw nsw i64 %polly.indvar433, 80
  %174 = sub nsw i64 %164, %173
  %175 = add nuw nsw i64 %173, 80
  br label %polly.loop_header436

polly.loop_exit438:                               ; preds = %polly.loop_exit473
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %indvars.iv.next1057 = add nsw i64 %indvars.iv1056, -80
  %exitcond1069.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1067
  br i1 %exitcond1069.not, label %polly.loop_exit432, label %polly.loop_header430

polly.loop_header436:                             ; preds = %polly.loop_exit473, %polly.loop_header430
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit473 ], [ %indvars.iv1056, %polly.loop_header430 ]
  %polly.indvar439 = phi i64 [ %polly.indvar_next440, %polly.loop_exit473 ], [ 0, %polly.loop_header430 ]
  %176 = add i64 %167, %polly.indvar439
  %smin1297 = call i64 @llvm.smin.i64(i64 %176, i64 79)
  %177 = add nsw i64 %smin1297, 1
  %178 = mul nuw nsw i64 %polly.indvar439, 9600
  %179 = add i64 %169, %178
  %scevgep1284 = getelementptr i8, i8* %call, i64 %179
  %180 = add i64 %170, %178
  %scevgep1285 = getelementptr i8, i8* %call, i64 %180
  %181 = add i64 %172, %polly.indvar439
  %smin1286 = call i64 @llvm.smin.i64(i64 %181, i64 79)
  %182 = shl nsw i64 %smin1286, 3
  %scevgep1287 = getelementptr i8, i8* %scevgep1285, i64 %182
  %183 = add nsw i64 %182, 8
  %smin1063 = call i64 @llvm.smin.i64(i64 %indvars.iv1058, i64 79)
  %184 = add nsw i64 %polly.indvar439, %174
  %polly.loop_guard4521134 = icmp sgt i64 %184, -1
  %185 = add nuw nsw i64 %polly.indvar439, %164
  %.not918 = icmp ult i64 %185, %175
  %polly.access.mul.call1465 = mul nuw nsw i64 %185, 1000
  %186 = add nuw nsw i64 %polly.access.mul.call1465, %165
  br i1 %polly.loop_guard4521134, label %polly.loop_header442.us, label %polly.loop_header436.split

polly.loop_header442.us:                          ; preds = %polly.loop_header436, %polly.merge461.us
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.merge461.us ], [ 0, %polly.loop_header436 ]
  %187 = add nuw nsw i64 %polly.indvar445.us, %165
  %polly.access.mul.Packed_MemRef_call1301.us = mul nuw nsw i64 %polly.indvar445.us, 1200
  br label %polly.loop_header449.us

polly.loop_header449.us:                          ; preds = %polly.loop_header442.us, %polly.loop_header449.us
  %polly.indvar453.us = phi i64 [ %polly.indvar_next454.us, %polly.loop_header449.us ], [ 0, %polly.loop_header442.us ]
  %188 = add nuw nsw i64 %polly.indvar453.us, %173
  %polly.access.mul.call1457.us = mul nuw nsw i64 %188, 1000
  %polly.access.add.call1458.us = add nuw nsw i64 %187, %polly.access.mul.call1457.us
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301.us = add nuw nsw i64 %polly.indvar453.us, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %polly.indvar_next454.us = add nuw nsw i64 %polly.indvar453.us, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar453.us, %smin1063
  br i1 %exitcond1061.not, label %polly.cond460.loopexit.us, label %polly.loop_header449.us

polly.then462.us:                                 ; preds = %polly.cond460.loopexit.us
  %polly.access.add.call1466.us = add nuw nsw i64 %186, %polly.indvar445.us
  %polly.access.call1467.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.us
  %polly.access.call1467.load.us = load double, double* %polly.access.call1467.us, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1301.us, %184
  %polly.access.Packed_MemRef_call1301470.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.us
  store double %polly.access.call1467.load.us, double* %polly.access.Packed_MemRef_call1301470.us, align 8
  br label %polly.merge461.us

polly.merge461.us:                                ; preds = %polly.then462.us, %polly.cond460.loopexit.us
  %polly.indvar_next446.us = add nuw nsw i64 %polly.indvar445.us, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next446.us, 20
  br i1 %exitcond1062.not, label %polly.loop_header471.preheader, label %polly.loop_header442.us

polly.cond460.loopexit.us:                        ; preds = %polly.loop_header449.us
  br i1 %.not918, label %polly.merge461.us, label %polly.then462.us

polly.loop_header436.split:                       ; preds = %polly.loop_header436
  br i1 %.not918, label %polly.loop_exit473, label %polly.loop_header442.preheader

polly.loop_header442.preheader:                   ; preds = %polly.loop_header436.split
  %polly.access.call1467 = getelementptr double, double* %polly.access.cast.call1716, i64 %186
  %polly.access.call1467.load = load double, double* %polly.access.call1467, align 8, !alias.scope !87, !noalias !94
  %polly.access.Packed_MemRef_call1301470 = getelementptr double, double* %Packed_MemRef_call1301, i64 %184
  store double %polly.access.call1467.load, double* %polly.access.Packed_MemRef_call1301470, align 8
  %polly.access.add.call1466.1 = or i64 %186, 1
  %polly.access.call1467.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.1
  %polly.access.call1467.load.1 = load double, double* %polly.access.call1467.1, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.1 = add nsw i64 %184, 1200
  %polly.access.Packed_MemRef_call1301470.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.1
  store double %polly.access.call1467.load.1, double* %polly.access.Packed_MemRef_call1301470.1, align 8
  %polly.access.add.call1466.2 = or i64 %186, 2
  %polly.access.call1467.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.2
  %polly.access.call1467.load.2 = load double, double* %polly.access.call1467.2, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.2 = add nsw i64 %184, 2400
  %polly.access.Packed_MemRef_call1301470.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.2
  store double %polly.access.call1467.load.2, double* %polly.access.Packed_MemRef_call1301470.2, align 8
  %polly.access.add.call1466.3 = or i64 %186, 3
  %polly.access.call1467.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.3
  %polly.access.call1467.load.3 = load double, double* %polly.access.call1467.3, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.3 = add nsw i64 %184, 3600
  %polly.access.Packed_MemRef_call1301470.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.3
  store double %polly.access.call1467.load.3, double* %polly.access.Packed_MemRef_call1301470.3, align 8
  %polly.access.add.call1466.4 = add nuw nsw i64 %186, 4
  %polly.access.call1467.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.4
  %polly.access.call1467.load.4 = load double, double* %polly.access.call1467.4, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.4 = add nsw i64 %184, 4800
  %polly.access.Packed_MemRef_call1301470.4 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.4
  store double %polly.access.call1467.load.4, double* %polly.access.Packed_MemRef_call1301470.4, align 8
  %polly.access.add.call1466.5 = add nuw nsw i64 %186, 5
  %polly.access.call1467.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.5
  %polly.access.call1467.load.5 = load double, double* %polly.access.call1467.5, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.5 = add nsw i64 %184, 6000
  %polly.access.Packed_MemRef_call1301470.5 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.5
  store double %polly.access.call1467.load.5, double* %polly.access.Packed_MemRef_call1301470.5, align 8
  %polly.access.add.call1466.6 = add nuw nsw i64 %186, 6
  %polly.access.call1467.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.6
  %polly.access.call1467.load.6 = load double, double* %polly.access.call1467.6, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.6 = add nsw i64 %184, 7200
  %polly.access.Packed_MemRef_call1301470.6 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.6
  store double %polly.access.call1467.load.6, double* %polly.access.Packed_MemRef_call1301470.6, align 8
  %polly.access.add.call1466.7 = add nuw nsw i64 %186, 7
  %polly.access.call1467.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.7
  %polly.access.call1467.load.7 = load double, double* %polly.access.call1467.7, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.7 = add nsw i64 %184, 8400
  %polly.access.Packed_MemRef_call1301470.7 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.7
  store double %polly.access.call1467.load.7, double* %polly.access.Packed_MemRef_call1301470.7, align 8
  %polly.access.add.call1466.8 = add nuw nsw i64 %186, 8
  %polly.access.call1467.8 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.8
  %polly.access.call1467.load.8 = load double, double* %polly.access.call1467.8, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.8 = add nsw i64 %184, 9600
  %polly.access.Packed_MemRef_call1301470.8 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.8
  store double %polly.access.call1467.load.8, double* %polly.access.Packed_MemRef_call1301470.8, align 8
  %polly.access.add.call1466.9 = add nuw nsw i64 %186, 9
  %polly.access.call1467.9 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.9
  %polly.access.call1467.load.9 = load double, double* %polly.access.call1467.9, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.9 = add nsw i64 %184, 10800
  %polly.access.Packed_MemRef_call1301470.9 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.9
  store double %polly.access.call1467.load.9, double* %polly.access.Packed_MemRef_call1301470.9, align 8
  %polly.access.add.call1466.10 = add nuw nsw i64 %186, 10
  %polly.access.call1467.10 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.10
  %polly.access.call1467.load.10 = load double, double* %polly.access.call1467.10, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.10 = add nsw i64 %184, 12000
  %polly.access.Packed_MemRef_call1301470.10 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.10
  store double %polly.access.call1467.load.10, double* %polly.access.Packed_MemRef_call1301470.10, align 8
  %polly.access.add.call1466.11 = add nuw nsw i64 %186, 11
  %polly.access.call1467.11 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.11
  %polly.access.call1467.load.11 = load double, double* %polly.access.call1467.11, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.11 = add nsw i64 %184, 13200
  %polly.access.Packed_MemRef_call1301470.11 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.11
  store double %polly.access.call1467.load.11, double* %polly.access.Packed_MemRef_call1301470.11, align 8
  %polly.access.add.call1466.12 = add nuw nsw i64 %186, 12
  %polly.access.call1467.12 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.12
  %polly.access.call1467.load.12 = load double, double* %polly.access.call1467.12, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.12 = add nsw i64 %184, 14400
  %polly.access.Packed_MemRef_call1301470.12 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.12
  store double %polly.access.call1467.load.12, double* %polly.access.Packed_MemRef_call1301470.12, align 8
  %polly.access.add.call1466.13 = add nuw nsw i64 %186, 13
  %polly.access.call1467.13 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.13
  %polly.access.call1467.load.13 = load double, double* %polly.access.call1467.13, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.13 = add nsw i64 %184, 15600
  %polly.access.Packed_MemRef_call1301470.13 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.13
  store double %polly.access.call1467.load.13, double* %polly.access.Packed_MemRef_call1301470.13, align 8
  %polly.access.add.call1466.14 = add nuw nsw i64 %186, 14
  %polly.access.call1467.14 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.14
  %polly.access.call1467.load.14 = load double, double* %polly.access.call1467.14, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.14 = add nsw i64 %184, 16800
  %polly.access.Packed_MemRef_call1301470.14 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.14
  store double %polly.access.call1467.load.14, double* %polly.access.Packed_MemRef_call1301470.14, align 8
  %polly.access.add.call1466.15 = add nuw nsw i64 %186, 15
  %polly.access.call1467.15 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.15
  %polly.access.call1467.load.15 = load double, double* %polly.access.call1467.15, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.15 = add nsw i64 %184, 18000
  %polly.access.Packed_MemRef_call1301470.15 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.15
  store double %polly.access.call1467.load.15, double* %polly.access.Packed_MemRef_call1301470.15, align 8
  %polly.access.add.call1466.16 = add nuw nsw i64 %186, 16
  %polly.access.call1467.16 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.16
  %polly.access.call1467.load.16 = load double, double* %polly.access.call1467.16, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.16 = add nsw i64 %184, 19200
  %polly.access.Packed_MemRef_call1301470.16 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.16
  store double %polly.access.call1467.load.16, double* %polly.access.Packed_MemRef_call1301470.16, align 8
  %polly.access.add.call1466.17 = add nuw nsw i64 %186, 17
  %polly.access.call1467.17 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.17
  %polly.access.call1467.load.17 = load double, double* %polly.access.call1467.17, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.17 = add nsw i64 %184, 20400
  %polly.access.Packed_MemRef_call1301470.17 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.17
  store double %polly.access.call1467.load.17, double* %polly.access.Packed_MemRef_call1301470.17, align 8
  %polly.access.add.call1466.18 = add nuw nsw i64 %186, 18
  %polly.access.call1467.18 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.18
  %polly.access.call1467.load.18 = load double, double* %polly.access.call1467.18, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.18 = add nsw i64 %184, 21600
  %polly.access.Packed_MemRef_call1301470.18 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.18
  store double %polly.access.call1467.load.18, double* %polly.access.Packed_MemRef_call1301470.18, align 8
  %polly.access.add.call1466.19 = add nuw nsw i64 %186, 19
  %polly.access.call1467.19 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.19
  %polly.access.call1467.load.19 = load double, double* %polly.access.call1467.19, align 8, !alias.scope !87, !noalias !94
  %polly.access.add.Packed_MemRef_call1301469.19 = add nsw i64 %184, 22800
  %polly.access.Packed_MemRef_call1301470.19 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.19
  store double %polly.access.call1467.load.19, double* %polly.access.Packed_MemRef_call1301470.19, align 8
  br label %polly.loop_exit473

polly.loop_exit473:                               ; preds = %polly.loop_exit480.loopexit.us, %polly.loop_header436.split, %polly.loop_header442.preheader, %polly.loop_header471.preheader
  %polly.indvar_next440 = add nuw nsw i64 %polly.indvar439, 1
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next440, 80
  br i1 %exitcond1066.not, label %polly.loop_exit438, label %polly.loop_header436

polly.loop_header471.preheader:                   ; preds = %polly.merge461.us
  %189 = mul nuw nsw i64 %185, 9600
  br i1 %polly.loop_guard4521134, label %polly.loop_header471.us, label %polly.loop_exit473

polly.loop_header471.us:                          ; preds = %polly.loop_header471.preheader, %polly.loop_exit480.loopexit.us
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_exit480.loopexit.us ], [ 0, %polly.loop_header471.preheader ]
  %190 = mul nuw nsw i64 %polly.indvar474.us, 9600
  %polly.access.mul.Packed_MemRef_call1301485.us = mul nuw nsw i64 %polly.indvar474.us, 1200
  %191 = add nuw nsw i64 %polly.indvar474.us, %165
  %polly.access.mul.Packed_MemRef_call2303489.us = mul nuw nsw i64 %191, 1200
  %polly.access.add.Packed_MemRef_call2303490.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303489.us, %185
  %polly.access.Packed_MemRef_call2303491.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303490.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call2303491.us, align 8
  %polly.access.add.Packed_MemRef_call1301498.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1301485.us, %184
  %polly.access.Packed_MemRef_call1301499.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301498.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call1301499.us, align 8
  %min.iters.check1298 = icmp ult i64 %177, 4
  br i1 %min.iters.check1298, label %polly.loop_header478.us.preheader, label %vector.memcheck1283

vector.memcheck1283:                              ; preds = %polly.loop_header471.us
  %192 = add i64 %183, %190
  %scevgep1289 = getelementptr i8, i8* %malloccall300, i64 %192
  %scevgep1288 = getelementptr i8, i8* %malloccall300, i64 %190
  %bound01290 = icmp ult i8* %scevgep1284, %scevgep1289
  %bound11291 = icmp ult i8* %scevgep1288, %scevgep1287
  %found.conflict1292 = and i1 %bound01290, %bound11291
  br i1 %found.conflict1292, label %polly.loop_header478.us.preheader, label %vector.ph1299

vector.ph1299:                                    ; preds = %vector.memcheck1283
  %n.vec1301 = and i64 %177, -4
  %broadcast.splatinsert1307 = insertelement <4 x double> poison, double %_p_scalar_492.us, i32 0
  %broadcast.splat1308 = shufflevector <4 x double> %broadcast.splatinsert1307, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1310 = insertelement <4 x double> poison, double %_p_scalar_500.us, i32 0
  %broadcast.splat1311 = shufflevector <4 x double> %broadcast.splatinsert1310, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1296

vector.body1296:                                  ; preds = %vector.body1296, %vector.ph1299
  %index1302 = phi i64 [ 0, %vector.ph1299 ], [ %index.next1303, %vector.body1296 ]
  %193 = add nuw nsw i64 %index1302, %173
  %194 = add nuw nsw i64 %index1302, %polly.access.mul.Packed_MemRef_call1301485.us
  %195 = getelementptr double, double* %Packed_MemRef_call1301, i64 %194
  %196 = bitcast double* %195 to <4 x double>*
  %wide.load1306 = load <4 x double>, <4 x double>* %196, align 8, !alias.scope !95
  %197 = fmul fast <4 x double> %broadcast.splat1308, %wide.load1306
  %198 = add nuw nsw i64 %193, %polly.access.mul.Packed_MemRef_call2303489.us
  %199 = getelementptr double, double* %Packed_MemRef_call2303, i64 %198
  %200 = bitcast double* %199 to <4 x double>*
  %wide.load1309 = load <4 x double>, <4 x double>* %200, align 8
  %201 = fmul fast <4 x double> %broadcast.splat1311, %wide.load1309
  %202 = shl i64 %193, 3
  %203 = add nuw nsw i64 %202, %189
  %204 = getelementptr i8, i8* %call, i64 %203
  %205 = bitcast i8* %204 to <4 x double>*
  %wide.load1312 = load <4 x double>, <4 x double>* %205, align 8, !alias.scope !98, !noalias !100
  %206 = fadd fast <4 x double> %201, %197
  %207 = fmul fast <4 x double> %206, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %208 = fadd fast <4 x double> %207, %wide.load1312
  %209 = bitcast i8* %204 to <4 x double>*
  store <4 x double> %208, <4 x double>* %209, align 8, !alias.scope !98, !noalias !100
  %index.next1303 = add i64 %index1302, 4
  %210 = icmp eq i64 %index.next1303, %n.vec1301
  br i1 %210, label %middle.block1294, label %vector.body1296, !llvm.loop !101

middle.block1294:                                 ; preds = %vector.body1296
  %cmp.n1305 = icmp eq i64 %177, %n.vec1301
  br i1 %cmp.n1305, label %polly.loop_exit480.loopexit.us, label %polly.loop_header478.us.preheader

polly.loop_header478.us.preheader:                ; preds = %vector.memcheck1283, %polly.loop_header471.us, %middle.block1294
  %polly.indvar482.us.ph = phi i64 [ 0, %vector.memcheck1283 ], [ 0, %polly.loop_header471.us ], [ %n.vec1301, %middle.block1294 ]
  br label %polly.loop_header478.us

polly.loop_header478.us:                          ; preds = %polly.loop_header478.us.preheader, %polly.loop_header478.us
  %polly.indvar482.us = phi i64 [ %polly.indvar_next483.us, %polly.loop_header478.us ], [ %polly.indvar482.us.ph, %polly.loop_header478.us.preheader ]
  %211 = add nuw nsw i64 %polly.indvar482.us, %173
  %polly.access.add.Packed_MemRef_call1301486.us = add nuw nsw i64 %polly.indvar482.us, %polly.access.mul.Packed_MemRef_call1301485.us
  %polly.access.Packed_MemRef_call1301487.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301486.us
  %_p_scalar_488.us = load double, double* %polly.access.Packed_MemRef_call1301487.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_492.us, %_p_scalar_488.us
  %polly.access.add.Packed_MemRef_call2303494.us = add nuw nsw i64 %211, %polly.access.mul.Packed_MemRef_call2303489.us
  %polly.access.Packed_MemRef_call2303495.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303494.us
  %_p_scalar_496.us = load double, double* %polly.access.Packed_MemRef_call2303495.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_500.us, %_p_scalar_496.us
  %212 = shl i64 %211, 3
  %213 = add nuw nsw i64 %212, %189
  %scevgep501.us = getelementptr i8, i8* %call, i64 %213
  %scevgep501502.us = bitcast i8* %scevgep501.us to double*
  %_p_scalar_503.us = load double, double* %scevgep501502.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_503.us
  store double %p_add42.i79.us, double* %scevgep501502.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next483.us = add nuw nsw i64 %polly.indvar482.us, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar482.us, %smin1063
  br i1 %exitcond1064.not, label %polly.loop_exit480.loopexit.us, label %polly.loop_header478.us, !llvm.loop !102

polly.loop_exit480.loopexit.us:                   ; preds = %polly.loop_header478.us, %middle.block1294
  %polly.indvar_next475.us = add nuw nsw i64 %polly.indvar474.us, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next475.us, 20
  br i1 %exitcond1065.not, label %polly.loop_exit473, label %polly.loop_header471.us

polly.start506:                                   ; preds = %init_array.exit
  %malloccall508 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall510 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header594

polly.exiting507:                                 ; preds = %polly.loop_exit634
  tail call void @free(i8* %malloccall508)
  tail call void @free(i8* %malloccall510)
  br label %kernel_syr2k.exit

polly.loop_header594:                             ; preds = %polly.loop_exit602, %polly.start506
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit602 ], [ 0, %polly.start506 ]
  %polly.indvar597 = phi i64 [ %polly.indvar_next598, %polly.loop_exit602 ], [ 1, %polly.start506 ]
  %214 = add i64 %indvar, 1
  %215 = mul nuw nsw i64 %polly.indvar597, 9600
  %scevgep606 = getelementptr i8, i8* %call, i64 %215
  %min.iters.check1218 = icmp ult i64 %214, 4
  br i1 %min.iters.check1218, label %polly.loop_header600.preheader, label %vector.ph1219

vector.ph1219:                                    ; preds = %polly.loop_header594
  %n.vec1221 = and i64 %214, -4
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %vector.ph1219
  %index1222 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1223, %vector.body1217 ]
  %216 = shl nuw nsw i64 %index1222, 3
  %217 = getelementptr i8, i8* %scevgep606, i64 %216
  %218 = bitcast i8* %217 to <4 x double>*
  %wide.load1226 = load <4 x double>, <4 x double>* %218, align 8, !alias.scope !103, !noalias !105
  %219 = fmul fast <4 x double> %wide.load1226, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %220 = bitcast i8* %217 to <4 x double>*
  store <4 x double> %219, <4 x double>* %220, align 8, !alias.scope !103, !noalias !105
  %index.next1223 = add i64 %index1222, 4
  %221 = icmp eq i64 %index.next1223, %n.vec1221
  br i1 %221, label %middle.block1215, label %vector.body1217, !llvm.loop !110

middle.block1215:                                 ; preds = %vector.body1217
  %cmp.n1225 = icmp eq i64 %214, %n.vec1221
  br i1 %cmp.n1225, label %polly.loop_exit602, label %polly.loop_header600.preheader

polly.loop_header600.preheader:                   ; preds = %polly.loop_header594, %middle.block1215
  %polly.indvar603.ph = phi i64 [ 0, %polly.loop_header594 ], [ %n.vec1221, %middle.block1215 ]
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_header600, %middle.block1215
  %polly.indvar_next598 = add nuw nsw i64 %polly.indvar597, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next598, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1098.not, label %polly.loop_header610.preheader, label %polly.loop_header594

polly.loop_header610.preheader:                   ; preds = %polly.loop_exit602
  %Packed_MemRef_call1509 = bitcast i8* %malloccall508 to double*
  %Packed_MemRef_call2511 = bitcast i8* %malloccall510 to double*
  br label %polly.loop_header610

polly.loop_header600:                             ; preds = %polly.loop_header600.preheader, %polly.loop_header600
  %polly.indvar603 = phi i64 [ %polly.indvar_next604, %polly.loop_header600 ], [ %polly.indvar603.ph, %polly.loop_header600.preheader ]
  %222 = shl nuw nsw i64 %polly.indvar603, 3
  %scevgep607 = getelementptr i8, i8* %scevgep606, i64 %222
  %scevgep607608 = bitcast i8* %scevgep607 to double*
  %_p_scalar_609 = load double, double* %scevgep607608, align 8, !alias.scope !103, !noalias !105
  %p_mul.i = fmul fast double %_p_scalar_609, 1.200000e+00
  store double %p_mul.i, double* %scevgep607608, align 8, !alias.scope !103, !noalias !105
  %polly.indvar_next604 = add nuw nsw i64 %polly.indvar603, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next604, %polly.indvar597
  br i1 %exitcond1097.not, label %polly.loop_exit602, label %polly.loop_header600, !llvm.loop !111

polly.loop_header610:                             ; preds = %polly.loop_header610.preheader, %polly.loop_exit618
  %polly.indvar613 = phi i64 [ %polly.indvar_next614, %polly.loop_exit618 ], [ 0, %polly.loop_header610.preheader ]
  %polly.access.mul.Packed_MemRef_call2511 = mul nuw nsw i64 %polly.indvar613, 1200
  br label %polly.loop_header616

polly.loop_exit618:                               ; preds = %polly.loop_header616
  %polly.indvar_next614 = add nuw nsw i64 %polly.indvar613, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next614, 1000
  br i1 %exitcond1096.not, label %polly.loop_header626, label %polly.loop_header610

polly.loop_header616:                             ; preds = %polly.loop_header616, %polly.loop_header610
  %polly.indvar619 = phi i64 [ 0, %polly.loop_header610 ], [ %polly.indvar_next620, %polly.loop_header616 ]
  %polly.access.mul.call2623 = mul nuw nsw i64 %polly.indvar619, 1000
  %polly.access.add.call2624 = add nuw nsw i64 %polly.access.mul.call2623, %polly.indvar613
  %polly.access.call2625 = getelementptr double, double* %polly.access.cast.call2726, i64 %polly.access.add.call2624
  %polly.access.call2625.load = load double, double* %polly.access.call2625, align 8, !alias.scope !107, !noalias !112
  %polly.access.add.Packed_MemRef_call2511 = add nuw nsw i64 %polly.indvar619, %polly.access.mul.Packed_MemRef_call2511
  %polly.access.Packed_MemRef_call2511 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511
  store double %polly.access.call2625.load, double* %polly.access.Packed_MemRef_call2511, align 8
  %polly.indvar_next620 = add nuw nsw i64 %polly.indvar619, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next620, 1200
  br i1 %exitcond1095.not, label %polly.loop_exit618, label %polly.loop_header616

polly.loop_header626:                             ; preds = %polly.loop_exit618, %polly.loop_exit634
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit634 ], [ 1, %polly.loop_exit618 ]
  %indvars.iv1077 = phi i64 [ %indvars.iv.next1078, %polly.loop_exit634 ], [ 0, %polly.loop_exit618 ]
  %polly.indvar629 = phi i64 [ %polly.indvar_next630, %polly.loop_exit634 ], [ 0, %polly.loop_exit618 ]
  %223 = mul nuw nsw i64 %polly.indvar629, 80
  %224 = mul nuw nsw i64 %polly.indvar629, 768000
  %225 = or i64 %224, 8
  %226 = mul nuw nsw i64 %polly.indvar629, 80
  %227 = mul nuw nsw i64 %polly.indvar629, 80
  br label %polly.loop_header632

polly.loop_exit634:                               ; preds = %polly.loop_exit640
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %indvars.iv.next1078 = add nuw nsw i64 %indvars.iv1077, 80
  %indvars.iv.next1091 = add nuw nsw i64 %indvars.iv1090, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next630, 15
  br i1 %exitcond1094.not, label %polly.exiting507, label %polly.loop_header626

polly.loop_header632:                             ; preds = %polly.loop_exit640, %polly.loop_header626
  %polly.indvar635 = phi i64 [ 0, %polly.loop_header626 ], [ %polly.indvar_next636, %polly.loop_exit640 ]
  %228 = mul nuw nsw i64 %polly.indvar635, 20
  br label %polly.loop_header638

polly.loop_exit640:                               ; preds = %polly.loop_exit646
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next636, 50
  br i1 %exitcond1093.not, label %polly.loop_exit634, label %polly.loop_header632

polly.loop_header638:                             ; preds = %polly.loop_exit646, %polly.loop_header632
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit646 ], [ %indvars.iv1077, %polly.loop_header632 ]
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_exit646 ], [ 0, %polly.loop_header632 ]
  %229 = mul nsw i64 %polly.indvar641, -80
  %230 = add i64 %223, %229
  %231 = mul nuw nsw i64 %polly.indvar641, 640
  %232 = add nuw i64 %224, %231
  %233 = add nuw i64 %225, %231
  %234 = mul nsw i64 %polly.indvar641, -80
  %235 = add i64 %226, %234
  %236 = mul nuw nsw i64 %polly.indvar641, 80
  %237 = sub nsw i64 %227, %236
  %238 = add nuw nsw i64 %236, 80
  br label %polly.loop_header644

polly.loop_exit646:                               ; preds = %polly.loop_exit681
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %indvars.iv.next1080 = add nsw i64 %indvars.iv1079, -80
  %exitcond1092.not = icmp eq i64 %polly.indvar_next642, %indvars.iv1090
  br i1 %exitcond1092.not, label %polly.loop_exit640, label %polly.loop_header638

polly.loop_header644:                             ; preds = %polly.loop_exit681, %polly.loop_header638
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082, %polly.loop_exit681 ], [ %indvars.iv1079, %polly.loop_header638 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit681 ], [ 0, %polly.loop_header638 ]
  %239 = add i64 %230, %polly.indvar647
  %smin1241 = call i64 @llvm.smin.i64(i64 %239, i64 79)
  %240 = add nsw i64 %smin1241, 1
  %241 = mul nuw nsw i64 %polly.indvar647, 9600
  %242 = add i64 %232, %241
  %scevgep1228 = getelementptr i8, i8* %call, i64 %242
  %243 = add i64 %233, %241
  %scevgep1229 = getelementptr i8, i8* %call, i64 %243
  %244 = add i64 %235, %polly.indvar647
  %smin1230 = call i64 @llvm.smin.i64(i64 %244, i64 79)
  %245 = shl nsw i64 %smin1230, 3
  %scevgep1231 = getelementptr i8, i8* %scevgep1229, i64 %245
  %246 = add nsw i64 %245, 8
  %smin1086 = call i64 @llvm.smin.i64(i64 %indvars.iv1081, i64 79)
  %247 = add nsw i64 %polly.indvar647, %237
  %polly.loop_guard6601135 = icmp sgt i64 %247, -1
  %248 = add nuw nsw i64 %polly.indvar647, %227
  %.not919 = icmp ult i64 %248, %238
  %polly.access.mul.call1673 = mul nuw nsw i64 %248, 1000
  %249 = add nuw nsw i64 %polly.access.mul.call1673, %228
  br i1 %polly.loop_guard6601135, label %polly.loop_header650.us, label %polly.loop_header644.split

polly.loop_header650.us:                          ; preds = %polly.loop_header644, %polly.merge669.us
  %polly.indvar653.us = phi i64 [ %polly.indvar_next654.us, %polly.merge669.us ], [ 0, %polly.loop_header644 ]
  %250 = add nuw nsw i64 %polly.indvar653.us, %228
  %polly.access.mul.Packed_MemRef_call1509.us = mul nuw nsw i64 %polly.indvar653.us, 1200
  br label %polly.loop_header657.us

polly.loop_header657.us:                          ; preds = %polly.loop_header650.us, %polly.loop_header657.us
  %polly.indvar661.us = phi i64 [ %polly.indvar_next662.us, %polly.loop_header657.us ], [ 0, %polly.loop_header650.us ]
  %251 = add nuw nsw i64 %polly.indvar661.us, %236
  %polly.access.mul.call1665.us = mul nuw nsw i64 %251, 1000
  %polly.access.add.call1666.us = add nuw nsw i64 %250, %polly.access.mul.call1665.us
  %polly.access.call1667.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1666.us
  %polly.access.call1667.load.us = load double, double* %polly.access.call1667.us, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509.us = add nuw nsw i64 %polly.indvar661.us, %polly.access.mul.Packed_MemRef_call1509.us
  %polly.access.Packed_MemRef_call1509.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us
  store double %polly.access.call1667.load.us, double* %polly.access.Packed_MemRef_call1509.us, align 8
  %polly.indvar_next662.us = add nuw nsw i64 %polly.indvar661.us, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar661.us, %smin1086
  br i1 %exitcond1084.not, label %polly.cond668.loopexit.us, label %polly.loop_header657.us

polly.then670.us:                                 ; preds = %polly.cond668.loopexit.us
  %polly.access.add.call1674.us = add nuw nsw i64 %249, %polly.indvar653.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.us
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1509.us, %247
  %polly.access.Packed_MemRef_call1509678.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.us
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1509678.us, align 8
  br label %polly.merge669.us

polly.merge669.us:                                ; preds = %polly.then670.us, %polly.cond668.loopexit.us
  %polly.indvar_next654.us = add nuw nsw i64 %polly.indvar653.us, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next654.us, 20
  br i1 %exitcond1085.not, label %polly.loop_header679.preheader, label %polly.loop_header650.us

polly.cond668.loopexit.us:                        ; preds = %polly.loop_header657.us
  br i1 %.not919, label %polly.merge669.us, label %polly.then670.us

polly.loop_header644.split:                       ; preds = %polly.loop_header644
  br i1 %.not919, label %polly.loop_exit681, label %polly.loop_header650.preheader

polly.loop_header650.preheader:                   ; preds = %polly.loop_header644.split
  %polly.access.call1675 = getelementptr double, double* %polly.access.cast.call1716, i64 %249
  %polly.access.call1675.load = load double, double* %polly.access.call1675, align 8, !alias.scope !106, !noalias !113
  %polly.access.Packed_MemRef_call1509678 = getelementptr double, double* %Packed_MemRef_call1509, i64 %247
  store double %polly.access.call1675.load, double* %polly.access.Packed_MemRef_call1509678, align 8
  %polly.access.add.call1674.1 = or i64 %249, 1
  %polly.access.call1675.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.1
  %polly.access.call1675.load.1 = load double, double* %polly.access.call1675.1, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.1 = add nsw i64 %247, 1200
  %polly.access.Packed_MemRef_call1509678.1 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.1
  store double %polly.access.call1675.load.1, double* %polly.access.Packed_MemRef_call1509678.1, align 8
  %polly.access.add.call1674.2 = or i64 %249, 2
  %polly.access.call1675.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.2
  %polly.access.call1675.load.2 = load double, double* %polly.access.call1675.2, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.2 = add nsw i64 %247, 2400
  %polly.access.Packed_MemRef_call1509678.2 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.2
  store double %polly.access.call1675.load.2, double* %polly.access.Packed_MemRef_call1509678.2, align 8
  %polly.access.add.call1674.3 = or i64 %249, 3
  %polly.access.call1675.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.3
  %polly.access.call1675.load.3 = load double, double* %polly.access.call1675.3, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.3 = add nsw i64 %247, 3600
  %polly.access.Packed_MemRef_call1509678.3 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.3
  store double %polly.access.call1675.load.3, double* %polly.access.Packed_MemRef_call1509678.3, align 8
  %polly.access.add.call1674.4 = add nuw nsw i64 %249, 4
  %polly.access.call1675.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.4
  %polly.access.call1675.load.4 = load double, double* %polly.access.call1675.4, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.4 = add nsw i64 %247, 4800
  %polly.access.Packed_MemRef_call1509678.4 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.4
  store double %polly.access.call1675.load.4, double* %polly.access.Packed_MemRef_call1509678.4, align 8
  %polly.access.add.call1674.5 = add nuw nsw i64 %249, 5
  %polly.access.call1675.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.5
  %polly.access.call1675.load.5 = load double, double* %polly.access.call1675.5, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.5 = add nsw i64 %247, 6000
  %polly.access.Packed_MemRef_call1509678.5 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.5
  store double %polly.access.call1675.load.5, double* %polly.access.Packed_MemRef_call1509678.5, align 8
  %polly.access.add.call1674.6 = add nuw nsw i64 %249, 6
  %polly.access.call1675.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.6
  %polly.access.call1675.load.6 = load double, double* %polly.access.call1675.6, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.6 = add nsw i64 %247, 7200
  %polly.access.Packed_MemRef_call1509678.6 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.6
  store double %polly.access.call1675.load.6, double* %polly.access.Packed_MemRef_call1509678.6, align 8
  %polly.access.add.call1674.7 = add nuw nsw i64 %249, 7
  %polly.access.call1675.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.7
  %polly.access.call1675.load.7 = load double, double* %polly.access.call1675.7, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.7 = add nsw i64 %247, 8400
  %polly.access.Packed_MemRef_call1509678.7 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.7
  store double %polly.access.call1675.load.7, double* %polly.access.Packed_MemRef_call1509678.7, align 8
  %polly.access.add.call1674.8 = add nuw nsw i64 %249, 8
  %polly.access.call1675.8 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.8
  %polly.access.call1675.load.8 = load double, double* %polly.access.call1675.8, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.8 = add nsw i64 %247, 9600
  %polly.access.Packed_MemRef_call1509678.8 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.8
  store double %polly.access.call1675.load.8, double* %polly.access.Packed_MemRef_call1509678.8, align 8
  %polly.access.add.call1674.9 = add nuw nsw i64 %249, 9
  %polly.access.call1675.9 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.9
  %polly.access.call1675.load.9 = load double, double* %polly.access.call1675.9, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.9 = add nsw i64 %247, 10800
  %polly.access.Packed_MemRef_call1509678.9 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.9
  store double %polly.access.call1675.load.9, double* %polly.access.Packed_MemRef_call1509678.9, align 8
  %polly.access.add.call1674.10 = add nuw nsw i64 %249, 10
  %polly.access.call1675.10 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.10
  %polly.access.call1675.load.10 = load double, double* %polly.access.call1675.10, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.10 = add nsw i64 %247, 12000
  %polly.access.Packed_MemRef_call1509678.10 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.10
  store double %polly.access.call1675.load.10, double* %polly.access.Packed_MemRef_call1509678.10, align 8
  %polly.access.add.call1674.11 = add nuw nsw i64 %249, 11
  %polly.access.call1675.11 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.11
  %polly.access.call1675.load.11 = load double, double* %polly.access.call1675.11, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.11 = add nsw i64 %247, 13200
  %polly.access.Packed_MemRef_call1509678.11 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.11
  store double %polly.access.call1675.load.11, double* %polly.access.Packed_MemRef_call1509678.11, align 8
  %polly.access.add.call1674.12 = add nuw nsw i64 %249, 12
  %polly.access.call1675.12 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.12
  %polly.access.call1675.load.12 = load double, double* %polly.access.call1675.12, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.12 = add nsw i64 %247, 14400
  %polly.access.Packed_MemRef_call1509678.12 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.12
  store double %polly.access.call1675.load.12, double* %polly.access.Packed_MemRef_call1509678.12, align 8
  %polly.access.add.call1674.13 = add nuw nsw i64 %249, 13
  %polly.access.call1675.13 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.13
  %polly.access.call1675.load.13 = load double, double* %polly.access.call1675.13, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.13 = add nsw i64 %247, 15600
  %polly.access.Packed_MemRef_call1509678.13 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.13
  store double %polly.access.call1675.load.13, double* %polly.access.Packed_MemRef_call1509678.13, align 8
  %polly.access.add.call1674.14 = add nuw nsw i64 %249, 14
  %polly.access.call1675.14 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.14
  %polly.access.call1675.load.14 = load double, double* %polly.access.call1675.14, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.14 = add nsw i64 %247, 16800
  %polly.access.Packed_MemRef_call1509678.14 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.14
  store double %polly.access.call1675.load.14, double* %polly.access.Packed_MemRef_call1509678.14, align 8
  %polly.access.add.call1674.15 = add nuw nsw i64 %249, 15
  %polly.access.call1675.15 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.15
  %polly.access.call1675.load.15 = load double, double* %polly.access.call1675.15, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.15 = add nsw i64 %247, 18000
  %polly.access.Packed_MemRef_call1509678.15 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.15
  store double %polly.access.call1675.load.15, double* %polly.access.Packed_MemRef_call1509678.15, align 8
  %polly.access.add.call1674.16 = add nuw nsw i64 %249, 16
  %polly.access.call1675.16 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.16
  %polly.access.call1675.load.16 = load double, double* %polly.access.call1675.16, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.16 = add nsw i64 %247, 19200
  %polly.access.Packed_MemRef_call1509678.16 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.16
  store double %polly.access.call1675.load.16, double* %polly.access.Packed_MemRef_call1509678.16, align 8
  %polly.access.add.call1674.17 = add nuw nsw i64 %249, 17
  %polly.access.call1675.17 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.17
  %polly.access.call1675.load.17 = load double, double* %polly.access.call1675.17, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.17 = add nsw i64 %247, 20400
  %polly.access.Packed_MemRef_call1509678.17 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.17
  store double %polly.access.call1675.load.17, double* %polly.access.Packed_MemRef_call1509678.17, align 8
  %polly.access.add.call1674.18 = add nuw nsw i64 %249, 18
  %polly.access.call1675.18 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.18
  %polly.access.call1675.load.18 = load double, double* %polly.access.call1675.18, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.18 = add nsw i64 %247, 21600
  %polly.access.Packed_MemRef_call1509678.18 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.18
  store double %polly.access.call1675.load.18, double* %polly.access.Packed_MemRef_call1509678.18, align 8
  %polly.access.add.call1674.19 = add nuw nsw i64 %249, 19
  %polly.access.call1675.19 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.19
  %polly.access.call1675.load.19 = load double, double* %polly.access.call1675.19, align 8, !alias.scope !106, !noalias !113
  %polly.access.add.Packed_MemRef_call1509677.19 = add nsw i64 %247, 22800
  %polly.access.Packed_MemRef_call1509678.19 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.19
  store double %polly.access.call1675.load.19, double* %polly.access.Packed_MemRef_call1509678.19, align 8
  br label %polly.loop_exit681

polly.loop_exit681:                               ; preds = %polly.loop_exit688.loopexit.us, %polly.loop_header644.split, %polly.loop_header650.preheader, %polly.loop_header679.preheader
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %indvars.iv.next1082 = add nsw i64 %indvars.iv1081, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next648, 80
  br i1 %exitcond1089.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header679.preheader:                   ; preds = %polly.merge669.us
  %252 = mul nuw nsw i64 %248, 9600
  br i1 %polly.loop_guard6601135, label %polly.loop_header679.us, label %polly.loop_exit681

polly.loop_header679.us:                          ; preds = %polly.loop_header679.preheader, %polly.loop_exit688.loopexit.us
  %polly.indvar682.us = phi i64 [ %polly.indvar_next683.us, %polly.loop_exit688.loopexit.us ], [ 0, %polly.loop_header679.preheader ]
  %253 = mul nuw nsw i64 %polly.indvar682.us, 9600
  %polly.access.mul.Packed_MemRef_call1509693.us = mul nuw nsw i64 %polly.indvar682.us, 1200
  %254 = add nuw nsw i64 %polly.indvar682.us, %228
  %polly.access.mul.Packed_MemRef_call2511697.us = mul nuw nsw i64 %254, 1200
  %polly.access.add.Packed_MemRef_call2511698.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2511697.us, %248
  %polly.access.Packed_MemRef_call2511699.us = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511698.us
  %_p_scalar_700.us = load double, double* %polly.access.Packed_MemRef_call2511699.us, align 8
  %polly.access.add.Packed_MemRef_call1509706.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1509693.us, %247
  %polly.access.Packed_MemRef_call1509707.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call1509707.us, align 8
  %min.iters.check1242 = icmp ult i64 %240, 4
  br i1 %min.iters.check1242, label %polly.loop_header686.us.preheader, label %vector.memcheck1227

vector.memcheck1227:                              ; preds = %polly.loop_header679.us
  %255 = add i64 %246, %253
  %scevgep1233 = getelementptr i8, i8* %malloccall508, i64 %255
  %scevgep1232 = getelementptr i8, i8* %malloccall508, i64 %253
  %bound01234 = icmp ult i8* %scevgep1228, %scevgep1233
  %bound11235 = icmp ult i8* %scevgep1232, %scevgep1231
  %found.conflict1236 = and i1 %bound01234, %bound11235
  br i1 %found.conflict1236, label %polly.loop_header686.us.preheader, label %vector.ph1243

vector.ph1243:                                    ; preds = %vector.memcheck1227
  %n.vec1245 = and i64 %240, -4
  %broadcast.splatinsert1251 = insertelement <4 x double> poison, double %_p_scalar_700.us, i32 0
  %broadcast.splat1252 = shufflevector <4 x double> %broadcast.splatinsert1251, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1254 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1255 = shufflevector <4 x double> %broadcast.splatinsert1254, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %vector.ph1243
  %index1246 = phi i64 [ 0, %vector.ph1243 ], [ %index.next1247, %vector.body1240 ]
  %256 = add nuw nsw i64 %index1246, %236
  %257 = add nuw nsw i64 %index1246, %polly.access.mul.Packed_MemRef_call1509693.us
  %258 = getelementptr double, double* %Packed_MemRef_call1509, i64 %257
  %259 = bitcast double* %258 to <4 x double>*
  %wide.load1250 = load <4 x double>, <4 x double>* %259, align 8, !alias.scope !114
  %260 = fmul fast <4 x double> %broadcast.splat1252, %wide.load1250
  %261 = add nuw nsw i64 %256, %polly.access.mul.Packed_MemRef_call2511697.us
  %262 = getelementptr double, double* %Packed_MemRef_call2511, i64 %261
  %263 = bitcast double* %262 to <4 x double>*
  %wide.load1253 = load <4 x double>, <4 x double>* %263, align 8
  %264 = fmul fast <4 x double> %broadcast.splat1255, %wide.load1253
  %265 = shl i64 %256, 3
  %266 = add nuw nsw i64 %265, %252
  %267 = getelementptr i8, i8* %call, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  %wide.load1256 = load <4 x double>, <4 x double>* %268, align 8, !alias.scope !117, !noalias !119
  %269 = fadd fast <4 x double> %264, %260
  %270 = fmul fast <4 x double> %269, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %271 = fadd fast <4 x double> %270, %wide.load1256
  %272 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %271, <4 x double>* %272, align 8, !alias.scope !117, !noalias !119
  %index.next1247 = add i64 %index1246, 4
  %273 = icmp eq i64 %index.next1247, %n.vec1245
  br i1 %273, label %middle.block1238, label %vector.body1240, !llvm.loop !120

middle.block1238:                                 ; preds = %vector.body1240
  %cmp.n1249 = icmp eq i64 %240, %n.vec1245
  br i1 %cmp.n1249, label %polly.loop_exit688.loopexit.us, label %polly.loop_header686.us.preheader

polly.loop_header686.us.preheader:                ; preds = %vector.memcheck1227, %polly.loop_header679.us, %middle.block1238
  %polly.indvar690.us.ph = phi i64 [ 0, %vector.memcheck1227 ], [ 0, %polly.loop_header679.us ], [ %n.vec1245, %middle.block1238 ]
  br label %polly.loop_header686.us

polly.loop_header686.us:                          ; preds = %polly.loop_header686.us.preheader, %polly.loop_header686.us
  %polly.indvar690.us = phi i64 [ %polly.indvar_next691.us, %polly.loop_header686.us ], [ %polly.indvar690.us.ph, %polly.loop_header686.us.preheader ]
  %274 = add nuw nsw i64 %polly.indvar690.us, %236
  %polly.access.add.Packed_MemRef_call1509694.us = add nuw nsw i64 %polly.indvar690.us, %polly.access.mul.Packed_MemRef_call1509693.us
  %polly.access.Packed_MemRef_call1509695.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509694.us
  %_p_scalar_696.us = load double, double* %polly.access.Packed_MemRef_call1509695.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_700.us, %_p_scalar_696.us
  %polly.access.add.Packed_MemRef_call2511702.us = add nuw nsw i64 %274, %polly.access.mul.Packed_MemRef_call2511697.us
  %polly.access.Packed_MemRef_call2511703.us = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511702.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call2511703.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %275 = shl i64 %274, 3
  %276 = add nuw nsw i64 %275, %252
  %scevgep709.us = getelementptr i8, i8* %call, i64 %276
  %scevgep709710.us = bitcast i8* %scevgep709.us to double*
  %_p_scalar_711.us = load double, double* %scevgep709710.us, align 8, !alias.scope !103, !noalias !105
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_711.us
  store double %p_add42.i.us, double* %scevgep709710.us, align 8, !alias.scope !103, !noalias !105
  %polly.indvar_next691.us = add nuw nsw i64 %polly.indvar690.us, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar690.us, %smin1086
  br i1 %exitcond1087.not, label %polly.loop_exit688.loopexit.us, label %polly.loop_header686.us, !llvm.loop !121

polly.loop_exit688.loopexit.us:                   ; preds = %polly.loop_header686.us, %middle.block1238
  %polly.indvar_next683.us = add nuw nsw i64 %polly.indvar682.us, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next683.us, 20
  br i1 %exitcond1088.not, label %polly.loop_exit681, label %polly.loop_header679.us

polly.loop_header838:                             ; preds = %entry, %polly.loop_exit846
  %indvars.iv1123 = phi i64 [ %indvars.iv.next1124, %polly.loop_exit846 ], [ 0, %entry ]
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %entry ]
  %smin1125 = call i64 @llvm.smin.i64(i64 %indvars.iv1123, i64 -1168)
  %277 = shl nsw i64 %polly.indvar841, 5
  %278 = add nsw i64 %smin1125, 1199
  br label %polly.loop_header844

polly.loop_exit846:                               ; preds = %polly.loop_exit852
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %indvars.iv.next1124 = add nsw i64 %indvars.iv1123, -32
  %exitcond1128.not = icmp eq i64 %polly.indvar_next842, 38
  br i1 %exitcond1128.not, label %polly.loop_header865, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_exit852, %polly.loop_header838
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %279 = mul nsw i64 %polly.indvar847, -32
  %smin = call i64 @llvm.smin.i64(i64 %279, i64 -1168)
  %280 = add nsw i64 %smin, 1200
  %smin1121 = call i64 @llvm.smin.i64(i64 %indvars.iv1119, i64 -1168)
  %281 = shl nsw i64 %polly.indvar847, 5
  %282 = add nsw i64 %smin1121, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1120 = add nsw i64 %indvars.iv1119, -32
  %exitcond1127.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1127.not, label %polly.loop_exit846, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %polly.indvar853 = phi i64 [ 0, %polly.loop_header844 ], [ %polly.indvar_next854, %polly.loop_exit858 ]
  %283 = add nuw nsw i64 %polly.indvar853, %277
  %284 = trunc i64 %283 to i32
  %285 = mul nuw nsw i64 %283, 9600
  %min.iters.check = icmp eq i64 %280, 0
  br i1 %min.iters.check, label %polly.loop_header856, label %vector.ph1157

vector.ph1157:                                    ; preds = %polly.loop_header850
  %broadcast.splatinsert1164 = insertelement <4 x i64> poison, i64 %281, i32 0
  %broadcast.splat1165 = shufflevector <4 x i64> %broadcast.splatinsert1164, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1166 = insertelement <4 x i32> poison, i32 %284, i32 0
  %broadcast.splat1167 = shufflevector <4 x i32> %broadcast.splatinsert1166, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1156

vector.body1156:                                  ; preds = %vector.body1156, %vector.ph1157
  %index1158 = phi i64 [ 0, %vector.ph1157 ], [ %index.next1159, %vector.body1156 ]
  %vec.ind1162 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1157 ], [ %vec.ind.next1163, %vector.body1156 ]
  %286 = add nuw nsw <4 x i64> %vec.ind1162, %broadcast.splat1165
  %287 = trunc <4 x i64> %286 to <4 x i32>
  %288 = mul <4 x i32> %broadcast.splat1167, %287
  %289 = add <4 x i32> %288, <i32 3, i32 3, i32 3, i32 3>
  %290 = urem <4 x i32> %289, <i32 1200, i32 1200, i32 1200, i32 1200>
  %291 = sitofp <4 x i32> %290 to <4 x double>
  %292 = fmul fast <4 x double> %291, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %293 = extractelement <4 x i64> %286, i32 0
  %294 = shl i64 %293, 3
  %295 = add nuw nsw i64 %294, %285
  %296 = getelementptr i8, i8* %call, i64 %295
  %297 = bitcast i8* %296 to <4 x double>*
  store <4 x double> %292, <4 x double>* %297, align 8, !alias.scope !122, !noalias !124
  %index.next1159 = add i64 %index1158, 4
  %vec.ind.next1163 = add <4 x i64> %vec.ind1162, <i64 4, i64 4, i64 4, i64 4>
  %298 = icmp eq i64 %index.next1159, %280
  br i1 %298, label %polly.loop_exit858, label %vector.body1156, !llvm.loop !127

polly.loop_exit858:                               ; preds = %vector.body1156, %polly.loop_header856
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar853, %278
  br i1 %exitcond1126.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_header850, %polly.loop_header856
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_header856 ], [ 0, %polly.loop_header850 ]
  %299 = add nuw nsw i64 %polly.indvar859, %281
  %300 = trunc i64 %299 to i32
  %301 = mul i32 %300, %284
  %302 = add i32 %301, 3
  %303 = urem i32 %302, 1200
  %p_conv31.i = sitofp i32 %303 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %304 = shl i64 %299, 3
  %305 = add nuw nsw i64 %304, %285
  %scevgep862 = getelementptr i8, i8* %call, i64 %305
  %scevgep862863 = bitcast i8* %scevgep862 to double*
  store double %p_div33.i, double* %scevgep862863, align 8, !alias.scope !122, !noalias !124
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar859, %282
  br i1 %exitcond1122.not, label %polly.loop_exit858, label %polly.loop_header856, !llvm.loop !128

polly.loop_header865:                             ; preds = %polly.loop_exit846, %polly.loop_exit873
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit873 ], [ 0, %polly.loop_exit846 ]
  %polly.indvar868 = phi i64 [ %polly.indvar_next869, %polly.loop_exit873 ], [ 0, %polly.loop_exit846 ]
  %smin1115 = call i64 @llvm.smin.i64(i64 %indvars.iv1113, i64 -1168)
  %306 = shl nsw i64 %polly.indvar868, 5
  %307 = add nsw i64 %smin1115, 1199
  br label %polly.loop_header871

polly.loop_exit873:                               ; preds = %polly.loop_exit879
  %polly.indvar_next869 = add nuw nsw i64 %polly.indvar868, 1
  %indvars.iv.next1114 = add nsw i64 %indvars.iv1113, -32
  %exitcond1118.not = icmp eq i64 %polly.indvar_next869, 38
  br i1 %exitcond1118.not, label %polly.loop_header891, label %polly.loop_header865

polly.loop_header871:                             ; preds = %polly.loop_exit879, %polly.loop_header865
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110, %polly.loop_exit879 ], [ 0, %polly.loop_header865 ]
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_exit879 ], [ 0, %polly.loop_header865 ]
  %308 = mul nsw i64 %polly.indvar874, -32
  %smin1171 = call i64 @llvm.smin.i64(i64 %308, i64 -968)
  %309 = add nsw i64 %smin1171, 1000
  %smin1111 = call i64 @llvm.smin.i64(i64 %indvars.iv1109, i64 -968)
  %310 = shl nsw i64 %polly.indvar874, 5
  %311 = add nsw i64 %smin1111, 999
  br label %polly.loop_header877

polly.loop_exit879:                               ; preds = %polly.loop_exit885
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %indvars.iv.next1110 = add nsw i64 %indvars.iv1109, -32
  %exitcond1117.not = icmp eq i64 %polly.indvar_next875, 32
  br i1 %exitcond1117.not, label %polly.loop_exit873, label %polly.loop_header871

polly.loop_header877:                             ; preds = %polly.loop_exit885, %polly.loop_header871
  %polly.indvar880 = phi i64 [ 0, %polly.loop_header871 ], [ %polly.indvar_next881, %polly.loop_exit885 ]
  %312 = add nuw nsw i64 %polly.indvar880, %306
  %313 = trunc i64 %312 to i32
  %314 = mul nuw nsw i64 %312, 8000
  %min.iters.check1172 = icmp eq i64 %309, 0
  br i1 %min.iters.check1172, label %polly.loop_header883, label %vector.ph1173

vector.ph1173:                                    ; preds = %polly.loop_header877
  %broadcast.splatinsert1182 = insertelement <4 x i64> poison, i64 %310, i32 0
  %broadcast.splat1183 = shufflevector <4 x i64> %broadcast.splatinsert1182, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1184 = insertelement <4 x i32> poison, i32 %313, i32 0
  %broadcast.splat1185 = shufflevector <4 x i32> %broadcast.splatinsert1184, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %vector.ph1173
  %index1176 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1177, %vector.body1170 ]
  %vec.ind1180 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1173 ], [ %vec.ind.next1181, %vector.body1170 ]
  %315 = add nuw nsw <4 x i64> %vec.ind1180, %broadcast.splat1183
  %316 = trunc <4 x i64> %315 to <4 x i32>
  %317 = mul <4 x i32> %broadcast.splat1185, %316
  %318 = add <4 x i32> %317, <i32 2, i32 2, i32 2, i32 2>
  %319 = urem <4 x i32> %318, <i32 1000, i32 1000, i32 1000, i32 1000>
  %320 = sitofp <4 x i32> %319 to <4 x double>
  %321 = fmul fast <4 x double> %320, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %322 = extractelement <4 x i64> %315, i32 0
  %323 = shl i64 %322, 3
  %324 = add nuw nsw i64 %323, %314
  %325 = getelementptr i8, i8* %call2, i64 %324
  %326 = bitcast i8* %325 to <4 x double>*
  store <4 x double> %321, <4 x double>* %326, align 8, !alias.scope !126, !noalias !129
  %index.next1177 = add i64 %index1176, 4
  %vec.ind.next1181 = add <4 x i64> %vec.ind1180, <i64 4, i64 4, i64 4, i64 4>
  %327 = icmp eq i64 %index.next1177, %309
  br i1 %327, label %polly.loop_exit885, label %vector.body1170, !llvm.loop !130

polly.loop_exit885:                               ; preds = %vector.body1170, %polly.loop_header883
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar880, %307
  br i1 %exitcond1116.not, label %polly.loop_exit879, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_header877, %polly.loop_header883
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_header883 ], [ 0, %polly.loop_header877 ]
  %328 = add nuw nsw i64 %polly.indvar886, %310
  %329 = trunc i64 %328 to i32
  %330 = mul i32 %329, %313
  %331 = add i32 %330, 2
  %332 = urem i32 %331, 1000
  %p_conv10.i = sitofp i32 %332 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %333 = shl i64 %328, 3
  %334 = add nuw nsw i64 %333, %314
  %scevgep889 = getelementptr i8, i8* %call2, i64 %334
  %scevgep889890 = bitcast i8* %scevgep889 to double*
  store double %p_div12.i, double* %scevgep889890, align 8, !alias.scope !126, !noalias !129
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar886, %311
  br i1 %exitcond1112.not, label %polly.loop_exit885, label %polly.loop_header883, !llvm.loop !131

polly.loop_header891:                             ; preds = %polly.loop_exit873, %polly.loop_exit899
  %indvars.iv1103 = phi i64 [ %indvars.iv.next1104, %polly.loop_exit899 ], [ 0, %polly.loop_exit873 ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit873 ]
  %smin1105 = call i64 @llvm.smin.i64(i64 %indvars.iv1103, i64 -1168)
  %335 = shl nsw i64 %polly.indvar894, 5
  %336 = add nsw i64 %smin1105, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1104 = add nsw i64 %indvars.iv1103, -32
  %exitcond1108.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1108.not, label %init_array.exit, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1099 = phi i64 [ %indvars.iv.next1100, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %337 = mul nsw i64 %polly.indvar900, -32
  %smin1189 = call i64 @llvm.smin.i64(i64 %337, i64 -968)
  %338 = add nsw i64 %smin1189, 1000
  %smin1101 = call i64 @llvm.smin.i64(i64 %indvars.iv1099, i64 -968)
  %339 = shl nsw i64 %polly.indvar900, 5
  %340 = add nsw i64 %smin1101, 999
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1100 = add nsw i64 %indvars.iv1099, -32
  %exitcond1107.not = icmp eq i64 %polly.indvar_next901, 32
  br i1 %exitcond1107.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %341 = add nuw nsw i64 %polly.indvar906, %335
  %342 = trunc i64 %341 to i32
  %343 = mul nuw nsw i64 %341, 8000
  %min.iters.check1190 = icmp eq i64 %338, 0
  br i1 %min.iters.check1190, label %polly.loop_header909, label %vector.ph1191

vector.ph1191:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1200 = insertelement <4 x i64> poison, i64 %339, i32 0
  %broadcast.splat1201 = shufflevector <4 x i64> %broadcast.splatinsert1200, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1202 = insertelement <4 x i32> poison, i32 %342, i32 0
  %broadcast.splat1203 = shufflevector <4 x i32> %broadcast.splatinsert1202, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %vector.ph1191
  %index1194 = phi i64 [ 0, %vector.ph1191 ], [ %index.next1195, %vector.body1188 ]
  %vec.ind1198 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1191 ], [ %vec.ind.next1199, %vector.body1188 ]
  %344 = add nuw nsw <4 x i64> %vec.ind1198, %broadcast.splat1201
  %345 = trunc <4 x i64> %344 to <4 x i32>
  %346 = mul <4 x i32> %broadcast.splat1203, %345
  %347 = add <4 x i32> %346, <i32 1, i32 1, i32 1, i32 1>
  %348 = urem <4 x i32> %347, <i32 1200, i32 1200, i32 1200, i32 1200>
  %349 = sitofp <4 x i32> %348 to <4 x double>
  %350 = fmul fast <4 x double> %349, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %351 = extractelement <4 x i64> %344, i32 0
  %352 = shl i64 %351, 3
  %353 = add nuw nsw i64 %352, %343
  %354 = getelementptr i8, i8* %call1, i64 %353
  %355 = bitcast i8* %354 to <4 x double>*
  store <4 x double> %350, <4 x double>* %355, align 8, !alias.scope !125, !noalias !132
  %index.next1195 = add i64 %index1194, 4
  %vec.ind.next1199 = add <4 x i64> %vec.ind1198, <i64 4, i64 4, i64 4, i64 4>
  %356 = icmp eq i64 %index.next1195, %338
  br i1 %356, label %polly.loop_exit911, label %vector.body1188, !llvm.loop !133

polly.loop_exit911:                               ; preds = %vector.body1188, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar906, %336
  br i1 %exitcond1106.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %357 = add nuw nsw i64 %polly.indvar912, %339
  %358 = trunc i64 %357 to i32
  %359 = mul i32 %358, %342
  %360 = add i32 %359, 1
  %361 = urem i32 %360, 1200
  %p_conv.i = sitofp i32 %361 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %362 = shl i64 %357, 3
  %363 = add nuw nsw i64 %362, %343
  %scevgep916 = getelementptr i8, i8* %call1, i64 %363
  %scevgep916917 = bitcast i8* %scevgep916 to double*
  store double %p_div.i, double* %scevgep916917, align 8, !alias.scope !125, !noalias !132
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar912, %340
  br i1 %exitcond1102.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !134
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
!26 = !{!"llvm.loop.tile.size", i32 80}
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
!45 = distinct !{!45, !12, !24, !46, !47, !48, !26, !49, !53}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !24, !51, !42, !52, !44}
!51 = !{!"llvm.loop.id", !"i1"}
!52 = !{!"llvm.data.pack.array", !22}
!53 = !{!"llvm.loop.tile.followup_tile", !54}
!54 = distinct !{!54, !12, !55}
!55 = !{!"llvm.loop.id", !"i2"}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = !{!61, !61, i64 0}
!61 = !{!"any pointer", !4, i64 0}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !65, !"polly.alias.scope.MemRef_call"}
!65 = distinct !{!65, !"polly.alias.scope.domain"}
!66 = !{!67, !68, !69, !70}
!67 = distinct !{!67, !65, !"polly.alias.scope.MemRef_call1"}
!68 = distinct !{!68, !65, !"polly.alias.scope.MemRef_call2"}
!69 = distinct !{!69, !65, !"polly.alias.scope.Packed_MemRef_call1"}
!70 = distinct !{!70, !65, !"polly.alias.scope.Packed_MemRef_call2"}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !73, !13}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = !{!64, !67, !69, !70}
!75 = !{!64, !68, !69, !70}
!76 = !{!77}
!77 = distinct !{!77, !78}
!78 = distinct !{!78, !"LVerDomain"}
!79 = !{!64, !65, !"polly.alias.scope.MemRef_call", !80}
!80 = distinct !{!80, !78}
!81 = !{!67, !68, !69, !70, !77}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89, !90}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call1"}
!90 = distinct !{!90, !85, !"polly.alias.scope.Packed_MemRef_call2"}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !73, !13}
!93 = !{!84, !87, !89, !90}
!94 = !{!84, !88, !89, !90}
!95 = !{!96}
!96 = distinct !{!96, !97}
!97 = distinct !{!97, !"LVerDomain"}
!98 = !{!84, !85, !"polly.alias.scope.MemRef_call", !99}
!99 = distinct !{!99, !97}
!100 = !{!87, !88, !89, !90, !96}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !104, !"polly.alias.scope.MemRef_call"}
!104 = distinct !{!104, !"polly.alias.scope.domain"}
!105 = !{!106, !107, !108, !109}
!106 = distinct !{!106, !104, !"polly.alias.scope.MemRef_call1"}
!107 = distinct !{!107, !104, !"polly.alias.scope.MemRef_call2"}
!108 = distinct !{!108, !104, !"polly.alias.scope.Packed_MemRef_call1"}
!109 = distinct !{!109, !104, !"polly.alias.scope.Packed_MemRef_call2"}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !73, !13}
!112 = !{!103, !106, !108, !109}
!113 = !{!103, !107, !108, !109}
!114 = !{!115}
!115 = distinct !{!115, !116}
!116 = distinct !{!116, !"LVerDomain"}
!117 = !{!103, !104, !"polly.alias.scope.MemRef_call", !118}
!118 = distinct !{!118, !116}
!119 = !{!106, !107, !108, !109, !115}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !123, !"polly.alias.scope.MemRef_call"}
!123 = distinct !{!123, !"polly.alias.scope.domain"}
!124 = !{!125, !126}
!125 = distinct !{!125, !123, !"polly.alias.scope.MemRef_call1"}
!126 = distinct !{!126, !123, !"polly.alias.scope.MemRef_call2"}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !73, !13}
!129 = !{!125, !122}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !73, !13}
!132 = !{!126, !122}
!133 = distinct !{!133, !13}
!134 = distinct !{!134, !73, !13}
